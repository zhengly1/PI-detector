; ModuleID = 'hyperg_2F1.ll'
source_filename = "hyperg_2F1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [13 x i8] c"domain error\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [13 x i8] c"hyperg_2F1.c\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [6 x i8] c"error\00", align 1, !dbg !9
@.str.3 = private unnamed_addr constant [41 x i8] c"gsl_sf_hyperg_2F1_e(a, b, c, x, &result)\00", align 1, !dbg !14
@.str.4 = private unnamed_addr constant [48 x i8] c"gsl_sf_hyperg_2F1_conj_e(aR, aI, c, x, &result)\00", align 1, !dbg !19
@.str.5 = private unnamed_addr constant [48 x i8] c"gsl_sf_hyperg_2F1_renorm_e(a, b, c, x, &result)\00", align 1, !dbg !24
@.str.6 = private unnamed_addr constant [55 x i8] c"gsl_sf_hyperg_2F1_conj_renorm_e(aR, aI, c, x, &result)\00", align 1, !dbg !26
@.str.7 = private unnamed_addr constant [9 x i8] c"overflow\00", align 1, !dbg !31
@.str.8 = private unnamed_addr constant [10 x i8] c"underflow\00", align 1, !dbg !36

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_hyperg_2F1_e(double noundef %0, double noundef %1, double noundef %2, double noundef %3, ptr noundef %4) local_unnamed_addr #0 !dbg !93 {
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !139
  call void @llvm.dbg.assign(metadata i1 undef, metadata !118, metadata !DIExpression(), metadata !139, metadata ptr %6, metadata !DIExpression()), !dbg !140
  %7 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !141
  call void @llvm.dbg.assign(metadata i1 undef, metadata !121, metadata !DIExpression(), metadata !141, metadata ptr %7, metadata !DIExpression()), !dbg !140
  %8 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !142
  call void @llvm.dbg.assign(metadata i1 undef, metadata !122, metadata !DIExpression(), metadata !142, metadata ptr %8, metadata !DIExpression()), !dbg !140
  %9 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !143
  call void @llvm.dbg.assign(metadata i1 undef, metadata !123, metadata !DIExpression(), metadata !143, metadata ptr %9, metadata !DIExpression()), !dbg !140
  %10 = alloca double, align 8, !DIAssignID !144
  call void @llvm.dbg.assign(metadata i1 undef, metadata !124, metadata !DIExpression(), metadata !144, metadata ptr %10, metadata !DIExpression()), !dbg !140
  %11 = alloca double, align 8, !DIAssignID !145
  call void @llvm.dbg.assign(metadata i1 undef, metadata !125, metadata !DIExpression(), metadata !145, metadata ptr %11, metadata !DIExpression()), !dbg !140
  %12 = alloca double, align 8, !DIAssignID !146
  call void @llvm.dbg.assign(metadata i1 undef, metadata !126, metadata !DIExpression(), metadata !146, metadata ptr %12, metadata !DIExpression()), !dbg !140
  tail call void @llvm.dbg.value(metadata double %0, metadata !105, metadata !DIExpression()), !dbg !147
  tail call void @llvm.dbg.value(metadata double %1, metadata !106, metadata !DIExpression()), !dbg !147
  tail call void @llvm.dbg.value(metadata double %2, metadata !107, metadata !DIExpression()), !dbg !147
  tail call void @llvm.dbg.value(metadata double %3, metadata !108, metadata !DIExpression()), !dbg !147
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !109, metadata !DIExpression()), !dbg !147
  %handler_result = call double @fSubHandlerDouble(double %2, double %0), !dbg !148
  %handler_result1 = call double @fSubHandlerDouble(double %handler_result, double %1), !dbg !149
  tail call void @llvm.dbg.value(metadata double %handler_result1, metadata !110, metadata !DIExpression()), !dbg !147
  %handler_result2 = call double @fAddHandlerDouble(double %0, double 5.000000e-01), !dbg !150
  %13 = tail call double @llvm.floor.f64(double %handler_result2), !dbg !150
  tail call void @llvm.dbg.value(metadata double %13, metadata !111, metadata !DIExpression()), !dbg !147
  %handler_result3 = call double @fAddHandlerDouble(double %1, double 5.000000e-01), !dbg !151
  %14 = tail call double @llvm.floor.f64(double %handler_result3), !dbg !151
  tail call void @llvm.dbg.value(metadata double %14, metadata !112, metadata !DIExpression()), !dbg !147
  %handler_result4 = call double @fAddHandlerDouble(double %2, double 5.000000e-01), !dbg !152
  %15 = tail call double @llvm.floor.f64(double %handler_result4), !dbg !152
  tail call void @llvm.dbg.value(metadata double %15, metadata !113, metadata !DIExpression()), !dbg !147
  %16 = fcmp olt double %0, 0.000000e+00, !dbg !153
  %handler_result5 = call double @fSubHandlerDouble(double %0, double %13), !dbg !154
  %17 = tail call double @llvm.fabs.f64(double %handler_result5), !dbg !154
  %18 = fcmp olt double %17, 0x3D4F400000000000, !dbg !154
  %19 = and i1 %16, %18, !dbg !154
  tail call void @llvm.dbg.value(metadata i1 %19, metadata !114, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !147
  %20 = fcmp olt double %1, 0.000000e+00, !dbg !155
  %handler_result6 = call double @fSubHandlerDouble(double %1, double %14), !dbg !156
  %21 = tail call double @llvm.fabs.f64(double %handler_result6), !dbg !156
  %22 = fcmp olt double %21, 0x3D4F400000000000, !dbg !156
  %23 = and i1 %20, %22, !dbg !156
  tail call void @llvm.dbg.value(metadata i1 %23, metadata !116, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !147
  %24 = fcmp olt double %2, 0.000000e+00, !dbg !157
  %handler_result7 = call double @fSubHandlerDouble(double %2, double %15), !dbg !158
  %25 = tail call double @llvm.fabs.f64(double %handler_result7), !dbg !158
  %26 = fcmp olt double %25, 0x3D4F400000000000, !dbg !158
  %27 = and i1 %24, %26, !dbg !158
  tail call void @llvm.dbg.value(metadata i1 %27, metadata !117, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !147
  %28 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !159
  %handler_result8 = call double @fAddHandlerDouble(double %3, double -1.000000e+00), !dbg !160
  %29 = tail call double @llvm.fabs.f64(double %handler_result8), !dbg !160
  %30 = fcmp olt double %29, 0x3D4F400000000000, !dbg !161
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false), !dbg !162
  br i1 %30, label %31, label %72, !dbg !163

31:                                               ; preds = %5
  %32 = fcmp ule double %handler_result1, 0.000000e+00, !dbg !164
  %33 = fcmp oeq double %2, 0.000000e+00
  %34 = or i1 %33, %32, !dbg !165
  %35 = or i1 %34, %27, !dbg !165
  br i1 %35, label %72, label %36, !dbg !165

36:                                               ; preds = %31
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #7, !dbg !166
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #7, !dbg !166
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #7, !dbg !166
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #7, !dbg !166
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #7, !dbg !167
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #7, !dbg !167
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #7, !dbg !167
  %37 = call i32 @gsl_sf_lngamma_sgn_e(double noundef %2, ptr noundef nonnull %6, ptr noundef nonnull %10) #7, !dbg !168
  tail call void @llvm.dbg.value(metadata i32 %37, metadata !128, metadata !DIExpression()), !dbg !140
  %38 = call i32 @gsl_sf_lngamma_e(double noundef %handler_result1, ptr noundef nonnull %7) #7, !dbg !169
  tail call void @llvm.dbg.value(metadata i32 %38, metadata !129, metadata !DIExpression()), !dbg !140
  %39 = call i32 @gsl_sf_lngamma_sgn_e(double noundef %handler_result, ptr noundef nonnull %8, ptr noundef nonnull %11) #7, !dbg !170
  tail call void @llvm.dbg.value(metadata i32 %39, metadata !130, metadata !DIExpression()), !dbg !140
  %handler_result9 = call double @fSubHandlerDouble(double %2, double %1), !dbg !171
  %40 = call i32 @gsl_sf_lngamma_sgn_e(double noundef %handler_result9, ptr noundef nonnull %9, ptr noundef nonnull %12) #7, !dbg !171
  tail call void @llvm.dbg.value(metadata i32 %40, metadata !131, metadata !DIExpression()), !dbg !140
  %41 = icmp ne i32 %37, 0, !dbg !172
  %42 = icmp ne i32 %38, 0
  %43 = select i1 %41, i1 true, i1 %42, !dbg !174
  %44 = icmp ne i32 %39, 0
  %45 = select i1 %43, i1 true, i1 %44, !dbg !174
  %46 = icmp ne i32 %40, 0
  %47 = select i1 %45, i1 true, i1 %46, !dbg !174
  br i1 %47, label %48, label %49, !dbg !174

48:                                               ; preds = %36
  store double 0x7FF8000000000000, ptr %4, align 8, !dbg !175, !tbaa !178
  store double 0x7FF8000000000000, ptr %28, align 8, !dbg !175, !tbaa !183
  call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 672, i32 noundef 1) #7, !dbg !184
  br label %70, !dbg !184

49:                                               ; preds = %36
  %50 = load double, ptr %6, align 8, !dbg !186, !tbaa !178
  %51 = load double, ptr %7, align 8, !dbg !187, !tbaa !178
  %handler_result10 = call double @fAddHandlerDouble(double %50, double %51), !dbg !188
  %52 = load double, ptr %8, align 8, !dbg !188, !tbaa !178
  %handler_result11 = call double @fSubHandlerDouble(double %handler_result10, double %52), !dbg !189
  %53 = load double, ptr %9, align 8, !dbg !189, !tbaa !178
  %handler_result12 = call double @fSubHandlerDouble(double %handler_result11, double %53), !dbg !190
  %54 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !190
  %55 = load double, ptr %54, align 8, !dbg !190, !tbaa !183
  %56 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %7, i64 0, i32 1, !dbg !191
  %57 = load double, ptr %56, align 8, !dbg !191, !tbaa !183
  %handler_result13 = call double @fAddHandlerDouble(double %55, double %57), !dbg !192
  %58 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %8, i64 0, i32 1, !dbg !192
  %59 = load double, ptr %58, align 8, !dbg !192, !tbaa !183
  %handler_result14 = call double @fAddHandlerDouble(double %handler_result13, double %59), !dbg !193
  %60 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %9, i64 0, i32 1, !dbg !193
  %61 = load double, ptr %60, align 8, !dbg !193, !tbaa !183
  %handler_result15 = call double @fAddHandlerDouble(double %handler_result14, double %61), !dbg !194
  %62 = call i32 @gsl_sf_exp_err_e(double noundef %handler_result12, double noundef %handler_result15, ptr noundef nonnull %4) #7, !dbg !194
  tail call void @llvm.dbg.value(metadata i32 %62, metadata !127, metadata !DIExpression()), !dbg !140
  %63 = load double, ptr %10, align 8, !dbg !195, !tbaa !196
  %64 = load double, ptr %11, align 8, !dbg !197, !tbaa !196
  %65 = load double, ptr %12, align 8, !dbg !198, !tbaa !196
  %66 = fmul double %64, %65, !dbg !199
  %67 = fdiv double %63, %66, !dbg !200
  %68 = load double, ptr %4, align 8, !dbg !201, !tbaa !178
  %69 = fmul double %68, %67, !dbg !201
  store double %69, ptr %4, align 8, !dbg !201, !tbaa !178
  br label %70, !dbg !202

70:                                               ; preds = %49, %48
  %71 = phi i32 [ 1, %48 ], [ %62, %49 ], !dbg !140
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #7, !dbg !203
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #7, !dbg !203
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #7, !dbg !203
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #7, !dbg !203
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #7, !dbg !203
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #7, !dbg !203
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #7, !dbg !203
  br label %184

72:                                               ; preds = %31, %5
  %73 = fcmp olt double %3, -1.000000e+00, !dbg !204
  %74 = fcmp oge double %3, 1.000000e+00
  %75 = or i1 %73, %74, !dbg !206
  br i1 %75, label %76, label %77, !dbg !206

76:                                               ; preds = %72
  store double 0x7FF8000000000000, ptr %4, align 8, !dbg !207, !tbaa !178
  store double 0x7FF8000000000000, ptr %28, align 8, !dbg !207, !tbaa !183
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 685, i32 noundef 1) #7, !dbg !210
  br label %184, !dbg !210

77:                                               ; preds = %72
  br i1 %27, label %78, label %85, !dbg !212

78:                                               ; preds = %77
  %handler_result16 = call double @fAddHandlerDouble(double %2, double 1.000000e-01)
  %79 = fcmp olt double %handler_result16, %0
  %80 = and i1 %79, %19, !dbg !213
  %81 = fcmp olt double %handler_result16, %1
  %82 = and i1 %81, %23
  %83 = or i1 %80, %82, !dbg !213
  br i1 %83, label %85, label %84, !dbg !213

84:                                               ; preds = %78
  store double 0x7FF8000000000000, ptr %4, align 8, !dbg !217, !tbaa !178
  store double 0x7FF8000000000000, ptr %28, align 8, !dbg !217, !tbaa !183
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 693, i32 noundef 1) #7, !dbg !220
  br label %184, !dbg !220

85:                                               ; preds = %78, %77
  %handler_result17 = call double @fSubHandlerDouble(double %2, double %1), !dbg !222
  %86 = tail call double @llvm.fabs.f64(double %handler_result17), !dbg !222
  %87 = fcmp olt double %86, 0x3D4F400000000000, !dbg !224
  %88 = tail call double @llvm.fabs.f64(double %handler_result)
  %89 = fcmp olt double %88, 0x3D4F400000000000
  %90 = or i1 %87, %89, !dbg !225
  br i1 %90, label %91, label %109, !dbg !225

91:                                               ; preds = %85
  call void @llvm.dbg.value(metadata double %3, metadata !226, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.value(metadata double %handler_result1, metadata !231, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.value(metadata ptr %4, metadata !232, metadata !DIExpression()), !dbg !235
  %92 = tail call double @llvm.fabs.f64(double %3), !dbg !238
  %93 = fcmp olt double %92, 0x3F48406003B2AE5A, !dbg !240
  br i1 %93, label %94, label %102, !dbg !241

94:                                               ; preds = %91
  %95 = fneg double %3, !dbg !242
  %96 = fmul double %3, 2.500000e-01, !dbg !244
  %handler_result18 = call double @fAddHandlerDouble(double %96, double 0x3FD5555555555555), !dbg !245
  %97 = fmul double %3, %3, !dbg !245
  %98 = fdiv double %97, 5.000000e+00, !dbg !246
  %handler_result19 = call double @fAddHandlerDouble(double %handler_result18, double %98), !dbg !247
  %99 = fmul double %handler_result19, %3, !dbg !247
  %handler_result20 = call double @fAddHandlerDouble(double %99, double 5.000000e-01), !dbg !248
  %100 = fmul double %handler_result20, %3, !dbg !248
  %handler_result21 = call double @fAddHandlerDouble(double %100, double 1.000000e+00), !dbg !249
  %101 = fmul double %handler_result21, %95, !dbg !249
  call void @llvm.dbg.value(metadata double %101, metadata !233, metadata !DIExpression()), !dbg !235
  br label %103, !dbg !250

102:                                              ; preds = %91
  %handler_result22 = call double @fSubHandlerDouble(double 1.000000e+00, double %3), !dbg !251
  %handler_result23 = call double @callHandler(i32 12, double %handler_result22, double %handler_result22)
  call void @llvm.dbg.value(metadata double %handler_result23, metadata !233, metadata !DIExpression()), !dbg !235
  br label %103

103:                                              ; preds = %102, %94
  %104 = phi double [ %101, %94 ], [ %handler_result23, %102 ], !dbg !253
  call void @llvm.dbg.value(metadata double %104, metadata !233, metadata !DIExpression()), !dbg !235
  %105 = fmul double %handler_result1, %104, !dbg !254
  call void @llvm.dbg.value(metadata double %105, metadata !234, metadata !DIExpression()), !dbg !235
  %106 = tail call double @llvm.fabs.f64(double %105), !dbg !255
  %107 = fmul double %106, 0x3CB0000000000000, !dbg !256
  %108 = tail call i32 @gsl_sf_exp_err_e(double noundef %105, double noundef %107, ptr noundef nonnull %4) #7, !dbg !257
  br label %184, !dbg !258

109:                                              ; preds = %85
  %110 = fcmp oge double %0, 0.000000e+00, !dbg !259
  %111 = fcmp oge double %1, 0.000000e+00
  %112 = and i1 %110, %111, !dbg !261
  %113 = fcmp oge double %2, 0.000000e+00
  %114 = and i1 %112, %113, !dbg !261
  %115 = fcmp oge double %3, 0.000000e+00
  %116 = and i1 %114, %115, !dbg !261
  %117 = fcmp olt double %3, 0x3FEFD70A3D70A3D7
  %118 = and i1 %117, %116, !dbg !261
  br i1 %118, label %119, label %121, !dbg !261

119:                                              ; preds = %109
  %120 = tail call fastcc i32 @hyperg_2F1_series(double noundef %0, double noundef %1, double noundef %2, double noundef %3, ptr noundef nonnull %4), !dbg !262, !range !264
  br label %184, !dbg !265

121:                                              ; preds = %109
  %122 = tail call double @llvm.fabs.f64(double %0), !dbg !266
  %123 = fcmp olt double %122, 1.000000e+01, !dbg !267
  %124 = tail call double @llvm.fabs.f64(double %1)
  %125 = fcmp olt double %124, 1.000000e+01
  %126 = and i1 %123, %125, !dbg !268
  br i1 %126, label %127, label %148, !dbg !268

127:                                              ; preds = %121
  br i1 %19, label %128, label %130, !dbg !269

128:                                              ; preds = %127
  %129 = tail call fastcc i32 @hyperg_2F1_series(double noundef %13, double noundef %1, double noundef %2, double noundef %3, ptr noundef nonnull %4), !dbg !271, !range !264
  br label %184, !dbg !274

130:                                              ; preds = %127
  br i1 %23, label %131, label %133, !dbg !275

131:                                              ; preds = %130
  %132 = tail call fastcc i32 @hyperg_2F1_series(double noundef %0, double noundef %14, double noundef %2, double noundef %3, ptr noundef nonnull %4), !dbg !276, !range !264
  br label %184, !dbg !279

133:                                              ; preds = %130
  %134 = fcmp olt double %3, -2.500000e-01, !dbg !280
  br i1 %134, label %135, label %137, !dbg !282

135:                                              ; preds = %133
  %136 = tail call fastcc i32 @hyperg_2F1_luke(double noundef %0, double noundef %1, double noundef %2, double noundef %3, ptr noundef nonnull %4), !dbg !283, !range !264
  br label %184, !dbg !285

137:                                              ; preds = %133
  %138 = fcmp olt double %3, 5.000000e-01, !dbg !286
  br i1 %138, label %139, label %141, !dbg !288

139:                                              ; preds = %137
  %140 = tail call fastcc i32 @hyperg_2F1_series(double noundef %0, double noundef %1, double noundef %2, double noundef %3, ptr noundef nonnull %4), !dbg !289, !range !264
  br label %184, !dbg !291

141:                                              ; preds = %137
  %142 = tail call double @llvm.fabs.f64(double %2), !dbg !292
  %143 = fcmp ogt double %142, 1.000000e+01, !dbg !295
  br i1 %143, label %144, label %146, !dbg !296

144:                                              ; preds = %141
  %145 = tail call fastcc i32 @hyperg_2F1_series(double noundef %0, double noundef %1, double noundef %2, double noundef %3, ptr noundef nonnull %4), !dbg !297, !range !264
  br label %184, !dbg !299

146:                                              ; preds = %141
  %147 = tail call fastcc i32 @hyperg_2F1_reflect(double noundef %0, double noundef %1, double noundef %2, double noundef %3, ptr noundef nonnull %4), !dbg !300
  br label %184, !dbg !302

148:                                              ; preds = %121
  %149 = fcmp ogt double %122, %124, !dbg !303
  %150 = select i1 %149, double %1, double %0
  %151 = select i1 %149, double %0, double %1
  tail call void @llvm.dbg.value(metadata double %151, metadata !135, metadata !DIExpression()), !dbg !305
  tail call void @llvm.dbg.value(metadata double %150, metadata !132, metadata !DIExpression()), !dbg !305
  %152 = fcmp olt double %3, 0.000000e+00, !dbg !306
  br i1 %152, label %153, label %155, !dbg !308

153:                                              ; preds = %148
  %154 = tail call fastcc i32 @hyperg_2F1_luke(double noundef %0, double noundef %1, double noundef %2, double noundef %3, ptr noundef nonnull %4), !dbg !309, !range !264
  br label %184, !dbg !311

155:                                              ; preds = %148
  %156 = tail call double @llvm.fabs.f64(double %150), !dbg !312
  tail call void @llvm.dbg.value(metadata double %156, metadata !314, metadata !DIExpression()), !dbg !321
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !320, metadata !DIExpression()), !dbg !321
  %157 = fcmp ogt double %156, 1.000000e+00, !dbg !323
  %158 = select i1 %157, double %156, double 1.000000e+00, !dbg !323
  %159 = tail call double @llvm.fabs.f64(double %151), !dbg !324
  %160 = fmul double %159, %158, !dbg !325
  %161 = tail call double @llvm.fabs.f64(double %3), !dbg !326
  %162 = fmul double %161, %160, !dbg !327
  %163 = tail call double @llvm.fabs.f64(double %2), !dbg !328
  %164 = fmul double %163, 2.000000e+00, !dbg !329
  %165 = fcmp olt double %162, %164, !dbg !330
  br i1 %165, label %166, label %168, !dbg !331

166:                                              ; preds = %155
  %167 = tail call fastcc i32 @hyperg_2F1_series(double noundef %0, double noundef %1, double noundef %2, double noundef %3, ptr noundef nonnull %4), !dbg !332, !range !264
  br label %184, !dbg !334

168:                                              ; preds = %155
  %169 = fmul double %151, %151, !dbg !335
  %170 = fmul double %169, %3, !dbg !336
  %171 = fmul double %170, %3, !dbg !337
  %172 = tail call double @llvm.fabs.f64(double %171), !dbg !338
  %173 = fmul double %159, 1.000000e-03, !dbg !339
  %174 = fcmp olt double %172, %173, !dbg !340
  %175 = fcmp olt double %156, 1.000000e+01
  %176 = and i1 %175, %174, !dbg !341
  br i1 %176, label %177, label %183, !dbg !341

177:                                              ; preds = %168
  %178 = fmul double %151, %3, !dbg !342
  %179 = tail call i32 @gsl_sf_hyperg_1F1_e(double noundef %150, double noundef %2, double noundef %178, ptr noundef nonnull %4) #7, !dbg !343
  tail call void @llvm.dbg.value(metadata i32 %179, metadata !136, metadata !DIExpression()), !dbg !344
  %180 = load double, ptr %4, align 8, !dbg !345, !tbaa !178
  %181 = tail call double @llvm.fabs.f64(double %180), !dbg !346
  %182 = fmul double %181, 1.000000e-03, !dbg !347
  store double %182, ptr %28, align 8, !dbg !348, !tbaa !183
  br label %184

183:                                              ; preds = %168
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 773, i32 noundef 24) #7, !dbg !349
  br label %184, !dbg !349

184:                                              ; preds = %183, %177, %166, %153, %146, %144, %139, %135, %131, %128, %119, %103, %84, %76, %70
  %185 = phi i32 [ 1, %76 ], [ %108, %103 ], [ %120, %119 ], [ %129, %128 ], [ %132, %131 ], [ %136, %135 ], [ %140, %139 ], [ %145, %144 ], [ %147, %146 ], [ 1, %84 ], [ %71, %70 ], [ %154, %153 ], [ %167, %166 ], [ %179, %177 ], [ 24, %183 ], !dbg !147
  ret i32 %185, !dbg !351
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #2

declare !dbg !352 i32 @gsl_sf_lngamma_sgn_e(double noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !357 i32 @gsl_sf_lngamma_e(double noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !360 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !365 i32 @gsl_sf_exp_err_e(double noundef, double noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @hyperg_2F1_series(double noundef %0, double noundef %1, double noundef %2, double noundef %3, ptr nocapture noundef %4) unnamed_addr #0 !dbg !367 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !371, metadata !DIExpression()), !dbg !384
  tail call void @llvm.dbg.value(metadata double %1, metadata !372, metadata !DIExpression()), !dbg !384
  tail call void @llvm.dbg.value(metadata double %2, metadata !373, metadata !DIExpression()), !dbg !384
  tail call void @llvm.dbg.value(metadata double %3, metadata !374, metadata !DIExpression()), !dbg !384
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !375, metadata !DIExpression()), !dbg !384
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !376, metadata !DIExpression()), !dbg !384
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !377, metadata !DIExpression()), !dbg !384
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !378, metadata !DIExpression()), !dbg !384
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !379, metadata !DIExpression()), !dbg !384
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !380, metadata !DIExpression()), !dbg !384
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !382, metadata !DIExpression()), !dbg !384
  tail call void @llvm.dbg.value(metadata i32 0, metadata !383, metadata !DIExpression()), !dbg !384
  %6 = tail call double @llvm.fabs.f64(double %2), !dbg !385
  %7 = fcmp olt double %6, 0x3CB0000000000000, !dbg !387
  br i1 %7, label %8, label %10, !dbg !388

8:                                                ; preds = %5
  store double 0.000000e+00, ptr %4, align 8, !dbg !389, !tbaa !178
  %9 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !391
  store double 1.000000e+00, ptr %9, align 8, !dbg !392, !tbaa !183
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 57, i32 noundef 1) #7, !dbg !393
  br label %76, !dbg !393

10:                                               ; preds = %55, %5
  %11 = phi double [ %44, %55 ], [ 1.000000e+00, %5 ], !dbg !384
  %12 = phi double [ %45, %55 ], [ 0.000000e+00, %5 ], !dbg !395
  %13 = phi double [ %46, %55 ], [ 1.000000e+00, %5 ], !dbg !384
  %14 = phi double [ %47, %55 ], [ 0.000000e+00, %5 ], !dbg !396
  %15 = phi double [ %35, %55 ], [ 1.000000e+00, %5 ], !dbg !384
  %16 = phi double [ %handler_result9, %55 ], [ 0.000000e+00, %5 ], !dbg !384
  %17 = phi i32 [ %18, %55 ], [ 0, %5 ], !dbg !384
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !383, metadata !DIExpression()), !dbg !384
  tail call void @llvm.dbg.value(metadata double %16, metadata !382, metadata !DIExpression()), !dbg !384
  tail call void @llvm.dbg.value(metadata double %15, metadata !380, metadata !DIExpression()), !dbg !384
  tail call void @llvm.dbg.value(metadata double %14, metadata !379, metadata !DIExpression()), !dbg !384
  tail call void @llvm.dbg.value(metadata double %13, metadata !378, metadata !DIExpression()), !dbg !384
  tail call void @llvm.dbg.value(metadata double %12, metadata !377, metadata !DIExpression()), !dbg !384
  tail call void @llvm.dbg.value(metadata double %11, metadata !376, metadata !DIExpression()), !dbg !384
  %18 = add nuw nsw i32 %17, 1, !dbg !397
  tail call void @llvm.dbg.value(metadata i32 %18, metadata !383, metadata !DIExpression()), !dbg !384
  %19 = icmp eq i32 %17, 30000, !dbg !400
  br i1 %19, label %20, label %30, !dbg !401

20:                                               ; preds = %10
  %handler_result = call double @fSubHandlerDouble(double %11, double %12), !dbg !402
  store double %handler_result, ptr %4, align 8, !dbg !402, !tbaa !178
  %handler_result1 = call double @fAddHandlerDouble(double %13, double %14), !dbg !404
  %21 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !404
  %handler_result2 = call double @fAddHandlerDouble(double %11, double %12), !dbg !405
  %22 = fmul double %handler_result2, 0x3CC0000000000000, !dbg !405
  %handler_result3 = call double @fAddHandlerDouble(double %22, double %handler_result1), !dbg !406
  store double %handler_result3, ptr %21, align 8, !dbg !406, !tbaa !183
  %23 = tail call double @sqrt(double noundef %16) #7, !dbg !407
  %24 = fmul double %23, 2.000000e+00, !dbg !408
  %handler_result4 = call double @fAddHandlerDouble(double %24, double 1.000000e+00), !dbg !409
  %25 = fmul double %handler_result4, 0x3CC0000000000000, !dbg !409
  %26 = load double, ptr %4, align 8, !dbg !410, !tbaa !178
  %27 = tail call double @llvm.fabs.f64(double %26), !dbg !411
  %28 = fmul double %27, %25, !dbg !412
  %29 = load double, ptr %21, align 8, !dbg !413, !tbaa !183
  %handler_result5 = call double @fAddHandlerDouble(double %29, double %28), !dbg !413
  store double %handler_result5, ptr %21, align 8, !dbg !413, !tbaa !183
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 66, i32 noundef 11) #7, !dbg !414
  br label %76, !dbg !414

30:                                               ; preds = %10
  tail call void @llvm.dbg.value(metadata double %15, metadata !381, metadata !DIExpression()), !dbg !384
  %handler_result6 = call double @fAddHandlerDouble(double %16, double %0), !dbg !416
  %handler_result7 = call double @fAddHandlerDouble(double %16, double %1), !dbg !417
  %31 = fmul double %handler_result6, %handler_result7, !dbg !417
  %32 = fmul double %31, %3, !dbg !418
  %handler_result8 = call double @fAddHandlerDouble(double %16, double %2), !dbg !419
  %handler_result9 = call double @fAddHandlerDouble(double %16, double 1.000000e+00), !dbg !420
  %33 = fmul double %handler_result8, %handler_result9, !dbg !420
  %34 = fdiv double %32, %33, !dbg !421
  %35 = fmul double %15, %34, !dbg !422
  tail call void @llvm.dbg.value(metadata double %35, metadata !380, metadata !DIExpression()), !dbg !384
  %36 = fcmp ogt double %35, 0.000000e+00, !dbg !423
  br i1 %36, label %37, label %38, !dbg !425

37:                                               ; preds = %30
  tail call void @llvm.dbg.value(metadata double %35, metadata !378, metadata !DIExpression()), !dbg !384
  %handler_result10 = call double @fAddHandlerDouble(double %11, double %35), !dbg !426
  tail call void @llvm.dbg.value(metadata double %handler_result10, metadata !376, metadata !DIExpression()), !dbg !384
  br label %43, !dbg !426

38:                                               ; preds = %30
  %39 = fcmp oeq double %35, 0.000000e+00, !dbg !428
  br i1 %39, label %40, label %41, !dbg !430

40:                                               ; preds = %38
  %handler_result11 = call double @fSubHandlerDouble(double %11, double %12), !dbg !430
  br label %61, !dbg !430

41:                                               ; preds = %38
  %42 = fneg double %35, !dbg !431
  tail call void @llvm.dbg.value(metadata double %42, metadata !379, metadata !DIExpression()), !dbg !384
  %handler_result12 = call double @fSubHandlerDouble(double %12, double %35)
  tail call void @llvm.dbg.value(metadata double %handler_result12, metadata !377, metadata !DIExpression()), !dbg !384
  br label %43

43:                                               ; preds = %41, %37
  %44 = phi double [ %handler_result10, %37 ], [ %11, %41 ], !dbg !384
  %45 = phi double [ %12, %37 ], [ %handler_result12, %41 ], !dbg !384
  %46 = phi double [ %35, %37 ], [ %13, %41 ], !dbg !384
  %47 = phi double [ %14, %37 ], [ %42, %41 ], !dbg !384
  tail call void @llvm.dbg.value(metadata double %47, metadata !379, metadata !DIExpression()), !dbg !384
  tail call void @llvm.dbg.value(metadata double %46, metadata !378, metadata !DIExpression()), !dbg !384
  tail call void @llvm.dbg.value(metadata double %45, metadata !377, metadata !DIExpression()), !dbg !384
  tail call void @llvm.dbg.value(metadata double %44, metadata !376, metadata !DIExpression()), !dbg !384
  %handler_result13 = call double @fSubHandlerDouble(double %44, double %45), !dbg !433
  %48 = fdiv double %15, %handler_result13, !dbg !433
  %49 = tail call double @llvm.fabs.f64(double %48), !dbg !435
  %50 = fcmp olt double %49, 0x3CB0000000000000, !dbg !436
  br i1 %50, label %51, label %55, !dbg !437

51:                                               ; preds = %43
  %52 = fdiv double %35, %handler_result13, !dbg !438
  %53 = tail call double @llvm.fabs.f64(double %52), !dbg !439
  %54 = fcmp olt double %53, 0x3CB0000000000000, !dbg !440
  br i1 %54, label %59, label %55, !dbg !441

55:                                               ; preds = %51, %43
  tail call void @llvm.dbg.value(metadata double %handler_result9, metadata !382, metadata !DIExpression()), !dbg !384
  %handler_result14 = call double @fAddHandlerDouble(double %46, double %47), !dbg !442
  %56 = fdiv double %handler_result14, %handler_result13, !dbg !442
  %57 = tail call double @llvm.fabs.f64(double %56), !dbg !443
  %58 = fcmp ogt double %57, 0x3CB0000000000000, !dbg !444
  br i1 %58, label %10, label %59, !dbg !445, !llvm.loop !446

59:                                               ; preds = %55, %51
  %60 = phi double [ %handler_result9, %55 ], [ %16, %51 ]
  %handler_result15 = call double @fAddHandlerDouble(double %46, double %47), !dbg !450
  br label %61, !dbg !450

61:                                               ; preds = %59, %40
  %62 = phi double [ %handler_result13, %59 ], [ %handler_result11, %40 ], !dbg !450
  %63 = phi double [ %44, %59 ], [ %11, %40 ], !dbg !384
  %64 = phi double [ %45, %59 ], [ %12, %40 ], !dbg !395
  %65 = phi double [ %60, %59 ], [ %16, %40 ], !dbg !384
  %66 = phi double [ %handler_result15, %59 ], [ 0.000000e+00, %40 ], !dbg !451
  tail call void @llvm.dbg.value(metadata double %65, metadata !382, metadata !DIExpression()), !dbg !384
  tail call void @llvm.dbg.value(metadata double poison, metadata !379, metadata !DIExpression()), !dbg !384
  tail call void @llvm.dbg.value(metadata double poison, metadata !378, metadata !DIExpression()), !dbg !384
  tail call void @llvm.dbg.value(metadata double %64, metadata !377, metadata !DIExpression()), !dbg !384
  tail call void @llvm.dbg.value(metadata double %63, metadata !376, metadata !DIExpression()), !dbg !384
  store double %62, ptr %4, align 8, !dbg !452, !tbaa !178
  %67 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !453
  %handler_result16 = call double @fAddHandlerDouble(double %63, double %64), !dbg !454
  %68 = fmul double %handler_result16, 0x3CC0000000000000, !dbg !454
  %handler_result17 = call double @fAddHandlerDouble(double %68, double %66), !dbg !455
  store double %handler_result17, ptr %67, align 8, !dbg !455, !tbaa !183
  %69 = tail call double @sqrt(double noundef %65) #7, !dbg !456
  %70 = fmul double %69, 2.000000e+00, !dbg !457
  %handler_result18 = call double @fAddHandlerDouble(double %70, double 1.000000e+00), !dbg !458
  %71 = fmul double %handler_result18, 0x3CC0000000000000, !dbg !458
  %72 = load double, ptr %4, align 8, !dbg !459, !tbaa !178
  %73 = tail call double @llvm.fabs.f64(double %72), !dbg !460
  %74 = fmul double %73, %71, !dbg !461
  %75 = load double, ptr %67, align 8, !dbg !462, !tbaa !183
  %handler_result19 = call double @fAddHandlerDouble(double %75, double %74), !dbg !462
  store double %handler_result19, ptr %67, align 8, !dbg !462, !tbaa !183
  br label %76, !dbg !463

76:                                               ; preds = %61, %20, %8
  %77 = phi i32 [ 1, %8 ], [ 11, %20 ], [ 0, %61 ], !dbg !384
  ret i32 %77, !dbg !464
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define internal fastcc i32 @hyperg_2F1_luke(double noundef %0, double noundef %1, double noundef %2, double noundef %3, ptr nocapture noundef writeonly %4) unnamed_addr #4 !dbg !465 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !467, metadata !DIExpression()), !dbg !507
  tail call void @llvm.dbg.value(metadata double %1, metadata !468, metadata !DIExpression()), !dbg !507
  tail call void @llvm.dbg.value(metadata double %2, metadata !469, metadata !DIExpression()), !dbg !507
  tail call void @llvm.dbg.value(metadata double %3, metadata !470, metadata !DIExpression()), !dbg !507
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !471, metadata !DIExpression()), !dbg !507
  tail call void @llvm.dbg.value(metadata double 1.000000e+50, metadata !473, metadata !DIExpression()), !dbg !507
  tail call void @llvm.dbg.value(metadata i32 20000, metadata !474, metadata !DIExpression()), !dbg !507
  tail call void @llvm.dbg.value(metadata i32 3, metadata !475, metadata !DIExpression()), !dbg !507
  %6 = fneg double %3, !dbg !508
  tail call void @llvm.dbg.value(metadata double %6, metadata !476, metadata !DIExpression()), !dbg !507
  %7 = fmul double %3, %3, !dbg !509
  %8 = fmul double %7, %6, !dbg !510
  tail call void @llvm.dbg.value(metadata double %8, metadata !477, metadata !DIExpression()), !dbg !507
  %9 = fmul double %0, %1, !dbg !511
  %10 = fdiv double %9, %2, !dbg !512
  tail call void @llvm.dbg.value(metadata double %10, metadata !478, metadata !DIExpression()), !dbg !507
  %handler_result = call double @fAddHandlerDouble(double %0, double 1.000000e+00), !dbg !513
  %handler_result1 = call double @fAddHandlerDouble(double %1, double 1.000000e+00), !dbg !514
  %11 = fmul double %handler_result, %handler_result1, !dbg !514
  %12 = fmul double %2, 2.000000e+00, !dbg !515
  %13 = fdiv double %11, %12, !dbg !516
  tail call void @llvm.dbg.value(metadata double %13, metadata !479, metadata !DIExpression()), !dbg !507
  %handler_result2 = call double @fAddHandlerDouble(double %0, double 2.000000e+00), !dbg !517
  %handler_result3 = call double @fAddHandlerDouble(double %1, double 2.000000e+00), !dbg !518
  %14 = fmul double %handler_result2, %handler_result3, !dbg !518
  %handler_result4 = call double @fAddHandlerDouble(double %2, double 1.000000e+00), !dbg !519
  %15 = fmul double %handler_result4, 2.000000e+00, !dbg !519
  %16 = fdiv double %14, %15, !dbg !520
  tail call void @llvm.dbg.value(metadata double %16, metadata !480, metadata !DIExpression()), !dbg !507
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !481, metadata !DIExpression()), !dbg !507
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !483, metadata !DIExpression()), !dbg !507
  %17 = fmul double %13, %3, !dbg !521
  %handler_result5 = call double @fSubHandlerDouble(double 1.000000e+00, double %17), !dbg !522
  tail call void @llvm.dbg.value(metadata double %handler_result5, metadata !484, metadata !DIExpression()), !dbg !507
  %18 = fmul double %16, %6, !dbg !522
  %19 = fdiv double %13, 3.000000e+00, !dbg !523
  %20 = fmul double %19, %3, !dbg !524
  %handler_result6 = call double @fSubHandlerDouble(double 1.000000e+00, double %20), !dbg !525
  %21 = fmul double %18, %handler_result6, !dbg !525
  %handler_result7 = call double @fAddHandlerDouble(double %21, double 1.000000e+00), !dbg !526
  tail call void @llvm.dbg.value(metadata double %handler_result7, metadata !485, metadata !DIExpression()), !dbg !507
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !486, metadata !DIExpression()), !dbg !507
  %22 = fmul double %10, %3, !dbg !526
  %handler_result8 = call double @fAddHandlerDouble(double %22, double %handler_result5), !dbg !527
  tail call void @llvm.dbg.value(metadata double %handler_result8, metadata !487, metadata !DIExpression()), !dbg !507
  %handler_result9 = call double @fAddHandlerDouble(double %18, double 1.000000e+00), !dbg !528
  %23 = fmul double %10, %handler_result9, !dbg !528
  %24 = fmul double %23, %3, !dbg !529
  %handler_result10 = call double @fAddHandlerDouble(double %handler_result7, double %24), !dbg !530
  %25 = fmul double %10, %13, !dbg !530
  %26 = fdiv double %2, %handler_result4, !dbg !531
  %27 = fmul double %26, %25, !dbg !532
  %28 = fmul double %27, %6, !dbg !533
  %29 = fmul double %28, %3, !dbg !534
  %handler_result11 = call double @fSubHandlerDouble(double %handler_result10, double %29)
  tail call void @llvm.dbg.value(metadata double %handler_result11, metadata !488, metadata !DIExpression()), !dbg !507
  %handler_result12 = call double @fAddHandlerDouble(double %0, double %1)
  %handler_result13 = call double @fAddHandlerDouble(double %handler_result12, double -6.000000e+00)
  %30 = fmul double %handler_result12, 2.000000e+00
  %handler_result14 = call double @fAddHandlerDouble(double %handler_result12, double 6.000000e+00), !dbg !535
  br label %31, !dbg !535

31:                                               ; preds = %122, %5
  %32 = phi double [ %handler_result11, %5 ], [ %127, %122 ], !dbg !536
  %33 = phi double [ %handler_result8, %5 ], [ %123, %122 ], !dbg !537
  %34 = phi double [ 1.000000e+00, %5 ], [ %124, %122 ], !dbg !538
  %35 = phi double [ %handler_result7, %5 ], [ %128, %122 ], !dbg !539
  %36 = phi double [ %handler_result5, %5 ], [ %125, %122 ], !dbg !540
  %37 = phi double [ 1.000000e+00, %5 ], [ %126, %122 ], !dbg !541
  %38 = phi double [ 1.000000e+00, %5 ], [ %92, %122 ], !dbg !507
  %39 = phi i32 [ 3, %5 ], [ %129, %122 ], !dbg !542
  tail call void @llvm.dbg.value(metadata i32 %39, metadata !475, metadata !DIExpression()), !dbg !507
  tail call void @llvm.dbg.value(metadata double %38, metadata !481, metadata !DIExpression()), !dbg !507
  tail call void @llvm.dbg.value(metadata double %37, metadata !483, metadata !DIExpression()), !dbg !507
  tail call void @llvm.dbg.value(metadata double %36, metadata !484, metadata !DIExpression()), !dbg !507
  tail call void @llvm.dbg.value(metadata double %35, metadata !485, metadata !DIExpression()), !dbg !507
  tail call void @llvm.dbg.value(metadata double %34, metadata !486, metadata !DIExpression()), !dbg !507
  tail call void @llvm.dbg.value(metadata double %33, metadata !487, metadata !DIExpression()), !dbg !507
  tail call void @llvm.dbg.value(metadata double %32, metadata !488, metadata !DIExpression()), !dbg !507
  %40 = sitofp i32 %39 to double, !dbg !543
  %handler_result15 = call double @fAddHandlerDouble(double %40, double %0), !dbg !544
  %handler_result16 = call double @fAddHandlerDouble(double %handler_result15, double -1.000000e+00), !dbg !545
  tail call void @llvm.dbg.value(metadata double %handler_result16, metadata !489, metadata !DIExpression()), !dbg !546
  %handler_result17 = call double @fAddHandlerDouble(double %40, double %1), !dbg !547
  %handler_result18 = call double @fAddHandlerDouble(double %handler_result17, double -1.000000e+00), !dbg !548
  tail call void @llvm.dbg.value(metadata double %handler_result18, metadata !491, metadata !DIExpression()), !dbg !546
  %handler_result19 = call double @fAddHandlerDouble(double %40, double %2), !dbg !549
  %handler_result20 = call double @fAddHandlerDouble(double %handler_result19, double -1.000000e+00), !dbg !550
  tail call void @llvm.dbg.value(metadata double %handler_result20, metadata !492, metadata !DIExpression()), !dbg !546
  %handler_result21 = call double @fAddHandlerDouble(double %handler_result15, double -2.000000e+00), !dbg !551
  tail call void @llvm.dbg.value(metadata double %handler_result21, metadata !493, metadata !DIExpression()), !dbg !546
  %handler_result22 = call double @fAddHandlerDouble(double %handler_result17, double -2.000000e+00), !dbg !552
  tail call void @llvm.dbg.value(metadata double %handler_result22, metadata !494, metadata !DIExpression()), !dbg !546
  %handler_result23 = call double @fAddHandlerDouble(double %handler_result19, double -2.000000e+00), !dbg !553
  tail call void @llvm.dbg.value(metadata double %handler_result23, metadata !495, metadata !DIExpression()), !dbg !546
  %41 = shl nuw nsw i32 %39, 1, !dbg !553
  %42 = add nsw i32 %41, -1, !dbg !554
  %43 = sitofp i32 %42 to double, !dbg !555
  tail call void @llvm.dbg.value(metadata double %43, metadata !496, metadata !DIExpression()), !dbg !546
  %44 = add nsw i32 %41, -3, !dbg !556
  %45 = sitofp i32 %44 to double, !dbg !557
  tail call void @llvm.dbg.value(metadata double %45, metadata !497, metadata !DIExpression()), !dbg !546
  %46 = add nsw i32 %41, -5, !dbg !558
  %47 = sitofp i32 %46 to double, !dbg !559
  tail call void @llvm.dbg.value(metadata double %47, metadata !498, metadata !DIExpression()), !dbg !546
  %48 = mul nsw i32 %39, %39, !dbg !560
  %49 = sitofp i32 %48 to double, !dbg !561
  tail call void @llvm.dbg.value(metadata double %49, metadata !499, metadata !DIExpression()), !dbg !546
  %50 = fmul double %49, 3.000000e+00, !dbg !562
  %51 = fmul double %handler_result13, %40, !dbg !563
  %handler_result24 = call double @fAddHandlerDouble(double %51, double %50), !dbg !564
  %handler_result25 = call double @fAddHandlerDouble(double %handler_result24, double 2.000000e+00), !dbg !565
  %handler_result26 = call double @fSubHandlerDouble(double %handler_result25, double %9), !dbg !566
  %handler_result27 = call double @fSubHandlerDouble(double %handler_result26, double %30), !dbg !567
  %52 = fmul double %45, 2.000000e+00, !dbg !567
  %53 = fmul double %handler_result20, %52, !dbg !568
  %54 = fdiv double %handler_result27, %53, !dbg !569
  tail call void @llvm.dbg.value(metadata double %54, metadata !500, metadata !DIExpression()), !dbg !546
  %55 = fmul double %handler_result14, %40, !dbg !570
  %handler_result28 = call double @fSubHandlerDouble(double %50, double %55), !dbg !571
  %handler_result29 = call double @fAddHandlerDouble(double %handler_result28, double 2.000000e+00), !dbg !572
  %handler_result30 = call double @fSubHandlerDouble(double %handler_result29, double %9), !dbg !573
  %56 = fneg double %handler_result30, !dbg !573
  %57 = fmul double %handler_result16, %56, !dbg !574
  %58 = fmul double %handler_result18, %57, !dbg !575
  %59 = fmul double %43, 4.000000e+00, !dbg !576
  %60 = fmul double %59, %45, !dbg !577
  %61 = fmul double %handler_result23, %60, !dbg !578
  %62 = fmul double %handler_result20, %61, !dbg !579
  %63 = fdiv double %58, %62, !dbg !580
  tail call void @llvm.dbg.value(metadata double %63, metadata !501, metadata !DIExpression()), !dbg !546
  %64 = fmul double %handler_result21, %handler_result16, !dbg !581
  %65 = fmul double %handler_result22, %64, !dbg !582
  %66 = fmul double %handler_result18, %65, !dbg !583
  %handler_result31 = call double @fSubHandlerDouble(double %40, double %0), !dbg !584
  %handler_result32 = call double @fAddHandlerDouble(double %handler_result31, double -2.000000e+00), !dbg !585
  %67 = fmul double %handler_result32, %66, !dbg !585
  %handler_result33 = call double @fSubHandlerDouble(double %40, double %1), !dbg !586
  %handler_result34 = call double @fAddHandlerDouble(double %handler_result33, double -2.000000e+00), !dbg !587
  %68 = fmul double %handler_result34, %67, !dbg !587
  %69 = fmul double %45, 8.000000e+00, !dbg !588
  %70 = fmul double %69, %45, !dbg !589
  %71 = fmul double %70, %47, !dbg !590
  %handler_result35 = call double @fAddHandlerDouble(double %handler_result19, double -3.000000e+00), !dbg !591
  %72 = fmul double %handler_result35, %71, !dbg !591
  %73 = fmul double %handler_result23, %72, !dbg !592
  %74 = fmul double %handler_result20, %73, !dbg !593
  %75 = fdiv double %68, %74, !dbg !594
  tail call void @llvm.dbg.value(metadata double %75, metadata !502, metadata !DIExpression()), !dbg !546
  %76 = fneg double %handler_result16, !dbg !595
  %77 = fmul double %handler_result18, %76, !dbg !596
  %handler_result36 = call double @fSubHandlerDouble(double %40, double %2), !dbg !597
  %handler_result37 = call double @fAddHandlerDouble(double %handler_result36, double -1.000000e+00), !dbg !598
  %78 = fmul double %handler_result37, %77, !dbg !598
  %79 = fmul double %handler_result23, %52, !dbg !599
  %80 = fmul double %handler_result20, %79, !dbg !600
  %81 = fdiv double %78, %80, !dbg !601
  tail call void @llvm.dbg.value(metadata double %81, metadata !503, metadata !DIExpression()), !dbg !546
  %82 = fmul double %54, %3, !dbg !602
  %handler_result38 = call double @fSubHandlerDouble(double 1.000000e+00, double %82), !dbg !603
  %83 = fmul double %32, %handler_result38, !dbg !603
  %84 = fmul double %63, %3, !dbg !604
  %handler_result39 = call double @fSubHandlerDouble(double %81, double %84), !dbg !605
  %85 = fmul double %handler_result39, %6, !dbg !605
  %86 = fmul double %33, %85, !dbg !606
  %handler_result40 = call double @fAddHandlerDouble(double %83, double %86), !dbg !607
  %87 = fmul double %8, %75, !dbg !607
  %88 = fmul double %34, %87, !dbg !608
  %handler_result41 = call double @fAddHandlerDouble(double %88, double %handler_result40), !dbg !609
  tail call void @llvm.dbg.value(metadata double %handler_result41, metadata !504, metadata !DIExpression()), !dbg !546
  %89 = fmul double %35, %handler_result38, !dbg !609
  %90 = fmul double %36, %85, !dbg !610
  %handler_result42 = call double @fAddHandlerDouble(double %89, double %90), !dbg !611
  %91 = fmul double %37, %87, !dbg !611
  %handler_result43 = call double @fAddHandlerDouble(double %91, double %handler_result42), !dbg !612
  tail call void @llvm.dbg.value(metadata double %handler_result43, metadata !505, metadata !DIExpression()), !dbg !546
  %92 = fdiv double %handler_result41, %handler_result43, !dbg !612
  tail call void @llvm.dbg.value(metadata double %92, metadata !506, metadata !DIExpression()), !dbg !546
  %handler_result44 = call double @fSubHandlerDouble(double %38, double %92), !dbg !613
  %93 = fdiv double %handler_result44, %38, !dbg !613
  %94 = tail call double @llvm.fabs.f64(double %93), !dbg !614
  tail call void @llvm.dbg.value(metadata double %94, metadata !482, metadata !DIExpression()), !dbg !507
  tail call void @llvm.dbg.value(metadata double %92, metadata !481, metadata !DIExpression()), !dbg !507
  %95 = fcmp olt double %94, 0x3CB0000000000000, !dbg !615
  %96 = icmp ugt i32 %39, 20000
  %97 = select i1 %95, i1 true, i1 %96, !dbg !617
  br i1 %97, label %130, label %98, !dbg !617

98:                                               ; preds = %31
  %99 = tail call double @llvm.fabs.f64(double %handler_result41), !dbg !618
  %100 = fcmp ogt double %99, 1.000000e+50, !dbg !620
  br i1 %100, label %104, label %101, !dbg !621

101:                                              ; preds = %98
  %102 = tail call double @llvm.fabs.f64(double %handler_result43), !dbg !622
  %103 = fcmp ogt double %102, 1.000000e+50, !dbg !623
  br i1 %103, label %104, label %111, !dbg !624

104:                                              ; preds = %101, %98
  %105 = fdiv double %handler_result41, 1.000000e+50, !dbg !625
  tail call void @llvm.dbg.value(metadata double %105, metadata !504, metadata !DIExpression()), !dbg !546
  %106 = fdiv double %handler_result43, 1.000000e+50, !dbg !627
  tail call void @llvm.dbg.value(metadata double %106, metadata !505, metadata !DIExpression()), !dbg !546
  %107 = fdiv double %32, 1.000000e+50, !dbg !628
  tail call void @llvm.dbg.value(metadata double %107, metadata !488, metadata !DIExpression()), !dbg !507
  %108 = fdiv double %35, 1.000000e+50, !dbg !629
  tail call void @llvm.dbg.value(metadata double %108, metadata !485, metadata !DIExpression()), !dbg !507
  %109 = fdiv double %33, 1.000000e+50, !dbg !630
  tail call void @llvm.dbg.value(metadata double %109, metadata !487, metadata !DIExpression()), !dbg !507
  %110 = fdiv double %36, 1.000000e+50, !dbg !631
  tail call void @llvm.dbg.value(metadata double %110, metadata !484, metadata !DIExpression()), !dbg !507
  tail call void @llvm.dbg.value(metadata double poison, metadata !486, metadata !DIExpression()), !dbg !507
  tail call void @llvm.dbg.value(metadata double poison, metadata !483, metadata !DIExpression()), !dbg !507
  br label %122, !dbg !632

111:                                              ; preds = %101
  %112 = fcmp olt double %99, 0x358DEE7A4AD4B81E, !dbg !633
  %113 = fcmp olt double %102, 0x358DEE7A4AD4B81E
  %114 = or i1 %112, %113, !dbg !635
  br i1 %114, label %115, label %122, !dbg !635

115:                                              ; preds = %111
  %116 = fmul double %handler_result41, 1.000000e+50, !dbg !636
  tail call void @llvm.dbg.value(metadata double %116, metadata !504, metadata !DIExpression()), !dbg !546
  %117 = fmul double %handler_result43, 1.000000e+50, !dbg !638
  tail call void @llvm.dbg.value(metadata double %117, metadata !505, metadata !DIExpression()), !dbg !546
  %118 = fmul double %32, 1.000000e+50, !dbg !639
  tail call void @llvm.dbg.value(metadata double %118, metadata !488, metadata !DIExpression()), !dbg !507
  %119 = fmul double %35, 1.000000e+50, !dbg !640
  tail call void @llvm.dbg.value(metadata double %119, metadata !485, metadata !DIExpression()), !dbg !507
  %120 = fmul double %33, 1.000000e+50, !dbg !641
  tail call void @llvm.dbg.value(metadata double %120, metadata !487, metadata !DIExpression()), !dbg !507
  %121 = fmul double %36, 1.000000e+50, !dbg !642
  tail call void @llvm.dbg.value(metadata double %121, metadata !484, metadata !DIExpression()), !dbg !507
  tail call void @llvm.dbg.value(metadata double poison, metadata !486, metadata !DIExpression()), !dbg !507
  tail call void @llvm.dbg.value(metadata double poison, metadata !483, metadata !DIExpression()), !dbg !507
  br label %122, !dbg !643

122:                                              ; preds = %115, %111, %104
  %123 = phi double [ %107, %104 ], [ %118, %115 ], [ %32, %111 ], !dbg !507
  %124 = phi double [ %109, %104 ], [ %120, %115 ], [ %33, %111 ], !dbg !507
  %125 = phi double [ %108, %104 ], [ %119, %115 ], [ %35, %111 ], !dbg !507
  %126 = phi double [ %110, %104 ], [ %121, %115 ], [ %36, %111 ], !dbg !507
  %127 = phi double [ %105, %104 ], [ %116, %115 ], [ %handler_result41, %111 ], !dbg !546
  %128 = phi double [ %106, %104 ], [ %117, %115 ], [ %handler_result43, %111 ], !dbg !546
  tail call void @llvm.dbg.value(metadata double %128, metadata !505, metadata !DIExpression()), !dbg !546
  tail call void @llvm.dbg.value(metadata double %127, metadata !504, metadata !DIExpression()), !dbg !546
  tail call void @llvm.dbg.value(metadata double %126, metadata !484, metadata !DIExpression()), !dbg !507
  tail call void @llvm.dbg.value(metadata double %125, metadata !485, metadata !DIExpression()), !dbg !507
  tail call void @llvm.dbg.value(metadata double %124, metadata !487, metadata !DIExpression()), !dbg !507
  tail call void @llvm.dbg.value(metadata double %123, metadata !488, metadata !DIExpression()), !dbg !507
  %129 = add nuw nsw i32 %39, 1, !dbg !644
  tail call void @llvm.dbg.value(metadata i32 %129, metadata !475, metadata !DIExpression()), !dbg !507
  tail call void @llvm.dbg.value(metadata double %126, metadata !483, metadata !DIExpression()), !dbg !507
  tail call void @llvm.dbg.value(metadata double %125, metadata !484, metadata !DIExpression()), !dbg !507
  tail call void @llvm.dbg.value(metadata double %128, metadata !485, metadata !DIExpression()), !dbg !507
  tail call void @llvm.dbg.value(metadata double %124, metadata !486, metadata !DIExpression()), !dbg !507
  tail call void @llvm.dbg.value(metadata double %123, metadata !487, metadata !DIExpression()), !dbg !507
  tail call void @llvm.dbg.value(metadata double %127, metadata !488, metadata !DIExpression()), !dbg !507
  br label %31

130:                                              ; preds = %31
  tail call void @llvm.dbg.value(metadata i32 %39, metadata !475, metadata !DIExpression()), !dbg !507
  tail call void @llvm.dbg.value(metadata double poison, metadata !483, metadata !DIExpression()), !dbg !507
  tail call void @llvm.dbg.value(metadata double poison, metadata !484, metadata !DIExpression()), !dbg !507
  tail call void @llvm.dbg.value(metadata double poison, metadata !485, metadata !DIExpression()), !dbg !507
  tail call void @llvm.dbg.value(metadata double poison, metadata !486, metadata !DIExpression()), !dbg !507
  tail call void @llvm.dbg.value(metadata double poison, metadata !487, metadata !DIExpression()), !dbg !507
  tail call void @llvm.dbg.value(metadata double poison, metadata !488, metadata !DIExpression()), !dbg !507
  store double %92, ptr %4, align 8, !dbg !645, !tbaa !178
  %131 = fmul double %92, %94, !dbg !646
  %132 = tail call double @llvm.fabs.f64(double %131), !dbg !647
  %133 = fmul double %132, 2.000000e+00, !dbg !648
  %134 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !649
  %handler_result45 = call double @fAddHandlerDouble(double %40, double 1.000000e+00), !dbg !650
  %135 = fmul double %handler_result45, 0x3CC0000000000000, !dbg !650
  %136 = tail call double @llvm.fabs.f64(double %92), !dbg !651
  %137 = fmul double %135, %136, !dbg !652
  %handler_result46 = call double @fAddHandlerDouble(double %137, double %133), !dbg !653
  %138 = tail call double @llvm.fabs.f64(double %0), !dbg !653
  %139 = tail call double @llvm.fabs.f64(double %1), !dbg !654
  %handler_result47 = call double @fAddHandlerDouble(double %138, double %139), !dbg !655
  %handler_result48 = call double @fAddHandlerDouble(double %handler_result47, double 1.000000e+00), !dbg !656
  %140 = fmul double %handler_result48, 8.000000e+00, !dbg !656
  %141 = fmul double %140, %handler_result46, !dbg !657
  store double %141, ptr %134, align 8, !dbg !657, !tbaa !183
  %142 = icmp ugt i32 %39, 19999, !dbg !658
  %143 = select i1 %142, i32 11, i32 0, !dbg !659
  tail call void @llvm.dbg.value(metadata i32 %143, metadata !472, metadata !DIExpression()), !dbg !507
  ret i32 %143, !dbg !660
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @hyperg_2F1_reflect(double noundef %0, double noundef %1, double noundef %2, double noundef %3, ptr nocapture noundef writeonly %4) unnamed_addr #0 !dbg !661 {
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !776
  call void @llvm.dbg.assign(metadata i1 undef, metadata !677, metadata !DIExpression(), metadata !776, metadata ptr %6, metadata !DIExpression()), !dbg !777
  %7 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !778
  call void @llvm.dbg.assign(metadata i1 undef, metadata !678, metadata !DIExpression(), metadata !778, metadata ptr %7, metadata !DIExpression()), !dbg !777
  %8 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !779
  call void @llvm.dbg.assign(metadata i1 undef, metadata !681, metadata !DIExpression(), metadata !779, metadata ptr %8, metadata !DIExpression()), !dbg !777
  %9 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !780
  call void @llvm.dbg.assign(metadata i1 undef, metadata !682, metadata !DIExpression(), metadata !780, metadata ptr %9, metadata !DIExpression()), !dbg !777
  %10 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !781
  call void @llvm.dbg.assign(metadata i1 undef, metadata !683, metadata !DIExpression(), metadata !781, metadata ptr %10, metadata !DIExpression()), !dbg !777
  %11 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !782
  call void @llvm.dbg.assign(metadata i1 undef, metadata !687, metadata !DIExpression(), metadata !782, metadata ptr %11, metadata !DIExpression()), !dbg !783
  %12 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !784
  call void @llvm.dbg.assign(metadata i1 undef, metadata !690, metadata !DIExpression(), metadata !784, metadata ptr %12, metadata !DIExpression()), !dbg !783
  %13 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !785
  call void @llvm.dbg.assign(metadata i1 undef, metadata !691, metadata !DIExpression(), metadata !785, metadata ptr %13, metadata !DIExpression()), !dbg !783
  %14 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !786
  call void @llvm.dbg.assign(metadata i1 undef, metadata !711, metadata !DIExpression(), metadata !786, metadata ptr %14, metadata !DIExpression()), !dbg !787
  %15 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !788
  call void @llvm.dbg.assign(metadata i1 undef, metadata !712, metadata !DIExpression(), metadata !788, metadata ptr %15, metadata !DIExpression()), !dbg !787
  %16 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !789
  call void @llvm.dbg.assign(metadata i1 undef, metadata !713, metadata !DIExpression(), metadata !789, metadata ptr %16, metadata !DIExpression()), !dbg !787
  %17 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !790
  call void @llvm.dbg.assign(metadata i1 undef, metadata !733, metadata !DIExpression(), metadata !790, metadata ptr %17, metadata !DIExpression()), !dbg !791
  %18 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !792
  call void @llvm.dbg.assign(metadata i1 undef, metadata !735, metadata !DIExpression(), metadata !792, metadata ptr %18, metadata !DIExpression()), !dbg !791
  %19 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !793
  call void @llvm.dbg.assign(metadata i1 undef, metadata !738, metadata !DIExpression(), metadata !793, metadata ptr %19, metadata !DIExpression()), !dbg !791
  %20 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !794
  call void @llvm.dbg.assign(metadata i1 undef, metadata !739, metadata !DIExpression(), metadata !794, metadata ptr %20, metadata !DIExpression()), !dbg !791
  %21 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !795
  call void @llvm.dbg.assign(metadata i1 undef, metadata !742, metadata !DIExpression(), metadata !795, metadata ptr %21, metadata !DIExpression()), !dbg !791
  %22 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !796
  call void @llvm.dbg.assign(metadata i1 undef, metadata !743, metadata !DIExpression(), metadata !796, metadata ptr %22, metadata !DIExpression()), !dbg !791
  %23 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !797
  call void @llvm.dbg.assign(metadata i1 undef, metadata !744, metadata !DIExpression(), metadata !797, metadata ptr %23, metadata !DIExpression()), !dbg !791
  %24 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !798
  call void @llvm.dbg.assign(metadata i1 undef, metadata !745, metadata !DIExpression(), metadata !798, metadata ptr %24, metadata !DIExpression()), !dbg !791
  %25 = alloca double, align 8, !DIAssignID !799
  call void @llvm.dbg.assign(metadata i1 undef, metadata !746, metadata !DIExpression(), metadata !799, metadata ptr %25, metadata !DIExpression()), !dbg !791
  %26 = alloca double, align 8, !DIAssignID !800
  call void @llvm.dbg.assign(metadata i1 undef, metadata !747, metadata !DIExpression(), metadata !800, metadata ptr %26, metadata !DIExpression()), !dbg !791
  %27 = alloca double, align 8, !DIAssignID !801
  call void @llvm.dbg.assign(metadata i1 undef, metadata !748, metadata !DIExpression(), metadata !801, metadata ptr %27, metadata !DIExpression()), !dbg !791
  %28 = alloca double, align 8, !DIAssignID !802
  call void @llvm.dbg.assign(metadata i1 undef, metadata !749, metadata !DIExpression(), metadata !802, metadata ptr %28, metadata !DIExpression()), !dbg !791
  %29 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !803
  call void @llvm.dbg.assign(metadata i1 undef, metadata !756, metadata !DIExpression(), metadata !803, metadata ptr %29, metadata !DIExpression()), !dbg !791
  %30 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !804
  call void @llvm.dbg.assign(metadata i1 undef, metadata !757, metadata !DIExpression(), metadata !804, metadata ptr %30, metadata !DIExpression()), !dbg !791
  %31 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !805
  call void @llvm.dbg.assign(metadata i1 undef, metadata !758, metadata !DIExpression(), metadata !805, metadata ptr %31, metadata !DIExpression()), !dbg !791
  %32 = alloca double, align 8, !DIAssignID !806
  call void @llvm.dbg.assign(metadata i1 undef, metadata !759, metadata !DIExpression(), metadata !806, metadata ptr %32, metadata !DIExpression()), !dbg !791
  %33 = alloca double, align 8, !DIAssignID !807
  call void @llvm.dbg.assign(metadata i1 undef, metadata !760, metadata !DIExpression(), metadata !807, metadata ptr %33, metadata !DIExpression()), !dbg !791
  %34 = alloca double, align 8, !DIAssignID !808
  call void @llvm.dbg.assign(metadata i1 undef, metadata !761, metadata !DIExpression(), metadata !808, metadata ptr %34, metadata !DIExpression()), !dbg !791
  tail call void @llvm.dbg.value(metadata double %0, metadata !663, metadata !DIExpression()), !dbg !809
  tail call void @llvm.dbg.value(metadata double %1, metadata !664, metadata !DIExpression()), !dbg !809
  tail call void @llvm.dbg.value(metadata double %2, metadata !665, metadata !DIExpression()), !dbg !809
  tail call void @llvm.dbg.value(metadata double %3, metadata !666, metadata !DIExpression()), !dbg !809
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !667, metadata !DIExpression()), !dbg !809
  %handler_result = call double @fSubHandlerDouble(double %2, double %0), !dbg !810
  %handler_result1 = call double @fSubHandlerDouble(double %handler_result, double %1), !dbg !811
  tail call void @llvm.dbg.value(metadata double %handler_result1, metadata !668, metadata !DIExpression()), !dbg !809
  %handler_result2 = call double @fAddHandlerDouble(double %handler_result1, double 5.000000e-01), !dbg !812
  %35 = tail call double @llvm.floor.f64(double %handler_result2), !dbg !812
  %36 = fptosi double %35 to i32, !dbg !812
  tail call void @llvm.dbg.value(metadata i32 %36, metadata !669, metadata !DIExpression()), !dbg !809
  %37 = sitofp i32 %36 to double, !dbg !813
  %handler_result3 = call double @fSubHandlerDouble(double %handler_result1, double %37), !dbg !814
  %38 = tail call double @llvm.fabs.f64(double %handler_result3), !dbg !814
  %39 = fcmp olt double %38, 0x3D4F400000000000, !dbg !815
  tail call void @llvm.dbg.value(metadata i1 %39, metadata !670, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !809
  br i1 %39, label %40, label %203, !dbg !816

40:                                               ; preds = %5
  %handler_result4 = call double @fSubHandlerDouble(double 1.000000e+00, double %3), !dbg !817
  %handler_result96 = call double @callHandler(i32 12, double %handler_result4, double %handler_result4), !dbg !818
  tail call void @llvm.dbg.value(metadata double %handler_result96, metadata !671, metadata !DIExpression()), !dbg !777
  %41 = tail call double @llvm.fabs.f64(double %handler_result1), !dbg !818
  tail call void @llvm.dbg.value(metadata double %41, metadata !674, metadata !DIExpression()), !dbg !777
  tail call void @llvm.dbg.value(metadata i32 0, metadata !675, metadata !DIExpression()), !dbg !777
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #7, !dbg !819
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #7, !dbg !820
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #7, !dbg !821
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #7, !dbg !822
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #7, !dbg !823
  %42 = fcmp ult double %handler_result1, 0.000000e+00, !dbg !824
  %43 = select i1 %42, double %handler_result1, double 0.000000e+00
  %44 = select i1 %42, double 0.000000e+00, double %handler_result1
  tail call void @llvm.dbg.value(metadata double %44, metadata !679, metadata !DIExpression()), !dbg !777
  tail call void @llvm.dbg.value(metadata double %43, metadata !680, metadata !DIExpression()), !dbg !777
  %handler_result5 = call double @fAddHandlerDouble(double %43, double %0), !dbg !826
  %45 = call i32 @gsl_sf_lngamma_e(double noundef %handler_result5, ptr noundef nonnull %9) #7, !dbg !826
  tail call void @llvm.dbg.value(metadata i32 %45, metadata !685, metadata !DIExpression()), !dbg !777
  %handler_result6 = call double @fAddHandlerDouble(double %43, double %1), !dbg !827
  %46 = call i32 @gsl_sf_lngamma_e(double noundef %handler_result6, ptr noundef nonnull %10) #7, !dbg !827
  tail call void @llvm.dbg.value(metadata i32 %46, metadata !686, metadata !DIExpression()), !dbg !777
  %47 = call i32 @gsl_sf_lngamma_e(double noundef %2, ptr noundef nonnull %8) #7, !dbg !828
  tail call void @llvm.dbg.value(metadata i32 %47, metadata !684, metadata !DIExpression()), !dbg !777
  %48 = fcmp olt double %41, 0x3CB0000000000000, !dbg !829
  br i1 %48, label %49, label %50, !dbg !830

49:                                               ; preds = %40
  call void @llvm.dbg.assign(metadata double 0.000000e+00, metadata !677, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !831, metadata ptr %6, metadata !DIExpression()), !dbg !777
  call void @llvm.dbg.assign(metadata double 0.000000e+00, metadata !677, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64), metadata !831, metadata ptr %6, metadata !DIExpression(DW_OP_plus_uconst, 8)), !dbg !777
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false), !dbg !832, !DIAssignID !831
  br label %102, !dbg !834

50:                                               ; preds = %40
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #7, !dbg !835
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #7, !dbg !836
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #7, !dbg !837
  %51 = call i32 @gsl_sf_lngamma_e(double noundef %41, ptr noundef nonnull %11) #7, !dbg !838
  tail call void @llvm.dbg.value(metadata i32 %51, metadata !692, metadata !DIExpression()), !dbg !783
  %handler_result7 = call double @fAddHandlerDouble(double %44, double %0), !dbg !839
  %52 = call i32 @gsl_sf_lngamma_e(double noundef %handler_result7, ptr noundef nonnull %12) #7, !dbg !839
  tail call void @llvm.dbg.value(metadata i32 %52, metadata !693, metadata !DIExpression()), !dbg !783
  %handler_result8 = call double @fAddHandlerDouble(double %44, double %1), !dbg !840
  %53 = call i32 @gsl_sf_lngamma_e(double noundef %handler_result8, ptr noundef nonnull %13) #7, !dbg !840
  tail call void @llvm.dbg.value(metadata i32 %53, metadata !694, metadata !DIExpression()), !dbg !783
  %54 = icmp eq i32 %52, 0, !dbg !841
  %55 = icmp eq i32 %53, 0
  %56 = select i1 %54, i1 %55, i1 false, !dbg !842
  %57 = icmp eq i32 %51, 0
  %58 = select i1 %56, i1 %57, i1 false, !dbg !842
  br i1 %58, label %59, label %100, !dbg !842

59:                                               ; preds = %50
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !698, metadata !DIExpression()), !dbg !843
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !699, metadata !DIExpression()), !dbg !843
  %60 = load double, ptr %11, align 8, !dbg !844, !tbaa !178
  %61 = load double, ptr %8, align 8, !dbg !845, !tbaa !178
  %handler_result9 = call double @fAddHandlerDouble(double %60, double %61), !dbg !846
  %62 = fmul double %43, %handler_result96, !dbg !846
  %handler_result10 = call double @fAddHandlerDouble(double %62, double %handler_result9), !dbg !847
  %63 = load double, ptr %12, align 8, !dbg !847, !tbaa !178
  %handler_result11 = call double @fSubHandlerDouble(double %handler_result10, double %63), !dbg !848
  %64 = load double, ptr %13, align 8, !dbg !848, !tbaa !178
  %handler_result12 = call double @fSubHandlerDouble(double %handler_result11, double %64), !dbg !849
  tail call void @llvm.dbg.value(metadata double %handler_result12, metadata !700, metadata !DIExpression()), !dbg !843
  %65 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %11, i64 0, i32 1, !dbg !849
  %66 = load double, ptr %65, align 8, !dbg !849, !tbaa !183
  %67 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %8, i64 0, i32 1, !dbg !850
  %68 = load double, ptr %67, align 8, !dbg !850, !tbaa !183
  %handler_result13 = call double @fAddHandlerDouble(double %66, double %68), !dbg !851
  %69 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %12, i64 0, i32 1, !dbg !851
  %70 = load double, ptr %69, align 8, !dbg !851, !tbaa !183
  %handler_result14 = call double @fAddHandlerDouble(double %handler_result13, double %70), !dbg !852
  %71 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %13, i64 0, i32 1, !dbg !852
  %72 = load double, ptr %71, align 8, !dbg !852, !tbaa !183
  %handler_result15 = call double @fAddHandlerDouble(double %handler_result14, double %72), !dbg !853
  %73 = call double @llvm.fabs.f64(double %handler_result12), !dbg !853
  %74 = fmul double %73, 0x3CB0000000000000, !dbg !854
  %handler_result16 = call double @fAddHandlerDouble(double %74, double %handler_result15), !dbg !855
  tail call void @llvm.dbg.value(metadata double %handler_result16, metadata !701, metadata !DIExpression()), !dbg !843
  tail call void @llvm.dbg.value(metadata i32 1, metadata !695, metadata !DIExpression()), !dbg !843
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !698, metadata !DIExpression()), !dbg !843
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !699, metadata !DIExpression()), !dbg !843
  %75 = fcmp ogt double %41, 1.000000e+00, !dbg !855
  br i1 %75, label %76, label %92, !dbg !856

76:                                               ; preds = %59
  %handler_result17 = call double @fAddHandlerDouble(double %43, double 1.000000e+00), !dbg !856
  br label %77, !dbg !856

77:                                               ; preds = %77, %76
  %78 = phi double [ 1.000000e+00, %76 ], [ %90, %77 ]
  %79 = phi i32 [ 1, %76 ], [ %89, %77 ]
  %80 = phi double [ 1.000000e+00, %76 ], [ %handler_result21, %77 ]
  %81 = phi double [ 1.000000e+00, %76 ], [ %88, %77 ]
  tail call void @llvm.dbg.value(metadata i32 %79, metadata !695, metadata !DIExpression()), !dbg !843
  tail call void @llvm.dbg.value(metadata double %80, metadata !698, metadata !DIExpression()), !dbg !843
  tail call void @llvm.dbg.value(metadata double %81, metadata !699, metadata !DIExpression()), !dbg !843
  %82 = add nsw i32 %79, -1, !dbg !857
  tail call void @llvm.dbg.value(metadata i32 %82, metadata !703, metadata !DIExpression()), !dbg !858
  %83 = sitofp i32 %82 to double, !dbg !859
  %handler_result18 = call double @fAddHandlerDouble(double %handler_result5, double %83), !dbg !860
  %handler_result19 = call double @fAddHandlerDouble(double %handler_result6, double %83), !dbg !861
  %84 = fmul double %handler_result18, %handler_result19, !dbg !861
  %handler_result20 = call double @fAddHandlerDouble(double %handler_result17, double %83), !dbg !862
  %85 = fdiv double %84, %handler_result20, !dbg !862
  %86 = fdiv double %85, %78, !dbg !863
  %87 = fmul double %handler_result4, %86, !dbg !864
  %88 = fmul double %81, %87, !dbg !865
  tail call void @llvm.dbg.value(metadata double %88, metadata !699, metadata !DIExpression()), !dbg !843
  %handler_result21 = call double @fAddHandlerDouble(double %80, double %88), !dbg !866
  tail call void @llvm.dbg.value(metadata double %handler_result21, metadata !698, metadata !DIExpression()), !dbg !843
  %89 = add nuw nsw i32 %79, 1, !dbg !866
  tail call void @llvm.dbg.value(metadata i32 %89, metadata !695, metadata !DIExpression()), !dbg !843
  %90 = sitofp i32 %89 to double, !dbg !867
  %91 = fcmp ogt double %41, %90, !dbg !855
  br i1 %91, label %77, label %92, !dbg !856, !llvm.loop !868

92:                                               ; preds = %77, %59
  %93 = phi double [ 1.000000e+00, %59 ], [ %handler_result21, %77 ], !dbg !843
  %94 = call double @llvm.fabs.f64(double %93), !dbg !870
  %95 = fmul double %94, 0x3CB0000000000000, !dbg !871
  %96 = call i32 @gsl_sf_exp_mult_err_e(double noundef %handler_result12, double noundef %handler_result16, double noundef %93, double noundef %95, ptr noundef nonnull %6) #7, !dbg !872
  tail call void @llvm.dbg.value(metadata i32 %96, metadata !702, metadata !DIExpression()), !dbg !843
  %97 = icmp eq i32 %96, 16, !dbg !873
  br i1 %97, label %98, label %101, !dbg !875

98:                                               ; preds = %92
  store double 0x7FF0000000000000, ptr %4, align 8, !dbg !876, !tbaa !178
  %99 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !876
  store double 0x7FF0000000000000, ptr %99, align 8, !dbg !876, !tbaa !183
  call void @gsl_error(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 440, i32 noundef 16) #7, !dbg !879
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #7, !dbg !881
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #7, !dbg !881
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #7, !dbg !881
  br label %201

100:                                              ; preds = %50
  call void @llvm.dbg.assign(metadata double 0.000000e+00, metadata !677, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !882, metadata ptr %6, metadata !DIExpression()), !dbg !777
  call void @llvm.dbg.assign(metadata double 0.000000e+00, metadata !677, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64), metadata !882, metadata ptr %6, metadata !DIExpression(DW_OP_plus_uconst, 8)), !dbg !777
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false), !dbg !883, !DIAssignID !882
  br label %101

101:                                              ; preds = %100, %92
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #7, !dbg !881
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #7, !dbg !881
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #7, !dbg !881
  br label %102

102:                                              ; preds = %101, %49
  %103 = icmp eq i32 %45, 0, !dbg !885
  %104 = icmp eq i32 %46, 0
  %105 = select i1 %103, i1 %104, i1 false, !dbg !886
  br i1 %105, label %106, label %184, !dbg !886

106:                                              ; preds = %102
  tail call void @llvm.dbg.value(metadata i32 2000, metadata !707, metadata !DIExpression()), !dbg !787
  tail call void @llvm.dbg.value(metadata double 0xBFE2788CFC6FB619, metadata !710, metadata !DIExpression()), !dbg !787
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %14) #7, !dbg !887
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %15) #7, !dbg !888
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %16) #7, !dbg !889
  %handler_result22 = call double @fAddHandlerDouble(double %41, double 1.000000e+00), !dbg !890
  %107 = call i32 @gsl_sf_psi_e(double noundef %handler_result22, ptr noundef nonnull %14) #7, !dbg !890
  tail call void @llvm.dbg.value(metadata i32 %107, metadata !714, metadata !DIExpression()), !dbg !787
  %handler_result23 = call double @fAddHandlerDouble(double %44, double %0), !dbg !891
  %108 = call i32 @gsl_sf_psi_e(double noundef %handler_result23, ptr noundef nonnull %15) #7, !dbg !891
  tail call void @llvm.dbg.value(metadata i32 %108, metadata !715, metadata !DIExpression()), !dbg !787
  %handler_result24 = call double @fAddHandlerDouble(double %44, double %1), !dbg !892
  %109 = call i32 @gsl_sf_psi_e(double noundef %handler_result24, ptr noundef nonnull %16) #7, !dbg !892
  tail call void @llvm.dbg.value(metadata i32 %109, metadata !716, metadata !DIExpression()), !dbg !787
  %110 = icmp eq i32 %107, 0, !dbg !893
  %111 = icmp eq i32 %108, 0, !dbg !893
  %112 = select i1 %111, i32 %109, i32 %108, !dbg !893
  %113 = select i1 %110, i32 %112, i32 %107, !dbg !893
  tail call void @llvm.dbg.value(metadata i32 %113, metadata !717, metadata !DIExpression()), !dbg !787
  %114 = load double, ptr %14, align 8, !dbg !894, !tbaa !178
  %handler_result25 = call double @fAddHandlerDouble(double %114, double 0xBFE2788CFC6FB619), !dbg !895
  %115 = load double, ptr %15, align 8, !dbg !895, !tbaa !178
  %handler_result26 = call double @fSubHandlerDouble(double %handler_result25, double %115), !dbg !896
  %116 = load double, ptr %16, align 8, !dbg !896, !tbaa !178
  %handler_result27 = call double @fSubHandlerDouble(double %handler_result26, double %116), !dbg !897
  %handler_result28 = call double @fSubHandlerDouble(double %handler_result27, double %handler_result96), !dbg !898
  tail call void @llvm.dbg.value(metadata double %handler_result28, metadata !718, metadata !DIExpression()), !dbg !787
  %117 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %14, i64 0, i32 1, !dbg !898
  %118 = load double, ptr %117, align 8, !dbg !898, !tbaa !183
  %119 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %15, i64 0, i32 1, !dbg !899
  %120 = load double, ptr %119, align 8, !dbg !899, !tbaa !183
  %handler_result29 = call double @fAddHandlerDouble(double %118, double %120), !dbg !900
  %121 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %16, i64 0, i32 1, !dbg !900
  %122 = load double, ptr %121, align 8, !dbg !900, !tbaa !183
  %handler_result30 = call double @fAddHandlerDouble(double %handler_result29, double %122), !dbg !901
  %123 = call double @llvm.fabs.f64(double %handler_result28), !dbg !901
  %124 = fmul double %123, 0x3CB0000000000000, !dbg !902
  %handler_result31 = call double @fAddHandlerDouble(double %handler_result30, double %124), !dbg !903
  tail call void @llvm.dbg.value(metadata double %handler_result31, metadata !719, metadata !DIExpression()), !dbg !787
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !720, metadata !DIExpression()), !dbg !787
  tail call void @llvm.dbg.value(metadata double %handler_result28, metadata !721, metadata !DIExpression()), !dbg !787
  tail call void @llvm.dbg.value(metadata double %handler_result31, metadata !722, metadata !DIExpression()), !dbg !787
  %125 = load double, ptr %8, align 8, !dbg !903, !tbaa !178
  %126 = fmul double %44, %handler_result96, !dbg !904
  %handler_result32 = call double @fAddHandlerDouble(double %126, double %125), !dbg !905
  %127 = load double, ptr %9, align 8, !dbg !905, !tbaa !178
  %handler_result33 = call double @fSubHandlerDouble(double %handler_result32, double %127), !dbg !906
  %128 = load double, ptr %10, align 8, !dbg !906, !tbaa !178
  %handler_result34 = call double @fSubHandlerDouble(double %handler_result33, double %128), !dbg !907
  tail call void @llvm.dbg.value(metadata double %handler_result34, metadata !723, metadata !DIExpression()), !dbg !787
  %129 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %8, i64 0, i32 1, !dbg !907
  %130 = load double, ptr %129, align 8, !dbg !907, !tbaa !183
  %131 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %9, i64 0, i32 1, !dbg !908
  %132 = load double, ptr %131, align 8, !dbg !908, !tbaa !183
  %handler_result35 = call double @fAddHandlerDouble(double %130, double %132), !dbg !909
  %133 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %10, i64 0, i32 1, !dbg !909
  %134 = load double, ptr %133, align 8, !dbg !909, !tbaa !183
  %handler_result36 = call double @fAddHandlerDouble(double %handler_result35, double %134), !dbg !910
  %135 = call double @llvm.fabs.f64(double %handler_result34), !dbg !910
  %136 = fmul double %135, 0x3CB0000000000000, !dbg !911
  %handler_result37 = call double @fAddHandlerDouble(double %136, double %handler_result36), !dbg !912
  tail call void @llvm.dbg.value(metadata double %handler_result37, metadata !724, metadata !DIExpression()), !dbg !787
  tail call void @llvm.dbg.value(metadata i32 1, metadata !726, metadata !DIExpression()), !dbg !787
  br label %137, !dbg !912

137:                                              ; preds = %165, %106
  %138 = phi double [ %handler_result28, %106 ], [ %handler_result46, %165 ]
  %139 = phi double [ %handler_result31, %106 ], [ %handler_result48, %165 ]
  %140 = phi double [ 1.000000e+00, %106 ], [ %156, %165 ]
  %141 = phi double [ %handler_result28, %106 ], [ %handler_result49, %165 ]
  %142 = phi double [ %handler_result31, %106 ], [ %handler_result51, %165 ]
  %143 = phi i32 [ 1, %106 ], [ %166, %165 ]
  tail call void @llvm.dbg.value(metadata double %138, metadata !718, metadata !DIExpression()), !dbg !787
  tail call void @llvm.dbg.value(metadata double %139, metadata !719, metadata !DIExpression()), !dbg !787
  tail call void @llvm.dbg.value(metadata double %140, metadata !720, metadata !DIExpression()), !dbg !787
  tail call void @llvm.dbg.value(metadata double %141, metadata !721, metadata !DIExpression()), !dbg !787
  tail call void @llvm.dbg.value(metadata double %142, metadata !722, metadata !DIExpression()), !dbg !787
  tail call void @llvm.dbg.value(metadata i32 %143, metadata !726, metadata !DIExpression()), !dbg !787
  %144 = sitofp i32 %143 to double, !dbg !913
  %145 = fdiv double 1.000000e+00, %144, !dbg !914
  %handler_result38 = call double @fAddHandlerDouble(double %41, double %144), !dbg !915
  %146 = fdiv double 1.000000e+00, %handler_result38, !dbg !915
  %handler_result39 = call double @fAddHandlerDouble(double %145, double %146), !dbg !916
  tail call void @llvm.dbg.value(metadata double %handler_result39, metadata !727, metadata !DIExpression()), !dbg !917
  %handler_result40 = call double @fAddHandlerDouble(double %handler_result23, double %144), !dbg !918
  %handler_result41 = call double @fAddHandlerDouble(double %handler_result40, double -1.000000e+00), !dbg !919
  %147 = fdiv double 1.000000e+00, %handler_result41, !dbg !919
  %handler_result42 = call double @fAddHandlerDouble(double %handler_result24, double %144), !dbg !920
  %handler_result43 = call double @fAddHandlerDouble(double %handler_result42, double -1.000000e+00), !dbg !921
  %148 = fdiv double 1.000000e+00, %handler_result43, !dbg !921
  %handler_result44 = call double @fAddHandlerDouble(double %147, double %148), !dbg !922
  tail call void @llvm.dbg.value(metadata double %handler_result44, metadata !731, metadata !DIExpression()), !dbg !917
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !732, metadata !DIExpression()), !dbg !917
  %handler_result45 = call double @fSubHandlerDouble(double %handler_result39, double %handler_result44), !dbg !923
  %handler_result46 = call double @fAddHandlerDouble(double %138, double %handler_result45), !dbg !924
  tail call void @llvm.dbg.value(metadata double %handler_result46, metadata !718, metadata !DIExpression()), !dbg !787
  %149 = call double @llvm.fabs.f64(double %handler_result39), !dbg !924
  %150 = call double @llvm.fabs.f64(double %handler_result44), !dbg !925
  %handler_result47 = call double @fAddHandlerDouble(double %149, double %150), !dbg !926
  %151 = fmul double %handler_result47, 0x3CB0000000000000, !dbg !926
  %handler_result48 = call double @fAddHandlerDouble(double %139, double %151), !dbg !927
  tail call void @llvm.dbg.value(metadata double %handler_result48, metadata !719, metadata !DIExpression()), !dbg !787
  %152 = fmul double %handler_result41, %handler_result43, !dbg !927
  %153 = fmul double %handler_result38, %144, !dbg !928
  %154 = fdiv double %152, %153, !dbg !929
  %155 = fmul double %handler_result4, %154, !dbg !930
  %156 = fmul double %140, %155, !dbg !931
  tail call void @llvm.dbg.value(metadata double %156, metadata !720, metadata !DIExpression()), !dbg !787
  %157 = fmul double %156, %handler_result46, !dbg !932
  tail call void @llvm.dbg.value(metadata double %157, metadata !732, metadata !DIExpression()), !dbg !917
  %handler_result49 = call double @fAddHandlerDouble(double %141, double %157), !dbg !933
  tail call void @llvm.dbg.value(metadata double %handler_result49, metadata !721, metadata !DIExpression()), !dbg !787
  %158 = fmul double %156, %handler_result48, !dbg !933
  %159 = call double @llvm.fabs.f64(double %158), !dbg !934
  %160 = call double @llvm.fabs.f64(double %157), !dbg !935
  %161 = fmul double %160, 0x3CB0000000000000, !dbg !936
  %handler_result50 = call double @fAddHandlerDouble(double %161, double %159), !dbg !937
  %handler_result51 = call double @fAddHandlerDouble(double %142, double %handler_result50), !dbg !938
  tail call void @llvm.dbg.value(metadata double %handler_result51, metadata !722, metadata !DIExpression()), !dbg !787
  %162 = call double @llvm.fabs.f64(double %handler_result49), !dbg !938
  %163 = fmul double %162, 0x3CB0000000000000, !dbg !940
  %164 = fcmp olt double %160, %163, !dbg !941
  br i1 %164, label %168, label %165

165:                                              ; preds = %137
  %166 = add nuw nsw i32 %143, 1, !dbg !942
  tail call void @llvm.dbg.value(metadata double %handler_result46, metadata !718, metadata !DIExpression()), !dbg !787
  tail call void @llvm.dbg.value(metadata double %handler_result48, metadata !719, metadata !DIExpression()), !dbg !787
  tail call void @llvm.dbg.value(metadata double %156, metadata !720, metadata !DIExpression()), !dbg !787
  tail call void @llvm.dbg.value(metadata double %handler_result49, metadata !721, metadata !DIExpression()), !dbg !787
  tail call void @llvm.dbg.value(metadata double %handler_result51, metadata !722, metadata !DIExpression()), !dbg !787
  tail call void @llvm.dbg.value(metadata i32 %166, metadata !726, metadata !DIExpression()), !dbg !787
  %167 = icmp eq i32 %166, 2000, !dbg !943
  br i1 %167, label %168, label %137, !dbg !912, !llvm.loop !944

168:                                              ; preds = %165, %137
  %169 = phi i32 [ %143, %137 ], [ 2000, %165 ], !dbg !946
  tail call void @llvm.dbg.value(metadata double %handler_result49, metadata !721, metadata !DIExpression()), !dbg !787
  tail call void @llvm.dbg.value(metadata double %handler_result51, metadata !722, metadata !DIExpression()), !dbg !787
  %170 = icmp eq i32 %169, 2000, !dbg !947
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !675, metadata !DIExpression()), !dbg !777
  %171 = fcmp oeq double %handler_result49, 0.000000e+00, !dbg !949
  br i1 %171, label %179, label %172, !dbg !951

172:                                              ; preds = %168
  %173 = call i32 @gsl_sf_exp_mult_err_e(double noundef %handler_result34, double noundef %handler_result37, double noundef %handler_result49, double noundef %handler_result51, ptr noundef nonnull %7) #7, !dbg !952
  tail call void @llvm.dbg.value(metadata i32 %173, metadata !725, metadata !DIExpression()), !dbg !787
  %174 = icmp eq i32 %173, 16, !dbg !954
  br i1 %174, label %183, label %175, !dbg !956

175:                                              ; preds = %172
  %176 = load double, ptr %7, align 8, !dbg !957, !tbaa !178
  %177 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %7, i64 0, i32 1
  %178 = load double, ptr %177, align 8, !dbg !958, !tbaa !183
  br label %179, !dbg !956

179:                                              ; preds = %175, %168
  %180 = phi double [ %178, %175 ], [ 0.000000e+00, %168 ], !dbg !958
  %181 = phi double [ %176, %175 ], [ 0.000000e+00, %168 ], !dbg !957
  %182 = select i1 %170, i32 11, i32 %113, !dbg !959
  tail call void @llvm.dbg.value(metadata i32 %182, metadata !675, metadata !DIExpression()), !dbg !777
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %16) #7, !dbg !960
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %15) #7, !dbg !960
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %14) #7, !dbg !960
  br label %184

183:                                              ; preds = %172
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false), !dbg !961
  call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 509, i32 noundef 16) #7, !dbg !963
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !675, metadata !DIExpression()), !dbg !777
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %16) #7, !dbg !960
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %15) #7, !dbg !960
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %14) #7, !dbg !960
  br label %201

184:                                              ; preds = %179, %102
  %185 = phi double [ %180, %179 ], [ 0.000000e+00, %102 ], !dbg !958
  %186 = phi double [ %181, %179 ], [ 0.000000e+00, %102 ], !dbg !957
  %187 = phi i32 [ %182, %179 ], [ 0, %102 ], !dbg !777
  tail call void @llvm.dbg.value(metadata i32 %187, metadata !675, metadata !DIExpression()), !dbg !777
  %188 = and i32 %36, 1, !dbg !965
  %189 = icmp eq i32 %188, 0, !dbg !965
  tail call void @llvm.dbg.value(metadata double poison, metadata !676, metadata !DIExpression()), !dbg !777
  %190 = load double, ptr %6, align 8, !dbg !966, !tbaa !178
  %191 = fneg double %186, !dbg !967
  %192 = select i1 %189, double %186, double %191, !dbg !967
  %handler_result52 = call double @fAddHandlerDouble(double %190, double %192), !dbg !968
  store double %handler_result52, ptr %4, align 8, !dbg !968, !tbaa !178
  %193 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !969
  %194 = load double, ptr %193, align 8, !dbg !969, !tbaa !183
  %handler_result53 = call double @fAddHandlerDouble(double %194, double %185), !dbg !970
  %195 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !970
  %196 = call double @llvm.fabs.f64(double %190), !dbg !971
  %197 = call double @llvm.fabs.f64(double %186), !dbg !972
  %handler_result54 = call double @fAddHandlerDouble(double %196, double %197), !dbg !973
  %198 = fmul double %handler_result54, 0x3CC0000000000000, !dbg !973
  %handler_result55 = call double @fAddHandlerDouble(double %198, double %handler_result53), !dbg !974
  %199 = call double @llvm.fabs.f64(double %handler_result52), !dbg !974
  %200 = fmul double %199, 0x3CC0000000000000, !dbg !975
  %handler_result56 = call double @fAddHandlerDouble(double %200, double %handler_result55), !dbg !976
  store double %handler_result56, ptr %195, align 8, !dbg !976, !tbaa !183
  br label %201, !dbg !977

201:                                              ; preds = %184, %183, %98
  %202 = phi i32 [ %187, %184 ], [ 16, %183 ], [ 16, %98 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #7, !dbg !978
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #7, !dbg !978
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #7, !dbg !978
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #7, !dbg !978
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #7, !dbg !978
  br label %351

203:                                              ; preds = %5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %17) #7, !dbg !979
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %18) #7, !dbg !979
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %19) #7, !dbg !980
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %20) #7, !dbg !980
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %21) #7, !dbg !981
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %22) #7, !dbg !981
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %23) #7, !dbg !981
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %24) #7, !dbg !981
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %25) #7, !dbg !982
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %26) #7, !dbg !982
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %27) #7, !dbg !982
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %28) #7, !dbg !982
  %204 = call i32 @gsl_sf_lngamma_sgn_e(double noundef %handler_result, ptr noundef nonnull %21, ptr noundef nonnull %25) #7, !dbg !983
  tail call void @llvm.dbg.value(metadata i32 %204, metadata !750, metadata !DIExpression()), !dbg !791
  %handler_result57 = call double @fSubHandlerDouble(double %2, double %1), !dbg !984
  %205 = call i32 @gsl_sf_lngamma_sgn_e(double noundef %handler_result57, ptr noundef nonnull %22, ptr noundef nonnull %26) #7, !dbg !984
  tail call void @llvm.dbg.value(metadata i32 %205, metadata !751, metadata !DIExpression()), !dbg !791
  %206 = call i32 @gsl_sf_lngamma_sgn_e(double noundef %0, ptr noundef nonnull %23, ptr noundef nonnull %27) #7, !dbg !985
  tail call void @llvm.dbg.value(metadata i32 %206, metadata !752, metadata !DIExpression()), !dbg !791
  %207 = call i32 @gsl_sf_lngamma_sgn_e(double noundef %1, ptr noundef nonnull %24, ptr noundef nonnull %28) #7, !dbg !986
  tail call void @llvm.dbg.value(metadata i32 %207, metadata !753, metadata !DIExpression()), !dbg !791
  %208 = icmp eq i32 %204, 0, !dbg !987
  %209 = icmp eq i32 %205, 0, !dbg !988
  %210 = select i1 %208, i1 %209, i1 false, !dbg !988
  tail call void @llvm.dbg.value(metadata i1 %210, metadata !754, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !791
  %211 = icmp eq i32 %206, 0, !dbg !989
  %212 = icmp eq i32 %207, 0, !dbg !990
  %213 = select i1 %211, i1 %212, i1 false, !dbg !990
  tail call void @llvm.dbg.value(metadata i1 %213, metadata !755, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !791
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %29) #7, !dbg !991
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %30) #7, !dbg !991
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %31) #7, !dbg !991
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %32) #7, !dbg !992
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %33) #7, !dbg !992
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %34) #7, !dbg !992
  %214 = call i32 @gsl_sf_lngamma_sgn_e(double noundef %2, ptr noundef nonnull %29, ptr noundef nonnull %32) #7, !dbg !993
  %215 = call i32 @gsl_sf_lngamma_sgn_e(double noundef %handler_result1, ptr noundef nonnull %30, ptr noundef nonnull %33) #7, !dbg !994
  %216 = fneg double %handler_result1, !dbg !995
  %217 = call i32 @gsl_sf_lngamma_sgn_e(double noundef %216, ptr noundef nonnull %31, ptr noundef nonnull %34) #7, !dbg !996
  %218 = load double, ptr %32, align 8, !dbg !997, !tbaa !196
  %219 = load double, ptr %33, align 8, !dbg !998, !tbaa !196
  %220 = fmul double %218, %219, !dbg !999
  %221 = load double, ptr %25, align 8, !dbg !1000, !tbaa !196
  %222 = fmul double %220, %221, !dbg !1001
  %223 = load double, ptr %26, align 8, !dbg !1002, !tbaa !196
  %224 = fmul double %222, %223, !dbg !1003
  tail call void @llvm.dbg.value(metadata double %224, metadata !736, metadata !DIExpression()), !dbg !791
  %225 = load double, ptr %34, align 8, !dbg !1004, !tbaa !196
  %226 = fmul double %218, %225, !dbg !1005
  %227 = load double, ptr %27, align 8, !dbg !1006, !tbaa !196
  %228 = fmul double %226, %227, !dbg !1007
  %229 = load double, ptr %28, align 8, !dbg !1008, !tbaa !196
  %230 = fmul double %228, %229, !dbg !1009
  tail call void @llvm.dbg.value(metadata double %230, metadata !737, metadata !DIExpression()), !dbg !791
  %231 = select i1 %210, i1 %213, i1 false, !dbg !1010
  br i1 %231, label %232, label %267, !dbg !1010

232:                                              ; preds = %203
  %233 = load double, ptr %29, align 8, !dbg !1011, !tbaa !178
  %234 = load double, ptr %30, align 8, !dbg !1012, !tbaa !178
  %handler_result58 = call double @fAddHandlerDouble(double %233, double %234), !dbg !1013
  %235 = load double, ptr %21, align 8, !dbg !1013, !tbaa !178
  %handler_result59 = call double @fSubHandlerDouble(double %handler_result58, double %235), !dbg !1014
  %236 = load double, ptr %22, align 8, !dbg !1014, !tbaa !178
  %handler_result60 = call double @fSubHandlerDouble(double %handler_result59, double %236), !dbg !1015
  tail call void @llvm.dbg.value(metadata double %handler_result60, metadata !762, metadata !DIExpression()), !dbg !1016
  %237 = load double, ptr %31, align 8, !dbg !1015, !tbaa !178
  %handler_result61 = call double @fAddHandlerDouble(double %233, double %237), !dbg !1017
  %238 = load double, ptr %23, align 8, !dbg !1017, !tbaa !178
  %handler_result62 = call double @fSubHandlerDouble(double %handler_result61, double %238), !dbg !1018
  %239 = load double, ptr %24, align 8, !dbg !1018, !tbaa !178
  %handler_result63 = call double @fSubHandlerDouble(double %handler_result62, double %239), !dbg !1019
  %handler_result64 = call double @fSubHandlerDouble(double 1.000000e+00, double %3), !dbg !1020
  %handler_result97 = call double @callHandler(i32 12, double %handler_result64, double %handler_result64), !dbg !1021
  %240 = fmul double %handler_result1, %handler_result97, !dbg !1021
  %handler_result65 = call double @fAddHandlerDouble(double %handler_result63, double %240), !dbg !1022
  tail call void @llvm.dbg.value(metadata double %handler_result65, metadata !765, metadata !DIExpression()), !dbg !1016
  tail call void @llvm.dbg.value(metadata double poison, metadata !766, metadata !DIExpression()), !dbg !1016
  tail call void @llvm.dbg.value(metadata double poison, metadata !767, metadata !DIExpression()), !dbg !1016
  %241 = fcmp olt double %handler_result60, 0x40862E42FEFA39EF, !dbg !1022
  %242 = fcmp olt double %handler_result65, 0x40862E42FEFA39EF
  %243 = select i1 %241, i1 %242, i1 false, !dbg !1024
  br i1 %243, label %244, label %265, !dbg !1024

244:                                              ; preds = %232
  %245 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %29, i64 0, i32 1, !dbg !1025
  %246 = load double, ptr %245, align 8, !dbg !1025, !tbaa !183
  %247 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %31, i64 0, i32 1, !dbg !1026
  %248 = load double, ptr %247, align 8, !dbg !1026, !tbaa !183
  %handler_result66 = call double @fAddHandlerDouble(double %246, double %248), !dbg !1027
  %249 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %23, i64 0, i32 1, !dbg !1027
  %250 = load double, ptr %249, align 8, !dbg !1027, !tbaa !183
  %handler_result67 = call double @fAddHandlerDouble(double %handler_result66, double %250), !dbg !1028
  %251 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %24, i64 0, i32 1, !dbg !1028
  %252 = load double, ptr %251, align 8, !dbg !1028, !tbaa !183
  %handler_result68 = call double @fAddHandlerDouble(double %handler_result67, double %252), !dbg !1029
  tail call void @llvm.dbg.value(metadata double %handler_result68, metadata !767, metadata !DIExpression()), !dbg !1016
  %253 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %30, i64 0, i32 1, !dbg !1029
  %254 = load double, ptr %253, align 8, !dbg !1029, !tbaa !183
  %handler_result69 = call double @fAddHandlerDouble(double %246, double %254), !dbg !1030
  %255 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %21, i64 0, i32 1, !dbg !1030
  %256 = load double, ptr %255, align 8, !dbg !1030, !tbaa !183
  %handler_result70 = call double @fAddHandlerDouble(double %handler_result69, double %256), !dbg !1031
  %257 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %22, i64 0, i32 1, !dbg !1031
  %258 = load double, ptr %257, align 8, !dbg !1031, !tbaa !183
  %handler_result71 = call double @fAddHandlerDouble(double %handler_result70, double %258), !dbg !1032
  tail call void @llvm.dbg.value(metadata double %handler_result71, metadata !766, metadata !DIExpression()), !dbg !1016
  %259 = call i32 @gsl_sf_exp_err_e(double noundef %handler_result60, double noundef %handler_result71, ptr noundef nonnull %17) #7, !dbg !1032
  %260 = call i32 @gsl_sf_exp_err_e(double noundef %handler_result65, double noundef %handler_result68, ptr noundef nonnull %18) #7, !dbg !1034
  %261 = load double, ptr %17, align 8, !dbg !1035, !tbaa !178
  %262 = fmul double %224, %261, !dbg !1035
  store double %262, ptr %17, align 8, !dbg !1035, !tbaa !178, !DIAssignID !1036
  call void @llvm.dbg.assign(metadata double %262, metadata !733, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !1036, metadata ptr %17, metadata !DIExpression()), !dbg !791
  %263 = load double, ptr %18, align 8, !dbg !1037, !tbaa !178
  %264 = fmul double %230, %263, !dbg !1037
  store double %264, ptr %18, align 8, !dbg !1037, !tbaa !178, !DIAssignID !1038
  call void @llvm.dbg.assign(metadata double %264, metadata !735, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !1038, metadata ptr %18, metadata !DIExpression()), !dbg !791
  br label %315

265:                                              ; preds = %232
  store double 0x7FF0000000000000, ptr %4, align 8, !dbg !1039, !tbaa !178
  %266 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !1039
  store double 0x7FF0000000000000, ptr %266, align 8, !dbg !1039, !tbaa !183
  call void @gsl_error(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 570, i32 noundef 16) #7, !dbg !1042
  br label %349

267:                                              ; preds = %203
  tail call void @llvm.dbg.value(metadata i1 %210, metadata !754, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !791
  %268 = xor i1 %210, true, !dbg !1044
  %269 = select i1 %268, i1 true, i1 %213, !dbg !1045
  br i1 %269, label %290, label %270, !dbg !1045

270:                                              ; preds = %267
  %271 = load double, ptr %29, align 8, !dbg !1046, !tbaa !178
  %272 = load double, ptr %30, align 8, !dbg !1047, !tbaa !178
  %handler_result72 = call double @fAddHandlerDouble(double %271, double %272), !dbg !1048
  %273 = load double, ptr %21, align 8, !dbg !1048, !tbaa !178
  %handler_result73 = call double @fSubHandlerDouble(double %handler_result72, double %273), !dbg !1049
  %274 = load double, ptr %22, align 8, !dbg !1049, !tbaa !178
  %handler_result74 = call double @fSubHandlerDouble(double %handler_result73, double %274), !dbg !1050
  tail call void @llvm.dbg.value(metadata double %handler_result74, metadata !768, metadata !DIExpression()), !dbg !1052
  tail call void @llvm.dbg.value(metadata double poison, metadata !771, metadata !DIExpression()), !dbg !1052
  %275 = fcmp olt double %handler_result74, 0x40862E42FEFA39EF, !dbg !1050
  br i1 %275, label %276, label %288, !dbg !1053

276:                                              ; preds = %270
  %277 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %29, i64 0, i32 1, !dbg !1054
  %278 = load double, ptr %277, align 8, !dbg !1054, !tbaa !183
  %279 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %30, i64 0, i32 1, !dbg !1055
  %280 = load double, ptr %279, align 8, !dbg !1055, !tbaa !183
  %handler_result75 = call double @fAddHandlerDouble(double %278, double %280), !dbg !1056
  %281 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %21, i64 0, i32 1, !dbg !1056
  %282 = load double, ptr %281, align 8, !dbg !1056, !tbaa !183
  %handler_result76 = call double @fAddHandlerDouble(double %handler_result75, double %282), !dbg !1057
  %283 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %22, i64 0, i32 1, !dbg !1057
  %284 = load double, ptr %283, align 8, !dbg !1057, !tbaa !183
  %handler_result77 = call double @fAddHandlerDouble(double %handler_result76, double %284), !dbg !1058
  tail call void @llvm.dbg.value(metadata double %handler_result77, metadata !771, metadata !DIExpression()), !dbg !1052
  %285 = call i32 @gsl_sf_exp_err_e(double noundef %handler_result74, double noundef %handler_result77, ptr noundef nonnull %17) #7, !dbg !1058
  %286 = load double, ptr %17, align 8, !dbg !1060, !tbaa !178
  %287 = fmul double %224, %286, !dbg !1060
  store double %287, ptr %17, align 8, !dbg !1060, !tbaa !178, !DIAssignID !1061
  call void @llvm.dbg.assign(metadata double %287, metadata !733, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !1061, metadata ptr %17, metadata !DIExpression()), !dbg !791
  call void @llvm.dbg.assign(metadata double 0.000000e+00, metadata !735, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !1062, metadata ptr %18, metadata !DIExpression()), !dbg !791
  call void @llvm.dbg.assign(metadata double 0.000000e+00, metadata !735, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64), metadata !1062, metadata ptr %18, metadata !DIExpression(DW_OP_plus_uconst, 8)), !dbg !791
  %handler_result78 = call double @fSubHandlerDouble(double 1.000000e+00, double %3), !dbg !1063
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %18, i8 0, i64 16, i1 false), !dbg !1063, !DIAssignID !1062
  br label %315

288:                                              ; preds = %270
  store double 0x7FF0000000000000, ptr %4, align 8, !dbg !1064, !tbaa !178
  %289 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !1064
  store double 0x7FF0000000000000, ptr %289, align 8, !dbg !1064, !tbaa !183
  call void @gsl_error(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 583, i32 noundef 16) #7, !dbg !1067
  br label %349

290:                                              ; preds = %267
  %291 = select i1 %268, i1 %213, i1 false, !dbg !1069
  br i1 %291, label %292, label %313, !dbg !1069

292:                                              ; preds = %290
  %293 = load double, ptr %29, align 8, !dbg !1070, !tbaa !178
  %294 = load double, ptr %31, align 8, !dbg !1071, !tbaa !178
  %handler_result79 = call double @fAddHandlerDouble(double %293, double %294), !dbg !1072
  %295 = load double, ptr %23, align 8, !dbg !1072, !tbaa !178
  %handler_result80 = call double @fSubHandlerDouble(double %handler_result79, double %295), !dbg !1073
  %296 = load double, ptr %24, align 8, !dbg !1073, !tbaa !178
  %handler_result81 = call double @fSubHandlerDouble(double %handler_result80, double %296), !dbg !1074
  %handler_result82 = call double @fSubHandlerDouble(double 1.000000e+00, double %3), !dbg !1075
  %handler_result98 = call double @callHandler(i32 12, double %handler_result82, double %handler_result82), !dbg !1076
  %297 = fmul double %handler_result1, %handler_result98, !dbg !1076
  %handler_result83 = call double @fAddHandlerDouble(double %handler_result81, double %297), !dbg !1077
  tail call void @llvm.dbg.value(metadata double %handler_result83, metadata !772, metadata !DIExpression()), !dbg !1079
  tail call void @llvm.dbg.value(metadata double poison, metadata !775, metadata !DIExpression()), !dbg !1079
  %298 = fcmp olt double %handler_result83, 0x40862E42FEFA39EF, !dbg !1077
  br i1 %298, label %299, label %311, !dbg !1080

299:                                              ; preds = %292
  %300 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %29, i64 0, i32 1, !dbg !1081
  %301 = load double, ptr %300, align 8, !dbg !1081, !tbaa !183
  %302 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %31, i64 0, i32 1, !dbg !1082
  %303 = load double, ptr %302, align 8, !dbg !1082, !tbaa !183
  %handler_result84 = call double @fAddHandlerDouble(double %301, double %303), !dbg !1083
  %304 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %23, i64 0, i32 1, !dbg !1083
  %305 = load double, ptr %304, align 8, !dbg !1083, !tbaa !183
  %handler_result85 = call double @fAddHandlerDouble(double %handler_result84, double %305), !dbg !1084
  %306 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %24, i64 0, i32 1, !dbg !1084
  %307 = load double, ptr %306, align 8, !dbg !1084, !tbaa !183
  %handler_result86 = call double @fAddHandlerDouble(double %handler_result85, double %307), !dbg !1085
  tail call void @llvm.dbg.value(metadata double %handler_result86, metadata !775, metadata !DIExpression()), !dbg !1079
  call void @llvm.dbg.assign(metadata double 0.000000e+00, metadata !733, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !1087, metadata ptr %17, metadata !DIExpression()), !dbg !791
  call void @llvm.dbg.assign(metadata double 0.000000e+00, metadata !733, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64), metadata !1087, metadata ptr %17, metadata !DIExpression(DW_OP_plus_uconst, 8)), !dbg !791
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %17, i8 0, i64 16, i1 false), !dbg !1085, !DIAssignID !1087
  %308 = call i32 @gsl_sf_exp_err_e(double noundef %handler_result83, double noundef %handler_result86, ptr noundef nonnull %18) #7, !dbg !1088
  %309 = load double, ptr %18, align 8, !dbg !1089, !tbaa !178
  %310 = fmul double %230, %309, !dbg !1089
  store double %310, ptr %18, align 8, !dbg !1089, !tbaa !178, !DIAssignID !1090
  call void @llvm.dbg.assign(metadata double %310, metadata !735, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !1090, metadata ptr %18, metadata !DIExpression()), !dbg !791
  br label %315

311:                                              ; preds = %292
  store double 0x7FF0000000000000, ptr %4, align 8, !dbg !1091, !tbaa !178
  %312 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !1091
  store double 0x7FF0000000000000, ptr %312, align 8, !dbg !1091, !tbaa !183
  call void @gsl_error(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 596, i32 noundef 16) #7, !dbg !1094
  br label %349

313:                                              ; preds = %290
  store double 0.000000e+00, ptr %17, align 8, !dbg !1096, !tbaa !178, !DIAssignID !1098
  call void @llvm.dbg.assign(metadata double 0.000000e+00, metadata !733, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !1098, metadata ptr %17, metadata !DIExpression()), !dbg !791
  store double 0.000000e+00, ptr %18, align 8, !dbg !1099, !tbaa !178, !DIAssignID !1100
  call void @llvm.dbg.assign(metadata double 0.000000e+00, metadata !735, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !1100, metadata ptr %18, metadata !DIExpression()), !dbg !791
  store double 0.000000e+00, ptr %4, align 8, !dbg !1101, !tbaa !178
  %314 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !1101
  store double 0x10000000000000, ptr %314, align 8, !dbg !1101, !tbaa !183
  call void @gsl_error(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 602, i32 noundef 15) #7, !dbg !1103
  br label %349, !dbg !1103

315:                                              ; preds = %299, %276, %244
  %316 = phi double [ %handler_result82, %299 ], [ %handler_result78, %276 ], [ %handler_result64, %244 ], !dbg !1105
  %handler_result87 = call double @fSubHandlerDouble(double 1.000000e+00, double %handler_result1), !dbg !1106
  %317 = call fastcc i32 @hyperg_2F1_series(double noundef %0, double noundef %1, double noundef %handler_result87, double noundef %316, ptr noundef nonnull %19), !dbg !1106, !range !264
  tail call void @llvm.dbg.value(metadata i32 %317, metadata !740, metadata !DIExpression()), !dbg !791
  %handler_result88 = call double @fAddHandlerDouble(double %handler_result1, double 1.000000e+00), !dbg !1107
  %318 = call fastcc i32 @hyperg_2F1_series(double noundef %handler_result, double noundef %handler_result57, double noundef %handler_result88, double noundef %316, ptr noundef nonnull %20), !dbg !1107, !range !264
  tail call void @llvm.dbg.value(metadata i32 %318, metadata !741, metadata !DIExpression()), !dbg !791
  %319 = load double, ptr %17, align 8, !dbg !1108, !tbaa !178
  %320 = load double, ptr %19, align 8, !dbg !1109, !tbaa !178
  %321 = fmul double %319, %320, !dbg !1110
  %322 = load double, ptr %18, align 8, !dbg !1111, !tbaa !178
  %323 = load double, ptr %20, align 8, !dbg !1112, !tbaa !178
  %324 = fmul double %322, %323, !dbg !1113
  %handler_result89 = call double @fAddHandlerDouble(double %321, double %324), !dbg !1114
  store double %handler_result89, ptr %4, align 8, !dbg !1114, !tbaa !178
  %325 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %19, i64 0, i32 1, !dbg !1115
  %326 = load double, ptr %325, align 8, !dbg !1115, !tbaa !183
  %327 = fmul double %319, %326, !dbg !1116
  %328 = call double @llvm.fabs.f64(double %327), !dbg !1117
  %329 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %20, i64 0, i32 1, !dbg !1118
  %330 = load double, ptr %329, align 8, !dbg !1118, !tbaa !183
  %331 = fmul double %322, %330, !dbg !1119
  %332 = call double @llvm.fabs.f64(double %331), !dbg !1120
  %handler_result90 = call double @fAddHandlerDouble(double %328, double %332), !dbg !1121
  %333 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !1121
  %334 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %17, i64 0, i32 1, !dbg !1122
  %335 = load double, ptr %334, align 8, !dbg !1122, !tbaa !183
  %336 = fmul double %320, %335, !dbg !1123
  %337 = call double @llvm.fabs.f64(double %336), !dbg !1124
  %338 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %18, i64 0, i32 1, !dbg !1125
  %339 = load double, ptr %338, align 8, !dbg !1125, !tbaa !183
  %340 = fmul double %323, %339, !dbg !1126
  %341 = call double @llvm.fabs.f64(double %340), !dbg !1127
  %handler_result91 = call double @fAddHandlerDouble(double %337, double %341), !dbg !1128
  %handler_result92 = call double @fAddHandlerDouble(double %handler_result90, double %handler_result91), !dbg !1129
  %342 = call double @llvm.fabs.f64(double %321), !dbg !1129
  %343 = call double @llvm.fabs.f64(double %324), !dbg !1130
  %handler_result93 = call double @fAddHandlerDouble(double %342, double %343), !dbg !1131
  %344 = fmul double %handler_result93, 0x3CC0000000000000, !dbg !1131
  %handler_result94 = call double @fAddHandlerDouble(double %344, double %handler_result92), !dbg !1132
  %345 = call double @llvm.fabs.f64(double %handler_result89), !dbg !1132
  %346 = fmul double %345, 0x3CC0000000000000, !dbg !1133
  %handler_result95 = call double @fAddHandlerDouble(double %346, double %handler_result94), !dbg !1134
  store double %handler_result95, ptr %333, align 8, !dbg !1134, !tbaa !183
  %347 = icmp eq i32 %317, 0, !dbg !1135
  %348 = select i1 %347, i32 %318, i32 %317, !dbg !1137
  br label %349, !dbg !1137

349:                                              ; preds = %315, %313, %311, %288, %265
  %350 = phi i32 [ 16, %265 ], [ 16, %311 ], [ 15, %313 ], [ 16, %288 ], [ %348, %315 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %34) #7, !dbg !1138
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %33) #7, !dbg !1138
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %32) #7, !dbg !1138
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %31) #7, !dbg !1138
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %30) #7, !dbg !1138
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %29) #7, !dbg !1138
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %28) #7, !dbg !1138
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %27) #7, !dbg !1138
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %26) #7, !dbg !1138
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %25) #7, !dbg !1138
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %24) #7, !dbg !1138
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %23) #7, !dbg !1138
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %22) #7, !dbg !1138
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %21) #7, !dbg !1138
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %20) #7, !dbg !1138
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %19) #7, !dbg !1138
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %18) #7, !dbg !1138
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %17) #7, !dbg !1138
  br label %351

351:                                              ; preds = %349, %201
  %352 = phi i32 [ %202, %201 ], [ %350, %349 ], !dbg !1139
  ret i32 %352, !dbg !1140
}

declare !dbg !1141 i32 @gsl_sf_hyperg_1F1_e(double noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_hyperg_2F1_conj_e(double noundef %0, double noundef %1, double noundef %2, double noundef %3, ptr nocapture noundef %4) local_unnamed_addr #0 !dbg !1145 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !1147, metadata !DIExpression()), !dbg !1155
  tail call void @llvm.dbg.value(metadata double %1, metadata !1148, metadata !DIExpression()), !dbg !1155
  tail call void @llvm.dbg.value(metadata double %2, metadata !1149, metadata !DIExpression()), !dbg !1155
  tail call void @llvm.dbg.value(metadata double %3, metadata !1150, metadata !DIExpression()), !dbg !1155
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1151, metadata !DIExpression()), !dbg !1155
  %6 = tail call double @llvm.fabs.f64(double %3), !dbg !1156
  tail call void @llvm.dbg.value(metadata double %6, metadata !1152, metadata !DIExpression()), !dbg !1155
  tail call void @llvm.dbg.value(metadata double poison, metadata !1153, metadata !DIExpression()), !dbg !1155
  %7 = fcmp olt double %2, 0.000000e+00, !dbg !1157
  br i1 %7, label %8, label %12, !dbg !1158

8:                                                ; preds = %5
  %handler_result = call double @fAddHandlerDouble(double %2, double 5.000000e-01), !dbg !1159
  %9 = tail call double @llvm.floor.f64(double %handler_result), !dbg !1159
  tail call void @llvm.dbg.value(metadata double %9, metadata !1153, metadata !DIExpression()), !dbg !1155
  %handler_result1 = call double @fSubHandlerDouble(double %2, double %9), !dbg !1160
  %10 = tail call double @llvm.fabs.f64(double %handler_result1), !dbg !1160
  %11 = fcmp olt double %10, 0x3D4F400000000000, !dbg !1161
  br label %12

12:                                               ; preds = %8, %5
  %13 = phi i1 [ false, %5 ], [ %11, %8 ], !dbg !1155
  tail call void @llvm.dbg.value(metadata i1 %13, metadata !1154, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1155
  %14 = fcmp oge double %6, 1.000000e+00, !dbg !1162
  %15 = or i1 %14, %13, !dbg !1164
  %16 = fcmp oeq double %2, 0.000000e+00
  %17 = or i1 %16, %15, !dbg !1164
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false), !dbg !1165
  br i1 %17, label %18, label %20, !dbg !1164

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !1166
  store double 0x7FF8000000000000, ptr %4, align 8, !dbg !1167, !tbaa !178
  store double 0x7FF8000000000000, ptr %19, align 8, !dbg !1167, !tbaa !183
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 791, i32 noundef 1) #7, !dbg !1170
  br label %49, !dbg !1170

20:                                               ; preds = %12
  %21 = fcmp olt double %6, 2.500000e-01, !dbg !1172
  %22 = tail call double @llvm.fabs.f64(double %0)
  %23 = fcmp olt double %22, 2.000000e+01
  %24 = and i1 %23, %21, !dbg !1174
  %25 = tail call double @llvm.fabs.f64(double %1)
  %26 = fcmp olt double %25, 2.000000e+01
  %27 = and i1 %26, %24, !dbg !1174
  br i1 %27, label %32, label %28, !dbg !1174

28:                                               ; preds = %20
  %29 = fcmp ogt double %2, 0.000000e+00, !dbg !1175
  %30 = fcmp ogt double %3, 0.000000e+00
  %31 = and i1 %29, %30, !dbg !1176
  br i1 %31, label %32, label %34, !dbg !1176

32:                                               ; preds = %28, %20
  %33 = tail call fastcc i32 @hyperg_2F1_conj_series(double noundef %0, double noundef %1, double noundef %2, double noundef %3, ptr noundef nonnull %4), !dbg !1177, !range !264
  br label %49, !dbg !1179

34:                                               ; preds = %28
  %35 = fcmp olt double %22, 1.000000e+01, !dbg !1180
  %36 = fcmp olt double %25, 1.000000e+01
  %37 = and i1 %35, %36, !dbg !1182
  br i1 %37, label %38, label %44, !dbg !1182

38:                                               ; preds = %34
  %39 = fcmp olt double %3, -2.500000e-01, !dbg !1183
  br i1 %39, label %40, label %42, !dbg !1186

40:                                               ; preds = %38
  %41 = tail call fastcc i32 @hyperg_2F1_conj_luke(double noundef %0, double noundef %1, double noundef %2, double noundef %3, ptr noundef nonnull %4), !dbg !1187, !range !264
  br label %49, !dbg !1189

42:                                               ; preds = %38
  %43 = tail call fastcc i32 @hyperg_2F1_conj_series(double noundef %0, double noundef %1, double noundef %2, double noundef %3, ptr noundef nonnull %4), !dbg !1190, !range !264
  br label %49, !dbg !1192

44:                                               ; preds = %34
  %45 = fcmp olt double %3, 0.000000e+00, !dbg !1193
  br i1 %45, label %46, label %48, !dbg !1196

46:                                               ; preds = %44
  %47 = tail call fastcc i32 @hyperg_2F1_conj_luke(double noundef %0, double noundef %1, double noundef %2, double noundef %3, ptr noundef nonnull %4), !dbg !1197, !range !264
  br label %49, !dbg !1199

48:                                               ; preds = %44
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 817, i32 noundef 24) #7, !dbg !1200
  br label %49, !dbg !1200

49:                                               ; preds = %48, %46, %42, %40, %32, %18
  %50 = phi i32 [ 1, %18 ], [ %33, %32 ], [ %41, %40 ], [ %43, %42 ], [ %47, %46 ], [ 24, %48 ], !dbg !1155
  ret i32 %50, !dbg !1202
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @hyperg_2F1_conj_series(double noundef %0, double noundef %1, double noundef %2, double noundef %3, ptr nocapture noundef %4) unnamed_addr #0 !dbg !1203 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !1207, metadata !DIExpression()), !dbg !1220
  tail call void @llvm.dbg.value(metadata double %1, metadata !1208, metadata !DIExpression()), !dbg !1220
  tail call void @llvm.dbg.value(metadata double %2, metadata !1209, metadata !DIExpression()), !dbg !1220
  tail call void @llvm.dbg.value(metadata double %3, metadata !1210, metadata !DIExpression()), !dbg !1220
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1211, metadata !DIExpression()), !dbg !1220
  %6 = fcmp oeq double %2, 0.000000e+00, !dbg !1221
  br i1 %6, label %9, label %7, !dbg !1222

7:                                                ; preds = %5
  %8 = fmul double %1, %1
  br label %10, !dbg !1223

9:                                                ; preds = %5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false), !dbg !1224
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 119, i32 noundef 1) #7, !dbg !1226
  br label %56, !dbg !1226

10:                                               ; preds = %42, %7
  %11 = phi double [ %27, %42 ], [ 1.000000e+00, %7 ], !dbg !1228
  %12 = phi double [ %28, %42 ], [ 0.000000e+00, %7 ], !dbg !1229
  %13 = phi double [ %29, %42 ], [ 1.000000e+00, %7 ], !dbg !1228
  %14 = phi double [ %30, %42 ], [ 0.000000e+00, %7 ], !dbg !1230
  %15 = phi double [ %21, %42 ], [ 1.000000e+00, %7 ], !dbg !1228
  %16 = phi double [ %handler_result2, %42 ], [ 0.000000e+00, %7 ], !dbg !1228
  tail call void @llvm.dbg.value(metadata double %16, metadata !1219, metadata !DIExpression()), !dbg !1228
  tail call void @llvm.dbg.value(metadata double %15, metadata !1218, metadata !DIExpression()), !dbg !1228
  tail call void @llvm.dbg.value(metadata double %14, metadata !1217, metadata !DIExpression()), !dbg !1228
  tail call void @llvm.dbg.value(metadata double %13, metadata !1216, metadata !DIExpression()), !dbg !1228
  tail call void @llvm.dbg.value(metadata double %12, metadata !1215, metadata !DIExpression()), !dbg !1228
  tail call void @llvm.dbg.value(metadata double %11, metadata !1212, metadata !DIExpression()), !dbg !1228
  %handler_result = call double @fAddHandlerDouble(double %16, double %0), !dbg !1231
  %17 = fmul double %handler_result, %handler_result, !dbg !1231
  %handler_result1 = call double @fAddHandlerDouble(double %8, double %17), !dbg !1233
  %handler_result2 = call double @fAddHandlerDouble(double %16, double 1.000000e+00), !dbg !1234
  %handler_result3 = call double @fAddHandlerDouble(double %16, double %2), !dbg !1235
  %18 = fmul double %handler_result2, %handler_result3, !dbg !1235
  %19 = fdiv double %handler_result1, %18, !dbg !1236
  %20 = fmul double %19, %3, !dbg !1237
  %21 = fmul double %15, %20, !dbg !1238
  tail call void @llvm.dbg.value(metadata double %21, metadata !1218, metadata !DIExpression()), !dbg !1228
  %22 = fcmp ult double %21, 0.000000e+00, !dbg !1239
  br i1 %22, label %24, label %23, !dbg !1241

23:                                               ; preds = %10
  tail call void @llvm.dbg.value(metadata double %21, metadata !1216, metadata !DIExpression()), !dbg !1228
  %handler_result4 = call double @fAddHandlerDouble(double %11, double %21), !dbg !1242
  tail call void @llvm.dbg.value(metadata double %handler_result4, metadata !1212, metadata !DIExpression()), !dbg !1228
  br label %26, !dbg !1242

24:                                               ; preds = %10
  %25 = fneg double %21, !dbg !1244
  tail call void @llvm.dbg.value(metadata double %25, metadata !1217, metadata !DIExpression()), !dbg !1228
  %handler_result5 = call double @fSubHandlerDouble(double %12, double %21)
  tail call void @llvm.dbg.value(metadata double %handler_result5, metadata !1215, metadata !DIExpression()), !dbg !1228
  br label %26

26:                                               ; preds = %24, %23
  %27 = phi double [ %handler_result4, %23 ], [ %11, %24 ], !dbg !1228
  %28 = phi double [ %12, %23 ], [ %handler_result5, %24 ], !dbg !1228
  %29 = phi double [ %21, %23 ], [ %13, %24 ], !dbg !1228
  %30 = phi double [ %14, %23 ], [ %25, %24 ], !dbg !1228
  tail call void @llvm.dbg.value(metadata double %30, metadata !1217, metadata !DIExpression()), !dbg !1228
  tail call void @llvm.dbg.value(metadata double %29, metadata !1216, metadata !DIExpression()), !dbg !1228
  tail call void @llvm.dbg.value(metadata double %28, metadata !1215, metadata !DIExpression()), !dbg !1228
  tail call void @llvm.dbg.value(metadata double %27, metadata !1212, metadata !DIExpression()), !dbg !1228
  %31 = fcmp ogt double %16, 3.000000e+04, !dbg !1246
  br i1 %31, label %32, label %42, !dbg !1248

32:                                               ; preds = %26
  %handler_result6 = call double @fSubHandlerDouble(double %27, double %28), !dbg !1249
  store double %handler_result6, ptr %4, align 8, !dbg !1249, !tbaa !178
  %handler_result7 = call double @fAddHandlerDouble(double %29, double %30), !dbg !1251
  %33 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !1251
  %handler_result8 = call double @fAddHandlerDouble(double %27, double %28), !dbg !1252
  %34 = fmul double %handler_result8, 0x3CC0000000000000, !dbg !1252
  %handler_result9 = call double @fAddHandlerDouble(double %34, double %handler_result7), !dbg !1253
  store double %handler_result9, ptr %33, align 8, !dbg !1253, !tbaa !183
  %35 = tail call double @sqrt(double noundef %16) #7, !dbg !1254
  %36 = fmul double %35, 2.000000e+00, !dbg !1255
  %handler_result10 = call double @fAddHandlerDouble(double %36, double 1.000000e+00), !dbg !1256
  %37 = fmul double %handler_result10, 0x3CC0000000000000, !dbg !1256
  %38 = load double, ptr %4, align 8, !dbg !1257, !tbaa !178
  %39 = tail call double @llvm.fabs.f64(double %38), !dbg !1258
  %40 = fmul double %39, %37, !dbg !1259
  %41 = load double, ptr %33, align 8, !dbg !1260, !tbaa !183
  %handler_result11 = call double @fAddHandlerDouble(double %41, double %40), !dbg !1260
  store double %handler_result11, ptr %33, align 8, !dbg !1260, !tbaa !183
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 145, i32 noundef 11) #7, !dbg !1261
  br label %56, !dbg !1261

42:                                               ; preds = %26
  tail call void @llvm.dbg.value(metadata double %handler_result2, metadata !1219, metadata !DIExpression()), !dbg !1228
  %handler_result12 = call double @fAddHandlerDouble(double %29, double %30), !dbg !1263
  %handler_result13 = call double @fSubHandlerDouble(double %27, double %28), !dbg !1264
  %43 = fdiv double %handler_result12, %handler_result13, !dbg !1264
  %44 = tail call double @llvm.fabs.f64(double %43), !dbg !1265
  %45 = fcmp ogt double %44, 0x3CB0000000000000, !dbg !1266
  br i1 %45, label %10, label %46, !dbg !1267, !llvm.loop !1268

46:                                               ; preds = %42
  store double %handler_result13, ptr %4, align 8, !dbg !1270, !tbaa !178
  %47 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !1271
  %handler_result14 = call double @fAddHandlerDouble(double %27, double %28), !dbg !1272
  %48 = fmul double %handler_result14, 0x3CC0000000000000, !dbg !1272
  %handler_result15 = call double @fAddHandlerDouble(double %48, double %handler_result12), !dbg !1273
  store double %handler_result15, ptr %47, align 8, !dbg !1273, !tbaa !183
  %49 = tail call double @sqrt(double noundef %handler_result2) #7, !dbg !1274
  %50 = fmul double %49, 2.000000e+00, !dbg !1275
  %handler_result16 = call double @fAddHandlerDouble(double %50, double 1.000000e+00), !dbg !1276
  %51 = fmul double %handler_result16, 0x3CC0000000000000, !dbg !1276
  %52 = load double, ptr %4, align 8, !dbg !1277, !tbaa !178
  %53 = tail call double @llvm.fabs.f64(double %52), !dbg !1278
  %54 = fmul double %53, %51, !dbg !1279
  %55 = load double, ptr %47, align 8, !dbg !1280, !tbaa !183
  %handler_result17 = call double @fAddHandlerDouble(double %55, double %54), !dbg !1280
  store double %handler_result17, ptr %47, align 8, !dbg !1280, !tbaa !183
  br label %56, !dbg !1281

56:                                               ; preds = %46, %32, %9
  %57 = phi i32 [ 1, %9 ], [ 11, %32 ], [ 0, %46 ], !dbg !1282
  ret i32 %57, !dbg !1283
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define internal fastcc i32 @hyperg_2F1_conj_luke(double noundef %0, double noundef %1, double noundef %2, double noundef %3, ptr nocapture noundef writeonly %4) unnamed_addr #4 !dbg !1284 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !1286, metadata !DIExpression()), !dbg !1328
  tail call void @llvm.dbg.value(metadata double %1, metadata !1287, metadata !DIExpression()), !dbg !1328
  tail call void @llvm.dbg.value(metadata double %2, metadata !1288, metadata !DIExpression()), !dbg !1328
  tail call void @llvm.dbg.value(metadata double %3, metadata !1289, metadata !DIExpression()), !dbg !1328
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1290, metadata !DIExpression()), !dbg !1328
  tail call void @llvm.dbg.value(metadata double 1.000000e+50, metadata !1292, metadata !DIExpression()), !dbg !1328
  tail call void @llvm.dbg.value(metadata i32 10000, metadata !1293, metadata !DIExpression()), !dbg !1328
  tail call void @llvm.dbg.value(metadata i32 3, metadata !1294, metadata !DIExpression()), !dbg !1328
  %6 = fneg double %3, !dbg !1329
  tail call void @llvm.dbg.value(metadata double %6, metadata !1295, metadata !DIExpression()), !dbg !1328
  %7 = fmul double %3, %3, !dbg !1330
  %8 = fmul double %7, %6, !dbg !1331
  tail call void @llvm.dbg.value(metadata double %8, metadata !1296, metadata !DIExpression()), !dbg !1328
  %9 = fmul double %0, %0, !dbg !1332
  %10 = fmul double %1, %1, !dbg !1333
  %handler_result = call double @fAddHandlerDouble(double %9, double %10), !dbg !1334
  tail call void @llvm.dbg.value(metadata double %handler_result, metadata !1297, metadata !DIExpression()), !dbg !1328
  %11 = fmul double %0, 2.000000e+00, !dbg !1334
  tail call void @llvm.dbg.value(metadata double %11, metadata !1298, metadata !DIExpression()), !dbg !1328
  %12 = fdiv double %handler_result, %2, !dbg !1335
  tail call void @llvm.dbg.value(metadata double %12, metadata !1299, metadata !DIExpression()), !dbg !1328
  %handler_result1 = call double @fAddHandlerDouble(double %11, double %handler_result), !dbg !1336
  %handler_result2 = call double @fAddHandlerDouble(double %handler_result1, double 1.000000e+00), !dbg !1337
  %13 = fmul double %2, 2.000000e+00, !dbg !1337
  %14 = fdiv double %handler_result2, %13, !dbg !1338
  tail call void @llvm.dbg.value(metadata double %14, metadata !1300, metadata !DIExpression()), !dbg !1328
  %15 = fmul double %11, 2.000000e+00, !dbg !1339
  %handler_result3 = call double @fAddHandlerDouble(double %15, double %handler_result), !dbg !1340
  %handler_result4 = call double @fAddHandlerDouble(double %handler_result3, double 4.000000e+00), !dbg !1341
  %handler_result5 = call double @fAddHandlerDouble(double %2, double 1.000000e+00), !dbg !1342
  %16 = fmul double %handler_result5, 2.000000e+00, !dbg !1342
  %17 = fdiv double %handler_result4, %16, !dbg !1343
  tail call void @llvm.dbg.value(metadata double %17, metadata !1301, metadata !DIExpression()), !dbg !1328
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !1302, metadata !DIExpression()), !dbg !1328
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !1304, metadata !DIExpression()), !dbg !1328
  %18 = fmul double %14, %3, !dbg !1344
  %handler_result6 = call double @fSubHandlerDouble(double 1.000000e+00, double %18), !dbg !1345
  tail call void @llvm.dbg.value(metadata double %handler_result6, metadata !1305, metadata !DIExpression()), !dbg !1328
  %19 = fmul double %17, %6, !dbg !1345
  %20 = fdiv double %14, 3.000000e+00, !dbg !1346
  %21 = fmul double %20, %3, !dbg !1347
  %handler_result7 = call double @fSubHandlerDouble(double 1.000000e+00, double %21), !dbg !1348
  %22 = fmul double %19, %handler_result7, !dbg !1348
  %handler_result8 = call double @fAddHandlerDouble(double %22, double 1.000000e+00), !dbg !1349
  tail call void @llvm.dbg.value(metadata double %handler_result8, metadata !1306, metadata !DIExpression()), !dbg !1328
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !1307, metadata !DIExpression()), !dbg !1328
  %23 = fmul double %12, %3, !dbg !1349
  %handler_result9 = call double @fAddHandlerDouble(double %23, double %handler_result6), !dbg !1350
  tail call void @llvm.dbg.value(metadata double %handler_result9, metadata !1308, metadata !DIExpression()), !dbg !1328
  %handler_result10 = call double @fAddHandlerDouble(double %19, double 1.000000e+00), !dbg !1351
  %24 = fmul double %12, %handler_result10, !dbg !1351
  %25 = fmul double %24, %3, !dbg !1352
  %handler_result11 = call double @fAddHandlerDouble(double %25, double %handler_result8), !dbg !1353
  %26 = fmul double %12, %14, !dbg !1353
  %27 = fdiv double %2, %handler_result5, !dbg !1354
  %28 = fmul double %27, %26, !dbg !1355
  %29 = fmul double %28, %6, !dbg !1356
  %30 = fmul double %29, %3, !dbg !1357
  %handler_result12 = call double @fSubHandlerDouble(double %handler_result11, double %30)
  tail call void @llvm.dbg.value(metadata double %handler_result12, metadata !1309, metadata !DIExpression()), !dbg !1328
  %handler_result13 = call double @fAddHandlerDouble(double %11, double -6.000000e+00)
  %handler_result14 = call double @fAddHandlerDouble(double %11, double 6.000000e+00), !dbg !1358
  br label %31, !dbg !1358

31:                                               ; preds = %125, %5
  %32 = phi double [ %handler_result12, %5 ], [ %130, %125 ], !dbg !1359
  %33 = phi double [ %handler_result9, %5 ], [ %126, %125 ], !dbg !1360
  %34 = phi double [ 1.000000e+00, %5 ], [ %127, %125 ], !dbg !1361
  %35 = phi double [ %handler_result8, %5 ], [ %131, %125 ], !dbg !1362
  %36 = phi double [ %handler_result6, %5 ], [ %128, %125 ], !dbg !1363
  %37 = phi double [ 1.000000e+00, %5 ], [ %129, %125 ], !dbg !1364
  %38 = phi double [ 1.000000e+00, %5 ], [ %95, %125 ], !dbg !1328
  %39 = phi i32 [ 3, %5 ], [ %132, %125 ], !dbg !1365
  tail call void @llvm.dbg.value(metadata i32 %39, metadata !1294, metadata !DIExpression()), !dbg !1328
  tail call void @llvm.dbg.value(metadata double %38, metadata !1302, metadata !DIExpression()), !dbg !1328
  tail call void @llvm.dbg.value(metadata double %37, metadata !1304, metadata !DIExpression()), !dbg !1328
  tail call void @llvm.dbg.value(metadata double %36, metadata !1305, metadata !DIExpression()), !dbg !1328
  tail call void @llvm.dbg.value(metadata double %35, metadata !1306, metadata !DIExpression()), !dbg !1328
  tail call void @llvm.dbg.value(metadata double %34, metadata !1307, metadata !DIExpression()), !dbg !1328
  tail call void @llvm.dbg.value(metadata double %33, metadata !1308, metadata !DIExpression()), !dbg !1328
  tail call void @llvm.dbg.value(metadata double %32, metadata !1309, metadata !DIExpression()), !dbg !1328
  %40 = add nsw i32 %39, -1, !dbg !1366
  %41 = sitofp i32 %40 to double, !dbg !1367
  tail call void @llvm.dbg.value(metadata double %41, metadata !1310, metadata !DIExpression()), !dbg !1368
  %42 = add nsw i32 %39, -2, !dbg !1369
  %43 = sitofp i32 %42 to double, !dbg !1370
  tail call void @llvm.dbg.value(metadata double %43, metadata !1312, metadata !DIExpression()), !dbg !1368
  %44 = fmul double %11, %41, !dbg !1371
  %handler_result15 = call double @fAddHandlerDouble(double %handler_result, double %44), !dbg !1372
  %45 = fmul double %41, %41, !dbg !1372
  %handler_result16 = call double @fAddHandlerDouble(double %45, double %handler_result15), !dbg !1373
  tail call void @llvm.dbg.value(metadata double %handler_result16, metadata !1313, metadata !DIExpression()), !dbg !1368
  %46 = fmul double %11, %43, !dbg !1373
  %handler_result17 = call double @fAddHandlerDouble(double %handler_result, double %46), !dbg !1374
  %47 = fmul double %43, %43, !dbg !1374
  %handler_result18 = call double @fAddHandlerDouble(double %47, double %handler_result17), !dbg !1375
  tail call void @llvm.dbg.value(metadata double %handler_result18, metadata !1314, metadata !DIExpression()), !dbg !1368
  %handler_result19 = call double @fAddHandlerDouble(double %41, double %2), !dbg !1376
  tail call void @llvm.dbg.value(metadata double %handler_result19, metadata !1315, metadata !DIExpression()), !dbg !1368
  %handler_result20 = call double @fAddHandlerDouble(double %43, double %2), !dbg !1377
  tail call void @llvm.dbg.value(metadata double %handler_result20, metadata !1316, metadata !DIExpression()), !dbg !1368
  %48 = shl nuw nsw i32 %39, 1, !dbg !1377
  %49 = add nsw i32 %48, -1, !dbg !1378
  %50 = sitofp i32 %49 to double, !dbg !1379
  tail call void @llvm.dbg.value(metadata double %50, metadata !1317, metadata !DIExpression()), !dbg !1368
  %51 = add nsw i32 %48, -3, !dbg !1380
  %52 = sitofp i32 %51 to double, !dbg !1381
  tail call void @llvm.dbg.value(metadata double %52, metadata !1318, metadata !DIExpression()), !dbg !1368
  %53 = add nsw i32 %48, -5, !dbg !1382
  %54 = sitofp i32 %53 to double, !dbg !1383
  tail call void @llvm.dbg.value(metadata double %54, metadata !1319, metadata !DIExpression()), !dbg !1368
  %55 = mul nsw i32 %39, %39, !dbg !1384
  %56 = sitofp i32 %55 to double, !dbg !1385
  tail call void @llvm.dbg.value(metadata double %56, metadata !1320, metadata !DIExpression()), !dbg !1368
  %57 = fmul double %56, 3.000000e+00, !dbg !1386
  %58 = sitofp i32 %39 to double, !dbg !1387
  %59 = fmul double %handler_result13, %58, !dbg !1388
  %handler_result21 = call double @fAddHandlerDouble(double %59, double %57), !dbg !1389
  %handler_result22 = call double @fAddHandlerDouble(double %handler_result21, double 2.000000e+00), !dbg !1390
  %handler_result23 = call double @fSubHandlerDouble(double %handler_result22, double %handler_result), !dbg !1391
  %handler_result24 = call double @fSubHandlerDouble(double %handler_result23, double %15), !dbg !1392
  %60 = fmul double %52, 2.000000e+00, !dbg !1392
  %61 = fmul double %handler_result19, %60, !dbg !1393
  %62 = fdiv double %handler_result24, %61, !dbg !1394
  tail call void @llvm.dbg.value(metadata double %62, metadata !1321, metadata !DIExpression()), !dbg !1368
  %63 = fmul double %handler_result14, %58, !dbg !1395
  %handler_result25 = call double @fSubHandlerDouble(double %57, double %63), !dbg !1396
  %handler_result26 = call double @fAddHandlerDouble(double %handler_result25, double 2.000000e+00), !dbg !1397
  %handler_result27 = call double @fSubHandlerDouble(double %handler_result26, double %handler_result), !dbg !1398
  %64 = fneg double %handler_result27, !dbg !1398
  %65 = fmul double %handler_result16, %64, !dbg !1399
  %66 = fmul double %50, 4.000000e+00, !dbg !1400
  %67 = fmul double %66, %52, !dbg !1401
  %68 = fmul double %handler_result20, %67, !dbg !1402
  %69 = fmul double %handler_result19, %68, !dbg !1403
  %70 = fdiv double %65, %69, !dbg !1404
  tail call void @llvm.dbg.value(metadata double %70, metadata !1322, metadata !DIExpression()), !dbg !1368
  %71 = fmul double %handler_result18, %handler_result16, !dbg !1405
  %handler_result28 = call double @fSubHandlerDouble(double %47, double %46), !dbg !1406
  %handler_result29 = call double @fAddHandlerDouble(double %handler_result, double %handler_result28), !dbg !1407
  %72 = fmul double %handler_result29, %71, !dbg !1407
  %73 = fmul double %52, 8.000000e+00, !dbg !1408
  %74 = fmul double %73, %52, !dbg !1409
  %75 = fmul double %74, %54, !dbg !1410
  %handler_result30 = call double @fAddHandlerDouble(double %58, double %2), !dbg !1411
  %handler_result31 = call double @fAddHandlerDouble(double %handler_result30, double -3.000000e+00), !dbg !1412
  %76 = fmul double %handler_result31, %75, !dbg !1412
  %77 = fmul double %handler_result20, %76, !dbg !1413
  %78 = fmul double %handler_result19, %77, !dbg !1414
  %79 = fdiv double %72, %78, !dbg !1415
  tail call void @llvm.dbg.value(metadata double %79, metadata !1323, metadata !DIExpression()), !dbg !1368
  %80 = fneg double %handler_result16, !dbg !1416
  %handler_result32 = call double @fSubHandlerDouble(double %58, double %2), !dbg !1417
  %handler_result33 = call double @fAddHandlerDouble(double %handler_result32, double -1.000000e+00), !dbg !1418
  %81 = fmul double %handler_result33, %80, !dbg !1418
  %82 = fmul double %handler_result20, %60, !dbg !1419
  %83 = fmul double %handler_result19, %82, !dbg !1420
  %84 = fdiv double %81, %83, !dbg !1421
  tail call void @llvm.dbg.value(metadata double %84, metadata !1324, metadata !DIExpression()), !dbg !1368
  %85 = fmul double %62, %3, !dbg !1422
  %handler_result34 = call double @fSubHandlerDouble(double 1.000000e+00, double %85), !dbg !1423
  %86 = fmul double %32, %handler_result34, !dbg !1423
  %87 = fmul double %70, %3, !dbg !1424
  %handler_result35 = call double @fSubHandlerDouble(double %84, double %87), !dbg !1425
  %88 = fmul double %handler_result35, %6, !dbg !1425
  %89 = fmul double %33, %88, !dbg !1426
  %handler_result36 = call double @fAddHandlerDouble(double %86, double %89), !dbg !1427
  %90 = fmul double %8, %79, !dbg !1427
  %91 = fmul double %34, %90, !dbg !1428
  %handler_result37 = call double @fAddHandlerDouble(double %91, double %handler_result36), !dbg !1429
  tail call void @llvm.dbg.value(metadata double %handler_result37, metadata !1325, metadata !DIExpression()), !dbg !1368
  %92 = fmul double %35, %handler_result34, !dbg !1429
  %93 = fmul double %36, %88, !dbg !1430
  %handler_result38 = call double @fAddHandlerDouble(double %92, double %93), !dbg !1431
  %94 = fmul double %37, %90, !dbg !1431
  %handler_result39 = call double @fAddHandlerDouble(double %94, double %handler_result38), !dbg !1432
  tail call void @llvm.dbg.value(metadata double %handler_result39, metadata !1326, metadata !DIExpression()), !dbg !1368
  %95 = fdiv double %handler_result37, %handler_result39, !dbg !1432
  tail call void @llvm.dbg.value(metadata double %95, metadata !1327, metadata !DIExpression()), !dbg !1368
  %handler_result40 = call double @fSubHandlerDouble(double %38, double %95), !dbg !1433
  %96 = fdiv double %handler_result40, %38, !dbg !1433
  %97 = tail call double @llvm.fabs.f64(double %96), !dbg !1433
  tail call void @llvm.dbg.value(metadata double %97, metadata !1303, metadata !DIExpression()), !dbg !1328
  tail call void @llvm.dbg.value(metadata double %95, metadata !1302, metadata !DIExpression()), !dbg !1328
  %98 = fcmp olt double %97, 0x3CB0000000000000, !dbg !1434
  %99 = icmp ugt i32 %39, 10000
  %100 = select i1 %98, i1 true, i1 %99, !dbg !1436
  br i1 %100, label %133, label %101, !dbg !1436

101:                                              ; preds = %31
  %102 = tail call double @llvm.fabs.f64(double %handler_result37), !dbg !1437
  %103 = fcmp ogt double %102, 1.000000e+50, !dbg !1439
  br i1 %103, label %107, label %104, !dbg !1440

104:                                              ; preds = %101
  %105 = tail call double @llvm.fabs.f64(double %handler_result39), !dbg !1441
  %106 = fcmp ogt double %105, 1.000000e+50, !dbg !1442
  br i1 %106, label %107, label %114, !dbg !1443

107:                                              ; preds = %104, %101
  %108 = fdiv double %handler_result37, 1.000000e+50, !dbg !1444
  tail call void @llvm.dbg.value(metadata double %108, metadata !1325, metadata !DIExpression()), !dbg !1368
  %109 = fdiv double %handler_result39, 1.000000e+50, !dbg !1446
  tail call void @llvm.dbg.value(metadata double %109, metadata !1326, metadata !DIExpression()), !dbg !1368
  %110 = fdiv double %32, 1.000000e+50, !dbg !1447
  tail call void @llvm.dbg.value(metadata double %110, metadata !1309, metadata !DIExpression()), !dbg !1328
  %111 = fdiv double %35, 1.000000e+50, !dbg !1448
  tail call void @llvm.dbg.value(metadata double %111, metadata !1306, metadata !DIExpression()), !dbg !1328
  %112 = fdiv double %33, 1.000000e+50, !dbg !1449
  tail call void @llvm.dbg.value(metadata double %112, metadata !1308, metadata !DIExpression()), !dbg !1328
  %113 = fdiv double %36, 1.000000e+50, !dbg !1450
  tail call void @llvm.dbg.value(metadata double %113, metadata !1305, metadata !DIExpression()), !dbg !1328
  tail call void @llvm.dbg.value(metadata double poison, metadata !1307, metadata !DIExpression()), !dbg !1328
  tail call void @llvm.dbg.value(metadata double poison, metadata !1304, metadata !DIExpression()), !dbg !1328
  br label %125, !dbg !1451

114:                                              ; preds = %104
  %115 = fcmp olt double %102, 0x358DEE7A4AD4B81E, !dbg !1452
  %116 = fcmp olt double %105, 0x358DEE7A4AD4B81E
  %117 = or i1 %115, %116, !dbg !1454
  br i1 %117, label %118, label %125, !dbg !1454

118:                                              ; preds = %114
  %119 = fmul double %handler_result37, 1.000000e+50, !dbg !1455
  tail call void @llvm.dbg.value(metadata double %119, metadata !1325, metadata !DIExpression()), !dbg !1368
  %120 = fmul double %handler_result39, 1.000000e+50, !dbg !1457
  tail call void @llvm.dbg.value(metadata double %120, metadata !1326, metadata !DIExpression()), !dbg !1368
  %121 = fmul double %32, 1.000000e+50, !dbg !1458
  tail call void @llvm.dbg.value(metadata double %121, metadata !1309, metadata !DIExpression()), !dbg !1328
  %122 = fmul double %35, 1.000000e+50, !dbg !1459
  tail call void @llvm.dbg.value(metadata double %122, metadata !1306, metadata !DIExpression()), !dbg !1328
  %123 = fmul double %33, 1.000000e+50, !dbg !1460
  tail call void @llvm.dbg.value(metadata double %123, metadata !1308, metadata !DIExpression()), !dbg !1328
  %124 = fmul double %36, 1.000000e+50, !dbg !1461
  tail call void @llvm.dbg.value(metadata double %124, metadata !1305, metadata !DIExpression()), !dbg !1328
  tail call void @llvm.dbg.value(metadata double poison, metadata !1307, metadata !DIExpression()), !dbg !1328
  tail call void @llvm.dbg.value(metadata double poison, metadata !1304, metadata !DIExpression()), !dbg !1328
  br label %125, !dbg !1462

125:                                              ; preds = %118, %114, %107
  %126 = phi double [ %110, %107 ], [ %121, %118 ], [ %32, %114 ], !dbg !1328
  %127 = phi double [ %112, %107 ], [ %123, %118 ], [ %33, %114 ], !dbg !1328
  %128 = phi double [ %111, %107 ], [ %122, %118 ], [ %35, %114 ], !dbg !1328
  %129 = phi double [ %113, %107 ], [ %124, %118 ], [ %36, %114 ], !dbg !1328
  %130 = phi double [ %108, %107 ], [ %119, %118 ], [ %handler_result37, %114 ], !dbg !1368
  %131 = phi double [ %109, %107 ], [ %120, %118 ], [ %handler_result39, %114 ], !dbg !1368
  tail call void @llvm.dbg.value(metadata double %131, metadata !1326, metadata !DIExpression()), !dbg !1368
  tail call void @llvm.dbg.value(metadata double %130, metadata !1325, metadata !DIExpression()), !dbg !1368
  tail call void @llvm.dbg.value(metadata double %129, metadata !1305, metadata !DIExpression()), !dbg !1328
  tail call void @llvm.dbg.value(metadata double %128, metadata !1306, metadata !DIExpression()), !dbg !1328
  tail call void @llvm.dbg.value(metadata double %127, metadata !1308, metadata !DIExpression()), !dbg !1328
  tail call void @llvm.dbg.value(metadata double %126, metadata !1309, metadata !DIExpression()), !dbg !1328
  %132 = add nuw nsw i32 %39, 1, !dbg !1463
  tail call void @llvm.dbg.value(metadata i32 %132, metadata !1294, metadata !DIExpression()), !dbg !1328
  tail call void @llvm.dbg.value(metadata double %129, metadata !1304, metadata !DIExpression()), !dbg !1328
  tail call void @llvm.dbg.value(metadata double %128, metadata !1305, metadata !DIExpression()), !dbg !1328
  tail call void @llvm.dbg.value(metadata double %131, metadata !1306, metadata !DIExpression()), !dbg !1328
  tail call void @llvm.dbg.value(metadata double %127, metadata !1307, metadata !DIExpression()), !dbg !1328
  tail call void @llvm.dbg.value(metadata double %126, metadata !1308, metadata !DIExpression()), !dbg !1328
  tail call void @llvm.dbg.value(metadata double %130, metadata !1309, metadata !DIExpression()), !dbg !1328
  br label %31

133:                                              ; preds = %31
  tail call void @llvm.dbg.value(metadata i32 %39, metadata !1294, metadata !DIExpression()), !dbg !1328
  tail call void @llvm.dbg.value(metadata double poison, metadata !1304, metadata !DIExpression()), !dbg !1328
  tail call void @llvm.dbg.value(metadata double poison, metadata !1305, metadata !DIExpression()), !dbg !1328
  tail call void @llvm.dbg.value(metadata double poison, metadata !1306, metadata !DIExpression()), !dbg !1328
  tail call void @llvm.dbg.value(metadata double poison, metadata !1307, metadata !DIExpression()), !dbg !1328
  tail call void @llvm.dbg.value(metadata double poison, metadata !1308, metadata !DIExpression()), !dbg !1328
  tail call void @llvm.dbg.value(metadata double poison, metadata !1309, metadata !DIExpression()), !dbg !1328
  store double %95, ptr %4, align 8, !dbg !1464, !tbaa !178
  %134 = fmul double %95, %97, !dbg !1465
  %135 = tail call double @llvm.fabs.f64(double %134), !dbg !1466
  %136 = fmul double %135, 2.000000e+00, !dbg !1467
  %137 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !1468
  %handler_result41 = call double @fAddHandlerDouble(double %58, double 1.000000e+00), !dbg !1469
  %138 = fmul double %handler_result41, 0x3CC0000000000000, !dbg !1469
  %139 = tail call double @llvm.fabs.f64(double %95), !dbg !1470
  %140 = fmul double %138, %139, !dbg !1471
  %handler_result42 = call double @fAddHandlerDouble(double %140, double %136), !dbg !1472
  %141 = tail call double @llvm.fabs.f64(double %0), !dbg !1472
  %142 = tail call double @llvm.fabs.f64(double %1), !dbg !1473
  %handler_result43 = call double @fAddHandlerDouble(double %141, double %142), !dbg !1474
  %handler_result44 = call double @fAddHandlerDouble(double %handler_result43, double 1.000000e+00), !dbg !1475
  %143 = fmul double %handler_result44, 8.000000e+00, !dbg !1475
  %144 = fmul double %143, %handler_result42, !dbg !1476
  store double %144, ptr %137, align 8, !dbg !1476, !tbaa !183
  %145 = icmp ugt i32 %39, 9999, !dbg !1477
  %146 = select i1 %145, i32 11, i32 0, !dbg !1478
  tail call void @llvm.dbg.value(metadata i32 %146, metadata !1291, metadata !DIExpression()), !dbg !1328
  ret i32 %146, !dbg !1479
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_hyperg_2F1_renorm_e(double noundef %0, double noundef %1, double noundef %2, double noundef %3, ptr noundef %4) local_unnamed_addr #0 !dbg !1480 {
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1523
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1493, metadata !DIExpression(), metadata !1523, metadata ptr %6, metadata !DIExpression()), !dbg !1524
  %7 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1525
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1498, metadata !DIExpression(), metadata !1525, metadata ptr %7, metadata !DIExpression()), !dbg !1524
  %8 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1526
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1499, metadata !DIExpression(), metadata !1526, metadata ptr %8, metadata !DIExpression()), !dbg !1524
  %9 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1527
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1500, metadata !DIExpression(), metadata !1527, metadata ptr %9, metadata !DIExpression()), !dbg !1524
  %10 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1528
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1501, metadata !DIExpression(), metadata !1528, metadata ptr %10, metadata !DIExpression()), !dbg !1524
  %11 = alloca double, align 8, !DIAssignID !1529
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1502, metadata !DIExpression(), metadata !1529, metadata ptr %11, metadata !DIExpression()), !dbg !1524
  %12 = alloca double, align 8, !DIAssignID !1530
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1503, metadata !DIExpression(), metadata !1530, metadata ptr %12, metadata !DIExpression()), !dbg !1524
  %13 = alloca double, align 8, !DIAssignID !1531
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1504, metadata !DIExpression(), metadata !1531, metadata ptr %13, metadata !DIExpression()), !dbg !1524
  %14 = alloca double, align 8, !DIAssignID !1532
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1505, metadata !DIExpression(), metadata !1532, metadata ptr %14, metadata !DIExpression()), !dbg !1524
  %15 = alloca double, align 8, !DIAssignID !1533
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1506, metadata !DIExpression(), metadata !1533, metadata ptr %15, metadata !DIExpression()), !dbg !1524
  %16 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1534
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1508, metadata !DIExpression(), metadata !1534, metadata ptr %16, metadata !DIExpression()), !dbg !1535
  %17 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1536
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1516, metadata !DIExpression(), metadata !1536, metadata ptr %17, metadata !DIExpression()), !dbg !1537
  %18 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1538
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1518, metadata !DIExpression(), metadata !1538, metadata ptr %18, metadata !DIExpression()), !dbg !1537
  %19 = alloca double, align 8, !DIAssignID !1539
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1519, metadata !DIExpression(), metadata !1539, metadata ptr %19, metadata !DIExpression()), !dbg !1537
  tail call void @llvm.dbg.value(metadata double %0, metadata !1482, metadata !DIExpression()), !dbg !1540
  tail call void @llvm.dbg.value(metadata double %1, metadata !1483, metadata !DIExpression()), !dbg !1540
  tail call void @llvm.dbg.value(metadata double %2, metadata !1484, metadata !DIExpression()), !dbg !1540
  tail call void @llvm.dbg.value(metadata double %3, metadata !1485, metadata !DIExpression()), !dbg !1540
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1486, metadata !DIExpression()), !dbg !1540
  tail call void @llvm.dbg.value(metadata double poison, metadata !1487, metadata !DIExpression()), !dbg !1540
  %handler_result = call double @fAddHandlerDouble(double %1, double 5.000000e-01), !dbg !1541
  %20 = tail call double @llvm.floor.f64(double %handler_result), !dbg !1541
  tail call void @llvm.dbg.value(metadata double %20, metadata !1488, metadata !DIExpression()), !dbg !1540
  %handler_result1 = call double @fAddHandlerDouble(double %2, double 5.000000e-01), !dbg !1542
  %21 = tail call double @llvm.floor.f64(double %handler_result1), !dbg !1542
  tail call void @llvm.dbg.value(metadata double %21, metadata !1489, metadata !DIExpression()), !dbg !1540
  %22 = fcmp olt double %0, 0.000000e+00, !dbg !1543
  br i1 %22, label %23, label %27, !dbg !1544

23:                                               ; preds = %5
  %handler_result2 = call double @fAddHandlerDouble(double %0, double 5.000000e-01), !dbg !1545
  %24 = tail call double @llvm.floor.f64(double %handler_result2), !dbg !1545
  tail call void @llvm.dbg.value(metadata double %24, metadata !1487, metadata !DIExpression()), !dbg !1540
  %handler_result3 = call double @fSubHandlerDouble(double %0, double %24), !dbg !1546
  %25 = tail call double @llvm.fabs.f64(double %handler_result3), !dbg !1546
  %26 = fcmp olt double %25, 0x3D4F400000000000, !dbg !1547
  br label %27

27:                                               ; preds = %23, %5
  %28 = phi i1 [ false, %5 ], [ %26, %23 ], !dbg !1540
  tail call void @llvm.dbg.value(metadata i1 %28, metadata !1490, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1540
  tail call void @llvm.dbg.value(metadata i1 poison, metadata !1491, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1540
  %29 = fcmp olt double %2, 0.000000e+00, !dbg !1548
  %handler_result4 = call double @fSubHandlerDouble(double %2, double %21), !dbg !1549
  %30 = tail call double @llvm.fabs.f64(double %handler_result4), !dbg !1549
  %31 = fcmp olt double %30, 0x3D4F400000000000, !dbg !1549
  %32 = and i1 %29, %31, !dbg !1549
  tail call void @llvm.dbg.value(metadata i1 %32, metadata !1492, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1540
  br i1 %32, label %33, label %92, !dbg !1550

33:                                               ; preds = %27
  %34 = fcmp olt double %1, 0.000000e+00, !dbg !1551
  %handler_result5 = call double @fSubHandlerDouble(double %1, double %20), !dbg !1552
  %35 = tail call double @llvm.fabs.f64(double %handler_result5), !dbg !1552
  %36 = fcmp olt double %35, 0x3D4F400000000000, !dbg !1552
  %37 = and i1 %34, %36, !dbg !1552
  tail call void @llvm.dbg.value(metadata i1 %37, metadata !1491, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1540
  %handler_result6 = call double @fAddHandlerDouble(double %2, double 1.000000e-01)
  %38 = fcmp olt double %handler_result6, %0
  %39 = and i1 %38, %28, !dbg !1553
  %40 = fcmp olt double %handler_result6, %1
  %41 = and i1 %40, %37
  %42 = or i1 %41, %39, !dbg !1553
  br i1 %42, label %43, label %44, !dbg !1553

43:                                               ; preds = %33
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false), !dbg !1554
  br label %109, !dbg !1556

44:                                               ; preds = %33
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #7, !dbg !1557
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #7, !dbg !1557
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #7, !dbg !1557
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #7, !dbg !1557
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #7, !dbg !1557
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #7, !dbg !1558
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #7, !dbg !1558
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #7, !dbg !1558
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #7, !dbg !1558
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #7, !dbg !1558
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1507, metadata !DIExpression()), !dbg !1524
  %handler_result7 = call double @fSubHandlerDouble(double %0, double %2), !dbg !1559
  %handler_result8 = call double @fAddHandlerDouble(double %handler_result7, double 1.000000e+00), !dbg !1560
  %45 = call i32 @gsl_sf_lngamma_sgn_e(double noundef %handler_result8, ptr noundef nonnull %6, ptr noundef nonnull %11) #7, !dbg !1560
  tail call void @llvm.dbg.value(metadata i32 %45, metadata !1507, metadata !DIExpression()), !dbg !1524
  %handler_result9 = call double @fSubHandlerDouble(double %1, double %2), !dbg !1561
  %handler_result10 = call double @fAddHandlerDouble(double %handler_result9, double 1.000000e+00), !dbg !1562
  %46 = call i32 @gsl_sf_lngamma_sgn_e(double noundef %handler_result10, ptr noundef nonnull %7, ptr noundef nonnull %12) #7, !dbg !1562
  %47 = add nsw i32 %46, %45, !dbg !1563
  tail call void @llvm.dbg.value(metadata i32 %47, metadata !1507, metadata !DIExpression()), !dbg !1524
  %48 = call i32 @gsl_sf_lngamma_sgn_e(double noundef %0, ptr noundef nonnull %8, ptr noundef nonnull %13) #7, !dbg !1564
  %49 = add nsw i32 %47, %48, !dbg !1565
  tail call void @llvm.dbg.value(metadata i32 %49, metadata !1507, metadata !DIExpression()), !dbg !1524
  %50 = call i32 @gsl_sf_lngamma_sgn_e(double noundef %1, ptr noundef nonnull %9, ptr noundef nonnull %14) #7, !dbg !1566
  %51 = add nsw i32 %49, %50, !dbg !1567
  tail call void @llvm.dbg.value(metadata i32 %51, metadata !1507, metadata !DIExpression()), !dbg !1524
  %handler_result11 = call double @fSubHandlerDouble(double 2.000000e+00, double %2), !dbg !1568
  %52 = call i32 @gsl_sf_lngamma_sgn_e(double noundef %handler_result11, ptr noundef nonnull %10, ptr noundef nonnull %15) #7, !dbg !1568
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 %51, i32 %52), metadata !1507, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !1524
  %53 = sub i32 0, %52, !dbg !1569
  %54 = icmp eq i32 %51, %53, !dbg !1569
  br i1 %54, label %57, label %55, !dbg !1570

55:                                               ; preds = %44
  store double 0x7FF8000000000000, ptr %4, align 8, !dbg !1571, !tbaa !178
  %56 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !1571
  store double 0x7FF8000000000000, ptr %56, align 8, !dbg !1571, !tbaa !183
  call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 854, i32 noundef 1) #7, !dbg !1574
  br label %90, !dbg !1574

57:                                               ; preds = %44
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %16) #7, !dbg !1576
  %58 = call i32 @gsl_sf_hyperg_2F1_e(double noundef %handler_result8, double noundef %handler_result10, double noundef %handler_result11, double noundef %3, ptr noundef nonnull %16), !dbg !1577
  tail call void @llvm.dbg.value(metadata i32 %58, metadata !1511, metadata !DIExpression()), !dbg !1535
  %59 = load double, ptr %6, align 8, !dbg !1578, !tbaa !178
  %60 = load double, ptr %7, align 8, !dbg !1579, !tbaa !178
  %handler_result12 = call double @fAddHandlerDouble(double %59, double %60), !dbg !1580
  %61 = load double, ptr %8, align 8, !dbg !1580, !tbaa !178
  %handler_result13 = call double @fSubHandlerDouble(double %handler_result12, double %61), !dbg !1581
  %62 = load double, ptr %9, align 8, !dbg !1581, !tbaa !178
  %handler_result14 = call double @fSubHandlerDouble(double %handler_result13, double %62), !dbg !1582
  %63 = load double, ptr %10, align 8, !dbg !1582, !tbaa !178
  %handler_result15 = call double @fSubHandlerDouble(double %handler_result14, double %63), !dbg !1583
  tail call void @llvm.dbg.value(metadata double %handler_result15, metadata !1512, metadata !DIExpression()), !dbg !1535
  %64 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !1583
  %65 = load double, ptr %64, align 8, !dbg !1583, !tbaa !183
  %66 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %7, i64 0, i32 1, !dbg !1584
  %67 = load double, ptr %66, align 8, !dbg !1584, !tbaa !183
  %handler_result16 = call double @fAddHandlerDouble(double %65, double %67), !dbg !1585
  %68 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %8, i64 0, i32 1, !dbg !1585
  %69 = load double, ptr %68, align 8, !dbg !1585, !tbaa !183
  %handler_result17 = call double @fAddHandlerDouble(double %handler_result16, double %69), !dbg !1586
  %70 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %9, i64 0, i32 1, !dbg !1586
  %71 = load double, ptr %70, align 8, !dbg !1586, !tbaa !183
  %handler_result18 = call double @fAddHandlerDouble(double %handler_result17, double %71), !dbg !1587
  %72 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %10, i64 0, i32 1, !dbg !1587
  %73 = load double, ptr %72, align 8, !dbg !1587, !tbaa !183
  %handler_result19 = call double @fAddHandlerDouble(double %handler_result18, double %73), !dbg !1588
  tail call void @llvm.dbg.value(metadata double %handler_result19, metadata !1513, metadata !DIExpression()), !dbg !1535
  %74 = load double, ptr %11, align 8, !dbg !1588, !tbaa !196
  %75 = load double, ptr %12, align 8, !dbg !1589, !tbaa !196
  %76 = fmul double %74, %75, !dbg !1590
  %77 = load double, ptr %13, align 8, !dbg !1591, !tbaa !196
  %78 = fmul double %76, %77, !dbg !1592
  %79 = load double, ptr %14, align 8, !dbg !1593, !tbaa !196
  %80 = fmul double %78, %79, !dbg !1594
  %81 = load double, ptr %15, align 8, !dbg !1595, !tbaa !196
  %82 = fmul double %80, %81, !dbg !1596
  tail call void @llvm.dbg.value(metadata double %82, metadata !1514, metadata !DIExpression()), !dbg !1535
  %83 = load double, ptr %16, align 8, !dbg !1597, !tbaa !178
  %84 = fmul double %82, %83, !dbg !1598
  %85 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %16, i64 0, i32 1, !dbg !1599
  %86 = load double, ptr %85, align 8, !dbg !1599, !tbaa !183
  %87 = call i32 @gsl_sf_exp_mult_err_e(double noundef %handler_result15, double noundef %handler_result19, double noundef %84, double noundef %86, ptr noundef %4) #7, !dbg !1600
  tail call void @llvm.dbg.value(metadata i32 %87, metadata !1515, metadata !DIExpression()), !dbg !1535
  %88 = icmp eq i32 %87, 0, !dbg !1601
  %89 = select i1 %88, i32 %58, i32 %87, !dbg !1601
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %16) #7, !dbg !1602
  br label %90

90:                                               ; preds = %57, %55
  %91 = phi i32 [ 1, %55 ], [ %89, %57 ], !dbg !1603
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #7, !dbg !1604
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #7, !dbg !1604
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #7, !dbg !1604
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #7, !dbg !1604
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #7, !dbg !1604
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #7, !dbg !1604
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #7, !dbg !1604
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #7, !dbg !1604
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #7, !dbg !1604
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #7, !dbg !1604
  br label %109

92:                                               ; preds = %27
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %17) #7, !dbg !1605
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %18) #7, !dbg !1606
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %19) #7, !dbg !1607
  %93 = call i32 @gsl_sf_lngamma_sgn_e(double noundef %2, ptr noundef nonnull %18, ptr noundef nonnull %19) #7, !dbg !1608
  tail call void @llvm.dbg.value(metadata i32 %93, metadata !1520, metadata !DIExpression()), !dbg !1537
  %94 = call i32 @gsl_sf_hyperg_2F1_e(double noundef %0, double noundef %1, double noundef %2, double noundef %3, ptr noundef nonnull %17), !dbg !1609
  tail call void @llvm.dbg.value(metadata i32 %94, metadata !1521, metadata !DIExpression()), !dbg !1537
  %95 = load double, ptr %18, align 8, !dbg !1610, !tbaa !178
  %96 = fneg double %95, !dbg !1611
  %97 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %18, i64 0, i32 1, !dbg !1612
  %98 = load double, ptr %97, align 8, !dbg !1612, !tbaa !183
  %99 = load double, ptr %19, align 8, !dbg !1613, !tbaa !196
  %100 = load double, ptr %17, align 8, !dbg !1614, !tbaa !178
  %101 = fmul double %99, %100, !dbg !1615
  %102 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %17, i64 0, i32 1, !dbg !1616
  %103 = load double, ptr %102, align 8, !dbg !1616, !tbaa !183
  %104 = call i32 @gsl_sf_exp_mult_err_e(double noundef %96, double noundef %98, double noundef %101, double noundef %103, ptr noundef %4) #7, !dbg !1617
  tail call void @llvm.dbg.value(metadata i32 %104, metadata !1522, metadata !DIExpression()), !dbg !1537
  %105 = icmp eq i32 %104, 0, !dbg !1618
  %106 = icmp eq i32 %94, 0, !dbg !1618
  %107 = select i1 %106, i32 %93, i32 %94, !dbg !1618
  %108 = select i1 %105, i32 %107, i32 %104, !dbg !1618
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %19) #7, !dbg !1619
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %18) #7, !dbg !1619
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %17) #7, !dbg !1619
  br label %109

109:                                              ; preds = %92, %90, %43
  %110 = phi i32 [ 0, %43 ], [ %91, %90 ], [ %108, %92 ], !dbg !1620
  ret i32 %110, !dbg !1621
}

declare !dbg !1622 i32 @gsl_sf_exp_mult_err_e(double noundef, double noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_hyperg_2F1_conj_renorm_e(double noundef %0, double noundef %1, double noundef %2, double noundef %3, ptr noundef %4) local_unnamed_addr #0 !dbg !1623 {
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1658
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1634, metadata !DIExpression(), metadata !1658, metadata ptr %6, metadata !DIExpression()), !dbg !1659
  %7 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1660
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1639, metadata !DIExpression(), metadata !1660, metadata ptr %7, metadata !DIExpression()), !dbg !1659
  %8 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1661
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1640, metadata !DIExpression(), metadata !1661, metadata ptr %8, metadata !DIExpression()), !dbg !1659
  %9 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1662
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1641, metadata !DIExpression(), metadata !1662, metadata ptr %9, metadata !DIExpression()), !dbg !1659
  %10 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1663
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1642, metadata !DIExpression(), metadata !1663, metadata ptr %10, metadata !DIExpression()), !dbg !1659
  %11 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1664
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1644, metadata !DIExpression(), metadata !1664, metadata ptr %11, metadata !DIExpression()), !dbg !1665
  %12 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1666
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1651, metadata !DIExpression(), metadata !1666, metadata ptr %12, metadata !DIExpression()), !dbg !1667
  %13 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1668
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1653, metadata !DIExpression(), metadata !1668, metadata ptr %13, metadata !DIExpression()), !dbg !1667
  %14 = alloca double, align 8, !DIAssignID !1669
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1654, metadata !DIExpression(), metadata !1669, metadata ptr %14, metadata !DIExpression()), !dbg !1667
  tail call void @llvm.dbg.value(metadata double %0, metadata !1625, metadata !DIExpression()), !dbg !1670
  tail call void @llvm.dbg.value(metadata double %1, metadata !1626, metadata !DIExpression()), !dbg !1670
  tail call void @llvm.dbg.value(metadata double %2, metadata !1627, metadata !DIExpression()), !dbg !1670
  tail call void @llvm.dbg.value(metadata double %3, metadata !1628, metadata !DIExpression()), !dbg !1670
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1629, metadata !DIExpression()), !dbg !1670
  %handler_result = call double @fAddHandlerDouble(double %2, double 5.000000e-01), !dbg !1671
  %15 = tail call double @llvm.floor.f64(double %handler_result), !dbg !1671
  tail call void @llvm.dbg.value(metadata double %15, metadata !1630, metadata !DIExpression()), !dbg !1670
  tail call void @llvm.dbg.value(metadata double poison, metadata !1631, metadata !DIExpression()), !dbg !1670
  %16 = fcmp olt double %0, 0.000000e+00, !dbg !1672
  br i1 %16, label %17, label %23, !dbg !1673

17:                                               ; preds = %5
  %handler_result1 = call double @fAddHandlerDouble(double %0, double 5.000000e-01), !dbg !1674
  %18 = tail call double @llvm.floor.f64(double %handler_result1), !dbg !1674
  tail call void @llvm.dbg.value(metadata double %18, metadata !1631, metadata !DIExpression()), !dbg !1670
  %handler_result2 = call double @fSubHandlerDouble(double %0, double %18), !dbg !1675
  %19 = tail call double @llvm.fabs.f64(double %handler_result2), !dbg !1675
  %20 = fcmp olt double %19, 0x3D4F400000000000, !dbg !1676
  br i1 %20, label %21, label %23, !dbg !1677

21:                                               ; preds = %17
  %22 = fcmp oeq double %1, 0.000000e+00, !dbg !1678
  br label %23

23:                                               ; preds = %21, %17, %5
  %24 = phi i1 [ false, %17 ], [ false, %5 ], [ %22, %21 ], !dbg !1670
  tail call void @llvm.dbg.value(metadata i1 %24, metadata !1632, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1670
  %25 = fcmp olt double %2, 0.000000e+00, !dbg !1679
  %handler_result3 = call double @fSubHandlerDouble(double %2, double %15), !dbg !1680
  %26 = tail call double @llvm.fabs.f64(double %handler_result3), !dbg !1680
  %27 = fcmp olt double %26, 0x3D4F400000000000, !dbg !1680
  %28 = and i1 %25, %27, !dbg !1680
  tail call void @llvm.dbg.value(metadata i1 %28, metadata !1633, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1670
  br i1 %28, label %29, label %63, !dbg !1681

29:                                               ; preds = %23
  %handler_result4 = call double @fAddHandlerDouble(double %2, double 1.000000e-01)
  %30 = fcmp olt double %handler_result4, %0
  %31 = and i1 %30, %24, !dbg !1682
  br i1 %31, label %32, label %33, !dbg !1682

32:                                               ; preds = %29
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false), !dbg !1683
  br label %80, !dbg !1685

33:                                               ; preds = %29
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #7, !dbg !1686
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #7, !dbg !1686
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #7, !dbg !1687
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #7, !dbg !1688
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #7, !dbg !1688
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1643, metadata !DIExpression()), !dbg !1659
  %handler_result5 = call double @fSubHandlerDouble(double %0, double %2), !dbg !1689
  %handler_result6 = call double @fAddHandlerDouble(double %handler_result5, double 1.000000e+00), !dbg !1690
  %34 = call i32 @gsl_sf_lngamma_complex_e(double noundef %handler_result6, double noundef %1, ptr noundef nonnull %6, ptr noundef nonnull %9) #7, !dbg !1690
  tail call void @llvm.dbg.value(metadata i32 %34, metadata !1643, metadata !DIExpression()), !dbg !1659
  %35 = call i32 @gsl_sf_lngamma_complex_e(double noundef %0, double noundef %1, ptr noundef nonnull %7, ptr noundef nonnull %10) #7, !dbg !1691
  %36 = add nsw i32 %35, %34, !dbg !1692
  tail call void @llvm.dbg.value(metadata i32 %36, metadata !1643, metadata !DIExpression()), !dbg !1659
  %handler_result7 = call double @fSubHandlerDouble(double 2.000000e+00, double %2), !dbg !1693
  %37 = call i32 @gsl_sf_lngamma_e(double noundef %handler_result7, ptr noundef nonnull %8) #7, !dbg !1693
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 %36, i32 %37), metadata !1643, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !1659
  %38 = sub i32 0, %37, !dbg !1694
  %39 = icmp eq i32 %36, %38, !dbg !1694
  br i1 %39, label %42, label %40, !dbg !1695

40:                                               ; preds = %33
  store double 0x7FF8000000000000, ptr %4, align 8, !dbg !1696, !tbaa !178
  %41 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !1696
  store double 0x7FF8000000000000, ptr %41, align 8, !dbg !1696, !tbaa !183
  call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 913, i32 noundef 1) #7, !dbg !1699
  br label %61, !dbg !1699

42:                                               ; preds = %33
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #7, !dbg !1701
  %43 = call i32 @gsl_sf_hyperg_2F1_conj_e(double noundef %handler_result6, double noundef %1, double noundef %handler_result7, double noundef %3, ptr noundef nonnull %11), !dbg !1702, !range !1703
  tail call void @llvm.dbg.value(metadata i32 %43, metadata !1647, metadata !DIExpression()), !dbg !1665
  %44 = load double, ptr %6, align 8, !dbg !1704, !tbaa !178
  %45 = load double, ptr %7, align 8, !dbg !1705, !tbaa !178
  %handler_result8 = call double @fSubHandlerDouble(double %44, double %45), !dbg !1706
  %46 = fmul double %handler_result8, 2.000000e+00, !dbg !1706
  %47 = load double, ptr %8, align 8, !dbg !1707, !tbaa !178
  %handler_result9 = call double @fSubHandlerDouble(double %46, double %47), !dbg !1708
  tail call void @llvm.dbg.value(metadata double %handler_result9, metadata !1648, metadata !DIExpression()), !dbg !1665
  %48 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !1708
  %49 = load double, ptr %48, align 8, !dbg !1708, !tbaa !183
  %50 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %7, i64 0, i32 1, !dbg !1709
  %51 = load double, ptr %50, align 8, !dbg !1709, !tbaa !183
  %handler_result10 = call double @fAddHandlerDouble(double %49, double %51), !dbg !1710
  %52 = fmul double %handler_result10, 2.000000e+00, !dbg !1710
  %53 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %8, i64 0, i32 1, !dbg !1711
  %54 = load double, ptr %53, align 8, !dbg !1711, !tbaa !183
  %handler_result11 = call double @fAddHandlerDouble(double %54, double %52), !dbg !1712
  tail call void @llvm.dbg.value(metadata double %handler_result11, metadata !1649, metadata !DIExpression()), !dbg !1665
  %55 = load double, ptr %11, align 8, !dbg !1712, !tbaa !178
  %56 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %11, i64 0, i32 1, !dbg !1713
  %57 = load double, ptr %56, align 8, !dbg !1713, !tbaa !183
  %58 = call i32 @gsl_sf_exp_mult_err_e(double noundef %handler_result9, double noundef %handler_result11, double noundef %55, double noundef %57, ptr noundef %4) #7, !dbg !1714
  tail call void @llvm.dbg.value(metadata i32 %58, metadata !1650, metadata !DIExpression()), !dbg !1665
  %59 = icmp eq i32 %58, 0, !dbg !1715
  %60 = select i1 %59, i32 %43, i32 %58, !dbg !1715
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #7, !dbg !1716
  br label %61

61:                                               ; preds = %42, %40
  %62 = phi i32 [ 1, %40 ], [ %60, %42 ], !dbg !1717
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #7, !dbg !1718
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #7, !dbg !1718
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #7, !dbg !1718
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #7, !dbg !1718
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #7, !dbg !1718
  br label %80

63:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #7, !dbg !1719
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #7, !dbg !1720
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #7, !dbg !1721
  %64 = call i32 @gsl_sf_lngamma_sgn_e(double noundef %2, ptr noundef nonnull %13, ptr noundef nonnull %14) #7, !dbg !1722
  tail call void @llvm.dbg.value(metadata i32 %64, metadata !1655, metadata !DIExpression()), !dbg !1667
  %65 = call i32 @gsl_sf_hyperg_2F1_conj_e(double noundef %0, double noundef %1, double noundef %2, double noundef %3, ptr noundef nonnull %12), !dbg !1723, !range !1703
  tail call void @llvm.dbg.value(metadata i32 %65, metadata !1656, metadata !DIExpression()), !dbg !1667
  %66 = load double, ptr %13, align 8, !dbg !1724, !tbaa !178
  %67 = fneg double %66, !dbg !1725
  %68 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %13, i64 0, i32 1, !dbg !1726
  %69 = load double, ptr %68, align 8, !dbg !1726, !tbaa !183
  %70 = load double, ptr %14, align 8, !dbg !1727, !tbaa !196
  %71 = load double, ptr %12, align 8, !dbg !1728, !tbaa !178
  %72 = fmul double %70, %71, !dbg !1729
  %73 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %12, i64 0, i32 1, !dbg !1730
  %74 = load double, ptr %73, align 8, !dbg !1730, !tbaa !183
  %75 = call i32 @gsl_sf_exp_mult_err_e(double noundef %67, double noundef %69, double noundef %72, double noundef %74, ptr noundef %4) #7, !dbg !1731
  tail call void @llvm.dbg.value(metadata i32 %75, metadata !1657, metadata !DIExpression()), !dbg !1667
  %76 = icmp eq i32 %75, 0, !dbg !1732
  %77 = icmp eq i32 %65, 0, !dbg !1732
  %78 = select i1 %77, i32 %64, i32 %65, !dbg !1732
  %79 = select i1 %76, i32 %78, i32 %75, !dbg !1732
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #7, !dbg !1733
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #7, !dbg !1733
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #7, !dbg !1733
  br label %80

80:                                               ; preds = %63, %61, %32
  %81 = phi i32 [ 0, %32 ], [ %62, %61 ], [ %79, %63 ], !dbg !1734
  ret i32 %81, !dbg !1735
}

declare !dbg !1736 i32 @gsl_sf_lngamma_complex_e(double noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_hyperg_2F1(double noundef %0, double noundef %1, double noundef %2, double noundef %3) local_unnamed_addr #0 !dbg !1739 {
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1749
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1747, metadata !DIExpression(), metadata !1749, metadata ptr %5, metadata !DIExpression()), !dbg !1750
  tail call void @llvm.dbg.value(metadata double %0, metadata !1743, metadata !DIExpression()), !dbg !1750
  tail call void @llvm.dbg.value(metadata double %1, metadata !1744, metadata !DIExpression()), !dbg !1750
  tail call void @llvm.dbg.value(metadata double %2, metadata !1745, metadata !DIExpression()), !dbg !1750
  tail call void @llvm.dbg.value(metadata double %3, metadata !1746, metadata !DIExpression()), !dbg !1750
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7, !dbg !1751
  %6 = call i32 @gsl_sf_hyperg_2F1_e(double noundef %0, double noundef %1, double noundef %2, double noundef %3, ptr noundef nonnull %5), !dbg !1751
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !1748, metadata !DIExpression()), !dbg !1750
  %7 = icmp eq i32 %6, 0, !dbg !1752
  br i1 %7, label %9, label %8, !dbg !1751

8:                                                ; preds = %4
  call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 948, i32 noundef %6) #7, !dbg !1754
  br label %9, !dbg !1754

9:                                                ; preds = %8, %4
  %10 = load double, ptr %5, align 8, !dbg !1751, !tbaa !178
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7, !dbg !1757
  ret double %10, !dbg !1757
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_hyperg_2F1_conj(double noundef %0, double noundef %1, double noundef %2, double noundef %3) local_unnamed_addr #0 !dbg !1758 {
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1766
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1764, metadata !DIExpression(), metadata !1766, metadata ptr %5, metadata !DIExpression()), !dbg !1767
  tail call void @llvm.dbg.value(metadata double %0, metadata !1760, metadata !DIExpression()), !dbg !1767
  tail call void @llvm.dbg.value(metadata double %1, metadata !1761, metadata !DIExpression()), !dbg !1767
  tail call void @llvm.dbg.value(metadata double %2, metadata !1762, metadata !DIExpression()), !dbg !1767
  tail call void @llvm.dbg.value(metadata double %3, metadata !1763, metadata !DIExpression()), !dbg !1767
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7, !dbg !1768
  %6 = call i32 @gsl_sf_hyperg_2F1_conj_e(double noundef %0, double noundef %1, double noundef %2, double noundef %3, ptr noundef nonnull %5), !dbg !1768, !range !1703
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !1765, metadata !DIExpression()), !dbg !1767
  %7 = icmp eq i32 %6, 0, !dbg !1769
  br i1 %7, label %9, label %8, !dbg !1768

8:                                                ; preds = %4
  tail call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 953, i32 noundef %6) #7, !dbg !1771
  br label %9, !dbg !1771

9:                                                ; preds = %8, %4
  %10 = load double, ptr %5, align 8, !dbg !1768, !tbaa !178
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7, !dbg !1774
  ret double %10, !dbg !1774
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_hyperg_2F1_renorm(double noundef %0, double noundef %1, double noundef %2, double noundef %3) local_unnamed_addr #0 !dbg !1775 {
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1783
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1781, metadata !DIExpression(), metadata !1783, metadata ptr %5, metadata !DIExpression()), !dbg !1784
  tail call void @llvm.dbg.value(metadata double %0, metadata !1777, metadata !DIExpression()), !dbg !1784
  tail call void @llvm.dbg.value(metadata double %1, metadata !1778, metadata !DIExpression()), !dbg !1784
  tail call void @llvm.dbg.value(metadata double %2, metadata !1779, metadata !DIExpression()), !dbg !1784
  tail call void @llvm.dbg.value(metadata double %3, metadata !1780, metadata !DIExpression()), !dbg !1784
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7, !dbg !1785
  %6 = call i32 @gsl_sf_hyperg_2F1_renorm_e(double noundef %0, double noundef %1, double noundef %2, double noundef %3, ptr noundef nonnull %5), !dbg !1785
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !1782, metadata !DIExpression()), !dbg !1784
  %7 = icmp eq i32 %6, 0, !dbg !1786
  br i1 %7, label %9, label %8, !dbg !1785

8:                                                ; preds = %4
  call void @gsl_error(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 958, i32 noundef %6) #7, !dbg !1788
  br label %9, !dbg !1788

9:                                                ; preds = %8, %4
  %10 = load double, ptr %5, align 8, !dbg !1785, !tbaa !178
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7, !dbg !1791
  ret double %10, !dbg !1791
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_hyperg_2F1_conj_renorm(double noundef %0, double noundef %1, double noundef %2, double noundef %3) local_unnamed_addr #0 !dbg !1792 {
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1800
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1798, metadata !DIExpression(), metadata !1800, metadata ptr %5, metadata !DIExpression()), !dbg !1801
  tail call void @llvm.dbg.value(metadata double %0, metadata !1794, metadata !DIExpression()), !dbg !1801
  tail call void @llvm.dbg.value(metadata double %1, metadata !1795, metadata !DIExpression()), !dbg !1801
  tail call void @llvm.dbg.value(metadata double %2, metadata !1796, metadata !DIExpression()), !dbg !1801
  tail call void @llvm.dbg.value(metadata double %3, metadata !1797, metadata !DIExpression()), !dbg !1801
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7, !dbg !1802
  %6 = call i32 @gsl_sf_hyperg_2F1_conj_renorm_e(double noundef %0, double noundef %1, double noundef %2, double noundef %3, ptr noundef nonnull %5), !dbg !1802
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !1799, metadata !DIExpression()), !dbg !1801
  %7 = icmp eq i32 %6, 0, !dbg !1803
  br i1 %7, label %9, label %8, !dbg !1802

8:                                                ; preds = %4
  call void @gsl_error(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 963, i32 noundef %6) #7, !dbg !1805
  br label %9, !dbg !1805

9:                                                ; preds = %8, %4
  %10 = load double, ptr %5, align 8, !dbg !1802, !tbaa !178
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7, !dbg !1808
  ret double %10, !dbg !1808
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !1809 double @log(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !1813 double @sqrt(double noundef) local_unnamed_addr #5

declare !dbg !1814 i32 @gsl_sf_psi_e(double noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

declare double @fSubHandlerDouble(double, double)

declare double @fAddHandlerDouble(double, double)

declare double @callHandler(i32, double, double)

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!41}
!llvm.module.flags = !{!85, !86, !87, !88, !89, !90, !91}
!llvm.ident = !{!92}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 672, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "hyperg_2F1.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "c920c1ca92d8b933d23b0c217bf15d2e")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 13)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 672, type: !3, isLocal: true, isDefinition: true)
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(scope: null, file: !2, line: 773, type: !11, isLocal: true, isDefinition: true)
!11 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !12)
!12 = !{!13}
!13 = !DISubrange(count: 6)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(scope: null, file: !2, line: 948, type: !16, isLocal: true, isDefinition: true)
!16 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 328, elements: !17)
!17 = !{!18}
!18 = !DISubrange(count: 41)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(scope: null, file: !2, line: 953, type: !21, isLocal: true, isDefinition: true)
!21 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !22)
!22 = !{!23}
!23 = !DISubrange(count: 48)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression())
!25 = distinct !DIGlobalVariable(scope: null, file: !2, line: 958, type: !21, isLocal: true, isDefinition: true)
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression())
!27 = distinct !DIGlobalVariable(scope: null, file: !2, line: 963, type: !28, isLocal: true, isDefinition: true)
!28 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 440, elements: !29)
!29 = !{!30}
!30 = !DISubrange(count: 55)
!31 = !DIGlobalVariableExpression(var: !32, expr: !DIExpression())
!32 = distinct !DIGlobalVariable(scope: null, file: !2, line: 440, type: !33, isLocal: true, isDefinition: true)
!33 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !34)
!34 = !{!35}
!35 = !DISubrange(count: 9)
!36 = !DIGlobalVariableExpression(var: !37, expr: !DIExpression())
!37 = distinct !DIGlobalVariable(scope: null, file: !2, line: 602, type: !38, isLocal: true, isDefinition: true)
!38 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !39)
!39 = !{!40}
!40 = !DISubrange(count: 10)
!41 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !42, retainedTypes: !82, globals: !84, splitDebugInlining: false, nameTableKind: None)
!42 = !{!43}
!43 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !44, line: 39, baseType: !45, size: 32, elements: !46)
!44 = !DIFile(filename: "../gsl/gsl_errno.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "3ff14ff6df19564f3d7caf1e8e622626")
!45 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!46 = !{!47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81}
!47 = !DIEnumerator(name: "GSL_SUCCESS", value: 0)
!48 = !DIEnumerator(name: "GSL_FAILURE", value: -1)
!49 = !DIEnumerator(name: "GSL_CONTINUE", value: -2)
!50 = !DIEnumerator(name: "GSL_EDOM", value: 1)
!51 = !DIEnumerator(name: "GSL_ERANGE", value: 2)
!52 = !DIEnumerator(name: "GSL_EFAULT", value: 3)
!53 = !DIEnumerator(name: "GSL_EINVAL", value: 4)
!54 = !DIEnumerator(name: "GSL_EFAILED", value: 5)
!55 = !DIEnumerator(name: "GSL_EFACTOR", value: 6)
!56 = !DIEnumerator(name: "GSL_ESANITY", value: 7)
!57 = !DIEnumerator(name: "GSL_ENOMEM", value: 8)
!58 = !DIEnumerator(name: "GSL_EBADFUNC", value: 9)
!59 = !DIEnumerator(name: "GSL_ERUNAWAY", value: 10)
!60 = !DIEnumerator(name: "GSL_EMAXITER", value: 11)
!61 = !DIEnumerator(name: "GSL_EZERODIV", value: 12)
!62 = !DIEnumerator(name: "GSL_EBADTOL", value: 13)
!63 = !DIEnumerator(name: "GSL_ETOL", value: 14)
!64 = !DIEnumerator(name: "GSL_EUNDRFLW", value: 15)
!65 = !DIEnumerator(name: "GSL_EOVRFLW", value: 16)
!66 = !DIEnumerator(name: "GSL_ELOSS", value: 17)
!67 = !DIEnumerator(name: "GSL_EROUND", value: 18)
!68 = !DIEnumerator(name: "GSL_EBADLEN", value: 19)
!69 = !DIEnumerator(name: "GSL_ENOTSQR", value: 20)
!70 = !DIEnumerator(name: "GSL_ESING", value: 21)
!71 = !DIEnumerator(name: "GSL_EDIVERGE", value: 22)
!72 = !DIEnumerator(name: "GSL_EUNSUP", value: 23)
!73 = !DIEnumerator(name: "GSL_EUNIMPL", value: 24)
!74 = !DIEnumerator(name: "GSL_ECACHE", value: 25)
!75 = !DIEnumerator(name: "GSL_ETABLE", value: 26)
!76 = !DIEnumerator(name: "GSL_ENOPROG", value: 27)
!77 = !DIEnumerator(name: "GSL_ENOPROGJ", value: 28)
!78 = !DIEnumerator(name: "GSL_ETOLF", value: 29)
!79 = !DIEnumerator(name: "GSL_ETOLX", value: 30)
!80 = !DIEnumerator(name: "GSL_ETOLG", value: 31)
!81 = !DIEnumerator(name: "GSL_EOF", value: 32)
!82 = !{!83}
!83 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!84 = !{!0, !7, !9, !14, !19, !24, !26, !31, !36}
!85 = !{i32 7, !"Dwarf Version", i32 5}
!86 = !{i32 2, !"Debug Info Version", i32 3}
!87 = !{i32 1, !"wchar_size", i32 4}
!88 = !{i32 8, !"PIC Level", i32 2}
!89 = !{i32 7, !"PIE Level", i32 2}
!90 = !{i32 7, !"uwtable", i32 2}
!91 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!92 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!93 = distinct !DISubprogram(name: "gsl_sf_hyperg_2F1_e", scope: !2, file: !2, line: 643, type: !94, scopeLine: 646, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !104)
!94 = !DISubroutineType(types: !95)
!95 = !{!45, !83, !83, !96, !96, !97}
!96 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !83)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !99, line: 41, baseType: !100)
!99 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "5b52deed011f1ffd07977b19a388d251")
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !99, line: 37, size: 128, elements: !101)
!101 = !{!102, !103}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !100, file: !99, line: 38, baseType: !83, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !100, file: !99, line: 39, baseType: !83, size: 64, offset: 64)
!104 = !{!105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !116, !117, !118, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !135, !136}
!105 = !DILocalVariable(name: "a", arg: 1, scope: !93, file: !2, line: 643, type: !83)
!106 = !DILocalVariable(name: "b", arg: 2, scope: !93, file: !2, line: 643, type: !83)
!107 = !DILocalVariable(name: "c", arg: 3, scope: !93, file: !2, line: 643, type: !96)
!108 = !DILocalVariable(name: "x", arg: 4, scope: !93, file: !2, line: 644, type: !96)
!109 = !DILocalVariable(name: "result", arg: 5, scope: !93, file: !2, line: 645, type: !97)
!110 = !DILocalVariable(name: "d", scope: !93, file: !2, line: 647, type: !96)
!111 = !DILocalVariable(name: "rinta", scope: !93, file: !2, line: 648, type: !96)
!112 = !DILocalVariable(name: "rintb", scope: !93, file: !2, line: 649, type: !96)
!113 = !DILocalVariable(name: "rintc", scope: !93, file: !2, line: 650, type: !96)
!114 = !DILocalVariable(name: "a_neg_integer", scope: !93, file: !2, line: 651, type: !115)
!115 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!116 = !DILocalVariable(name: "b_neg_integer", scope: !93, file: !2, line: 652, type: !115)
!117 = !DILocalVariable(name: "c_neg_integer", scope: !93, file: !2, line: 653, type: !115)
!118 = !DILocalVariable(name: "lngamc", scope: !119, file: !2, line: 661, type: !98)
!119 = distinct !DILexicalBlock(scope: !120, file: !2, line: 660, column: 79)
!120 = distinct !DILexicalBlock(scope: !93, file: !2, line: 660, column: 7)
!121 = !DILocalVariable(name: "lngamcab", scope: !119, file: !2, line: 661, type: !98)
!122 = !DILocalVariable(name: "lngamca", scope: !119, file: !2, line: 661, type: !98)
!123 = !DILocalVariable(name: "lngamcb", scope: !119, file: !2, line: 661, type: !98)
!124 = !DILocalVariable(name: "lngamc_sgn", scope: !119, file: !2, line: 662, type: !83)
!125 = !DILocalVariable(name: "lngamca_sgn", scope: !119, file: !2, line: 662, type: !83)
!126 = !DILocalVariable(name: "lngamcb_sgn", scope: !119, file: !2, line: 662, type: !83)
!127 = !DILocalVariable(name: "status", scope: !119, file: !2, line: 663, type: !45)
!128 = !DILocalVariable(name: "stat1", scope: !119, file: !2, line: 664, type: !45)
!129 = !DILocalVariable(name: "stat2", scope: !119, file: !2, line: 665, type: !45)
!130 = !DILocalVariable(name: "stat3", scope: !119, file: !2, line: 666, type: !45)
!131 = !DILocalVariable(name: "stat4", scope: !119, file: !2, line: 667, type: !45)
!132 = !DILocalVariable(name: "ap", scope: !133, file: !2, line: 739, type: !83)
!133 = distinct !DILexicalBlock(scope: !134, file: !2, line: 734, column: 8)
!134 = distinct !DILexicalBlock(scope: !93, file: !2, line: 708, column: 6)
!135 = !DILocalVariable(name: "bp", scope: !133, file: !2, line: 739, type: !83)
!136 = !DILocalVariable(name: "stat", scope: !137, file: !2, line: 765, type: !45)
!137 = distinct !DILexicalBlock(scope: !138, file: !2, line: 762, column: 61)
!138 = distinct !DILexicalBlock(scope: !133, file: !2, line: 762, column: 8)
!139 = distinct !DIAssignID()
!140 = !DILocation(line: 0, scope: !119)
!141 = distinct !DIAssignID()
!142 = distinct !DIAssignID()
!143 = distinct !DIAssignID()
!144 = distinct !DIAssignID()
!145 = distinct !DIAssignID()
!146 = distinct !DIAssignID()
!147 = !DILocation(line: 0, scope: !93)
!148 = !DILocation(line: 647, column: 26, scope: !93)
!149 = !DILocation(line: 648, column: 32, scope: !93)
!150 = !DILocation(line: 648, column: 24, scope: !93)
!151 = !DILocation(line: 649, column: 24, scope: !93)
!152 = !DILocation(line: 650, column: 24, scope: !93)
!153 = !DILocation(line: 651, column: 33, scope: !93)
!154 = !DILocation(line: 651, column: 40, scope: !93)
!155 = !DILocation(line: 652, column: 33, scope: !93)
!156 = !DILocation(line: 652, column: 40, scope: !93)
!157 = !DILocation(line: 653, column: 33, scope: !93)
!158 = !DILocation(line: 653, column: 40, scope: !93)
!159 = !DILocation(line: 656, column: 11, scope: !93)
!160 = !DILocation(line: 660, column: 7, scope: !120)
!161 = !DILocation(line: 660, column: 22, scope: !120)
!162 = !DILocation(line: 656, column: 15, scope: !93)
!163 = !DILocation(line: 660, column: 31, scope: !120)
!164 = !DILocation(line: 660, column: 46, scope: !120)
!165 = !DILocation(line: 660, column: 50, scope: !120)
!166 = !DILocation(line: 661, column: 5, scope: !119)
!167 = !DILocation(line: 662, column: 5, scope: !119)
!168 = !DILocation(line: 664, column: 17, scope: !119)
!169 = !DILocation(line: 665, column: 17, scope: !119)
!170 = !DILocation(line: 666, column: 17, scope: !119)
!171 = !DILocation(line: 667, column: 17, scope: !119)
!172 = !DILocation(line: 669, column: 15, scope: !173)
!173 = distinct !DILexicalBlock(scope: !119, file: !2, line: 669, column: 9)
!174 = !DILocation(line: 669, column: 30, scope: !173)
!175 = !DILocation(line: 672, column: 9, scope: !176)
!176 = distinct !DILexicalBlock(scope: !177, file: !2, line: 672, column: 9)
!177 = distinct !DILexicalBlock(scope: !173, file: !2, line: 671, column: 7)
!178 = !{!179, !180, i64 0}
!179 = !{!"gsl_sf_result_struct", !180, i64 0, !180, i64 8}
!180 = !{!"double", !181, i64 0}
!181 = !{!"omnipotent char", !182, i64 0}
!182 = !{!"Simple C/C++ TBAA"}
!183 = !{!179, !180, i64 8}
!184 = !DILocation(line: 672, column: 9, scope: !185)
!185 = distinct !DILexicalBlock(scope: !176, file: !2, line: 672, column: 9)
!186 = !DILocation(line: 676, column: 32, scope: !119)
!187 = !DILocation(line: 676, column: 47, scope: !119)
!188 = !DILocation(line: 676, column: 61, scope: !119)
!189 = !DILocation(line: 676, column: 75, scope: !119)
!190 = !DILocation(line: 677, column: 32, scope: !119)
!191 = !DILocation(line: 677, column: 47, scope: !119)
!192 = !DILocation(line: 677, column: 61, scope: !119)
!193 = !DILocation(line: 677, column: 75, scope: !119)
!194 = !DILocation(line: 676, column: 7, scope: !119)
!195 = !DILocation(line: 680, column: 20, scope: !119)
!196 = !{!180, !180, i64 0}
!197 = !DILocation(line: 680, column: 34, scope: !119)
!198 = !DILocation(line: 680, column: 48, scope: !119)
!199 = !DILocation(line: 680, column: 46, scope: !119)
!200 = !DILocation(line: 680, column: 31, scope: !119)
!201 = !DILocation(line: 680, column: 17, scope: !119)
!202 = !DILocation(line: 681, column: 7, scope: !119)
!203 = !DILocation(line: 682, column: 3, scope: !120)
!204 = !DILocation(line: 684, column: 8, scope: !205)
!205 = distinct !DILexicalBlock(scope: !93, file: !2, line: 684, column: 6)
!206 = !DILocation(line: 684, column: 15, scope: !205)
!207 = !DILocation(line: 685, column: 5, scope: !208)
!208 = distinct !DILexicalBlock(scope: !209, file: !2, line: 685, column: 5)
!209 = distinct !DILexicalBlock(scope: !205, file: !2, line: 684, column: 28)
!210 = !DILocation(line: 685, column: 5, scope: !211)
!211 = distinct !DILexicalBlock(scope: !208, file: !2, line: 685, column: 5)
!212 = !DILocation(line: 688, column: 6, scope: !93)
!213 = !DILocation(line: 692, column: 25, scope: !214)
!214 = distinct !DILexicalBlock(scope: !215, file: !2, line: 692, column: 8)
!215 = distinct !DILexicalBlock(scope: !216, file: !2, line: 688, column: 21)
!216 = distinct !DILexicalBlock(scope: !93, file: !2, line: 688, column: 6)
!217 = !DILocation(line: 693, column: 7, scope: !218)
!218 = distinct !DILexicalBlock(scope: !219, file: !2, line: 693, column: 7)
!219 = distinct !DILexicalBlock(scope: !214, file: !2, line: 692, column: 78)
!220 = !DILocation(line: 693, column: 7, scope: !221)
!221 = distinct !DILexicalBlock(scope: !218, file: !2, line: 693, column: 7)
!222 = !DILocation(line: 697, column: 6, scope: !223)
!223 = distinct !DILexicalBlock(scope: !93, file: !2, line: 697, column: 6)
!224 = !DILocation(line: 697, column: 16, scope: !223)
!225 = !DILocation(line: 697, column: 25, scope: !223)
!226 = !DILocalVariable(name: "x", arg: 1, scope: !227, file: !2, line: 625, type: !96)
!227 = distinct !DISubprogram(name: "pow_omx", scope: !2, file: !2, line: 625, type: !228, scopeLine: 626, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !230)
!228 = !DISubroutineType(types: !229)
!229 = !{!45, !96, !96, !97}
!230 = !{!226, !231, !232, !233, !234}
!231 = !DILocalVariable(name: "p", arg: 2, scope: !227, file: !2, line: 625, type: !96)
!232 = !DILocalVariable(name: "result", arg: 3, scope: !227, file: !2, line: 625, type: !97)
!233 = !DILocalVariable(name: "ln_omx", scope: !227, file: !2, line: 627, type: !83)
!234 = !DILocalVariable(name: "ln_result", scope: !227, file: !2, line: 628, type: !83)
!235 = !DILocation(line: 0, scope: !227, inlinedAt: !236)
!236 = distinct !DILocation(line: 698, column: 12, scope: !237)
!237 = distinct !DILexicalBlock(scope: !223, file: !2, line: 697, column: 48)
!238 = !DILocation(line: 629, column: 6, scope: !239, inlinedAt: !236)
!239 = distinct !DILexicalBlock(scope: !227, file: !2, line: 629, column: 6)
!240 = !DILocation(line: 629, column: 14, scope: !239, inlinedAt: !236)
!241 = !DILocation(line: 629, column: 6, scope: !227, inlinedAt: !236)
!242 = !DILocation(line: 630, column: 14, scope: !243, inlinedAt: !236)
!243 = distinct !DILexicalBlock(scope: !239, file: !2, line: 629, column: 39)
!244 = !DILocation(line: 630, column: 51, scope: !243, inlinedAt: !236)
!245 = !DILocation(line: 630, column: 59, scope: !243, inlinedAt: !236)
!246 = !DILocation(line: 630, column: 61, scope: !243, inlinedAt: !236)
!247 = !DILocation(line: 630, column: 38, scope: !243, inlinedAt: !236)
!248 = !DILocation(line: 630, column: 25, scope: !243, inlinedAt: !236)
!249 = !DILocation(line: 630, column: 16, scope: !243, inlinedAt: !236)
!250 = !DILocation(line: 631, column: 3, scope: !243, inlinedAt: !236)
!251 = !DILocation(line: 633, column: 14, scope: !252, inlinedAt: !236)
!252 = distinct !DILexicalBlock(scope: !239, file: !2, line: 632, column: 8)
!253 = !DILocation(line: 0, scope: !239, inlinedAt: !236)
!254 = !DILocation(line: 635, column: 17, scope: !227, inlinedAt: !236)
!255 = !DILocation(line: 636, column: 56, scope: !227, inlinedAt: !236)
!256 = !DILocation(line: 636, column: 54, scope: !227, inlinedAt: !236)
!257 = !DILocation(line: 636, column: 10, scope: !227, inlinedAt: !236)
!258 = !DILocation(line: 698, column: 5, scope: !237)
!259 = !DILocation(line: 701, column: 8, scope: !260)
!260 = distinct !DILexicalBlock(scope: !93, file: !2, line: 701, column: 6)
!261 = !DILocation(line: 701, column: 15, scope: !260)
!262 = !DILocation(line: 705, column: 12, scope: !263)
!263 = distinct !DILexicalBlock(scope: !260, file: !2, line: 701, column: 64)
!264 = !{i32 0, i32 12}
!265 = !DILocation(line: 705, column: 5, scope: !263)
!266 = !DILocation(line: 708, column: 6, scope: !134)
!267 = !DILocation(line: 708, column: 14, scope: !134)
!268 = !DILocation(line: 708, column: 21, scope: !134)
!269 = !DILocation(line: 712, column: 8, scope: !270)
!270 = distinct !DILexicalBlock(scope: !134, file: !2, line: 708, column: 40)
!271 = !DILocation(line: 713, column: 14, scope: !272)
!272 = distinct !DILexicalBlock(scope: !273, file: !2, line: 712, column: 23)
!273 = distinct !DILexicalBlock(scope: !270, file: !2, line: 712, column: 8)
!274 = !DILocation(line: 713, column: 7, scope: !272)
!275 = !DILocation(line: 715, column: 8, scope: !270)
!276 = !DILocation(line: 716, column: 14, scope: !277)
!277 = distinct !DILexicalBlock(scope: !278, file: !2, line: 715, column: 23)
!278 = distinct !DILexicalBlock(scope: !270, file: !2, line: 715, column: 8)
!279 = !DILocation(line: 716, column: 7, scope: !277)
!280 = !DILocation(line: 719, column: 10, scope: !281)
!281 = distinct !DILexicalBlock(scope: !270, file: !2, line: 719, column: 8)
!282 = !DILocation(line: 719, column: 8, scope: !270)
!283 = !DILocation(line: 720, column: 14, scope: !284)
!284 = distinct !DILexicalBlock(scope: !281, file: !2, line: 719, column: 19)
!285 = !DILocation(line: 720, column: 7, scope: !284)
!286 = !DILocation(line: 722, column: 15, scope: !287)
!287 = distinct !DILexicalBlock(scope: !281, file: !2, line: 722, column: 13)
!288 = !DILocation(line: 722, column: 13, scope: !281)
!289 = !DILocation(line: 723, column: 14, scope: !290)
!290 = distinct !DILexicalBlock(scope: !287, file: !2, line: 722, column: 22)
!291 = !DILocation(line: 723, column: 7, scope: !290)
!292 = !DILocation(line: 726, column: 10, scope: !293)
!293 = distinct !DILexicalBlock(scope: !294, file: !2, line: 726, column: 10)
!294 = distinct !DILexicalBlock(scope: !287, file: !2, line: 725, column: 10)
!295 = !DILocation(line: 726, column: 18, scope: !293)
!296 = !DILocation(line: 726, column: 10, scope: !294)
!297 = !DILocation(line: 727, column: 16, scope: !298)
!298 = distinct !DILexicalBlock(scope: !293, file: !2, line: 726, column: 26)
!299 = !DILocation(line: 727, column: 9, scope: !298)
!300 = !DILocation(line: 730, column: 16, scope: !301)
!301 = distinct !DILexicalBlock(scope: !293, file: !2, line: 729, column: 12)
!302 = !DILocation(line: 730, column: 9, scope: !301)
!303 = !DILocation(line: 740, column: 16, scope: !304)
!304 = distinct !DILexicalBlock(scope: !133, file: !2, line: 740, column: 8)
!305 = !DILocation(line: 0, scope: !133)
!306 = !DILocation(line: 749, column: 10, scope: !307)
!307 = distinct !DILexicalBlock(scope: !133, file: !2, line: 749, column: 8)
!308 = !DILocation(line: 749, column: 8, scope: !133)
!309 = !DILocation(line: 752, column: 14, scope: !310)
!310 = distinct !DILexicalBlock(scope: !307, file: !2, line: 749, column: 17)
!311 = !DILocation(line: 752, column: 7, scope: !310)
!312 = !DILocation(line: 755, column: 20, scope: !313)
!313 = distinct !DILexicalBlock(scope: !133, file: !2, line: 755, column: 8)
!314 = !DILocalVariable(name: "a", arg: 1, scope: !315, file: !316, line: 69, type: !83)
!315 = distinct !DISubprogram(name: "GSL_MAX_DBL", scope: !316, file: !316, line: 69, type: !317, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !319)
!316 = !DIFile(filename: "../gsl/gsl_minmax.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "c129f6f8aa4928366a49d418ffa3dad3")
!317 = !DISubroutineType(types: !318)
!318 = !{!83, !83, !83}
!319 = !{!314, !320}
!320 = !DILocalVariable(name: "b", arg: 2, scope: !315, file: !316, line: 69, type: !83)
!321 = !DILocation(line: 0, scope: !315, inlinedAt: !322)
!322 = distinct !DILocation(line: 755, column: 8, scope: !313)
!323 = !DILocation(line: 71, column: 10, scope: !315, inlinedAt: !322)
!324 = !DILocation(line: 755, column: 34, scope: !313)
!325 = !DILocation(line: 755, column: 33, scope: !313)
!326 = !DILocation(line: 755, column: 43, scope: !313)
!327 = !DILocation(line: 755, column: 42, scope: !313)
!328 = !DILocation(line: 755, column: 57, scope: !313)
!329 = !DILocation(line: 755, column: 56, scope: !313)
!330 = !DILocation(line: 755, column: 51, scope: !313)
!331 = !DILocation(line: 755, column: 8, scope: !133)
!332 = !DILocation(line: 759, column: 14, scope: !333)
!333 = distinct !DILexicalBlock(scope: !313, file: !2, line: 755, column: 66)
!334 = !DILocation(line: 759, column: 7, scope: !333)
!335 = !DILocation(line: 762, column: 15, scope: !138)
!336 = !DILocation(line: 762, column: 18, scope: !138)
!337 = !DILocation(line: 762, column: 20, scope: !138)
!338 = !DILocation(line: 762, column: 8, scope: !138)
!339 = !DILocation(line: 762, column: 31, scope: !138)
!340 = !DILocation(line: 762, column: 24, scope: !138)
!341 = !DILocation(line: 762, column: 41, scope: !138)
!342 = !DILocation(line: 765, column: 47, scope: !137)
!343 = !DILocation(line: 765, column: 18, scope: !137)
!344 = !DILocation(line: 0, scope: !137)
!345 = !DILocation(line: 766, column: 42, scope: !137)
!346 = !DILocation(line: 766, column: 29, scope: !137)
!347 = !DILocation(line: 766, column: 27, scope: !137)
!348 = !DILocation(line: 766, column: 19, scope: !137)
!349 = !DILocation(line: 773, column: 5, scope: !350)
!350 = distinct !DILexicalBlock(scope: !133, file: !2, line: 773, column: 5)
!351 = !DILocation(line: 775, column: 1, scope: !93)
!352 = !DISubprogram(name: "gsl_sf_lngamma_sgn_e", scope: !353, file: !353, line: 58, type: !354, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!353 = !DIFile(filename: "../gsl/gsl_sf_gamma.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "88cc3c2b19ea790e1c6889b01cfd3137")
!354 = !DISubroutineType(types: !355)
!355 = !{!45, !83, !97, !356}
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!357 = !DISubprogram(name: "gsl_sf_lngamma_e", scope: !353, file: !353, line: 47, type: !358, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!358 = !DISubroutineType(types: !359)
!359 = !{!45, !83, !97}
!360 = !DISubprogram(name: "gsl_error", scope: !44, file: !44, line: 77, type: !361, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!361 = !DISubroutineType(types: !362)
!362 = !{null, !363, !363, !45, !45}
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!365 = !DISubprogram(name: "gsl_sf_exp_err_e", scope: !366, file: !366, line: 110, type: !228, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!366 = !DIFile(filename: "../gsl/gsl_sf_exp.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "c512f91507e79efdd09661b0faef2cde")
!367 = distinct !DISubprogram(name: "hyperg_2F1_series", scope: !2, file: !2, line: 40, type: !368, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !370)
!368 = !DISubroutineType(types: !369)
!369 = !{!45, !96, !96, !96, !96, !97}
!370 = !{!371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383}
!371 = !DILocalVariable(name: "a", arg: 1, scope: !367, file: !2, line: 40, type: !96)
!372 = !DILocalVariable(name: "b", arg: 2, scope: !367, file: !2, line: 40, type: !96)
!373 = !DILocalVariable(name: "c", arg: 3, scope: !367, file: !2, line: 40, type: !96)
!374 = !DILocalVariable(name: "x", arg: 4, scope: !367, file: !2, line: 41, type: !96)
!375 = !DILocalVariable(name: "result", arg: 5, scope: !367, file: !2, line: 42, type: !97)
!376 = !DILocalVariable(name: "sum_pos", scope: !367, file: !2, line: 45, type: !83)
!377 = !DILocalVariable(name: "sum_neg", scope: !367, file: !2, line: 46, type: !83)
!378 = !DILocalVariable(name: "del_pos", scope: !367, file: !2, line: 47, type: !83)
!379 = !DILocalVariable(name: "del_neg", scope: !367, file: !2, line: 48, type: !83)
!380 = !DILocalVariable(name: "del", scope: !367, file: !2, line: 49, type: !83)
!381 = !DILocalVariable(name: "del_prev", scope: !367, file: !2, line: 50, type: !83)
!382 = !DILocalVariable(name: "k", scope: !367, file: !2, line: 51, type: !83)
!383 = !DILocalVariable(name: "i", scope: !367, file: !2, line: 52, type: !45)
!384 = !DILocation(line: 0, scope: !367)
!385 = !DILocation(line: 54, column: 6, scope: !386)
!386 = distinct !DILexicalBlock(scope: !367, file: !2, line: 54, column: 6)
!387 = !DILocation(line: 54, column: 14, scope: !386)
!388 = !DILocation(line: 54, column: 6, scope: !367)
!389 = !DILocation(line: 55, column: 17, scope: !390)
!390 = distinct !DILexicalBlock(scope: !386, file: !2, line: 54, column: 33)
!391 = !DILocation(line: 56, column: 13, scope: !390)
!392 = !DILocation(line: 56, column: 17, scope: !390)
!393 = !DILocation(line: 57, column: 5, scope: !394)
!394 = distinct !DILexicalBlock(scope: !390, file: !2, line: 57, column: 5)
!395 = !DILocation(line: 46, column: 10, scope: !367)
!396 = !DILocation(line: 48, column: 10, scope: !367)
!397 = !DILocation(line: 61, column: 8, scope: !398)
!398 = distinct !DILexicalBlock(scope: !399, file: !2, line: 61, column: 8)
!399 = distinct !DILexicalBlock(scope: !367, file: !2, line: 60, column: 6)
!400 = !DILocation(line: 61, column: 12, scope: !398)
!401 = !DILocation(line: 61, column: 8, scope: !399)
!402 = !DILocation(line: 62, column: 20, scope: !403)
!403 = distinct !DILexicalBlock(scope: !398, file: !2, line: 61, column: 21)
!404 = !DILocation(line: 63, column: 15, scope: !403)
!405 = !DILocation(line: 64, column: 44, scope: !403)
!406 = !DILocation(line: 64, column: 19, scope: !403)
!407 = !DILocation(line: 65, column: 51, scope: !403)
!408 = !DILocation(line: 65, column: 50, scope: !403)
!409 = !DILocation(line: 65, column: 44, scope: !403)
!410 = !DILocation(line: 65, column: 79, scope: !403)
!411 = !DILocation(line: 65, column: 66, scope: !403)
!412 = !DILocation(line: 65, column: 64, scope: !403)
!413 = !DILocation(line: 65, column: 19, scope: !403)
!414 = !DILocation(line: 66, column: 7, scope: !415)
!415 = distinct !DILexicalBlock(scope: !403, file: !2, line: 66, column: 7)
!416 = !DILocation(line: 69, column: 20, scope: !399)
!417 = !DILocation(line: 69, column: 17, scope: !399)
!418 = !DILocation(line: 69, column: 24, scope: !399)
!419 = !DILocation(line: 69, column: 41, scope: !399)
!420 = !DILocation(line: 69, column: 37, scope: !399)
!421 = !DILocation(line: 69, column: 28, scope: !399)
!422 = !DILocation(line: 69, column: 9, scope: !399)
!423 = !DILocation(line: 71, column: 12, scope: !424)
!424 = distinct !DILexicalBlock(scope: !399, file: !2, line: 71, column: 8)
!425 = !DILocation(line: 71, column: 8, scope: !399)
!426 = !DILocation(line: 74, column: 5, scope: !427)
!427 = distinct !DILexicalBlock(scope: !424, file: !2, line: 71, column: 19)
!428 = !DILocation(line: 75, column: 17, scope: !429)
!429 = distinct !DILexicalBlock(scope: !424, file: !2, line: 75, column: 13)
!430 = !DILocation(line: 75, column: 13, scope: !424)
!431 = !DILocation(line: 83, column: 18, scope: !432)
!432 = distinct !DILexicalBlock(scope: !429, file: !2, line: 82, column: 10)
!433 = !DILocation(line: 93, column: 23, scope: !434)
!434 = distinct !DILexicalBlock(scope: !399, file: !2, line: 93, column: 9)
!435 = !DILocation(line: 93, column: 9, scope: !434)
!436 = !DILocation(line: 93, column: 46, scope: !434)
!437 = !DILocation(line: 93, column: 64, scope: !434)
!438 = !DILocation(line: 94, column: 18, scope: !434)
!439 = !DILocation(line: 94, column: 9, scope: !434)
!440 = !DILocation(line: 94, column: 41, scope: !434)
!441 = !DILocation(line: 93, column: 9, scope: !399)
!442 = !DILocation(line: 98, column: 35, scope: !367)
!443 = !DILocation(line: 98, column: 11, scope: !367)
!444 = !DILocation(line: 98, column: 55, scope: !367)
!445 = !DILocation(line: 98, column: 3, scope: !399)
!446 = distinct !{!446, !447, !448, !449}
!447 = !DILocation(line: 60, column: 3, scope: !367)
!448 = !DILocation(line: 98, column: 72, scope: !367)
!449 = !{!"llvm.loop.mustprogress"}
!450 = !DILocation(line: 100, column: 26, scope: !367)
!451 = !DILocation(line: 101, column: 26, scope: !367)
!452 = !DILocation(line: 100, column: 16, scope: !367)
!453 = !DILocation(line: 101, column: 11, scope: !367)
!454 = !DILocation(line: 102, column: 40, scope: !367)
!455 = !DILocation(line: 102, column: 15, scope: !367)
!456 = !DILocation(line: 103, column: 47, scope: !367)
!457 = !DILocation(line: 103, column: 46, scope: !367)
!458 = !DILocation(line: 103, column: 40, scope: !367)
!459 = !DILocation(line: 103, column: 77, scope: !367)
!460 = !DILocation(line: 103, column: 64, scope: !367)
!461 = !DILocation(line: 103, column: 62, scope: !367)
!462 = !DILocation(line: 103, column: 15, scope: !367)
!463 = !DILocation(line: 105, column: 3, scope: !367)
!464 = !DILocation(line: 106, column: 1, scope: !367)
!465 = distinct !DISubprogram(name: "hyperg_2F1_luke", scope: !2, file: !2, line: 171, type: !368, scopeLine: 174, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !466)
!466 = !{!467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506}
!467 = !DILocalVariable(name: "a", arg: 1, scope: !465, file: !2, line: 171, type: !96)
!468 = !DILocalVariable(name: "b", arg: 2, scope: !465, file: !2, line: 171, type: !96)
!469 = !DILocalVariable(name: "c", arg: 3, scope: !465, file: !2, line: 171, type: !96)
!470 = !DILocalVariable(name: "xin", arg: 4, scope: !465, file: !2, line: 172, type: !96)
!471 = !DILocalVariable(name: "result", arg: 5, scope: !465, file: !2, line: 173, type: !97)
!472 = !DILocalVariable(name: "stat_iter", scope: !465, file: !2, line: 175, type: !45)
!473 = !DILocalVariable(name: "RECUR_BIG", scope: !465, file: !2, line: 176, type: !96)
!474 = !DILocalVariable(name: "nmax", scope: !465, file: !2, line: 177, type: !115)
!475 = !DILocalVariable(name: "n", scope: !465, file: !2, line: 178, type: !45)
!476 = !DILocalVariable(name: "x", scope: !465, file: !2, line: 179, type: !96)
!477 = !DILocalVariable(name: "x3", scope: !465, file: !2, line: 180, type: !96)
!478 = !DILocalVariable(name: "t0", scope: !465, file: !2, line: 181, type: !96)
!479 = !DILocalVariable(name: "t1", scope: !465, file: !2, line: 182, type: !96)
!480 = !DILocalVariable(name: "t2", scope: !465, file: !2, line: 183, type: !96)
!481 = !DILocalVariable(name: "F", scope: !465, file: !2, line: 184, type: !83)
!482 = !DILocalVariable(name: "prec", scope: !465, file: !2, line: 185, type: !83)
!483 = !DILocalVariable(name: "Bnm3", scope: !465, file: !2, line: 187, type: !83)
!484 = !DILocalVariable(name: "Bnm2", scope: !465, file: !2, line: 188, type: !83)
!485 = !DILocalVariable(name: "Bnm1", scope: !465, file: !2, line: 189, type: !83)
!486 = !DILocalVariable(name: "Anm3", scope: !465, file: !2, line: 191, type: !83)
!487 = !DILocalVariable(name: "Anm2", scope: !465, file: !2, line: 192, type: !83)
!488 = !DILocalVariable(name: "Anm1", scope: !465, file: !2, line: 193, type: !83)
!489 = !DILocalVariable(name: "npam1", scope: !490, file: !2, line: 196, type: !83)
!490 = distinct !DILexicalBlock(scope: !465, file: !2, line: 195, column: 12)
!491 = !DILocalVariable(name: "npbm1", scope: !490, file: !2, line: 197, type: !83)
!492 = !DILocalVariable(name: "npcm1", scope: !490, file: !2, line: 198, type: !83)
!493 = !DILocalVariable(name: "npam2", scope: !490, file: !2, line: 199, type: !83)
!494 = !DILocalVariable(name: "npbm2", scope: !490, file: !2, line: 200, type: !83)
!495 = !DILocalVariable(name: "npcm2", scope: !490, file: !2, line: 201, type: !83)
!496 = !DILocalVariable(name: "tnm1", scope: !490, file: !2, line: 202, type: !83)
!497 = !DILocalVariable(name: "tnm3", scope: !490, file: !2, line: 203, type: !83)
!498 = !DILocalVariable(name: "tnm5", scope: !490, file: !2, line: 204, type: !83)
!499 = !DILocalVariable(name: "n2", scope: !490, file: !2, line: 205, type: !83)
!500 = !DILocalVariable(name: "F1", scope: !490, file: !2, line: 206, type: !83)
!501 = !DILocalVariable(name: "F2", scope: !490, file: !2, line: 207, type: !83)
!502 = !DILocalVariable(name: "F3", scope: !490, file: !2, line: 208, type: !83)
!503 = !DILocalVariable(name: "E", scope: !490, file: !2, line: 209, type: !83)
!504 = !DILocalVariable(name: "An", scope: !490, file: !2, line: 211, type: !83)
!505 = !DILocalVariable(name: "Bn", scope: !490, file: !2, line: 212, type: !83)
!506 = !DILocalVariable(name: "r", scope: !490, file: !2, line: 213, type: !83)
!507 = !DILocation(line: 0, scope: !465)
!508 = !DILocation(line: 179, column: 21, scope: !465)
!509 = !DILocation(line: 180, column: 22, scope: !465)
!510 = !DILocation(line: 180, column: 24, scope: !465)
!511 = !DILocation(line: 181, column: 22, scope: !465)
!512 = !DILocation(line: 181, column: 24, scope: !465)
!513 = !DILocation(line: 182, column: 31, scope: !465)
!514 = !DILocation(line: 182, column: 28, scope: !465)
!515 = !DILocation(line: 182, column: 41, scope: !465)
!516 = !DILocation(line: 182, column: 36, scope: !465)
!517 = !DILocation(line: 183, column: 31, scope: !465)
!518 = !DILocation(line: 183, column: 28, scope: !465)
!519 = !DILocation(line: 183, column: 41, scope: !465)
!520 = !DILocation(line: 183, column: 36, scope: !465)
!521 = !DILocation(line: 188, column: 21, scope: !465)
!522 = !DILocation(line: 189, column: 26, scope: !465)
!523 = !DILocation(line: 189, column: 41, scope: !465)
!524 = !DILocation(line: 189, column: 37, scope: !465)
!525 = !DILocation(line: 189, column: 30, scope: !465)
!526 = !DILocation(line: 192, column: 22, scope: !465)
!527 = !DILocation(line: 193, column: 32, scope: !465)
!528 = !DILocation(line: 193, column: 26, scope: !465)
!529 = !DILocation(line: 193, column: 22, scope: !465)
!530 = !DILocation(line: 193, column: 47, scope: !465)
!531 = !DILocation(line: 193, column: 56, scope: !465)
!532 = !DILocation(line: 193, column: 52, scope: !465)
!533 = !DILocation(line: 193, column: 66, scope: !465)
!534 = !DILocation(line: 193, column: 42, scope: !465)
!535 = !DILocation(line: 195, column: 3, scope: !465)
!536 = !DILocation(line: 193, column: 10, scope: !465)
!537 = !DILocation(line: 192, column: 10, scope: !465)
!538 = !DILocation(line: 191, column: 10, scope: !465)
!539 = !DILocation(line: 189, column: 10, scope: !465)
!540 = !DILocation(line: 188, column: 10, scope: !465)
!541 = !DILocation(line: 187, column: 10, scope: !465)
!542 = !DILocation(line: 178, column: 7, scope: !465)
!543 = !DILocation(line: 196, column: 20, scope: !490)
!544 = !DILocation(line: 196, column: 26, scope: !490)
!545 = !DILocation(line: 197, column: 22, scope: !490)
!546 = !DILocation(line: 0, scope: !490)
!547 = !DILocation(line: 197, column: 26, scope: !490)
!548 = !DILocation(line: 198, column: 22, scope: !490)
!549 = !DILocation(line: 198, column: 26, scope: !490)
!550 = !DILocation(line: 199, column: 26, scope: !490)
!551 = !DILocation(line: 200, column: 26, scope: !490)
!552 = !DILocation(line: 201, column: 26, scope: !490)
!553 = !DILocation(line: 202, column: 21, scope: !490)
!554 = !DILocation(line: 202, column: 24, scope: !490)
!555 = !DILocation(line: 202, column: 20, scope: !490)
!556 = !DILocation(line: 203, column: 24, scope: !490)
!557 = !DILocation(line: 203, column: 20, scope: !490)
!558 = !DILocation(line: 204, column: 24, scope: !490)
!559 = !DILocation(line: 204, column: 20, scope: !490)
!560 = !DILocation(line: 205, column: 18, scope: !490)
!561 = !DILocation(line: 205, column: 17, scope: !490)
!562 = !DILocation(line: 206, column: 22, scope: !490)
!563 = !DILocation(line: 206, column: 35, scope: !490)
!564 = !DILocation(line: 206, column: 38, scope: !490)
!565 = !DILocation(line: 206, column: 42, scope: !490)
!566 = !DILocation(line: 206, column: 48, scope: !490)
!567 = !DILocation(line: 206, column: 63, scope: !490)
!568 = !DILocation(line: 206, column: 68, scope: !490)
!569 = !DILocation(line: 206, column: 59, scope: !490)
!570 = !DILocation(line: 207, column: 35, scope: !490)
!571 = !DILocation(line: 207, column: 38, scope: !490)
!572 = !DILocation(line: 207, column: 42, scope: !490)
!573 = !DILocation(line: 207, column: 17, scope: !490)
!574 = !DILocation(line: 207, column: 48, scope: !490)
!575 = !DILocation(line: 207, column: 54, scope: !490)
!576 = !DILocation(line: 207, column: 63, scope: !490)
!577 = !DILocation(line: 207, column: 68, scope: !490)
!578 = !DILocation(line: 207, column: 73, scope: !490)
!579 = !DILocation(line: 207, column: 79, scope: !490)
!580 = !DILocation(line: 207, column: 60, scope: !490)
!581 = !DILocation(line: 208, column: 23, scope: !490)
!582 = !DILocation(line: 208, column: 29, scope: !490)
!583 = !DILocation(line: 208, column: 35, scope: !490)
!584 = !DILocation(line: 208, column: 46, scope: !490)
!585 = !DILocation(line: 208, column: 41, scope: !490)
!586 = !DILocation(line: 208, column: 54, scope: !490)
!587 = !DILocation(line: 208, column: 49, scope: !490)
!588 = !DILocation(line: 208, column: 63, scope: !490)
!589 = !DILocation(line: 208, column: 68, scope: !490)
!590 = !DILocation(line: 208, column: 73, scope: !490)
!591 = !DILocation(line: 208, column: 78, scope: !490)
!592 = !DILocation(line: 208, column: 86, scope: !490)
!593 = !DILocation(line: 208, column: 92, scope: !490)
!594 = !DILocation(line: 208, column: 59, scope: !490)
!595 = !DILocation(line: 209, column: 17, scope: !490)
!596 = !DILocation(line: 209, column: 23, scope: !490)
!597 = !DILocation(line: 209, column: 34, scope: !490)
!598 = !DILocation(line: 209, column: 29, scope: !490)
!599 = !DILocation(line: 209, column: 47, scope: !490)
!600 = !DILocation(line: 209, column: 53, scope: !490)
!601 = !DILocation(line: 209, column: 38, scope: !490)
!602 = !DILocation(line: 211, column: 21, scope: !490)
!603 = !DILocation(line: 211, column: 27, scope: !490)
!604 = !DILocation(line: 211, column: 38, scope: !490)
!605 = !DILocation(line: 211, column: 45, scope: !490)
!606 = !DILocation(line: 211, column: 47, scope: !490)
!607 = !DILocation(line: 211, column: 57, scope: !490)
!608 = !DILocation(line: 211, column: 60, scope: !490)
!609 = !DILocation(line: 212, column: 27, scope: !490)
!610 = !DILocation(line: 212, column: 47, scope: !490)
!611 = !DILocation(line: 212, column: 60, scope: !490)
!612 = !DILocation(line: 213, column: 18, scope: !490)
!613 = !DILocation(line: 215, column: 24, scope: !490)
!614 = !DILocation(line: 215, column: 12, scope: !490)
!615 = !DILocation(line: 218, column: 13, scope: !616)
!616 = distinct !DILexicalBlock(scope: !490, file: !2, line: 218, column: 8)
!617 = !DILocation(line: 218, column: 31, scope: !616)
!618 = !DILocation(line: 220, column: 8, scope: !619)
!619 = distinct !DILexicalBlock(scope: !490, file: !2, line: 220, column: 8)
!620 = !DILocation(line: 220, column: 17, scope: !619)
!621 = !DILocation(line: 220, column: 29, scope: !619)
!622 = !DILocation(line: 220, column: 32, scope: !619)
!623 = !DILocation(line: 220, column: 41, scope: !619)
!624 = !DILocation(line: 220, column: 8, scope: !490)
!625 = !DILocation(line: 221, column: 12, scope: !626)
!626 = distinct !DILexicalBlock(scope: !619, file: !2, line: 220, column: 54)
!627 = !DILocation(line: 222, column: 12, scope: !626)
!628 = !DILocation(line: 223, column: 12, scope: !626)
!629 = !DILocation(line: 224, column: 12, scope: !626)
!630 = !DILocation(line: 225, column: 12, scope: !626)
!631 = !DILocation(line: 226, column: 12, scope: !626)
!632 = !DILocation(line: 229, column: 5, scope: !626)
!633 = !DILocation(line: 230, column: 22, scope: !634)
!634 = distinct !DILexicalBlock(scope: !619, file: !2, line: 230, column: 13)
!635 = !DILocation(line: 230, column: 38, scope: !634)
!636 = !DILocation(line: 231, column: 12, scope: !637)
!637 = distinct !DILexicalBlock(scope: !634, file: !2, line: 230, column: 67)
!638 = !DILocation(line: 232, column: 12, scope: !637)
!639 = !DILocation(line: 233, column: 12, scope: !637)
!640 = !DILocation(line: 234, column: 12, scope: !637)
!641 = !DILocation(line: 235, column: 12, scope: !637)
!642 = !DILocation(line: 236, column: 12, scope: !637)
!643 = !DILocation(line: 239, column: 5, scope: !637)
!644 = !DILocation(line: 241, column: 6, scope: !490)
!645 = !DILocation(line: 250, column: 16, scope: !465)
!646 = !DILocation(line: 251, column: 34, scope: !465)
!647 = !DILocation(line: 251, column: 24, scope: !465)
!648 = !DILocation(line: 251, column: 22, scope: !465)
!649 = !DILocation(line: 251, column: 11, scope: !465)
!650 = !DILocation(line: 252, column: 40, scope: !465)
!651 = !DILocation(line: 252, column: 52, scope: !465)
!652 = !DILocation(line: 252, column: 50, scope: !465)
!653 = !DILocation(line: 255, column: 25, scope: !465)
!654 = !DILocation(line: 255, column: 35, scope: !465)
!655 = !DILocation(line: 255, column: 43, scope: !465)
!656 = !DILocation(line: 255, column: 22, scope: !465)
!657 = !DILocation(line: 255, column: 15, scope: !465)
!658 = !DILocation(line: 257, column: 18, scope: !465)
!659 = !DILocation(line: 257, column: 16, scope: !465)
!660 = !DILocation(line: 259, column: 3, scope: !465)
!661 = distinct !DISubprogram(name: "hyperg_2F1_reflect", scope: !2, file: !2, line: 367, type: !368, scopeLine: 369, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !662)
!662 = !{!663, !664, !665, !666, !667, !668, !669, !670, !671, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !690, !691, !692, !693, !694, !695, !698, !699, !700, !701, !702, !703, !707, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !731, !732, !733, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !765, !766, !767, !768, !771, !772, !775}
!663 = !DILocalVariable(name: "a", arg: 1, scope: !661, file: !2, line: 367, type: !96)
!664 = !DILocalVariable(name: "b", arg: 2, scope: !661, file: !2, line: 367, type: !96)
!665 = !DILocalVariable(name: "c", arg: 3, scope: !661, file: !2, line: 367, type: !96)
!666 = !DILocalVariable(name: "x", arg: 4, scope: !661, file: !2, line: 368, type: !96)
!667 = !DILocalVariable(name: "result", arg: 5, scope: !661, file: !2, line: 368, type: !97)
!668 = !DILocalVariable(name: "d", scope: !661, file: !2, line: 370, type: !96)
!669 = !DILocalVariable(name: "intd", scope: !661, file: !2, line: 371, type: !115)
!670 = !DILocalVariable(name: "d_integer", scope: !661, file: !2, line: 372, type: !115)
!671 = !DILocalVariable(name: "ln_omx", scope: !672, file: !2, line: 375, type: !96)
!672 = distinct !DILexicalBlock(scope: !673, file: !2, line: 374, column: 17)
!673 = distinct !DILexicalBlock(scope: !661, file: !2, line: 374, column: 6)
!674 = !DILocalVariable(name: "ad", scope: !672, file: !2, line: 376, type: !96)
!675 = !DILocalVariable(name: "stat_F2", scope: !672, file: !2, line: 377, type: !45)
!676 = !DILocalVariable(name: "sgn_2", scope: !672, file: !2, line: 378, type: !83)
!677 = !DILocalVariable(name: "F1", scope: !672, file: !2, line: 379, type: !98)
!678 = !DILocalVariable(name: "F2", scope: !672, file: !2, line: 380, type: !98)
!679 = !DILocalVariable(name: "d1", scope: !672, file: !2, line: 381, type: !83)
!680 = !DILocalVariable(name: "d2", scope: !672, file: !2, line: 381, type: !83)
!681 = !DILocalVariable(name: "lng_c", scope: !672, file: !2, line: 382, type: !98)
!682 = !DILocalVariable(name: "lng_ad2", scope: !672, file: !2, line: 383, type: !98)
!683 = !DILocalVariable(name: "lng_bd2", scope: !672, file: !2, line: 384, type: !98)
!684 = !DILocalVariable(name: "stat_c", scope: !672, file: !2, line: 385, type: !45)
!685 = !DILocalVariable(name: "stat_ad2", scope: !672, file: !2, line: 386, type: !45)
!686 = !DILocalVariable(name: "stat_bd2", scope: !672, file: !2, line: 387, type: !45)
!687 = !DILocalVariable(name: "lng_ad", scope: !688, file: !2, line: 410, type: !98)
!688 = distinct !DILexicalBlock(scope: !689, file: !2, line: 409, column: 10)
!689 = distinct !DILexicalBlock(scope: !672, file: !2, line: 404, column: 8)
!690 = !DILocalVariable(name: "lng_ad1", scope: !688, file: !2, line: 411, type: !98)
!691 = !DILocalVariable(name: "lng_bd1", scope: !688, file: !2, line: 412, type: !98)
!692 = !DILocalVariable(name: "stat_ad", scope: !688, file: !2, line: 413, type: !45)
!693 = !DILocalVariable(name: "stat_ad1", scope: !688, file: !2, line: 414, type: !45)
!694 = !DILocalVariable(name: "stat_bd1", scope: !688, file: !2, line: 415, type: !45)
!695 = !DILocalVariable(name: "i", scope: !696, file: !2, line: 421, type: !45)
!696 = distinct !DILexicalBlock(scope: !697, file: !2, line: 417, column: 88)
!697 = distinct !DILexicalBlock(scope: !688, file: !2, line: 417, column: 10)
!698 = !DILocalVariable(name: "sum1", scope: !696, file: !2, line: 422, type: !83)
!699 = !DILocalVariable(name: "term", scope: !696, file: !2, line: 423, type: !83)
!700 = !DILocalVariable(name: "ln_pre1_val", scope: !696, file: !2, line: 424, type: !83)
!701 = !DILocalVariable(name: "ln_pre1_err", scope: !696, file: !2, line: 425, type: !83)
!702 = !DILocalVariable(name: "stat_e", scope: !696, file: !2, line: 426, type: !45)
!703 = !DILocalVariable(name: "j", scope: !704, file: !2, line: 431, type: !45)
!704 = distinct !DILexicalBlock(scope: !705, file: !2, line: 430, column: 29)
!705 = distinct !DILexicalBlock(scope: !706, file: !2, line: 430, column: 9)
!706 = distinct !DILexicalBlock(scope: !696, file: !2, line: 430, column: 9)
!707 = !DILocalVariable(name: "maxiter", scope: !708, file: !2, line: 459, type: !115)
!708 = distinct !DILexicalBlock(scope: !709, file: !2, line: 455, column: 60)
!709 = distinct !DILexicalBlock(scope: !672, file: !2, line: 455, column: 8)
!710 = !DILocalVariable(name: "psi_1", scope: !708, file: !2, line: 460, type: !83)
!711 = !DILocalVariable(name: "psi_1pd", scope: !708, file: !2, line: 461, type: !98)
!712 = !DILocalVariable(name: "psi_apd1", scope: !708, file: !2, line: 462, type: !98)
!713 = !DILocalVariable(name: "psi_bpd1", scope: !708, file: !2, line: 463, type: !98)
!714 = !DILocalVariable(name: "stat_1pd", scope: !708, file: !2, line: 464, type: !45)
!715 = !DILocalVariable(name: "stat_apd1", scope: !708, file: !2, line: 465, type: !45)
!716 = !DILocalVariable(name: "stat_bpd1", scope: !708, file: !2, line: 466, type: !45)
!717 = !DILocalVariable(name: "stat_dall", scope: !708, file: !2, line: 467, type: !45)
!718 = !DILocalVariable(name: "psi_val", scope: !708, file: !2, line: 469, type: !83)
!719 = !DILocalVariable(name: "psi_err", scope: !708, file: !2, line: 470, type: !83)
!720 = !DILocalVariable(name: "fact", scope: !708, file: !2, line: 471, type: !83)
!721 = !DILocalVariable(name: "sum2_val", scope: !708, file: !2, line: 472, type: !83)
!722 = !DILocalVariable(name: "sum2_err", scope: !708, file: !2, line: 473, type: !83)
!723 = !DILocalVariable(name: "ln_pre2_val", scope: !708, file: !2, line: 474, type: !83)
!724 = !DILocalVariable(name: "ln_pre2_err", scope: !708, file: !2, line: 475, type: !83)
!725 = !DILocalVariable(name: "stat_e", scope: !708, file: !2, line: 476, type: !45)
!726 = !DILocalVariable(name: "j", scope: !708, file: !2, line: 478, type: !45)
!727 = !DILocalVariable(name: "term1", scope: !728, file: !2, line: 484, type: !83)
!728 = distinct !DILexicalBlock(scope: !729, file: !2, line: 482, column: 32)
!729 = distinct !DILexicalBlock(scope: !730, file: !2, line: 482, column: 7)
!730 = distinct !DILexicalBlock(scope: !708, file: !2, line: 482, column: 7)
!731 = !DILocalVariable(name: "term2", scope: !728, file: !2, line: 485, type: !83)
!732 = !DILocalVariable(name: "delta", scope: !728, file: !2, line: 486, type: !83)
!733 = !DILocalVariable(name: "pre1", scope: !734, file: !2, line: 532, type: !98)
!734 = distinct !DILexicalBlock(scope: !673, file: !2, line: 529, column: 8)
!735 = !DILocalVariable(name: "pre2", scope: !734, file: !2, line: 532, type: !98)
!736 = !DILocalVariable(name: "sgn1", scope: !734, file: !2, line: 533, type: !83)
!737 = !DILocalVariable(name: "sgn2", scope: !734, file: !2, line: 533, type: !83)
!738 = !DILocalVariable(name: "F1", scope: !734, file: !2, line: 534, type: !98)
!739 = !DILocalVariable(name: "F2", scope: !734, file: !2, line: 534, type: !98)
!740 = !DILocalVariable(name: "status_F1", scope: !734, file: !2, line: 535, type: !45)
!741 = !DILocalVariable(name: "status_F2", scope: !734, file: !2, line: 535, type: !45)
!742 = !DILocalVariable(name: "ln_g1ca", scope: !734, file: !2, line: 540, type: !98)
!743 = !DILocalVariable(name: "ln_g1cb", scope: !734, file: !2, line: 540, type: !98)
!744 = !DILocalVariable(name: "ln_g2a", scope: !734, file: !2, line: 540, type: !98)
!745 = !DILocalVariable(name: "ln_g2b", scope: !734, file: !2, line: 540, type: !98)
!746 = !DILocalVariable(name: "sgn_g1ca", scope: !734, file: !2, line: 541, type: !83)
!747 = !DILocalVariable(name: "sgn_g1cb", scope: !734, file: !2, line: 541, type: !83)
!748 = !DILocalVariable(name: "sgn_g2a", scope: !734, file: !2, line: 541, type: !83)
!749 = !DILocalVariable(name: "sgn_g2b", scope: !734, file: !2, line: 541, type: !83)
!750 = !DILocalVariable(name: "stat_1ca", scope: !734, file: !2, line: 542, type: !45)
!751 = !DILocalVariable(name: "stat_1cb", scope: !734, file: !2, line: 543, type: !45)
!752 = !DILocalVariable(name: "stat_2a", scope: !734, file: !2, line: 544, type: !45)
!753 = !DILocalVariable(name: "stat_2b", scope: !734, file: !2, line: 545, type: !45)
!754 = !DILocalVariable(name: "ok1", scope: !734, file: !2, line: 546, type: !45)
!755 = !DILocalVariable(name: "ok2", scope: !734, file: !2, line: 547, type: !45)
!756 = !DILocalVariable(name: "ln_gc", scope: !734, file: !2, line: 549, type: !98)
!757 = !DILocalVariable(name: "ln_gd", scope: !734, file: !2, line: 549, type: !98)
!758 = !DILocalVariable(name: "ln_gmd", scope: !734, file: !2, line: 549, type: !98)
!759 = !DILocalVariable(name: "sgn_gc", scope: !734, file: !2, line: 550, type: !83)
!760 = !DILocalVariable(name: "sgn_gd", scope: !734, file: !2, line: 550, type: !83)
!761 = !DILocalVariable(name: "sgn_gmd", scope: !734, file: !2, line: 550, type: !83)
!762 = !DILocalVariable(name: "ln_pre1_val", scope: !763, file: !2, line: 559, type: !83)
!763 = distinct !DILexicalBlock(scope: !764, file: !2, line: 558, column: 20)
!764 = distinct !DILexicalBlock(scope: !734, file: !2, line: 558, column: 8)
!765 = !DILocalVariable(name: "ln_pre2_val", scope: !763, file: !2, line: 560, type: !83)
!766 = !DILocalVariable(name: "ln_pre1_err", scope: !763, file: !2, line: 561, type: !83)
!767 = !DILocalVariable(name: "ln_pre2_err", scope: !763, file: !2, line: 562, type: !83)
!768 = !DILocalVariable(name: "ln_pre1_val", scope: !769, file: !2, line: 574, type: !83)
!769 = distinct !DILexicalBlock(scope: !770, file: !2, line: 573, column: 26)
!770 = distinct !DILexicalBlock(scope: !764, file: !2, line: 573, column: 13)
!771 = !DILocalVariable(name: "ln_pre1_err", scope: !769, file: !2, line: 575, type: !83)
!772 = !DILocalVariable(name: "ln_pre2_val", scope: !773, file: !2, line: 587, type: !83)
!773 = distinct !DILexicalBlock(scope: !774, file: !2, line: 586, column: 26)
!774 = distinct !DILexicalBlock(scope: !770, file: !2, line: 586, column: 13)
!775 = !DILocalVariable(name: "ln_pre2_err", scope: !773, file: !2, line: 588, type: !83)
!776 = distinct !DIAssignID()
!777 = !DILocation(line: 0, scope: !672)
!778 = distinct !DIAssignID()
!779 = distinct !DIAssignID()
!780 = distinct !DIAssignID()
!781 = distinct !DIAssignID()
!782 = distinct !DIAssignID()
!783 = !DILocation(line: 0, scope: !688)
!784 = distinct !DIAssignID()
!785 = distinct !DIAssignID()
!786 = distinct !DIAssignID()
!787 = !DILocation(line: 0, scope: !708)
!788 = distinct !DIAssignID()
!789 = distinct !DIAssignID()
!790 = distinct !DIAssignID()
!791 = !DILocation(line: 0, scope: !734)
!792 = distinct !DIAssignID()
!793 = distinct !DIAssignID()
!794 = distinct !DIAssignID()
!795 = distinct !DIAssignID()
!796 = distinct !DIAssignID()
!797 = distinct !DIAssignID()
!798 = distinct !DIAssignID()
!799 = distinct !DIAssignID()
!800 = distinct !DIAssignID()
!801 = distinct !DIAssignID()
!802 = distinct !DIAssignID()
!803 = distinct !DIAssignID()
!804 = distinct !DIAssignID()
!805 = distinct !DIAssignID()
!806 = distinct !DIAssignID()
!807 = distinct !DIAssignID()
!808 = distinct !DIAssignID()
!809 = !DILocation(line: 0, scope: !661)
!810 = !DILocation(line: 370, column: 26, scope: !661)
!811 = !DILocation(line: 371, column: 28, scope: !661)
!812 = !DILocation(line: 371, column: 21, scope: !661)
!813 = !DILocation(line: 372, column: 36, scope: !661)
!814 = !DILocation(line: 372, column: 27, scope: !661)
!815 = !DILocation(line: 372, column: 42, scope: !661)
!816 = !DILocation(line: 374, column: 6, scope: !661)
!817 = !DILocation(line: 375, column: 27, scope: !672)
!818 = !DILocation(line: 376, column: 23, scope: !672)
!819 = !DILocation(line: 379, column: 5, scope: !672)
!820 = !DILocation(line: 380, column: 5, scope: !672)
!821 = !DILocation(line: 382, column: 5, scope: !672)
!822 = !DILocation(line: 383, column: 5, scope: !672)
!823 = !DILocation(line: 384, column: 5, scope: !672)
!824 = !DILocation(line: 389, column: 10, scope: !825)
!825 = distinct !DILexicalBlock(scope: !672, file: !2, line: 389, column: 8)
!826 = !DILocation(line: 398, column: 16, scope: !672)
!827 = !DILocation(line: 399, column: 16, scope: !672)
!828 = !DILocation(line: 400, column: 16, scope: !672)
!829 = !DILocation(line: 404, column: 11, scope: !689)
!830 = !DILocation(line: 404, column: 8, scope: !672)
!831 = distinct !DIAssignID()
!832 = !DILocation(line: 407, column: 14, scope: !833)
!833 = distinct !DILexicalBlock(scope: !689, file: !2, line: 404, column: 30)
!834 = !DILocation(line: 408, column: 5, scope: !833)
!835 = !DILocation(line: 410, column: 7, scope: !688)
!836 = !DILocation(line: 411, column: 7, scope: !688)
!837 = !DILocation(line: 412, column: 7, scope: !688)
!838 = !DILocation(line: 413, column: 22, scope: !688)
!839 = !DILocation(line: 414, column: 22, scope: !688)
!840 = !DILocation(line: 415, column: 22, scope: !688)
!841 = !DILocation(line: 417, column: 19, scope: !697)
!842 = !DILocation(line: 417, column: 34, scope: !697)
!843 = !DILocation(line: 0, scope: !696)
!844 = !DILocation(line: 424, column: 37, scope: !696)
!845 = !DILocation(line: 424, column: 49, scope: !696)
!846 = !DILocation(line: 424, column: 57, scope: !696)
!847 = !DILocation(line: 424, column: 75, scope: !696)
!848 = !DILocation(line: 424, column: 89, scope: !696)
!849 = !DILocation(line: 425, column: 37, scope: !696)
!850 = !DILocation(line: 425, column: 49, scope: !696)
!851 = !DILocation(line: 425, column: 63, scope: !696)
!852 = !DILocation(line: 425, column: 77, scope: !696)
!853 = !DILocation(line: 425, column: 101, scope: !696)
!854 = !DILocation(line: 425, column: 99, scope: !696)
!855 = !DILocation(line: 430, column: 19, scope: !705)
!856 = !DILocation(line: 430, column: 9, scope: !706)
!857 = !DILocation(line: 431, column: 20, scope: !704)
!858 = !DILocation(line: 0, scope: !704)
!859 = !DILocation(line: 432, column: 29, scope: !704)
!860 = !DILocation(line: 432, column: 42, scope: !704)
!861 = !DILocation(line: 432, column: 32, scope: !704)
!862 = !DILocation(line: 432, column: 47, scope: !704)
!863 = !DILocation(line: 432, column: 64, scope: !704)
!864 = !DILocation(line: 432, column: 68, scope: !704)
!865 = !DILocation(line: 432, column: 16, scope: !704)
!866 = !DILocation(line: 430, column: 25, scope: !705)
!867 = !DILocation(line: 430, column: 18, scope: !705)
!868 = distinct !{!868, !856, !869, !449}
!869 = !DILocation(line: 434, column: 9, scope: !706)
!870 = !DILocation(line: 437, column: 62, scope: !696)
!871 = !DILocation(line: 437, column: 61, scope: !696)
!872 = !DILocation(line: 436, column: 18, scope: !696)
!873 = !DILocation(line: 439, column: 19, scope: !874)
!874 = distinct !DILexicalBlock(scope: !696, file: !2, line: 439, column: 12)
!875 = !DILocation(line: 439, column: 12, scope: !696)
!876 = !DILocation(line: 440, column: 11, scope: !877)
!877 = distinct !DILexicalBlock(scope: !878, file: !2, line: 440, column: 11)
!878 = distinct !DILexicalBlock(scope: !874, file: !2, line: 439, column: 35)
!879 = !DILocation(line: 440, column: 11, scope: !880)
!880 = distinct !DILexicalBlock(scope: !877, file: !2, line: 440, column: 11)
!881 = !DILocation(line: 450, column: 5, scope: !689)
!882 = distinct !DIAssignID()
!883 = !DILocation(line: 448, column: 16, scope: !884)
!884 = distinct !DILexicalBlock(scope: !697, file: !2, line: 443, column: 12)
!885 = !DILocation(line: 455, column: 17, scope: !709)
!886 = !DILocation(line: 455, column: 32, scope: !709)
!887 = !DILocation(line: 461, column: 7, scope: !708)
!888 = !DILocation(line: 462, column: 7, scope: !708)
!889 = !DILocation(line: 463, column: 7, scope: !708)
!890 = !DILocation(line: 464, column: 23, scope: !708)
!891 = !DILocation(line: 465, column: 23, scope: !708)
!892 = !DILocation(line: 466, column: 23, scope: !708)
!893 = !DILocation(line: 467, column: 23, scope: !708)
!894 = !DILocation(line: 469, column: 40, scope: !708)
!895 = !DILocation(line: 469, column: 55, scope: !708)
!896 = !DILocation(line: 469, column: 70, scope: !708)
!897 = !DILocation(line: 469, column: 74, scope: !708)
!898 = !DILocation(line: 470, column: 32, scope: !708)
!899 = !DILocation(line: 470, column: 47, scope: !708)
!900 = !DILocation(line: 470, column: 62, scope: !708)
!901 = !DILocation(line: 470, column: 84, scope: !708)
!902 = !DILocation(line: 470, column: 83, scope: !708)
!903 = !DILocation(line: 474, column: 34, scope: !708)
!904 = !DILocation(line: 474, column: 42, scope: !708)
!905 = !DILocation(line: 474, column: 60, scope: !708)
!906 = !DILocation(line: 474, column: 74, scope: !708)
!907 = !DILocation(line: 475, column: 34, scope: !708)
!908 = !DILocation(line: 475, column: 48, scope: !708)
!909 = !DILocation(line: 475, column: 62, scope: !708)
!910 = !DILocation(line: 475, column: 86, scope: !708)
!911 = !DILocation(line: 475, column: 84, scope: !708)
!912 = !DILocation(line: 482, column: 7, scope: !730)
!913 = !DILocation(line: 484, column: 28, scope: !728)
!914 = !DILocation(line: 484, column: 27, scope: !728)
!915 = !DILocation(line: 484, column: 44, scope: !728)
!916 = !DILocation(line: 485, column: 33, scope: !728)
!917 = !DILocation(line: 0, scope: !728)
!918 = !DILocation(line: 485, column: 35, scope: !728)
!919 = !DILocation(line: 485, column: 27, scope: !728)
!920 = !DILocation(line: 485, column: 54, scope: !728)
!921 = !DILocation(line: 485, column: 46, scope: !728)
!922 = !DILocation(line: 487, column: 26, scope: !728)
!923 = !DILocation(line: 487, column: 17, scope: !728)
!924 = !DILocation(line: 488, column: 39, scope: !728)
!925 = !DILocation(line: 488, column: 53, scope: !728)
!926 = !DILocation(line: 488, column: 36, scope: !728)
!927 = !DILocation(line: 489, column: 29, scope: !728)
!928 = !DILocation(line: 489, column: 50, scope: !728)
!929 = !DILocation(line: 489, column: 42, scope: !728)
!930 = !DILocation(line: 489, column: 54, scope: !728)
!931 = !DILocation(line: 489, column: 14, scope: !728)
!932 = !DILocation(line: 490, column: 22, scope: !728)
!933 = !DILocation(line: 492, column: 31, scope: !728)
!934 = !DILocation(line: 492, column: 21, scope: !728)
!935 = !DILocation(line: 492, column: 60, scope: !728)
!936 = !DILocation(line: 492, column: 59, scope: !728)
!937 = !DILocation(line: 492, column: 18, scope: !728)
!938 = !DILocation(line: 493, column: 44, scope: !939)
!939 = distinct !DILexicalBlock(scope: !728, file: !2, line: 493, column: 12)
!940 = !DILocation(line: 493, column: 42, scope: !939)
!941 = !DILocation(line: 493, column: 24, scope: !939)
!942 = !DILocation(line: 482, column: 28, scope: !729)
!943 = !DILocation(line: 482, column: 17, scope: !729)
!944 = distinct !{!944, !912, !945, !449}
!945 = !DILocation(line: 494, column: 7, scope: !730)
!946 = !DILocation(line: 482, scope: !730)
!947 = !DILocation(line: 496, column: 12, scope: !948)
!948 = distinct !DILexicalBlock(scope: !708, file: !2, line: 496, column: 10)
!949 = !DILocation(line: 498, column: 19, scope: !950)
!950 = distinct !DILexicalBlock(scope: !708, file: !2, line: 498, column: 10)
!951 = !DILocation(line: 498, column: 10, scope: !708)
!952 = !DILocation(line: 503, column: 18, scope: !953)
!953 = distinct !DILexicalBlock(scope: !950, file: !2, line: 502, column: 12)
!954 = !DILocation(line: 506, column: 19, scope: !955)
!955 = distinct !DILexicalBlock(scope: !953, file: !2, line: 506, column: 12)
!956 = !DILocation(line: 506, column: 12, scope: !953)
!957 = !DILocation(line: 523, column: 40, scope: !672)
!958 = !DILocation(line: 524, column: 33, scope: !672)
!959 = !DILocation(line: 512, column: 17, scope: !708)
!960 = !DILocation(line: 513, column: 5, scope: !709)
!961 = !DILocation(line: 508, column: 23, scope: !962)
!962 = distinct !DILexicalBlock(scope: !955, file: !2, line: 506, column: 35)
!963 = !DILocation(line: 509, column: 11, scope: !964)
!964 = distinct !DILexicalBlock(scope: !962, file: !2, line: 509, column: 11)
!965 = !DILocation(line: 522, column: 15, scope: !672)
!966 = !DILocation(line: 523, column: 23, scope: !672)
!967 = !DILocation(line: 523, column: 35, scope: !672)
!968 = !DILocation(line: 523, column: 18, scope: !672)
!969 = !DILocation(line: 524, column: 23, scope: !672)
!970 = !DILocation(line: 524, column: 13, scope: !672)
!971 = !DILocation(line: 525, column: 45, scope: !672)
!972 = !DILocation(line: 525, column: 60, scope: !672)
!973 = !DILocation(line: 525, column: 42, scope: !672)
!974 = !DILocation(line: 526, column: 44, scope: !672)
!975 = !DILocation(line: 526, column: 42, scope: !672)
!976 = !DILocation(line: 526, column: 17, scope: !672)
!977 = !DILocation(line: 527, column: 5, scope: !672)
!978 = !DILocation(line: 528, column: 3, scope: !673)
!979 = !DILocation(line: 532, column: 5, scope: !734)
!980 = !DILocation(line: 534, column: 5, scope: !734)
!981 = !DILocation(line: 540, column: 5, scope: !734)
!982 = !DILocation(line: 541, column: 5, scope: !734)
!983 = !DILocation(line: 542, column: 20, scope: !734)
!984 = !DILocation(line: 543, column: 20, scope: !734)
!985 = !DILocation(line: 544, column: 20, scope: !734)
!986 = !DILocation(line: 545, column: 20, scope: !734)
!987 = !DILocation(line: 546, column: 25, scope: !734)
!988 = !DILocation(line: 546, column: 40, scope: !734)
!989 = !DILocation(line: 547, column: 25, scope: !734)
!990 = !DILocation(line: 547, column: 40, scope: !734)
!991 = !DILocation(line: 549, column: 5, scope: !734)
!992 = !DILocation(line: 550, column: 5, scope: !734)
!993 = !DILocation(line: 551, column: 5, scope: !734)
!994 = !DILocation(line: 552, column: 5, scope: !734)
!995 = !DILocation(line: 553, column: 26, scope: !734)
!996 = !DILocation(line: 553, column: 5, scope: !734)
!997 = !DILocation(line: 555, column: 12, scope: !734)
!998 = !DILocation(line: 555, column: 21, scope: !734)
!999 = !DILocation(line: 555, column: 19, scope: !734)
!1000 = !DILocation(line: 555, column: 31, scope: !734)
!1001 = !DILocation(line: 555, column: 29, scope: !734)
!1002 = !DILocation(line: 555, column: 42, scope: !734)
!1003 = !DILocation(line: 555, column: 40, scope: !734)
!1004 = !DILocation(line: 556, column: 21, scope: !734)
!1005 = !DILocation(line: 556, column: 19, scope: !734)
!1006 = !DILocation(line: 556, column: 31, scope: !734)
!1007 = !DILocation(line: 556, column: 29, scope: !734)
!1008 = !DILocation(line: 556, column: 42, scope: !734)
!1009 = !DILocation(line: 556, column: 40, scope: !734)
!1010 = !DILocation(line: 558, column: 12, scope: !764)
!1011 = !DILocation(line: 559, column: 34, scope: !763)
!1012 = !DILocation(line: 559, column: 46, scope: !763)
!1013 = !DILocation(line: 559, column: 61, scope: !763)
!1014 = !DILocation(line: 559, column: 75, scope: !763)
!1015 = !DILocation(line: 560, column: 47, scope: !763)
!1016 = !DILocation(line: 0, scope: !763)
!1017 = !DILocation(line: 560, column: 60, scope: !763)
!1018 = !DILocation(line: 560, column: 74, scope: !763)
!1019 = !DILocation(line: 560, column: 89, scope: !763)
!1020 = !DILocation(line: 560, column: 82, scope: !763)
!1021 = !DILocation(line: 560, column: 81, scope: !763)
!1022 = !DILocation(line: 563, column: 22, scope: !1023)
!1023 = distinct !DILexicalBlock(scope: !763, file: !2, line: 563, column: 10)
!1024 = !DILocation(line: 563, column: 40, scope: !1023)
!1025 = !DILocation(line: 561, column: 34, scope: !763)
!1026 = !DILocation(line: 562, column: 47, scope: !763)
!1027 = !DILocation(line: 562, column: 60, scope: !763)
!1028 = !DILocation(line: 562, column: 74, scope: !763)
!1029 = !DILocation(line: 561, column: 46, scope: !763)
!1030 = !DILocation(line: 561, column: 60, scope: !763)
!1031 = !DILocation(line: 561, column: 74, scope: !763)
!1032 = !DILocation(line: 564, column: 9, scope: !1033)
!1033 = distinct !DILexicalBlock(scope: !1023, file: !2, line: 563, column: 74)
!1034 = !DILocation(line: 565, column: 9, scope: !1033)
!1035 = !DILocation(line: 566, column: 18, scope: !1033)
!1036 = distinct !DIAssignID()
!1037 = !DILocation(line: 567, column: 18, scope: !1033)
!1038 = distinct !DIAssignID()
!1039 = !DILocation(line: 570, column: 9, scope: !1040)
!1040 = distinct !DILexicalBlock(scope: !1041, file: !2, line: 570, column: 9)
!1041 = distinct !DILexicalBlock(scope: !1023, file: !2, line: 569, column: 12)
!1042 = !DILocation(line: 570, column: 9, scope: !1043)
!1043 = distinct !DILexicalBlock(scope: !1040, file: !2, line: 570, column: 9)
!1044 = !DILocation(line: 573, column: 13, scope: !770)
!1045 = !DILocation(line: 573, column: 17, scope: !770)
!1046 = !DILocation(line: 574, column: 34, scope: !769)
!1047 = !DILocation(line: 574, column: 46, scope: !769)
!1048 = !DILocation(line: 574, column: 60, scope: !769)
!1049 = !DILocation(line: 574, column: 74, scope: !769)
!1050 = !DILocation(line: 576, column: 22, scope: !1051)
!1051 = distinct !DILexicalBlock(scope: !769, file: !2, line: 576, column: 10)
!1052 = !DILocation(line: 0, scope: !769)
!1053 = !DILocation(line: 576, column: 10, scope: !769)
!1054 = !DILocation(line: 575, column: 34, scope: !769)
!1055 = !DILocation(line: 575, column: 46, scope: !769)
!1056 = !DILocation(line: 575, column: 60, scope: !769)
!1057 = !DILocation(line: 575, column: 74, scope: !769)
!1058 = !DILocation(line: 577, column: 9, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1051, file: !2, line: 576, column: 41)
!1060 = !DILocation(line: 578, column: 18, scope: !1059)
!1061 = distinct !DIAssignID()
!1062 = distinct !DIAssignID()
!1063 = !DILocation(line: 580, column: 18, scope: !1059)
!1064 = !DILocation(line: 583, column: 9, scope: !1065)
!1065 = distinct !DILexicalBlock(scope: !1066, file: !2, line: 583, column: 9)
!1066 = distinct !DILexicalBlock(scope: !1051, file: !2, line: 582, column: 12)
!1067 = !DILocation(line: 583, column: 9, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !1065, file: !2, line: 583, column: 9)
!1069 = !DILocation(line: 586, column: 18, scope: !774)
!1070 = !DILocation(line: 587, column: 34, scope: !773)
!1071 = !DILocation(line: 587, column: 47, scope: !773)
!1072 = !DILocation(line: 587, column: 60, scope: !773)
!1073 = !DILocation(line: 587, column: 73, scope: !773)
!1074 = !DILocation(line: 587, column: 88, scope: !773)
!1075 = !DILocation(line: 587, column: 81, scope: !773)
!1076 = !DILocation(line: 587, column: 80, scope: !773)
!1077 = !DILocation(line: 589, column: 22, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !773, file: !2, line: 589, column: 10)
!1079 = !DILocation(line: 0, scope: !773)
!1080 = !DILocation(line: 589, column: 10, scope: !773)
!1081 = !DILocation(line: 588, column: 34, scope: !773)
!1082 = !DILocation(line: 588, column: 47, scope: !773)
!1083 = !DILocation(line: 588, column: 60, scope: !773)
!1084 = !DILocation(line: 588, column: 73, scope: !773)
!1085 = !DILocation(line: 591, column: 18, scope: !1086)
!1086 = distinct !DILexicalBlock(scope: !1078, file: !2, line: 589, column: 41)
!1087 = distinct !DIAssignID()
!1088 = !DILocation(line: 592, column: 9, scope: !1086)
!1089 = !DILocation(line: 593, column: 18, scope: !1086)
!1090 = distinct !DIAssignID()
!1091 = !DILocation(line: 596, column: 9, scope: !1092)
!1092 = distinct !DILexicalBlock(scope: !1093, file: !2, line: 596, column: 9)
!1093 = distinct !DILexicalBlock(scope: !1078, file: !2, line: 595, column: 12)
!1094 = !DILocation(line: 596, column: 9, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !1092, file: !2, line: 596, column: 9)
!1096 = !DILocation(line: 600, column: 16, scope: !1097)
!1097 = distinct !DILexicalBlock(scope: !774, file: !2, line: 599, column: 10)
!1098 = distinct !DIAssignID()
!1099 = !DILocation(line: 601, column: 16, scope: !1097)
!1100 = distinct !DIAssignID()
!1101 = !DILocation(line: 602, column: 7, scope: !1102)
!1102 = distinct !DILexicalBlock(scope: !1097, file: !2, line: 602, column: 7)
!1103 = !DILocation(line: 602, column: 7, scope: !1104)
!1104 = distinct !DILexicalBlock(scope: !1102, file: !2, line: 602, column: 7)
!1105 = !DILocation(line: 605, column: 55, scope: !734)
!1106 = !DILocation(line: 605, column: 17, scope: !734)
!1107 = !DILocation(line: 606, column: 17, scope: !734)
!1108 = !DILocation(line: 608, column: 25, scope: !734)
!1109 = !DILocation(line: 608, column: 32, scope: !734)
!1110 = !DILocation(line: 608, column: 28, scope: !734)
!1111 = !DILocation(line: 608, column: 43, scope: !734)
!1112 = !DILocation(line: 608, column: 50, scope: !734)
!1113 = !DILocation(line: 608, column: 46, scope: !734)
!1114 = !DILocation(line: 608, column: 18, scope: !734)
!1115 = !DILocation(line: 609, column: 37, scope: !734)
!1116 = !DILocation(line: 609, column: 33, scope: !734)
!1117 = !DILocation(line: 609, column: 20, scope: !734)
!1118 = !DILocation(line: 609, column: 61, scope: !734)
!1119 = !DILocation(line: 609, column: 57, scope: !734)
!1120 = !DILocation(line: 609, column: 44, scope: !734)
!1121 = !DILocation(line: 609, column: 13, scope: !734)
!1122 = !DILocation(line: 610, column: 30, scope: !734)
!1123 = !DILocation(line: 610, column: 33, scope: !734)
!1124 = !DILocation(line: 610, column: 20, scope: !734)
!1125 = !DILocation(line: 610, column: 54, scope: !734)
!1126 = !DILocation(line: 610, column: 57, scope: !734)
!1127 = !DILocation(line: 610, column: 44, scope: !734)
!1128 = !DILocation(line: 610, column: 17, scope: !734)
!1129 = !DILocation(line: 611, column: 45, scope: !734)
!1130 = !DILocation(line: 611, column: 69, scope: !734)
!1131 = !DILocation(line: 611, column: 42, scope: !734)
!1132 = !DILocation(line: 612, column: 44, scope: !734)
!1133 = !DILocation(line: 612, column: 42, scope: !734)
!1134 = !DILocation(line: 612, column: 17, scope: !734)
!1135 = !DILocation(line: 614, column: 9, scope: !1136)
!1136 = distinct !DILexicalBlock(scope: !734, file: !2, line: 614, column: 9)
!1137 = !DILocation(line: 614, column: 9, scope: !734)
!1138 = !DILocation(line: 621, column: 3, scope: !673)
!1139 = !DILocation(line: 0, scope: !673)
!1140 = !DILocation(line: 622, column: 1, scope: !661)
!1141 = !DISubprogram(name: "gsl_sf_hyperg_1F1_e", scope: !1142, file: !1142, line: 65, type: !1143, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1142 = !DIFile(filename: "../gsl/gsl_sf_hyperg.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "6a7ad80bd86b12c428cf1476c4b61a8a")
!1143 = !DISubroutineType(types: !1144)
!1144 = !{!45, !96, !96, !96, !97}
!1145 = distinct !DISubprogram(name: "gsl_sf_hyperg_2F1_conj_e", scope: !2, file: !2, line: 779, type: !368, scopeLine: 782, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !1146)
!1146 = !{!1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154}
!1147 = !DILocalVariable(name: "aR", arg: 1, scope: !1145, file: !2, line: 779, type: !96)
!1148 = !DILocalVariable(name: "aI", arg: 2, scope: !1145, file: !2, line: 779, type: !96)
!1149 = !DILocalVariable(name: "c", arg: 3, scope: !1145, file: !2, line: 779, type: !96)
!1150 = !DILocalVariable(name: "x", arg: 4, scope: !1145, file: !2, line: 780, type: !96)
!1151 = !DILocalVariable(name: "result", arg: 5, scope: !1145, file: !2, line: 781, type: !97)
!1152 = !DILocalVariable(name: "ax", scope: !1145, file: !2, line: 783, type: !96)
!1153 = !DILocalVariable(name: "rintc", scope: !1145, file: !2, line: 784, type: !96)
!1154 = !DILocalVariable(name: "c_neg_integer", scope: !1145, file: !2, line: 785, type: !115)
!1155 = !DILocation(line: 0, scope: !1145)
!1156 = !DILocation(line: 783, column: 21, scope: !1145)
!1157 = !DILocation(line: 785, column: 33, scope: !1145)
!1158 = !DILocation(line: 785, column: 40, scope: !1145)
!1159 = !DILocation(line: 784, column: 24, scope: !1145)
!1160 = !DILocation(line: 785, column: 44, scope: !1145)
!1161 = !DILocation(line: 785, column: 60, scope: !1145)
!1162 = !DILocation(line: 790, column: 9, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !1145, file: !2, line: 790, column: 6)
!1164 = !DILocation(line: 790, column: 16, scope: !1163)
!1165 = !DILocation(line: 788, column: 15, scope: !1145)
!1166 = !DILocation(line: 788, column: 11, scope: !1145)
!1167 = !DILocation(line: 791, column: 5, scope: !1168)
!1168 = distinct !DILexicalBlock(scope: !1169, file: !2, line: 791, column: 5)
!1169 = distinct !DILexicalBlock(scope: !1163, file: !2, line: 790, column: 46)
!1170 = !DILocation(line: 791, column: 5, scope: !1171)
!1171 = distinct !DILexicalBlock(scope: !1168, file: !2, line: 791, column: 5)
!1172 = !DILocation(line: 794, column: 13, scope: !1173)
!1173 = distinct !DILexicalBlock(scope: !1145, file: !2, line: 794, column: 9)
!1174 = !DILocation(line: 794, column: 20, scope: !1173)
!1175 = !DILocation(line: 795, column: 12, scope: !1173)
!1176 = !DILocation(line: 795, column: 18, scope: !1173)
!1177 = !DILocation(line: 797, column: 12, scope: !1178)
!1178 = distinct !DILexicalBlock(scope: !1173, file: !2, line: 796, column: 7)
!1179 = !DILocation(line: 797, column: 5, scope: !1178)
!1180 = !DILocation(line: 799, column: 20, scope: !1181)
!1181 = distinct !DILexicalBlock(scope: !1173, file: !2, line: 799, column: 11)
!1182 = !DILocation(line: 799, column: 27, scope: !1181)
!1183 = !DILocation(line: 800, column: 10, scope: !1184)
!1184 = distinct !DILexicalBlock(scope: !1185, file: !2, line: 800, column: 8)
!1185 = distinct !DILexicalBlock(scope: !1181, file: !2, line: 799, column: 47)
!1186 = !DILocation(line: 800, column: 8, scope: !1185)
!1187 = !DILocation(line: 801, column: 14, scope: !1188)
!1188 = distinct !DILexicalBlock(scope: !1184, file: !2, line: 800, column: 19)
!1189 = !DILocation(line: 801, column: 7, scope: !1188)
!1190 = !DILocation(line: 804, column: 14, scope: !1191)
!1191 = distinct !DILexicalBlock(scope: !1184, file: !2, line: 803, column: 10)
!1192 = !DILocation(line: 804, column: 7, scope: !1191)
!1193 = !DILocation(line: 808, column: 10, scope: !1194)
!1194 = distinct !DILexicalBlock(scope: !1195, file: !2, line: 808, column: 8)
!1195 = distinct !DILexicalBlock(scope: !1181, file: !2, line: 807, column: 8)
!1196 = !DILocation(line: 808, column: 8, scope: !1195)
!1197 = !DILocation(line: 811, column: 14, scope: !1198)
!1198 = distinct !DILexicalBlock(scope: !1194, file: !2, line: 808, column: 17)
!1199 = !DILocation(line: 811, column: 7, scope: !1198)
!1200 = !DILocation(line: 817, column: 5, scope: !1201)
!1201 = distinct !DILexicalBlock(scope: !1195, file: !2, line: 817, column: 5)
!1202 = !DILocation(line: 819, column: 1, scope: !1145)
!1203 = distinct !DISubprogram(name: "hyperg_2F1_conj_series", scope: !2, file: !2, line: 112, type: !1204, scopeLine: 115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !1206)
!1204 = !DISubroutineType(types: !1205)
!1205 = !{!45, !96, !96, !96, !83, !97}
!1206 = !{!1207, !1208, !1209, !1210, !1211, !1212, !1215, !1216, !1217, !1218, !1219}
!1207 = !DILocalVariable(name: "aR", arg: 1, scope: !1203, file: !2, line: 112, type: !96)
!1208 = !DILocalVariable(name: "aI", arg: 2, scope: !1203, file: !2, line: 112, type: !96)
!1209 = !DILocalVariable(name: "c", arg: 3, scope: !1203, file: !2, line: 112, type: !96)
!1210 = !DILocalVariable(name: "x", arg: 4, scope: !1203, file: !2, line: 113, type: !83)
!1211 = !DILocalVariable(name: "result", arg: 5, scope: !1203, file: !2, line: 114, type: !97)
!1212 = !DILocalVariable(name: "sum_pos", scope: !1213, file: !2, line: 122, type: !83)
!1213 = distinct !DILexicalBlock(scope: !1214, file: !2, line: 121, column: 8)
!1214 = distinct !DILexicalBlock(scope: !1203, file: !2, line: 116, column: 6)
!1215 = !DILocalVariable(name: "sum_neg", scope: !1213, file: !2, line: 123, type: !83)
!1216 = !DILocalVariable(name: "del_pos", scope: !1213, file: !2, line: 124, type: !83)
!1217 = !DILocalVariable(name: "del_neg", scope: !1213, file: !2, line: 125, type: !83)
!1218 = !DILocalVariable(name: "del", scope: !1213, file: !2, line: 126, type: !83)
!1219 = !DILocalVariable(name: "k", scope: !1213, file: !2, line: 127, type: !83)
!1220 = !DILocation(line: 0, scope: !1203)
!1221 = !DILocation(line: 116, column: 8, scope: !1214)
!1222 = !DILocation(line: 116, column: 6, scope: !1203)
!1223 = !DILocation(line: 128, column: 5, scope: !1213)
!1224 = !DILocation(line: 118, column: 17, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !1214, file: !2, line: 116, column: 16)
!1226 = !DILocation(line: 119, column: 5, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !1225, file: !2, line: 119, column: 5)
!1228 = !DILocation(line: 0, scope: !1213)
!1229 = !DILocation(line: 123, column: 12, scope: !1213)
!1230 = !DILocation(line: 125, column: 12, scope: !1213)
!1231 = !DILocation(line: 129, column: 21, scope: !1232)
!1232 = distinct !DILexicalBlock(scope: !1213, file: !2, line: 128, column: 8)
!1233 = !DILocation(line: 129, column: 41, scope: !1232)
!1234 = !DILocation(line: 129, column: 49, scope: !1232)
!1235 = !DILocation(line: 129, column: 46, scope: !1232)
!1236 = !DILocation(line: 129, column: 37, scope: !1232)
!1237 = !DILocation(line: 129, column: 54, scope: !1232)
!1238 = !DILocation(line: 129, column: 11, scope: !1232)
!1239 = !DILocation(line: 131, column: 14, scope: !1240)
!1240 = distinct !DILexicalBlock(scope: !1232, file: !2, line: 131, column: 10)
!1241 = !DILocation(line: 131, column: 10, scope: !1232)
!1242 = !DILocation(line: 134, column: 7, scope: !1243)
!1243 = distinct !DILexicalBlock(scope: !1240, file: !2, line: 131, column: 22)
!1244 = !DILocation(line: 136, column: 20, scope: !1245)
!1245 = distinct !DILexicalBlock(scope: !1240, file: !2, line: 135, column: 12)
!1246 = !DILocation(line: 140, column: 12, scope: !1247)
!1247 = distinct !DILexicalBlock(scope: !1232, file: !2, line: 140, column: 10)
!1248 = !DILocation(line: 140, column: 10, scope: !1232)
!1249 = !DILocation(line: 141, column: 22, scope: !1250)
!1250 = distinct !DILexicalBlock(scope: !1247, file: !2, line: 140, column: 21)
!1251 = !DILocation(line: 142, column: 17, scope: !1250)
!1252 = !DILocation(line: 143, column: 46, scope: !1250)
!1253 = !DILocation(line: 143, column: 21, scope: !1250)
!1254 = !DILocation(line: 144, column: 53, scope: !1250)
!1255 = !DILocation(line: 144, column: 52, scope: !1250)
!1256 = !DILocation(line: 144, column: 46, scope: !1250)
!1257 = !DILocation(line: 144, column: 81, scope: !1250)
!1258 = !DILocation(line: 144, column: 68, scope: !1250)
!1259 = !DILocation(line: 144, column: 66, scope: !1250)
!1260 = !DILocation(line: 144, column: 21, scope: !1250)
!1261 = !DILocation(line: 145, column: 9, scope: !1262)
!1262 = distinct !DILexicalBlock(scope: !1250, file: !2, line: 145, column: 9)
!1263 = !DILocation(line: 149, column: 47, scope: !1213)
!1264 = !DILocation(line: 149, column: 37, scope: !1213)
!1265 = !DILocation(line: 149, column: 13, scope: !1213)
!1266 = !DILocation(line: 149, column: 59, scope: !1213)
!1267 = !DILocation(line: 149, column: 5, scope: !1232)
!1268 = distinct !{!1268, !1223, !1269, !449}
!1269 = !DILocation(line: 149, column: 76, scope: !1213)
!1270 = !DILocation(line: 151, column: 18, scope: !1213)
!1271 = !DILocation(line: 152, column: 13, scope: !1213)
!1272 = !DILocation(line: 153, column: 42, scope: !1213)
!1273 = !DILocation(line: 153, column: 17, scope: !1213)
!1274 = !DILocation(line: 154, column: 49, scope: !1213)
!1275 = !DILocation(line: 154, column: 48, scope: !1213)
!1276 = !DILocation(line: 154, column: 42, scope: !1213)
!1277 = !DILocation(line: 154, column: 79, scope: !1213)
!1278 = !DILocation(line: 154, column: 66, scope: !1213)
!1279 = !DILocation(line: 154, column: 64, scope: !1213)
!1280 = !DILocation(line: 154, column: 17, scope: !1213)
!1281 = !DILocation(line: 156, column: 5, scope: !1213)
!1282 = !DILocation(line: 0, scope: !1214)
!1283 = !DILocation(line: 158, column: 1, scope: !1203)
!1284 = distinct !DISubprogram(name: "hyperg_2F1_conj_luke", scope: !2, file: !2, line: 268, type: !368, scopeLine: 271, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !1285)
!1285 = !{!1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1312, !1313, !1314, !1315, !1316, !1317, !1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327}
!1286 = !DILocalVariable(name: "aR", arg: 1, scope: !1284, file: !2, line: 268, type: !96)
!1287 = !DILocalVariable(name: "aI", arg: 2, scope: !1284, file: !2, line: 268, type: !96)
!1288 = !DILocalVariable(name: "c", arg: 3, scope: !1284, file: !2, line: 268, type: !96)
!1289 = !DILocalVariable(name: "xin", arg: 4, scope: !1284, file: !2, line: 269, type: !96)
!1290 = !DILocalVariable(name: "result", arg: 5, scope: !1284, file: !2, line: 270, type: !97)
!1291 = !DILocalVariable(name: "stat_iter", scope: !1284, file: !2, line: 272, type: !45)
!1292 = !DILocalVariable(name: "RECUR_BIG", scope: !1284, file: !2, line: 273, type: !96)
!1293 = !DILocalVariable(name: "nmax", scope: !1284, file: !2, line: 274, type: !115)
!1294 = !DILocalVariable(name: "n", scope: !1284, file: !2, line: 275, type: !45)
!1295 = !DILocalVariable(name: "x", scope: !1284, file: !2, line: 276, type: !96)
!1296 = !DILocalVariable(name: "x3", scope: !1284, file: !2, line: 277, type: !96)
!1297 = !DILocalVariable(name: "atimesb", scope: !1284, file: !2, line: 278, type: !96)
!1298 = !DILocalVariable(name: "apb", scope: !1284, file: !2, line: 279, type: !96)
!1299 = !DILocalVariable(name: "t0", scope: !1284, file: !2, line: 280, type: !96)
!1300 = !DILocalVariable(name: "t1", scope: !1284, file: !2, line: 281, type: !96)
!1301 = !DILocalVariable(name: "t2", scope: !1284, file: !2, line: 282, type: !96)
!1302 = !DILocalVariable(name: "F", scope: !1284, file: !2, line: 283, type: !83)
!1303 = !DILocalVariable(name: "prec", scope: !1284, file: !2, line: 284, type: !83)
!1304 = !DILocalVariable(name: "Bnm3", scope: !1284, file: !2, line: 286, type: !83)
!1305 = !DILocalVariable(name: "Bnm2", scope: !1284, file: !2, line: 287, type: !83)
!1306 = !DILocalVariable(name: "Bnm1", scope: !1284, file: !2, line: 288, type: !83)
!1307 = !DILocalVariable(name: "Anm3", scope: !1284, file: !2, line: 290, type: !83)
!1308 = !DILocalVariable(name: "Anm2", scope: !1284, file: !2, line: 291, type: !83)
!1309 = !DILocalVariable(name: "Anm1", scope: !1284, file: !2, line: 292, type: !83)
!1310 = !DILocalVariable(name: "nm1", scope: !1311, file: !2, line: 295, type: !83)
!1311 = distinct !DILexicalBlock(scope: !1284, file: !2, line: 294, column: 12)
!1312 = !DILocalVariable(name: "nm2", scope: !1311, file: !2, line: 296, type: !83)
!1313 = !DILocalVariable(name: "npam1_npbm1", scope: !1311, file: !2, line: 297, type: !83)
!1314 = !DILocalVariable(name: "npam2_npbm2", scope: !1311, file: !2, line: 298, type: !83)
!1315 = !DILocalVariable(name: "npcm1", scope: !1311, file: !2, line: 299, type: !83)
!1316 = !DILocalVariable(name: "npcm2", scope: !1311, file: !2, line: 300, type: !83)
!1317 = !DILocalVariable(name: "tnm1", scope: !1311, file: !2, line: 301, type: !83)
!1318 = !DILocalVariable(name: "tnm3", scope: !1311, file: !2, line: 302, type: !83)
!1319 = !DILocalVariable(name: "tnm5", scope: !1311, file: !2, line: 303, type: !83)
!1320 = !DILocalVariable(name: "n2", scope: !1311, file: !2, line: 304, type: !83)
!1321 = !DILocalVariable(name: "F1", scope: !1311, file: !2, line: 305, type: !83)
!1322 = !DILocalVariable(name: "F2", scope: !1311, file: !2, line: 306, type: !83)
!1323 = !DILocalVariable(name: "F3", scope: !1311, file: !2, line: 307, type: !83)
!1324 = !DILocalVariable(name: "E", scope: !1311, file: !2, line: 308, type: !83)
!1325 = !DILocalVariable(name: "An", scope: !1311, file: !2, line: 310, type: !83)
!1326 = !DILocalVariable(name: "Bn", scope: !1311, file: !2, line: 311, type: !83)
!1327 = !DILocalVariable(name: "r", scope: !1311, file: !2, line: 312, type: !83)
!1328 = !DILocation(line: 0, scope: !1284)
!1329 = !DILocation(line: 276, column: 20, scope: !1284)
!1330 = !DILocation(line: 277, column: 22, scope: !1284)
!1331 = !DILocation(line: 277, column: 24, scope: !1284)
!1332 = !DILocation(line: 278, column: 28, scope: !1284)
!1333 = !DILocation(line: 278, column: 36, scope: !1284)
!1334 = !DILocation(line: 279, column: 29, scope: !1284)
!1335 = !DILocation(line: 280, column: 28, scope: !1284)
!1336 = !DILocation(line: 281, column: 40, scope: !1284)
!1337 = !DILocation(line: 281, column: 51, scope: !1284)
!1338 = !DILocation(line: 281, column: 46, scope: !1284)
!1339 = !DILocation(line: 282, column: 35, scope: !1284)
!1340 = !DILocation(line: 282, column: 40, scope: !1284)
!1341 = !DILocation(line: 282, column: 54, scope: !1284)
!1342 = !DILocation(line: 282, column: 51, scope: !1284)
!1343 = !DILocation(line: 282, column: 46, scope: !1284)
!1344 = !DILocation(line: 287, column: 21, scope: !1284)
!1345 = !DILocation(line: 288, column: 26, scope: !1284)
!1346 = !DILocation(line: 288, column: 41, scope: !1284)
!1347 = !DILocation(line: 288, column: 37, scope: !1284)
!1348 = !DILocation(line: 288, column: 30, scope: !1284)
!1349 = !DILocation(line: 291, column: 22, scope: !1284)
!1350 = !DILocation(line: 292, column: 32, scope: !1284)
!1351 = !DILocation(line: 292, column: 26, scope: !1284)
!1352 = !DILocation(line: 292, column: 22, scope: !1284)
!1353 = !DILocation(line: 292, column: 47, scope: !1284)
!1354 = !DILocation(line: 292, column: 56, scope: !1284)
!1355 = !DILocation(line: 292, column: 52, scope: !1284)
!1356 = !DILocation(line: 292, column: 66, scope: !1284)
!1357 = !DILocation(line: 292, column: 42, scope: !1284)
!1358 = !DILocation(line: 294, column: 3, scope: !1284)
!1359 = !DILocation(line: 292, column: 10, scope: !1284)
!1360 = !DILocation(line: 291, column: 10, scope: !1284)
!1361 = !DILocation(line: 290, column: 10, scope: !1284)
!1362 = !DILocation(line: 288, column: 10, scope: !1284)
!1363 = !DILocation(line: 287, column: 10, scope: !1284)
!1364 = !DILocation(line: 286, column: 10, scope: !1284)
!1365 = !DILocation(line: 275, column: 7, scope: !1284)
!1366 = !DILocation(line: 295, column: 20, scope: !1311)
!1367 = !DILocation(line: 295, column: 18, scope: !1311)
!1368 = !DILocation(line: 0, scope: !1311)
!1369 = !DILocation(line: 296, column: 20, scope: !1311)
!1370 = !DILocation(line: 296, column: 18, scope: !1311)
!1371 = !DILocation(line: 297, column: 39, scope: !1311)
!1372 = !DILocation(line: 297, column: 49, scope: !1311)
!1373 = !DILocation(line: 298, column: 39, scope: !1311)
!1374 = !DILocation(line: 298, column: 49, scope: !1311)
!1375 = !DILocation(line: 299, column: 24, scope: !1311)
!1376 = !DILocation(line: 300, column: 24, scope: !1311)
!1377 = !DILocation(line: 301, column: 21, scope: !1311)
!1378 = !DILocation(line: 301, column: 24, scope: !1311)
!1379 = !DILocation(line: 301, column: 20, scope: !1311)
!1380 = !DILocation(line: 302, column: 24, scope: !1311)
!1381 = !DILocation(line: 302, column: 20, scope: !1311)
!1382 = !DILocation(line: 303, column: 24, scope: !1311)
!1383 = !DILocation(line: 303, column: 20, scope: !1311)
!1384 = !DILocation(line: 304, column: 18, scope: !1311)
!1385 = !DILocation(line: 304, column: 17, scope: !1311)
!1386 = !DILocation(line: 305, column: 22, scope: !1311)
!1387 = !DILocation(line: 305, column: 36, scope: !1311)
!1388 = !DILocation(line: 305, column: 35, scope: !1311)
!1389 = !DILocation(line: 305, column: 38, scope: !1311)
!1390 = !DILocation(line: 305, column: 42, scope: !1311)
!1391 = !DILocation(line: 305, column: 52, scope: !1311)
!1392 = !DILocation(line: 305, column: 65, scope: !1311)
!1393 = !DILocation(line: 305, column: 70, scope: !1311)
!1394 = !DILocation(line: 305, column: 61, scope: !1311)
!1395 = !DILocation(line: 306, column: 35, scope: !1311)
!1396 = !DILocation(line: 306, column: 38, scope: !1311)
!1397 = !DILocation(line: 306, column: 42, scope: !1311)
!1398 = !DILocation(line: 306, column: 17, scope: !1311)
!1399 = !DILocation(line: 306, column: 52, scope: !1311)
!1400 = !DILocation(line: 306, column: 67, scope: !1311)
!1401 = !DILocation(line: 306, column: 72, scope: !1311)
!1402 = !DILocation(line: 306, column: 77, scope: !1311)
!1403 = !DILocation(line: 306, column: 83, scope: !1311)
!1404 = !DILocation(line: 306, column: 64, scope: !1311)
!1405 = !DILocation(line: 307, column: 29, scope: !1311)
!1406 = !DILocation(line: 307, column: 61, scope: !1311)
!1407 = !DILocation(line: 307, column: 41, scope: !1311)
!1408 = !DILocation(line: 307, column: 77, scope: !1311)
!1409 = !DILocation(line: 307, column: 82, scope: !1311)
!1410 = !DILocation(line: 307, column: 87, scope: !1311)
!1411 = !DILocation(line: 307, column: 97, scope: !1311)
!1412 = !DILocation(line: 307, column: 92, scope: !1311)
!1413 = !DILocation(line: 307, column: 100, scope: !1311)
!1414 = !DILocation(line: 307, column: 106, scope: !1311)
!1415 = !DILocation(line: 307, column: 73, scope: !1311)
!1416 = !DILocation(line: 308, column: 17, scope: !1311)
!1417 = !DILocation(line: 308, column: 34, scope: !1311)
!1418 = !DILocation(line: 308, column: 29, scope: !1311)
!1419 = !DILocation(line: 308, column: 47, scope: !1311)
!1420 = !DILocation(line: 308, column: 53, scope: !1311)
!1421 = !DILocation(line: 308, column: 38, scope: !1311)
!1422 = !DILocation(line: 310, column: 21, scope: !1311)
!1423 = !DILocation(line: 310, column: 27, scope: !1311)
!1424 = !DILocation(line: 310, column: 38, scope: !1311)
!1425 = !DILocation(line: 310, column: 45, scope: !1311)
!1426 = !DILocation(line: 310, column: 47, scope: !1311)
!1427 = !DILocation(line: 310, column: 57, scope: !1311)
!1428 = !DILocation(line: 310, column: 60, scope: !1311)
!1429 = !DILocation(line: 311, column: 27, scope: !1311)
!1430 = !DILocation(line: 311, column: 47, scope: !1311)
!1431 = !DILocation(line: 311, column: 60, scope: !1311)
!1432 = !DILocation(line: 312, column: 18, scope: !1311)
!1433 = !DILocation(line: 314, column: 23, scope: !1311)
!1434 = !DILocation(line: 317, column: 13, scope: !1435)
!1435 = distinct !DILexicalBlock(scope: !1311, file: !2, line: 317, column: 8)
!1436 = !DILocation(line: 317, column: 31, scope: !1435)
!1437 = !DILocation(line: 319, column: 8, scope: !1438)
!1438 = distinct !DILexicalBlock(scope: !1311, file: !2, line: 319, column: 8)
!1439 = !DILocation(line: 319, column: 17, scope: !1438)
!1440 = !DILocation(line: 319, column: 29, scope: !1438)
!1441 = !DILocation(line: 319, column: 32, scope: !1438)
!1442 = !DILocation(line: 319, column: 41, scope: !1438)
!1443 = !DILocation(line: 319, column: 8, scope: !1311)
!1444 = !DILocation(line: 320, column: 12, scope: !1445)
!1445 = distinct !DILexicalBlock(scope: !1438, file: !2, line: 319, column: 54)
!1446 = !DILocation(line: 321, column: 12, scope: !1445)
!1447 = !DILocation(line: 322, column: 12, scope: !1445)
!1448 = !DILocation(line: 323, column: 12, scope: !1445)
!1449 = !DILocation(line: 324, column: 12, scope: !1445)
!1450 = !DILocation(line: 325, column: 12, scope: !1445)
!1451 = !DILocation(line: 328, column: 5, scope: !1445)
!1452 = !DILocation(line: 329, column: 22, scope: !1453)
!1453 = distinct !DILexicalBlock(scope: !1438, file: !2, line: 329, column: 13)
!1454 = !DILocation(line: 329, column: 38, scope: !1453)
!1455 = !DILocation(line: 330, column: 12, scope: !1456)
!1456 = distinct !DILexicalBlock(scope: !1453, file: !2, line: 329, column: 67)
!1457 = !DILocation(line: 331, column: 12, scope: !1456)
!1458 = !DILocation(line: 332, column: 12, scope: !1456)
!1459 = !DILocation(line: 333, column: 12, scope: !1456)
!1460 = !DILocation(line: 334, column: 12, scope: !1456)
!1461 = !DILocation(line: 335, column: 12, scope: !1456)
!1462 = !DILocation(line: 338, column: 5, scope: !1456)
!1463 = !DILocation(line: 340, column: 6, scope: !1311)
!1464 = !DILocation(line: 349, column: 16, scope: !1284)
!1465 = !DILocation(line: 350, column: 34, scope: !1284)
!1466 = !DILocation(line: 350, column: 24, scope: !1284)
!1467 = !DILocation(line: 350, column: 22, scope: !1284)
!1468 = !DILocation(line: 350, column: 11, scope: !1284)
!1469 = !DILocation(line: 351, column: 40, scope: !1284)
!1470 = !DILocation(line: 351, column: 52, scope: !1284)
!1471 = !DILocation(line: 351, column: 50, scope: !1284)
!1472 = !DILocation(line: 354, column: 25, scope: !1284)
!1473 = !DILocation(line: 354, column: 36, scope: !1284)
!1474 = !DILocation(line: 354, column: 45, scope: !1284)
!1475 = !DILocation(line: 354, column: 22, scope: !1284)
!1476 = !DILocation(line: 354, column: 15, scope: !1284)
!1477 = !DILocation(line: 356, column: 18, scope: !1284)
!1478 = !DILocation(line: 356, column: 16, scope: !1284)
!1479 = !DILocation(line: 358, column: 3, scope: !1284)
!1480 = distinct !DISubprogram(name: "gsl_sf_hyperg_2F1_renorm_e", scope: !2, file: !2, line: 823, type: !368, scopeLine: 827, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !1481)
!1481 = !{!1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1491, !1492, !1493, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507, !1508, !1511, !1512, !1513, !1514, !1515, !1516, !1518, !1519, !1520, !1521, !1522}
!1482 = !DILocalVariable(name: "a", arg: 1, scope: !1480, file: !2, line: 823, type: !96)
!1483 = !DILocalVariable(name: "b", arg: 2, scope: !1480, file: !2, line: 823, type: !96)
!1484 = !DILocalVariable(name: "c", arg: 3, scope: !1480, file: !2, line: 823, type: !96)
!1485 = !DILocalVariable(name: "x", arg: 4, scope: !1480, file: !2, line: 824, type: !96)
!1486 = !DILocalVariable(name: "result", arg: 5, scope: !1480, file: !2, line: 825, type: !97)
!1487 = !DILocalVariable(name: "rinta", scope: !1480, file: !2, line: 828, type: !96)
!1488 = !DILocalVariable(name: "rintb", scope: !1480, file: !2, line: 829, type: !96)
!1489 = !DILocalVariable(name: "rintc", scope: !1480, file: !2, line: 830, type: !96)
!1490 = !DILocalVariable(name: "a_neg_integer", scope: !1480, file: !2, line: 831, type: !115)
!1491 = !DILocalVariable(name: "b_neg_integer", scope: !1480, file: !2, line: 832, type: !115)
!1492 = !DILocalVariable(name: "c_neg_integer", scope: !1480, file: !2, line: 833, type: !115)
!1493 = !DILocalVariable(name: "g1", scope: !1494, file: !2, line: 845, type: !98)
!1494 = distinct !DILexicalBlock(scope: !1495, file: !2, line: 842, column: 10)
!1495 = distinct !DILexicalBlock(scope: !1496, file: !2, line: 836, column: 8)
!1496 = distinct !DILexicalBlock(scope: !1497, file: !2, line: 835, column: 21)
!1497 = distinct !DILexicalBlock(scope: !1480, file: !2, line: 835, column: 6)
!1498 = !DILocalVariable(name: "g2", scope: !1494, file: !2, line: 845, type: !98)
!1499 = !DILocalVariable(name: "g3", scope: !1494, file: !2, line: 845, type: !98)
!1500 = !DILocalVariable(name: "g4", scope: !1494, file: !2, line: 845, type: !98)
!1501 = !DILocalVariable(name: "g5", scope: !1494, file: !2, line: 845, type: !98)
!1502 = !DILocalVariable(name: "s1", scope: !1494, file: !2, line: 846, type: !83)
!1503 = !DILocalVariable(name: "s2", scope: !1494, file: !2, line: 846, type: !83)
!1504 = !DILocalVariable(name: "s3", scope: !1494, file: !2, line: 846, type: !83)
!1505 = !DILocalVariable(name: "s4", scope: !1494, file: !2, line: 846, type: !83)
!1506 = !DILocalVariable(name: "s5", scope: !1494, file: !2, line: 846, type: !83)
!1507 = !DILocalVariable(name: "stat", scope: !1494, file: !2, line: 847, type: !45)
!1508 = !DILocalVariable(name: "F", scope: !1509, file: !2, line: 857, type: !98)
!1509 = distinct !DILexicalBlock(scope: !1510, file: !2, line: 856, column: 12)
!1510 = distinct !DILexicalBlock(scope: !1494, file: !2, line: 853, column: 10)
!1511 = !DILocalVariable(name: "stat_F", scope: !1509, file: !2, line: 858, type: !45)
!1512 = !DILocalVariable(name: "ln_pre_val", scope: !1509, file: !2, line: 859, type: !83)
!1513 = !DILocalVariable(name: "ln_pre_err", scope: !1509, file: !2, line: 860, type: !83)
!1514 = !DILocalVariable(name: "sg", scope: !1509, file: !2, line: 861, type: !83)
!1515 = !DILocalVariable(name: "stat_e", scope: !1509, file: !2, line: 862, type: !45)
!1516 = !DILocalVariable(name: "F", scope: !1517, file: !2, line: 871, type: !98)
!1517 = distinct !DILexicalBlock(scope: !1497, file: !2, line: 869, column: 8)
!1518 = !DILocalVariable(name: "lng", scope: !1517, file: !2, line: 872, type: !98)
!1519 = !DILocalVariable(name: "sgn", scope: !1517, file: !2, line: 873, type: !83)
!1520 = !DILocalVariable(name: "stat_g", scope: !1517, file: !2, line: 874, type: !45)
!1521 = !DILocalVariable(name: "stat_F", scope: !1517, file: !2, line: 875, type: !45)
!1522 = !DILocalVariable(name: "stat_e", scope: !1517, file: !2, line: 876, type: !45)
!1523 = distinct !DIAssignID()
!1524 = !DILocation(line: 0, scope: !1494)
!1525 = distinct !DIAssignID()
!1526 = distinct !DIAssignID()
!1527 = distinct !DIAssignID()
!1528 = distinct !DIAssignID()
!1529 = distinct !DIAssignID()
!1530 = distinct !DIAssignID()
!1531 = distinct !DIAssignID()
!1532 = distinct !DIAssignID()
!1533 = distinct !DIAssignID()
!1534 = distinct !DIAssignID()
!1535 = !DILocation(line: 0, scope: !1509)
!1536 = distinct !DIAssignID()
!1537 = !DILocation(line: 0, scope: !1517)
!1538 = distinct !DIAssignID()
!1539 = distinct !DIAssignID()
!1540 = !DILocation(line: 0, scope: !1480)
!1541 = !DILocation(line: 829, column: 24, scope: !1480)
!1542 = !DILocation(line: 830, column: 24, scope: !1480)
!1543 = !DILocation(line: 831, column: 33, scope: !1480)
!1544 = !DILocation(line: 831, column: 40, scope: !1480)
!1545 = !DILocation(line: 828, column: 24, scope: !1480)
!1546 = !DILocation(line: 831, column: 44, scope: !1480)
!1547 = !DILocation(line: 831, column: 60, scope: !1480)
!1548 = !DILocation(line: 833, column: 33, scope: !1480)
!1549 = !DILocation(line: 833, column: 40, scope: !1480)
!1550 = !DILocation(line: 835, column: 6, scope: !1480)
!1551 = !DILocation(line: 832, column: 33, scope: !1480)
!1552 = !DILocation(line: 832, column: 40, scope: !1480)
!1553 = !DILocation(line: 836, column: 23, scope: !1495)
!1554 = !DILocation(line: 839, column: 19, scope: !1555)
!1555 = distinct !DILexicalBlock(scope: !1495, file: !2, line: 836, column: 70)
!1556 = !DILocation(line: 840, column: 7, scope: !1555)
!1557 = !DILocation(line: 845, column: 7, scope: !1494)
!1558 = !DILocation(line: 846, column: 7, scope: !1494)
!1559 = !DILocation(line: 848, column: 39, scope: !1494)
!1560 = !DILocation(line: 848, column: 15, scope: !1494)
!1561 = !DILocation(line: 849, column: 39, scope: !1494)
!1562 = !DILocation(line: 849, column: 15, scope: !1494)
!1563 = !DILocation(line: 849, column: 12, scope: !1494)
!1564 = !DILocation(line: 850, column: 15, scope: !1494)
!1565 = !DILocation(line: 850, column: 12, scope: !1494)
!1566 = !DILocation(line: 851, column: 15, scope: !1494)
!1567 = !DILocation(line: 851, column: 12, scope: !1494)
!1568 = !DILocation(line: 852, column: 15, scope: !1494)
!1569 = !DILocation(line: 853, column: 15, scope: !1510)
!1570 = !DILocation(line: 853, column: 10, scope: !1494)
!1571 = !DILocation(line: 854, column: 9, scope: !1572)
!1572 = distinct !DILexicalBlock(scope: !1573, file: !2, line: 854, column: 9)
!1573 = distinct !DILexicalBlock(scope: !1510, file: !2, line: 853, column: 21)
!1574 = !DILocation(line: 854, column: 9, scope: !1575)
!1575 = distinct !DILexicalBlock(scope: !1572, file: !2, line: 854, column: 9)
!1576 = !DILocation(line: 857, column: 9, scope: !1509)
!1577 = !DILocation(line: 858, column: 22, scope: !1509)
!1578 = !DILocation(line: 859, column: 32, scope: !1509)
!1579 = !DILocation(line: 859, column: 41, scope: !1509)
!1580 = !DILocation(line: 859, column: 50, scope: !1509)
!1581 = !DILocation(line: 859, column: 59, scope: !1509)
!1582 = !DILocation(line: 859, column: 68, scope: !1509)
!1583 = !DILocation(line: 860, column: 32, scope: !1509)
!1584 = !DILocation(line: 860, column: 41, scope: !1509)
!1585 = !DILocation(line: 860, column: 50, scope: !1509)
!1586 = !DILocation(line: 860, column: 59, scope: !1509)
!1587 = !DILocation(line: 860, column: 68, scope: !1509)
!1588 = !DILocation(line: 861, column: 22, scope: !1509)
!1589 = !DILocation(line: 861, column: 27, scope: !1509)
!1590 = !DILocation(line: 861, column: 25, scope: !1509)
!1591 = !DILocation(line: 861, column: 32, scope: !1509)
!1592 = !DILocation(line: 861, column: 30, scope: !1509)
!1593 = !DILocation(line: 861, column: 37, scope: !1509)
!1594 = !DILocation(line: 861, column: 35, scope: !1509)
!1595 = !DILocation(line: 861, column: 42, scope: !1509)
!1596 = !DILocation(line: 861, column: 40, scope: !1509)
!1597 = !DILocation(line: 863, column: 54, scope: !1509)
!1598 = !DILocation(line: 863, column: 50, scope: !1509)
!1599 = !DILocation(line: 863, column: 61, scope: !1509)
!1600 = !DILocation(line: 862, column: 22, scope: !1509)
!1601 = !DILocation(line: 865, column: 16, scope: !1509)
!1602 = !DILocation(line: 866, column: 7, scope: !1510)
!1603 = !DILocation(line: 0, scope: !1510)
!1604 = !DILocation(line: 867, column: 5, scope: !1495)
!1605 = !DILocation(line: 871, column: 5, scope: !1517)
!1606 = !DILocation(line: 872, column: 5, scope: !1517)
!1607 = !DILocation(line: 873, column: 5, scope: !1517)
!1608 = !DILocation(line: 874, column: 18, scope: !1517)
!1609 = !DILocation(line: 875, column: 18, scope: !1517)
!1610 = !DILocation(line: 876, column: 45, scope: !1517)
!1611 = !DILocation(line: 876, column: 40, scope: !1517)
!1612 = !DILocation(line: 876, column: 54, scope: !1517)
!1613 = !DILocation(line: 877, column: 43, scope: !1517)
!1614 = !DILocation(line: 877, column: 49, scope: !1517)
!1615 = !DILocation(line: 877, column: 46, scope: !1517)
!1616 = !DILocation(line: 877, column: 56, scope: !1517)
!1617 = !DILocation(line: 876, column: 18, scope: !1517)
!1618 = !DILocation(line: 879, column: 12, scope: !1517)
!1619 = !DILocation(line: 880, column: 3, scope: !1497)
!1620 = !DILocation(line: 0, scope: !1497)
!1621 = !DILocation(line: 881, column: 1, scope: !1480)
!1622 = !DISubprogram(name: "gsl_sf_exp_mult_err_e", scope: !366, file: !366, line: 122, type: !368, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1623 = distinct !DISubprogram(name: "gsl_sf_hyperg_2F1_conj_renorm_e", scope: !2, file: !2, line: 885, type: !368, scopeLine: 889, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !1624)
!1624 = !{!1625, !1626, !1627, !1628, !1629, !1630, !1631, !1632, !1633, !1634, !1639, !1640, !1641, !1642, !1643, !1644, !1647, !1648, !1649, !1650, !1651, !1653, !1654, !1655, !1656, !1657}
!1625 = !DILocalVariable(name: "aR", arg: 1, scope: !1623, file: !2, line: 885, type: !96)
!1626 = !DILocalVariable(name: "aI", arg: 2, scope: !1623, file: !2, line: 885, type: !96)
!1627 = !DILocalVariable(name: "c", arg: 3, scope: !1623, file: !2, line: 885, type: !96)
!1628 = !DILocalVariable(name: "x", arg: 4, scope: !1623, file: !2, line: 886, type: !96)
!1629 = !DILocalVariable(name: "result", arg: 5, scope: !1623, file: !2, line: 887, type: !97)
!1630 = !DILocalVariable(name: "rintc", scope: !1623, file: !2, line: 890, type: !96)
!1631 = !DILocalVariable(name: "rinta", scope: !1623, file: !2, line: 891, type: !96)
!1632 = !DILocalVariable(name: "a_neg_integer", scope: !1623, file: !2, line: 892, type: !115)
!1633 = !DILocalVariable(name: "c_neg_integer", scope: !1623, file: !2, line: 893, type: !115)
!1634 = !DILocalVariable(name: "g1", scope: !1635, file: !2, line: 905, type: !98)
!1635 = distinct !DILexicalBlock(scope: !1636, file: !2, line: 902, column: 10)
!1636 = distinct !DILexicalBlock(scope: !1637, file: !2, line: 896, column: 8)
!1637 = distinct !DILexicalBlock(scope: !1638, file: !2, line: 895, column: 21)
!1638 = distinct !DILexicalBlock(scope: !1623, file: !2, line: 895, column: 6)
!1639 = !DILocalVariable(name: "g2", scope: !1635, file: !2, line: 905, type: !98)
!1640 = !DILocalVariable(name: "g3", scope: !1635, file: !2, line: 906, type: !98)
!1641 = !DILocalVariable(name: "a1", scope: !1635, file: !2, line: 907, type: !98)
!1642 = !DILocalVariable(name: "a2", scope: !1635, file: !2, line: 907, type: !98)
!1643 = !DILocalVariable(name: "stat", scope: !1635, file: !2, line: 908, type: !45)
!1644 = !DILocalVariable(name: "F", scope: !1645, file: !2, line: 916, type: !98)
!1645 = distinct !DILexicalBlock(scope: !1646, file: !2, line: 915, column: 12)
!1646 = distinct !DILexicalBlock(scope: !1635, file: !2, line: 912, column: 10)
!1647 = !DILocalVariable(name: "stat_F", scope: !1645, file: !2, line: 917, type: !45)
!1648 = !DILocalVariable(name: "ln_pre_val", scope: !1645, file: !2, line: 918, type: !83)
!1649 = !DILocalVariable(name: "ln_pre_err", scope: !1645, file: !2, line: 919, type: !83)
!1650 = !DILocalVariable(name: "stat_e", scope: !1645, file: !2, line: 920, type: !45)
!1651 = !DILocalVariable(name: "F", scope: !1652, file: !2, line: 929, type: !98)
!1652 = distinct !DILexicalBlock(scope: !1638, file: !2, line: 927, column: 8)
!1653 = !DILocalVariable(name: "lng", scope: !1652, file: !2, line: 930, type: !98)
!1654 = !DILocalVariable(name: "sgn", scope: !1652, file: !2, line: 931, type: !83)
!1655 = !DILocalVariable(name: "stat_g", scope: !1652, file: !2, line: 932, type: !45)
!1656 = !DILocalVariable(name: "stat_F", scope: !1652, file: !2, line: 933, type: !45)
!1657 = !DILocalVariable(name: "stat_e", scope: !1652, file: !2, line: 934, type: !45)
!1658 = distinct !DIAssignID()
!1659 = !DILocation(line: 0, scope: !1635)
!1660 = distinct !DIAssignID()
!1661 = distinct !DIAssignID()
!1662 = distinct !DIAssignID()
!1663 = distinct !DIAssignID()
!1664 = distinct !DIAssignID()
!1665 = !DILocation(line: 0, scope: !1645)
!1666 = distinct !DIAssignID()
!1667 = !DILocation(line: 0, scope: !1652)
!1668 = distinct !DIAssignID()
!1669 = distinct !DIAssignID()
!1670 = !DILocation(line: 0, scope: !1623)
!1671 = !DILocation(line: 890, column: 24, scope: !1623)
!1672 = !DILocation(line: 892, column: 34, scope: !1623)
!1673 = !DILocation(line: 892, column: 40, scope: !1623)
!1674 = !DILocation(line: 891, column: 24, scope: !1623)
!1675 = !DILocation(line: 892, column: 43, scope: !1623)
!1676 = !DILocation(line: 892, column: 58, scope: !1623)
!1677 = !DILocation(line: 892, column: 67, scope: !1623)
!1678 = !DILocation(line: 892, column: 73, scope: !1623)
!1679 = !DILocation(line: 893, column: 34, scope: !1623)
!1680 = !DILocation(line: 893, column: 40, scope: !1623)
!1681 = !DILocation(line: 895, column: 6, scope: !1623)
!1682 = !DILocation(line: 896, column: 22, scope: !1636)
!1683 = !DILocation(line: 899, column: 19, scope: !1684)
!1684 = distinct !DILexicalBlock(scope: !1636, file: !2, line: 896, column: 37)
!1685 = !DILocation(line: 900, column: 7, scope: !1684)
!1686 = !DILocation(line: 905, column: 7, scope: !1635)
!1687 = !DILocation(line: 906, column: 7, scope: !1635)
!1688 = !DILocation(line: 907, column: 7, scope: !1635)
!1689 = !DILocation(line: 909, column: 44, scope: !1635)
!1690 = !DILocation(line: 909, column: 15, scope: !1635)
!1691 = !DILocation(line: 910, column: 15, scope: !1635)
!1692 = !DILocation(line: 910, column: 12, scope: !1635)
!1693 = !DILocation(line: 911, column: 15, scope: !1635)
!1694 = !DILocation(line: 912, column: 15, scope: !1646)
!1695 = !DILocation(line: 912, column: 10, scope: !1635)
!1696 = !DILocation(line: 913, column: 9, scope: !1697)
!1697 = distinct !DILexicalBlock(scope: !1698, file: !2, line: 913, column: 9)
!1698 = distinct !DILexicalBlock(scope: !1646, file: !2, line: 912, column: 21)
!1699 = !DILocation(line: 913, column: 9, scope: !1700)
!1700 = distinct !DILexicalBlock(scope: !1697, file: !2, line: 913, column: 9)
!1701 = !DILocation(line: 916, column: 9, scope: !1645)
!1702 = !DILocation(line: 917, column: 22, scope: !1645)
!1703 = !{i32 0, i32 25}
!1704 = !DILocation(line: 918, column: 37, scope: !1645)
!1705 = !DILocation(line: 918, column: 46, scope: !1645)
!1706 = !DILocation(line: 918, column: 32, scope: !1645)
!1707 = !DILocation(line: 918, column: 56, scope: !1645)
!1708 = !DILocation(line: 919, column: 39, scope: !1645)
!1709 = !DILocation(line: 919, column: 48, scope: !1645)
!1710 = !DILocation(line: 919, column: 33, scope: !1645)
!1711 = !DILocation(line: 919, column: 58, scope: !1645)
!1712 = !DILocation(line: 921, column: 49, scope: !1645)
!1713 = !DILocation(line: 921, column: 56, scope: !1645)
!1714 = !DILocation(line: 920, column: 22, scope: !1645)
!1715 = !DILocation(line: 923, column: 16, scope: !1645)
!1716 = !DILocation(line: 924, column: 7, scope: !1646)
!1717 = !DILocation(line: 0, scope: !1646)
!1718 = !DILocation(line: 925, column: 5, scope: !1636)
!1719 = !DILocation(line: 929, column: 5, scope: !1652)
!1720 = !DILocation(line: 930, column: 5, scope: !1652)
!1721 = !DILocation(line: 931, column: 5, scope: !1652)
!1722 = !DILocation(line: 932, column: 18, scope: !1652)
!1723 = !DILocation(line: 933, column: 18, scope: !1652)
!1724 = !DILocation(line: 934, column: 45, scope: !1652)
!1725 = !DILocation(line: 934, column: 40, scope: !1652)
!1726 = !DILocation(line: 934, column: 54, scope: !1652)
!1727 = !DILocation(line: 935, column: 43, scope: !1652)
!1728 = !DILocation(line: 935, column: 49, scope: !1652)
!1729 = !DILocation(line: 935, column: 46, scope: !1652)
!1730 = !DILocation(line: 935, column: 56, scope: !1652)
!1731 = !DILocation(line: 934, column: 18, scope: !1652)
!1732 = !DILocation(line: 937, column: 12, scope: !1652)
!1733 = !DILocation(line: 938, column: 3, scope: !1638)
!1734 = !DILocation(line: 0, scope: !1638)
!1735 = !DILocation(line: 939, column: 1, scope: !1623)
!1736 = !DISubprogram(name: "gsl_sf_lngamma_complex_e", scope: !353, file: !353, line: 103, type: !1737, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1737 = !DISubroutineType(types: !1738)
!1738 = !{!45, !83, !83, !97, !97}
!1739 = distinct !DISubprogram(name: "gsl_sf_hyperg_2F1", scope: !2, file: !2, line: 946, type: !1740, scopeLine: 947, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !1742)
!1740 = !DISubroutineType(types: !1741)
!1741 = !{!83, !83, !83, !83, !83}
!1742 = !{!1743, !1744, !1745, !1746, !1747, !1748}
!1743 = !DILocalVariable(name: "a", arg: 1, scope: !1739, file: !2, line: 946, type: !83)
!1744 = !DILocalVariable(name: "b", arg: 2, scope: !1739, file: !2, line: 946, type: !83)
!1745 = !DILocalVariable(name: "c", arg: 3, scope: !1739, file: !2, line: 946, type: !83)
!1746 = !DILocalVariable(name: "x", arg: 4, scope: !1739, file: !2, line: 946, type: !83)
!1747 = !DILocalVariable(name: "result", scope: !1739, file: !2, line: 948, type: !98)
!1748 = !DILocalVariable(name: "status", scope: !1739, file: !2, line: 948, type: !45)
!1749 = distinct !DIAssignID()
!1750 = !DILocation(line: 0, scope: !1739)
!1751 = !DILocation(line: 948, column: 3, scope: !1739)
!1752 = !DILocation(line: 948, column: 3, scope: !1753)
!1753 = distinct !DILexicalBlock(scope: !1739, file: !2, line: 948, column: 3)
!1754 = !DILocation(line: 948, column: 3, scope: !1755)
!1755 = distinct !DILexicalBlock(scope: !1756, file: !2, line: 948, column: 3)
!1756 = distinct !DILexicalBlock(scope: !1753, file: !2, line: 948, column: 3)
!1757 = !DILocation(line: 949, column: 1, scope: !1739)
!1758 = distinct !DISubprogram(name: "gsl_sf_hyperg_2F1_conj", scope: !2, file: !2, line: 951, type: !1740, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !1759)
!1759 = !{!1760, !1761, !1762, !1763, !1764, !1765}
!1760 = !DILocalVariable(name: "aR", arg: 1, scope: !1758, file: !2, line: 951, type: !83)
!1761 = !DILocalVariable(name: "aI", arg: 2, scope: !1758, file: !2, line: 951, type: !83)
!1762 = !DILocalVariable(name: "c", arg: 3, scope: !1758, file: !2, line: 951, type: !83)
!1763 = !DILocalVariable(name: "x", arg: 4, scope: !1758, file: !2, line: 951, type: !83)
!1764 = !DILocalVariable(name: "result", scope: !1758, file: !2, line: 953, type: !98)
!1765 = !DILocalVariable(name: "status", scope: !1758, file: !2, line: 953, type: !45)
!1766 = distinct !DIAssignID()
!1767 = !DILocation(line: 0, scope: !1758)
!1768 = !DILocation(line: 953, column: 3, scope: !1758)
!1769 = !DILocation(line: 953, column: 3, scope: !1770)
!1770 = distinct !DILexicalBlock(scope: !1758, file: !2, line: 953, column: 3)
!1771 = !DILocation(line: 953, column: 3, scope: !1772)
!1772 = distinct !DILexicalBlock(scope: !1773, file: !2, line: 953, column: 3)
!1773 = distinct !DILexicalBlock(scope: !1770, file: !2, line: 953, column: 3)
!1774 = !DILocation(line: 954, column: 1, scope: !1758)
!1775 = distinct !DISubprogram(name: "gsl_sf_hyperg_2F1_renorm", scope: !2, file: !2, line: 956, type: !1740, scopeLine: 957, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !1776)
!1776 = !{!1777, !1778, !1779, !1780, !1781, !1782}
!1777 = !DILocalVariable(name: "a", arg: 1, scope: !1775, file: !2, line: 956, type: !83)
!1778 = !DILocalVariable(name: "b", arg: 2, scope: !1775, file: !2, line: 956, type: !83)
!1779 = !DILocalVariable(name: "c", arg: 3, scope: !1775, file: !2, line: 956, type: !83)
!1780 = !DILocalVariable(name: "x", arg: 4, scope: !1775, file: !2, line: 956, type: !83)
!1781 = !DILocalVariable(name: "result", scope: !1775, file: !2, line: 958, type: !98)
!1782 = !DILocalVariable(name: "status", scope: !1775, file: !2, line: 958, type: !45)
!1783 = distinct !DIAssignID()
!1784 = !DILocation(line: 0, scope: !1775)
!1785 = !DILocation(line: 958, column: 3, scope: !1775)
!1786 = !DILocation(line: 958, column: 3, scope: !1787)
!1787 = distinct !DILexicalBlock(scope: !1775, file: !2, line: 958, column: 3)
!1788 = !DILocation(line: 958, column: 3, scope: !1789)
!1789 = distinct !DILexicalBlock(scope: !1790, file: !2, line: 958, column: 3)
!1790 = distinct !DILexicalBlock(scope: !1787, file: !2, line: 958, column: 3)
!1791 = !DILocation(line: 959, column: 1, scope: !1775)
!1792 = distinct !DISubprogram(name: "gsl_sf_hyperg_2F1_conj_renorm", scope: !2, file: !2, line: 961, type: !1740, scopeLine: 962, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !1793)
!1793 = !{!1794, !1795, !1796, !1797, !1798, !1799}
!1794 = !DILocalVariable(name: "aR", arg: 1, scope: !1792, file: !2, line: 961, type: !83)
!1795 = !DILocalVariable(name: "aI", arg: 2, scope: !1792, file: !2, line: 961, type: !83)
!1796 = !DILocalVariable(name: "c", arg: 3, scope: !1792, file: !2, line: 961, type: !83)
!1797 = !DILocalVariable(name: "x", arg: 4, scope: !1792, file: !2, line: 961, type: !83)
!1798 = !DILocalVariable(name: "result", scope: !1792, file: !2, line: 963, type: !98)
!1799 = !DILocalVariable(name: "status", scope: !1792, file: !2, line: 963, type: !45)
!1800 = distinct !DIAssignID()
!1801 = !DILocation(line: 0, scope: !1792)
!1802 = !DILocation(line: 963, column: 3, scope: !1792)
!1803 = !DILocation(line: 963, column: 3, scope: !1804)
!1804 = distinct !DILexicalBlock(scope: !1792, file: !2, line: 963, column: 3)
!1805 = !DILocation(line: 963, column: 3, scope: !1806)
!1806 = distinct !DILexicalBlock(scope: !1807, file: !2, line: 963, column: 3)
!1807 = distinct !DILexicalBlock(scope: !1804, file: !2, line: 963, column: 3)
!1808 = !DILocation(line: 964, column: 1, scope: !1792)
!1809 = !DISubprogram(name: "log", scope: !1810, file: !1810, line: 104, type: !1811, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1810 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!1811 = !DISubroutineType(types: !1812)
!1812 = !{!83, !83}
!1813 = !DISubprogram(name: "sqrt", scope: !1810, file: !1810, line: 143, type: !1811, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1814 = !DISubprogram(name: "gsl_sf_psi_e", scope: !1815, file: !1815, line: 60, type: !1816, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1815 = !DIFile(filename: "../gsl/gsl_sf_psi.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "991a41b1033bad74a63fe4c86bbfa6a4")
!1816 = !DISubroutineType(types: !1817)
!1817 = !{!45, !96, !97}
