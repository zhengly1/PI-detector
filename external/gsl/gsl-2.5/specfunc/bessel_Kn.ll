; ModuleID = 'bessel_Kn.c'
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
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 109, i32 noundef 1) #7, !dbg !135
  br label %250, !dbg !135

13:                                               ; preds = %3
  %14 = icmp eq i32 %0, 0, !dbg !137
  br i1 %14, label %15, label %17, !dbg !138

15:                                               ; preds = %13
  %16 = tail call i32 @gsl_sf_bessel_K0_scaled_e(double noundef %1, ptr noundef %2) #7, !dbg !139
  br label %250, !dbg !141

17:                                               ; preds = %13
  %18 = icmp eq i32 %9, 1, !dbg !142
  br i1 %18, label %19, label %21, !dbg !143

19:                                               ; preds = %17
  %20 = tail call i32 @gsl_sf_bessel_K1_scaled_e(double noundef %1, ptr noundef %2) #7, !dbg !144
  br label %250, !dbg !146

21:                                               ; preds = %17
  %22 = fcmp ugt double %1, 5.000000e+00, !dbg !147
  br i1 %22, label %149, label %23, !dbg !148

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
  %27 = tail call double @log(double noundef %26) #7, !dbg !185
  call void @llvm.dbg.value(metadata double %27, metadata !160, metadata !DIExpression()), !dbg !178
  %28 = tail call double @exp(double noundef %1) #7, !dbg !186
  call void @llvm.dbg.value(metadata double %28, metadata !161, metadata !DIExpression()), !dbg !178
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #7, !dbg !187
  %29 = add nsw i32 %9, -1, !dbg !188
  %30 = call i32 @gsl_sf_lnfact_e(i32 noundef %29, ptr noundef nonnull %4) #7, !dbg !189
  %31 = sub nsw i32 0, %9, !dbg !190
  %32 = sitofp i32 %31 to double, !dbg !190
  %33 = fmul double %27, %32, !dbg !191
  %34 = load double, ptr %4, align 8, !dbg !192, !tbaa !129
  %35 = fadd double %33, %34, !dbg !193
  call void @llvm.dbg.value(metadata double %35, metadata !165, metadata !DIExpression()), !dbg !178
  %36 = fcmp ogt double %35, 0x40861642FEFA39EF, !dbg !194
  br i1 %36, label %45, label %37, !dbg !196

37:                                               ; preds = %23
  call void @llvm.dbg.value(metadata i32 1, metadata !158, metadata !DIExpression()), !dbg !178
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !162, metadata !DIExpression()), !dbg !178
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !164, metadata !DIExpression()), !dbg !178
  %38 = fneg double %25
  %39 = call i32 @llvm.abs.i32(i32 %0, i1 false), !dbg !197
  %40 = add i32 %39, -1, !dbg !197
  %41 = and i32 %40, 1, !dbg !197
  %42 = icmp eq i32 %39, 2, !dbg !197
  br i1 %42, label %67, label %43, !dbg !197

43:                                               ; preds = %37
  %44 = and i32 %40, -2, !dbg !197
  br label %46, !dbg !197

45:                                               ; preds = %23
  call void @gsl_error(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 54, i32 noundef 16) #7, !dbg !199
  br label %147, !dbg !199

46:                                               ; preds = %46, %43
  %47 = phi i32 [ 1, %43 ], [ %64, %46 ]
  %48 = phi double [ 1.000000e+00, %43 ], [ %62, %46 ]
  %49 = phi double [ 1.000000e+00, %43 ], [ %63, %46 ]
  %50 = phi i32 [ 0, %43 ], [ %65, %46 ]
  call void @llvm.dbg.value(metadata i32 %47, metadata !158, metadata !DIExpression()), !dbg !178
  call void @llvm.dbg.value(metadata double %48, metadata !162, metadata !DIExpression()), !dbg !178
  call void @llvm.dbg.value(metadata double %49, metadata !164, metadata !DIExpression()), !dbg !178
  %51 = sub nsw i32 %9, %47, !dbg !201
  %52 = mul nsw i32 %51, %47, !dbg !204
  %53 = sitofp i32 %52 to double, !dbg !205
  %54 = fdiv double %38, %53, !dbg !206
  %55 = fmul double %48, %54, !dbg !207
  call void @llvm.dbg.value(metadata double %55, metadata !162, metadata !DIExpression()), !dbg !178
  %56 = fadd double %49, %55, !dbg !208
  call void @llvm.dbg.value(metadata double %56, metadata !164, metadata !DIExpression()), !dbg !178
  %57 = add nuw nsw i32 %47, 1, !dbg !209
  call void @llvm.dbg.value(metadata i32 %57, metadata !158, metadata !DIExpression()), !dbg !178
  call void @llvm.dbg.value(metadata i32 %57, metadata !158, metadata !DIExpression()), !dbg !178
  call void @llvm.dbg.value(metadata double %55, metadata !162, metadata !DIExpression()), !dbg !178
  call void @llvm.dbg.value(metadata double %56, metadata !164, metadata !DIExpression()), !dbg !178
  %58 = sub nsw i32 %9, %57, !dbg !201
  %59 = mul nsw i32 %58, %57, !dbg !204
  %60 = sitofp i32 %59 to double, !dbg !205
  %61 = fdiv double %38, %60, !dbg !206
  %62 = fmul double %55, %61, !dbg !207
  call void @llvm.dbg.value(metadata double %62, metadata !162, metadata !DIExpression()), !dbg !178
  %63 = fadd double %56, %62, !dbg !208
  call void @llvm.dbg.value(metadata double %63, metadata !164, metadata !DIExpression()), !dbg !178
  %64 = add nuw nsw i32 %47, 2, !dbg !209
  call void @llvm.dbg.value(metadata i32 %64, metadata !158, metadata !DIExpression()), !dbg !178
  %65 = add i32 %50, 2, !dbg !197
  %66 = icmp eq i32 %65, %44, !dbg !197
  br i1 %66, label %67, label %46, !dbg !197, !llvm.loop !210

67:                                               ; preds = %46, %37
  %68 = phi double [ undef, %37 ], [ %63, %46 ]
  %69 = phi i32 [ 1, %37 ], [ %64, %46 ]
  %70 = phi double [ 1.000000e+00, %37 ], [ %62, %46 ]
  %71 = phi double [ 1.000000e+00, %37 ], [ %63, %46 ]
  %72 = icmp eq i32 %41, 0, !dbg !197
  br i1 %72, label %80, label %73, !dbg !197

73:                                               ; preds = %67
  call void @llvm.dbg.value(metadata i32 %69, metadata !158, metadata !DIExpression()), !dbg !178
  call void @llvm.dbg.value(metadata double %70, metadata !162, metadata !DIExpression()), !dbg !178
  call void @llvm.dbg.value(metadata double %71, metadata !164, metadata !DIExpression()), !dbg !178
  %74 = sub nsw i32 %9, %69, !dbg !201
  %75 = mul nsw i32 %74, %69, !dbg !204
  %76 = sitofp i32 %75 to double, !dbg !205
  %77 = fdiv double %38, %76, !dbg !206
  %78 = fmul double %70, %77, !dbg !207
  call void @llvm.dbg.value(metadata double %78, metadata !162, metadata !DIExpression()), !dbg !178
  %79 = fadd double %71, %78, !dbg !208
  call void @llvm.dbg.value(metadata double %79, metadata !164, metadata !DIExpression()), !dbg !178
  call void @llvm.dbg.value(metadata i32 %69, metadata !158, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !178
  br label %80, !dbg !213

80:                                               ; preds = %67, %73
  %81 = phi double [ %68, %67 ], [ %79, %73 ], !dbg !208
  %82 = call double @exp(double noundef %35) #7, !dbg !213
  %83 = fmul double %82, 5.000000e-01, !dbg !214
  %84 = fmul double %81, %83, !dbg !215
  call void @llvm.dbg.value(metadata double %84, metadata !163, metadata !DIExpression()), !dbg !178
  %85 = sitofp i32 %9 to double, !dbg !216
  %86 = fmul double %27, %85, !dbg !217
  %87 = call double @exp(double noundef %86) #7, !dbg !218
  %88 = fmul double %87, 5.000000e-01, !dbg !219
  call void @llvm.dbg.value(metadata double %88, metadata !168, metadata !DIExpression()), !dbg !178
  %89 = fcmp ogt double %88, 0.000000e+00, !dbg !220
  br i1 %89, label %90, label %133, !dbg !221

90:                                               ; preds = %80
  call void @llvm.dbg.value(metadata i32 20, metadata !169, metadata !DIExpression()), !dbg !181
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7, !dbg !222
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #7, !dbg !223
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !174, metadata !DIExpression()), !dbg !181
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !175, metadata !DIExpression()), !dbg !181
  call void @llvm.dbg.value(metadata double 0xBFE2788CFC6FB619, metadata !176, metadata !DIExpression()), !dbg !181
  %91 = call i32 @gsl_sf_psi_int_e(i32 noundef %9, ptr noundef nonnull %5) #7, !dbg !224
  %92 = call i32 @gsl_sf_fact_e(i32 noundef %9, ptr noundef nonnull %6) #7, !dbg !225
  %93 = load double, ptr %5, align 8, !dbg !226, !tbaa !129
  %94 = fdiv double 1.000000e+00, %85, !dbg !227
  %95 = fadd double %94, %93, !dbg !228
  call void @llvm.dbg.value(metadata double %95, metadata !177, metadata !DIExpression()), !dbg !181
  %96 = fadd double %95, 0xBFE2788CFC6FB619, !dbg !229
  %97 = fmul double %27, 2.000000e+00, !dbg !230
  %98 = fsub double %96, %97, !dbg !231
  %99 = load double, ptr %6, align 8, !dbg !232, !tbaa !129
  %100 = fdiv double %98, %99, !dbg !233
  call void @llvm.dbg.value(metadata i32 1, metadata !158, metadata !DIExpression()), !dbg !178
  call void @llvm.dbg.value(metadata double %100, metadata !167, metadata !DIExpression()), !dbg !178
  br label %101, !dbg !234

101:                                              ; preds = %101, %90
  %102 = phi double [ %95, %90 ], [ %115, %101 ]
  %103 = phi double [ 0xBFE2788CFC6FB619, %90 ], [ %111, %101 ]
  %104 = phi double [ 1.000000e+00, %90 ], [ %116, %101 ]
  %105 = phi double [ 1.000000e+00, %90 ], [ %118, %101 ]
  %106 = phi i32 [ 1, %90 ], [ %125, %101 ]
  %107 = phi double [ %100, %90 ], [ %124, %101 ]
  %108 = phi double [ %99, %90 ], [ %117, %101 ]
  call void @llvm.dbg.value(metadata double %102, metadata !177, metadata !DIExpression()), !dbg !181
  call void @llvm.dbg.value(metadata double %103, metadata !176, metadata !DIExpression()), !dbg !181
  call void @llvm.dbg.value(metadata double %104, metadata !175, metadata !DIExpression()), !dbg !181
  call void @llvm.dbg.value(metadata double %105, metadata !174, metadata !DIExpression()), !dbg !181
  call void @llvm.dbg.value(metadata i32 %106, metadata !158, metadata !DIExpression()), !dbg !178
  call void @llvm.dbg.value(metadata double %107, metadata !167, metadata !DIExpression()), !dbg !178
  %109 = sitofp i32 %106 to double, !dbg !236
  %110 = fdiv double 1.000000e+00, %109, !dbg !239
  %111 = fadd double %103, %110, !dbg !240
  call void @llvm.dbg.value(metadata double %111, metadata !176, metadata !DIExpression()), !dbg !181
  %112 = add nuw nsw i32 %106, %9, !dbg !241
  %113 = sitofp i32 %112 to double, !dbg !242
  %114 = fdiv double 1.000000e+00, %113, !dbg !243
  %115 = fadd double %102, %114, !dbg !244
  call void @llvm.dbg.value(metadata double %115, metadata !177, metadata !DIExpression()), !dbg !181
  %116 = fmul double %104, %109, !dbg !245
  call void @llvm.dbg.value(metadata double %116, metadata !175, metadata !DIExpression()), !dbg !181
  %117 = fmul double %108, %113, !dbg !246
  call void @llvm.dbg.assign(metadata double %117, metadata !173, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !247, metadata ptr %6, metadata !DIExpression()), !dbg !181
  %118 = fmul double %25, %105, !dbg !248
  call void @llvm.dbg.value(metadata double %118, metadata !174, metadata !DIExpression()), !dbg !181
  %119 = fadd double %111, %115, !dbg !249
  %120 = fsub double %119, %97, !dbg !250
  %121 = fmul double %118, %120, !dbg !251
  %122 = fmul double %116, %117, !dbg !252
  %123 = fdiv double %121, %122, !dbg !253
  call void @llvm.dbg.value(metadata double %123, metadata !162, metadata !DIExpression()), !dbg !178
  %124 = fadd double %107, %123, !dbg !254
  call void @llvm.dbg.value(metadata double %124, metadata !167, metadata !DIExpression()), !dbg !178
  %125 = add nuw nsw i32 %106, 1, !dbg !255
  call void @llvm.dbg.value(metadata i32 %125, metadata !158, metadata !DIExpression()), !dbg !178
  %126 = icmp eq i32 %125, 20, !dbg !256
  br i1 %126, label %127, label %101, !dbg !234, !llvm.loop !257

127:                                              ; preds = %101
  %128 = and i32 %9, 1, !dbg !259
  %129 = icmp eq i32 %128, 0, !dbg !259
  %130 = fneg double %88, !dbg !260
  %131 = select i1 %129, double %88, double %130, !dbg !260
  %132 = fmul double %131, %124, !dbg !261
  call void @llvm.dbg.value(metadata double %132, metadata !166, metadata !DIExpression()), !dbg !178
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #7, !dbg !262
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7, !dbg !262
  br label %133, !dbg !263

133:                                              ; preds = %127, %80
  %134 = phi double [ %132, %127 ], [ 0.000000e+00, %80 ], !dbg !264
  call void @llvm.dbg.value(metadata double %134, metadata !166, metadata !DIExpression()), !dbg !178
  %135 = fadd double %84, %134, !dbg !265
  %136 = fmul double %28, %135, !dbg !266
  store double %136, ptr %2, align 8, !dbg !267, !tbaa !129
  %137 = fmul double %28, 0x3CB0000000000000, !dbg !268
  %138 = fmul double %35, %84, !dbg !269
  %139 = call double @llvm.fabs.f64(double %138), !dbg !269
  %140 = call double @llvm.fabs.f64(double %134), !dbg !270
  %141 = fadd double %139, %140, !dbg !271
  %142 = fmul double %137, %141, !dbg !272
  %143 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !273
  %144 = call double @llvm.fabs.f64(double %136), !dbg !274
  %145 = fmul double %144, 0x3CC0000000000000, !dbg !275
  %146 = fadd double %142, %145, !dbg !276
  store double %146, ptr %143, align 8, !dbg !276, !tbaa !134
  br label %147, !dbg !277

147:                                              ; preds = %45, %133
  %148 = phi i32 [ 16, %45 ], [ 0, %133 ], !dbg !178
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #7, !dbg !278
  br label %250, !dbg !279

149:                                              ; preds = %21
  %150 = fmul double %1, 0x3ED965FEA53D6E41, !dbg !280
  %151 = mul i32 %0, %0, !dbg !281
  %152 = add nuw nsw i32 %151, 1, !dbg !282
  %153 = sitofp i32 %152 to double, !dbg !283
  %154 = fmul double %153, 2.500000e-01, !dbg !284
  %155 = fcmp ogt double %150, %154, !dbg !285
  br i1 %155, label %156, label %159, !dbg !286

156:                                              ; preds = %149
  %157 = sitofp i32 %9 to double, !dbg !287
  %158 = tail call i32 @gsl_sf_bessel_Knu_scaled_asympx_e(double noundef %157, double noundef %1, ptr noundef %2) #7, !dbg !289
  br label %250, !dbg !290

159:                                              ; preds = %149
  %160 = sitofp i32 %151 to double, !dbg !291
  %161 = fdiv double 2.900000e-01, %160, !dbg !291
  %162 = fmul double %1, %1, !dbg !291
  %163 = fadd double %162, %160, !dbg !291
  %164 = fdiv double 5.000000e-01, %163, !dbg !291
  %165 = fcmp olt double %161, %164, !dbg !291
  %166 = select i1 %165, double %161, double %164, !dbg !291
  %167 = fcmp olt double %166, 0x3ED965FEA53D6E41, !dbg !292
  br i1 %167, label %168, label %171, !dbg !293

168:                                              ; preds = %159
  %169 = sitofp i32 %9 to double, !dbg !294
  %170 = tail call i32 @gsl_sf_bessel_Knu_scaled_asymp_unif_e(double noundef %169, double noundef %1, ptr noundef %2) #7, !dbg !296
  br label %250, !dbg !297

171:                                              ; preds = %159
  %172 = fdiv double 2.000000e+00, %1, !dbg !298
  tail call void @llvm.dbg.value(metadata double %172, metadata !100, metadata !DIExpression()), !dbg !120
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #7, !dbg !299
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #7, !dbg !300
  %173 = call i32 @gsl_sf_bessel_K0_scaled_e(double noundef %1, ptr noundef nonnull %7) #7, !dbg !301
  tail call void @llvm.dbg.value(metadata i32 %173, metadata !110, metadata !DIExpression()), !dbg !120
  %174 = call i32 @gsl_sf_bessel_K1_scaled_e(double noundef %1, ptr noundef nonnull %8) #7, !dbg !302
  tail call void @llvm.dbg.value(metadata i32 %174, metadata !111, metadata !DIExpression()), !dbg !120
  %175 = load double, ptr %7, align 8, !dbg !303, !tbaa !129
  tail call void @llvm.dbg.value(metadata double %175, metadata !112, metadata !DIExpression()), !dbg !120
  %176 = load double, ptr %8, align 8, !dbg !304, !tbaa !129
  tail call void @llvm.dbg.value(metadata double %176, metadata !113, metadata !DIExpression()), !dbg !120
  tail call void @llvm.dbg.value(metadata i32 1, metadata !115, metadata !DIExpression()), !dbg !120
  %177 = call i32 @llvm.abs.i32(i32 %0, i1 false), !dbg !305
  %178 = call i32 @llvm.umax.i32(i32 %177, i32 2), !dbg !305
  %179 = add i32 %178, -1, !dbg !305
  %180 = add i32 %178, -2, !dbg !305
  %181 = and i32 %179, 3, !dbg !305
  %182 = icmp ult i32 %180, 3, !dbg !305
  br i1 %182, label %212, label %183, !dbg !305

183:                                              ; preds = %171
  %184 = and i32 %179, -4, !dbg !305
  br label %185, !dbg !305

185:                                              ; preds = %185, %183
  %186 = phi i32 [ 1, %183 ], [ %209, %185 ]
  %187 = phi double [ %176, %183 ], [ %208, %185 ]
  %188 = phi double [ %175, %183 ], [ %203, %185 ]
  %189 = phi i32 [ 0, %183 ], [ %210, %185 ]
  tail call void @llvm.dbg.value(metadata i32 %186, metadata !115, metadata !DIExpression()), !dbg !120
  tail call void @llvm.dbg.value(metadata double %187, metadata !113, metadata !DIExpression()), !dbg !120
  tail call void @llvm.dbg.value(metadata double %188, metadata !112, metadata !DIExpression()), !dbg !120
  %190 = sitofp i32 %186 to double, !dbg !307
  %191 = fmul double %172, %190, !dbg !310
  %192 = fmul double %187, %191, !dbg !311
  %193 = fadd double %188, %192, !dbg !312
  tail call void @llvm.dbg.value(metadata double %193, metadata !114, metadata !DIExpression()), !dbg !120
  tail call void @llvm.dbg.value(metadata double %187, metadata !112, metadata !DIExpression()), !dbg !120
  tail call void @llvm.dbg.value(metadata double %193, metadata !113, metadata !DIExpression()), !dbg !120
  %194 = add nuw nsw i32 %186, 1, !dbg !313
  tail call void @llvm.dbg.value(metadata i32 %194, metadata !115, metadata !DIExpression()), !dbg !120
  tail call void @llvm.dbg.value(metadata i32 %194, metadata !115, metadata !DIExpression()), !dbg !120
  tail call void @llvm.dbg.value(metadata double %193, metadata !113, metadata !DIExpression()), !dbg !120
  tail call void @llvm.dbg.value(metadata double %187, metadata !112, metadata !DIExpression()), !dbg !120
  %195 = sitofp i32 %194 to double, !dbg !307
  %196 = fmul double %172, %195, !dbg !310
  %197 = fmul double %193, %196, !dbg !311
  %198 = fadd double %187, %197, !dbg !312
  tail call void @llvm.dbg.value(metadata double %198, metadata !114, metadata !DIExpression()), !dbg !120
  tail call void @llvm.dbg.value(metadata double %193, metadata !112, metadata !DIExpression()), !dbg !120
  tail call void @llvm.dbg.value(metadata double %198, metadata !113, metadata !DIExpression()), !dbg !120
  %199 = add nuw nsw i32 %186, 2, !dbg !313
  tail call void @llvm.dbg.value(metadata i32 %199, metadata !115, metadata !DIExpression()), !dbg !120
  tail call void @llvm.dbg.value(metadata i32 %199, metadata !115, metadata !DIExpression()), !dbg !120
  tail call void @llvm.dbg.value(metadata double %198, metadata !113, metadata !DIExpression()), !dbg !120
  tail call void @llvm.dbg.value(metadata double %193, metadata !112, metadata !DIExpression()), !dbg !120
  %200 = sitofp i32 %199 to double, !dbg !307
  %201 = fmul double %172, %200, !dbg !310
  %202 = fmul double %198, %201, !dbg !311
  %203 = fadd double %193, %202, !dbg !312
  tail call void @llvm.dbg.value(metadata double %203, metadata !114, metadata !DIExpression()), !dbg !120
  tail call void @llvm.dbg.value(metadata double %198, metadata !112, metadata !DIExpression()), !dbg !120
  tail call void @llvm.dbg.value(metadata double %203, metadata !113, metadata !DIExpression()), !dbg !120
  %204 = add nuw nsw i32 %186, 3, !dbg !313
  tail call void @llvm.dbg.value(metadata i32 %204, metadata !115, metadata !DIExpression()), !dbg !120
  tail call void @llvm.dbg.value(metadata i32 %204, metadata !115, metadata !DIExpression()), !dbg !120
  tail call void @llvm.dbg.value(metadata double %203, metadata !113, metadata !DIExpression()), !dbg !120
  tail call void @llvm.dbg.value(metadata double %198, metadata !112, metadata !DIExpression()), !dbg !120
  %205 = sitofp i32 %204 to double, !dbg !307
  %206 = fmul double %172, %205, !dbg !310
  %207 = fmul double %203, %206, !dbg !311
  %208 = fadd double %198, %207, !dbg !312
  tail call void @llvm.dbg.value(metadata double %208, metadata !114, metadata !DIExpression()), !dbg !120
  tail call void @llvm.dbg.value(metadata double %203, metadata !112, metadata !DIExpression()), !dbg !120
  tail call void @llvm.dbg.value(metadata double %208, metadata !113, metadata !DIExpression()), !dbg !120
  %209 = add nuw nsw i32 %186, 4, !dbg !313
  tail call void @llvm.dbg.value(metadata i32 %209, metadata !115, metadata !DIExpression()), !dbg !120
  %210 = add i32 %189, 4, !dbg !305
  %211 = icmp eq i32 %210, %184, !dbg !305
  br i1 %211, label %212, label %185, !dbg !305, !llvm.loop !314

212:                                              ; preds = %185, %171
  %213 = phi double [ undef, %171 ], [ %208, %185 ]
  %214 = phi i32 [ 1, %171 ], [ %209, %185 ]
  %215 = phi double [ %176, %171 ], [ %208, %185 ]
  %216 = phi double [ %175, %171 ], [ %203, %185 ]
  %217 = icmp eq i32 %181, 0, !dbg !305
  br i1 %217, label %230, label %218, !dbg !305

218:                                              ; preds = %212, %218
  %219 = phi i32 [ %227, %218 ], [ %214, %212 ]
  %220 = phi double [ %226, %218 ], [ %215, %212 ]
  %221 = phi double [ %220, %218 ], [ %216, %212 ]
  %222 = phi i32 [ %228, %218 ], [ 0, %212 ]
  tail call void @llvm.dbg.value(metadata i32 %219, metadata !115, metadata !DIExpression()), !dbg !120
  tail call void @llvm.dbg.value(metadata double %220, metadata !113, metadata !DIExpression()), !dbg !120
  tail call void @llvm.dbg.value(metadata double %221, metadata !112, metadata !DIExpression()), !dbg !120
  %223 = sitofp i32 %219 to double, !dbg !307
  %224 = fmul double %172, %223, !dbg !310
  %225 = fmul double %220, %224, !dbg !311
  %226 = fadd double %221, %225, !dbg !312
  tail call void @llvm.dbg.value(metadata double %226, metadata !114, metadata !DIExpression()), !dbg !120
  tail call void @llvm.dbg.value(metadata double %220, metadata !112, metadata !DIExpression()), !dbg !120
  tail call void @llvm.dbg.value(metadata double %226, metadata !113, metadata !DIExpression()), !dbg !120
  %227 = add nuw nsw i32 %219, 1, !dbg !313
  tail call void @llvm.dbg.value(metadata i32 %227, metadata !115, metadata !DIExpression()), !dbg !120
  %228 = add i32 %222, 1, !dbg !305
  %229 = icmp eq i32 %228, %181, !dbg !305
  br i1 %229, label %230, label %218, !dbg !305, !llvm.loop !316

230:                                              ; preds = %218, %212
  %231 = phi double [ %213, %212 ], [ %226, %218 ], !dbg !312
  store double %231, ptr %2, align 8, !dbg !318, !tbaa !129
  %232 = sitofp i32 %9 to double, !dbg !319
  %233 = call double @llvm.fabs.f64(double %231), !dbg !320
  %234 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %7, i64 0, i32 1, !dbg !321
  %235 = load double, ptr %234, align 8, !dbg !321, !tbaa !134
  %236 = fdiv double %235, %175, !dbg !322
  %237 = call double @llvm.fabs.f64(double %236), !dbg !323
  %238 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %8, i64 0, i32 1, !dbg !324
  %239 = load double, ptr %238, align 8, !dbg !324, !tbaa !134
  %240 = fdiv double %239, %176, !dbg !325
  %241 = call double @llvm.fabs.f64(double %240), !dbg !326
  %242 = fadd double %237, %241, !dbg !327
  %243 = fmul double %233, %242, !dbg !328
  %244 = fmul double %243, %232, !dbg !329
  %245 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !330
  %246 = fmul double %233, 0x3CC0000000000000, !dbg !331
  %247 = fadd double %246, %244, !dbg !332
  store double %247, ptr %245, align 8, !dbg !332, !tbaa !134
  %248 = icmp eq i32 %173, 0, !dbg !333
  %249 = select i1 %248, i32 %174, i32 %173, !dbg !333
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #7, !dbg !334
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #7, !dbg !334
  br label %250

250:                                              ; preds = %11, %15, %19, %147, %156, %168, %230
  %251 = phi i32 [ 1, %11 ], [ %16, %15 ], [ %20, %19 ], [ %148, %147 ], [ %158, %156 ], [ %170, %168 ], [ %249, %230 ], !dbg !335
  ret i32 %251, !dbg !336
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #1

declare !dbg !337 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !342 i32 @gsl_sf_bessel_K0_scaled_e(double noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !346 i32 @gsl_sf_bessel_K1_scaled_e(double noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !347 i32 @gsl_sf_bessel_Knu_scaled_asympx_e(double noundef, double noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !351 i32 @gsl_sf_bessel_Knu_scaled_asymp_unif_e(double noundef, double noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_bessel_Kn_e(i32 noundef %0, double noundef %1, ptr noundef %2) local_unnamed_addr #0 !dbg !352 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !354, metadata !DIExpression()), !dbg !359
  tail call void @llvm.dbg.value(metadata double %1, metadata !355, metadata !DIExpression()), !dbg !359
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !356, metadata !DIExpression()), !dbg !359
  %4 = tail call i32 @gsl_sf_bessel_Kn_scaled_e(i32 noundef %0, double noundef %1, ptr noundef %2), !dbg !360
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !357, metadata !DIExpression()), !dbg !359
  %5 = fneg double %1, !dbg !361
  %6 = tail call double @exp(double noundef %5) #7, !dbg !362
  tail call void @llvm.dbg.value(metadata double %6, metadata !358, metadata !DIExpression()), !dbg !359
  %7 = load double, ptr %2, align 8, !dbg !363, !tbaa !129
  %8 = fmul double %6, %7, !dbg !363
  store double %8, ptr %2, align 8, !dbg !363, !tbaa !129
  %9 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !364
  %10 = load double, ptr %9, align 8, !dbg !365, !tbaa !134
  %11 = fmul double %6, %10, !dbg !365
  %12 = fmul double %1, 0x3CB0000000000000, !dbg !366
  %13 = tail call double @llvm.fabs.f64(double %8), !dbg !367
  %14 = fmul double %12, %13, !dbg !368
  %15 = fadd double %11, %14, !dbg !369
  store double %15, ptr %9, align 8, !dbg !369, !tbaa !134
  ret i32 %4, !dbg !370
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !371 double @exp(double noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_bessel_Kn_scaled_array(i32 noundef %0, i32 noundef %1, double noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 !dbg !375 {
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !408
  call void @llvm.dbg.assign(metadata i1 undef, metadata !387, metadata !DIExpression(), metadata !408, metadata ptr %5, metadata !DIExpression()), !dbg !409
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !410
  call void @llvm.dbg.assign(metadata i1 undef, metadata !393, metadata !DIExpression(), metadata !410, metadata ptr %6, metadata !DIExpression()), !dbg !411
  %7 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !412
  call void @llvm.dbg.assign(metadata i1 undef, metadata !394, metadata !DIExpression(), metadata !412, metadata ptr %7, metadata !DIExpression()), !dbg !411
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !380, metadata !DIExpression()), !dbg !413
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !381, metadata !DIExpression()), !dbg !413
  tail call void @llvm.dbg.value(metadata double %2, metadata !382, metadata !DIExpression()), !dbg !413
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !383, metadata !DIExpression()), !dbg !413
  %8 = icmp slt i32 %0, 0, !dbg !414
  br i1 %8, label %13, label %9, !dbg !415

9:                                                ; preds = %4
  %10 = icmp slt i32 %1, %0, !dbg !416
  %11 = fcmp ole double %2, 0.000000e+00
  %12 = or i1 %10, %11, !dbg !417
  br i1 %12, label %13, label %21, !dbg !417

13:                                               ; preds = %9, %4
  tail call void @llvm.dbg.value(metadata i32 0, metadata !384, metadata !DIExpression()), !dbg !418
  tail call void @llvm.dbg.value(metadata i32 0, metadata !384, metadata !DIExpression()), !dbg !418
  %14 = icmp slt i32 %1, %0, !dbg !419
  br i1 %14, label %20, label %15, !dbg !422

15:                                               ; preds = %13
  %16 = add i32 %1, 1, !dbg !422
  %17 = sub i32 %16, %0, !dbg !422
  %18 = zext i32 %17 to i64, !dbg !422
  %19 = shl nuw nsw i64 %18, 3, !dbg !422
  tail call void @llvm.memset.p0.i64(ptr align 8 %3, i8 0, i64 %19, i1 false), !dbg !423, !tbaa !424
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !384, metadata !DIExpression()), !dbg !418
  br label %20, !dbg !425

20:                                               ; preds = %15, %13
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 171, i32 noundef 1) #7, !dbg !425
  br label %68

21:                                               ; preds = %9
  %22 = icmp eq i32 %1, 0, !dbg !427
  br i1 %22, label %23, label %26, !dbg !428

23:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7, !dbg !429
  %24 = call i32 @gsl_sf_bessel_K0_scaled_e(double noundef %2, ptr noundef nonnull %5) #7, !dbg !430
  tail call void @llvm.dbg.value(metadata i32 %24, metadata !390, metadata !DIExpression()), !dbg !409
  %25 = load double, ptr %5, align 8, !dbg !431, !tbaa !129
  store double %25, ptr %3, align 8, !dbg !432, !tbaa !424
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7, !dbg !433
  br label %68

26:                                               ; preds = %21
  %27 = fdiv double 2.000000e+00, %2, !dbg !434
  tail call void @llvm.dbg.value(metadata double %27, metadata !391, metadata !DIExpression()), !dbg !411
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #7, !dbg !435
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #7, !dbg !436
  %28 = call i32 @gsl_sf_bessel_Kn_scaled_e(i32 noundef %0, double noundef %2, ptr noundef nonnull %6), !dbg !437
  tail call void @llvm.dbg.value(metadata i32 %28, metadata !395, metadata !DIExpression()), !dbg !411
  %29 = add nuw nsw i32 %0, 1, !dbg !438
  %30 = call i32 @gsl_sf_bessel_Kn_scaled_e(i32 noundef %29, double noundef %2, ptr noundef nonnull %7), !dbg !439
  tail call void @llvm.dbg.value(metadata i32 %30, metadata !396, metadata !DIExpression()), !dbg !411
  %31 = icmp eq i32 %28, 0, !dbg !440
  %32 = select i1 %31, i32 %30, i32 %28, !dbg !440
  tail call void @llvm.dbg.value(metadata i32 %32, metadata !397, metadata !DIExpression()), !dbg !411
  tail call void @llvm.dbg.value(metadata double poison, metadata !399, metadata !DIExpression()), !dbg !411
  tail call void @llvm.dbg.value(metadata double poison, metadata !400, metadata !DIExpression()), !dbg !411
  tail call void @llvm.dbg.value(metadata i32 %29, metadata !401, metadata !DIExpression()), !dbg !411
  %33 = add nuw nsw i32 %1, 1
  %34 = load double, ptr %6, align 8, !dbg !441, !tbaa !129
  tail call void @llvm.dbg.value(metadata double %34, metadata !400, metadata !DIExpression()), !dbg !411
  %35 = load double, ptr %7, align 8, !dbg !442, !tbaa !129
  tail call void @llvm.dbg.value(metadata double %35, metadata !399, metadata !DIExpression()), !dbg !411
  %36 = xor i32 %0, -1
  %37 = zext nneg i32 %29 to i64, !dbg !443
  %38 = sext i32 %36 to i64, !dbg !443
  %39 = zext nneg i32 %1 to i64, !dbg !443
  %40 = getelementptr double, ptr %3, i64 %38, !dbg !443
  br label %41, !dbg !443

41:                                               ; preds = %26, %51
  %42 = phi i64 [ %37, %26 ], [ %58, %51 ]
  %43 = phi double [ %34, %26 ], [ %44, %51 ]
  %44 = phi double [ %35, %26 ], [ %57, %51 ]
  tail call void @llvm.dbg.value(metadata i64 %42, metadata !401, metadata !DIExpression()), !dbg !411
  tail call void @llvm.dbg.value(metadata double %43, metadata !400, metadata !DIExpression()), !dbg !411
  tail call void @llvm.dbg.value(metadata double %44, metadata !399, metadata !DIExpression()), !dbg !411
  %45 = fcmp olt double %43, 0x7FEFFFFFFFFFFFFF, !dbg !444
  br i1 %45, label %51, label %46, !dbg !445

46:                                               ; preds = %41
  %47 = trunc i64 %42 to i32, !dbg !446
  tail call void @llvm.dbg.value(metadata i32 %47, metadata !402, metadata !DIExpression()), !dbg !449
  %48 = icmp slt i32 %33, %47, !dbg !446
  br i1 %48, label %65, label %49, !dbg !450

49:                                               ; preds = %46
  %50 = getelementptr double, ptr %3, i64 %38, !dbg !450
  br label %60, !dbg !450

51:                                               ; preds = %41
  %52 = getelementptr double, ptr %40, i64 %42, !dbg !451
  store double %43, ptr %52, align 8, !dbg !453, !tbaa !424
  tail call void @llvm.dbg.value(metadata double poison, metadata !398, metadata !DIExpression()), !dbg !411
  tail call void @llvm.dbg.value(metadata double %44, metadata !400, metadata !DIExpression()), !dbg !411
  tail call void @llvm.dbg.value(metadata double poison, metadata !399, metadata !DIExpression()), !dbg !411
  %53 = trunc i64 %42 to i32, !dbg !454
  %54 = sitofp i32 %53 to double, !dbg !454
  %55 = fmul double %27, %54, !dbg !455
  %56 = fmul double %44, %55, !dbg !456
  %57 = fadd double %43, %56, !dbg !457
  tail call void @llvm.dbg.value(metadata double %57, metadata !398, metadata !DIExpression()), !dbg !411
  tail call void @llvm.dbg.value(metadata double %57, metadata !399, metadata !DIExpression()), !dbg !411
  %58 = add i64 %42, 1, !dbg !458
  tail call void @llvm.dbg.value(metadata i64 %58, metadata !401, metadata !DIExpression()), !dbg !411
  %59 = icmp sgt i64 %42, %39, !dbg !459
  br i1 %59, label %66, label %41, !dbg !443, !llvm.loop !460

60:                                               ; preds = %49, %60
  %61 = phi i64 [ %42, %49 ], [ %63, %60 ]
  tail call void @llvm.dbg.value(metadata i64 %61, metadata !402, metadata !DIExpression()), !dbg !449
  %62 = getelementptr double, ptr %50, i64 %61, !dbg !462
  store double 0.000000e+00, ptr %62, align 8, !dbg !463, !tbaa !424
  %63 = add i64 %61, 1, !dbg !464
  tail call void @llvm.dbg.value(metadata i64 %63, metadata !402, metadata !DIExpression()), !dbg !449
  %64 = icmp sgt i64 %61, %39, !dbg !446
  br i1 %64, label %65, label %60, !dbg !450, !llvm.loop !465

65:                                               ; preds = %60, %46
  call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 208, i32 noundef 16) #7, !dbg !467
  br label %66

66:                                               ; preds = %51, %65
  %67 = phi i32 [ 16, %65 ], [ %32, %51 ], !dbg !411
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #7, !dbg !469
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #7, !dbg !469
  br label %68

68:                                               ; preds = %20, %23, %66
  %69 = phi i32 [ 1, %20 ], [ %24, %23 ], [ %67, %66 ], !dbg !470
  ret i32 %69, !dbg !471
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_bessel_Kn_array(i32 noundef %0, i32 noundef %1, double noundef %2, ptr nocapture noundef %3) local_unnamed_addr #0 !dbg !472 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !474, metadata !DIExpression()), !dbg !481
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !475, metadata !DIExpression()), !dbg !481
  tail call void @llvm.dbg.value(metadata double %2, metadata !476, metadata !DIExpression()), !dbg !481
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !477, metadata !DIExpression()), !dbg !481
  %5 = tail call i32 @gsl_sf_bessel_Kn_scaled_array(i32 noundef %0, i32 noundef %1, double noundef %2, ptr noundef %3), !dbg !482
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !478, metadata !DIExpression()), !dbg !481
  %6 = fneg double %2, !dbg !483
  %7 = tail call double @exp(double noundef %6) #7, !dbg !484
  tail call void @llvm.dbg.value(metadata double %7, metadata !479, metadata !DIExpression()), !dbg !481
  tail call void @llvm.dbg.value(metadata i32 0, metadata !480, metadata !DIExpression()), !dbg !481
  tail call void @llvm.dbg.value(metadata i32 0, metadata !480, metadata !DIExpression()), !dbg !481
  %8 = icmp slt i32 %1, %0, !dbg !485
  br i1 %8, label %51, label %9, !dbg !488

9:                                                ; preds = %4
  %10 = add i32 %1, 1, !dbg !488
  %11 = sub i32 %10, %0, !dbg !488
  %12 = zext i32 %11 to i64, !dbg !485
  %13 = add nsw i64 %12, -1, !dbg !488
  %14 = and i64 %12, 3, !dbg !488
  %15 = icmp ult i64 %13, 3, !dbg !488
  br i1 %15, label %39, label %16, !dbg !488

16:                                               ; preds = %9
  %17 = and i64 %12, 4294967292, !dbg !488
  br label %18, !dbg !488

18:                                               ; preds = %18, %16
  %19 = phi i64 [ 0, %16 ], [ %36, %18 ]
  %20 = phi i64 [ 0, %16 ], [ %37, %18 ]
  tail call void @llvm.dbg.value(metadata i64 %19, metadata !480, metadata !DIExpression()), !dbg !481
  %21 = getelementptr inbounds double, ptr %3, i64 %19, !dbg !489
  %22 = load double, ptr %21, align 8, !dbg !490, !tbaa !424
  %23 = fmul double %7, %22, !dbg !490
  store double %23, ptr %21, align 8, !dbg !490, !tbaa !424
  %24 = or disjoint i64 %19, 1, !dbg !491
  tail call void @llvm.dbg.value(metadata i64 %24, metadata !480, metadata !DIExpression()), !dbg !481
  tail call void @llvm.dbg.value(metadata i64 %24, metadata !480, metadata !DIExpression()), !dbg !481
  %25 = getelementptr inbounds double, ptr %3, i64 %24, !dbg !489
  %26 = load double, ptr %25, align 8, !dbg !490, !tbaa !424
  %27 = fmul double %7, %26, !dbg !490
  store double %27, ptr %25, align 8, !dbg !490, !tbaa !424
  %28 = or disjoint i64 %19, 2, !dbg !491
  tail call void @llvm.dbg.value(metadata i64 %28, metadata !480, metadata !DIExpression()), !dbg !481
  tail call void @llvm.dbg.value(metadata i64 %28, metadata !480, metadata !DIExpression()), !dbg !481
  %29 = getelementptr inbounds double, ptr %3, i64 %28, !dbg !489
  %30 = load double, ptr %29, align 8, !dbg !490, !tbaa !424
  %31 = fmul double %7, %30, !dbg !490
  store double %31, ptr %29, align 8, !dbg !490, !tbaa !424
  %32 = or disjoint i64 %19, 3, !dbg !491
  tail call void @llvm.dbg.value(metadata i64 %32, metadata !480, metadata !DIExpression()), !dbg !481
  tail call void @llvm.dbg.value(metadata i64 %32, metadata !480, metadata !DIExpression()), !dbg !481
  %33 = getelementptr inbounds double, ptr %3, i64 %32, !dbg !489
  %34 = load double, ptr %33, align 8, !dbg !490, !tbaa !424
  %35 = fmul double %7, %34, !dbg !490
  store double %35, ptr %33, align 8, !dbg !490, !tbaa !424
  %36 = add nuw nsw i64 %19, 4, !dbg !491
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !480, metadata !DIExpression()), !dbg !481
  %37 = add i64 %20, 4, !dbg !488
  %38 = icmp eq i64 %37, %17, !dbg !488
  br i1 %38, label %39, label %18, !dbg !488, !llvm.loop !492

39:                                               ; preds = %18, %9
  %40 = phi i64 [ 0, %9 ], [ %36, %18 ]
  %41 = icmp eq i64 %14, 0, !dbg !488
  br i1 %41, label %51, label %42, !dbg !488

42:                                               ; preds = %39, %42
  %43 = phi i64 [ %48, %42 ], [ %40, %39 ]
  %44 = phi i64 [ %49, %42 ], [ 0, %39 ]
  tail call void @llvm.dbg.value(metadata i64 %43, metadata !480, metadata !DIExpression()), !dbg !481
  %45 = getelementptr inbounds double, ptr %3, i64 %43, !dbg !489
  %46 = load double, ptr %45, align 8, !dbg !490, !tbaa !424
  %47 = fmul double %7, %46, !dbg !490
  store double %47, ptr %45, align 8, !dbg !490, !tbaa !424
  %48 = add nuw nsw i64 %43, 1, !dbg !491
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !480, metadata !DIExpression()), !dbg !481
  %49 = add i64 %44, 1, !dbg !488
  %50 = icmp eq i64 %49, %14, !dbg !488
  br i1 %50, label %51, label %42, !dbg !488, !llvm.loop !494

51:                                               ; preds = %39, %42, %4
  ret i32 %5, !dbg !495
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_bessel_Kn_scaled(i32 noundef %0, double noundef %1) local_unnamed_addr #0 !dbg !496 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !504
  call void @llvm.dbg.assign(metadata i1 undef, metadata !502, metadata !DIExpression(), metadata !504, metadata ptr %3, metadata !DIExpression()), !dbg !505
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !500, metadata !DIExpression()), !dbg !505
  tail call void @llvm.dbg.value(metadata double %1, metadata !501, metadata !DIExpression()), !dbg !505
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7, !dbg !506
  %4 = call i32 @gsl_sf_bessel_Kn_scaled_e(i32 noundef %0, double noundef %1, ptr noundef nonnull %3), !dbg !506
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !503, metadata !DIExpression()), !dbg !505
  %5 = icmp eq i32 %4, 0, !dbg !507
  br i1 %5, label %7, label %6, !dbg !506

6:                                                ; preds = %2
  call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 234, i32 noundef %4) #7, !dbg !509
  br label %7, !dbg !509

7:                                                ; preds = %2, %6
  %8 = load double, ptr %3, align 8, !dbg !506, !tbaa !129
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7, !dbg !512
  ret double %8, !dbg !512
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_bessel_Kn(i32 noundef %0, double noundef %1) local_unnamed_addr #0 !dbg !513 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !519
  call void @llvm.dbg.assign(metadata i1 undef, metadata !517, metadata !DIExpression(), metadata !519, metadata ptr %3, metadata !DIExpression()), !dbg !520
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !515, metadata !DIExpression()), !dbg !520
  tail call void @llvm.dbg.value(metadata double %1, metadata !516, metadata !DIExpression()), !dbg !520
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7, !dbg !521
  call void @llvm.dbg.value(metadata i32 %0, metadata !354, metadata !DIExpression()), !dbg !522
  call void @llvm.dbg.value(metadata double %1, metadata !355, metadata !DIExpression()), !dbg !522
  call void @llvm.dbg.value(metadata ptr %3, metadata !356, metadata !DIExpression()), !dbg !522
  %4 = call i32 @gsl_sf_bessel_Kn_scaled_e(i32 noundef %0, double noundef %1, ptr noundef nonnull %3), !dbg !524
  call void @llvm.dbg.value(metadata i32 %4, metadata !357, metadata !DIExpression()), !dbg !522
  %5 = fneg double %1, !dbg !525
  %6 = call double @exp(double noundef %5) #7, !dbg !526
  call void @llvm.dbg.value(metadata double %6, metadata !358, metadata !DIExpression()), !dbg !522
  %7 = load double, ptr %3, align 8, !dbg !527, !tbaa !129
  %8 = fmul double %6, %7, !dbg !527
  store double %8, ptr %3, align 8, !dbg !527, !tbaa !129, !DIAssignID !528
  call void @llvm.dbg.assign(metadata double %8, metadata !517, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !528, metadata ptr %3, metadata !DIExpression()), !dbg !520
  %9 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !529
  %10 = load double, ptr %9, align 8, !dbg !530, !tbaa !134
  %11 = fmul double %6, %10, !dbg !530
  %12 = fmul double %1, 0x3CB0000000000000, !dbg !531
  %13 = call double @llvm.fabs.f64(double %8), !dbg !532
  %14 = fmul double %12, %13, !dbg !533
  %15 = fadd double %11, %14, !dbg !534
  store double %15, ptr %9, align 8, !dbg !534, !tbaa !134, !DIAssignID !535
  call void @llvm.dbg.assign(metadata double %15, metadata !517, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64), metadata !535, metadata ptr %9, metadata !DIExpression()), !dbg !520
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !518, metadata !DIExpression()), !dbg !520
  %16 = icmp eq i32 %4, 0, !dbg !536
  br i1 %16, label %19, label %17, !dbg !521

17:                                               ; preds = %2
  call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 239, i32 noundef %4) #7, !dbg !538
  %18 = load double, ptr %3, align 8, !dbg !521, !tbaa !129
  br label %19, !dbg !538

19:                                               ; preds = %2, %17
  %20 = phi double [ %8, %2 ], [ %18, %17 ], !dbg !521
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7, !dbg !541
  ret double %20, !dbg !541
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !542 double @log(double noundef) local_unnamed_addr #4

declare !dbg !543 i32 @gsl_sf_lnfact_e(i32 noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !548 i32 @gsl_sf_psi_int_e(i32 noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !552 i32 @gsl_sf_fact_e(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind }

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
!185 = !DILocation(line: 44, column: 19, scope: !150, inlinedAt: !179)
!186 = !DILocation(line: 45, column: 15, scope: !150, inlinedAt: !179)
!187 = !DILocation(line: 46, column: 3, scope: !150, inlinedAt: !179)
!188 = !DILocation(line: 51, column: 35, scope: !150, inlinedAt: !179)
!189 = !DILocation(line: 51, column: 3, scope: !150, inlinedAt: !179)
!190 = !DILocation(line: 53, column: 13, scope: !150, inlinedAt: !179)
!191 = !DILocation(line: 53, column: 15, scope: !150, inlinedAt: !179)
!192 = !DILocation(line: 53, column: 37, scope: !150, inlinedAt: !179)
!193 = !DILocation(line: 53, column: 23, scope: !150, inlinedAt: !179)
!194 = !DILocation(line: 54, column: 14, scope: !195, inlinedAt: !179)
!195 = distinct !DILexicalBlock(scope: !150, file: !2, line: 54, column: 6)
!196 = !DILocation(line: 54, column: 6, scope: !150, inlinedAt: !179)
!197 = !DILocation(line: 58, column: 3, scope: !198, inlinedAt: !179)
!198 = distinct !DILexicalBlock(scope: !150, file: !2, line: 58, column: 3)
!199 = !DILocation(line: 54, column: 39, scope: !200, inlinedAt: !179)
!200 = distinct !DILexicalBlock(scope: !195, file: !2, line: 54, column: 39)
!201 = !DILocation(line: 59, column: 25, scope: !202, inlinedAt: !179)
!202 = distinct !DILexicalBlock(scope: !203, file: !2, line: 58, column: 25)
!203 = distinct !DILexicalBlock(scope: !198, file: !2, line: 58, column: 3)
!204 = !DILocation(line: 59, column: 21, scope: !202, inlinedAt: !179)
!205 = !DILocation(line: 59, column: 18, scope: !202, inlinedAt: !179)
!206 = !DILocation(line: 59, column: 17, scope: !202, inlinedAt: !179)
!207 = !DILocation(line: 59, column: 12, scope: !202, inlinedAt: !179)
!208 = !DILocation(line: 60, column: 10, scope: !202, inlinedAt: !179)
!209 = !DILocation(line: 58, column: 21, scope: !203, inlinedAt: !179)
!210 = distinct !{!210, !197, !211, !212}
!211 = !DILocation(line: 61, column: 3, scope: !198, inlinedAt: !179)
!212 = !{!"llvm.loop.mustprogress"}
!213 = !DILocation(line: 62, column: 17, scope: !150, inlinedAt: !179)
!214 = !DILocation(line: 62, column: 15, scope: !150, inlinedAt: !179)
!215 = !DILocation(line: 62, column: 30, scope: !150, inlinedAt: !179)
!216 = !DILocation(line: 64, column: 20, scope: !150, inlinedAt: !179)
!217 = !DILocation(line: 64, column: 21, scope: !150, inlinedAt: !179)
!218 = !DILocation(line: 64, column: 16, scope: !150, inlinedAt: !179)
!219 = !DILocation(line: 64, column: 14, scope: !150, inlinedAt: !179)
!220 = !DILocation(line: 65, column: 11, scope: !171, inlinedAt: !179)
!221 = !DILocation(line: 65, column: 6, scope: !150, inlinedAt: !179)
!222 = !DILocation(line: 67, column: 5, scope: !170, inlinedAt: !179)
!223 = !DILocation(line: 68, column: 5, scope: !170, inlinedAt: !179)
!224 = !DILocation(line: 73, column: 5, scope: !170, inlinedAt: !179)
!225 = !DILocation(line: 74, column: 5, scope: !170, inlinedAt: !179)
!226 = !DILocation(line: 75, column: 23, scope: !170, inlinedAt: !179)
!227 = !DILocation(line: 75, column: 32, scope: !170, inlinedAt: !179)
!228 = !DILocation(line: 75, column: 27, scope: !170, inlinedAt: !179)
!229 = !DILocation(line: 76, column: 21, scope: !170, inlinedAt: !179)
!230 = !DILocation(line: 76, column: 38, scope: !170, inlinedAt: !179)
!231 = !DILocation(line: 76, column: 33, scope: !170, inlinedAt: !179)
!232 = !DILocation(line: 76, column: 56, scope: !170, inlinedAt: !179)
!233 = !DILocation(line: 76, column: 46, scope: !170, inlinedAt: !179)
!234 = !DILocation(line: 77, column: 5, scope: !235, inlinedAt: !179)
!235 = distinct !DILexicalBlock(scope: !170, file: !2, line: 77, column: 5)
!236 = !DILocation(line: 78, column: 24, scope: !237, inlinedAt: !179)
!237 = distinct !DILexicalBlock(scope: !238, file: !2, line: 77, column: 27)
!238 = distinct !DILexicalBlock(scope: !235, file: !2, line: 77, column: 5)
!239 = !DILocation(line: 78, column: 23, scope: !237, inlinedAt: !179)
!240 = !DILocation(line: 78, column: 17, scope: !237, inlinedAt: !179)
!241 = !DILocation(line: 79, column: 26, scope: !237, inlinedAt: !179)
!242 = !DILocation(line: 79, column: 24, scope: !237, inlinedAt: !179)
!243 = !DILocation(line: 79, column: 23, scope: !237, inlinedAt: !179)
!244 = !DILocation(line: 79, column: 17, scope: !237, inlinedAt: !179)
!245 = !DILocation(line: 80, column: 17, scope: !237, inlinedAt: !179)
!246 = !DILocation(line: 81, column: 20, scope: !237, inlinedAt: !179)
!247 = distinct !DIAssignID()
!248 = !DILocation(line: 82, column: 10, scope: !237, inlinedAt: !179)
!249 = !DILocation(line: 83, column: 28, scope: !237, inlinedAt: !179)
!250 = !DILocation(line: 83, column: 40, scope: !237, inlinedAt: !179)
!251 = !DILocation(line: 83, column: 18, scope: !237, inlinedAt: !179)
!252 = !DILocation(line: 83, column: 61, scope: !237, inlinedAt: !179)
!253 = !DILocation(line: 83, column: 53, scope: !237, inlinedAt: !179)
!254 = !DILocation(line: 84, column: 12, scope: !237, inlinedAt: !179)
!255 = !DILocation(line: 77, column: 23, scope: !238, inlinedAt: !179)
!256 = !DILocation(line: 77, column: 15, scope: !238, inlinedAt: !179)
!257 = distinct !{!257, !234, !258, !212}
!258 = !DILocation(line: 85, column: 5, scope: !235, inlinedAt: !179)
!259 = !DILocation(line: 86, column: 15, scope: !170, inlinedAt: !179)
!260 = !DILocation(line: 86, column: 44, scope: !170, inlinedAt: !179)
!261 = !DILocation(line: 86, column: 51, scope: !170, inlinedAt: !179)
!262 = !DILocation(line: 87, column: 3, scope: !171, inlinedAt: !179)
!263 = !DILocation(line: 87, column: 3, scope: !170, inlinedAt: !179)
!264 = !DILocation(line: 0, scope: !171, inlinedAt: !179)
!265 = !DILocation(line: 92, column: 30, scope: !150, inlinedAt: !179)
!266 = !DILocation(line: 92, column: 21, scope: !150, inlinedAt: !179)
!267 = !DILocation(line: 92, column: 16, scope: !150, inlinedAt: !179)
!268 = !DILocation(line: 93, column: 21, scope: !150, inlinedAt: !179)
!269 = !DILocation(line: 93, column: 55, scope: !150, inlinedAt: !179)
!270 = !DILocation(line: 93, column: 70, scope: !150, inlinedAt: !179)
!271 = !DILocation(line: 93, column: 68, scope: !150, inlinedAt: !179)
!272 = !DILocation(line: 93, column: 39, scope: !150, inlinedAt: !179)
!273 = !DILocation(line: 93, column: 11, scope: !150, inlinedAt: !179)
!274 = !DILocation(line: 94, column: 42, scope: !150, inlinedAt: !179)
!275 = !DILocation(line: 94, column: 40, scope: !150, inlinedAt: !179)
!276 = !DILocation(line: 94, column: 15, scope: !150, inlinedAt: !179)
!277 = !DILocation(line: 96, column: 3, scope: !150, inlinedAt: !179)
!278 = !DILocation(line: 97, column: 1, scope: !150, inlinedAt: !179)
!279 = !DILocation(line: 118, column: 5, scope: !180)
!280 = !DILocation(line: 120, column: 33, scope: !103)
!281 = !DILocation(line: 120, column: 48, scope: !103)
!282 = !DILocation(line: 120, column: 51, scope: !103)
!283 = !DILocation(line: 120, column: 46, scope: !103)
!284 = !DILocation(line: 120, column: 44, scope: !103)
!285 = !DILocation(line: 120, column: 37, scope: !103)
!286 = !DILocation(line: 120, column: 11, scope: !104)
!287 = !DILocation(line: 121, column: 46, scope: !288)
!288 = distinct !DILexicalBlock(scope: !103, file: !2, line: 120, column: 57)
!289 = !DILocation(line: 121, column: 12, scope: !288)
!290 = !DILocation(line: 121, column: 5, scope: !288)
!291 = !DILocation(line: 123, column: 11, scope: !102)
!292 = !DILocation(line: 123, column: 48, scope: !102)
!293 = !DILocation(line: 123, column: 11, scope: !103)
!294 = !DILocation(line: 124, column: 50, scope: !295)
!295 = distinct !DILexicalBlock(scope: !102, file: !2, line: 123, column: 73)
!296 = !DILocation(line: 124, column: 12, scope: !295)
!297 = !DILocation(line: 124, column: 5, scope: !295)
!298 = !DILocation(line: 128, column: 28, scope: !101)
!299 = !DILocation(line: 129, column: 5, scope: !101)
!300 = !DILocation(line: 130, column: 5, scope: !101)
!301 = !DILocation(line: 131, column: 18, scope: !101)
!302 = !DILocation(line: 132, column: 18, scope: !101)
!303 = !DILocation(line: 133, column: 28, scope: !101)
!304 = !DILocation(line: 134, column: 26, scope: !101)
!305 = !DILocation(line: 138, column: 5, scope: !306)
!306 = distinct !DILexicalBlock(scope: !101, file: !2, line: 138, column: 5)
!307 = !DILocation(line: 139, column: 23, scope: !308)
!308 = distinct !DILexicalBlock(scope: !309, file: !2, line: 138, column: 24)
!309 = distinct !DILexicalBlock(scope: !306, file: !2, line: 138, column: 5)
!310 = !DILocation(line: 139, column: 25, scope: !308)
!311 = !DILocation(line: 139, column: 38, scope: !308)
!312 = !DILocation(line: 139, column: 21, scope: !308)
!313 = !DILocation(line: 138, column: 20, scope: !309)
!314 = distinct !{!314, !305, !315, !212}
!315 = !DILocation(line: 142, column: 5, scope: !306)
!316 = distinct !{!316, !317}
!317 = !{!"llvm.loop.unroll.disable"}
!318 = !DILocation(line: 144, column: 18, scope: !101)
!319 = !DILocation(line: 145, column: 20, scope: !101)
!320 = !DILocation(line: 145, column: 25, scope: !101)
!321 = !DILocation(line: 145, column: 51, scope: !101)
!322 = !DILocation(line: 145, column: 54, scope: !101)
!323 = !DILocation(line: 145, column: 38, scope: !101)
!324 = !DILocation(line: 145, column: 81, scope: !101)
!325 = !DILocation(line: 145, column: 84, scope: !101)
!326 = !DILocation(line: 145, column: 70, scope: !101)
!327 = !DILocation(line: 145, column: 68, scope: !101)
!328 = !DILocation(line: 145, column: 35, scope: !101)
!329 = !DILocation(line: 145, column: 22, scope: !101)
!330 = !DILocation(line: 145, column: 13, scope: !101)
!331 = !DILocation(line: 146, column: 42, scope: !101)
!332 = !DILocation(line: 146, column: 17, scope: !101)
!333 = !DILocation(line: 148, column: 12, scope: !101)
!334 = !DILocation(line: 149, column: 3, scope: !102)
!335 = !DILocation(line: 0, scope: !107)
!336 = !DILocation(line: 150, column: 1, scope: !85)
!337 = !DISubprogram(name: "gsl_error", scope: !35, file: !35, line: 77, type: !338, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!338 = !DISubroutineType(types: !339)
!339 = !{null, !340, !340, !36, !36}
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!341 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!342 = !DISubprogram(name: "gsl_sf_bessel_K0_scaled_e", scope: !343, file: !343, line: 218, type: !344, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!343 = !DIFile(filename: "../gsl/gsl_sf_bessel.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "45459f63edc3203df6c715a25160d493")
!344 = !DISubroutineType(types: !345)
!345 = !{!36, !88, !89}
!346 = !DISubprogram(name: "gsl_sf_bessel_K1_scaled_e", scope: !343, file: !343, line: 228, type: !344, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!347 = !DISubprogram(name: "gsl_sf_bessel_Knu_scaled_asympx_e", scope: !348, file: !348, line: 46, type: !349, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!348 = !DIFile(filename: "./bessel.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "57b96fff5bee18a41e1173dbca5404a0")
!349 = !DISubroutineType(types: !350)
!350 = !{!36, !88, !88, !89}
!351 = !DISubprogram(name: "gsl_sf_bessel_Knu_scaled_asymp_unif_e", scope: !348, file: !348, line: 49, type: !349, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!352 = distinct !DISubprogram(name: "gsl_sf_bessel_Kn_e", scope: !2, file: !2, line: 153, type: !151, scopeLine: 154, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !32, retainedNodes: !353)
!353 = !{!354, !355, !356, !357, !358}
!354 = !DILocalVariable(name: "n", arg: 1, scope: !352, file: !2, line: 153, type: !153)
!355 = !DILocalVariable(name: "x", arg: 2, scope: !352, file: !2, line: 153, type: !88)
!356 = !DILocalVariable(name: "result", arg: 3, scope: !352, file: !2, line: 153, type: !89)
!357 = !DILocalVariable(name: "status", scope: !352, file: !2, line: 155, type: !153)
!358 = !DILocalVariable(name: "ex", scope: !352, file: !2, line: 156, type: !88)
!359 = !DILocation(line: 0, scope: !352)
!360 = !DILocation(line: 155, column: 22, scope: !352)
!361 = !DILocation(line: 156, column: 25, scope: !352)
!362 = !DILocation(line: 156, column: 21, scope: !352)
!363 = !DILocation(line: 157, column: 15, scope: !352)
!364 = !DILocation(line: 158, column: 11, scope: !352)
!365 = !DILocation(line: 158, column: 15, scope: !352)
!366 = !DILocation(line: 159, column: 20, scope: !352)
!367 = !DILocation(line: 159, column: 40, scope: !352)
!368 = !DILocation(line: 159, column: 38, scope: !352)
!369 = !DILocation(line: 159, column: 15, scope: !352)
!370 = !DILocation(line: 160, column: 3, scope: !352)
!371 = !DISubprogram(name: "exp", scope: !372, file: !372, line: 95, type: !373, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!372 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!373 = !DISubroutineType(types: !374)
!374 = !{!74, !74}
!375 = distinct !DISubprogram(name: "gsl_sf_bessel_Kn_scaled_array", scope: !2, file: !2, line: 164, type: !376, scopeLine: 165, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !32, retainedNodes: !379)
!376 = !DISubroutineType(types: !377)
!377 = !{!36, !153, !153, !88, !378}
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!379 = !{!380, !381, !382, !383, !384, !387, !390, !391, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402}
!380 = !DILocalVariable(name: "nmin", arg: 1, scope: !375, file: !2, line: 164, type: !153)
!381 = !DILocalVariable(name: "nmax", arg: 2, scope: !375, file: !2, line: 164, type: !153)
!382 = !DILocalVariable(name: "x", arg: 3, scope: !375, file: !2, line: 164, type: !88)
!383 = !DILocalVariable(name: "result_array", arg: 4, scope: !375, file: !2, line: 164, type: !378)
!384 = !DILocalVariable(name: "j", scope: !385, file: !2, line: 169, type: !36)
!385 = distinct !DILexicalBlock(scope: !386, file: !2, line: 168, column: 43)
!386 = distinct !DILexicalBlock(scope: !375, file: !2, line: 168, column: 6)
!387 = !DILocalVariable(name: "b", scope: !388, file: !2, line: 174, type: !90)
!388 = distinct !DILexicalBlock(scope: !389, file: !2, line: 173, column: 22)
!389 = distinct !DILexicalBlock(scope: !386, file: !2, line: 173, column: 11)
!390 = !DILocalVariable(name: "stat", scope: !388, file: !2, line: 175, type: !36)
!391 = !DILocalVariable(name: "two_over_x", scope: !392, file: !2, line: 180, type: !74)
!392 = distinct !DILexicalBlock(scope: !389, file: !2, line: 179, column: 8)
!393 = !DILocalVariable(name: "r_Knm1", scope: !392, file: !2, line: 181, type: !90)
!394 = !DILocalVariable(name: "r_Kn", scope: !392, file: !2, line: 182, type: !90)
!395 = !DILocalVariable(name: "stat_0", scope: !392, file: !2, line: 183, type: !36)
!396 = !DILocalVariable(name: "stat_1", scope: !392, file: !2, line: 184, type: !36)
!397 = !DILocalVariable(name: "stat", scope: !392, file: !2, line: 185, type: !36)
!398 = !DILocalVariable(name: "Knp1", scope: !392, file: !2, line: 186, type: !74)
!399 = !DILocalVariable(name: "Kn", scope: !392, file: !2, line: 187, type: !74)
!400 = !DILocalVariable(name: "Knm1", scope: !392, file: !2, line: 188, type: !74)
!401 = !DILocalVariable(name: "n", scope: !392, file: !2, line: 189, type: !36)
!402 = !DILocalVariable(name: "j", scope: !403, file: !2, line: 206, type: !36)
!403 = distinct !DILexicalBlock(scope: !404, file: !2, line: 198, column: 12)
!404 = distinct !DILexicalBlock(scope: !405, file: !2, line: 192, column: 10)
!405 = distinct !DILexicalBlock(scope: !406, file: !2, line: 191, column: 35)
!406 = distinct !DILexicalBlock(scope: !407, file: !2, line: 191, column: 5)
!407 = distinct !DILexicalBlock(scope: !392, file: !2, line: 191, column: 5)
!408 = distinct !DIAssignID()
!409 = !DILocation(line: 0, scope: !388)
!410 = distinct !DIAssignID()
!411 = !DILocation(line: 0, scope: !392)
!412 = distinct !DIAssignID()
!413 = !DILocation(line: 0, scope: !375)
!414 = !DILocation(line: 168, column: 11, scope: !386)
!415 = !DILocation(line: 168, column: 15, scope: !386)
!416 = !DILocation(line: 168, column: 23, scope: !386)
!417 = !DILocation(line: 168, column: 30, scope: !386)
!418 = !DILocation(line: 0, scope: !385)
!419 = !DILocation(line: 170, column: 15, scope: !420)
!420 = distinct !DILexicalBlock(scope: !421, file: !2, line: 170, column: 5)
!421 = distinct !DILexicalBlock(scope: !385, file: !2, line: 170, column: 5)
!422 = !DILocation(line: 170, column: 5, scope: !421)
!423 = !DILocation(line: 170, column: 49, scope: !420)
!424 = !{!131, !131, i64 0}
!425 = !DILocation(line: 171, column: 5, scope: !426)
!426 = distinct !DILexicalBlock(scope: !385, file: !2, line: 171, column: 5)
!427 = !DILocation(line: 173, column: 16, scope: !389)
!428 = !DILocation(line: 173, column: 11, scope: !386)
!429 = !DILocation(line: 174, column: 5, scope: !388)
!430 = !DILocation(line: 175, column: 16, scope: !388)
!431 = !DILocation(line: 176, column: 25, scope: !388)
!432 = !DILocation(line: 176, column: 21, scope: !388)
!433 = !DILocation(line: 178, column: 3, scope: !389)
!434 = !DILocation(line: 180, column: 28, scope: !392)
!435 = !DILocation(line: 181, column: 5, scope: !392)
!436 = !DILocation(line: 182, column: 5, scope: !392)
!437 = !DILocation(line: 183, column: 18, scope: !392)
!438 = !DILocation(line: 184, column: 48, scope: !392)
!439 = !DILocation(line: 184, column: 18, scope: !392)
!440 = !DILocation(line: 185, column: 16, scope: !392)
!441 = !DILocation(line: 188, column: 26, scope: !392)
!442 = !DILocation(line: 187, column: 24, scope: !392)
!443 = !DILocation(line: 191, column: 5, scope: !407)
!444 = !DILocation(line: 192, column: 15, scope: !404)
!445 = !DILocation(line: 192, column: 10, scope: !405)
!446 = !DILocation(line: 207, column: 19, scope: !447)
!447 = distinct !DILexicalBlock(scope: !448, file: !2, line: 207, column: 9)
!448 = distinct !DILexicalBlock(scope: !403, file: !2, line: 207, column: 9)
!449 = !DILocation(line: 0, scope: !403)
!450 = !DILocation(line: 207, column: 9, scope: !448)
!451 = !DILocation(line: 193, column: 9, scope: !452)
!452 = distinct !DILexicalBlock(scope: !404, file: !2, line: 192, column: 30)
!453 = !DILocation(line: 193, column: 32, scope: !452)
!454 = !DILocation(line: 194, column: 23, scope: !452)
!455 = !DILocation(line: 194, column: 25, scope: !452)
!456 = !DILocation(line: 194, column: 38, scope: !452)
!457 = !DILocation(line: 194, column: 21, scope: !452)
!458 = !DILocation(line: 191, column: 31, scope: !406)
!459 = !DILocation(line: 191, column: 20, scope: !406)
!460 = distinct !{!460, !443, !461, !212}
!461 = !DILocation(line: 210, column: 5, scope: !407)
!462 = !DILocation(line: 207, column: 34, scope: !447)
!463 = !DILocation(line: 207, column: 57, scope: !447)
!464 = !DILocation(line: 207, column: 30, scope: !447)
!465 = distinct !{!465, !450, !466, !212}
!466 = !DILocation(line: 207, column: 59, scope: !448)
!467 = !DILocation(line: 208, column: 9, scope: !468)
!468 = distinct !DILexicalBlock(scope: !403, file: !2, line: 208, column: 9)
!469 = !DILocation(line: 213, column: 3, scope: !389)
!470 = !DILocation(line: 0, scope: !386)
!471 = !DILocation(line: 214, column: 1, scope: !375)
!472 = distinct !DISubprogram(name: "gsl_sf_bessel_Kn_array", scope: !2, file: !2, line: 218, type: !376, scopeLine: 219, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !32, retainedNodes: !473)
!473 = !{!474, !475, !476, !477, !478, !479, !480}
!474 = !DILocalVariable(name: "nmin", arg: 1, scope: !472, file: !2, line: 218, type: !153)
!475 = !DILocalVariable(name: "nmax", arg: 2, scope: !472, file: !2, line: 218, type: !153)
!476 = !DILocalVariable(name: "x", arg: 3, scope: !472, file: !2, line: 218, type: !88)
!477 = !DILocalVariable(name: "result_array", arg: 4, scope: !472, file: !2, line: 218, type: !378)
!478 = !DILocalVariable(name: "status", scope: !472, file: !2, line: 220, type: !36)
!479 = !DILocalVariable(name: "ex", scope: !472, file: !2, line: 221, type: !74)
!480 = !DILocalVariable(name: "i", scope: !472, file: !2, line: 222, type: !36)
!481 = !DILocation(line: 0, scope: !472)
!482 = !DILocation(line: 220, column: 16, scope: !472)
!483 = !DILocation(line: 221, column: 19, scope: !472)
!484 = !DILocation(line: 221, column: 15, scope: !472)
!485 = !DILocation(line: 223, column: 13, scope: !486)
!486 = distinct !DILexicalBlock(scope: !487, file: !2, line: 223, column: 3)
!487 = distinct !DILexicalBlock(scope: !472, file: !2, line: 223, column: 3)
!488 = !DILocation(line: 223, column: 3, scope: !487)
!489 = !DILocation(line: 223, column: 31, scope: !486)
!490 = !DILocation(line: 223, column: 47, scope: !486)
!491 = !DILocation(line: 223, column: 27, scope: !486)
!492 = distinct !{!492, !488, !493, !212}
!493 = !DILocation(line: 223, column: 50, scope: !487)
!494 = distinct !{!494, !317}
!495 = !DILocation(line: 224, column: 3, scope: !472)
!496 = distinct !DISubprogram(name: "gsl_sf_bessel_Kn_scaled", scope: !2, file: !2, line: 232, type: !497, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !32, retainedNodes: !499)
!497 = !DISubroutineType(types: !498)
!498 = !{!74, !153, !88}
!499 = !{!500, !501, !502, !503}
!500 = !DILocalVariable(name: "n", arg: 1, scope: !496, file: !2, line: 232, type: !153)
!501 = !DILocalVariable(name: "x", arg: 2, scope: !496, file: !2, line: 232, type: !88)
!502 = !DILocalVariable(name: "result", scope: !496, file: !2, line: 234, type: !90)
!503 = !DILocalVariable(name: "status", scope: !496, file: !2, line: 234, type: !36)
!504 = distinct !DIAssignID()
!505 = !DILocation(line: 0, scope: !496)
!506 = !DILocation(line: 234, column: 3, scope: !496)
!507 = !DILocation(line: 234, column: 3, scope: !508)
!508 = distinct !DILexicalBlock(scope: !496, file: !2, line: 234, column: 3)
!509 = !DILocation(line: 234, column: 3, scope: !510)
!510 = distinct !DILexicalBlock(scope: !511, file: !2, line: 234, column: 3)
!511 = distinct !DILexicalBlock(scope: !508, file: !2, line: 234, column: 3)
!512 = !DILocation(line: 235, column: 1, scope: !496)
!513 = distinct !DISubprogram(name: "gsl_sf_bessel_Kn", scope: !2, file: !2, line: 237, type: !497, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !32, retainedNodes: !514)
!514 = !{!515, !516, !517, !518}
!515 = !DILocalVariable(name: "n", arg: 1, scope: !513, file: !2, line: 237, type: !153)
!516 = !DILocalVariable(name: "x", arg: 2, scope: !513, file: !2, line: 237, type: !88)
!517 = !DILocalVariable(name: "result", scope: !513, file: !2, line: 239, type: !90)
!518 = !DILocalVariable(name: "status", scope: !513, file: !2, line: 239, type: !36)
!519 = distinct !DIAssignID()
!520 = !DILocation(line: 0, scope: !513)
!521 = !DILocation(line: 239, column: 3, scope: !513)
!522 = !DILocation(line: 0, scope: !352, inlinedAt: !523)
!523 = distinct !DILocation(line: 239, column: 3, scope: !513)
!524 = !DILocation(line: 155, column: 22, scope: !352, inlinedAt: !523)
!525 = !DILocation(line: 156, column: 25, scope: !352, inlinedAt: !523)
!526 = !DILocation(line: 156, column: 21, scope: !352, inlinedAt: !523)
!527 = !DILocation(line: 157, column: 15, scope: !352, inlinedAt: !523)
!528 = distinct !DIAssignID()
!529 = !DILocation(line: 158, column: 11, scope: !352, inlinedAt: !523)
!530 = !DILocation(line: 158, column: 15, scope: !352, inlinedAt: !523)
!531 = !DILocation(line: 159, column: 20, scope: !352, inlinedAt: !523)
!532 = !DILocation(line: 159, column: 40, scope: !352, inlinedAt: !523)
!533 = !DILocation(line: 159, column: 38, scope: !352, inlinedAt: !523)
!534 = !DILocation(line: 159, column: 15, scope: !352, inlinedAt: !523)
!535 = distinct !DIAssignID()
!536 = !DILocation(line: 239, column: 3, scope: !537)
!537 = distinct !DILexicalBlock(scope: !513, file: !2, line: 239, column: 3)
!538 = !DILocation(line: 239, column: 3, scope: !539)
!539 = distinct !DILexicalBlock(scope: !540, file: !2, line: 239, column: 3)
!540 = distinct !DILexicalBlock(scope: !537, file: !2, line: 239, column: 3)
!541 = !DILocation(line: 240, column: 1, scope: !513)
!542 = !DISubprogram(name: "log", scope: !372, file: !372, line: 104, type: !373, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!543 = !DISubprogram(name: "gsl_sf_lnfact_e", scope: !544, file: !544, line: 136, type: !545, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!544 = !DIFile(filename: "../gsl/gsl_sf_gamma.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "88cc3c2b19ea790e1c6889b01cfd3137")
!545 = !DISubroutineType(types: !546)
!546 = !{!36, !547, !89}
!547 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !75)
!548 = !DISubprogram(name: "gsl_sf_psi_int_e", scope: !549, file: !549, line: 51, type: !550, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!549 = !DIFile(filename: "../gsl/gsl_sf_psi.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "991a41b1033bad74a63fe4c86bbfa6a4")
!550 = !DISubroutineType(types: !551)
!551 = !{!36, !153, !89}
!552 = !DISubprogram(name: "gsl_sf_fact_e", scope: !544, file: !544, line: 119, type: !545, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
