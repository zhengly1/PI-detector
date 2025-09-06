; ModuleID = 'hyperg_0F1.c'
source_filename = "hyperg_0F1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [13 x i8] c"domain error\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [13 x i8] c"hyperg_0F1.c\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [35 x i8] c"gsl_sf_hyperg_0F1_e(c, x, &result)\00", align 1, !dbg !9
@.str.3 = private unnamed_addr constant [9 x i8] c"overflow\00", align 1, !dbg !14

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_hyperg_0F1_e(double noundef %0, double noundef %1, ptr noundef %2) local_unnamed_addr #0 !dbg !69 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !115
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !116
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !117
  %7 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !118
  %8 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !119
  %9 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !120
  call void @llvm.dbg.assign(metadata i1 undef, metadata !88, metadata !DIExpression(), metadata !120, metadata ptr %9, metadata !DIExpression()), !dbg !121
  %10 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !122
  call void @llvm.dbg.assign(metadata i1 undef, metadata !92, metadata !DIExpression(), metadata !122, metadata ptr %10, metadata !DIExpression()), !dbg !121
  %11 = alloca double, align 8, !DIAssignID !123
  call void @llvm.dbg.assign(metadata i1 undef, metadata !93, metadata !DIExpression(), metadata !123, metadata ptr %11, metadata !DIExpression()), !dbg !121
  %12 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !124
  call void @llvm.dbg.assign(metadata i1 undef, metadata !105, metadata !DIExpression(), metadata !124, metadata ptr %12, metadata !DIExpression()), !dbg !125
  %13 = alloca double, align 8, !DIAssignID !126
  call void @llvm.dbg.assign(metadata i1 undef, metadata !106, metadata !DIExpression(), metadata !126, metadata ptr %13, metadata !DIExpression()), !dbg !125
  tail call void @llvm.dbg.value(metadata double %0, metadata !81, metadata !DIExpression()), !dbg !127
  tail call void @llvm.dbg.value(metadata double %1, metadata !82, metadata !DIExpression()), !dbg !127
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !83, metadata !DIExpression()), !dbg !127
  tail call void @llvm.dbg.value(metadata double poison, metadata !84, metadata !DIExpression()), !dbg !127
  %14 = fcmp olt double %0, 0.000000e+00, !dbg !128
  br i1 %14, label %15, label %21, !dbg !129

15:                                               ; preds = %3
  %16 = fadd double %0, 5.000000e-01, !dbg !130
  %17 = tail call double @llvm.floor.f64(double %16), !dbg !131
  tail call void @llvm.dbg.value(metadata double %17, metadata !84, metadata !DIExpression()), !dbg !127
  %18 = fsub double %0, %17, !dbg !132
  %19 = tail call double @llvm.fabs.f64(double %18), !dbg !133
  %20 = fcmp olt double %19, 0x3D4F400000000000, !dbg !134
  br label %21

21:                                               ; preds = %15, %3
  %22 = phi i1 [ false, %3 ], [ %20, %15 ], !dbg !127
  tail call void @llvm.dbg.value(metadata i1 %22, metadata !86, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !127
  %23 = fcmp oeq double %0, 0.000000e+00, !dbg !135
  %24 = or i1 %23, %22, !dbg !136
  br i1 %24, label %25, label %27, !dbg !136

25:                                               ; preds = %21
  store double 0x7FF8000000000000, ptr %2, align 8, !dbg !137, !tbaa !140
  %26 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !137
  store double 0x7FF8000000000000, ptr %26, align 8, !dbg !137, !tbaa !145
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 111, i32 noundef 1) #7, !dbg !146
  br label %179, !dbg !146

27:                                               ; preds = %21
  %28 = fcmp olt double %1, 0.000000e+00, !dbg !148
  br i1 %28, label %29, label %96, !dbg !149

29:                                               ; preds = %27
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #7, !dbg !150
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #7, !dbg !151
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #7, !dbg !152
  %30 = call i32 @gsl_sf_lngamma_sgn_e(double noundef %0, ptr noundef nonnull %10, ptr noundef nonnull %11) #7, !dbg !153
  tail call void @llvm.dbg.value(metadata i32 %30, metadata !94, metadata !DIExpression()), !dbg !121
  %31 = fadd double %0, -1.000000e+00, !dbg !154
  %32 = fneg double %1, !dbg !155
  %33 = call double @sqrt(double noundef %32) #7, !dbg !156
  %34 = fmul double %33, 2.000000e+00, !dbg !157
  call void @llvm.dbg.assign(metadata i1 undef, metadata !158, metadata !DIExpression(), metadata !118, metadata ptr %7, metadata !DIExpression()), !dbg !174
  call void @llvm.dbg.assign(metadata i1 undef, metadata !171, metadata !DIExpression(), metadata !119, metadata ptr %8, metadata !DIExpression()), !dbg !174
  call void @llvm.dbg.value(metadata double %31, metadata !165, metadata !DIExpression()), !dbg !176
  call void @llvm.dbg.value(metadata double %34, metadata !166, metadata !DIExpression()), !dbg !176
  call void @llvm.dbg.value(metadata ptr %9, metadata !167, metadata !DIExpression()), !dbg !176
  %35 = fcmp olt double %31, 0.000000e+00, !dbg !177
  br i1 %35, label %36, label %66, !dbg !178

36:                                               ; preds = %29
  %37 = fneg double %31, !dbg !179
  call void @llvm.dbg.value(metadata double %37, metadata !168, metadata !DIExpression()), !dbg !174
  %38 = fmul double %31, 0xC00921FB54442D18, !dbg !180
  %39 = call double @sin(double noundef %38) #7, !dbg !181
  call void @llvm.dbg.value(metadata double %39, metadata !169, metadata !DIExpression()), !dbg !174
  %40 = call double @cos(double noundef %38) #7, !dbg !182
  call void @llvm.dbg.value(metadata double %40, metadata !170, metadata !DIExpression()), !dbg !174
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #7, !dbg !183
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #7, !dbg !184
  %41 = call i32 @gsl_sf_bessel_Jnu_e(double noundef %37, double noundef %34, ptr noundef nonnull %7) #7, !dbg !185
  call void @llvm.dbg.value(metadata i32 %41, metadata !172, metadata !DIExpression()), !dbg !174
  %42 = call i32 @gsl_sf_bessel_Ynu_e(double noundef %37, double noundef %34, ptr noundef nonnull %8) #7, !dbg !186
  call void @llvm.dbg.value(metadata i32 %42, metadata !173, metadata !DIExpression()), !dbg !174
  %43 = load double, ptr %7, align 8, !dbg !187, !tbaa !140
  %44 = fmul double %40, %43, !dbg !188
  %45 = load double, ptr %8, align 8, !dbg !189, !tbaa !140
  %46 = fmul double %39, %45, !dbg !190
  %47 = fsub double %44, %46, !dbg !191
  store double %47, ptr %9, align 8, !dbg !192, !tbaa !140, !DIAssignID !193
  call void @llvm.dbg.assign(metadata double %47, metadata !88, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !193, metadata ptr %9, metadata !DIExpression()), !dbg !121
  %48 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %7, i64 0, i32 1, !dbg !194
  %49 = load double, ptr %48, align 8, !dbg !194, !tbaa !145
  %50 = fmul double %40, %49, !dbg !195
  %51 = call double @llvm.fabs.f64(double %50), !dbg !196
  %52 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %8, i64 0, i32 1, !dbg !197
  %53 = load double, ptr %52, align 8, !dbg !197, !tbaa !145
  %54 = fmul double %39, %53, !dbg !198
  %55 = call double @llvm.fabs.f64(double %54), !dbg !199
  %56 = fadd double %51, %55, !dbg !200
  %57 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %9, i64 0, i32 1, !dbg !201
  %58 = call double @llvm.fabs.f64(double %38), !dbg !202
  %59 = fmul double %58, 0x3CB0000000000000, !dbg !203
  %60 = fadd double %43, %45, !dbg !204
  %61 = call double @llvm.fabs.f64(double %60), !dbg !205
  %62 = fmul double %59, %61, !dbg !206
  %63 = fadd double %62, %56, !dbg !207
  store double %63, ptr %57, align 8, !dbg !207, !tbaa !145, !DIAssignID !208
  call void @llvm.dbg.assign(metadata double %63, metadata !88, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64), metadata !208, metadata ptr %57, metadata !DIExpression()), !dbg !121
  %64 = icmp eq i32 %42, 0, !dbg !209
  %65 = select i1 %64, i32 %41, i32 %42, !dbg !209
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #7, !dbg !210
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #7, !dbg !210
  br label %68

66:                                               ; preds = %29
  %67 = call i32 @gsl_sf_bessel_Jnu_e(double noundef %31, double noundef %34, ptr noundef nonnull %9) #7, !dbg !211
  br label %68, !dbg !213

68:                                               ; preds = %36, %66
  %69 = phi i32 [ %65, %36 ], [ %67, %66 ], !dbg !214
  tail call void @llvm.dbg.value(metadata i32 %69, metadata !95, metadata !DIExpression()), !dbg !121
  %70 = icmp eq i32 %30, 0, !dbg !215
  br i1 %70, label %72, label %71, !dbg !216

71:                                               ; preds = %68
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !dbg !217
  br label %94, !dbg !219

72:                                               ; preds = %68
  %73 = load double, ptr %9, align 8, !dbg !220, !tbaa !140
  %74 = fcmp oeq double %73, 0.000000e+00, !dbg !221
  br i1 %74, label %75, label %76, !dbg !222

75:                                               ; preds = %72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !dbg !223
  br label %94, !dbg !225

76:                                               ; preds = %72
  %77 = call double @log(double noundef %32) #7, !dbg !226
  %78 = fmul double %77, 5.000000e-01, !dbg !227
  %79 = fsub double 1.000000e+00, %0, !dbg !228
  %80 = fmul double %79, %78, !dbg !229
  tail call void @llvm.dbg.value(metadata double %80, metadata !96, metadata !DIExpression()), !dbg !230
  %81 = load double, ptr %10, align 8, !dbg !231, !tbaa !140
  %82 = fadd double %81, %80, !dbg !232
  tail call void @llvm.dbg.value(metadata double %82, metadata !100, metadata !DIExpression()), !dbg !230
  %83 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %10, i64 0, i32 1, !dbg !233
  %84 = load double, ptr %83, align 8, !dbg !233, !tbaa !145
  %85 = call double @llvm.fabs.f64(double %80), !dbg !234
  %86 = fmul double %85, 0x3CC0000000000000, !dbg !235
  %87 = fadd double %84, %86, !dbg !236
  tail call void @llvm.dbg.value(metadata double %87, metadata !101, metadata !DIExpression()), !dbg !230
  %88 = load double, ptr %11, align 8, !dbg !237, !tbaa !238
  %89 = load double, ptr %9, align 8, !dbg !239, !tbaa !140
  %90 = fmul double %88, %89, !dbg !240
  %91 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %9, i64 0, i32 1, !dbg !241
  %92 = load double, ptr %91, align 8, !dbg !241, !tbaa !145
  %93 = call i32 @gsl_sf_exp_mult_err_e(double noundef %82, double noundef %87, double noundef %90, double noundef %92, ptr noundef %2) #7, !dbg !242
  br label %94

94:                                               ; preds = %76, %75, %71
  %95 = phi i32 [ %30, %71 ], [ %69, %75 ], [ %93, %76 ], !dbg !243
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #7, !dbg !244
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #7, !dbg !244
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #7, !dbg !244
  br label %179

96:                                               ; preds = %27
  %97 = fcmp oeq double %1, 0.000000e+00, !dbg !245
  br i1 %97, label %98, label %100, !dbg !246

98:                                               ; preds = %96
  store double 1.000000e+00, ptr %2, align 8, !dbg !247, !tbaa !140
  %99 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !249
  store double 1.000000e+00, ptr %99, align 8, !dbg !250, !tbaa !145
  br label %179, !dbg !251

100:                                              ; preds = %96
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #7, !dbg !252
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #7, !dbg !253
  %101 = call i32 @gsl_sf_lngamma_sgn_e(double noundef %0, ptr noundef nonnull %12, ptr noundef nonnull %13) #7, !dbg !254
  tail call void @llvm.dbg.value(metadata i32 %101, metadata !107, metadata !DIExpression()), !dbg !125
  %102 = fadd double %0, -1.000000e+00, !dbg !255
  %103 = call double @sqrt(double noundef %1) #7, !dbg !256
  %104 = fmul double %103, 2.000000e+00, !dbg !257
  call void @llvm.dbg.assign(metadata i1 undef, metadata !258, metadata !DIExpression(), metadata !115, metadata ptr %4, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.assign(metadata i1 undef, metadata !269, metadata !DIExpression(), metadata !116, metadata ptr %5, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.assign(metadata i1 undef, metadata !274, metadata !DIExpression(), metadata !117, metadata ptr %6, metadata !DIExpression()), !dbg !278
  call void @llvm.dbg.value(metadata double %102, metadata !263, metadata !DIExpression()), !dbg !279
  call void @llvm.dbg.value(metadata double %104, metadata !264, metadata !DIExpression()), !dbg !279
  call void @llvm.dbg.value(metadata ptr undef, metadata !265, metadata !DIExpression()), !dbg !279
  %105 = fcmp ogt double %104, 0x40862E42FEFA39EF, !dbg !280
  br i1 %105, label %154, label %106, !dbg !282

106:                                              ; preds = %100
  %107 = fcmp olt double %102, 0.000000e+00, !dbg !283
  br i1 %107, label %108, label %138, !dbg !284

108:                                              ; preds = %106
  %109 = fneg double %102, !dbg !285
  call void @llvm.dbg.value(metadata double %109, metadata !266, metadata !DIExpression()), !dbg !276
  %110 = fmul double %102, 0xC00921FB54442D18, !dbg !286
  %111 = call double @sin(double noundef %110) #7, !dbg !287
  %112 = fmul double %111, 0x3FE45F306DC9C883, !dbg !288
  call void @llvm.dbg.value(metadata double %112, metadata !267, metadata !DIExpression()), !dbg !276
  %113 = call double @exp(double noundef %104) #7, !dbg !289
  call void @llvm.dbg.value(metadata double %113, metadata !268, metadata !DIExpression()), !dbg !276
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #7, !dbg !290
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7, !dbg !291
  %114 = call i32 @gsl_sf_bessel_Inu_scaled_e(double noundef %109, double noundef %104, ptr noundef nonnull %4) #7, !dbg !292
  call void @llvm.dbg.value(metadata i32 %114, metadata !270, metadata !DIExpression()), !dbg !276
  %115 = call i32 @gsl_sf_bessel_Knu_scaled_e(double noundef %109, double noundef %104, ptr noundef nonnull %5) #7, !dbg !293
  call void @llvm.dbg.value(metadata i32 %115, metadata !271, metadata !DIExpression()), !dbg !276
  %116 = load double, ptr %4, align 8, !dbg !294, !tbaa !140
  %117 = fmul double %113, %116, !dbg !295
  %118 = load double, ptr %5, align 8, !dbg !296, !tbaa !140
  %119 = fdiv double %118, %113, !dbg !297
  %120 = fmul double %112, %119, !dbg !298
  %121 = fadd double %117, %120, !dbg !299
  tail call void @llvm.dbg.value(metadata double %121, metadata !102, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !125
  %122 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !300
  %123 = load double, ptr %122, align 8, !dbg !300, !tbaa !145
  %124 = fmul double %113, %123, !dbg !301
  %125 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !302
  %126 = load double, ptr %125, align 8, !dbg !302, !tbaa !145
  %127 = fmul double %112, %126, !dbg !303
  %128 = fdiv double %127, %113, !dbg !304
  %129 = call double @llvm.fabs.f64(double %128), !dbg !305
  %130 = fadd double %124, %129, !dbg !306
  %131 = call double @llvm.fabs.f64(double %120), !dbg !307
  %132 = fmul double %131, 0x3CB0000000000000, !dbg !308
  %133 = fmul double %132, %109, !dbg !309
  %134 = fmul double %133, 0x400921FB54442D18, !dbg !310
  %135 = fadd double %134, %130, !dbg !311
  tail call void @llvm.dbg.value(metadata double %135, metadata !102, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !125
  %136 = icmp eq i32 %115, 0, !dbg !312
  %137 = select i1 %136, i32 %114, i32 %115, !dbg !312
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7, !dbg !313
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #7, !dbg !313
  br label %149

138:                                              ; preds = %106
  %139 = call double @exp(double noundef %104) #7, !dbg !314
  call void @llvm.dbg.value(metadata double %139, metadata !272, metadata !DIExpression()), !dbg !278
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #7, !dbg !315
  %140 = call i32 @gsl_sf_bessel_Inu_scaled_e(double noundef %102, double noundef %104, ptr noundef nonnull %6) #7, !dbg !316
  call void @llvm.dbg.value(metadata i32 %140, metadata !275, metadata !DIExpression()), !dbg !278
  %141 = load double, ptr %6, align 8, !dbg !317, !tbaa !140
  %142 = fmul double %139, %141, !dbg !318
  tail call void @llvm.dbg.value(metadata double %142, metadata !102, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !125
  %143 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !319
  %144 = load double, ptr %143, align 8, !dbg !319, !tbaa !145
  %145 = fmul double %139, %144, !dbg !320
  %146 = call double @llvm.fabs.f64(double %142), !dbg !321
  %147 = fmul double %146, 0x3CB0000000000000, !dbg !322
  %148 = fadd double %145, %147, !dbg !323
  tail call void @llvm.dbg.value(metadata double %148, metadata !102, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !125
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #7, !dbg !324
  br label %149

149:                                              ; preds = %108, %138
  %150 = phi double [ %135, %108 ], [ %148, %138 ], !dbg !279
  %151 = phi double [ %121, %108 ], [ %142, %138 ], !dbg !279
  %152 = phi i32 [ %137, %108 ], [ %140, %138 ], !dbg !279
  tail call void @llvm.dbg.value(metadata double %151, metadata !102, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !125
  tail call void @llvm.dbg.value(metadata double %150, metadata !102, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !125
  tail call void @llvm.dbg.value(metadata i32 %152, metadata !108, metadata !DIExpression()), !dbg !125
  %153 = icmp eq i32 %101, 0, !dbg !325
  br i1 %153, label %157, label %156, !dbg !326

154:                                              ; preds = %100
  tail call void @llvm.dbg.value(metadata double 0x7FF0000000000000, metadata !102, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !125
  tail call void @llvm.dbg.value(metadata double 0x7FF0000000000000, metadata !102, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !125
  call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 45, i32 noundef 16) #7, !dbg !327
  tail call void @llvm.dbg.value(metadata double 0x7FF0000000000000, metadata !102, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !125
  tail call void @llvm.dbg.value(metadata double 0x7FF0000000000000, metadata !102, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !125
  tail call void @llvm.dbg.value(metadata i32 16, metadata !108, metadata !DIExpression()), !dbg !125
  %155 = icmp eq i32 %101, 0, !dbg !325
  br i1 %155, label %160, label %156, !dbg !326

156:                                              ; preds = %154, %149
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !dbg !331
  br label %177, !dbg !333

157:                                              ; preds = %149
  %158 = fcmp oeq double %151, 0.000000e+00, !dbg !334
  br i1 %158, label %159, label %160, !dbg !335

159:                                              ; preds = %157
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !dbg !336
  br label %177, !dbg !338

160:                                              ; preds = %154, %157
  %161 = phi double [ %150, %157 ], [ 0x7FF0000000000000, %154 ]
  %162 = phi double [ %151, %157 ], [ 0x7FF0000000000000, %154 ]
  %163 = call double @log(double noundef %1) #7, !dbg !339
  %164 = fmul double %163, 5.000000e-01, !dbg !340
  %165 = fsub double 1.000000e+00, %0, !dbg !341
  %166 = fmul double %165, %164, !dbg !342
  tail call void @llvm.dbg.value(metadata double %166, metadata !109, metadata !DIExpression()), !dbg !343
  %167 = load double, ptr %12, align 8, !dbg !344, !tbaa !140
  %168 = fadd double %167, %166, !dbg !345
  tail call void @llvm.dbg.value(metadata double %168, metadata !113, metadata !DIExpression()), !dbg !343
  %169 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %12, i64 0, i32 1, !dbg !346
  %170 = load double, ptr %169, align 8, !dbg !346, !tbaa !145
  %171 = call double @llvm.fabs.f64(double %166), !dbg !347
  %172 = fmul double %171, 0x3CC0000000000000, !dbg !348
  %173 = fadd double %170, %172, !dbg !349
  tail call void @llvm.dbg.value(metadata double %173, metadata !114, metadata !DIExpression()), !dbg !343
  %174 = load double, ptr %13, align 8, !dbg !350, !tbaa !238
  %175 = fmul double %162, %174, !dbg !351
  %176 = call i32 @gsl_sf_exp_mult_err_e(double noundef %168, double noundef %173, double noundef %175, double noundef %161, ptr noundef %2) #7, !dbg !352
  br label %177

177:                                              ; preds = %160, %159, %156
  %178 = phi i32 [ %101, %156 ], [ %152, %159 ], [ %176, %160 ], !dbg !353
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #7, !dbg !354
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #7, !dbg !354
  br label %179

179:                                              ; preds = %177, %98, %94, %25
  %180 = phi i32 [ 1, %25 ], [ %95, %94 ], [ 0, %98 ], [ %178, %177 ], !dbg !355
  ret i32 %180, !dbg !356
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #2

declare !dbg !357 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !362 i32 @gsl_sf_lngamma_sgn_e(double noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !367 double @sqrt(double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !371 double @log(double noundef) local_unnamed_addr #4

declare !dbg !372 i32 @gsl_sf_exp_mult_err_e(double noundef, double noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_hyperg_0F1(double noundef %0, double noundef %1) local_unnamed_addr #0 !dbg !376 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !384
  call void @llvm.dbg.assign(metadata i1 undef, metadata !382, metadata !DIExpression(), metadata !384, metadata ptr %3, metadata !DIExpression()), !dbg !385
  tail call void @llvm.dbg.value(metadata double %0, metadata !380, metadata !DIExpression()), !dbg !385
  tail call void @llvm.dbg.value(metadata double %1, metadata !381, metadata !DIExpression()), !dbg !385
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7, !dbg !386
  %4 = call i32 @gsl_sf_hyperg_0F1_e(double noundef %0, double noundef %1, ptr noundef nonnull %3), !dbg !386
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !383, metadata !DIExpression()), !dbg !385
  %5 = icmp eq i32 %4, 0, !dbg !387
  br i1 %5, label %7, label %6, !dbg !386

6:                                                ; preds = %2
  call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 177, i32 noundef %4) #7, !dbg !389
  br label %7, !dbg !389

7:                                                ; preds = %2, %6
  %8 = load double, ptr %3, align 8, !dbg !386, !tbaa !140
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7, !dbg !392
  ret double %8, !dbg !392
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !393 double @sin(double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !394 double @cos(double noundef) local_unnamed_addr #4

declare !dbg !395 i32 @gsl_sf_bessel_Jnu_e(double noundef, double noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !397 i32 @gsl_sf_bessel_Ynu_e(double noundef, double noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !398 double @exp(double noundef) local_unnamed_addr #4

declare !dbg !399 i32 @gsl_sf_bessel_Inu_scaled_e(double noundef, double noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !400 i32 @gsl_sf_bessel_Knu_scaled_e(double noundef, double noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!19}
!llvm.module.flags = !{!61, !62, !63, !64, !65, !66, !67}
!llvm.ident = !{!68}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 111, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "hyperg_0F1.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "e0f1a9326dbdf99a3aa1cec232930cef")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 13)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 111, type: !3, isLocal: true, isDefinition: true)
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(scope: null, file: !2, line: 177, type: !11, isLocal: true, isDefinition: true)
!11 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 280, elements: !12)
!12 = !{!13}
!13 = !DISubrange(count: 35)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(scope: null, file: !2, line: 45, type: !16, isLocal: true, isDefinition: true)
!16 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !17)
!17 = !{!18}
!18 = !DISubrange(count: 9)
!19 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !20, globals: !60, splitDebugInlining: false, nameTableKind: None)
!20 = !{!21}
!21 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !22, line: 39, baseType: !23, size: 32, elements: !24)
!22 = !DIFile(filename: "../gsl/gsl_errno.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "3ff14ff6df19564f3d7caf1e8e622626")
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
!60 = !{!0, !7, !9, !14}
!61 = !{i32 7, !"Dwarf Version", i32 5}
!62 = !{i32 2, !"Debug Info Version", i32 3}
!63 = !{i32 1, !"wchar_size", i32 4}
!64 = !{i32 8, !"PIC Level", i32 2}
!65 = !{i32 7, !"PIE Level", i32 2}
!66 = !{i32 7, !"uwtable", i32 2}
!67 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!68 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!69 = distinct !DISubprogram(name: "gsl_sf_hyperg_0F1_e", scope: !2, file: !2, line: 103, type: !70, scopeLine: 104, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !80)
!70 = !DISubroutineType(types: !71)
!71 = !{!23, !72, !72, !73}
!72 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !75, line: 41, baseType: !76)
!75 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "5b52deed011f1ffd07977b19a388d251")
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !75, line: 37, size: 128, elements: !77)
!77 = !{!78, !79}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !76, file: !75, line: 38, baseType: !72, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !76, file: !75, line: 39, baseType: !72, size: 64, offset: 64)
!80 = !{!81, !82, !83, !84, !86, !88, !92, !93, !94, !95, !96, !100, !101, !102, !105, !106, !107, !108, !109, !113, !114}
!81 = !DILocalVariable(name: "c", arg: 1, scope: !69, file: !2, line: 103, type: !72)
!82 = !DILocalVariable(name: "x", arg: 2, scope: !69, file: !2, line: 103, type: !72)
!83 = !DILocalVariable(name: "result", arg: 3, scope: !69, file: !2, line: 103, type: !73)
!84 = !DILocalVariable(name: "rintc", scope: !69, file: !2, line: 105, type: !85)
!85 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !72)
!86 = !DILocalVariable(name: "c_neg_integer", scope: !69, file: !2, line: 106, type: !87)
!87 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !23)
!88 = !DILocalVariable(name: "Jcm1", scope: !89, file: !2, line: 114, type: !74)
!89 = distinct !DILexicalBlock(scope: !90, file: !2, line: 113, column: 20)
!90 = distinct !DILexicalBlock(scope: !91, file: !2, line: 113, column: 11)
!91 = distinct !DILexicalBlock(scope: !69, file: !2, line: 110, column: 6)
!92 = !DILocalVariable(name: "lg_c", scope: !89, file: !2, line: 115, type: !74)
!93 = !DILocalVariable(name: "sgn", scope: !89, file: !2, line: 116, type: !72)
!94 = !DILocalVariable(name: "stat_g", scope: !89, file: !2, line: 117, type: !23)
!95 = !DILocalVariable(name: "stat_J", scope: !89, file: !2, line: 118, type: !23)
!96 = !DILocalVariable(name: "tl", scope: !97, file: !2, line: 130, type: !85)
!97 = distinct !DILexicalBlock(scope: !98, file: !2, line: 129, column: 10)
!98 = distinct !DILexicalBlock(scope: !99, file: !2, line: 124, column: 13)
!99 = distinct !DILexicalBlock(scope: !89, file: !2, line: 119, column: 8)
!100 = !DILocalVariable(name: "ln_pre_val", scope: !97, file: !2, line: 131, type: !72)
!101 = !DILocalVariable(name: "ln_pre_err", scope: !97, file: !2, line: 132, type: !72)
!102 = !DILocalVariable(name: "Icm1", scope: !103, file: !2, line: 144, type: !74)
!103 = distinct !DILexicalBlock(scope: !104, file: !2, line: 143, column: 8)
!104 = distinct !DILexicalBlock(scope: !90, file: !2, line: 138, column: 11)
!105 = !DILocalVariable(name: "lg_c", scope: !103, file: !2, line: 145, type: !74)
!106 = !DILocalVariable(name: "sgn", scope: !103, file: !2, line: 146, type: !72)
!107 = !DILocalVariable(name: "stat_g", scope: !103, file: !2, line: 147, type: !23)
!108 = !DILocalVariable(name: "stat_I", scope: !103, file: !2, line: 148, type: !23)
!109 = !DILocalVariable(name: "tl", scope: !110, file: !2, line: 160, type: !85)
!110 = distinct !DILexicalBlock(scope: !111, file: !2, line: 159, column: 10)
!111 = distinct !DILexicalBlock(scope: !112, file: !2, line: 154, column: 13)
!112 = distinct !DILexicalBlock(scope: !103, file: !2, line: 149, column: 8)
!113 = !DILocalVariable(name: "ln_pre_val", scope: !110, file: !2, line: 161, type: !85)
!114 = !DILocalVariable(name: "ln_pre_err", scope: !110, file: !2, line: 162, type: !85)
!115 = distinct !DIAssignID()
!116 = distinct !DIAssignID()
!117 = distinct !DIAssignID()
!118 = distinct !DIAssignID()
!119 = distinct !DIAssignID()
!120 = distinct !DIAssignID()
!121 = !DILocation(line: 0, scope: !89)
!122 = distinct !DIAssignID()
!123 = distinct !DIAssignID()
!124 = distinct !DIAssignID()
!125 = !DILocation(line: 0, scope: !103)
!126 = distinct !DIAssignID()
!127 = !DILocation(line: 0, scope: !69)
!128 = !DILocation(line: 106, column: 32, scope: !69)
!129 = !DILocation(line: 106, column: 38, scope: !69)
!130 = !DILocation(line: 105, column: 32, scope: !69)
!131 = !DILocation(line: 105, column: 24, scope: !69)
!132 = !DILocation(line: 106, column: 48, scope: !69)
!133 = !DILocation(line: 106, column: 41, scope: !69)
!134 = !DILocation(line: 106, column: 57, scope: !69)
!135 = !DILocation(line: 110, column: 8, scope: !91)
!136 = !DILocation(line: 110, column: 15, scope: !91)
!137 = !DILocation(line: 111, column: 5, scope: !138)
!138 = distinct !DILexicalBlock(scope: !139, file: !2, line: 111, column: 5)
!139 = distinct !DILexicalBlock(scope: !91, file: !2, line: 110, column: 33)
!140 = !{!141, !142, i64 0}
!141 = !{!"gsl_sf_result_struct", !142, i64 0, !142, i64 8}
!142 = !{!"double", !143, i64 0}
!143 = !{!"omnipotent char", !144, i64 0}
!144 = !{!"Simple C/C++ TBAA"}
!145 = !{!141, !142, i64 8}
!146 = !DILocation(line: 111, column: 5, scope: !147)
!147 = distinct !DILexicalBlock(scope: !138, file: !2, line: 111, column: 5)
!148 = !DILocation(line: 113, column: 13, scope: !90)
!149 = !DILocation(line: 113, column: 11, scope: !91)
!150 = !DILocation(line: 114, column: 5, scope: !89)
!151 = !DILocation(line: 115, column: 5, scope: !89)
!152 = !DILocation(line: 116, column: 5, scope: !89)
!153 = !DILocation(line: 117, column: 18, scope: !89)
!154 = !DILocation(line: 118, column: 39, scope: !89)
!155 = !DILocation(line: 118, column: 54, scope: !89)
!156 = !DILocation(line: 118, column: 49, scope: !89)
!157 = !DILocation(line: 118, column: 48, scope: !89)
!158 = !DILocalVariable(name: "J", scope: !159, file: !2, line: 85, type: !74)
!159 = distinct !DILexicalBlock(scope: !160, file: !2, line: 81, column: 16)
!160 = distinct !DILexicalBlock(scope: !161, file: !2, line: 81, column: 6)
!161 = distinct !DISubprogram(name: "hyperg_0F1_bessel_J", scope: !2, file: !2, line: 79, type: !162, scopeLine: 80, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !164)
!162 = !DISubroutineType(types: !163)
!163 = !{!23, !85, !85, !73}
!164 = !{!165, !166, !167, !168, !169, !170, !158, !171, !172, !173}
!165 = !DILocalVariable(name: "nu", arg: 1, scope: !161, file: !2, line: 79, type: !85)
!166 = !DILocalVariable(name: "x", arg: 2, scope: !161, file: !2, line: 79, type: !85)
!167 = !DILocalVariable(name: "result", arg: 3, scope: !161, file: !2, line: 79, type: !73)
!168 = !DILocalVariable(name: "anu", scope: !159, file: !2, line: 82, type: !85)
!169 = !DILocalVariable(name: "s", scope: !159, file: !2, line: 83, type: !85)
!170 = !DILocalVariable(name: "c", scope: !159, file: !2, line: 84, type: !85)
!171 = !DILocalVariable(name: "Y", scope: !159, file: !2, line: 86, type: !74)
!172 = !DILocalVariable(name: "stat_J", scope: !159, file: !2, line: 87, type: !23)
!173 = !DILocalVariable(name: "stat_Y", scope: !159, file: !2, line: 88, type: !23)
!174 = !DILocation(line: 0, scope: !159, inlinedAt: !175)
!175 = distinct !DILocation(line: 118, column: 18, scope: !89)
!176 = !DILocation(line: 0, scope: !161, inlinedAt: !175)
!177 = !DILocation(line: 81, column: 9, scope: !160, inlinedAt: !175)
!178 = !DILocation(line: 81, column: 6, scope: !161, inlinedAt: !175)
!179 = !DILocation(line: 82, column: 24, scope: !159, inlinedAt: !175)
!180 = !DILocation(line: 83, column: 31, scope: !159, inlinedAt: !175)
!181 = !DILocation(line: 83, column: 24, scope: !159, inlinedAt: !175)
!182 = !DILocation(line: 84, column: 24, scope: !159, inlinedAt: !175)
!183 = !DILocation(line: 85, column: 5, scope: !159, inlinedAt: !175)
!184 = !DILocation(line: 86, column: 5, scope: !159, inlinedAt: !175)
!185 = !DILocation(line: 87, column: 18, scope: !159, inlinedAt: !175)
!186 = !DILocation(line: 88, column: 18, scope: !159, inlinedAt: !175)
!187 = !DILocation(line: 89, column: 26, scope: !159, inlinedAt: !175)
!188 = !DILocation(line: 89, column: 22, scope: !159, inlinedAt: !175)
!189 = !DILocation(line: 89, column: 38, scope: !159, inlinedAt: !175)
!190 = !DILocation(line: 89, column: 34, scope: !159, inlinedAt: !175)
!191 = !DILocation(line: 89, column: 30, scope: !159, inlinedAt: !175)
!192 = !DILocation(line: 89, column: 18, scope: !159, inlinedAt: !175)
!193 = distinct !DIAssignID()
!194 = !DILocation(line: 90, column: 31, scope: !159, inlinedAt: !175)
!195 = !DILocation(line: 90, column: 27, scope: !159, inlinedAt: !175)
!196 = !DILocation(line: 90, column: 20, scope: !159, inlinedAt: !175)
!197 = !DILocation(line: 90, column: 49, scope: !159, inlinedAt: !175)
!198 = !DILocation(line: 90, column: 45, scope: !159, inlinedAt: !175)
!199 = !DILocation(line: 90, column: 38, scope: !159, inlinedAt: !175)
!200 = !DILocation(line: 90, column: 36, scope: !159, inlinedAt: !175)
!201 = !DILocation(line: 90, column: 13, scope: !159, inlinedAt: !175)
!202 = !DILocation(line: 91, column: 20, scope: !159, inlinedAt: !175)
!203 = !DILocation(line: 91, column: 37, scope: !159, inlinedAt: !175)
!204 = !DILocation(line: 91, column: 68, scope: !159, inlinedAt: !175)
!205 = !DILocation(line: 91, column: 57, scope: !159, inlinedAt: !175)
!206 = !DILocation(line: 91, column: 55, scope: !159, inlinedAt: !175)
!207 = !DILocation(line: 91, column: 17, scope: !159, inlinedAt: !175)
!208 = distinct !DIAssignID()
!209 = !DILocation(line: 92, column: 12, scope: !159, inlinedAt: !175)
!210 = !DILocation(line: 93, column: 3, scope: !160, inlinedAt: !175)
!211 = !DILocation(line: 95, column: 12, scope: !212, inlinedAt: !175)
!212 = distinct !DILexicalBlock(scope: !160, file: !2, line: 94, column: 8)
!213 = !DILocation(line: 95, column: 5, scope: !212, inlinedAt: !175)
!214 = !DILocation(line: 0, scope: !160, inlinedAt: !175)
!215 = !DILocation(line: 119, column: 15, scope: !99)
!216 = !DILocation(line: 119, column: 8, scope: !89)
!217 = !DILocation(line: 121, column: 19, scope: !218)
!218 = distinct !DILexicalBlock(scope: !99, file: !2, line: 119, column: 31)
!219 = !DILocation(line: 122, column: 7, scope: !218)
!220 = !DILocation(line: 124, column: 18, scope: !98)
!221 = !DILocation(line: 124, column: 22, scope: !98)
!222 = !DILocation(line: 124, column: 13, scope: !99)
!223 = !DILocation(line: 126, column: 19, scope: !224)
!224 = distinct !DILexicalBlock(scope: !98, file: !2, line: 124, column: 30)
!225 = !DILocation(line: 127, column: 7, scope: !224)
!226 = !DILocation(line: 130, column: 25, scope: !97)
!227 = !DILocation(line: 130, column: 32, scope: !97)
!228 = !DILocation(line: 130, column: 41, scope: !97)
!229 = !DILocation(line: 130, column: 36, scope: !97)
!230 = !DILocation(line: 0, scope: !97)
!231 = !DILocation(line: 131, column: 32, scope: !97)
!232 = !DILocation(line: 131, column: 36, scope: !97)
!233 = !DILocation(line: 132, column: 32, scope: !97)
!234 = !DILocation(line: 132, column: 62, scope: !97)
!235 = !DILocation(line: 132, column: 60, scope: !97)
!236 = !DILocation(line: 132, column: 36, scope: !97)
!237 = !DILocation(line: 134, column: 39, scope: !97)
!238 = !{!142, !142, i64 0}
!239 = !DILocation(line: 134, column: 48, scope: !97)
!240 = !DILocation(line: 134, column: 42, scope: !97)
!241 = !DILocation(line: 134, column: 58, scope: !97)
!242 = !DILocation(line: 133, column: 14, scope: !97)
!243 = !DILocation(line: 0, scope: !99)
!244 = !DILocation(line: 137, column: 3, scope: !90)
!245 = !DILocation(line: 138, column: 13, scope: !104)
!246 = !DILocation(line: 138, column: 11, scope: !90)
!247 = !DILocation(line: 139, column: 17, scope: !248)
!248 = distinct !DILexicalBlock(scope: !104, file: !2, line: 138, column: 21)
!249 = !DILocation(line: 140, column: 13, scope: !248)
!250 = !DILocation(line: 140, column: 17, scope: !248)
!251 = !DILocation(line: 141, column: 5, scope: !248)
!252 = !DILocation(line: 145, column: 5, scope: !103)
!253 = !DILocation(line: 146, column: 5, scope: !103)
!254 = !DILocation(line: 147, column: 18, scope: !103)
!255 = !DILocation(line: 148, column: 39, scope: !103)
!256 = !DILocation(line: 148, column: 49, scope: !103)
!257 = !DILocation(line: 148, column: 48, scope: !103)
!258 = !DILocalVariable(name: "I", scope: !259, file: !2, line: 52, type: !74)
!259 = distinct !DILexicalBlock(scope: !260, file: !2, line: 48, column: 16)
!260 = distinct !DILexicalBlock(scope: !261, file: !2, line: 48, column: 6)
!261 = distinct !DISubprogram(name: "hyperg_0F1_bessel_I", scope: !2, file: !2, line: 42, type: !162, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !262)
!262 = !{!263, !264, !265, !266, !267, !268, !258, !269, !270, !271, !272, !274, !275}
!263 = !DILocalVariable(name: "nu", arg: 1, scope: !261, file: !2, line: 42, type: !85)
!264 = !DILocalVariable(name: "x", arg: 2, scope: !261, file: !2, line: 42, type: !85)
!265 = !DILocalVariable(name: "result", arg: 3, scope: !261, file: !2, line: 42, type: !73)
!266 = !DILocalVariable(name: "anu", scope: !259, file: !2, line: 49, type: !85)
!267 = !DILocalVariable(name: "s", scope: !259, file: !2, line: 50, type: !85)
!268 = !DILocalVariable(name: "ex", scope: !259, file: !2, line: 51, type: !85)
!269 = !DILocalVariable(name: "K", scope: !259, file: !2, line: 53, type: !74)
!270 = !DILocalVariable(name: "stat_I", scope: !259, file: !2, line: 54, type: !23)
!271 = !DILocalVariable(name: "stat_K", scope: !259, file: !2, line: 55, type: !23)
!272 = !DILocalVariable(name: "ex", scope: !273, file: !2, line: 62, type: !85)
!273 = distinct !DILexicalBlock(scope: !260, file: !2, line: 61, column: 8)
!274 = !DILocalVariable(name: "I", scope: !273, file: !2, line: 63, type: !74)
!275 = !DILocalVariable(name: "stat_I", scope: !273, file: !2, line: 64, type: !23)
!276 = !DILocation(line: 0, scope: !259, inlinedAt: !277)
!277 = distinct !DILocation(line: 148, column: 18, scope: !103)
!278 = !DILocation(line: 0, scope: !273, inlinedAt: !277)
!279 = !DILocation(line: 0, scope: !261, inlinedAt: !277)
!280 = !DILocation(line: 44, column: 8, scope: !281, inlinedAt: !277)
!281 = distinct !DILexicalBlock(scope: !261, file: !2, line: 44, column: 6)
!282 = !DILocation(line: 44, column: 6, scope: !261, inlinedAt: !277)
!283 = !DILocation(line: 48, column: 9, scope: !260, inlinedAt: !277)
!284 = !DILocation(line: 48, column: 6, scope: !261, inlinedAt: !277)
!285 = !DILocation(line: 49, column: 24, scope: !259, inlinedAt: !277)
!286 = !DILocation(line: 50, column: 42, scope: !259, inlinedAt: !277)
!287 = !DILocation(line: 50, column: 35, scope: !259, inlinedAt: !277)
!288 = !DILocation(line: 50, column: 33, scope: !259, inlinedAt: !277)
!289 = !DILocation(line: 51, column: 24, scope: !259, inlinedAt: !277)
!290 = !DILocation(line: 52, column: 5, scope: !259, inlinedAt: !277)
!291 = !DILocation(line: 53, column: 5, scope: !259, inlinedAt: !277)
!292 = !DILocation(line: 54, column: 18, scope: !259, inlinedAt: !277)
!293 = !DILocation(line: 55, column: 18, scope: !259, inlinedAt: !277)
!294 = !DILocation(line: 56, column: 27, scope: !259, inlinedAt: !277)
!295 = !DILocation(line: 56, column: 23, scope: !259, inlinedAt: !277)
!296 = !DILocation(line: 56, column: 40, scope: !259, inlinedAt: !277)
!297 = !DILocation(line: 56, column: 44, scope: !259, inlinedAt: !277)
!298 = !DILocation(line: 56, column: 35, scope: !259, inlinedAt: !277)
!299 = !DILocation(line: 56, column: 31, scope: !259, inlinedAt: !277)
!300 = !DILocation(line: 57, column: 27, scope: !259, inlinedAt: !277)
!301 = !DILocation(line: 57, column: 23, scope: !259, inlinedAt: !277)
!302 = !DILocation(line: 57, column: 44, scope: !259, inlinedAt: !277)
!303 = !DILocation(line: 57, column: 40, scope: !259, inlinedAt: !277)
!304 = !DILocation(line: 57, column: 47, scope: !259, inlinedAt: !277)
!305 = !DILocation(line: 57, column: 33, scope: !259, inlinedAt: !277)
!306 = !DILocation(line: 57, column: 31, scope: !259, inlinedAt: !277)
!307 = !DILocation(line: 58, column: 20, scope: !259, inlinedAt: !277)
!308 = !DILocation(line: 58, column: 41, scope: !259, inlinedAt: !277)
!309 = !DILocation(line: 58, column: 59, scope: !259, inlinedAt: !277)
!310 = !DILocation(line: 58, column: 65, scope: !259, inlinedAt: !277)
!311 = !DILocation(line: 58, column: 17, scope: !259, inlinedAt: !277)
!312 = !DILocation(line: 59, column: 12, scope: !259, inlinedAt: !277)
!313 = !DILocation(line: 60, column: 3, scope: !260, inlinedAt: !277)
!314 = !DILocation(line: 62, column: 24, scope: !273, inlinedAt: !277)
!315 = !DILocation(line: 63, column: 5, scope: !273, inlinedAt: !277)
!316 = !DILocation(line: 64, column: 18, scope: !273, inlinedAt: !277)
!317 = !DILocation(line: 65, column: 26, scope: !273, inlinedAt: !277)
!318 = !DILocation(line: 65, column: 22, scope: !273, inlinedAt: !277)
!319 = !DILocation(line: 66, column: 26, scope: !273, inlinedAt: !277)
!320 = !DILocation(line: 66, column: 22, scope: !273, inlinedAt: !277)
!321 = !DILocation(line: 66, column: 50, scope: !273, inlinedAt: !277)
!322 = !DILocation(line: 66, column: 48, scope: !273, inlinedAt: !277)
!323 = !DILocation(line: 66, column: 30, scope: !273, inlinedAt: !277)
!324 = !DILocation(line: 68, column: 3, scope: !260, inlinedAt: !277)
!325 = !DILocation(line: 149, column: 15, scope: !112)
!326 = !DILocation(line: 149, column: 8, scope: !103)
!327 = !DILocation(line: 45, column: 5, scope: !328, inlinedAt: !277)
!328 = distinct !DILexicalBlock(scope: !329, file: !2, line: 45, column: 5)
!329 = distinct !DILexicalBlock(scope: !330, file: !2, line: 45, column: 5)
!330 = distinct !DILexicalBlock(scope: !281, file: !2, line: 44, column: 27)
!331 = !DILocation(line: 151, column: 19, scope: !332)
!332 = distinct !DILexicalBlock(scope: !112, file: !2, line: 149, column: 31)
!333 = !DILocation(line: 152, column: 7, scope: !332)
!334 = !DILocation(line: 154, column: 22, scope: !111)
!335 = !DILocation(line: 154, column: 13, scope: !112)
!336 = !DILocation(line: 156, column: 19, scope: !337)
!337 = distinct !DILexicalBlock(scope: !111, file: !2, line: 154, column: 30)
!338 = !DILocation(line: 157, column: 7, scope: !337)
!339 = !DILocation(line: 160, column: 25, scope: !110)
!340 = !DILocation(line: 160, column: 31, scope: !110)
!341 = !DILocation(line: 160, column: 40, scope: !110)
!342 = !DILocation(line: 160, column: 35, scope: !110)
!343 = !DILocation(line: 0, scope: !110)
!344 = !DILocation(line: 161, column: 38, scope: !110)
!345 = !DILocation(line: 161, column: 42, scope: !110)
!346 = !DILocation(line: 162, column: 38, scope: !110)
!347 = !DILocation(line: 162, column: 68, scope: !110)
!348 = !DILocation(line: 162, column: 66, scope: !110)
!349 = !DILocation(line: 162, column: 42, scope: !110)
!350 = !DILocation(line: 164, column: 39, scope: !110)
!351 = !DILocation(line: 164, column: 42, scope: !110)
!352 = !DILocation(line: 163, column: 14, scope: !110)
!353 = !DILocation(line: 0, scope: !112)
!354 = !DILocation(line: 167, column: 3, scope: !104)
!355 = !DILocation(line: 0, scope: !91)
!356 = !DILocation(line: 168, column: 1, scope: !69)
!357 = !DISubprogram(name: "gsl_error", scope: !22, file: !22, line: 77, type: !358, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!358 = !DISubroutineType(types: !359)
!359 = !{null, !360, !360, !23, !23}
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!362 = !DISubprogram(name: "gsl_sf_lngamma_sgn_e", scope: !363, file: !363, line: 58, type: !364, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!363 = !DIFile(filename: "../gsl/gsl_sf_gamma.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "88cc3c2b19ea790e1c6889b01cfd3137")
!364 = !DISubroutineType(types: !365)
!365 = !{!23, !72, !73, !366}
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!367 = !DISubprogram(name: "sqrt", scope: !368, file: !368, line: 143, type: !369, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!368 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!369 = !DISubroutineType(types: !370)
!370 = !{!72, !72}
!371 = !DISubprogram(name: "log", scope: !368, file: !368, line: 104, type: !369, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!372 = !DISubprogram(name: "gsl_sf_exp_mult_err_e", scope: !373, file: !373, line: 122, type: !374, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!373 = !DIFile(filename: "../gsl/gsl_sf_exp.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "c512f91507e79efdd09661b0faef2cde")
!374 = !DISubroutineType(types: !375)
!375 = !{!23, !85, !85, !85, !85, !73}
!376 = distinct !DISubprogram(name: "gsl_sf_hyperg_0F1", scope: !2, file: !2, line: 175, type: !377, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !379)
!377 = !DISubroutineType(types: !378)
!378 = !{!72, !85, !85}
!379 = !{!380, !381, !382, !383}
!380 = !DILocalVariable(name: "c", arg: 1, scope: !376, file: !2, line: 175, type: !85)
!381 = !DILocalVariable(name: "x", arg: 2, scope: !376, file: !2, line: 175, type: !85)
!382 = !DILocalVariable(name: "result", scope: !376, file: !2, line: 177, type: !74)
!383 = !DILocalVariable(name: "status", scope: !376, file: !2, line: 177, type: !23)
!384 = distinct !DIAssignID()
!385 = !DILocation(line: 0, scope: !376)
!386 = !DILocation(line: 177, column: 3, scope: !376)
!387 = !DILocation(line: 177, column: 3, scope: !388)
!388 = distinct !DILexicalBlock(scope: !376, file: !2, line: 177, column: 3)
!389 = !DILocation(line: 177, column: 3, scope: !390)
!390 = distinct !DILexicalBlock(scope: !391, file: !2, line: 177, column: 3)
!391 = distinct !DILexicalBlock(scope: !388, file: !2, line: 177, column: 3)
!392 = !DILocation(line: 178, column: 1, scope: !376)
!393 = !DISubprogram(name: "sin", scope: !368, file: !368, line: 64, type: !369, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!394 = !DISubprogram(name: "cos", scope: !368, file: !368, line: 62, type: !369, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!395 = !DISubprogram(name: "gsl_sf_bessel_Jnu_e", scope: !396, file: !396, line: 444, type: !162, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!396 = !DIFile(filename: "../gsl/gsl_sf_bessel.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "45459f63edc3203df6c715a25160d493")
!397 = !DISubprogram(name: "gsl_sf_bessel_Ynu_e", scope: !396, file: !396, line: 452, type: !70, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!398 = !DISubprogram(name: "exp", scope: !368, file: !368, line: 95, type: !369, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!399 = !DISubprogram(name: "gsl_sf_bessel_Inu_scaled_e", scope: !396, file: !396, line: 474, type: !70, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!400 = !DISubprogram(name: "gsl_sf_bessel_Knu_scaled_e", scope: !396, file: !396, line: 496, type: !162, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
