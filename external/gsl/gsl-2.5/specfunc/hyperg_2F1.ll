; ModuleID = 'hyperg_2F1.c'
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
  %13 = fsub double %2, %0, !dbg !148
  %14 = fsub double %13, %1, !dbg !149
  tail call void @llvm.dbg.value(metadata double %14, metadata !110, metadata !DIExpression()), !dbg !147
  %15 = fadd double %0, 5.000000e-01, !dbg !150
  %16 = tail call double @llvm.floor.f64(double %15), !dbg !151
  tail call void @llvm.dbg.value(metadata double %16, metadata !111, metadata !DIExpression()), !dbg !147
  %17 = fadd double %1, 5.000000e-01, !dbg !152
  %18 = tail call double @llvm.floor.f64(double %17), !dbg !153
  tail call void @llvm.dbg.value(metadata double %18, metadata !112, metadata !DIExpression()), !dbg !147
  %19 = fadd double %2, 5.000000e-01, !dbg !154
  %20 = tail call double @llvm.floor.f64(double %19), !dbg !155
  tail call void @llvm.dbg.value(metadata double %20, metadata !113, metadata !DIExpression()), !dbg !147
  %21 = fcmp olt double %0, 0.000000e+00, !dbg !156
  %22 = fsub double %0, %16, !dbg !157
  %23 = tail call double @llvm.fabs.f64(double %22), !dbg !157
  %24 = fcmp olt double %23, 0x3D4F400000000000, !dbg !157
  %25 = and i1 %21, %24, !dbg !157
  tail call void @llvm.dbg.value(metadata i1 %25, metadata !114, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !147
  %26 = fcmp olt double %1, 0.000000e+00, !dbg !158
  %27 = fsub double %1, %18, !dbg !159
  %28 = tail call double @llvm.fabs.f64(double %27), !dbg !159
  %29 = fcmp olt double %28, 0x3D4F400000000000, !dbg !159
  %30 = and i1 %26, %29, !dbg !159
  tail call void @llvm.dbg.value(metadata i1 %30, metadata !116, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !147
  %31 = fcmp olt double %2, 0.000000e+00, !dbg !160
  %32 = fsub double %2, %20, !dbg !161
  %33 = tail call double @llvm.fabs.f64(double %32), !dbg !161
  %34 = fcmp olt double %33, 0x3D4F400000000000, !dbg !161
  %35 = and i1 %31, %34, !dbg !161
  tail call void @llvm.dbg.value(metadata i1 %35, metadata !117, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !147
  %36 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !162
  %37 = fadd double %3, -1.000000e+00, !dbg !163
  %38 = tail call double @llvm.fabs.f64(double %37), !dbg !164
  %39 = fcmp olt double %38, 0x3D4F400000000000, !dbg !165
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false), !dbg !166
  br i1 %39, label %40, label %88, !dbg !167

40:                                               ; preds = %5
  %41 = fcmp ule double %14, 0.000000e+00, !dbg !168
  %42 = fcmp oeq double %2, 0.000000e+00
  %43 = or i1 %42, %41, !dbg !169
  %44 = or i1 %43, %35, !dbg !169
  br i1 %44, label %88, label %45, !dbg !169

45:                                               ; preds = %40
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #8, !dbg !170
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #8, !dbg !170
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #8, !dbg !170
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #8, !dbg !170
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #8, !dbg !171
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #8, !dbg !171
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #8, !dbg !171
  %46 = call i32 @gsl_sf_lngamma_sgn_e(double noundef %2, ptr noundef nonnull %6, ptr noundef nonnull %10) #8, !dbg !172
  tail call void @llvm.dbg.value(metadata i32 %46, metadata !128, metadata !DIExpression()), !dbg !140
  %47 = call i32 @gsl_sf_lngamma_e(double noundef %14, ptr noundef nonnull %7) #8, !dbg !173
  tail call void @llvm.dbg.value(metadata i32 %47, metadata !129, metadata !DIExpression()), !dbg !140
  %48 = call i32 @gsl_sf_lngamma_sgn_e(double noundef %13, ptr noundef nonnull %8, ptr noundef nonnull %11) #8, !dbg !174
  tail call void @llvm.dbg.value(metadata i32 %48, metadata !130, metadata !DIExpression()), !dbg !140
  %49 = fsub double %2, %1, !dbg !175
  %50 = call i32 @gsl_sf_lngamma_sgn_e(double noundef %49, ptr noundef nonnull %9, ptr noundef nonnull %12) #8, !dbg !176
  tail call void @llvm.dbg.value(metadata i32 %50, metadata !131, metadata !DIExpression()), !dbg !140
  %51 = icmp ne i32 %46, 0, !dbg !177
  %52 = icmp ne i32 %47, 0
  %53 = select i1 %51, i1 true, i1 %52, !dbg !179
  %54 = icmp ne i32 %48, 0
  %55 = select i1 %53, i1 true, i1 %54, !dbg !179
  %56 = icmp ne i32 %50, 0
  %57 = select i1 %55, i1 true, i1 %56, !dbg !179
  br i1 %57, label %58, label %59, !dbg !179

58:                                               ; preds = %45
  store double 0x7FF8000000000000, ptr %4, align 8, !dbg !180, !tbaa !183
  store double 0x7FF8000000000000, ptr %36, align 8, !dbg !180, !tbaa !188
  call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 672, i32 noundef 1) #8, !dbg !189
  br label %86, !dbg !189

59:                                               ; preds = %45
  %60 = load double, ptr %6, align 8, !dbg !191, !tbaa !183
  %61 = load double, ptr %7, align 8, !dbg !192, !tbaa !183
  %62 = fadd double %60, %61, !dbg !193
  %63 = load double, ptr %8, align 8, !dbg !194, !tbaa !183
  %64 = fsub double %62, %63, !dbg !195
  %65 = load double, ptr %9, align 8, !dbg !196, !tbaa !183
  %66 = fsub double %64, %65, !dbg !197
  %67 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !198
  %68 = load double, ptr %67, align 8, !dbg !198, !tbaa !188
  %69 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %7, i64 0, i32 1, !dbg !199
  %70 = load double, ptr %69, align 8, !dbg !199, !tbaa !188
  %71 = fadd double %68, %70, !dbg !200
  %72 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %8, i64 0, i32 1, !dbg !201
  %73 = load double, ptr %72, align 8, !dbg !201, !tbaa !188
  %74 = fadd double %71, %73, !dbg !202
  %75 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %9, i64 0, i32 1, !dbg !203
  %76 = load double, ptr %75, align 8, !dbg !203, !tbaa !188
  %77 = fadd double %74, %76, !dbg !204
  %78 = call i32 @gsl_sf_exp_err_e(double noundef %66, double noundef %77, ptr noundef nonnull %4) #8, !dbg !205
  tail call void @llvm.dbg.value(metadata i32 %78, metadata !127, metadata !DIExpression()), !dbg !140
  %79 = load double, ptr %10, align 8, !dbg !206, !tbaa !207
  %80 = load double, ptr %11, align 8, !dbg !208, !tbaa !207
  %81 = load double, ptr %12, align 8, !dbg !209, !tbaa !207
  %82 = fmul double %80, %81, !dbg !210
  %83 = fdiv double %79, %82, !dbg !211
  %84 = load double, ptr %4, align 8, !dbg !212, !tbaa !183
  %85 = fmul double %84, %83, !dbg !212
  store double %85, ptr %4, align 8, !dbg !212, !tbaa !183
  br label %86, !dbg !213

86:                                               ; preds = %59, %58
  %87 = phi i32 [ 1, %58 ], [ %78, %59 ], !dbg !140
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #8, !dbg !214
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #8, !dbg !214
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #8, !dbg !214
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #8, !dbg !214
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #8, !dbg !214
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #8, !dbg !214
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #8, !dbg !214
  br label %208

88:                                               ; preds = %40, %5
  %89 = fcmp olt double %3, -1.000000e+00, !dbg !215
  %90 = fcmp oge double %3, 1.000000e+00
  %91 = or i1 %89, %90, !dbg !217
  br i1 %91, label %92, label %93, !dbg !217

92:                                               ; preds = %88
  store double 0x7FF8000000000000, ptr %4, align 8, !dbg !218, !tbaa !183
  store double 0x7FF8000000000000, ptr %36, align 8, !dbg !218, !tbaa !188
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 685, i32 noundef 1) #8, !dbg !221
  br label %208, !dbg !221

93:                                               ; preds = %88
  br i1 %35, label %94, label %102, !dbg !223

94:                                               ; preds = %93
  %95 = fadd double %2, 1.000000e-01
  %96 = fcmp olt double %95, %0
  %97 = and i1 %96, %25, !dbg !224
  %98 = fcmp olt double %95, %1
  %99 = and i1 %98, %30
  %100 = or i1 %97, %99, !dbg !224
  br i1 %100, label %102, label %101, !dbg !224

101:                                              ; preds = %94
  store double 0x7FF8000000000000, ptr %4, align 8, !dbg !228, !tbaa !183
  store double 0x7FF8000000000000, ptr %36, align 8, !dbg !228, !tbaa !188
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 693, i32 noundef 1) #8, !dbg !231
  br label %208, !dbg !231

102:                                              ; preds = %94, %93
  %103 = fsub double %2, %1, !dbg !233
  %104 = tail call double @llvm.fabs.f64(double %103), !dbg !235
  %105 = fcmp olt double %104, 0x3D4F400000000000, !dbg !236
  %106 = tail call double @llvm.fabs.f64(double %13)
  %107 = fcmp olt double %106, 0x3D4F400000000000
  %108 = or i1 %105, %107, !dbg !237
  br i1 %108, label %109, label %133, !dbg !237

109:                                              ; preds = %102
  call void @llvm.dbg.value(metadata double %3, metadata !238, metadata !DIExpression()), !dbg !247
  call void @llvm.dbg.value(metadata double %14, metadata !243, metadata !DIExpression()), !dbg !247
  call void @llvm.dbg.value(metadata ptr %4, metadata !244, metadata !DIExpression()), !dbg !247
  %110 = tail call double @llvm.fabs.f64(double %3), !dbg !250
  %111 = fcmp olt double %110, 0x3F48406003B2AE5A, !dbg !252
  br i1 %111, label %112, label %124, !dbg !253

112:                                              ; preds = %109
  %113 = fneg double %3, !dbg !254
  %114 = fmul double %3, 2.500000e-01, !dbg !256
  %115 = fadd double %114, 0x3FD5555555555555, !dbg !257
  %116 = fmul double %3, %3, !dbg !258
  %117 = fdiv double %116, 5.000000e+00, !dbg !259
  %118 = fadd double %115, %117, !dbg !260
  %119 = fmul double %118, %3, !dbg !261
  %120 = fadd double %119, 5.000000e-01, !dbg !262
  %121 = fmul double %120, %3, !dbg !263
  %122 = fadd double %121, 1.000000e+00, !dbg !264
  %123 = fmul double %122, %113, !dbg !265
  call void @llvm.dbg.value(metadata double %123, metadata !245, metadata !DIExpression()), !dbg !247
  br label %127, !dbg !266

124:                                              ; preds = %109
  %125 = fsub double 1.000000e+00, %3, !dbg !267
  %126 = tail call double @log(double noundef %125) #8, !dbg !269
  call void @llvm.dbg.value(metadata double %126, metadata !245, metadata !DIExpression()), !dbg !247
  br label %127

127:                                              ; preds = %112, %124
  %128 = phi double [ %123, %112 ], [ %126, %124 ], !dbg !270
  call void @llvm.dbg.value(metadata double %128, metadata !245, metadata !DIExpression()), !dbg !247
  %129 = fmul double %14, %128, !dbg !271
  call void @llvm.dbg.value(metadata double %129, metadata !246, metadata !DIExpression()), !dbg !247
  %130 = tail call double @llvm.fabs.f64(double %129), !dbg !272
  %131 = fmul double %130, 0x3CB0000000000000, !dbg !273
  %132 = tail call i32 @gsl_sf_exp_err_e(double noundef %129, double noundef %131, ptr noundef nonnull %4) #8, !dbg !274
  br label %208, !dbg !275

133:                                              ; preds = %102
  %134 = fcmp oge double %0, 0.000000e+00, !dbg !276
  %135 = fcmp oge double %1, 0.000000e+00
  %136 = and i1 %134, %135, !dbg !278
  %137 = fcmp oge double %2, 0.000000e+00
  %138 = and i1 %136, %137, !dbg !278
  %139 = fcmp oge double %3, 0.000000e+00
  %140 = and i1 %138, %139, !dbg !278
  %141 = fcmp olt double %3, 0x3FEFD70A3D70A3D7
  %142 = and i1 %141, %140, !dbg !278
  br i1 %142, label %143, label %145, !dbg !278

143:                                              ; preds = %133
  %144 = tail call fastcc i32 @hyperg_2F1_series(double noundef %0, double noundef %1, double noundef %2, double noundef %3, ptr noundef nonnull %4), !dbg !279, !range !281
  br label %208, !dbg !282

145:                                              ; preds = %133
  %146 = tail call double @llvm.fabs.f64(double %0), !dbg !283
  %147 = fcmp olt double %146, 1.000000e+01, !dbg !284
  %148 = tail call double @llvm.fabs.f64(double %1)
  %149 = fcmp olt double %148, 1.000000e+01
  %150 = and i1 %147, %149, !dbg !285
  br i1 %150, label %151, label %172, !dbg !285

151:                                              ; preds = %145
  br i1 %25, label %152, label %154, !dbg !286

152:                                              ; preds = %151
  %153 = tail call fastcc i32 @hyperg_2F1_series(double noundef %16, double noundef %1, double noundef %2, double noundef %3, ptr noundef nonnull %4), !dbg !288, !range !281
  br label %208, !dbg !291

154:                                              ; preds = %151
  br i1 %30, label %155, label %157, !dbg !292

155:                                              ; preds = %154
  %156 = tail call fastcc i32 @hyperg_2F1_series(double noundef %0, double noundef %18, double noundef %2, double noundef %3, ptr noundef nonnull %4), !dbg !293, !range !281
  br label %208, !dbg !296

157:                                              ; preds = %154
  %158 = fcmp olt double %3, -2.500000e-01, !dbg !297
  br i1 %158, label %159, label %161, !dbg !299

159:                                              ; preds = %157
  %160 = tail call fastcc i32 @hyperg_2F1_luke(double noundef %0, double noundef %1, double noundef %2, double noundef %3, ptr noundef nonnull %4), !dbg !300, !range !281
  br label %208, !dbg !302

161:                                              ; preds = %157
  %162 = fcmp olt double %3, 5.000000e-01, !dbg !303
  br i1 %162, label %163, label %165, !dbg !305

163:                                              ; preds = %161
  %164 = tail call fastcc i32 @hyperg_2F1_series(double noundef %0, double noundef %1, double noundef %2, double noundef %3, ptr noundef nonnull %4), !dbg !306, !range !281
  br label %208, !dbg !308

165:                                              ; preds = %161
  %166 = tail call double @llvm.fabs.f64(double %2), !dbg !309
  %167 = fcmp ogt double %166, 1.000000e+01, !dbg !312
  br i1 %167, label %168, label %170, !dbg !313

168:                                              ; preds = %165
  %169 = tail call fastcc i32 @hyperg_2F1_series(double noundef %0, double noundef %1, double noundef %2, double noundef %3, ptr noundef nonnull %4), !dbg !314, !range !281
  br label %208, !dbg !316

170:                                              ; preds = %165
  %171 = tail call fastcc i32 @hyperg_2F1_reflect(double noundef %0, double noundef %1, double noundef %2, double noundef %3, ptr noundef nonnull %4), !dbg !317
  br label %208, !dbg !319

172:                                              ; preds = %145
  %173 = fcmp ogt double %146, %148, !dbg !320
  %174 = select i1 %173, double %1, double %0
  %175 = select i1 %173, double %0, double %1
  tail call void @llvm.dbg.value(metadata double %175, metadata !135, metadata !DIExpression()), !dbg !322
  tail call void @llvm.dbg.value(metadata double %174, metadata !132, metadata !DIExpression()), !dbg !322
  %176 = fcmp olt double %3, 0.000000e+00, !dbg !323
  br i1 %176, label %177, label %179, !dbg !325

177:                                              ; preds = %172
  %178 = tail call fastcc i32 @hyperg_2F1_luke(double noundef %0, double noundef %1, double noundef %2, double noundef %3, ptr noundef nonnull %4), !dbg !326, !range !281
  br label %208, !dbg !328

179:                                              ; preds = %172
  %180 = tail call double @llvm.fabs.f64(double %174), !dbg !329
  tail call void @llvm.dbg.value(metadata double %180, metadata !331, metadata !DIExpression()), !dbg !338
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !337, metadata !DIExpression()), !dbg !338
  %181 = fcmp ogt double %180, 1.000000e+00, !dbg !340
  %182 = select i1 %181, double %180, double 1.000000e+00, !dbg !340
  %183 = tail call double @llvm.fabs.f64(double %175), !dbg !341
  %184 = fmul double %183, %182, !dbg !342
  %185 = tail call double @llvm.fabs.f64(double %3), !dbg !343
  %186 = fmul double %185, %184, !dbg !344
  %187 = tail call double @llvm.fabs.f64(double %2), !dbg !345
  %188 = fmul double %187, 2.000000e+00, !dbg !346
  %189 = fcmp olt double %186, %188, !dbg !347
  br i1 %189, label %190, label %192, !dbg !348

190:                                              ; preds = %179
  %191 = tail call fastcc i32 @hyperg_2F1_series(double noundef %0, double noundef %1, double noundef %2, double noundef %3, ptr noundef nonnull %4), !dbg !349, !range !281
  br label %208, !dbg !351

192:                                              ; preds = %179
  %193 = fmul double %175, %175, !dbg !352
  %194 = fmul double %193, %3, !dbg !353
  %195 = fmul double %194, %3, !dbg !354
  %196 = tail call double @llvm.fabs.f64(double %195), !dbg !355
  %197 = fmul double %183, 1.000000e-03, !dbg !356
  %198 = fcmp olt double %196, %197, !dbg !357
  %199 = fcmp olt double %180, 1.000000e+01
  %200 = and i1 %199, %198, !dbg !358
  br i1 %200, label %201, label %207, !dbg !358

201:                                              ; preds = %192
  %202 = fmul double %175, %3, !dbg !359
  %203 = tail call i32 @gsl_sf_hyperg_1F1_e(double noundef %174, double noundef %2, double noundef %202, ptr noundef nonnull %4) #8, !dbg !360
  tail call void @llvm.dbg.value(metadata i32 %203, metadata !136, metadata !DIExpression()), !dbg !361
  %204 = load double, ptr %4, align 8, !dbg !362, !tbaa !183
  %205 = tail call double @llvm.fabs.f64(double %204), !dbg !363
  %206 = fmul double %205, 1.000000e-03, !dbg !364
  store double %206, ptr %36, align 8, !dbg !365, !tbaa !188
  br label %208

207:                                              ; preds = %192
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 773, i32 noundef 24) #8, !dbg !366
  br label %208, !dbg !366

208:                                              ; preds = %177, %190, %201, %207, %170, %168, %163, %159, %155, %152, %143, %127, %101, %92, %86
  %209 = phi i32 [ 1, %92 ], [ %132, %127 ], [ %144, %143 ], [ %153, %152 ], [ %156, %155 ], [ %160, %159 ], [ %164, %163 ], [ %169, %168 ], [ %171, %170 ], [ 1, %101 ], [ %87, %86 ], [ %178, %177 ], [ %191, %190 ], [ %203, %201 ], [ 24, %207 ], !dbg !147
  ret i32 %209, !dbg !368
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #2

declare !dbg !369 i32 @gsl_sf_lngamma_sgn_e(double noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !374 i32 @gsl_sf_lngamma_e(double noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !377 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !382 i32 @gsl_sf_exp_err_e(double noundef, double noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @hyperg_2F1_series(double noundef %0, double noundef %1, double noundef %2, double noundef %3, ptr nocapture noundef %4) unnamed_addr #0 !dbg !384 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !388, metadata !DIExpression()), !dbg !401
  tail call void @llvm.dbg.value(metadata double %1, metadata !389, metadata !DIExpression()), !dbg !401
  tail call void @llvm.dbg.value(metadata double %2, metadata !390, metadata !DIExpression()), !dbg !401
  tail call void @llvm.dbg.value(metadata double %3, metadata !391, metadata !DIExpression()), !dbg !401
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !392, metadata !DIExpression()), !dbg !401
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !393, metadata !DIExpression()), !dbg !401
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !394, metadata !DIExpression()), !dbg !401
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !395, metadata !DIExpression()), !dbg !401
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !396, metadata !DIExpression()), !dbg !401
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !397, metadata !DIExpression()), !dbg !401
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !399, metadata !DIExpression()), !dbg !401
  tail call void @llvm.dbg.value(metadata i32 0, metadata !400, metadata !DIExpression()), !dbg !401
  %6 = tail call double @llvm.fabs.f64(double %2), !dbg !402
  %7 = fcmp olt double %6, 0x3CB0000000000000, !dbg !404
  br i1 %7, label %8, label %10, !dbg !405

8:                                                ; preds = %5
  store double 0.000000e+00, ptr %4, align 8, !dbg !406, !tbaa !183
  %9 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !408
  store double 1.000000e+00, ptr %9, align 8, !dbg !409, !tbaa !188
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 57, i32 noundef 1) #8, !dbg !410
  br label %96, !dbg !410

10:                                               ; preds = %5, %69
  %11 = phi double [ %57, %69 ], [ 1.000000e+00, %5 ], !dbg !401
  %12 = phi double [ %58, %69 ], [ 0.000000e+00, %5 ], !dbg !412
  %13 = phi double [ %59, %69 ], [ 1.000000e+00, %5 ], !dbg !401
  %14 = phi double [ %60, %69 ], [ 0.000000e+00, %5 ], !dbg !413
  %15 = phi double [ %45, %69 ], [ 1.000000e+00, %5 ], !dbg !401
  %16 = phi double [ %42, %69 ], [ 0.000000e+00, %5 ], !dbg !401
  %17 = phi i32 [ %18, %69 ], [ 0, %5 ], !dbg !401
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !400, metadata !DIExpression()), !dbg !401
  tail call void @llvm.dbg.value(metadata double %16, metadata !399, metadata !DIExpression()), !dbg !401
  tail call void @llvm.dbg.value(metadata double %15, metadata !397, metadata !DIExpression()), !dbg !401
  tail call void @llvm.dbg.value(metadata double %14, metadata !396, metadata !DIExpression()), !dbg !401
  tail call void @llvm.dbg.value(metadata double %13, metadata !395, metadata !DIExpression()), !dbg !401
  tail call void @llvm.dbg.value(metadata double %12, metadata !394, metadata !DIExpression()), !dbg !401
  tail call void @llvm.dbg.value(metadata double %11, metadata !393, metadata !DIExpression()), !dbg !401
  %18 = add nuw nsw i32 %17, 1, !dbg !414
  tail call void @llvm.dbg.value(metadata i32 %18, metadata !400, metadata !DIExpression()), !dbg !401
  %19 = icmp eq i32 %17, 30000, !dbg !417
  br i1 %19, label %20, label %36, !dbg !418

20:                                               ; preds = %10
  %21 = fsub double %11, %12, !dbg !419
  store double %21, ptr %4, align 8, !dbg !421, !tbaa !183
  %22 = fadd double %13, %14, !dbg !422
  %23 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !423
  %24 = fadd double %11, %12, !dbg !424
  %25 = fmul double %24, 0x3CC0000000000000, !dbg !425
  %26 = fadd double %25, %22, !dbg !426
  store double %26, ptr %23, align 8, !dbg !426, !tbaa !188
  %27 = tail call double @sqrt(double noundef %16) #8, !dbg !427
  %28 = fmul double %27, 2.000000e+00, !dbg !428
  %29 = fadd double %28, 1.000000e+00, !dbg !429
  %30 = fmul double %29, 0x3CC0000000000000, !dbg !430
  %31 = load double, ptr %4, align 8, !dbg !431, !tbaa !183
  %32 = tail call double @llvm.fabs.f64(double %31), !dbg !432
  %33 = fmul double %32, %30, !dbg !433
  %34 = load double, ptr %23, align 8, !dbg !434, !tbaa !188
  %35 = fadd double %34, %33, !dbg !434
  store double %35, ptr %23, align 8, !dbg !434, !tbaa !188
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 66, i32 noundef 11) #8, !dbg !435
  br label %96, !dbg !435

36:                                               ; preds = %10
  tail call void @llvm.dbg.value(metadata double %15, metadata !398, metadata !DIExpression()), !dbg !401
  %37 = fadd double %16, %0, !dbg !437
  %38 = fadd double %16, %1, !dbg !438
  %39 = fmul double %37, %38, !dbg !439
  %40 = fmul double %39, %3, !dbg !440
  %41 = fadd double %16, %2, !dbg !441
  %42 = fadd double %16, 1.000000e+00, !dbg !442
  %43 = fmul double %41, %42, !dbg !443
  %44 = fdiv double %40, %43, !dbg !444
  %45 = fmul double %15, %44, !dbg !445
  tail call void @llvm.dbg.value(metadata double %45, metadata !397, metadata !DIExpression()), !dbg !401
  %46 = fcmp ogt double %45, 0.000000e+00, !dbg !446
  br i1 %46, label %47, label %49, !dbg !448

47:                                               ; preds = %36
  tail call void @llvm.dbg.value(metadata double %45, metadata !395, metadata !DIExpression()), !dbg !401
  %48 = fadd double %11, %45, !dbg !449
  tail call void @llvm.dbg.value(metadata double %48, metadata !393, metadata !DIExpression()), !dbg !401
  br label %56, !dbg !451

49:                                               ; preds = %36
  %50 = fcmp oeq double %45, 0.000000e+00, !dbg !452
  br i1 %50, label %51, label %53, !dbg !454

51:                                               ; preds = %49
  %52 = fsub double %11, %12, !dbg !455
  br label %77, !dbg !454

53:                                               ; preds = %49
  %54 = fneg double %45, !dbg !456
  tail call void @llvm.dbg.value(metadata double %54, metadata !396, metadata !DIExpression()), !dbg !401
  %55 = fsub double %12, %45, !dbg !458
  tail call void @llvm.dbg.value(metadata double %55, metadata !394, metadata !DIExpression()), !dbg !401
  br label %56

56:                                               ; preds = %53, %47
  %57 = phi double [ %48, %47 ], [ %11, %53 ], !dbg !401
  %58 = phi double [ %12, %47 ], [ %55, %53 ], !dbg !401
  %59 = phi double [ %45, %47 ], [ %13, %53 ], !dbg !401
  %60 = phi double [ %14, %47 ], [ %54, %53 ], !dbg !401
  tail call void @llvm.dbg.value(metadata double %60, metadata !396, metadata !DIExpression()), !dbg !401
  tail call void @llvm.dbg.value(metadata double %59, metadata !395, metadata !DIExpression()), !dbg !401
  tail call void @llvm.dbg.value(metadata double %58, metadata !394, metadata !DIExpression()), !dbg !401
  tail call void @llvm.dbg.value(metadata double %57, metadata !393, metadata !DIExpression()), !dbg !401
  %61 = fsub double %57, %58, !dbg !459
  %62 = fdiv double %15, %61, !dbg !461
  %63 = tail call double @llvm.fabs.f64(double %62), !dbg !462
  %64 = fcmp olt double %63, 0x3CB0000000000000, !dbg !463
  br i1 %64, label %65, label %69, !dbg !464

65:                                               ; preds = %56
  %66 = fdiv double %45, %61, !dbg !465
  %67 = tail call double @llvm.fabs.f64(double %66), !dbg !466
  %68 = fcmp olt double %67, 0x3CB0000000000000, !dbg !467
  br i1 %68, label %74, label %69, !dbg !468

69:                                               ; preds = %65, %56
  tail call void @llvm.dbg.value(metadata double %42, metadata !399, metadata !DIExpression()), !dbg !401
  %70 = fadd double %59, %60, !dbg !469
  %71 = fdiv double %70, %61, !dbg !470
  %72 = tail call double @llvm.fabs.f64(double %71), !dbg !471
  %73 = fcmp ogt double %72, 0x3CB0000000000000, !dbg !472
  br i1 %73, label %10, label %74, !dbg !473, !llvm.loop !474

74:                                               ; preds = %69, %65
  %75 = phi double [ %42, %69 ], [ %16, %65 ]
  %76 = fadd double %59, %60, !dbg !455
  br label %77, !dbg !455

77:                                               ; preds = %74, %51
  %78 = phi double [ %61, %74 ], [ %52, %51 ], !dbg !455
  %79 = phi double [ %57, %74 ], [ %11, %51 ], !dbg !401
  %80 = phi double [ %58, %74 ], [ %12, %51 ], !dbg !412
  %81 = phi double [ %75, %74 ], [ %16, %51 ], !dbg !401
  %82 = phi double [ %76, %74 ], [ 0.000000e+00, %51 ], !dbg !478
  tail call void @llvm.dbg.value(metadata double %81, metadata !399, metadata !DIExpression()), !dbg !401
  tail call void @llvm.dbg.value(metadata double poison, metadata !396, metadata !DIExpression()), !dbg !401
  tail call void @llvm.dbg.value(metadata double poison, metadata !395, metadata !DIExpression()), !dbg !401
  tail call void @llvm.dbg.value(metadata double %80, metadata !394, metadata !DIExpression()), !dbg !401
  tail call void @llvm.dbg.value(metadata double %79, metadata !393, metadata !DIExpression()), !dbg !401
  store double %78, ptr %4, align 8, !dbg !479, !tbaa !183
  %83 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !480
  %84 = fadd double %79, %80, !dbg !481
  %85 = fmul double %84, 0x3CC0000000000000, !dbg !482
  %86 = fadd double %85, %82, !dbg !483
  store double %86, ptr %83, align 8, !dbg !483, !tbaa !188
  %87 = tail call double @sqrt(double noundef %81) #8, !dbg !484
  %88 = fmul double %87, 2.000000e+00, !dbg !485
  %89 = fadd double %88, 1.000000e+00, !dbg !486
  %90 = fmul double %89, 0x3CC0000000000000, !dbg !487
  %91 = load double, ptr %4, align 8, !dbg !488, !tbaa !183
  %92 = tail call double @llvm.fabs.f64(double %91), !dbg !489
  %93 = fmul double %92, %90, !dbg !490
  %94 = load double, ptr %83, align 8, !dbg !491, !tbaa !188
  %95 = fadd double %94, %93, !dbg !491
  store double %95, ptr %83, align 8, !dbg !491, !tbaa !188
  br label %96, !dbg !492

96:                                               ; preds = %77, %20, %8
  %97 = phi i32 [ 1, %8 ], [ 11, %20 ], [ 0, %77 ], !dbg !401
  ret i32 %97, !dbg !493
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define internal fastcc i32 @hyperg_2F1_luke(double noundef %0, double noundef %1, double noundef %2, double noundef %3, ptr nocapture noundef writeonly %4) unnamed_addr #4 !dbg !494 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !496, metadata !DIExpression()), !dbg !536
  tail call void @llvm.dbg.value(metadata double %1, metadata !497, metadata !DIExpression()), !dbg !536
  tail call void @llvm.dbg.value(metadata double %2, metadata !498, metadata !DIExpression()), !dbg !536
  tail call void @llvm.dbg.value(metadata double %3, metadata !499, metadata !DIExpression()), !dbg !536
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !500, metadata !DIExpression()), !dbg !536
  tail call void @llvm.dbg.value(metadata double 1.000000e+50, metadata !502, metadata !DIExpression()), !dbg !536
  tail call void @llvm.dbg.value(metadata i32 20000, metadata !503, metadata !DIExpression()), !dbg !536
  tail call void @llvm.dbg.value(metadata i32 3, metadata !504, metadata !DIExpression()), !dbg !536
  %6 = fneg double %3, !dbg !537
  tail call void @llvm.dbg.value(metadata double %6, metadata !505, metadata !DIExpression()), !dbg !536
  %7 = fmul double %3, %3, !dbg !538
  %8 = fmul double %7, %6, !dbg !539
  tail call void @llvm.dbg.value(metadata double %8, metadata !506, metadata !DIExpression()), !dbg !536
  %9 = fmul double %0, %1, !dbg !540
  %10 = fdiv double %9, %2, !dbg !541
  tail call void @llvm.dbg.value(metadata double %10, metadata !507, metadata !DIExpression()), !dbg !536
  %11 = fadd double %0, 1.000000e+00, !dbg !542
  %12 = fadd double %1, 1.000000e+00, !dbg !543
  %13 = fmul double %11, %12, !dbg !544
  %14 = fmul double %2, 2.000000e+00, !dbg !545
  %15 = fdiv double %13, %14, !dbg !546
  tail call void @llvm.dbg.value(metadata double %15, metadata !508, metadata !DIExpression()), !dbg !536
  %16 = fadd double %0, 2.000000e+00, !dbg !547
  %17 = fadd double %1, 2.000000e+00, !dbg !548
  %18 = fmul double %16, %17, !dbg !549
  %19 = fadd double %2, 1.000000e+00, !dbg !550
  %20 = fmul double %19, 2.000000e+00, !dbg !551
  %21 = fdiv double %18, %20, !dbg !552
  tail call void @llvm.dbg.value(metadata double %21, metadata !509, metadata !DIExpression()), !dbg !536
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !510, metadata !DIExpression()), !dbg !536
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !512, metadata !DIExpression()), !dbg !536
  %22 = fmul double %15, %3, !dbg !553
  %23 = fsub double 1.000000e+00, %22, !dbg !553
  tail call void @llvm.dbg.value(metadata double %23, metadata !513, metadata !DIExpression()), !dbg !536
  %24 = fmul double %21, %6, !dbg !554
  %25 = fdiv double %15, 3.000000e+00, !dbg !555
  %26 = fmul double %25, %3, !dbg !556
  %27 = fsub double 1.000000e+00, %26, !dbg !556
  %28 = fmul double %24, %27, !dbg !557
  %29 = fadd double %28, 1.000000e+00, !dbg !558
  tail call void @llvm.dbg.value(metadata double %29, metadata !514, metadata !DIExpression()), !dbg !536
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !515, metadata !DIExpression()), !dbg !536
  %30 = fmul double %10, %3, !dbg !559
  %31 = fadd double %30, %23, !dbg !559
  tail call void @llvm.dbg.value(metadata double %31, metadata !516, metadata !DIExpression()), !dbg !536
  %32 = fadd double %24, 1.000000e+00, !dbg !560
  %33 = fmul double %10, %32, !dbg !561
  %34 = fmul double %33, %3, !dbg !562
  %35 = fadd double %29, %34, !dbg !562
  %36 = fmul double %10, %15, !dbg !563
  %37 = fdiv double %2, %19, !dbg !564
  %38 = fmul double %37, %36, !dbg !565
  %39 = fmul double %38, %6, !dbg !566
  %40 = fmul double %39, %3, !dbg !567
  %41 = fsub double %35, %40, !dbg !567
  tail call void @llvm.dbg.value(metadata double %41, metadata !517, metadata !DIExpression()), !dbg !536
  %42 = fadd double %0, %1
  %43 = fadd double %42, -6.000000e+00
  %44 = fmul double %42, 2.000000e+00
  %45 = fadd double %42, 6.000000e+00
  br label %46, !dbg !568

46:                                               ; preds = %167, %5
  %47 = phi double [ %41, %5 ], [ %172, %167 ], !dbg !569
  %48 = phi double [ %31, %5 ], [ %168, %167 ], !dbg !570
  %49 = phi double [ 1.000000e+00, %5 ], [ %169, %167 ], !dbg !571
  %50 = phi double [ %29, %5 ], [ %173, %167 ], !dbg !572
  %51 = phi double [ %23, %5 ], [ %170, %167 ], !dbg !573
  %52 = phi double [ 1.000000e+00, %5 ], [ %171, %167 ], !dbg !574
  %53 = phi double [ 1.000000e+00, %5 ], [ %136, %167 ], !dbg !536
  %54 = phi i32 [ 3, %5 ], [ %174, %167 ], !dbg !575
  tail call void @llvm.dbg.value(metadata i32 %54, metadata !504, metadata !DIExpression()), !dbg !536
  tail call void @llvm.dbg.value(metadata double %53, metadata !510, metadata !DIExpression()), !dbg !536
  tail call void @llvm.dbg.value(metadata double %52, metadata !512, metadata !DIExpression()), !dbg !536
  tail call void @llvm.dbg.value(metadata double %51, metadata !513, metadata !DIExpression()), !dbg !536
  tail call void @llvm.dbg.value(metadata double %50, metadata !514, metadata !DIExpression()), !dbg !536
  tail call void @llvm.dbg.value(metadata double %49, metadata !515, metadata !DIExpression()), !dbg !536
  tail call void @llvm.dbg.value(metadata double %48, metadata !516, metadata !DIExpression()), !dbg !536
  tail call void @llvm.dbg.value(metadata double %47, metadata !517, metadata !DIExpression()), !dbg !536
  %55 = sitofp i32 %54 to double, !dbg !576
  %56 = fadd double %55, %0, !dbg !577
  %57 = fadd double %56, -1.000000e+00, !dbg !578
  tail call void @llvm.dbg.value(metadata double %57, metadata !518, metadata !DIExpression()), !dbg !579
  %58 = fadd double %55, %1, !dbg !580
  %59 = fadd double %58, -1.000000e+00, !dbg !581
  tail call void @llvm.dbg.value(metadata double %59, metadata !520, metadata !DIExpression()), !dbg !579
  %60 = fadd double %55, %2, !dbg !582
  %61 = fadd double %60, -1.000000e+00, !dbg !583
  tail call void @llvm.dbg.value(metadata double %61, metadata !521, metadata !DIExpression()), !dbg !579
  %62 = fadd double %56, -2.000000e+00, !dbg !584
  tail call void @llvm.dbg.value(metadata double %62, metadata !522, metadata !DIExpression()), !dbg !579
  %63 = fadd double %58, -2.000000e+00, !dbg !585
  tail call void @llvm.dbg.value(metadata double %63, metadata !523, metadata !DIExpression()), !dbg !579
  %64 = fadd double %60, -2.000000e+00, !dbg !586
  tail call void @llvm.dbg.value(metadata double %64, metadata !524, metadata !DIExpression()), !dbg !579
  %65 = shl nuw nsw i32 %54, 1, !dbg !587
  %66 = add nsw i32 %65, -1, !dbg !588
  %67 = sitofp i32 %66 to double, !dbg !589
  tail call void @llvm.dbg.value(metadata double %67, metadata !525, metadata !DIExpression()), !dbg !579
  %68 = add nsw i32 %65, -3, !dbg !590
  %69 = sitofp i32 %68 to double, !dbg !591
  tail call void @llvm.dbg.value(metadata double %69, metadata !526, metadata !DIExpression()), !dbg !579
  %70 = add nsw i32 %65, -5, !dbg !592
  %71 = sitofp i32 %70 to double, !dbg !593
  tail call void @llvm.dbg.value(metadata double %71, metadata !527, metadata !DIExpression()), !dbg !579
  %72 = mul nsw i32 %54, %54, !dbg !594
  %73 = sitofp i32 %72 to double, !dbg !595
  tail call void @llvm.dbg.value(metadata double %73, metadata !528, metadata !DIExpression()), !dbg !579
  %74 = fmul double %73, 3.000000e+00, !dbg !596
  %75 = fmul double %43, %55, !dbg !597
  %76 = fadd double %75, %74, !dbg !598
  %77 = fadd double %76, 2.000000e+00, !dbg !599
  %78 = fsub double %77, %9, !dbg !600
  %79 = fsub double %78, %44, !dbg !601
  %80 = fmul double %69, 2.000000e+00, !dbg !602
  %81 = fmul double %61, %80, !dbg !603
  %82 = fdiv double %79, %81, !dbg !604
  tail call void @llvm.dbg.value(metadata double %82, metadata !529, metadata !DIExpression()), !dbg !579
  %83 = fmul double %45, %55, !dbg !605
  %84 = fsub double %74, %83, !dbg !606
  %85 = fadd double %84, 2.000000e+00, !dbg !607
  %86 = fsub double %85, %9, !dbg !608
  %87 = fneg double %86, !dbg !609
  %88 = fmul double %57, %87, !dbg !610
  %89 = fmul double %59, %88, !dbg !611
  %90 = fmul double %67, 4.000000e+00, !dbg !612
  %91 = fmul double %90, %69, !dbg !613
  %92 = fmul double %64, %91, !dbg !614
  %93 = fmul double %61, %92, !dbg !615
  %94 = fdiv double %89, %93, !dbg !616
  tail call void @llvm.dbg.value(metadata double %94, metadata !530, metadata !DIExpression()), !dbg !579
  %95 = fmul double %62, %57, !dbg !617
  %96 = fmul double %63, %95, !dbg !618
  %97 = fmul double %59, %96, !dbg !619
  %98 = fsub double %55, %0, !dbg !620
  %99 = fadd double %98, -2.000000e+00, !dbg !621
  %100 = fmul double %99, %97, !dbg !622
  %101 = fsub double %55, %1, !dbg !623
  %102 = fadd double %101, -2.000000e+00, !dbg !624
  %103 = fmul double %102, %100, !dbg !625
  %104 = fmul double %69, 8.000000e+00, !dbg !626
  %105 = fmul double %104, %69, !dbg !627
  %106 = fmul double %105, %71, !dbg !628
  %107 = fadd double %60, -3.000000e+00, !dbg !629
  %108 = fmul double %107, %106, !dbg !630
  %109 = fmul double %64, %108, !dbg !631
  %110 = fmul double %61, %109, !dbg !632
  %111 = fdiv double %103, %110, !dbg !633
  tail call void @llvm.dbg.value(metadata double %111, metadata !531, metadata !DIExpression()), !dbg !579
  %112 = fneg double %57, !dbg !634
  %113 = fmul double %59, %112, !dbg !635
  %114 = fsub double %55, %2, !dbg !636
  %115 = fadd double %114, -1.000000e+00, !dbg !637
  %116 = fmul double %115, %113, !dbg !638
  %117 = fmul double %64, %80, !dbg !639
  %118 = fmul double %61, %117, !dbg !640
  %119 = fdiv double %116, %118, !dbg !641
  tail call void @llvm.dbg.value(metadata double %119, metadata !532, metadata !DIExpression()), !dbg !579
  %120 = fmul double %82, %3, !dbg !642
  %121 = fsub double 1.000000e+00, %120, !dbg !642
  %122 = fmul double %47, %121, !dbg !643
  %123 = fmul double %94, %3, !dbg !644
  %124 = fsub double %119, %123, !dbg !644
  %125 = fmul double %124, %6, !dbg !645
  %126 = fmul double %48, %125, !dbg !646
  %127 = fadd double %122, %126, !dbg !647
  %128 = fmul double %8, %111, !dbg !648
  %129 = fmul double %49, %128, !dbg !649
  %130 = fadd double %129, %127, !dbg !650
  tail call void @llvm.dbg.value(metadata double %130, metadata !533, metadata !DIExpression()), !dbg !579
  %131 = fmul double %50, %121, !dbg !651
  %132 = fmul double %51, %125, !dbg !652
  %133 = fadd double %131, %132, !dbg !653
  %134 = fmul double %52, %128, !dbg !654
  %135 = fadd double %134, %133, !dbg !655
  tail call void @llvm.dbg.value(metadata double %135, metadata !534, metadata !DIExpression()), !dbg !579
  %136 = fdiv double %130, %135, !dbg !656
  tail call void @llvm.dbg.value(metadata double %136, metadata !535, metadata !DIExpression()), !dbg !579
  %137 = fsub double %53, %136, !dbg !657
  %138 = fdiv double %137, %53, !dbg !658
  %139 = tail call double @llvm.fabs.f64(double %138), !dbg !659
  tail call void @llvm.dbg.value(metadata double %139, metadata !511, metadata !DIExpression()), !dbg !536
  tail call void @llvm.dbg.value(metadata double %136, metadata !510, metadata !DIExpression()), !dbg !536
  %140 = fcmp olt double %139, 0x3CB0000000000000, !dbg !660
  %141 = icmp ugt i32 %54, 20000
  %142 = select i1 %140, i1 true, i1 %141, !dbg !662
  br i1 %142, label %175, label %143, !dbg !662

143:                                              ; preds = %46
  %144 = tail call double @llvm.fabs.f64(double %130), !dbg !663
  %145 = fcmp ogt double %144, 1.000000e+50, !dbg !665
  br i1 %145, label %149, label %146, !dbg !666

146:                                              ; preds = %143
  %147 = tail call double @llvm.fabs.f64(double %135), !dbg !667
  %148 = fcmp ogt double %147, 1.000000e+50, !dbg !668
  br i1 %148, label %149, label %156, !dbg !669

149:                                              ; preds = %146, %143
  %150 = fdiv double %130, 1.000000e+50, !dbg !670
  tail call void @llvm.dbg.value(metadata double %150, metadata !533, metadata !DIExpression()), !dbg !579
  %151 = fdiv double %135, 1.000000e+50, !dbg !672
  tail call void @llvm.dbg.value(metadata double %151, metadata !534, metadata !DIExpression()), !dbg !579
  %152 = fdiv double %47, 1.000000e+50, !dbg !673
  tail call void @llvm.dbg.value(metadata double %152, metadata !517, metadata !DIExpression()), !dbg !536
  %153 = fdiv double %50, 1.000000e+50, !dbg !674
  tail call void @llvm.dbg.value(metadata double %153, metadata !514, metadata !DIExpression()), !dbg !536
  %154 = fdiv double %48, 1.000000e+50, !dbg !675
  tail call void @llvm.dbg.value(metadata double %154, metadata !516, metadata !DIExpression()), !dbg !536
  %155 = fdiv double %51, 1.000000e+50, !dbg !676
  tail call void @llvm.dbg.value(metadata double %155, metadata !513, metadata !DIExpression()), !dbg !536
  tail call void @llvm.dbg.value(metadata double poison, metadata !515, metadata !DIExpression()), !dbg !536
  tail call void @llvm.dbg.value(metadata double poison, metadata !512, metadata !DIExpression()), !dbg !536
  br label %167, !dbg !677

156:                                              ; preds = %146
  %157 = fcmp olt double %144, 0x358DEE7A4AD4B81E, !dbg !678
  %158 = fcmp olt double %147, 0x358DEE7A4AD4B81E
  %159 = or i1 %157, %158, !dbg !680
  br i1 %159, label %160, label %167, !dbg !680

160:                                              ; preds = %156
  %161 = fmul double %130, 1.000000e+50, !dbg !681
  tail call void @llvm.dbg.value(metadata double %161, metadata !533, metadata !DIExpression()), !dbg !579
  %162 = fmul double %135, 1.000000e+50, !dbg !683
  tail call void @llvm.dbg.value(metadata double %162, metadata !534, metadata !DIExpression()), !dbg !579
  %163 = fmul double %47, 1.000000e+50, !dbg !684
  tail call void @llvm.dbg.value(metadata double %163, metadata !517, metadata !DIExpression()), !dbg !536
  %164 = fmul double %50, 1.000000e+50, !dbg !685
  tail call void @llvm.dbg.value(metadata double %164, metadata !514, metadata !DIExpression()), !dbg !536
  %165 = fmul double %48, 1.000000e+50, !dbg !686
  tail call void @llvm.dbg.value(metadata double %165, metadata !516, metadata !DIExpression()), !dbg !536
  %166 = fmul double %51, 1.000000e+50, !dbg !687
  tail call void @llvm.dbg.value(metadata double %166, metadata !513, metadata !DIExpression()), !dbg !536
  tail call void @llvm.dbg.value(metadata double poison, metadata !515, metadata !DIExpression()), !dbg !536
  tail call void @llvm.dbg.value(metadata double poison, metadata !512, metadata !DIExpression()), !dbg !536
  br label %167, !dbg !688

167:                                              ; preds = %149, %160, %156
  %168 = phi double [ %152, %149 ], [ %163, %160 ], [ %47, %156 ], !dbg !536
  %169 = phi double [ %154, %149 ], [ %165, %160 ], [ %48, %156 ], !dbg !536
  %170 = phi double [ %153, %149 ], [ %164, %160 ], [ %50, %156 ], !dbg !536
  %171 = phi double [ %155, %149 ], [ %166, %160 ], [ %51, %156 ], !dbg !536
  %172 = phi double [ %150, %149 ], [ %161, %160 ], [ %130, %156 ], !dbg !579
  %173 = phi double [ %151, %149 ], [ %162, %160 ], [ %135, %156 ], !dbg !579
  tail call void @llvm.dbg.value(metadata double %173, metadata !534, metadata !DIExpression()), !dbg !579
  tail call void @llvm.dbg.value(metadata double %172, metadata !533, metadata !DIExpression()), !dbg !579
  tail call void @llvm.dbg.value(metadata double %171, metadata !513, metadata !DIExpression()), !dbg !536
  tail call void @llvm.dbg.value(metadata double %170, metadata !514, metadata !DIExpression()), !dbg !536
  tail call void @llvm.dbg.value(metadata double %169, metadata !516, metadata !DIExpression()), !dbg !536
  tail call void @llvm.dbg.value(metadata double %168, metadata !517, metadata !DIExpression()), !dbg !536
  %174 = add nuw nsw i32 %54, 1, !dbg !689
  tail call void @llvm.dbg.value(metadata i32 %174, metadata !504, metadata !DIExpression()), !dbg !536
  tail call void @llvm.dbg.value(metadata double %171, metadata !512, metadata !DIExpression()), !dbg !536
  tail call void @llvm.dbg.value(metadata double %170, metadata !513, metadata !DIExpression()), !dbg !536
  tail call void @llvm.dbg.value(metadata double %173, metadata !514, metadata !DIExpression()), !dbg !536
  tail call void @llvm.dbg.value(metadata double %169, metadata !515, metadata !DIExpression()), !dbg !536
  tail call void @llvm.dbg.value(metadata double %168, metadata !516, metadata !DIExpression()), !dbg !536
  tail call void @llvm.dbg.value(metadata double %172, metadata !517, metadata !DIExpression()), !dbg !536
  br label %46

175:                                              ; preds = %46
  tail call void @llvm.dbg.value(metadata i32 %54, metadata !504, metadata !DIExpression()), !dbg !536
  tail call void @llvm.dbg.value(metadata double poison, metadata !512, metadata !DIExpression()), !dbg !536
  tail call void @llvm.dbg.value(metadata double poison, metadata !513, metadata !DIExpression()), !dbg !536
  tail call void @llvm.dbg.value(metadata double poison, metadata !514, metadata !DIExpression()), !dbg !536
  tail call void @llvm.dbg.value(metadata double poison, metadata !515, metadata !DIExpression()), !dbg !536
  tail call void @llvm.dbg.value(metadata double poison, metadata !516, metadata !DIExpression()), !dbg !536
  tail call void @llvm.dbg.value(metadata double poison, metadata !517, metadata !DIExpression()), !dbg !536
  store double %136, ptr %4, align 8, !dbg !690, !tbaa !183
  %176 = fmul double %136, %139, !dbg !691
  %177 = tail call double @llvm.fabs.f64(double %176), !dbg !692
  %178 = fmul double %177, 2.000000e+00, !dbg !693
  %179 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !694
  %180 = fadd double %55, 1.000000e+00, !dbg !695
  %181 = fmul double %180, 0x3CC0000000000000, !dbg !696
  %182 = tail call double @llvm.fabs.f64(double %136), !dbg !697
  %183 = fmul double %181, %182, !dbg !698
  %184 = fadd double %183, %178, !dbg !699
  %185 = tail call double @llvm.fabs.f64(double %0), !dbg !700
  %186 = tail call double @llvm.fabs.f64(double %1), !dbg !701
  %187 = fadd double %185, %186, !dbg !702
  %188 = fadd double %187, 1.000000e+00, !dbg !703
  %189 = fmul double %188, 8.000000e+00, !dbg !704
  %190 = fmul double %189, %184, !dbg !705
  store double %190, ptr %179, align 8, !dbg !705, !tbaa !188
  %191 = icmp ugt i32 %54, 19999, !dbg !706
  %192 = select i1 %191, i32 11, i32 0, !dbg !707
  tail call void @llvm.dbg.value(metadata i32 %192, metadata !501, metadata !DIExpression()), !dbg !536
  ret i32 %192, !dbg !708
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @hyperg_2F1_reflect(double noundef %0, double noundef %1, double noundef %2, double noundef %3, ptr nocapture noundef writeonly %4) unnamed_addr #0 !dbg !709 {
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !824
  call void @llvm.dbg.assign(metadata i1 undef, metadata !725, metadata !DIExpression(), metadata !824, metadata ptr %6, metadata !DIExpression()), !dbg !825
  %7 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !826
  call void @llvm.dbg.assign(metadata i1 undef, metadata !726, metadata !DIExpression(), metadata !826, metadata ptr %7, metadata !DIExpression()), !dbg !825
  %8 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !827
  call void @llvm.dbg.assign(metadata i1 undef, metadata !729, metadata !DIExpression(), metadata !827, metadata ptr %8, metadata !DIExpression()), !dbg !825
  %9 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !828
  call void @llvm.dbg.assign(metadata i1 undef, metadata !730, metadata !DIExpression(), metadata !828, metadata ptr %9, metadata !DIExpression()), !dbg !825
  %10 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !829
  call void @llvm.dbg.assign(metadata i1 undef, metadata !731, metadata !DIExpression(), metadata !829, metadata ptr %10, metadata !DIExpression()), !dbg !825
  %11 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !830
  call void @llvm.dbg.assign(metadata i1 undef, metadata !735, metadata !DIExpression(), metadata !830, metadata ptr %11, metadata !DIExpression()), !dbg !831
  %12 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !832
  call void @llvm.dbg.assign(metadata i1 undef, metadata !738, metadata !DIExpression(), metadata !832, metadata ptr %12, metadata !DIExpression()), !dbg !831
  %13 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !833
  call void @llvm.dbg.assign(metadata i1 undef, metadata !739, metadata !DIExpression(), metadata !833, metadata ptr %13, metadata !DIExpression()), !dbg !831
  %14 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !834
  call void @llvm.dbg.assign(metadata i1 undef, metadata !759, metadata !DIExpression(), metadata !834, metadata ptr %14, metadata !DIExpression()), !dbg !835
  %15 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !836
  call void @llvm.dbg.assign(metadata i1 undef, metadata !760, metadata !DIExpression(), metadata !836, metadata ptr %15, metadata !DIExpression()), !dbg !835
  %16 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !837
  call void @llvm.dbg.assign(metadata i1 undef, metadata !761, metadata !DIExpression(), metadata !837, metadata ptr %16, metadata !DIExpression()), !dbg !835
  %17 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !838
  call void @llvm.dbg.assign(metadata i1 undef, metadata !781, metadata !DIExpression(), metadata !838, metadata ptr %17, metadata !DIExpression()), !dbg !839
  %18 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !840
  call void @llvm.dbg.assign(metadata i1 undef, metadata !783, metadata !DIExpression(), metadata !840, metadata ptr %18, metadata !DIExpression()), !dbg !839
  %19 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !841
  call void @llvm.dbg.assign(metadata i1 undef, metadata !786, metadata !DIExpression(), metadata !841, metadata ptr %19, metadata !DIExpression()), !dbg !839
  %20 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !842
  call void @llvm.dbg.assign(metadata i1 undef, metadata !787, metadata !DIExpression(), metadata !842, metadata ptr %20, metadata !DIExpression()), !dbg !839
  %21 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !843
  call void @llvm.dbg.assign(metadata i1 undef, metadata !790, metadata !DIExpression(), metadata !843, metadata ptr %21, metadata !DIExpression()), !dbg !839
  %22 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !844
  call void @llvm.dbg.assign(metadata i1 undef, metadata !791, metadata !DIExpression(), metadata !844, metadata ptr %22, metadata !DIExpression()), !dbg !839
  %23 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !845
  call void @llvm.dbg.assign(metadata i1 undef, metadata !792, metadata !DIExpression(), metadata !845, metadata ptr %23, metadata !DIExpression()), !dbg !839
  %24 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !846
  call void @llvm.dbg.assign(metadata i1 undef, metadata !793, metadata !DIExpression(), metadata !846, metadata ptr %24, metadata !DIExpression()), !dbg !839
  %25 = alloca double, align 8, !DIAssignID !847
  call void @llvm.dbg.assign(metadata i1 undef, metadata !794, metadata !DIExpression(), metadata !847, metadata ptr %25, metadata !DIExpression()), !dbg !839
  %26 = alloca double, align 8, !DIAssignID !848
  call void @llvm.dbg.assign(metadata i1 undef, metadata !795, metadata !DIExpression(), metadata !848, metadata ptr %26, metadata !DIExpression()), !dbg !839
  %27 = alloca double, align 8, !DIAssignID !849
  call void @llvm.dbg.assign(metadata i1 undef, metadata !796, metadata !DIExpression(), metadata !849, metadata ptr %27, metadata !DIExpression()), !dbg !839
  %28 = alloca double, align 8, !DIAssignID !850
  call void @llvm.dbg.assign(metadata i1 undef, metadata !797, metadata !DIExpression(), metadata !850, metadata ptr %28, metadata !DIExpression()), !dbg !839
  %29 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !851
  call void @llvm.dbg.assign(metadata i1 undef, metadata !804, metadata !DIExpression(), metadata !851, metadata ptr %29, metadata !DIExpression()), !dbg !839
  %30 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !852
  call void @llvm.dbg.assign(metadata i1 undef, metadata !805, metadata !DIExpression(), metadata !852, metadata ptr %30, metadata !DIExpression()), !dbg !839
  %31 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !853
  call void @llvm.dbg.assign(metadata i1 undef, metadata !806, metadata !DIExpression(), metadata !853, metadata ptr %31, metadata !DIExpression()), !dbg !839
  %32 = alloca double, align 8, !DIAssignID !854
  call void @llvm.dbg.assign(metadata i1 undef, metadata !807, metadata !DIExpression(), metadata !854, metadata ptr %32, metadata !DIExpression()), !dbg !839
  %33 = alloca double, align 8, !DIAssignID !855
  call void @llvm.dbg.assign(metadata i1 undef, metadata !808, metadata !DIExpression(), metadata !855, metadata ptr %33, metadata !DIExpression()), !dbg !839
  %34 = alloca double, align 8, !DIAssignID !856
  call void @llvm.dbg.assign(metadata i1 undef, metadata !809, metadata !DIExpression(), metadata !856, metadata ptr %34, metadata !DIExpression()), !dbg !839
  tail call void @llvm.dbg.value(metadata double %0, metadata !711, metadata !DIExpression()), !dbg !857
  tail call void @llvm.dbg.value(metadata double %1, metadata !712, metadata !DIExpression()), !dbg !857
  tail call void @llvm.dbg.value(metadata double %2, metadata !713, metadata !DIExpression()), !dbg !857
  tail call void @llvm.dbg.value(metadata double %3, metadata !714, metadata !DIExpression()), !dbg !857
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !715, metadata !DIExpression()), !dbg !857
  %35 = fsub double %2, %0, !dbg !858
  %36 = fsub double %35, %1, !dbg !859
  tail call void @llvm.dbg.value(metadata double %36, metadata !716, metadata !DIExpression()), !dbg !857
  %37 = fadd double %36, 5.000000e-01, !dbg !860
  %38 = tail call double @llvm.floor.f64(double %37), !dbg !861
  %39 = fptosi double %38 to i32, !dbg !861
  tail call void @llvm.dbg.value(metadata i32 %39, metadata !717, metadata !DIExpression()), !dbg !857
  %40 = sitofp i32 %39 to double, !dbg !862
  %41 = fsub double %36, %40, !dbg !863
  %42 = tail call double @llvm.fabs.f64(double %41), !dbg !864
  %43 = fcmp olt double %42, 0x3D4F400000000000, !dbg !865
  tail call void @llvm.dbg.value(metadata i1 %43, metadata !718, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !857
  br i1 %43, label %44, label %261, !dbg !866

44:                                               ; preds = %5
  %45 = fsub double 1.000000e+00, %3, !dbg !867
  %46 = tail call double @log(double noundef %45) #8, !dbg !868
  tail call void @llvm.dbg.value(metadata double %46, metadata !719, metadata !DIExpression()), !dbg !825
  %47 = tail call double @llvm.fabs.f64(double %36), !dbg !869
  tail call void @llvm.dbg.value(metadata double %47, metadata !722, metadata !DIExpression()), !dbg !825
  tail call void @llvm.dbg.value(metadata i32 0, metadata !723, metadata !DIExpression()), !dbg !825
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #8, !dbg !870
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #8, !dbg !871
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #8, !dbg !872
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #8, !dbg !873
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #8, !dbg !874
  %48 = fcmp ult double %36, 0.000000e+00, !dbg !875
  %49 = select i1 %48, double %36, double 0.000000e+00
  %50 = select i1 %48, double 0.000000e+00, double %36
  tail call void @llvm.dbg.value(metadata double %50, metadata !727, metadata !DIExpression()), !dbg !825
  tail call void @llvm.dbg.value(metadata double %49, metadata !728, metadata !DIExpression()), !dbg !825
  %51 = fadd double %49, %0, !dbg !877
  %52 = call i32 @gsl_sf_lngamma_e(double noundef %51, ptr noundef nonnull %9) #8, !dbg !878
  tail call void @llvm.dbg.value(metadata i32 %52, metadata !733, metadata !DIExpression()), !dbg !825
  %53 = fadd double %49, %1, !dbg !879
  %54 = call i32 @gsl_sf_lngamma_e(double noundef %53, ptr noundef nonnull %10) #8, !dbg !880
  tail call void @llvm.dbg.value(metadata i32 %54, metadata !734, metadata !DIExpression()), !dbg !825
  %55 = call i32 @gsl_sf_lngamma_e(double noundef %2, ptr noundef nonnull %8) #8, !dbg !881
  tail call void @llvm.dbg.value(metadata i32 %55, metadata !732, metadata !DIExpression()), !dbg !825
  %56 = fcmp olt double %47, 0x3CB0000000000000, !dbg !882
  br i1 %56, label %57, label %58, !dbg !883

57:                                               ; preds = %44
  call void @llvm.dbg.assign(metadata double 0.000000e+00, metadata !725, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !884, metadata ptr %6, metadata !DIExpression()), !dbg !825
  call void @llvm.dbg.assign(metadata double 0.000000e+00, metadata !725, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64), metadata !884, metadata ptr %6, metadata !DIExpression(DW_OP_plus_uconst, 8)), !dbg !825
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false), !dbg !885, !DIAssignID !884
  br label %125, !dbg !887

58:                                               ; preds = %44
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #8, !dbg !888
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #8, !dbg !889
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #8, !dbg !890
  %59 = call i32 @gsl_sf_lngamma_e(double noundef %47, ptr noundef nonnull %11) #8, !dbg !891
  tail call void @llvm.dbg.value(metadata i32 %59, metadata !740, metadata !DIExpression()), !dbg !831
  %60 = fadd double %50, %0, !dbg !892
  %61 = call i32 @gsl_sf_lngamma_e(double noundef %60, ptr noundef nonnull %12) #8, !dbg !893
  tail call void @llvm.dbg.value(metadata i32 %61, metadata !741, metadata !DIExpression()), !dbg !831
  %62 = fadd double %50, %1, !dbg !894
  %63 = call i32 @gsl_sf_lngamma_e(double noundef %62, ptr noundef nonnull %13) #8, !dbg !895
  tail call void @llvm.dbg.value(metadata i32 %63, metadata !742, metadata !DIExpression()), !dbg !831
  %64 = icmp eq i32 %61, 0, !dbg !896
  %65 = icmp eq i32 %63, 0
  %66 = select i1 %64, i1 %65, i1 false, !dbg !897
  %67 = icmp eq i32 %59, 0
  %68 = select i1 %66, i1 %67, i1 false, !dbg !897
  br i1 %68, label %69, label %123, !dbg !897

69:                                               ; preds = %58
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !746, metadata !DIExpression()), !dbg !898
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !747, metadata !DIExpression()), !dbg !898
  %70 = load double, ptr %11, align 8, !dbg !899, !tbaa !183
  %71 = load double, ptr %8, align 8, !dbg !900, !tbaa !183
  %72 = fadd double %70, %71, !dbg !901
  %73 = fmul double %49, %46, !dbg !902
  %74 = fadd double %73, %72, !dbg !903
  %75 = load double, ptr %12, align 8, !dbg !904, !tbaa !183
  %76 = fsub double %74, %75, !dbg !905
  %77 = load double, ptr %13, align 8, !dbg !906, !tbaa !183
  %78 = fsub double %76, %77, !dbg !907
  tail call void @llvm.dbg.value(metadata double %78, metadata !748, metadata !DIExpression()), !dbg !898
  %79 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %11, i64 0, i32 1, !dbg !908
  %80 = load double, ptr %79, align 8, !dbg !908, !tbaa !188
  %81 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %8, i64 0, i32 1, !dbg !909
  %82 = load double, ptr %81, align 8, !dbg !909, !tbaa !188
  %83 = fadd double %80, %82, !dbg !910
  %84 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %12, i64 0, i32 1, !dbg !911
  %85 = load double, ptr %84, align 8, !dbg !911, !tbaa !188
  %86 = fadd double %83, %85, !dbg !912
  %87 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %13, i64 0, i32 1, !dbg !913
  %88 = load double, ptr %87, align 8, !dbg !913, !tbaa !188
  %89 = fadd double %86, %88, !dbg !914
  %90 = call double @llvm.fabs.f64(double %78), !dbg !915
  %91 = fmul double %90, 0x3CB0000000000000, !dbg !916
  %92 = fadd double %91, %89, !dbg !917
  tail call void @llvm.dbg.value(metadata double %92, metadata !749, metadata !DIExpression()), !dbg !898
  tail call void @llvm.dbg.value(metadata i32 1, metadata !743, metadata !DIExpression()), !dbg !898
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !746, metadata !DIExpression()), !dbg !898
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !747, metadata !DIExpression()), !dbg !898
  %93 = fcmp ogt double %47, 1.000000e+00, !dbg !918
  br i1 %93, label %94, label %115, !dbg !919

94:                                               ; preds = %69
  %95 = fadd double %49, 1.000000e+00
  br label %96, !dbg !919

96:                                               ; preds = %94, %96
  %97 = phi double [ 1.000000e+00, %94 ], [ %113, %96 ]
  %98 = phi i32 [ 1, %94 ], [ %112, %96 ]
  %99 = phi double [ 1.000000e+00, %94 ], [ %111, %96 ]
  %100 = phi double [ 1.000000e+00, %94 ], [ %110, %96 ]
  tail call void @llvm.dbg.value(metadata i32 %98, metadata !743, metadata !DIExpression()), !dbg !898
  tail call void @llvm.dbg.value(metadata double %99, metadata !746, metadata !DIExpression()), !dbg !898
  tail call void @llvm.dbg.value(metadata double %100, metadata !747, metadata !DIExpression()), !dbg !898
  %101 = add nsw i32 %98, -1, !dbg !920
  tail call void @llvm.dbg.value(metadata i32 %101, metadata !751, metadata !DIExpression()), !dbg !921
  %102 = sitofp i32 %101 to double, !dbg !922
  %103 = fadd double %51, %102, !dbg !923
  %104 = fadd double %53, %102, !dbg !924
  %105 = fmul double %103, %104, !dbg !925
  %106 = fadd double %95, %102, !dbg !926
  %107 = fdiv double %105, %106, !dbg !927
  %108 = fdiv double %107, %97, !dbg !928
  %109 = fmul double %45, %108, !dbg !929
  %110 = fmul double %100, %109, !dbg !930
  tail call void @llvm.dbg.value(metadata double %110, metadata !747, metadata !DIExpression()), !dbg !898
  %111 = fadd double %99, %110, !dbg !931
  tail call void @llvm.dbg.value(metadata double %111, metadata !746, metadata !DIExpression()), !dbg !898
  %112 = add nuw nsw i32 %98, 1, !dbg !932
  tail call void @llvm.dbg.value(metadata i32 %112, metadata !743, metadata !DIExpression()), !dbg !898
  %113 = sitofp i32 %112 to double, !dbg !933
  %114 = fcmp ogt double %47, %113, !dbg !918
  br i1 %114, label %96, label %115, !dbg !919, !llvm.loop !934

115:                                              ; preds = %96, %69
  %116 = phi double [ 1.000000e+00, %69 ], [ %111, %96 ], !dbg !898
  %117 = call double @llvm.fabs.f64(double %116), !dbg !936
  %118 = fmul double %117, 0x3CB0000000000000, !dbg !937
  %119 = call i32 @gsl_sf_exp_mult_err_e(double noundef %78, double noundef %92, double noundef %116, double noundef %118, ptr noundef nonnull %6) #8, !dbg !938
  tail call void @llvm.dbg.value(metadata i32 %119, metadata !750, metadata !DIExpression()), !dbg !898
  %120 = icmp eq i32 %119, 16, !dbg !939
  br i1 %120, label %121, label %124, !dbg !941

121:                                              ; preds = %115
  store double 0x7FF0000000000000, ptr %4, align 8, !dbg !942, !tbaa !183
  %122 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !942
  store double 0x7FF0000000000000, ptr %122, align 8, !dbg !942, !tbaa !188
  call void @gsl_error(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 440, i32 noundef 16) #8, !dbg !945
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #8, !dbg !947
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #8, !dbg !947
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #8, !dbg !947
  br label %259

123:                                              ; preds = %58
  call void @llvm.dbg.assign(metadata double 0.000000e+00, metadata !725, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !948, metadata ptr %6, metadata !DIExpression()), !dbg !825
  call void @llvm.dbg.assign(metadata double 0.000000e+00, metadata !725, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64), metadata !948, metadata ptr %6, metadata !DIExpression(DW_OP_plus_uconst, 8)), !dbg !825
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false), !dbg !949, !DIAssignID !948
  br label %124

124:                                              ; preds = %115, %123
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #8, !dbg !947
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #8, !dbg !947
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #8, !dbg !947
  br label %125

125:                                              ; preds = %124, %57
  %126 = icmp eq i32 %52, 0, !dbg !951
  %127 = icmp eq i32 %54, 0
  %128 = select i1 %126, i1 %127, i1 false, !dbg !952
  br i1 %128, label %129, label %237, !dbg !952

129:                                              ; preds = %125
  tail call void @llvm.dbg.value(metadata i32 2000, metadata !755, metadata !DIExpression()), !dbg !835
  tail call void @llvm.dbg.value(metadata double 0xBFE2788CFC6FB619, metadata !758, metadata !DIExpression()), !dbg !835
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %14) #8, !dbg !953
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %15) #8, !dbg !954
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %16) #8, !dbg !955
  %130 = fadd double %47, 1.000000e+00, !dbg !956
  %131 = call i32 @gsl_sf_psi_e(double noundef %130, ptr noundef nonnull %14) #8, !dbg !957
  tail call void @llvm.dbg.value(metadata i32 %131, metadata !762, metadata !DIExpression()), !dbg !835
  %132 = fadd double %50, %0, !dbg !958
  %133 = call i32 @gsl_sf_psi_e(double noundef %132, ptr noundef nonnull %15) #8, !dbg !959
  tail call void @llvm.dbg.value(metadata i32 %133, metadata !763, metadata !DIExpression()), !dbg !835
  %134 = fadd double %50, %1, !dbg !960
  %135 = call i32 @gsl_sf_psi_e(double noundef %134, ptr noundef nonnull %16) #8, !dbg !961
  tail call void @llvm.dbg.value(metadata i32 %135, metadata !764, metadata !DIExpression()), !dbg !835
  %136 = icmp eq i32 %131, 0, !dbg !962
  %137 = icmp eq i32 %133, 0, !dbg !962
  %138 = select i1 %137, i32 %135, i32 %133, !dbg !962
  %139 = select i1 %136, i32 %138, i32 %131, !dbg !962
  tail call void @llvm.dbg.value(metadata i32 %139, metadata !765, metadata !DIExpression()), !dbg !835
  %140 = load double, ptr %14, align 8, !dbg !963, !tbaa !183
  %141 = fadd double %140, 0xBFE2788CFC6FB619, !dbg !964
  %142 = load double, ptr %15, align 8, !dbg !965, !tbaa !183
  %143 = fsub double %141, %142, !dbg !966
  %144 = load double, ptr %16, align 8, !dbg !967, !tbaa !183
  %145 = fsub double %143, %144, !dbg !968
  %146 = fsub double %145, %46, !dbg !969
  tail call void @llvm.dbg.value(metadata double %146, metadata !766, metadata !DIExpression()), !dbg !835
  %147 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %14, i64 0, i32 1, !dbg !970
  %148 = load double, ptr %147, align 8, !dbg !970, !tbaa !188
  %149 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %15, i64 0, i32 1, !dbg !971
  %150 = load double, ptr %149, align 8, !dbg !971, !tbaa !188
  %151 = fadd double %148, %150, !dbg !972
  %152 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %16, i64 0, i32 1, !dbg !973
  %153 = load double, ptr %152, align 8, !dbg !973, !tbaa !188
  %154 = fadd double %151, %153, !dbg !974
  %155 = call double @llvm.fabs.f64(double %146), !dbg !975
  %156 = fmul double %155, 0x3CB0000000000000, !dbg !976
  %157 = fadd double %154, %156, !dbg !977
  tail call void @llvm.dbg.value(metadata double %157, metadata !767, metadata !DIExpression()), !dbg !835
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !768, metadata !DIExpression()), !dbg !835
  tail call void @llvm.dbg.value(metadata double %146, metadata !769, metadata !DIExpression()), !dbg !835
  tail call void @llvm.dbg.value(metadata double %157, metadata !770, metadata !DIExpression()), !dbg !835
  %158 = load double, ptr %8, align 8, !dbg !978, !tbaa !183
  %159 = fmul double %50, %46, !dbg !979
  %160 = fadd double %159, %158, !dbg !980
  %161 = load double, ptr %9, align 8, !dbg !981, !tbaa !183
  %162 = fsub double %160, %161, !dbg !982
  %163 = load double, ptr %10, align 8, !dbg !983, !tbaa !183
  %164 = fsub double %162, %163, !dbg !984
  tail call void @llvm.dbg.value(metadata double %164, metadata !771, metadata !DIExpression()), !dbg !835
  %165 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %8, i64 0, i32 1, !dbg !985
  %166 = load double, ptr %165, align 8, !dbg !985, !tbaa !188
  %167 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %9, i64 0, i32 1, !dbg !986
  %168 = load double, ptr %167, align 8, !dbg !986, !tbaa !188
  %169 = fadd double %166, %168, !dbg !987
  %170 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %10, i64 0, i32 1, !dbg !988
  %171 = load double, ptr %170, align 8, !dbg !988, !tbaa !188
  %172 = fadd double %169, %171, !dbg !989
  %173 = call double @llvm.fabs.f64(double %164), !dbg !990
  %174 = fmul double %173, 0x3CB0000000000000, !dbg !991
  %175 = fadd double %174, %172, !dbg !992
  tail call void @llvm.dbg.value(metadata double %175, metadata !772, metadata !DIExpression()), !dbg !835
  tail call void @llvm.dbg.value(metadata i32 1, metadata !774, metadata !DIExpression()), !dbg !835
  br label %176, !dbg !993

176:                                              ; preds = %129, %218
  %177 = phi double [ %146, %129 ], [ %196, %218 ]
  %178 = phi double [ %157, %129 ], [ %201, %218 ]
  %179 = phi double [ 1.000000e+00, %129 ], [ %206, %218 ]
  %180 = phi double [ %146, %129 ], [ %208, %218 ]
  %181 = phi double [ %157, %129 ], [ %214, %218 ]
  %182 = phi i32 [ 1, %129 ], [ %219, %218 ]
  tail call void @llvm.dbg.value(metadata double %177, metadata !766, metadata !DIExpression()), !dbg !835
  tail call void @llvm.dbg.value(metadata double %178, metadata !767, metadata !DIExpression()), !dbg !835
  tail call void @llvm.dbg.value(metadata double %179, metadata !768, metadata !DIExpression()), !dbg !835
  tail call void @llvm.dbg.value(metadata double %180, metadata !769, metadata !DIExpression()), !dbg !835
  tail call void @llvm.dbg.value(metadata double %181, metadata !770, metadata !DIExpression()), !dbg !835
  tail call void @llvm.dbg.value(metadata i32 %182, metadata !774, metadata !DIExpression()), !dbg !835
  %183 = sitofp i32 %182 to double, !dbg !994
  %184 = fdiv double 1.000000e+00, %183, !dbg !995
  %185 = fadd double %47, %183, !dbg !996
  %186 = fdiv double 1.000000e+00, %185, !dbg !997
  %187 = fadd double %184, %186, !dbg !998
  tail call void @llvm.dbg.value(metadata double %187, metadata !775, metadata !DIExpression()), !dbg !999
  %188 = fadd double %132, %183, !dbg !1000
  %189 = fadd double %188, -1.000000e+00, !dbg !1001
  %190 = fdiv double 1.000000e+00, %189, !dbg !1002
  %191 = fadd double %134, %183, !dbg !1003
  %192 = fadd double %191, -1.000000e+00, !dbg !1004
  %193 = fdiv double 1.000000e+00, %192, !dbg !1005
  %194 = fadd double %190, %193, !dbg !1006
  tail call void @llvm.dbg.value(metadata double %194, metadata !779, metadata !DIExpression()), !dbg !999
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !780, metadata !DIExpression()), !dbg !999
  %195 = fsub double %187, %194, !dbg !1007
  %196 = fadd double %177, %195, !dbg !1008
  tail call void @llvm.dbg.value(metadata double %196, metadata !766, metadata !DIExpression()), !dbg !835
  %197 = call double @llvm.fabs.f64(double %187), !dbg !1009
  %198 = call double @llvm.fabs.f64(double %194), !dbg !1010
  %199 = fadd double %197, %198, !dbg !1011
  %200 = fmul double %199, 0x3CB0000000000000, !dbg !1012
  %201 = fadd double %178, %200, !dbg !1013
  tail call void @llvm.dbg.value(metadata double %201, metadata !767, metadata !DIExpression()), !dbg !835
  %202 = fmul double %189, %192, !dbg !1014
  %203 = fmul double %185, %183, !dbg !1015
  %204 = fdiv double %202, %203, !dbg !1016
  %205 = fmul double %45, %204, !dbg !1017
  %206 = fmul double %179, %205, !dbg !1018
  tail call void @llvm.dbg.value(metadata double %206, metadata !768, metadata !DIExpression()), !dbg !835
  %207 = fmul double %206, %196, !dbg !1019
  tail call void @llvm.dbg.value(metadata double %207, metadata !780, metadata !DIExpression()), !dbg !999
  %208 = fadd double %180, %207, !dbg !1020
  tail call void @llvm.dbg.value(metadata double %208, metadata !769, metadata !DIExpression()), !dbg !835
  %209 = fmul double %206, %201, !dbg !1021
  %210 = call double @llvm.fabs.f64(double %209), !dbg !1022
  %211 = call double @llvm.fabs.f64(double %207), !dbg !1023
  %212 = fmul double %211, 0x3CB0000000000000, !dbg !1024
  %213 = fadd double %212, %210, !dbg !1025
  %214 = fadd double %181, %213, !dbg !1026
  tail call void @llvm.dbg.value(metadata double %214, metadata !770, metadata !DIExpression()), !dbg !835
  %215 = call double @llvm.fabs.f64(double %208), !dbg !1027
  %216 = fmul double %215, 0x3CB0000000000000, !dbg !1029
  %217 = fcmp olt double %211, %216, !dbg !1030
  br i1 %217, label %221, label %218

218:                                              ; preds = %176
  %219 = add nuw nsw i32 %182, 1, !dbg !1031
  tail call void @llvm.dbg.value(metadata double %196, metadata !766, metadata !DIExpression()), !dbg !835
  tail call void @llvm.dbg.value(metadata double %201, metadata !767, metadata !DIExpression()), !dbg !835
  tail call void @llvm.dbg.value(metadata double %206, metadata !768, metadata !DIExpression()), !dbg !835
  tail call void @llvm.dbg.value(metadata double %208, metadata !769, metadata !DIExpression()), !dbg !835
  tail call void @llvm.dbg.value(metadata double %214, metadata !770, metadata !DIExpression()), !dbg !835
  tail call void @llvm.dbg.value(metadata i32 %219, metadata !774, metadata !DIExpression()), !dbg !835
  %220 = icmp eq i32 %219, 2000, !dbg !1032
  br i1 %220, label %221, label %176, !dbg !993, !llvm.loop !1033

221:                                              ; preds = %176, %218
  %222 = phi i32 [ %182, %176 ], [ 2000, %218 ], !dbg !1035
  tail call void @llvm.dbg.value(metadata double %208, metadata !769, metadata !DIExpression()), !dbg !835
  tail call void @llvm.dbg.value(metadata double %214, metadata !770, metadata !DIExpression()), !dbg !835
  %223 = icmp eq i32 %222, 2000, !dbg !1036
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !723, metadata !DIExpression()), !dbg !825
  %224 = fcmp oeq double %208, 0.000000e+00, !dbg !1038
  br i1 %224, label %232, label %225, !dbg !1040

225:                                              ; preds = %221
  %226 = call i32 @gsl_sf_exp_mult_err_e(double noundef %164, double noundef %175, double noundef %208, double noundef %214, ptr noundef nonnull %7) #8, !dbg !1041
  tail call void @llvm.dbg.value(metadata i32 %226, metadata !773, metadata !DIExpression()), !dbg !835
  %227 = icmp eq i32 %226, 16, !dbg !1043
  br i1 %227, label %236, label %228, !dbg !1045

228:                                              ; preds = %225
  %229 = load double, ptr %7, align 8, !dbg !1046, !tbaa !183
  %230 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %7, i64 0, i32 1
  %231 = load double, ptr %230, align 8, !dbg !1047, !tbaa !188
  br label %232, !dbg !1045

232:                                              ; preds = %221, %228
  %233 = phi double [ %231, %228 ], [ 0.000000e+00, %221 ], !dbg !1047
  %234 = phi double [ %229, %228 ], [ 0.000000e+00, %221 ], !dbg !1046
  %235 = select i1 %223, i32 11, i32 %139, !dbg !1048
  tail call void @llvm.dbg.value(metadata i32 %235, metadata !723, metadata !DIExpression()), !dbg !825
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %16) #8, !dbg !1049
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %15) #8, !dbg !1049
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %14) #8, !dbg !1049
  br label %237

236:                                              ; preds = %225
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false), !dbg !1050
  call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 509, i32 noundef 16) #8, !dbg !1052
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !723, metadata !DIExpression()), !dbg !825
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %16) #8, !dbg !1049
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %15) #8, !dbg !1049
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %14) #8, !dbg !1049
  br label %259

237:                                              ; preds = %125, %232
  %238 = phi double [ %233, %232 ], [ 0.000000e+00, %125 ], !dbg !1047
  %239 = phi double [ %234, %232 ], [ 0.000000e+00, %125 ], !dbg !1046
  %240 = phi i32 [ %235, %232 ], [ 0, %125 ], !dbg !825
  tail call void @llvm.dbg.value(metadata i32 %240, metadata !723, metadata !DIExpression()), !dbg !825
  %241 = and i32 %39, 1, !dbg !1054
  %242 = icmp eq i32 %241, 0, !dbg !1054
  tail call void @llvm.dbg.value(metadata double poison, metadata !724, metadata !DIExpression()), !dbg !825
  %243 = load double, ptr %6, align 8, !dbg !1055, !tbaa !183
  %244 = fneg double %239, !dbg !1056
  %245 = select i1 %242, double %239, double %244, !dbg !1056
  %246 = fadd double %243, %245, !dbg !1057
  store double %246, ptr %4, align 8, !dbg !1058, !tbaa !183
  %247 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !1059
  %248 = load double, ptr %247, align 8, !dbg !1059, !tbaa !188
  %249 = fadd double %248, %238, !dbg !1060
  %250 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !1061
  %251 = call double @llvm.fabs.f64(double %243), !dbg !1062
  %252 = call double @llvm.fabs.f64(double %239), !dbg !1063
  %253 = fadd double %251, %252, !dbg !1064
  %254 = fmul double %253, 0x3CC0000000000000, !dbg !1065
  %255 = fadd double %254, %249, !dbg !1066
  %256 = call double @llvm.fabs.f64(double %246), !dbg !1067
  %257 = fmul double %256, 0x3CC0000000000000, !dbg !1068
  %258 = fadd double %257, %255, !dbg !1069
  store double %258, ptr %250, align 8, !dbg !1069, !tbaa !188
  br label %259, !dbg !1070

259:                                              ; preds = %236, %121, %237
  %260 = phi i32 [ %240, %237 ], [ 16, %236 ], [ 16, %121 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #8, !dbg !1071
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #8, !dbg !1071
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #8, !dbg !1071
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #8, !dbg !1071
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #8, !dbg !1071
  br label %450

261:                                              ; preds = %5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %17) #8, !dbg !1072
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %18) #8, !dbg !1072
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %19) #8, !dbg !1073
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %20) #8, !dbg !1073
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %21) #8, !dbg !1074
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %22) #8, !dbg !1074
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %23) #8, !dbg !1074
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %24) #8, !dbg !1074
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %25) #8, !dbg !1075
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %26) #8, !dbg !1075
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %27) #8, !dbg !1075
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %28) #8, !dbg !1075
  %262 = call i32 @gsl_sf_lngamma_sgn_e(double noundef %35, ptr noundef nonnull %21, ptr noundef nonnull %25) #8, !dbg !1076
  tail call void @llvm.dbg.value(metadata i32 %262, metadata !798, metadata !DIExpression()), !dbg !839
  %263 = fsub double %2, %1, !dbg !1077
  %264 = call i32 @gsl_sf_lngamma_sgn_e(double noundef %263, ptr noundef nonnull %22, ptr noundef nonnull %26) #8, !dbg !1078
  tail call void @llvm.dbg.value(metadata i32 %264, metadata !799, metadata !DIExpression()), !dbg !839
  %265 = call i32 @gsl_sf_lngamma_sgn_e(double noundef %0, ptr noundef nonnull %23, ptr noundef nonnull %27) #8, !dbg !1079
  tail call void @llvm.dbg.value(metadata i32 %265, metadata !800, metadata !DIExpression()), !dbg !839
  %266 = call i32 @gsl_sf_lngamma_sgn_e(double noundef %1, ptr noundef nonnull %24, ptr noundef nonnull %28) #8, !dbg !1080
  tail call void @llvm.dbg.value(metadata i32 %266, metadata !801, metadata !DIExpression()), !dbg !839
  %267 = icmp eq i32 %262, 0, !dbg !1081
  %268 = icmp eq i32 %264, 0, !dbg !1082
  %269 = select i1 %267, i1 %268, i1 false, !dbg !1082
  tail call void @llvm.dbg.value(metadata i1 %269, metadata !802, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !839
  %270 = icmp eq i32 %265, 0, !dbg !1083
  %271 = icmp eq i32 %266, 0, !dbg !1084
  %272 = select i1 %270, i1 %271, i1 false, !dbg !1084
  tail call void @llvm.dbg.value(metadata i1 %272, metadata !803, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !839
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %29) #8, !dbg !1085
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %30) #8, !dbg !1085
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %31) #8, !dbg !1085
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %32) #8, !dbg !1086
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %33) #8, !dbg !1086
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %34) #8, !dbg !1086
  %273 = call i32 @gsl_sf_lngamma_sgn_e(double noundef %2, ptr noundef nonnull %29, ptr noundef nonnull %32) #8, !dbg !1087
  %274 = call i32 @gsl_sf_lngamma_sgn_e(double noundef %36, ptr noundef nonnull %30, ptr noundef nonnull %33) #8, !dbg !1088
  %275 = fneg double %36, !dbg !1089
  %276 = call i32 @gsl_sf_lngamma_sgn_e(double noundef %275, ptr noundef nonnull %31, ptr noundef nonnull %34) #8, !dbg !1090
  %277 = load double, ptr %32, align 8, !dbg !1091, !tbaa !207
  %278 = load double, ptr %33, align 8, !dbg !1092, !tbaa !207
  %279 = fmul double %277, %278, !dbg !1093
  %280 = load double, ptr %25, align 8, !dbg !1094, !tbaa !207
  %281 = fmul double %279, %280, !dbg !1095
  %282 = load double, ptr %26, align 8, !dbg !1096, !tbaa !207
  %283 = fmul double %281, %282, !dbg !1097
  tail call void @llvm.dbg.value(metadata double %283, metadata !784, metadata !DIExpression()), !dbg !839
  %284 = load double, ptr %34, align 8, !dbg !1098, !tbaa !207
  %285 = fmul double %277, %284, !dbg !1099
  %286 = load double, ptr %27, align 8, !dbg !1100, !tbaa !207
  %287 = fmul double %285, %286, !dbg !1101
  %288 = load double, ptr %28, align 8, !dbg !1102, !tbaa !207
  %289 = fmul double %287, %288, !dbg !1103
  tail call void @llvm.dbg.value(metadata double %289, metadata !785, metadata !DIExpression()), !dbg !839
  %290 = select i1 %269, i1 %272, i1 false, !dbg !1104
  br i1 %290, label %291, label %341, !dbg !1104

291:                                              ; preds = %261
  %292 = load double, ptr %29, align 8, !dbg !1105, !tbaa !183
  %293 = load double, ptr %30, align 8, !dbg !1106, !tbaa !183
  %294 = fadd double %292, %293, !dbg !1107
  %295 = load double, ptr %21, align 8, !dbg !1108, !tbaa !183
  %296 = fsub double %294, %295, !dbg !1109
  %297 = load double, ptr %22, align 8, !dbg !1110, !tbaa !183
  %298 = fsub double %296, %297, !dbg !1111
  tail call void @llvm.dbg.value(metadata double %298, metadata !810, metadata !DIExpression()), !dbg !1112
  %299 = load double, ptr %31, align 8, !dbg !1113, !tbaa !183
  %300 = fadd double %292, %299, !dbg !1114
  %301 = load double, ptr %23, align 8, !dbg !1115, !tbaa !183
  %302 = fsub double %300, %301, !dbg !1116
  %303 = load double, ptr %24, align 8, !dbg !1117, !tbaa !183
  %304 = fsub double %302, %303, !dbg !1118
  %305 = fsub double 1.000000e+00, %3, !dbg !1119
  %306 = call double @log(double noundef %305) #8, !dbg !1120
  %307 = fmul double %36, %306, !dbg !1121
  %308 = fadd double %304, %307, !dbg !1122
  tail call void @llvm.dbg.value(metadata double %308, metadata !813, metadata !DIExpression()), !dbg !1112
  tail call void @llvm.dbg.value(metadata double poison, metadata !814, metadata !DIExpression()), !dbg !1112
  tail call void @llvm.dbg.value(metadata double poison, metadata !815, metadata !DIExpression()), !dbg !1112
  %309 = fcmp olt double %298, 0x40862E42FEFA39EF, !dbg !1123
  %310 = fcmp olt double %308, 0x40862E42FEFA39EF
  %311 = select i1 %309, i1 %310, i1 false, !dbg !1125
  br i1 %311, label %312, label %339, !dbg !1125

312:                                              ; preds = %291
  %313 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %29, i64 0, i32 1, !dbg !1126
  %314 = load double, ptr %313, align 8, !dbg !1126, !tbaa !188
  %315 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %31, i64 0, i32 1, !dbg !1127
  %316 = load double, ptr %315, align 8, !dbg !1127, !tbaa !188
  %317 = fadd double %314, %316, !dbg !1128
  %318 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %23, i64 0, i32 1, !dbg !1129
  %319 = load double, ptr %318, align 8, !dbg !1129, !tbaa !188
  %320 = fadd double %317, %319, !dbg !1130
  %321 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %24, i64 0, i32 1, !dbg !1131
  %322 = load double, ptr %321, align 8, !dbg !1131, !tbaa !188
  %323 = fadd double %320, %322, !dbg !1132
  tail call void @llvm.dbg.value(metadata double %323, metadata !815, metadata !DIExpression()), !dbg !1112
  %324 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %30, i64 0, i32 1, !dbg !1133
  %325 = load double, ptr %324, align 8, !dbg !1133, !tbaa !188
  %326 = fadd double %314, %325, !dbg !1134
  %327 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %21, i64 0, i32 1, !dbg !1135
  %328 = load double, ptr %327, align 8, !dbg !1135, !tbaa !188
  %329 = fadd double %326, %328, !dbg !1136
  %330 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %22, i64 0, i32 1, !dbg !1137
  %331 = load double, ptr %330, align 8, !dbg !1137, !tbaa !188
  %332 = fadd double %329, %331, !dbg !1138
  tail call void @llvm.dbg.value(metadata double %332, metadata !814, metadata !DIExpression()), !dbg !1112
  %333 = call i32 @gsl_sf_exp_err_e(double noundef %298, double noundef %332, ptr noundef nonnull %17) #8, !dbg !1139
  %334 = call i32 @gsl_sf_exp_err_e(double noundef %308, double noundef %323, ptr noundef nonnull %18) #8, !dbg !1141
  %335 = load double, ptr %17, align 8, !dbg !1142, !tbaa !183
  %336 = fmul double %283, %335, !dbg !1142
  store double %336, ptr %17, align 8, !dbg !1142, !tbaa !183, !DIAssignID !1143
  call void @llvm.dbg.assign(metadata double %336, metadata !781, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !1143, metadata ptr %17, metadata !DIExpression()), !dbg !839
  %337 = load double, ptr %18, align 8, !dbg !1144, !tbaa !183
  %338 = fmul double %289, %337, !dbg !1144
  store double %338, ptr %18, align 8, !dbg !1144, !tbaa !183, !DIAssignID !1145
  call void @llvm.dbg.assign(metadata double %338, metadata !783, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !1145, metadata ptr %18, metadata !DIExpression()), !dbg !839
  br label %405

339:                                              ; preds = %291
  store double 0x7FF0000000000000, ptr %4, align 8, !dbg !1146, !tbaa !183
  %340 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !1146
  store double 0x7FF0000000000000, ptr %340, align 8, !dbg !1146, !tbaa !188
  call void @gsl_error(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 570, i32 noundef 16) #8, !dbg !1149
  br label %448

341:                                              ; preds = %261
  tail call void @llvm.dbg.value(metadata i1 %269, metadata !802, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !839
  %342 = xor i1 %269, true, !dbg !1151
  %343 = select i1 %342, i1 true, i1 %272, !dbg !1152
  br i1 %343, label %371, label %344, !dbg !1152

344:                                              ; preds = %341
  %345 = load double, ptr %29, align 8, !dbg !1153, !tbaa !183
  %346 = load double, ptr %30, align 8, !dbg !1154, !tbaa !183
  %347 = fadd double %345, %346, !dbg !1155
  %348 = load double, ptr %21, align 8, !dbg !1156, !tbaa !183
  %349 = fsub double %347, %348, !dbg !1157
  %350 = load double, ptr %22, align 8, !dbg !1158, !tbaa !183
  %351 = fsub double %349, %350, !dbg !1159
  tail call void @llvm.dbg.value(metadata double %351, metadata !816, metadata !DIExpression()), !dbg !1160
  tail call void @llvm.dbg.value(metadata double poison, metadata !819, metadata !DIExpression()), !dbg !1160
  %352 = fcmp olt double %351, 0x40862E42FEFA39EF, !dbg !1161
  br i1 %352, label %353, label %369, !dbg !1163

353:                                              ; preds = %344
  %354 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %29, i64 0, i32 1, !dbg !1164
  %355 = load double, ptr %354, align 8, !dbg !1164, !tbaa !188
  %356 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %30, i64 0, i32 1, !dbg !1165
  %357 = load double, ptr %356, align 8, !dbg !1165, !tbaa !188
  %358 = fadd double %355, %357, !dbg !1166
  %359 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %21, i64 0, i32 1, !dbg !1167
  %360 = load double, ptr %359, align 8, !dbg !1167, !tbaa !188
  %361 = fadd double %358, %360, !dbg !1168
  %362 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %22, i64 0, i32 1, !dbg !1169
  %363 = load double, ptr %362, align 8, !dbg !1169, !tbaa !188
  %364 = fadd double %361, %363, !dbg !1170
  tail call void @llvm.dbg.value(metadata double %364, metadata !819, metadata !DIExpression()), !dbg !1160
  %365 = call i32 @gsl_sf_exp_err_e(double noundef %351, double noundef %364, ptr noundef nonnull %17) #8, !dbg !1171
  %366 = load double, ptr %17, align 8, !dbg !1173, !tbaa !183
  %367 = fmul double %283, %366, !dbg !1173
  store double %367, ptr %17, align 8, !dbg !1173, !tbaa !183, !DIAssignID !1174
  call void @llvm.dbg.assign(metadata double %367, metadata !781, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !1174, metadata ptr %17, metadata !DIExpression()), !dbg !839
  call void @llvm.dbg.assign(metadata double 0.000000e+00, metadata !783, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !1175, metadata ptr %18, metadata !DIExpression()), !dbg !839
  call void @llvm.dbg.assign(metadata double 0.000000e+00, metadata !783, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64), metadata !1175, metadata ptr %18, metadata !DIExpression(DW_OP_plus_uconst, 8)), !dbg !839
  %368 = fsub double 1.000000e+00, %3, !dbg !1176
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %18, i8 0, i64 16, i1 false), !dbg !1177, !DIAssignID !1175
  br label %405

369:                                              ; preds = %344
  store double 0x7FF0000000000000, ptr %4, align 8, !dbg !1178, !tbaa !183
  %370 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !1178
  store double 0x7FF0000000000000, ptr %370, align 8, !dbg !1178, !tbaa !188
  call void @gsl_error(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 583, i32 noundef 16) #8, !dbg !1181
  br label %448

371:                                              ; preds = %341
  %372 = select i1 %342, i1 %272, i1 false, !dbg !1183
  br i1 %372, label %373, label %403, !dbg !1183

373:                                              ; preds = %371
  %374 = load double, ptr %29, align 8, !dbg !1184, !tbaa !183
  %375 = load double, ptr %31, align 8, !dbg !1185, !tbaa !183
  %376 = fadd double %374, %375, !dbg !1186
  %377 = load double, ptr %23, align 8, !dbg !1187, !tbaa !183
  %378 = fsub double %376, %377, !dbg !1188
  %379 = load double, ptr %24, align 8, !dbg !1189, !tbaa !183
  %380 = fsub double %378, %379, !dbg !1190
  %381 = fsub double 1.000000e+00, %3, !dbg !1191
  %382 = call double @log(double noundef %381) #8, !dbg !1192
  %383 = fmul double %36, %382, !dbg !1193
  %384 = fadd double %380, %383, !dbg !1194
  tail call void @llvm.dbg.value(metadata double %384, metadata !820, metadata !DIExpression()), !dbg !1195
  tail call void @llvm.dbg.value(metadata double poison, metadata !823, metadata !DIExpression()), !dbg !1195
  %385 = fcmp olt double %384, 0x40862E42FEFA39EF, !dbg !1196
  br i1 %385, label %386, label %401, !dbg !1198

386:                                              ; preds = %373
  %387 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %29, i64 0, i32 1, !dbg !1199
  %388 = load double, ptr %387, align 8, !dbg !1199, !tbaa !188
  %389 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %31, i64 0, i32 1, !dbg !1200
  %390 = load double, ptr %389, align 8, !dbg !1200, !tbaa !188
  %391 = fadd double %388, %390, !dbg !1201
  %392 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %23, i64 0, i32 1, !dbg !1202
  %393 = load double, ptr %392, align 8, !dbg !1202, !tbaa !188
  %394 = fadd double %391, %393, !dbg !1203
  %395 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %24, i64 0, i32 1, !dbg !1204
  %396 = load double, ptr %395, align 8, !dbg !1204, !tbaa !188
  %397 = fadd double %394, %396, !dbg !1205
  tail call void @llvm.dbg.value(metadata double %397, metadata !823, metadata !DIExpression()), !dbg !1195
  call void @llvm.dbg.assign(metadata double 0.000000e+00, metadata !781, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !1206, metadata ptr %17, metadata !DIExpression()), !dbg !839
  call void @llvm.dbg.assign(metadata double 0.000000e+00, metadata !781, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64), metadata !1206, metadata ptr %17, metadata !DIExpression(DW_OP_plus_uconst, 8)), !dbg !839
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %17, i8 0, i64 16, i1 false), !dbg !1207, !DIAssignID !1206
  %398 = call i32 @gsl_sf_exp_err_e(double noundef %384, double noundef %397, ptr noundef nonnull %18) #8, !dbg !1209
  %399 = load double, ptr %18, align 8, !dbg !1210, !tbaa !183
  %400 = fmul double %289, %399, !dbg !1210
  store double %400, ptr %18, align 8, !dbg !1210, !tbaa !183, !DIAssignID !1211
  call void @llvm.dbg.assign(metadata double %400, metadata !783, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !1211, metadata ptr %18, metadata !DIExpression()), !dbg !839
  br label %405

401:                                              ; preds = %373
  store double 0x7FF0000000000000, ptr %4, align 8, !dbg !1212, !tbaa !183
  %402 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !1212
  store double 0x7FF0000000000000, ptr %402, align 8, !dbg !1212, !tbaa !188
  call void @gsl_error(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 596, i32 noundef 16) #8, !dbg !1215
  br label %448

403:                                              ; preds = %371
  store double 0.000000e+00, ptr %17, align 8, !dbg !1217, !tbaa !183, !DIAssignID !1219
  call void @llvm.dbg.assign(metadata double 0.000000e+00, metadata !781, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !1219, metadata ptr %17, metadata !DIExpression()), !dbg !839
  store double 0.000000e+00, ptr %18, align 8, !dbg !1220, !tbaa !183, !DIAssignID !1221
  call void @llvm.dbg.assign(metadata double 0.000000e+00, metadata !783, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !1221, metadata ptr %18, metadata !DIExpression()), !dbg !839
  store double 0.000000e+00, ptr %4, align 8, !dbg !1222, !tbaa !183
  %404 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !1222
  store double 0x10000000000000, ptr %404, align 8, !dbg !1222, !tbaa !188
  call void @gsl_error(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 602, i32 noundef 15) #8, !dbg !1224
  br label %448, !dbg !1224

405:                                              ; preds = %386, %353, %312
  %406 = phi double [ %381, %386 ], [ %368, %353 ], [ %305, %312 ], !dbg !1176
  %407 = fsub double 1.000000e+00, %36, !dbg !1226
  %408 = call fastcc i32 @hyperg_2F1_series(double noundef %0, double noundef %1, double noundef %407, double noundef %406, ptr noundef nonnull %19), !dbg !1227, !range !281
  tail call void @llvm.dbg.value(metadata i32 %408, metadata !788, metadata !DIExpression()), !dbg !839
  %409 = fadd double %36, 1.000000e+00, !dbg !1228
  %410 = call fastcc i32 @hyperg_2F1_series(double noundef %35, double noundef %263, double noundef %409, double noundef %406, ptr noundef nonnull %20), !dbg !1229, !range !281
  tail call void @llvm.dbg.value(metadata i32 %410, metadata !789, metadata !DIExpression()), !dbg !839
  %411 = load double, ptr %17, align 8, !dbg !1230, !tbaa !183
  %412 = load double, ptr %19, align 8, !dbg !1231, !tbaa !183
  %413 = fmul double %411, %412, !dbg !1232
  %414 = load double, ptr %18, align 8, !dbg !1233, !tbaa !183
  %415 = load double, ptr %20, align 8, !dbg !1234, !tbaa !183
  %416 = fmul double %414, %415, !dbg !1235
  %417 = fadd double %413, %416, !dbg !1236
  store double %417, ptr %4, align 8, !dbg !1237, !tbaa !183
  %418 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %19, i64 0, i32 1, !dbg !1238
  %419 = load double, ptr %418, align 8, !dbg !1238, !tbaa !188
  %420 = fmul double %411, %419, !dbg !1239
  %421 = call double @llvm.fabs.f64(double %420), !dbg !1240
  %422 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %20, i64 0, i32 1, !dbg !1241
  %423 = load double, ptr %422, align 8, !dbg !1241, !tbaa !188
  %424 = fmul double %414, %423, !dbg !1242
  %425 = call double @llvm.fabs.f64(double %424), !dbg !1243
  %426 = fadd double %421, %425, !dbg !1244
  %427 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !1245
  %428 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %17, i64 0, i32 1, !dbg !1246
  %429 = load double, ptr %428, align 8, !dbg !1246, !tbaa !188
  %430 = fmul double %412, %429, !dbg !1247
  %431 = call double @llvm.fabs.f64(double %430), !dbg !1248
  %432 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %18, i64 0, i32 1, !dbg !1249
  %433 = load double, ptr %432, align 8, !dbg !1249, !tbaa !188
  %434 = fmul double %415, %433, !dbg !1250
  %435 = call double @llvm.fabs.f64(double %434), !dbg !1251
  %436 = fadd double %431, %435, !dbg !1252
  %437 = fadd double %426, %436, !dbg !1253
  %438 = call double @llvm.fabs.f64(double %413), !dbg !1254
  %439 = call double @llvm.fabs.f64(double %416), !dbg !1255
  %440 = fadd double %438, %439, !dbg !1256
  %441 = fmul double %440, 0x3CC0000000000000, !dbg !1257
  %442 = fadd double %441, %437, !dbg !1258
  %443 = call double @llvm.fabs.f64(double %417), !dbg !1259
  %444 = fmul double %443, 0x3CC0000000000000, !dbg !1260
  %445 = fadd double %444, %442, !dbg !1261
  store double %445, ptr %427, align 8, !dbg !1261, !tbaa !188
  %446 = icmp eq i32 %408, 0, !dbg !1262
  %447 = select i1 %446, i32 %410, i32 %408, !dbg !1264
  br label %448, !dbg !1264

448:                                              ; preds = %405, %401, %369, %339, %403
  %449 = phi i32 [ 16, %339 ], [ 16, %401 ], [ 15, %403 ], [ 16, %369 ], [ %447, %405 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %34) #8, !dbg !1265
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %33) #8, !dbg !1265
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %32) #8, !dbg !1265
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %31) #8, !dbg !1265
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %30) #8, !dbg !1265
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %29) #8, !dbg !1265
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %28) #8, !dbg !1265
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %27) #8, !dbg !1265
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %26) #8, !dbg !1265
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %25) #8, !dbg !1265
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %24) #8, !dbg !1265
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %23) #8, !dbg !1265
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %22) #8, !dbg !1265
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %21) #8, !dbg !1265
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %20) #8, !dbg !1265
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %19) #8, !dbg !1265
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %18) #8, !dbg !1265
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %17) #8, !dbg !1265
  br label %450

450:                                              ; preds = %448, %259
  %451 = phi i32 [ %260, %259 ], [ %449, %448 ], !dbg !1266
  ret i32 %451, !dbg !1267
}

declare !dbg !1268 i32 @gsl_sf_hyperg_1F1_e(double noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_hyperg_2F1_conj_e(double noundef %0, double noundef %1, double noundef %2, double noundef %3, ptr nocapture noundef %4) local_unnamed_addr #0 !dbg !1272 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !1274, metadata !DIExpression()), !dbg !1282
  tail call void @llvm.dbg.value(metadata double %1, metadata !1275, metadata !DIExpression()), !dbg !1282
  tail call void @llvm.dbg.value(metadata double %2, metadata !1276, metadata !DIExpression()), !dbg !1282
  tail call void @llvm.dbg.value(metadata double %3, metadata !1277, metadata !DIExpression()), !dbg !1282
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1278, metadata !DIExpression()), !dbg !1282
  %6 = tail call double @llvm.fabs.f64(double %3), !dbg !1283
  tail call void @llvm.dbg.value(metadata double %6, metadata !1279, metadata !DIExpression()), !dbg !1282
  tail call void @llvm.dbg.value(metadata double poison, metadata !1280, metadata !DIExpression()), !dbg !1282
  %7 = fcmp olt double %2, 0.000000e+00, !dbg !1284
  br i1 %7, label %8, label %14, !dbg !1285

8:                                                ; preds = %5
  %9 = fadd double %2, 5.000000e-01, !dbg !1286
  %10 = tail call double @llvm.floor.f64(double %9), !dbg !1287
  tail call void @llvm.dbg.value(metadata double %10, metadata !1280, metadata !DIExpression()), !dbg !1282
  %11 = fsub double %2, %10, !dbg !1288
  %12 = tail call double @llvm.fabs.f64(double %11), !dbg !1289
  %13 = fcmp olt double %12, 0x3D4F400000000000, !dbg !1290
  br label %14

14:                                               ; preds = %8, %5
  %15 = phi i1 [ false, %5 ], [ %13, %8 ], !dbg !1282
  tail call void @llvm.dbg.value(metadata i1 %15, metadata !1281, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1282
  %16 = fcmp oge double %6, 1.000000e+00, !dbg !1291
  %17 = or i1 %16, %15, !dbg !1293
  %18 = fcmp oeq double %2, 0.000000e+00
  %19 = or i1 %18, %17, !dbg !1293
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false), !dbg !1294
  br i1 %19, label %20, label %22, !dbg !1293

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !1295
  store double 0x7FF8000000000000, ptr %4, align 8, !dbg !1296, !tbaa !183
  store double 0x7FF8000000000000, ptr %21, align 8, !dbg !1296, !tbaa !188
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 791, i32 noundef 1) #8, !dbg !1299
  br label %51, !dbg !1299

22:                                               ; preds = %14
  %23 = fcmp olt double %6, 2.500000e-01, !dbg !1301
  %24 = tail call double @llvm.fabs.f64(double %0)
  %25 = fcmp olt double %24, 2.000000e+01
  %26 = and i1 %25, %23, !dbg !1303
  %27 = tail call double @llvm.fabs.f64(double %1)
  %28 = fcmp olt double %27, 2.000000e+01
  %29 = and i1 %28, %26, !dbg !1303
  br i1 %29, label %34, label %30, !dbg !1303

30:                                               ; preds = %22
  %31 = fcmp ogt double %2, 0.000000e+00, !dbg !1304
  %32 = fcmp ogt double %3, 0.000000e+00
  %33 = and i1 %31, %32, !dbg !1305
  br i1 %33, label %34, label %36, !dbg !1305

34:                                               ; preds = %22, %30
  %35 = tail call fastcc i32 @hyperg_2F1_conj_series(double noundef %0, double noundef %1, double noundef %2, double noundef %3, ptr noundef nonnull %4), !dbg !1306, !range !281
  br label %51, !dbg !1308

36:                                               ; preds = %30
  %37 = fcmp olt double %24, 1.000000e+01, !dbg !1309
  %38 = fcmp olt double %27, 1.000000e+01
  %39 = and i1 %37, %38, !dbg !1311
  br i1 %39, label %40, label %46, !dbg !1311

40:                                               ; preds = %36
  %41 = fcmp olt double %3, -2.500000e-01, !dbg !1312
  br i1 %41, label %42, label %44, !dbg !1315

42:                                               ; preds = %40
  %43 = tail call fastcc i32 @hyperg_2F1_conj_luke(double noundef %0, double noundef %1, double noundef %2, double noundef %3, ptr noundef nonnull %4), !dbg !1316, !range !281
  br label %51, !dbg !1318

44:                                               ; preds = %40
  %45 = tail call fastcc i32 @hyperg_2F1_conj_series(double noundef %0, double noundef %1, double noundef %2, double noundef %3, ptr noundef nonnull %4), !dbg !1319, !range !281
  br label %51, !dbg !1321

46:                                               ; preds = %36
  %47 = fcmp olt double %3, 0.000000e+00, !dbg !1322
  br i1 %47, label %48, label %50, !dbg !1325

48:                                               ; preds = %46
  %49 = tail call fastcc i32 @hyperg_2F1_conj_luke(double noundef %0, double noundef %1, double noundef %2, double noundef %3, ptr noundef nonnull %4), !dbg !1326, !range !281
  br label %51, !dbg !1328

50:                                               ; preds = %46
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 817, i32 noundef 24) #8, !dbg !1329
  br label %51, !dbg !1329

51:                                               ; preds = %50, %48, %44, %42, %34, %20
  %52 = phi i32 [ 1, %20 ], [ %35, %34 ], [ %43, %42 ], [ %45, %44 ], [ %49, %48 ], [ 24, %50 ], !dbg !1282
  ret i32 %52, !dbg !1331
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @hyperg_2F1_conj_series(double noundef %0, double noundef %1, double noundef %2, double noundef %3, ptr nocapture noundef %4) unnamed_addr #0 !dbg !1332 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !1336, metadata !DIExpression()), !dbg !1349
  tail call void @llvm.dbg.value(metadata double %1, metadata !1337, metadata !DIExpression()), !dbg !1349
  tail call void @llvm.dbg.value(metadata double %2, metadata !1338, metadata !DIExpression()), !dbg !1349
  tail call void @llvm.dbg.value(metadata double %3, metadata !1339, metadata !DIExpression()), !dbg !1349
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1340, metadata !DIExpression()), !dbg !1349
  %6 = fcmp oeq double %2, 0.000000e+00, !dbg !1350
  br i1 %6, label %9, label %7, !dbg !1351

7:                                                ; preds = %5
  %8 = fmul double %1, %1
  br label %10, !dbg !1352

9:                                                ; preds = %5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false), !dbg !1353
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 119, i32 noundef 1) #8, !dbg !1355
  br label %74, !dbg !1355

10:                                               ; preds = %7, %54
  %11 = phi double [ %33, %54 ], [ 1.000000e+00, %7 ], !dbg !1357
  %12 = phi double [ %34, %54 ], [ 0.000000e+00, %7 ], !dbg !1358
  %13 = phi double [ %35, %54 ], [ 1.000000e+00, %7 ], !dbg !1357
  %14 = phi double [ %36, %54 ], [ 0.000000e+00, %7 ], !dbg !1359
  %15 = phi double [ %25, %54 ], [ 1.000000e+00, %7 ], !dbg !1357
  %16 = phi double [ %20, %54 ], [ 0.000000e+00, %7 ], !dbg !1357
  tail call void @llvm.dbg.value(metadata double %16, metadata !1348, metadata !DIExpression()), !dbg !1357
  tail call void @llvm.dbg.value(metadata double %15, metadata !1347, metadata !DIExpression()), !dbg !1357
  tail call void @llvm.dbg.value(metadata double %14, metadata !1346, metadata !DIExpression()), !dbg !1357
  tail call void @llvm.dbg.value(metadata double %13, metadata !1345, metadata !DIExpression()), !dbg !1357
  tail call void @llvm.dbg.value(metadata double %12, metadata !1344, metadata !DIExpression()), !dbg !1357
  tail call void @llvm.dbg.value(metadata double %11, metadata !1341, metadata !DIExpression()), !dbg !1357
  %17 = fadd double %16, %0, !dbg !1360
  %18 = fmul double %17, %17, !dbg !1362
  %19 = fadd double %8, %18, !dbg !1363
  %20 = fadd double %16, 1.000000e+00, !dbg !1364
  %21 = fadd double %16, %2, !dbg !1365
  %22 = fmul double %20, %21, !dbg !1366
  %23 = fdiv double %19, %22, !dbg !1367
  %24 = fmul double %23, %3, !dbg !1368
  %25 = fmul double %15, %24, !dbg !1369
  tail call void @llvm.dbg.value(metadata double %25, metadata !1347, metadata !DIExpression()), !dbg !1357
  %26 = fcmp ult double %25, 0.000000e+00, !dbg !1370
  br i1 %26, label %29, label %27, !dbg !1372

27:                                               ; preds = %10
  tail call void @llvm.dbg.value(metadata double %25, metadata !1345, metadata !DIExpression()), !dbg !1357
  %28 = fadd double %11, %25, !dbg !1373
  tail call void @llvm.dbg.value(metadata double %28, metadata !1341, metadata !DIExpression()), !dbg !1357
  br label %32, !dbg !1375

29:                                               ; preds = %10
  %30 = fneg double %25, !dbg !1376
  tail call void @llvm.dbg.value(metadata double %30, metadata !1346, metadata !DIExpression()), !dbg !1357
  %31 = fsub double %12, %25, !dbg !1378
  tail call void @llvm.dbg.value(metadata double %31, metadata !1344, metadata !DIExpression()), !dbg !1357
  br label %32

32:                                               ; preds = %29, %27
  %33 = phi double [ %28, %27 ], [ %11, %29 ], !dbg !1357
  %34 = phi double [ %12, %27 ], [ %31, %29 ], !dbg !1357
  %35 = phi double [ %25, %27 ], [ %13, %29 ], !dbg !1357
  %36 = phi double [ %14, %27 ], [ %30, %29 ], !dbg !1357
  tail call void @llvm.dbg.value(metadata double %36, metadata !1346, metadata !DIExpression()), !dbg !1357
  tail call void @llvm.dbg.value(metadata double %35, metadata !1345, metadata !DIExpression()), !dbg !1357
  tail call void @llvm.dbg.value(metadata double %34, metadata !1344, metadata !DIExpression()), !dbg !1357
  tail call void @llvm.dbg.value(metadata double %33, metadata !1341, metadata !DIExpression()), !dbg !1357
  %37 = fcmp ogt double %16, 3.000000e+04, !dbg !1379
  br i1 %37, label %38, label %54, !dbg !1381

38:                                               ; preds = %32
  %39 = fsub double %33, %34, !dbg !1382
  store double %39, ptr %4, align 8, !dbg !1384, !tbaa !183
  %40 = fadd double %35, %36, !dbg !1385
  %41 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !1386
  %42 = fadd double %33, %34, !dbg !1387
  %43 = fmul double %42, 0x3CC0000000000000, !dbg !1388
  %44 = fadd double %43, %40, !dbg !1389
  store double %44, ptr %41, align 8, !dbg !1389, !tbaa !188
  %45 = tail call double @sqrt(double noundef %16) #8, !dbg !1390
  %46 = fmul double %45, 2.000000e+00, !dbg !1391
  %47 = fadd double %46, 1.000000e+00, !dbg !1392
  %48 = fmul double %47, 0x3CC0000000000000, !dbg !1393
  %49 = load double, ptr %4, align 8, !dbg !1394, !tbaa !183
  %50 = tail call double @llvm.fabs.f64(double %49), !dbg !1395
  %51 = fmul double %50, %48, !dbg !1396
  %52 = load double, ptr %41, align 8, !dbg !1397, !tbaa !188
  %53 = fadd double %52, %51, !dbg !1397
  store double %53, ptr %41, align 8, !dbg !1397, !tbaa !188
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 145, i32 noundef 11) #8, !dbg !1398
  br label %74, !dbg !1398

54:                                               ; preds = %32
  tail call void @llvm.dbg.value(metadata double %20, metadata !1348, metadata !DIExpression()), !dbg !1357
  %55 = fadd double %35, %36, !dbg !1400
  %56 = fsub double %33, %34, !dbg !1401
  %57 = fdiv double %55, %56, !dbg !1402
  %58 = tail call double @llvm.fabs.f64(double %57), !dbg !1403
  %59 = fcmp ogt double %58, 0x3CB0000000000000, !dbg !1404
  br i1 %59, label %10, label %60, !dbg !1405, !llvm.loop !1406

60:                                               ; preds = %54
  store double %56, ptr %4, align 8, !dbg !1408, !tbaa !183
  %61 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !1409
  %62 = fadd double %33, %34, !dbg !1410
  %63 = fmul double %62, 0x3CC0000000000000, !dbg !1411
  %64 = fadd double %63, %55, !dbg !1412
  store double %64, ptr %61, align 8, !dbg !1412, !tbaa !188
  %65 = tail call double @sqrt(double noundef %20) #8, !dbg !1413
  %66 = fmul double %65, 2.000000e+00, !dbg !1414
  %67 = fadd double %66, 1.000000e+00, !dbg !1415
  %68 = fmul double %67, 0x3CC0000000000000, !dbg !1416
  %69 = load double, ptr %4, align 8, !dbg !1417, !tbaa !183
  %70 = tail call double @llvm.fabs.f64(double %69), !dbg !1418
  %71 = fmul double %70, %68, !dbg !1419
  %72 = load double, ptr %61, align 8, !dbg !1420, !tbaa !188
  %73 = fadd double %72, %71, !dbg !1420
  store double %73, ptr %61, align 8, !dbg !1420, !tbaa !188
  br label %74, !dbg !1421

74:                                               ; preds = %38, %60, %9
  %75 = phi i32 [ 1, %9 ], [ 11, %38 ], [ 0, %60 ], !dbg !1422
  ret i32 %75, !dbg !1423
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define internal fastcc i32 @hyperg_2F1_conj_luke(double noundef %0, double noundef %1, double noundef %2, double noundef %3, ptr nocapture noundef writeonly %4) unnamed_addr #4 !dbg !1424 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !1426, metadata !DIExpression()), !dbg !1468
  tail call void @llvm.dbg.value(metadata double %1, metadata !1427, metadata !DIExpression()), !dbg !1468
  tail call void @llvm.dbg.value(metadata double %2, metadata !1428, metadata !DIExpression()), !dbg !1468
  tail call void @llvm.dbg.value(metadata double %3, metadata !1429, metadata !DIExpression()), !dbg !1468
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1430, metadata !DIExpression()), !dbg !1468
  tail call void @llvm.dbg.value(metadata double 1.000000e+50, metadata !1432, metadata !DIExpression()), !dbg !1468
  tail call void @llvm.dbg.value(metadata i32 10000, metadata !1433, metadata !DIExpression()), !dbg !1468
  tail call void @llvm.dbg.value(metadata i32 3, metadata !1434, metadata !DIExpression()), !dbg !1468
  %6 = fneg double %3, !dbg !1469
  tail call void @llvm.dbg.value(metadata double %6, metadata !1435, metadata !DIExpression()), !dbg !1468
  %7 = fmul double %3, %3, !dbg !1470
  %8 = fmul double %7, %6, !dbg !1471
  tail call void @llvm.dbg.value(metadata double %8, metadata !1436, metadata !DIExpression()), !dbg !1468
  %9 = fmul double %0, %0, !dbg !1472
  %10 = fmul double %1, %1, !dbg !1473
  %11 = fadd double %9, %10, !dbg !1474
  tail call void @llvm.dbg.value(metadata double %11, metadata !1437, metadata !DIExpression()), !dbg !1468
  %12 = fmul double %0, 2.000000e+00, !dbg !1475
  tail call void @llvm.dbg.value(metadata double %12, metadata !1438, metadata !DIExpression()), !dbg !1468
  %13 = fdiv double %11, %2, !dbg !1476
  tail call void @llvm.dbg.value(metadata double %13, metadata !1439, metadata !DIExpression()), !dbg !1468
  %14 = fadd double %12, %11, !dbg !1477
  %15 = fadd double %14, 1.000000e+00, !dbg !1478
  %16 = fmul double %2, 2.000000e+00, !dbg !1479
  %17 = fdiv double %15, %16, !dbg !1480
  tail call void @llvm.dbg.value(metadata double %17, metadata !1440, metadata !DIExpression()), !dbg !1468
  %18 = fmul double %12, 2.000000e+00, !dbg !1481
  %19 = fadd double %18, %11, !dbg !1482
  %20 = fadd double %19, 4.000000e+00, !dbg !1483
  %21 = fadd double %2, 1.000000e+00, !dbg !1484
  %22 = fmul double %21, 2.000000e+00, !dbg !1485
  %23 = fdiv double %20, %22, !dbg !1486
  tail call void @llvm.dbg.value(metadata double %23, metadata !1441, metadata !DIExpression()), !dbg !1468
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !1442, metadata !DIExpression()), !dbg !1468
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !1444, metadata !DIExpression()), !dbg !1468
  %24 = fmul double %17, %3, !dbg !1487
  %25 = fsub double 1.000000e+00, %24, !dbg !1487
  tail call void @llvm.dbg.value(metadata double %25, metadata !1445, metadata !DIExpression()), !dbg !1468
  %26 = fmul double %23, %6, !dbg !1488
  %27 = fdiv double %17, 3.000000e+00, !dbg !1489
  %28 = fmul double %27, %3, !dbg !1490
  %29 = fsub double 1.000000e+00, %28, !dbg !1490
  %30 = fmul double %26, %29, !dbg !1491
  %31 = fadd double %30, 1.000000e+00, !dbg !1492
  tail call void @llvm.dbg.value(metadata double %31, metadata !1446, metadata !DIExpression()), !dbg !1468
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !1447, metadata !DIExpression()), !dbg !1468
  %32 = fmul double %13, %3, !dbg !1493
  %33 = fadd double %32, %25, !dbg !1493
  tail call void @llvm.dbg.value(metadata double %33, metadata !1448, metadata !DIExpression()), !dbg !1468
  %34 = fadd double %26, 1.000000e+00, !dbg !1494
  %35 = fmul double %13, %34, !dbg !1495
  %36 = fmul double %35, %3, !dbg !1496
  %37 = fadd double %36, %31, !dbg !1496
  %38 = fmul double %13, %17, !dbg !1497
  %39 = fdiv double %2, %21, !dbg !1498
  %40 = fmul double %39, %38, !dbg !1499
  %41 = fmul double %40, %6, !dbg !1500
  %42 = fmul double %41, %3, !dbg !1501
  %43 = fsub double %37, %42, !dbg !1501
  tail call void @llvm.dbg.value(metadata double %43, metadata !1449, metadata !DIExpression()), !dbg !1468
  %44 = fadd double %12, -6.000000e+00
  %45 = fadd double %12, 6.000000e+00
  br label %46, !dbg !1502

46:                                               ; preds = %166, %5
  %47 = phi double [ %43, %5 ], [ %171, %166 ], !dbg !1503
  %48 = phi double [ %33, %5 ], [ %167, %166 ], !dbg !1504
  %49 = phi double [ 1.000000e+00, %5 ], [ %168, %166 ], !dbg !1505
  %50 = phi double [ %31, %5 ], [ %172, %166 ], !dbg !1506
  %51 = phi double [ %25, %5 ], [ %169, %166 ], !dbg !1507
  %52 = phi double [ 1.000000e+00, %5 ], [ %170, %166 ], !dbg !1508
  %53 = phi double [ 1.000000e+00, %5 ], [ %135, %166 ], !dbg !1468
  %54 = phi i32 [ 3, %5 ], [ %173, %166 ], !dbg !1509
  tail call void @llvm.dbg.value(metadata i32 %54, metadata !1434, metadata !DIExpression()), !dbg !1468
  tail call void @llvm.dbg.value(metadata double %53, metadata !1442, metadata !DIExpression()), !dbg !1468
  tail call void @llvm.dbg.value(metadata double %52, metadata !1444, metadata !DIExpression()), !dbg !1468
  tail call void @llvm.dbg.value(metadata double %51, metadata !1445, metadata !DIExpression()), !dbg !1468
  tail call void @llvm.dbg.value(metadata double %50, metadata !1446, metadata !DIExpression()), !dbg !1468
  tail call void @llvm.dbg.value(metadata double %49, metadata !1447, metadata !DIExpression()), !dbg !1468
  tail call void @llvm.dbg.value(metadata double %48, metadata !1448, metadata !DIExpression()), !dbg !1468
  tail call void @llvm.dbg.value(metadata double %47, metadata !1449, metadata !DIExpression()), !dbg !1468
  %55 = add nsw i32 %54, -1, !dbg !1510
  %56 = sitofp i32 %55 to double, !dbg !1511
  tail call void @llvm.dbg.value(metadata double %56, metadata !1450, metadata !DIExpression()), !dbg !1512
  %57 = add nsw i32 %54, -2, !dbg !1513
  %58 = sitofp i32 %57 to double, !dbg !1514
  tail call void @llvm.dbg.value(metadata double %58, metadata !1452, metadata !DIExpression()), !dbg !1512
  %59 = fmul double %12, %56, !dbg !1515
  %60 = fadd double %11, %59, !dbg !1516
  %61 = fmul double %56, %56, !dbg !1517
  %62 = fadd double %61, %60, !dbg !1518
  tail call void @llvm.dbg.value(metadata double %62, metadata !1453, metadata !DIExpression()), !dbg !1512
  %63 = fmul double %12, %58, !dbg !1519
  %64 = fadd double %11, %63, !dbg !1520
  %65 = fmul double %58, %58, !dbg !1521
  %66 = fadd double %65, %64, !dbg !1522
  tail call void @llvm.dbg.value(metadata double %66, metadata !1454, metadata !DIExpression()), !dbg !1512
  %67 = fadd double %56, %2, !dbg !1523
  tail call void @llvm.dbg.value(metadata double %67, metadata !1455, metadata !DIExpression()), !dbg !1512
  %68 = fadd double %58, %2, !dbg !1524
  tail call void @llvm.dbg.value(metadata double %68, metadata !1456, metadata !DIExpression()), !dbg !1512
  %69 = shl nuw nsw i32 %54, 1, !dbg !1525
  %70 = add nsw i32 %69, -1, !dbg !1526
  %71 = sitofp i32 %70 to double, !dbg !1527
  tail call void @llvm.dbg.value(metadata double %71, metadata !1457, metadata !DIExpression()), !dbg !1512
  %72 = add nsw i32 %69, -3, !dbg !1528
  %73 = sitofp i32 %72 to double, !dbg !1529
  tail call void @llvm.dbg.value(metadata double %73, metadata !1458, metadata !DIExpression()), !dbg !1512
  %74 = add nsw i32 %69, -5, !dbg !1530
  %75 = sitofp i32 %74 to double, !dbg !1531
  tail call void @llvm.dbg.value(metadata double %75, metadata !1459, metadata !DIExpression()), !dbg !1512
  %76 = mul nsw i32 %54, %54, !dbg !1532
  %77 = sitofp i32 %76 to double, !dbg !1533
  tail call void @llvm.dbg.value(metadata double %77, metadata !1460, metadata !DIExpression()), !dbg !1512
  %78 = fmul double %77, 3.000000e+00, !dbg !1534
  %79 = sitofp i32 %54 to double, !dbg !1535
  %80 = fmul double %44, %79, !dbg !1536
  %81 = fadd double %80, %78, !dbg !1537
  %82 = fadd double %81, 2.000000e+00, !dbg !1538
  %83 = fsub double %82, %11, !dbg !1539
  %84 = fsub double %83, %18, !dbg !1540
  %85 = fmul double %73, 2.000000e+00, !dbg !1541
  %86 = fmul double %67, %85, !dbg !1542
  %87 = fdiv double %84, %86, !dbg !1543
  tail call void @llvm.dbg.value(metadata double %87, metadata !1461, metadata !DIExpression()), !dbg !1512
  %88 = fmul double %45, %79, !dbg !1544
  %89 = fsub double %78, %88, !dbg !1545
  %90 = fadd double %89, 2.000000e+00, !dbg !1546
  %91 = fsub double %90, %11, !dbg !1547
  %92 = fneg double %91, !dbg !1548
  %93 = fmul double %62, %92, !dbg !1549
  %94 = fmul double %71, 4.000000e+00, !dbg !1550
  %95 = fmul double %94, %73, !dbg !1551
  %96 = fmul double %68, %95, !dbg !1552
  %97 = fmul double %67, %96, !dbg !1553
  %98 = fdiv double %93, %97, !dbg !1554
  tail call void @llvm.dbg.value(metadata double %98, metadata !1462, metadata !DIExpression()), !dbg !1512
  %99 = fmul double %66, %62, !dbg !1555
  %100 = fsub double %65, %63, !dbg !1556
  %101 = fadd double %11, %100, !dbg !1557
  %102 = fmul double %101, %99, !dbg !1558
  %103 = fmul double %73, 8.000000e+00, !dbg !1559
  %104 = fmul double %103, %73, !dbg !1560
  %105 = fmul double %104, %75, !dbg !1561
  %106 = fadd double %79, %2, !dbg !1562
  %107 = fadd double %106, -3.000000e+00, !dbg !1563
  %108 = fmul double %107, %105, !dbg !1564
  %109 = fmul double %68, %108, !dbg !1565
  %110 = fmul double %67, %109, !dbg !1566
  %111 = fdiv double %102, %110, !dbg !1567
  tail call void @llvm.dbg.value(metadata double %111, metadata !1463, metadata !DIExpression()), !dbg !1512
  %112 = fneg double %62, !dbg !1568
  %113 = fsub double %79, %2, !dbg !1569
  %114 = fadd double %113, -1.000000e+00, !dbg !1570
  %115 = fmul double %114, %112, !dbg !1571
  %116 = fmul double %68, %85, !dbg !1572
  %117 = fmul double %67, %116, !dbg !1573
  %118 = fdiv double %115, %117, !dbg !1574
  tail call void @llvm.dbg.value(metadata double %118, metadata !1464, metadata !DIExpression()), !dbg !1512
  %119 = fmul double %87, %3, !dbg !1575
  %120 = fsub double 1.000000e+00, %119, !dbg !1575
  %121 = fmul double %47, %120, !dbg !1576
  %122 = fmul double %98, %3, !dbg !1577
  %123 = fsub double %118, %122, !dbg !1577
  %124 = fmul double %123, %6, !dbg !1578
  %125 = fmul double %48, %124, !dbg !1579
  %126 = fadd double %121, %125, !dbg !1580
  %127 = fmul double %8, %111, !dbg !1581
  %128 = fmul double %49, %127, !dbg !1582
  %129 = fadd double %128, %126, !dbg !1583
  tail call void @llvm.dbg.value(metadata double %129, metadata !1465, metadata !DIExpression()), !dbg !1512
  %130 = fmul double %50, %120, !dbg !1584
  %131 = fmul double %51, %124, !dbg !1585
  %132 = fadd double %130, %131, !dbg !1586
  %133 = fmul double %52, %127, !dbg !1587
  %134 = fadd double %133, %132, !dbg !1588
  tail call void @llvm.dbg.value(metadata double %134, metadata !1466, metadata !DIExpression()), !dbg !1512
  %135 = fdiv double %129, %134, !dbg !1589
  tail call void @llvm.dbg.value(metadata double %135, metadata !1467, metadata !DIExpression()), !dbg !1512
  %136 = fsub double %53, %135, !dbg !1590
  %137 = fdiv double %136, %53, !dbg !1591
  %138 = tail call double @llvm.fabs.f64(double %137), !dbg !1591
  tail call void @llvm.dbg.value(metadata double %138, metadata !1443, metadata !DIExpression()), !dbg !1468
  tail call void @llvm.dbg.value(metadata double %135, metadata !1442, metadata !DIExpression()), !dbg !1468
  %139 = fcmp olt double %138, 0x3CB0000000000000, !dbg !1592
  %140 = icmp ugt i32 %54, 10000
  %141 = select i1 %139, i1 true, i1 %140, !dbg !1594
  br i1 %141, label %174, label %142, !dbg !1594

142:                                              ; preds = %46
  %143 = tail call double @llvm.fabs.f64(double %129), !dbg !1595
  %144 = fcmp ogt double %143, 1.000000e+50, !dbg !1597
  br i1 %144, label %148, label %145, !dbg !1598

145:                                              ; preds = %142
  %146 = tail call double @llvm.fabs.f64(double %134), !dbg !1599
  %147 = fcmp ogt double %146, 1.000000e+50, !dbg !1600
  br i1 %147, label %148, label %155, !dbg !1601

148:                                              ; preds = %145, %142
  %149 = fdiv double %129, 1.000000e+50, !dbg !1602
  tail call void @llvm.dbg.value(metadata double %149, metadata !1465, metadata !DIExpression()), !dbg !1512
  %150 = fdiv double %134, 1.000000e+50, !dbg !1604
  tail call void @llvm.dbg.value(metadata double %150, metadata !1466, metadata !DIExpression()), !dbg !1512
  %151 = fdiv double %47, 1.000000e+50, !dbg !1605
  tail call void @llvm.dbg.value(metadata double %151, metadata !1449, metadata !DIExpression()), !dbg !1468
  %152 = fdiv double %50, 1.000000e+50, !dbg !1606
  tail call void @llvm.dbg.value(metadata double %152, metadata !1446, metadata !DIExpression()), !dbg !1468
  %153 = fdiv double %48, 1.000000e+50, !dbg !1607
  tail call void @llvm.dbg.value(metadata double %153, metadata !1448, metadata !DIExpression()), !dbg !1468
  %154 = fdiv double %51, 1.000000e+50, !dbg !1608
  tail call void @llvm.dbg.value(metadata double %154, metadata !1445, metadata !DIExpression()), !dbg !1468
  tail call void @llvm.dbg.value(metadata double poison, metadata !1447, metadata !DIExpression()), !dbg !1468
  tail call void @llvm.dbg.value(metadata double poison, metadata !1444, metadata !DIExpression()), !dbg !1468
  br label %166, !dbg !1609

155:                                              ; preds = %145
  %156 = fcmp olt double %143, 0x358DEE7A4AD4B81E, !dbg !1610
  %157 = fcmp olt double %146, 0x358DEE7A4AD4B81E
  %158 = or i1 %156, %157, !dbg !1612
  br i1 %158, label %159, label %166, !dbg !1612

159:                                              ; preds = %155
  %160 = fmul double %129, 1.000000e+50, !dbg !1613
  tail call void @llvm.dbg.value(metadata double %160, metadata !1465, metadata !DIExpression()), !dbg !1512
  %161 = fmul double %134, 1.000000e+50, !dbg !1615
  tail call void @llvm.dbg.value(metadata double %161, metadata !1466, metadata !DIExpression()), !dbg !1512
  %162 = fmul double %47, 1.000000e+50, !dbg !1616
  tail call void @llvm.dbg.value(metadata double %162, metadata !1449, metadata !DIExpression()), !dbg !1468
  %163 = fmul double %50, 1.000000e+50, !dbg !1617
  tail call void @llvm.dbg.value(metadata double %163, metadata !1446, metadata !DIExpression()), !dbg !1468
  %164 = fmul double %48, 1.000000e+50, !dbg !1618
  tail call void @llvm.dbg.value(metadata double %164, metadata !1448, metadata !DIExpression()), !dbg !1468
  %165 = fmul double %51, 1.000000e+50, !dbg !1619
  tail call void @llvm.dbg.value(metadata double %165, metadata !1445, metadata !DIExpression()), !dbg !1468
  tail call void @llvm.dbg.value(metadata double poison, metadata !1447, metadata !DIExpression()), !dbg !1468
  tail call void @llvm.dbg.value(metadata double poison, metadata !1444, metadata !DIExpression()), !dbg !1468
  br label %166, !dbg !1620

166:                                              ; preds = %148, %159, %155
  %167 = phi double [ %151, %148 ], [ %162, %159 ], [ %47, %155 ], !dbg !1468
  %168 = phi double [ %153, %148 ], [ %164, %159 ], [ %48, %155 ], !dbg !1468
  %169 = phi double [ %152, %148 ], [ %163, %159 ], [ %50, %155 ], !dbg !1468
  %170 = phi double [ %154, %148 ], [ %165, %159 ], [ %51, %155 ], !dbg !1468
  %171 = phi double [ %149, %148 ], [ %160, %159 ], [ %129, %155 ], !dbg !1512
  %172 = phi double [ %150, %148 ], [ %161, %159 ], [ %134, %155 ], !dbg !1512
  tail call void @llvm.dbg.value(metadata double %172, metadata !1466, metadata !DIExpression()), !dbg !1512
  tail call void @llvm.dbg.value(metadata double %171, metadata !1465, metadata !DIExpression()), !dbg !1512
  tail call void @llvm.dbg.value(metadata double %170, metadata !1445, metadata !DIExpression()), !dbg !1468
  tail call void @llvm.dbg.value(metadata double %169, metadata !1446, metadata !DIExpression()), !dbg !1468
  tail call void @llvm.dbg.value(metadata double %168, metadata !1448, metadata !DIExpression()), !dbg !1468
  tail call void @llvm.dbg.value(metadata double %167, metadata !1449, metadata !DIExpression()), !dbg !1468
  %173 = add nuw nsw i32 %54, 1, !dbg !1621
  tail call void @llvm.dbg.value(metadata i32 %173, metadata !1434, metadata !DIExpression()), !dbg !1468
  tail call void @llvm.dbg.value(metadata double %170, metadata !1444, metadata !DIExpression()), !dbg !1468
  tail call void @llvm.dbg.value(metadata double %169, metadata !1445, metadata !DIExpression()), !dbg !1468
  tail call void @llvm.dbg.value(metadata double %172, metadata !1446, metadata !DIExpression()), !dbg !1468
  tail call void @llvm.dbg.value(metadata double %168, metadata !1447, metadata !DIExpression()), !dbg !1468
  tail call void @llvm.dbg.value(metadata double %167, metadata !1448, metadata !DIExpression()), !dbg !1468
  tail call void @llvm.dbg.value(metadata double %171, metadata !1449, metadata !DIExpression()), !dbg !1468
  br label %46

174:                                              ; preds = %46
  tail call void @llvm.dbg.value(metadata i32 %54, metadata !1434, metadata !DIExpression()), !dbg !1468
  tail call void @llvm.dbg.value(metadata double poison, metadata !1444, metadata !DIExpression()), !dbg !1468
  tail call void @llvm.dbg.value(metadata double poison, metadata !1445, metadata !DIExpression()), !dbg !1468
  tail call void @llvm.dbg.value(metadata double poison, metadata !1446, metadata !DIExpression()), !dbg !1468
  tail call void @llvm.dbg.value(metadata double poison, metadata !1447, metadata !DIExpression()), !dbg !1468
  tail call void @llvm.dbg.value(metadata double poison, metadata !1448, metadata !DIExpression()), !dbg !1468
  tail call void @llvm.dbg.value(metadata double poison, metadata !1449, metadata !DIExpression()), !dbg !1468
  store double %135, ptr %4, align 8, !dbg !1622, !tbaa !183
  %175 = fmul double %135, %138, !dbg !1623
  %176 = tail call double @llvm.fabs.f64(double %175), !dbg !1624
  %177 = fmul double %176, 2.000000e+00, !dbg !1625
  %178 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !1626
  %179 = fadd double %79, 1.000000e+00, !dbg !1627
  %180 = fmul double %179, 0x3CC0000000000000, !dbg !1628
  %181 = tail call double @llvm.fabs.f64(double %135), !dbg !1629
  %182 = fmul double %180, %181, !dbg !1630
  %183 = fadd double %182, %177, !dbg !1631
  %184 = tail call double @llvm.fabs.f64(double %0), !dbg !1632
  %185 = tail call double @llvm.fabs.f64(double %1), !dbg !1633
  %186 = fadd double %184, %185, !dbg !1634
  %187 = fadd double %186, 1.000000e+00, !dbg !1635
  %188 = fmul double %187, 8.000000e+00, !dbg !1636
  %189 = fmul double %188, %183, !dbg !1637
  store double %189, ptr %178, align 8, !dbg !1637, !tbaa !188
  %190 = icmp ugt i32 %54, 9999, !dbg !1638
  %191 = select i1 %190, i32 11, i32 0, !dbg !1639
  tail call void @llvm.dbg.value(metadata i32 %191, metadata !1431, metadata !DIExpression()), !dbg !1468
  ret i32 %191, !dbg !1640
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_hyperg_2F1_renorm_e(double noundef %0, double noundef %1, double noundef %2, double noundef %3, ptr noundef %4) local_unnamed_addr #0 !dbg !1641 {
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1684
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1654, metadata !DIExpression(), metadata !1684, metadata ptr %6, metadata !DIExpression()), !dbg !1685
  %7 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1686
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1659, metadata !DIExpression(), metadata !1686, metadata ptr %7, metadata !DIExpression()), !dbg !1685
  %8 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1687
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1660, metadata !DIExpression(), metadata !1687, metadata ptr %8, metadata !DIExpression()), !dbg !1685
  %9 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1688
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1661, metadata !DIExpression(), metadata !1688, metadata ptr %9, metadata !DIExpression()), !dbg !1685
  %10 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1689
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1662, metadata !DIExpression(), metadata !1689, metadata ptr %10, metadata !DIExpression()), !dbg !1685
  %11 = alloca double, align 8, !DIAssignID !1690
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1663, metadata !DIExpression(), metadata !1690, metadata ptr %11, metadata !DIExpression()), !dbg !1685
  %12 = alloca double, align 8, !DIAssignID !1691
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1664, metadata !DIExpression(), metadata !1691, metadata ptr %12, metadata !DIExpression()), !dbg !1685
  %13 = alloca double, align 8, !DIAssignID !1692
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1665, metadata !DIExpression(), metadata !1692, metadata ptr %13, metadata !DIExpression()), !dbg !1685
  %14 = alloca double, align 8, !DIAssignID !1693
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1666, metadata !DIExpression(), metadata !1693, metadata ptr %14, metadata !DIExpression()), !dbg !1685
  %15 = alloca double, align 8, !DIAssignID !1694
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1667, metadata !DIExpression(), metadata !1694, metadata ptr %15, metadata !DIExpression()), !dbg !1685
  %16 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1695
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1669, metadata !DIExpression(), metadata !1695, metadata ptr %16, metadata !DIExpression()), !dbg !1696
  %17 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1697
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1677, metadata !DIExpression(), metadata !1697, metadata ptr %17, metadata !DIExpression()), !dbg !1698
  %18 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1699
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1679, metadata !DIExpression(), metadata !1699, metadata ptr %18, metadata !DIExpression()), !dbg !1698
  %19 = alloca double, align 8, !DIAssignID !1700
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1680, metadata !DIExpression(), metadata !1700, metadata ptr %19, metadata !DIExpression()), !dbg !1698
  tail call void @llvm.dbg.value(metadata double %0, metadata !1643, metadata !DIExpression()), !dbg !1701
  tail call void @llvm.dbg.value(metadata double %1, metadata !1644, metadata !DIExpression()), !dbg !1701
  tail call void @llvm.dbg.value(metadata double %2, metadata !1645, metadata !DIExpression()), !dbg !1701
  tail call void @llvm.dbg.value(metadata double %3, metadata !1646, metadata !DIExpression()), !dbg !1701
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1647, metadata !DIExpression()), !dbg !1701
  tail call void @llvm.dbg.value(metadata double poison, metadata !1648, metadata !DIExpression()), !dbg !1701
  %20 = fadd double %1, 5.000000e-01, !dbg !1702
  %21 = tail call double @llvm.floor.f64(double %20), !dbg !1703
  tail call void @llvm.dbg.value(metadata double %21, metadata !1649, metadata !DIExpression()), !dbg !1701
  %22 = fadd double %2, 5.000000e-01, !dbg !1704
  %23 = tail call double @llvm.floor.f64(double %22), !dbg !1705
  tail call void @llvm.dbg.value(metadata double %23, metadata !1650, metadata !DIExpression()), !dbg !1701
  %24 = fcmp olt double %0, 0.000000e+00, !dbg !1706
  br i1 %24, label %25, label %31, !dbg !1707

25:                                               ; preds = %5
  %26 = fadd double %0, 5.000000e-01, !dbg !1708
  %27 = tail call double @llvm.floor.f64(double %26), !dbg !1709
  tail call void @llvm.dbg.value(metadata double %27, metadata !1648, metadata !DIExpression()), !dbg !1701
  %28 = fsub double %0, %27, !dbg !1710
  %29 = tail call double @llvm.fabs.f64(double %28), !dbg !1711
  %30 = fcmp olt double %29, 0x3D4F400000000000, !dbg !1712
  br label %31

31:                                               ; preds = %25, %5
  %32 = phi i1 [ false, %5 ], [ %30, %25 ], !dbg !1701
  tail call void @llvm.dbg.value(metadata i1 %32, metadata !1651, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1701
  tail call void @llvm.dbg.value(metadata i1 poison, metadata !1652, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1701
  %33 = fcmp olt double %2, 0.000000e+00, !dbg !1713
  %34 = fsub double %2, %23, !dbg !1714
  %35 = tail call double @llvm.fabs.f64(double %34), !dbg !1714
  %36 = fcmp olt double %35, 0x3D4F400000000000, !dbg !1714
  %37 = and i1 %33, %36, !dbg !1714
  tail call void @llvm.dbg.value(metadata i1 %37, metadata !1653, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1701
  br i1 %37, label %38, label %112, !dbg !1715

38:                                               ; preds = %31
  %39 = fcmp olt double %1, 0.000000e+00, !dbg !1716
  %40 = fsub double %1, %21, !dbg !1717
  %41 = tail call double @llvm.fabs.f64(double %40), !dbg !1717
  %42 = fcmp olt double %41, 0x3D4F400000000000, !dbg !1717
  %43 = and i1 %39, %42, !dbg !1717
  tail call void @llvm.dbg.value(metadata i1 %43, metadata !1652, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1701
  %44 = fadd double %2, 1.000000e-01
  %45 = fcmp olt double %44, %0
  %46 = and i1 %45, %32, !dbg !1718
  %47 = fcmp olt double %44, %1
  %48 = and i1 %47, %43
  %49 = or i1 %48, %46, !dbg !1718
  br i1 %49, label %50, label %51, !dbg !1718

50:                                               ; preds = %38
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false), !dbg !1719
  br label %129, !dbg !1721

51:                                               ; preds = %38
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #8, !dbg !1722
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #8, !dbg !1722
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #8, !dbg !1722
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #8, !dbg !1722
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #8, !dbg !1722
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #8, !dbg !1723
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #8, !dbg !1723
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #8, !dbg !1723
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #8, !dbg !1723
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #8, !dbg !1723
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1668, metadata !DIExpression()), !dbg !1685
  %52 = fsub double %0, %2, !dbg !1724
  %53 = fadd double %52, 1.000000e+00, !dbg !1725
  %54 = call i32 @gsl_sf_lngamma_sgn_e(double noundef %53, ptr noundef nonnull %6, ptr noundef nonnull %11) #8, !dbg !1726
  tail call void @llvm.dbg.value(metadata i32 %54, metadata !1668, metadata !DIExpression()), !dbg !1685
  %55 = fsub double %1, %2, !dbg !1727
  %56 = fadd double %55, 1.000000e+00, !dbg !1728
  %57 = call i32 @gsl_sf_lngamma_sgn_e(double noundef %56, ptr noundef nonnull %7, ptr noundef nonnull %12) #8, !dbg !1729
  %58 = add nsw i32 %57, %54, !dbg !1730
  tail call void @llvm.dbg.value(metadata i32 %58, metadata !1668, metadata !DIExpression()), !dbg !1685
  %59 = call i32 @gsl_sf_lngamma_sgn_e(double noundef %0, ptr noundef nonnull %8, ptr noundef nonnull %13) #8, !dbg !1731
  %60 = add nsw i32 %58, %59, !dbg !1732
  tail call void @llvm.dbg.value(metadata i32 %60, metadata !1668, metadata !DIExpression()), !dbg !1685
  %61 = call i32 @gsl_sf_lngamma_sgn_e(double noundef %1, ptr noundef nonnull %9, ptr noundef nonnull %14) #8, !dbg !1733
  %62 = add nsw i32 %60, %61, !dbg !1734
  tail call void @llvm.dbg.value(metadata i32 %62, metadata !1668, metadata !DIExpression()), !dbg !1685
  %63 = fsub double 2.000000e+00, %2, !dbg !1735
  %64 = call i32 @gsl_sf_lngamma_sgn_e(double noundef %63, ptr noundef nonnull %10, ptr noundef nonnull %15) #8, !dbg !1736
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 %62, i32 %64), metadata !1668, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !1685
  %65 = sub i32 0, %64, !dbg !1737
  %66 = icmp eq i32 %62, %65, !dbg !1737
  br i1 %66, label %69, label %67, !dbg !1738

67:                                               ; preds = %51
  store double 0x7FF8000000000000, ptr %4, align 8, !dbg !1739, !tbaa !183
  %68 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !1739
  store double 0x7FF8000000000000, ptr %68, align 8, !dbg !1739, !tbaa !188
  call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 854, i32 noundef 1) #8, !dbg !1742
  br label %110, !dbg !1742

69:                                               ; preds = %51
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %16) #8, !dbg !1744
  %70 = call i32 @gsl_sf_hyperg_2F1_e(double noundef %53, double noundef %56, double noundef %63, double noundef %3, ptr noundef nonnull %16), !dbg !1745
  tail call void @llvm.dbg.value(metadata i32 %70, metadata !1672, metadata !DIExpression()), !dbg !1696
  %71 = load double, ptr %6, align 8, !dbg !1746, !tbaa !183
  %72 = load double, ptr %7, align 8, !dbg !1747, !tbaa !183
  %73 = fadd double %71, %72, !dbg !1748
  %74 = load double, ptr %8, align 8, !dbg !1749, !tbaa !183
  %75 = fsub double %73, %74, !dbg !1750
  %76 = load double, ptr %9, align 8, !dbg !1751, !tbaa !183
  %77 = fsub double %75, %76, !dbg !1752
  %78 = load double, ptr %10, align 8, !dbg !1753, !tbaa !183
  %79 = fsub double %77, %78, !dbg !1754
  tail call void @llvm.dbg.value(metadata double %79, metadata !1673, metadata !DIExpression()), !dbg !1696
  %80 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !1755
  %81 = load double, ptr %80, align 8, !dbg !1755, !tbaa !188
  %82 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %7, i64 0, i32 1, !dbg !1756
  %83 = load double, ptr %82, align 8, !dbg !1756, !tbaa !188
  %84 = fadd double %81, %83, !dbg !1757
  %85 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %8, i64 0, i32 1, !dbg !1758
  %86 = load double, ptr %85, align 8, !dbg !1758, !tbaa !188
  %87 = fadd double %84, %86, !dbg !1759
  %88 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %9, i64 0, i32 1, !dbg !1760
  %89 = load double, ptr %88, align 8, !dbg !1760, !tbaa !188
  %90 = fadd double %87, %89, !dbg !1761
  %91 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %10, i64 0, i32 1, !dbg !1762
  %92 = load double, ptr %91, align 8, !dbg !1762, !tbaa !188
  %93 = fadd double %90, %92, !dbg !1763
  tail call void @llvm.dbg.value(metadata double %93, metadata !1674, metadata !DIExpression()), !dbg !1696
  %94 = load double, ptr %11, align 8, !dbg !1764, !tbaa !207
  %95 = load double, ptr %12, align 8, !dbg !1765, !tbaa !207
  %96 = fmul double %94, %95, !dbg !1766
  %97 = load double, ptr %13, align 8, !dbg !1767, !tbaa !207
  %98 = fmul double %96, %97, !dbg !1768
  %99 = load double, ptr %14, align 8, !dbg !1769, !tbaa !207
  %100 = fmul double %98, %99, !dbg !1770
  %101 = load double, ptr %15, align 8, !dbg !1771, !tbaa !207
  %102 = fmul double %100, %101, !dbg !1772
  tail call void @llvm.dbg.value(metadata double %102, metadata !1675, metadata !DIExpression()), !dbg !1696
  %103 = load double, ptr %16, align 8, !dbg !1773, !tbaa !183
  %104 = fmul double %102, %103, !dbg !1774
  %105 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %16, i64 0, i32 1, !dbg !1775
  %106 = load double, ptr %105, align 8, !dbg !1775, !tbaa !188
  %107 = call i32 @gsl_sf_exp_mult_err_e(double noundef %79, double noundef %93, double noundef %104, double noundef %106, ptr noundef %4) #8, !dbg !1776
  tail call void @llvm.dbg.value(metadata i32 %107, metadata !1676, metadata !DIExpression()), !dbg !1696
  %108 = icmp eq i32 %107, 0, !dbg !1777
  %109 = select i1 %108, i32 %70, i32 %107, !dbg !1777
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %16) #8, !dbg !1778
  br label %110

110:                                              ; preds = %69, %67
  %111 = phi i32 [ 1, %67 ], [ %109, %69 ], !dbg !1779
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #8, !dbg !1780
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #8, !dbg !1780
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #8, !dbg !1780
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #8, !dbg !1780
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #8, !dbg !1780
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #8, !dbg !1780
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #8, !dbg !1780
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #8, !dbg !1780
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #8, !dbg !1780
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #8, !dbg !1780
  br label %129

112:                                              ; preds = %31
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %17) #8, !dbg !1781
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %18) #8, !dbg !1782
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %19) #8, !dbg !1783
  %113 = call i32 @gsl_sf_lngamma_sgn_e(double noundef %2, ptr noundef nonnull %18, ptr noundef nonnull %19) #8, !dbg !1784
  tail call void @llvm.dbg.value(metadata i32 %113, metadata !1681, metadata !DIExpression()), !dbg !1698
  %114 = call i32 @gsl_sf_hyperg_2F1_e(double noundef %0, double noundef %1, double noundef %2, double noundef %3, ptr noundef nonnull %17), !dbg !1785
  tail call void @llvm.dbg.value(metadata i32 %114, metadata !1682, metadata !DIExpression()), !dbg !1698
  %115 = load double, ptr %18, align 8, !dbg !1786, !tbaa !183
  %116 = fneg double %115, !dbg !1787
  %117 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %18, i64 0, i32 1, !dbg !1788
  %118 = load double, ptr %117, align 8, !dbg !1788, !tbaa !188
  %119 = load double, ptr %19, align 8, !dbg !1789, !tbaa !207
  %120 = load double, ptr %17, align 8, !dbg !1790, !tbaa !183
  %121 = fmul double %119, %120, !dbg !1791
  %122 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %17, i64 0, i32 1, !dbg !1792
  %123 = load double, ptr %122, align 8, !dbg !1792, !tbaa !188
  %124 = call i32 @gsl_sf_exp_mult_err_e(double noundef %116, double noundef %118, double noundef %121, double noundef %123, ptr noundef %4) #8, !dbg !1793
  tail call void @llvm.dbg.value(metadata i32 %124, metadata !1683, metadata !DIExpression()), !dbg !1698
  %125 = icmp eq i32 %124, 0, !dbg !1794
  %126 = icmp eq i32 %114, 0, !dbg !1794
  %127 = select i1 %126, i32 %113, i32 %114, !dbg !1794
  %128 = select i1 %125, i32 %127, i32 %124, !dbg !1794
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %19) #8, !dbg !1795
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %18) #8, !dbg !1795
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %17) #8, !dbg !1795
  br label %129

129:                                              ; preds = %110, %112, %50
  %130 = phi i32 [ 0, %50 ], [ %111, %110 ], [ %128, %112 ], !dbg !1796
  ret i32 %130, !dbg !1797
}

declare !dbg !1798 i32 @gsl_sf_exp_mult_err_e(double noundef, double noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_hyperg_2F1_conj_renorm_e(double noundef %0, double noundef %1, double noundef %2, double noundef %3, ptr noundef %4) local_unnamed_addr #0 !dbg !1799 {
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1834
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1810, metadata !DIExpression(), metadata !1834, metadata ptr %6, metadata !DIExpression()), !dbg !1835
  %7 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1836
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1815, metadata !DIExpression(), metadata !1836, metadata ptr %7, metadata !DIExpression()), !dbg !1835
  %8 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1837
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1816, metadata !DIExpression(), metadata !1837, metadata ptr %8, metadata !DIExpression()), !dbg !1835
  %9 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1838
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1817, metadata !DIExpression(), metadata !1838, metadata ptr %9, metadata !DIExpression()), !dbg !1835
  %10 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1839
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1818, metadata !DIExpression(), metadata !1839, metadata ptr %10, metadata !DIExpression()), !dbg !1835
  %11 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1840
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1820, metadata !DIExpression(), metadata !1840, metadata ptr %11, metadata !DIExpression()), !dbg !1841
  %12 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1842
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1827, metadata !DIExpression(), metadata !1842, metadata ptr %12, metadata !DIExpression()), !dbg !1843
  %13 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1844
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1829, metadata !DIExpression(), metadata !1844, metadata ptr %13, metadata !DIExpression()), !dbg !1843
  %14 = alloca double, align 8, !DIAssignID !1845
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1830, metadata !DIExpression(), metadata !1845, metadata ptr %14, metadata !DIExpression()), !dbg !1843
  tail call void @llvm.dbg.value(metadata double %0, metadata !1801, metadata !DIExpression()), !dbg !1846
  tail call void @llvm.dbg.value(metadata double %1, metadata !1802, metadata !DIExpression()), !dbg !1846
  tail call void @llvm.dbg.value(metadata double %2, metadata !1803, metadata !DIExpression()), !dbg !1846
  tail call void @llvm.dbg.value(metadata double %3, metadata !1804, metadata !DIExpression()), !dbg !1846
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1805, metadata !DIExpression()), !dbg !1846
  %15 = fadd double %2, 5.000000e-01, !dbg !1847
  %16 = tail call double @llvm.floor.f64(double %15), !dbg !1848
  tail call void @llvm.dbg.value(metadata double %16, metadata !1806, metadata !DIExpression()), !dbg !1846
  tail call void @llvm.dbg.value(metadata double poison, metadata !1807, metadata !DIExpression()), !dbg !1846
  %17 = fcmp olt double %0, 0.000000e+00, !dbg !1849
  br i1 %17, label %18, label %26, !dbg !1850

18:                                               ; preds = %5
  %19 = fadd double %0, 5.000000e-01, !dbg !1851
  %20 = tail call double @llvm.floor.f64(double %19), !dbg !1852
  tail call void @llvm.dbg.value(metadata double %20, metadata !1807, metadata !DIExpression()), !dbg !1846
  %21 = fsub double %0, %20, !dbg !1853
  %22 = tail call double @llvm.fabs.f64(double %21), !dbg !1854
  %23 = fcmp olt double %22, 0x3D4F400000000000, !dbg !1855
  br i1 %23, label %24, label %26, !dbg !1856

24:                                               ; preds = %18
  %25 = fcmp oeq double %1, 0.000000e+00, !dbg !1857
  br label %26

26:                                               ; preds = %24, %18, %5
  %27 = phi i1 [ false, %18 ], [ false, %5 ], [ %25, %24 ], !dbg !1846
  tail call void @llvm.dbg.value(metadata i1 %27, metadata !1808, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1846
  %28 = fcmp olt double %2, 0.000000e+00, !dbg !1858
  %29 = fsub double %2, %16, !dbg !1859
  %30 = tail call double @llvm.fabs.f64(double %29), !dbg !1859
  %31 = fcmp olt double %30, 0x3D4F400000000000, !dbg !1859
  %32 = and i1 %28, %31, !dbg !1859
  tail call void @llvm.dbg.value(metadata i1 %32, metadata !1809, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1846
  br i1 %32, label %33, label %75, !dbg !1860

33:                                               ; preds = %26
  %34 = fadd double %2, 1.000000e-01
  %35 = fcmp olt double %34, %0
  %36 = and i1 %35, %27, !dbg !1861
  br i1 %36, label %37, label %38, !dbg !1861

37:                                               ; preds = %33
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false), !dbg !1862
  br label %92, !dbg !1864

38:                                               ; preds = %33
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #8, !dbg !1865
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #8, !dbg !1865
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #8, !dbg !1866
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #8, !dbg !1867
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #8, !dbg !1867
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1819, metadata !DIExpression()), !dbg !1835
  %39 = fsub double %0, %2, !dbg !1868
  %40 = fadd double %39, 1.000000e+00, !dbg !1869
  %41 = call i32 @gsl_sf_lngamma_complex_e(double noundef %40, double noundef %1, ptr noundef nonnull %6, ptr noundef nonnull %9) #8, !dbg !1870
  tail call void @llvm.dbg.value(metadata i32 %41, metadata !1819, metadata !DIExpression()), !dbg !1835
  %42 = call i32 @gsl_sf_lngamma_complex_e(double noundef %0, double noundef %1, ptr noundef nonnull %7, ptr noundef nonnull %10) #8, !dbg !1871
  %43 = add nsw i32 %42, %41, !dbg !1872
  tail call void @llvm.dbg.value(metadata i32 %43, metadata !1819, metadata !DIExpression()), !dbg !1835
  %44 = fsub double 2.000000e+00, %2, !dbg !1873
  %45 = call i32 @gsl_sf_lngamma_e(double noundef %44, ptr noundef nonnull %8) #8, !dbg !1874
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 %43, i32 %45), metadata !1819, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !1835
  %46 = sub i32 0, %45, !dbg !1875
  %47 = icmp eq i32 %43, %46, !dbg !1875
  br i1 %47, label %50, label %48, !dbg !1876

48:                                               ; preds = %38
  store double 0x7FF8000000000000, ptr %4, align 8, !dbg !1877, !tbaa !183
  %49 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !1877
  store double 0x7FF8000000000000, ptr %49, align 8, !dbg !1877, !tbaa !188
  call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 913, i32 noundef 1) #8, !dbg !1880
  br label %73, !dbg !1880

50:                                               ; preds = %38
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #8, !dbg !1882
  %51 = call i32 @gsl_sf_hyperg_2F1_conj_e(double noundef %40, double noundef %1, double noundef %44, double noundef %3, ptr noundef nonnull %11), !dbg !1883, !range !1884
  tail call void @llvm.dbg.value(metadata i32 %51, metadata !1823, metadata !DIExpression()), !dbg !1841
  %52 = load double, ptr %6, align 8, !dbg !1885, !tbaa !183
  %53 = load double, ptr %7, align 8, !dbg !1886, !tbaa !183
  %54 = fsub double %52, %53, !dbg !1887
  %55 = fmul double %54, 2.000000e+00, !dbg !1888
  %56 = load double, ptr %8, align 8, !dbg !1889, !tbaa !183
  %57 = fsub double %55, %56, !dbg !1890
  tail call void @llvm.dbg.value(metadata double %57, metadata !1824, metadata !DIExpression()), !dbg !1841
  %58 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !1891
  %59 = load double, ptr %58, align 8, !dbg !1891, !tbaa !188
  %60 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %7, i64 0, i32 1, !dbg !1892
  %61 = load double, ptr %60, align 8, !dbg !1892, !tbaa !188
  %62 = fadd double %59, %61, !dbg !1893
  %63 = fmul double %62, 2.000000e+00, !dbg !1894
  %64 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %8, i64 0, i32 1, !dbg !1895
  %65 = load double, ptr %64, align 8, !dbg !1895, !tbaa !188
  %66 = fadd double %65, %63, !dbg !1896
  tail call void @llvm.dbg.value(metadata double %66, metadata !1825, metadata !DIExpression()), !dbg !1841
  %67 = load double, ptr %11, align 8, !dbg !1897, !tbaa !183
  %68 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %11, i64 0, i32 1, !dbg !1898
  %69 = load double, ptr %68, align 8, !dbg !1898, !tbaa !188
  %70 = call i32 @gsl_sf_exp_mult_err_e(double noundef %57, double noundef %66, double noundef %67, double noundef %69, ptr noundef %4) #8, !dbg !1899
  tail call void @llvm.dbg.value(metadata i32 %70, metadata !1826, metadata !DIExpression()), !dbg !1841
  %71 = icmp eq i32 %70, 0, !dbg !1900
  %72 = select i1 %71, i32 %51, i32 %70, !dbg !1900
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #8, !dbg !1901
  br label %73

73:                                               ; preds = %50, %48
  %74 = phi i32 [ 1, %48 ], [ %72, %50 ], !dbg !1902
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #8, !dbg !1903
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #8, !dbg !1903
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #8, !dbg !1903
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #8, !dbg !1903
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #8, !dbg !1903
  br label %92

75:                                               ; preds = %26
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #8, !dbg !1904
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #8, !dbg !1905
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #8, !dbg !1906
  %76 = call i32 @gsl_sf_lngamma_sgn_e(double noundef %2, ptr noundef nonnull %13, ptr noundef nonnull %14) #8, !dbg !1907
  tail call void @llvm.dbg.value(metadata i32 %76, metadata !1831, metadata !DIExpression()), !dbg !1843
  %77 = call i32 @gsl_sf_hyperg_2F1_conj_e(double noundef %0, double noundef %1, double noundef %2, double noundef %3, ptr noundef nonnull %12), !dbg !1908, !range !1884
  tail call void @llvm.dbg.value(metadata i32 %77, metadata !1832, metadata !DIExpression()), !dbg !1843
  %78 = load double, ptr %13, align 8, !dbg !1909, !tbaa !183
  %79 = fneg double %78, !dbg !1910
  %80 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %13, i64 0, i32 1, !dbg !1911
  %81 = load double, ptr %80, align 8, !dbg !1911, !tbaa !188
  %82 = load double, ptr %14, align 8, !dbg !1912, !tbaa !207
  %83 = load double, ptr %12, align 8, !dbg !1913, !tbaa !183
  %84 = fmul double %82, %83, !dbg !1914
  %85 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %12, i64 0, i32 1, !dbg !1915
  %86 = load double, ptr %85, align 8, !dbg !1915, !tbaa !188
  %87 = call i32 @gsl_sf_exp_mult_err_e(double noundef %79, double noundef %81, double noundef %84, double noundef %86, ptr noundef %4) #8, !dbg !1916
  tail call void @llvm.dbg.value(metadata i32 %87, metadata !1833, metadata !DIExpression()), !dbg !1843
  %88 = icmp eq i32 %87, 0, !dbg !1917
  %89 = icmp eq i32 %77, 0, !dbg !1917
  %90 = select i1 %89, i32 %76, i32 %77, !dbg !1917
  %91 = select i1 %88, i32 %90, i32 %87, !dbg !1917
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #8, !dbg !1918
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #8, !dbg !1918
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #8, !dbg !1918
  br label %92

92:                                               ; preds = %73, %75, %37
  %93 = phi i32 [ 0, %37 ], [ %74, %73 ], [ %91, %75 ], !dbg !1919
  ret i32 %93, !dbg !1920
}

declare !dbg !1921 i32 @gsl_sf_lngamma_complex_e(double noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_hyperg_2F1(double noundef %0, double noundef %1, double noundef %2, double noundef %3) local_unnamed_addr #0 !dbg !1924 {
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1934
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1932, metadata !DIExpression(), metadata !1934, metadata ptr %5, metadata !DIExpression()), !dbg !1935
  tail call void @llvm.dbg.value(metadata double %0, metadata !1928, metadata !DIExpression()), !dbg !1935
  tail call void @llvm.dbg.value(metadata double %1, metadata !1929, metadata !DIExpression()), !dbg !1935
  tail call void @llvm.dbg.value(metadata double %2, metadata !1930, metadata !DIExpression()), !dbg !1935
  tail call void @llvm.dbg.value(metadata double %3, metadata !1931, metadata !DIExpression()), !dbg !1935
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #8, !dbg !1936
  %6 = call i32 @gsl_sf_hyperg_2F1_e(double noundef %0, double noundef %1, double noundef %2, double noundef %3, ptr noundef nonnull %5), !dbg !1936
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !1933, metadata !DIExpression()), !dbg !1935
  %7 = icmp eq i32 %6, 0, !dbg !1937
  br i1 %7, label %9, label %8, !dbg !1936

8:                                                ; preds = %4
  call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 948, i32 noundef %6) #8, !dbg !1939
  br label %9, !dbg !1939

9:                                                ; preds = %4, %8
  %10 = load double, ptr %5, align 8, !dbg !1936, !tbaa !183
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #8, !dbg !1942
  ret double %10, !dbg !1942
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_hyperg_2F1_conj(double noundef %0, double noundef %1, double noundef %2, double noundef %3) local_unnamed_addr #0 !dbg !1943 {
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1951
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1949, metadata !DIExpression(), metadata !1951, metadata ptr %5, metadata !DIExpression()), !dbg !1952
  tail call void @llvm.dbg.value(metadata double %0, metadata !1945, metadata !DIExpression()), !dbg !1952
  tail call void @llvm.dbg.value(metadata double %1, metadata !1946, metadata !DIExpression()), !dbg !1952
  tail call void @llvm.dbg.value(metadata double %2, metadata !1947, metadata !DIExpression()), !dbg !1952
  tail call void @llvm.dbg.value(metadata double %3, metadata !1948, metadata !DIExpression()), !dbg !1952
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #8, !dbg !1953
  %6 = call i32 @gsl_sf_hyperg_2F1_conj_e(double noundef %0, double noundef %1, double noundef %2, double noundef %3, ptr noundef nonnull %5), !dbg !1953, !range !1884
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !1950, metadata !DIExpression()), !dbg !1952
  %7 = icmp eq i32 %6, 0, !dbg !1954
  br i1 %7, label %9, label %8, !dbg !1953

8:                                                ; preds = %4
  tail call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 953, i32 noundef %6) #8, !dbg !1956
  br label %9, !dbg !1956

9:                                                ; preds = %4, %8
  %10 = load double, ptr %5, align 8, !dbg !1953, !tbaa !183
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #8, !dbg !1959
  ret double %10, !dbg !1959
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_hyperg_2F1_renorm(double noundef %0, double noundef %1, double noundef %2, double noundef %3) local_unnamed_addr #0 !dbg !1960 {
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1968
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1966, metadata !DIExpression(), metadata !1968, metadata ptr %5, metadata !DIExpression()), !dbg !1969
  tail call void @llvm.dbg.value(metadata double %0, metadata !1962, metadata !DIExpression()), !dbg !1969
  tail call void @llvm.dbg.value(metadata double %1, metadata !1963, metadata !DIExpression()), !dbg !1969
  tail call void @llvm.dbg.value(metadata double %2, metadata !1964, metadata !DIExpression()), !dbg !1969
  tail call void @llvm.dbg.value(metadata double %3, metadata !1965, metadata !DIExpression()), !dbg !1969
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #8, !dbg !1970
  %6 = call i32 @gsl_sf_hyperg_2F1_renorm_e(double noundef %0, double noundef %1, double noundef %2, double noundef %3, ptr noundef nonnull %5), !dbg !1970
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !1967, metadata !DIExpression()), !dbg !1969
  %7 = icmp eq i32 %6, 0, !dbg !1971
  br i1 %7, label %9, label %8, !dbg !1970

8:                                                ; preds = %4
  call void @gsl_error(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 958, i32 noundef %6) #8, !dbg !1973
  br label %9, !dbg !1973

9:                                                ; preds = %4, %8
  %10 = load double, ptr %5, align 8, !dbg !1970, !tbaa !183
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #8, !dbg !1976
  ret double %10, !dbg !1976
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_hyperg_2F1_conj_renorm(double noundef %0, double noundef %1, double noundef %2, double noundef %3) local_unnamed_addr #0 !dbg !1977 {
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1985
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1983, metadata !DIExpression(), metadata !1985, metadata ptr %5, metadata !DIExpression()), !dbg !1986
  tail call void @llvm.dbg.value(metadata double %0, metadata !1979, metadata !DIExpression()), !dbg !1986
  tail call void @llvm.dbg.value(metadata double %1, metadata !1980, metadata !DIExpression()), !dbg !1986
  tail call void @llvm.dbg.value(metadata double %2, metadata !1981, metadata !DIExpression()), !dbg !1986
  tail call void @llvm.dbg.value(metadata double %3, metadata !1982, metadata !DIExpression()), !dbg !1986
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #8, !dbg !1987
  %6 = call i32 @gsl_sf_hyperg_2F1_conj_renorm_e(double noundef %0, double noundef %1, double noundef %2, double noundef %3, ptr noundef nonnull %5), !dbg !1987
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !1984, metadata !DIExpression()), !dbg !1986
  %7 = icmp eq i32 %6, 0, !dbg !1988
  br i1 %7, label %9, label %8, !dbg !1987

8:                                                ; preds = %4
  call void @gsl_error(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 963, i32 noundef %6) #8, !dbg !1990
  br label %9, !dbg !1990

9:                                                ; preds = %4, %8
  %10 = load double, ptr %5, align 8, !dbg !1987, !tbaa !183
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #8, !dbg !1993
  ret double %10, !dbg !1993
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !1994 double @log(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !1998 double @sqrt(double noundef) local_unnamed_addr #5

declare !dbg !1999 i32 @gsl_sf_psi_e(double noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #6

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind }

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
!148 = !DILocation(line: 647, column: 22, scope: !93)
!149 = !DILocation(line: 647, column: 26, scope: !93)
!150 = !DILocation(line: 648, column: 32, scope: !93)
!151 = !DILocation(line: 648, column: 24, scope: !93)
!152 = !DILocation(line: 649, column: 32, scope: !93)
!153 = !DILocation(line: 649, column: 24, scope: !93)
!154 = !DILocation(line: 650, column: 32, scope: !93)
!155 = !DILocation(line: 650, column: 24, scope: !93)
!156 = !DILocation(line: 651, column: 33, scope: !93)
!157 = !DILocation(line: 651, column: 40, scope: !93)
!158 = !DILocation(line: 652, column: 33, scope: !93)
!159 = !DILocation(line: 652, column: 40, scope: !93)
!160 = !DILocation(line: 653, column: 33, scope: !93)
!161 = !DILocation(line: 653, column: 40, scope: !93)
!162 = !DILocation(line: 656, column: 11, scope: !93)
!163 = !DILocation(line: 660, column: 15, scope: !120)
!164 = !DILocation(line: 660, column: 7, scope: !120)
!165 = !DILocation(line: 660, column: 22, scope: !120)
!166 = !DILocation(line: 656, column: 15, scope: !93)
!167 = !DILocation(line: 660, column: 31, scope: !120)
!168 = !DILocation(line: 660, column: 46, scope: !120)
!169 = !DILocation(line: 660, column: 50, scope: !120)
!170 = !DILocation(line: 661, column: 5, scope: !119)
!171 = !DILocation(line: 662, column: 5, scope: !119)
!172 = !DILocation(line: 664, column: 17, scope: !119)
!173 = !DILocation(line: 665, column: 17, scope: !119)
!174 = !DILocation(line: 666, column: 17, scope: !119)
!175 = !DILocation(line: 667, column: 41, scope: !119)
!176 = !DILocation(line: 667, column: 17, scope: !119)
!177 = !DILocation(line: 669, column: 15, scope: !178)
!178 = distinct !DILexicalBlock(scope: !119, file: !2, line: 669, column: 9)
!179 = !DILocation(line: 669, column: 30, scope: !178)
!180 = !DILocation(line: 672, column: 9, scope: !181)
!181 = distinct !DILexicalBlock(scope: !182, file: !2, line: 672, column: 9)
!182 = distinct !DILexicalBlock(scope: !178, file: !2, line: 671, column: 7)
!183 = !{!184, !185, i64 0}
!184 = !{!"gsl_sf_result_struct", !185, i64 0, !185, i64 8}
!185 = !{!"double", !186, i64 0}
!186 = !{!"omnipotent char", !187, i64 0}
!187 = !{!"Simple C/C++ TBAA"}
!188 = !{!184, !185, i64 8}
!189 = !DILocation(line: 672, column: 9, scope: !190)
!190 = distinct !DILexicalBlock(scope: !181, file: !2, line: 672, column: 9)
!191 = !DILocation(line: 676, column: 32, scope: !119)
!192 = !DILocation(line: 676, column: 47, scope: !119)
!193 = !DILocation(line: 676, column: 36, scope: !119)
!194 = !DILocation(line: 676, column: 61, scope: !119)
!195 = !DILocation(line: 676, column: 51, scope: !119)
!196 = !DILocation(line: 676, column: 75, scope: !119)
!197 = !DILocation(line: 676, column: 65, scope: !119)
!198 = !DILocation(line: 677, column: 32, scope: !119)
!199 = !DILocation(line: 677, column: 47, scope: !119)
!200 = !DILocation(line: 677, column: 36, scope: !119)
!201 = !DILocation(line: 677, column: 61, scope: !119)
!202 = !DILocation(line: 677, column: 51, scope: !119)
!203 = !DILocation(line: 677, column: 75, scope: !119)
!204 = !DILocation(line: 677, column: 65, scope: !119)
!205 = !DILocation(line: 676, column: 7, scope: !119)
!206 = !DILocation(line: 680, column: 20, scope: !119)
!207 = !{!185, !185, i64 0}
!208 = !DILocation(line: 680, column: 34, scope: !119)
!209 = !DILocation(line: 680, column: 48, scope: !119)
!210 = !DILocation(line: 680, column: 46, scope: !119)
!211 = !DILocation(line: 680, column: 31, scope: !119)
!212 = !DILocation(line: 680, column: 17, scope: !119)
!213 = !DILocation(line: 681, column: 7, scope: !119)
!214 = !DILocation(line: 682, column: 3, scope: !120)
!215 = !DILocation(line: 684, column: 8, scope: !216)
!216 = distinct !DILexicalBlock(scope: !93, file: !2, line: 684, column: 6)
!217 = !DILocation(line: 684, column: 15, scope: !216)
!218 = !DILocation(line: 685, column: 5, scope: !219)
!219 = distinct !DILexicalBlock(scope: !220, file: !2, line: 685, column: 5)
!220 = distinct !DILexicalBlock(scope: !216, file: !2, line: 684, column: 28)
!221 = !DILocation(line: 685, column: 5, scope: !222)
!222 = distinct !DILexicalBlock(scope: !219, file: !2, line: 685, column: 5)
!223 = !DILocation(line: 688, column: 6, scope: !93)
!224 = !DILocation(line: 692, column: 25, scope: !225)
!225 = distinct !DILexicalBlock(scope: !226, file: !2, line: 692, column: 8)
!226 = distinct !DILexicalBlock(scope: !227, file: !2, line: 688, column: 21)
!227 = distinct !DILexicalBlock(scope: !93, file: !2, line: 688, column: 6)
!228 = !DILocation(line: 693, column: 7, scope: !229)
!229 = distinct !DILexicalBlock(scope: !230, file: !2, line: 693, column: 7)
!230 = distinct !DILexicalBlock(scope: !225, file: !2, line: 692, column: 78)
!231 = !DILocation(line: 693, column: 7, scope: !232)
!232 = distinct !DILexicalBlock(scope: !229, file: !2, line: 693, column: 7)
!233 = !DILocation(line: 697, column: 12, scope: !234)
!234 = distinct !DILexicalBlock(scope: !93, file: !2, line: 697, column: 6)
!235 = !DILocation(line: 697, column: 6, scope: !234)
!236 = !DILocation(line: 697, column: 16, scope: !234)
!237 = !DILocation(line: 697, column: 25, scope: !234)
!238 = !DILocalVariable(name: "x", arg: 1, scope: !239, file: !2, line: 625, type: !96)
!239 = distinct !DISubprogram(name: "pow_omx", scope: !2, file: !2, line: 625, type: !240, scopeLine: 626, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !242)
!240 = !DISubroutineType(types: !241)
!241 = !{!45, !96, !96, !97}
!242 = !{!238, !243, !244, !245, !246}
!243 = !DILocalVariable(name: "p", arg: 2, scope: !239, file: !2, line: 625, type: !96)
!244 = !DILocalVariable(name: "result", arg: 3, scope: !239, file: !2, line: 625, type: !97)
!245 = !DILocalVariable(name: "ln_omx", scope: !239, file: !2, line: 627, type: !83)
!246 = !DILocalVariable(name: "ln_result", scope: !239, file: !2, line: 628, type: !83)
!247 = !DILocation(line: 0, scope: !239, inlinedAt: !248)
!248 = distinct !DILocation(line: 698, column: 12, scope: !249)
!249 = distinct !DILexicalBlock(scope: !234, file: !2, line: 697, column: 48)
!250 = !DILocation(line: 629, column: 6, scope: !251, inlinedAt: !248)
!251 = distinct !DILexicalBlock(scope: !239, file: !2, line: 629, column: 6)
!252 = !DILocation(line: 629, column: 14, scope: !251, inlinedAt: !248)
!253 = !DILocation(line: 629, column: 6, scope: !239, inlinedAt: !248)
!254 = !DILocation(line: 630, column: 14, scope: !255, inlinedAt: !248)
!255 = distinct !DILexicalBlock(scope: !251, file: !2, line: 629, column: 39)
!256 = !DILocation(line: 630, column: 51, scope: !255, inlinedAt: !248)
!257 = !DILocation(line: 630, column: 48, scope: !255, inlinedAt: !248)
!258 = !DILocation(line: 630, column: 59, scope: !255, inlinedAt: !248)
!259 = !DILocation(line: 630, column: 61, scope: !255, inlinedAt: !248)
!260 = !DILocation(line: 630, column: 56, scope: !255, inlinedAt: !248)
!261 = !DILocation(line: 630, column: 38, scope: !255, inlinedAt: !248)
!262 = !DILocation(line: 630, column: 35, scope: !255, inlinedAt: !248)
!263 = !DILocation(line: 630, column: 25, scope: !255, inlinedAt: !248)
!264 = !DILocation(line: 630, column: 22, scope: !255, inlinedAt: !248)
!265 = !DILocation(line: 630, column: 16, scope: !255, inlinedAt: !248)
!266 = !DILocation(line: 631, column: 3, scope: !255, inlinedAt: !248)
!267 = !DILocation(line: 633, column: 21, scope: !268, inlinedAt: !248)
!268 = distinct !DILexicalBlock(scope: !251, file: !2, line: 632, column: 8)
!269 = !DILocation(line: 633, column: 14, scope: !268, inlinedAt: !248)
!270 = !DILocation(line: 0, scope: !251, inlinedAt: !248)
!271 = !DILocation(line: 635, column: 17, scope: !239, inlinedAt: !248)
!272 = !DILocation(line: 636, column: 56, scope: !239, inlinedAt: !248)
!273 = !DILocation(line: 636, column: 54, scope: !239, inlinedAt: !248)
!274 = !DILocation(line: 636, column: 10, scope: !239, inlinedAt: !248)
!275 = !DILocation(line: 698, column: 5, scope: !249)
!276 = !DILocation(line: 701, column: 8, scope: !277)
!277 = distinct !DILexicalBlock(scope: !93, file: !2, line: 701, column: 6)
!278 = !DILocation(line: 701, column: 15, scope: !277)
!279 = !DILocation(line: 705, column: 12, scope: !280)
!280 = distinct !DILexicalBlock(scope: !277, file: !2, line: 701, column: 64)
!281 = !{i32 0, i32 12}
!282 = !DILocation(line: 705, column: 5, scope: !280)
!283 = !DILocation(line: 708, column: 6, scope: !134)
!284 = !DILocation(line: 708, column: 14, scope: !134)
!285 = !DILocation(line: 708, column: 21, scope: !134)
!286 = !DILocation(line: 712, column: 8, scope: !287)
!287 = distinct !DILexicalBlock(scope: !134, file: !2, line: 708, column: 40)
!288 = !DILocation(line: 713, column: 14, scope: !289)
!289 = distinct !DILexicalBlock(scope: !290, file: !2, line: 712, column: 23)
!290 = distinct !DILexicalBlock(scope: !287, file: !2, line: 712, column: 8)
!291 = !DILocation(line: 713, column: 7, scope: !289)
!292 = !DILocation(line: 715, column: 8, scope: !287)
!293 = !DILocation(line: 716, column: 14, scope: !294)
!294 = distinct !DILexicalBlock(scope: !295, file: !2, line: 715, column: 23)
!295 = distinct !DILexicalBlock(scope: !287, file: !2, line: 715, column: 8)
!296 = !DILocation(line: 716, column: 7, scope: !294)
!297 = !DILocation(line: 719, column: 10, scope: !298)
!298 = distinct !DILexicalBlock(scope: !287, file: !2, line: 719, column: 8)
!299 = !DILocation(line: 719, column: 8, scope: !287)
!300 = !DILocation(line: 720, column: 14, scope: !301)
!301 = distinct !DILexicalBlock(scope: !298, file: !2, line: 719, column: 19)
!302 = !DILocation(line: 720, column: 7, scope: !301)
!303 = !DILocation(line: 722, column: 15, scope: !304)
!304 = distinct !DILexicalBlock(scope: !298, file: !2, line: 722, column: 13)
!305 = !DILocation(line: 722, column: 13, scope: !298)
!306 = !DILocation(line: 723, column: 14, scope: !307)
!307 = distinct !DILexicalBlock(scope: !304, file: !2, line: 722, column: 22)
!308 = !DILocation(line: 723, column: 7, scope: !307)
!309 = !DILocation(line: 726, column: 10, scope: !310)
!310 = distinct !DILexicalBlock(scope: !311, file: !2, line: 726, column: 10)
!311 = distinct !DILexicalBlock(scope: !304, file: !2, line: 725, column: 10)
!312 = !DILocation(line: 726, column: 18, scope: !310)
!313 = !DILocation(line: 726, column: 10, scope: !311)
!314 = !DILocation(line: 727, column: 16, scope: !315)
!315 = distinct !DILexicalBlock(scope: !310, file: !2, line: 726, column: 26)
!316 = !DILocation(line: 727, column: 9, scope: !315)
!317 = !DILocation(line: 730, column: 16, scope: !318)
!318 = distinct !DILexicalBlock(scope: !310, file: !2, line: 729, column: 12)
!319 = !DILocation(line: 730, column: 9, scope: !318)
!320 = !DILocation(line: 740, column: 16, scope: !321)
!321 = distinct !DILexicalBlock(scope: !133, file: !2, line: 740, column: 8)
!322 = !DILocation(line: 0, scope: !133)
!323 = !DILocation(line: 749, column: 10, scope: !324)
!324 = distinct !DILexicalBlock(scope: !133, file: !2, line: 749, column: 8)
!325 = !DILocation(line: 749, column: 8, scope: !133)
!326 = !DILocation(line: 752, column: 14, scope: !327)
!327 = distinct !DILexicalBlock(scope: !324, file: !2, line: 749, column: 17)
!328 = !DILocation(line: 752, column: 7, scope: !327)
!329 = !DILocation(line: 755, column: 20, scope: !330)
!330 = distinct !DILexicalBlock(scope: !133, file: !2, line: 755, column: 8)
!331 = !DILocalVariable(name: "a", arg: 1, scope: !332, file: !333, line: 69, type: !83)
!332 = distinct !DISubprogram(name: "GSL_MAX_DBL", scope: !333, file: !333, line: 69, type: !334, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !336)
!333 = !DIFile(filename: "../gsl/gsl_minmax.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "c129f6f8aa4928366a49d418ffa3dad3")
!334 = !DISubroutineType(types: !335)
!335 = !{!83, !83, !83}
!336 = !{!331, !337}
!337 = !DILocalVariable(name: "b", arg: 2, scope: !332, file: !333, line: 69, type: !83)
!338 = !DILocation(line: 0, scope: !332, inlinedAt: !339)
!339 = distinct !DILocation(line: 755, column: 8, scope: !330)
!340 = !DILocation(line: 71, column: 10, scope: !332, inlinedAt: !339)
!341 = !DILocation(line: 755, column: 34, scope: !330)
!342 = !DILocation(line: 755, column: 33, scope: !330)
!343 = !DILocation(line: 755, column: 43, scope: !330)
!344 = !DILocation(line: 755, column: 42, scope: !330)
!345 = !DILocation(line: 755, column: 57, scope: !330)
!346 = !DILocation(line: 755, column: 56, scope: !330)
!347 = !DILocation(line: 755, column: 51, scope: !330)
!348 = !DILocation(line: 755, column: 8, scope: !133)
!349 = !DILocation(line: 759, column: 14, scope: !350)
!350 = distinct !DILexicalBlock(scope: !330, file: !2, line: 755, column: 66)
!351 = !DILocation(line: 759, column: 7, scope: !350)
!352 = !DILocation(line: 762, column: 15, scope: !138)
!353 = !DILocation(line: 762, column: 18, scope: !138)
!354 = !DILocation(line: 762, column: 20, scope: !138)
!355 = !DILocation(line: 762, column: 8, scope: !138)
!356 = !DILocation(line: 762, column: 31, scope: !138)
!357 = !DILocation(line: 762, column: 24, scope: !138)
!358 = !DILocation(line: 762, column: 41, scope: !138)
!359 = !DILocation(line: 765, column: 47, scope: !137)
!360 = !DILocation(line: 765, column: 18, scope: !137)
!361 = !DILocation(line: 0, scope: !137)
!362 = !DILocation(line: 766, column: 42, scope: !137)
!363 = !DILocation(line: 766, column: 29, scope: !137)
!364 = !DILocation(line: 766, column: 27, scope: !137)
!365 = !DILocation(line: 766, column: 19, scope: !137)
!366 = !DILocation(line: 773, column: 5, scope: !367)
!367 = distinct !DILexicalBlock(scope: !133, file: !2, line: 773, column: 5)
!368 = !DILocation(line: 775, column: 1, scope: !93)
!369 = !DISubprogram(name: "gsl_sf_lngamma_sgn_e", scope: !370, file: !370, line: 58, type: !371, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!370 = !DIFile(filename: "../gsl/gsl_sf_gamma.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "88cc3c2b19ea790e1c6889b01cfd3137")
!371 = !DISubroutineType(types: !372)
!372 = !{!45, !83, !97, !373}
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!374 = !DISubprogram(name: "gsl_sf_lngamma_e", scope: !370, file: !370, line: 47, type: !375, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!375 = !DISubroutineType(types: !376)
!376 = !{!45, !83, !97}
!377 = !DISubprogram(name: "gsl_error", scope: !44, file: !44, line: 77, type: !378, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!378 = !DISubroutineType(types: !379)
!379 = !{null, !380, !380, !45, !45}
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!381 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!382 = !DISubprogram(name: "gsl_sf_exp_err_e", scope: !383, file: !383, line: 110, type: !240, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!383 = !DIFile(filename: "../gsl/gsl_sf_exp.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "c512f91507e79efdd09661b0faef2cde")
!384 = distinct !DISubprogram(name: "hyperg_2F1_series", scope: !2, file: !2, line: 40, type: !385, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !387)
!385 = !DISubroutineType(types: !386)
!386 = !{!45, !96, !96, !96, !96, !97}
!387 = !{!388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400}
!388 = !DILocalVariable(name: "a", arg: 1, scope: !384, file: !2, line: 40, type: !96)
!389 = !DILocalVariable(name: "b", arg: 2, scope: !384, file: !2, line: 40, type: !96)
!390 = !DILocalVariable(name: "c", arg: 3, scope: !384, file: !2, line: 40, type: !96)
!391 = !DILocalVariable(name: "x", arg: 4, scope: !384, file: !2, line: 41, type: !96)
!392 = !DILocalVariable(name: "result", arg: 5, scope: !384, file: !2, line: 42, type: !97)
!393 = !DILocalVariable(name: "sum_pos", scope: !384, file: !2, line: 45, type: !83)
!394 = !DILocalVariable(name: "sum_neg", scope: !384, file: !2, line: 46, type: !83)
!395 = !DILocalVariable(name: "del_pos", scope: !384, file: !2, line: 47, type: !83)
!396 = !DILocalVariable(name: "del_neg", scope: !384, file: !2, line: 48, type: !83)
!397 = !DILocalVariable(name: "del", scope: !384, file: !2, line: 49, type: !83)
!398 = !DILocalVariable(name: "del_prev", scope: !384, file: !2, line: 50, type: !83)
!399 = !DILocalVariable(name: "k", scope: !384, file: !2, line: 51, type: !83)
!400 = !DILocalVariable(name: "i", scope: !384, file: !2, line: 52, type: !45)
!401 = !DILocation(line: 0, scope: !384)
!402 = !DILocation(line: 54, column: 6, scope: !403)
!403 = distinct !DILexicalBlock(scope: !384, file: !2, line: 54, column: 6)
!404 = !DILocation(line: 54, column: 14, scope: !403)
!405 = !DILocation(line: 54, column: 6, scope: !384)
!406 = !DILocation(line: 55, column: 17, scope: !407)
!407 = distinct !DILexicalBlock(scope: !403, file: !2, line: 54, column: 33)
!408 = !DILocation(line: 56, column: 13, scope: !407)
!409 = !DILocation(line: 56, column: 17, scope: !407)
!410 = !DILocation(line: 57, column: 5, scope: !411)
!411 = distinct !DILexicalBlock(scope: !407, file: !2, line: 57, column: 5)
!412 = !DILocation(line: 46, column: 10, scope: !384)
!413 = !DILocation(line: 48, column: 10, scope: !384)
!414 = !DILocation(line: 61, column: 8, scope: !415)
!415 = distinct !DILexicalBlock(scope: !416, file: !2, line: 61, column: 8)
!416 = distinct !DILexicalBlock(scope: !384, file: !2, line: 60, column: 6)
!417 = !DILocation(line: 61, column: 12, scope: !415)
!418 = !DILocation(line: 61, column: 8, scope: !416)
!419 = !DILocation(line: 62, column: 30, scope: !420)
!420 = distinct !DILexicalBlock(scope: !415, file: !2, line: 61, column: 21)
!421 = !DILocation(line: 62, column: 20, scope: !420)
!422 = !DILocation(line: 63, column: 30, scope: !420)
!423 = !DILocation(line: 63, column: 15, scope: !420)
!424 = !DILocation(line: 64, column: 55, scope: !420)
!425 = !DILocation(line: 64, column: 44, scope: !420)
!426 = !DILocation(line: 64, column: 19, scope: !420)
!427 = !DILocation(line: 65, column: 51, scope: !420)
!428 = !DILocation(line: 65, column: 50, scope: !420)
!429 = !DILocation(line: 65, column: 58, scope: !420)
!430 = !DILocation(line: 65, column: 44, scope: !420)
!431 = !DILocation(line: 65, column: 79, scope: !420)
!432 = !DILocation(line: 65, column: 66, scope: !420)
!433 = !DILocation(line: 65, column: 64, scope: !420)
!434 = !DILocation(line: 65, column: 19, scope: !420)
!435 = !DILocation(line: 66, column: 7, scope: !436)
!436 = distinct !DILexicalBlock(scope: !420, file: !2, line: 66, column: 7)
!437 = !DILocation(line: 69, column: 14, scope: !416)
!438 = !DILocation(line: 69, column: 20, scope: !416)
!439 = !DILocation(line: 69, column: 17, scope: !416)
!440 = !DILocation(line: 69, column: 24, scope: !416)
!441 = !DILocation(line: 69, column: 33, scope: !416)
!442 = !DILocation(line: 69, column: 41, scope: !416)
!443 = !DILocation(line: 69, column: 37, scope: !416)
!444 = !DILocation(line: 69, column: 28, scope: !416)
!445 = !DILocation(line: 69, column: 9, scope: !416)
!446 = !DILocation(line: 71, column: 12, scope: !447)
!447 = distinct !DILexicalBlock(scope: !416, file: !2, line: 71, column: 8)
!448 = !DILocation(line: 71, column: 8, scope: !416)
!449 = !DILocation(line: 73, column: 15, scope: !450)
!450 = distinct !DILexicalBlock(scope: !447, file: !2, line: 71, column: 19)
!451 = !DILocation(line: 74, column: 5, scope: !450)
!452 = !DILocation(line: 75, column: 17, scope: !453)
!453 = distinct !DILexicalBlock(scope: !447, file: !2, line: 75, column: 13)
!454 = !DILocation(line: 75, column: 13, scope: !447)
!455 = !DILocation(line: 100, column: 26, scope: !384)
!456 = !DILocation(line: 83, column: 18, scope: !457)
!457 = distinct !DILexicalBlock(scope: !453, file: !2, line: 82, column: 10)
!458 = !DILocation(line: 84, column: 15, scope: !457)
!459 = !DILocation(line: 93, column: 34, scope: !460)
!460 = distinct !DILexicalBlock(scope: !416, file: !2, line: 93, column: 9)
!461 = !DILocation(line: 93, column: 23, scope: !460)
!462 = !DILocation(line: 93, column: 9, scope: !460)
!463 = !DILocation(line: 93, column: 46, scope: !460)
!464 = !DILocation(line: 93, column: 64, scope: !460)
!465 = !DILocation(line: 94, column: 18, scope: !460)
!466 = !DILocation(line: 94, column: 9, scope: !460)
!467 = !DILocation(line: 94, column: 41, scope: !460)
!468 = !DILocation(line: 93, column: 9, scope: !416)
!469 = !DILocation(line: 98, column: 25, scope: !384)
!470 = !DILocation(line: 98, column: 35, scope: !384)
!471 = !DILocation(line: 98, column: 11, scope: !384)
!472 = !DILocation(line: 98, column: 55, scope: !384)
!473 = !DILocation(line: 98, column: 3, scope: !416)
!474 = distinct !{!474, !475, !476, !477}
!475 = !DILocation(line: 60, column: 3, scope: !384)
!476 = !DILocation(line: 98, column: 72, scope: !384)
!477 = !{!"llvm.loop.mustprogress"}
!478 = !DILocation(line: 101, column: 26, scope: !384)
!479 = !DILocation(line: 100, column: 16, scope: !384)
!480 = !DILocation(line: 101, column: 11, scope: !384)
!481 = !DILocation(line: 102, column: 51, scope: !384)
!482 = !DILocation(line: 102, column: 40, scope: !384)
!483 = !DILocation(line: 102, column: 15, scope: !384)
!484 = !DILocation(line: 103, column: 47, scope: !384)
!485 = !DILocation(line: 103, column: 46, scope: !384)
!486 = !DILocation(line: 103, column: 55, scope: !384)
!487 = !DILocation(line: 103, column: 40, scope: !384)
!488 = !DILocation(line: 103, column: 77, scope: !384)
!489 = !DILocation(line: 103, column: 64, scope: !384)
!490 = !DILocation(line: 103, column: 62, scope: !384)
!491 = !DILocation(line: 103, column: 15, scope: !384)
!492 = !DILocation(line: 105, column: 3, scope: !384)
!493 = !DILocation(line: 106, column: 1, scope: !384)
!494 = distinct !DISubprogram(name: "hyperg_2F1_luke", scope: !2, file: !2, line: 171, type: !385, scopeLine: 174, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !495)
!495 = !{!496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535}
!496 = !DILocalVariable(name: "a", arg: 1, scope: !494, file: !2, line: 171, type: !96)
!497 = !DILocalVariable(name: "b", arg: 2, scope: !494, file: !2, line: 171, type: !96)
!498 = !DILocalVariable(name: "c", arg: 3, scope: !494, file: !2, line: 171, type: !96)
!499 = !DILocalVariable(name: "xin", arg: 4, scope: !494, file: !2, line: 172, type: !96)
!500 = !DILocalVariable(name: "result", arg: 5, scope: !494, file: !2, line: 173, type: !97)
!501 = !DILocalVariable(name: "stat_iter", scope: !494, file: !2, line: 175, type: !45)
!502 = !DILocalVariable(name: "RECUR_BIG", scope: !494, file: !2, line: 176, type: !96)
!503 = !DILocalVariable(name: "nmax", scope: !494, file: !2, line: 177, type: !115)
!504 = !DILocalVariable(name: "n", scope: !494, file: !2, line: 178, type: !45)
!505 = !DILocalVariable(name: "x", scope: !494, file: !2, line: 179, type: !96)
!506 = !DILocalVariable(name: "x3", scope: !494, file: !2, line: 180, type: !96)
!507 = !DILocalVariable(name: "t0", scope: !494, file: !2, line: 181, type: !96)
!508 = !DILocalVariable(name: "t1", scope: !494, file: !2, line: 182, type: !96)
!509 = !DILocalVariable(name: "t2", scope: !494, file: !2, line: 183, type: !96)
!510 = !DILocalVariable(name: "F", scope: !494, file: !2, line: 184, type: !83)
!511 = !DILocalVariable(name: "prec", scope: !494, file: !2, line: 185, type: !83)
!512 = !DILocalVariable(name: "Bnm3", scope: !494, file: !2, line: 187, type: !83)
!513 = !DILocalVariable(name: "Bnm2", scope: !494, file: !2, line: 188, type: !83)
!514 = !DILocalVariable(name: "Bnm1", scope: !494, file: !2, line: 189, type: !83)
!515 = !DILocalVariable(name: "Anm3", scope: !494, file: !2, line: 191, type: !83)
!516 = !DILocalVariable(name: "Anm2", scope: !494, file: !2, line: 192, type: !83)
!517 = !DILocalVariable(name: "Anm1", scope: !494, file: !2, line: 193, type: !83)
!518 = !DILocalVariable(name: "npam1", scope: !519, file: !2, line: 196, type: !83)
!519 = distinct !DILexicalBlock(scope: !494, file: !2, line: 195, column: 12)
!520 = !DILocalVariable(name: "npbm1", scope: !519, file: !2, line: 197, type: !83)
!521 = !DILocalVariable(name: "npcm1", scope: !519, file: !2, line: 198, type: !83)
!522 = !DILocalVariable(name: "npam2", scope: !519, file: !2, line: 199, type: !83)
!523 = !DILocalVariable(name: "npbm2", scope: !519, file: !2, line: 200, type: !83)
!524 = !DILocalVariable(name: "npcm2", scope: !519, file: !2, line: 201, type: !83)
!525 = !DILocalVariable(name: "tnm1", scope: !519, file: !2, line: 202, type: !83)
!526 = !DILocalVariable(name: "tnm3", scope: !519, file: !2, line: 203, type: !83)
!527 = !DILocalVariable(name: "tnm5", scope: !519, file: !2, line: 204, type: !83)
!528 = !DILocalVariable(name: "n2", scope: !519, file: !2, line: 205, type: !83)
!529 = !DILocalVariable(name: "F1", scope: !519, file: !2, line: 206, type: !83)
!530 = !DILocalVariable(name: "F2", scope: !519, file: !2, line: 207, type: !83)
!531 = !DILocalVariable(name: "F3", scope: !519, file: !2, line: 208, type: !83)
!532 = !DILocalVariable(name: "E", scope: !519, file: !2, line: 209, type: !83)
!533 = !DILocalVariable(name: "An", scope: !519, file: !2, line: 211, type: !83)
!534 = !DILocalVariable(name: "Bn", scope: !519, file: !2, line: 212, type: !83)
!535 = !DILocalVariable(name: "r", scope: !519, file: !2, line: 213, type: !83)
!536 = !DILocation(line: 0, scope: !494)
!537 = !DILocation(line: 179, column: 21, scope: !494)
!538 = !DILocation(line: 180, column: 22, scope: !494)
!539 = !DILocation(line: 180, column: 24, scope: !494)
!540 = !DILocation(line: 181, column: 22, scope: !494)
!541 = !DILocation(line: 181, column: 24, scope: !494)
!542 = !DILocation(line: 182, column: 23, scope: !494)
!543 = !DILocation(line: 182, column: 31, scope: !494)
!544 = !DILocation(line: 182, column: 28, scope: !494)
!545 = !DILocation(line: 182, column: 41, scope: !494)
!546 = !DILocation(line: 182, column: 36, scope: !494)
!547 = !DILocation(line: 183, column: 23, scope: !494)
!548 = !DILocation(line: 183, column: 31, scope: !494)
!549 = !DILocation(line: 183, column: 28, scope: !494)
!550 = !DILocation(line: 183, column: 44, scope: !494)
!551 = !DILocation(line: 183, column: 41, scope: !494)
!552 = !DILocation(line: 183, column: 36, scope: !494)
!553 = !DILocation(line: 188, column: 21, scope: !494)
!554 = !DILocation(line: 189, column: 26, scope: !494)
!555 = !DILocation(line: 189, column: 41, scope: !494)
!556 = !DILocation(line: 189, column: 37, scope: !494)
!557 = !DILocation(line: 189, column: 30, scope: !494)
!558 = !DILocation(line: 189, column: 21, scope: !494)
!559 = !DILocation(line: 192, column: 22, scope: !494)
!560 = !DILocation(line: 193, column: 32, scope: !494)
!561 = !DILocation(line: 193, column: 26, scope: !494)
!562 = !DILocation(line: 193, column: 22, scope: !494)
!563 = !DILocation(line: 193, column: 47, scope: !494)
!564 = !DILocation(line: 193, column: 56, scope: !494)
!565 = !DILocation(line: 193, column: 52, scope: !494)
!566 = !DILocation(line: 193, column: 66, scope: !494)
!567 = !DILocation(line: 193, column: 42, scope: !494)
!568 = !DILocation(line: 195, column: 3, scope: !494)
!569 = !DILocation(line: 193, column: 10, scope: !494)
!570 = !DILocation(line: 192, column: 10, scope: !494)
!571 = !DILocation(line: 191, column: 10, scope: !494)
!572 = !DILocation(line: 189, column: 10, scope: !494)
!573 = !DILocation(line: 188, column: 10, scope: !494)
!574 = !DILocation(line: 187, column: 10, scope: !494)
!575 = !DILocation(line: 178, column: 7, scope: !494)
!576 = !DILocation(line: 196, column: 20, scope: !519)
!577 = !DILocation(line: 196, column: 22, scope: !519)
!578 = !DILocation(line: 196, column: 26, scope: !519)
!579 = !DILocation(line: 0, scope: !519)
!580 = !DILocation(line: 197, column: 22, scope: !519)
!581 = !DILocation(line: 197, column: 26, scope: !519)
!582 = !DILocation(line: 198, column: 22, scope: !519)
!583 = !DILocation(line: 198, column: 26, scope: !519)
!584 = !DILocation(line: 199, column: 26, scope: !519)
!585 = !DILocation(line: 200, column: 26, scope: !519)
!586 = !DILocation(line: 201, column: 26, scope: !519)
!587 = !DILocation(line: 202, column: 21, scope: !519)
!588 = !DILocation(line: 202, column: 24, scope: !519)
!589 = !DILocation(line: 202, column: 20, scope: !519)
!590 = !DILocation(line: 203, column: 24, scope: !519)
!591 = !DILocation(line: 203, column: 20, scope: !519)
!592 = !DILocation(line: 204, column: 24, scope: !519)
!593 = !DILocation(line: 204, column: 20, scope: !519)
!594 = !DILocation(line: 205, column: 18, scope: !519)
!595 = !DILocation(line: 205, column: 17, scope: !519)
!596 = !DILocation(line: 206, column: 22, scope: !519)
!597 = !DILocation(line: 206, column: 35, scope: !519)
!598 = !DILocation(line: 206, column: 26, scope: !519)
!599 = !DILocation(line: 206, column: 38, scope: !519)
!600 = !DILocation(line: 206, column: 42, scope: !519)
!601 = !DILocation(line: 206, column: 48, scope: !519)
!602 = !DILocation(line: 206, column: 63, scope: !519)
!603 = !DILocation(line: 206, column: 68, scope: !519)
!604 = !DILocation(line: 206, column: 59, scope: !519)
!605 = !DILocation(line: 207, column: 35, scope: !519)
!606 = !DILocation(line: 207, column: 26, scope: !519)
!607 = !DILocation(line: 207, column: 38, scope: !519)
!608 = !DILocation(line: 207, column: 42, scope: !519)
!609 = !DILocation(line: 207, column: 17, scope: !519)
!610 = !DILocation(line: 207, column: 48, scope: !519)
!611 = !DILocation(line: 207, column: 54, scope: !519)
!612 = !DILocation(line: 207, column: 63, scope: !519)
!613 = !DILocation(line: 207, column: 68, scope: !519)
!614 = !DILocation(line: 207, column: 73, scope: !519)
!615 = !DILocation(line: 207, column: 79, scope: !519)
!616 = !DILocation(line: 207, column: 60, scope: !519)
!617 = !DILocation(line: 208, column: 23, scope: !519)
!618 = !DILocation(line: 208, column: 29, scope: !519)
!619 = !DILocation(line: 208, column: 35, scope: !519)
!620 = !DILocation(line: 208, column: 44, scope: !519)
!621 = !DILocation(line: 208, column: 46, scope: !519)
!622 = !DILocation(line: 208, column: 41, scope: !519)
!623 = !DILocation(line: 208, column: 52, scope: !519)
!624 = !DILocation(line: 208, column: 54, scope: !519)
!625 = !DILocation(line: 208, column: 49, scope: !519)
!626 = !DILocation(line: 208, column: 63, scope: !519)
!627 = !DILocation(line: 208, column: 68, scope: !519)
!628 = !DILocation(line: 208, column: 73, scope: !519)
!629 = !DILocation(line: 208, column: 83, scope: !519)
!630 = !DILocation(line: 208, column: 78, scope: !519)
!631 = !DILocation(line: 208, column: 86, scope: !519)
!632 = !DILocation(line: 208, column: 92, scope: !519)
!633 = !DILocation(line: 208, column: 59, scope: !519)
!634 = !DILocation(line: 209, column: 17, scope: !519)
!635 = !DILocation(line: 209, column: 23, scope: !519)
!636 = !DILocation(line: 209, column: 32, scope: !519)
!637 = !DILocation(line: 209, column: 34, scope: !519)
!638 = !DILocation(line: 209, column: 29, scope: !519)
!639 = !DILocation(line: 209, column: 47, scope: !519)
!640 = !DILocation(line: 209, column: 53, scope: !519)
!641 = !DILocation(line: 209, column: 38, scope: !519)
!642 = !DILocation(line: 211, column: 21, scope: !519)
!643 = !DILocation(line: 211, column: 27, scope: !519)
!644 = !DILocation(line: 211, column: 38, scope: !519)
!645 = !DILocation(line: 211, column: 45, scope: !519)
!646 = !DILocation(line: 211, column: 47, scope: !519)
!647 = !DILocation(line: 211, column: 33, scope: !519)
!648 = !DILocation(line: 211, column: 57, scope: !519)
!649 = !DILocation(line: 211, column: 60, scope: !519)
!650 = !DILocation(line: 211, column: 53, scope: !519)
!651 = !DILocation(line: 212, column: 27, scope: !519)
!652 = !DILocation(line: 212, column: 47, scope: !519)
!653 = !DILocation(line: 212, column: 33, scope: !519)
!654 = !DILocation(line: 212, column: 60, scope: !519)
!655 = !DILocation(line: 212, column: 53, scope: !519)
!656 = !DILocation(line: 213, column: 18, scope: !519)
!657 = !DILocation(line: 215, column: 20, scope: !519)
!658 = !DILocation(line: 215, column: 24, scope: !519)
!659 = !DILocation(line: 215, column: 12, scope: !519)
!660 = !DILocation(line: 218, column: 13, scope: !661)
!661 = distinct !DILexicalBlock(scope: !519, file: !2, line: 218, column: 8)
!662 = !DILocation(line: 218, column: 31, scope: !661)
!663 = !DILocation(line: 220, column: 8, scope: !664)
!664 = distinct !DILexicalBlock(scope: !519, file: !2, line: 220, column: 8)
!665 = !DILocation(line: 220, column: 17, scope: !664)
!666 = !DILocation(line: 220, column: 29, scope: !664)
!667 = !DILocation(line: 220, column: 32, scope: !664)
!668 = !DILocation(line: 220, column: 41, scope: !664)
!669 = !DILocation(line: 220, column: 8, scope: !519)
!670 = !DILocation(line: 221, column: 12, scope: !671)
!671 = distinct !DILexicalBlock(scope: !664, file: !2, line: 220, column: 54)
!672 = !DILocation(line: 222, column: 12, scope: !671)
!673 = !DILocation(line: 223, column: 12, scope: !671)
!674 = !DILocation(line: 224, column: 12, scope: !671)
!675 = !DILocation(line: 225, column: 12, scope: !671)
!676 = !DILocation(line: 226, column: 12, scope: !671)
!677 = !DILocation(line: 229, column: 5, scope: !671)
!678 = !DILocation(line: 230, column: 22, scope: !679)
!679 = distinct !DILexicalBlock(scope: !664, file: !2, line: 230, column: 13)
!680 = !DILocation(line: 230, column: 38, scope: !679)
!681 = !DILocation(line: 231, column: 12, scope: !682)
!682 = distinct !DILexicalBlock(scope: !679, file: !2, line: 230, column: 67)
!683 = !DILocation(line: 232, column: 12, scope: !682)
!684 = !DILocation(line: 233, column: 12, scope: !682)
!685 = !DILocation(line: 234, column: 12, scope: !682)
!686 = !DILocation(line: 235, column: 12, scope: !682)
!687 = !DILocation(line: 236, column: 12, scope: !682)
!688 = !DILocation(line: 239, column: 5, scope: !682)
!689 = !DILocation(line: 241, column: 6, scope: !519)
!690 = !DILocation(line: 250, column: 16, scope: !494)
!691 = !DILocation(line: 251, column: 34, scope: !494)
!692 = !DILocation(line: 251, column: 24, scope: !494)
!693 = !DILocation(line: 251, column: 22, scope: !494)
!694 = !DILocation(line: 251, column: 11, scope: !494)
!695 = !DILocation(line: 252, column: 44, scope: !494)
!696 = !DILocation(line: 252, column: 40, scope: !494)
!697 = !DILocation(line: 252, column: 52, scope: !494)
!698 = !DILocation(line: 252, column: 50, scope: !494)
!699 = !DILocation(line: 252, column: 15, scope: !494)
!700 = !DILocation(line: 255, column: 25, scope: !494)
!701 = !DILocation(line: 255, column: 35, scope: !494)
!702 = !DILocation(line: 255, column: 33, scope: !494)
!703 = !DILocation(line: 255, column: 43, scope: !494)
!704 = !DILocation(line: 255, column: 22, scope: !494)
!705 = !DILocation(line: 255, column: 15, scope: !494)
!706 = !DILocation(line: 257, column: 18, scope: !494)
!707 = !DILocation(line: 257, column: 16, scope: !494)
!708 = !DILocation(line: 259, column: 3, scope: !494)
!709 = distinct !DISubprogram(name: "hyperg_2F1_reflect", scope: !2, file: !2, line: 367, type: !385, scopeLine: 369, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !710)
!710 = !{!711, !712, !713, !714, !715, !716, !717, !718, !719, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !738, !739, !740, !741, !742, !743, !746, !747, !748, !749, !750, !751, !755, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !779, !780, !781, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !813, !814, !815, !816, !819, !820, !823}
!711 = !DILocalVariable(name: "a", arg: 1, scope: !709, file: !2, line: 367, type: !96)
!712 = !DILocalVariable(name: "b", arg: 2, scope: !709, file: !2, line: 367, type: !96)
!713 = !DILocalVariable(name: "c", arg: 3, scope: !709, file: !2, line: 367, type: !96)
!714 = !DILocalVariable(name: "x", arg: 4, scope: !709, file: !2, line: 368, type: !96)
!715 = !DILocalVariable(name: "result", arg: 5, scope: !709, file: !2, line: 368, type: !97)
!716 = !DILocalVariable(name: "d", scope: !709, file: !2, line: 370, type: !96)
!717 = !DILocalVariable(name: "intd", scope: !709, file: !2, line: 371, type: !115)
!718 = !DILocalVariable(name: "d_integer", scope: !709, file: !2, line: 372, type: !115)
!719 = !DILocalVariable(name: "ln_omx", scope: !720, file: !2, line: 375, type: !96)
!720 = distinct !DILexicalBlock(scope: !721, file: !2, line: 374, column: 17)
!721 = distinct !DILexicalBlock(scope: !709, file: !2, line: 374, column: 6)
!722 = !DILocalVariable(name: "ad", scope: !720, file: !2, line: 376, type: !96)
!723 = !DILocalVariable(name: "stat_F2", scope: !720, file: !2, line: 377, type: !45)
!724 = !DILocalVariable(name: "sgn_2", scope: !720, file: !2, line: 378, type: !83)
!725 = !DILocalVariable(name: "F1", scope: !720, file: !2, line: 379, type: !98)
!726 = !DILocalVariable(name: "F2", scope: !720, file: !2, line: 380, type: !98)
!727 = !DILocalVariable(name: "d1", scope: !720, file: !2, line: 381, type: !83)
!728 = !DILocalVariable(name: "d2", scope: !720, file: !2, line: 381, type: !83)
!729 = !DILocalVariable(name: "lng_c", scope: !720, file: !2, line: 382, type: !98)
!730 = !DILocalVariable(name: "lng_ad2", scope: !720, file: !2, line: 383, type: !98)
!731 = !DILocalVariable(name: "lng_bd2", scope: !720, file: !2, line: 384, type: !98)
!732 = !DILocalVariable(name: "stat_c", scope: !720, file: !2, line: 385, type: !45)
!733 = !DILocalVariable(name: "stat_ad2", scope: !720, file: !2, line: 386, type: !45)
!734 = !DILocalVariable(name: "stat_bd2", scope: !720, file: !2, line: 387, type: !45)
!735 = !DILocalVariable(name: "lng_ad", scope: !736, file: !2, line: 410, type: !98)
!736 = distinct !DILexicalBlock(scope: !737, file: !2, line: 409, column: 10)
!737 = distinct !DILexicalBlock(scope: !720, file: !2, line: 404, column: 8)
!738 = !DILocalVariable(name: "lng_ad1", scope: !736, file: !2, line: 411, type: !98)
!739 = !DILocalVariable(name: "lng_bd1", scope: !736, file: !2, line: 412, type: !98)
!740 = !DILocalVariable(name: "stat_ad", scope: !736, file: !2, line: 413, type: !45)
!741 = !DILocalVariable(name: "stat_ad1", scope: !736, file: !2, line: 414, type: !45)
!742 = !DILocalVariable(name: "stat_bd1", scope: !736, file: !2, line: 415, type: !45)
!743 = !DILocalVariable(name: "i", scope: !744, file: !2, line: 421, type: !45)
!744 = distinct !DILexicalBlock(scope: !745, file: !2, line: 417, column: 88)
!745 = distinct !DILexicalBlock(scope: !736, file: !2, line: 417, column: 10)
!746 = !DILocalVariable(name: "sum1", scope: !744, file: !2, line: 422, type: !83)
!747 = !DILocalVariable(name: "term", scope: !744, file: !2, line: 423, type: !83)
!748 = !DILocalVariable(name: "ln_pre1_val", scope: !744, file: !2, line: 424, type: !83)
!749 = !DILocalVariable(name: "ln_pre1_err", scope: !744, file: !2, line: 425, type: !83)
!750 = !DILocalVariable(name: "stat_e", scope: !744, file: !2, line: 426, type: !45)
!751 = !DILocalVariable(name: "j", scope: !752, file: !2, line: 431, type: !45)
!752 = distinct !DILexicalBlock(scope: !753, file: !2, line: 430, column: 29)
!753 = distinct !DILexicalBlock(scope: !754, file: !2, line: 430, column: 9)
!754 = distinct !DILexicalBlock(scope: !744, file: !2, line: 430, column: 9)
!755 = !DILocalVariable(name: "maxiter", scope: !756, file: !2, line: 459, type: !115)
!756 = distinct !DILexicalBlock(scope: !757, file: !2, line: 455, column: 60)
!757 = distinct !DILexicalBlock(scope: !720, file: !2, line: 455, column: 8)
!758 = !DILocalVariable(name: "psi_1", scope: !756, file: !2, line: 460, type: !83)
!759 = !DILocalVariable(name: "psi_1pd", scope: !756, file: !2, line: 461, type: !98)
!760 = !DILocalVariable(name: "psi_apd1", scope: !756, file: !2, line: 462, type: !98)
!761 = !DILocalVariable(name: "psi_bpd1", scope: !756, file: !2, line: 463, type: !98)
!762 = !DILocalVariable(name: "stat_1pd", scope: !756, file: !2, line: 464, type: !45)
!763 = !DILocalVariable(name: "stat_apd1", scope: !756, file: !2, line: 465, type: !45)
!764 = !DILocalVariable(name: "stat_bpd1", scope: !756, file: !2, line: 466, type: !45)
!765 = !DILocalVariable(name: "stat_dall", scope: !756, file: !2, line: 467, type: !45)
!766 = !DILocalVariable(name: "psi_val", scope: !756, file: !2, line: 469, type: !83)
!767 = !DILocalVariable(name: "psi_err", scope: !756, file: !2, line: 470, type: !83)
!768 = !DILocalVariable(name: "fact", scope: !756, file: !2, line: 471, type: !83)
!769 = !DILocalVariable(name: "sum2_val", scope: !756, file: !2, line: 472, type: !83)
!770 = !DILocalVariable(name: "sum2_err", scope: !756, file: !2, line: 473, type: !83)
!771 = !DILocalVariable(name: "ln_pre2_val", scope: !756, file: !2, line: 474, type: !83)
!772 = !DILocalVariable(name: "ln_pre2_err", scope: !756, file: !2, line: 475, type: !83)
!773 = !DILocalVariable(name: "stat_e", scope: !756, file: !2, line: 476, type: !45)
!774 = !DILocalVariable(name: "j", scope: !756, file: !2, line: 478, type: !45)
!775 = !DILocalVariable(name: "term1", scope: !776, file: !2, line: 484, type: !83)
!776 = distinct !DILexicalBlock(scope: !777, file: !2, line: 482, column: 32)
!777 = distinct !DILexicalBlock(scope: !778, file: !2, line: 482, column: 7)
!778 = distinct !DILexicalBlock(scope: !756, file: !2, line: 482, column: 7)
!779 = !DILocalVariable(name: "term2", scope: !776, file: !2, line: 485, type: !83)
!780 = !DILocalVariable(name: "delta", scope: !776, file: !2, line: 486, type: !83)
!781 = !DILocalVariable(name: "pre1", scope: !782, file: !2, line: 532, type: !98)
!782 = distinct !DILexicalBlock(scope: !721, file: !2, line: 529, column: 8)
!783 = !DILocalVariable(name: "pre2", scope: !782, file: !2, line: 532, type: !98)
!784 = !DILocalVariable(name: "sgn1", scope: !782, file: !2, line: 533, type: !83)
!785 = !DILocalVariable(name: "sgn2", scope: !782, file: !2, line: 533, type: !83)
!786 = !DILocalVariable(name: "F1", scope: !782, file: !2, line: 534, type: !98)
!787 = !DILocalVariable(name: "F2", scope: !782, file: !2, line: 534, type: !98)
!788 = !DILocalVariable(name: "status_F1", scope: !782, file: !2, line: 535, type: !45)
!789 = !DILocalVariable(name: "status_F2", scope: !782, file: !2, line: 535, type: !45)
!790 = !DILocalVariable(name: "ln_g1ca", scope: !782, file: !2, line: 540, type: !98)
!791 = !DILocalVariable(name: "ln_g1cb", scope: !782, file: !2, line: 540, type: !98)
!792 = !DILocalVariable(name: "ln_g2a", scope: !782, file: !2, line: 540, type: !98)
!793 = !DILocalVariable(name: "ln_g2b", scope: !782, file: !2, line: 540, type: !98)
!794 = !DILocalVariable(name: "sgn_g1ca", scope: !782, file: !2, line: 541, type: !83)
!795 = !DILocalVariable(name: "sgn_g1cb", scope: !782, file: !2, line: 541, type: !83)
!796 = !DILocalVariable(name: "sgn_g2a", scope: !782, file: !2, line: 541, type: !83)
!797 = !DILocalVariable(name: "sgn_g2b", scope: !782, file: !2, line: 541, type: !83)
!798 = !DILocalVariable(name: "stat_1ca", scope: !782, file: !2, line: 542, type: !45)
!799 = !DILocalVariable(name: "stat_1cb", scope: !782, file: !2, line: 543, type: !45)
!800 = !DILocalVariable(name: "stat_2a", scope: !782, file: !2, line: 544, type: !45)
!801 = !DILocalVariable(name: "stat_2b", scope: !782, file: !2, line: 545, type: !45)
!802 = !DILocalVariable(name: "ok1", scope: !782, file: !2, line: 546, type: !45)
!803 = !DILocalVariable(name: "ok2", scope: !782, file: !2, line: 547, type: !45)
!804 = !DILocalVariable(name: "ln_gc", scope: !782, file: !2, line: 549, type: !98)
!805 = !DILocalVariable(name: "ln_gd", scope: !782, file: !2, line: 549, type: !98)
!806 = !DILocalVariable(name: "ln_gmd", scope: !782, file: !2, line: 549, type: !98)
!807 = !DILocalVariable(name: "sgn_gc", scope: !782, file: !2, line: 550, type: !83)
!808 = !DILocalVariable(name: "sgn_gd", scope: !782, file: !2, line: 550, type: !83)
!809 = !DILocalVariable(name: "sgn_gmd", scope: !782, file: !2, line: 550, type: !83)
!810 = !DILocalVariable(name: "ln_pre1_val", scope: !811, file: !2, line: 559, type: !83)
!811 = distinct !DILexicalBlock(scope: !812, file: !2, line: 558, column: 20)
!812 = distinct !DILexicalBlock(scope: !782, file: !2, line: 558, column: 8)
!813 = !DILocalVariable(name: "ln_pre2_val", scope: !811, file: !2, line: 560, type: !83)
!814 = !DILocalVariable(name: "ln_pre1_err", scope: !811, file: !2, line: 561, type: !83)
!815 = !DILocalVariable(name: "ln_pre2_err", scope: !811, file: !2, line: 562, type: !83)
!816 = !DILocalVariable(name: "ln_pre1_val", scope: !817, file: !2, line: 574, type: !83)
!817 = distinct !DILexicalBlock(scope: !818, file: !2, line: 573, column: 26)
!818 = distinct !DILexicalBlock(scope: !812, file: !2, line: 573, column: 13)
!819 = !DILocalVariable(name: "ln_pre1_err", scope: !817, file: !2, line: 575, type: !83)
!820 = !DILocalVariable(name: "ln_pre2_val", scope: !821, file: !2, line: 587, type: !83)
!821 = distinct !DILexicalBlock(scope: !822, file: !2, line: 586, column: 26)
!822 = distinct !DILexicalBlock(scope: !818, file: !2, line: 586, column: 13)
!823 = !DILocalVariable(name: "ln_pre2_err", scope: !821, file: !2, line: 588, type: !83)
!824 = distinct !DIAssignID()
!825 = !DILocation(line: 0, scope: !720)
!826 = distinct !DIAssignID()
!827 = distinct !DIAssignID()
!828 = distinct !DIAssignID()
!829 = distinct !DIAssignID()
!830 = distinct !DIAssignID()
!831 = !DILocation(line: 0, scope: !736)
!832 = distinct !DIAssignID()
!833 = distinct !DIAssignID()
!834 = distinct !DIAssignID()
!835 = !DILocation(line: 0, scope: !756)
!836 = distinct !DIAssignID()
!837 = distinct !DIAssignID()
!838 = distinct !DIAssignID()
!839 = !DILocation(line: 0, scope: !782)
!840 = distinct !DIAssignID()
!841 = distinct !DIAssignID()
!842 = distinct !DIAssignID()
!843 = distinct !DIAssignID()
!844 = distinct !DIAssignID()
!845 = distinct !DIAssignID()
!846 = distinct !DIAssignID()
!847 = distinct !DIAssignID()
!848 = distinct !DIAssignID()
!849 = distinct !DIAssignID()
!850 = distinct !DIAssignID()
!851 = distinct !DIAssignID()
!852 = distinct !DIAssignID()
!853 = distinct !DIAssignID()
!854 = distinct !DIAssignID()
!855 = distinct !DIAssignID()
!856 = distinct !DIAssignID()
!857 = !DILocation(line: 0, scope: !709)
!858 = !DILocation(line: 370, column: 22, scope: !709)
!859 = !DILocation(line: 370, column: 26, scope: !709)
!860 = !DILocation(line: 371, column: 28, scope: !709)
!861 = !DILocation(line: 371, column: 21, scope: !709)
!862 = !DILocation(line: 372, column: 36, scope: !709)
!863 = !DILocation(line: 372, column: 34, scope: !709)
!864 = !DILocation(line: 372, column: 27, scope: !709)
!865 = !DILocation(line: 372, column: 42, scope: !709)
!866 = !DILocation(line: 374, column: 6, scope: !709)
!867 = !DILocation(line: 375, column: 35, scope: !720)
!868 = !DILocation(line: 375, column: 27, scope: !720)
!869 = !DILocation(line: 376, column: 23, scope: !720)
!870 = !DILocation(line: 379, column: 5, scope: !720)
!871 = !DILocation(line: 380, column: 5, scope: !720)
!872 = !DILocation(line: 382, column: 5, scope: !720)
!873 = !DILocation(line: 383, column: 5, scope: !720)
!874 = !DILocation(line: 384, column: 5, scope: !720)
!875 = !DILocation(line: 389, column: 10, scope: !876)
!876 = distinct !DILexicalBlock(scope: !720, file: !2, line: 389, column: 8)
!877 = !DILocation(line: 398, column: 34, scope: !720)
!878 = !DILocation(line: 398, column: 16, scope: !720)
!879 = !DILocation(line: 399, column: 34, scope: !720)
!880 = !DILocation(line: 399, column: 16, scope: !720)
!881 = !DILocation(line: 400, column: 16, scope: !720)
!882 = !DILocation(line: 404, column: 11, scope: !737)
!883 = !DILocation(line: 404, column: 8, scope: !720)
!884 = distinct !DIAssignID()
!885 = !DILocation(line: 407, column: 14, scope: !886)
!886 = distinct !DILexicalBlock(scope: !737, file: !2, line: 404, column: 30)
!887 = !DILocation(line: 408, column: 5, scope: !886)
!888 = !DILocation(line: 410, column: 7, scope: !736)
!889 = !DILocation(line: 411, column: 7, scope: !736)
!890 = !DILocation(line: 412, column: 7, scope: !736)
!891 = !DILocation(line: 413, column: 22, scope: !736)
!892 = !DILocation(line: 414, column: 40, scope: !736)
!893 = !DILocation(line: 414, column: 22, scope: !736)
!894 = !DILocation(line: 415, column: 40, scope: !736)
!895 = !DILocation(line: 415, column: 22, scope: !736)
!896 = !DILocation(line: 417, column: 19, scope: !745)
!897 = !DILocation(line: 417, column: 34, scope: !745)
!898 = !DILocation(line: 0, scope: !744)
!899 = !DILocation(line: 424, column: 37, scope: !744)
!900 = !DILocation(line: 424, column: 49, scope: !744)
!901 = !DILocation(line: 424, column: 41, scope: !744)
!902 = !DILocation(line: 424, column: 57, scope: !744)
!903 = !DILocation(line: 424, column: 53, scope: !744)
!904 = !DILocation(line: 424, column: 75, scope: !744)
!905 = !DILocation(line: 424, column: 65, scope: !744)
!906 = !DILocation(line: 424, column: 89, scope: !744)
!907 = !DILocation(line: 424, column: 79, scope: !744)
!908 = !DILocation(line: 425, column: 37, scope: !744)
!909 = !DILocation(line: 425, column: 49, scope: !744)
!910 = !DILocation(line: 425, column: 41, scope: !744)
!911 = !DILocation(line: 425, column: 63, scope: !744)
!912 = !DILocation(line: 425, column: 53, scope: !744)
!913 = !DILocation(line: 425, column: 77, scope: !744)
!914 = !DILocation(line: 425, column: 67, scope: !744)
!915 = !DILocation(line: 425, column: 101, scope: !744)
!916 = !DILocation(line: 425, column: 99, scope: !744)
!917 = !DILocation(line: 425, column: 81, scope: !744)
!918 = !DILocation(line: 430, column: 19, scope: !753)
!919 = !DILocation(line: 430, column: 9, scope: !754)
!920 = !DILocation(line: 431, column: 20, scope: !752)
!921 = !DILocation(line: 0, scope: !752)
!922 = !DILocation(line: 432, column: 29, scope: !752)
!923 = !DILocation(line: 432, column: 27, scope: !752)
!924 = !DILocation(line: 432, column: 42, scope: !752)
!925 = !DILocation(line: 432, column: 32, scope: !752)
!926 = !DILocation(line: 432, column: 59, scope: !752)
!927 = !DILocation(line: 432, column: 47, scope: !752)
!928 = !DILocation(line: 432, column: 64, scope: !752)
!929 = !DILocation(line: 432, column: 68, scope: !752)
!930 = !DILocation(line: 432, column: 16, scope: !752)
!931 = !DILocation(line: 433, column: 16, scope: !752)
!932 = !DILocation(line: 430, column: 25, scope: !753)
!933 = !DILocation(line: 430, column: 18, scope: !753)
!934 = distinct !{!934, !919, !935, !477}
!935 = !DILocation(line: 434, column: 9, scope: !754)
!936 = !DILocation(line: 437, column: 62, scope: !744)
!937 = !DILocation(line: 437, column: 61, scope: !744)
!938 = !DILocation(line: 436, column: 18, scope: !744)
!939 = !DILocation(line: 439, column: 19, scope: !940)
!940 = distinct !DILexicalBlock(scope: !744, file: !2, line: 439, column: 12)
!941 = !DILocation(line: 439, column: 12, scope: !744)
!942 = !DILocation(line: 440, column: 11, scope: !943)
!943 = distinct !DILexicalBlock(scope: !944, file: !2, line: 440, column: 11)
!944 = distinct !DILexicalBlock(scope: !940, file: !2, line: 439, column: 35)
!945 = !DILocation(line: 440, column: 11, scope: !946)
!946 = distinct !DILexicalBlock(scope: !943, file: !2, line: 440, column: 11)
!947 = !DILocation(line: 450, column: 5, scope: !737)
!948 = distinct !DIAssignID()
!949 = !DILocation(line: 448, column: 16, scope: !950)
!950 = distinct !DILexicalBlock(scope: !745, file: !2, line: 443, column: 12)
!951 = !DILocation(line: 455, column: 17, scope: !757)
!952 = !DILocation(line: 455, column: 32, scope: !757)
!953 = !DILocation(line: 461, column: 7, scope: !756)
!954 = !DILocation(line: 462, column: 7, scope: !756)
!955 = !DILocation(line: 463, column: 7, scope: !756)
!956 = !DILocation(line: 464, column: 40, scope: !756)
!957 = !DILocation(line: 464, column: 23, scope: !756)
!958 = !DILocation(line: 465, column: 38, scope: !756)
!959 = !DILocation(line: 465, column: 23, scope: !756)
!960 = !DILocation(line: 466, column: 38, scope: !756)
!961 = !DILocation(line: 466, column: 23, scope: !756)
!962 = !DILocation(line: 467, column: 23, scope: !756)
!963 = !DILocation(line: 469, column: 40, scope: !756)
!964 = !DILocation(line: 469, column: 30, scope: !756)
!965 = !DILocation(line: 469, column: 55, scope: !756)
!966 = !DILocation(line: 469, column: 44, scope: !756)
!967 = !DILocation(line: 469, column: 70, scope: !756)
!968 = !DILocation(line: 469, column: 59, scope: !756)
!969 = !DILocation(line: 469, column: 74, scope: !756)
!970 = !DILocation(line: 470, column: 32, scope: !756)
!971 = !DILocation(line: 470, column: 47, scope: !756)
!972 = !DILocation(line: 470, column: 36, scope: !756)
!973 = !DILocation(line: 470, column: 62, scope: !756)
!974 = !DILocation(line: 470, column: 51, scope: !756)
!975 = !DILocation(line: 470, column: 84, scope: !756)
!976 = !DILocation(line: 470, column: 83, scope: !756)
!977 = !DILocation(line: 470, column: 66, scope: !756)
!978 = !DILocation(line: 474, column: 34, scope: !756)
!979 = !DILocation(line: 474, column: 42, scope: !756)
!980 = !DILocation(line: 474, column: 38, scope: !756)
!981 = !DILocation(line: 474, column: 60, scope: !756)
!982 = !DILocation(line: 474, column: 50, scope: !756)
!983 = !DILocation(line: 474, column: 74, scope: !756)
!984 = !DILocation(line: 474, column: 64, scope: !756)
!985 = !DILocation(line: 475, column: 34, scope: !756)
!986 = !DILocation(line: 475, column: 48, scope: !756)
!987 = !DILocation(line: 475, column: 38, scope: !756)
!988 = !DILocation(line: 475, column: 62, scope: !756)
!989 = !DILocation(line: 475, column: 52, scope: !756)
!990 = !DILocation(line: 475, column: 86, scope: !756)
!991 = !DILocation(line: 475, column: 84, scope: !756)
!992 = !DILocation(line: 475, column: 66, scope: !756)
!993 = !DILocation(line: 482, column: 7, scope: !778)
!994 = !DILocation(line: 484, column: 28, scope: !776)
!995 = !DILocation(line: 484, column: 27, scope: !776)
!996 = !DILocation(line: 484, column: 48, scope: !776)
!997 = !DILocation(line: 484, column: 44, scope: !776)
!998 = !DILocation(line: 484, column: 39, scope: !776)
!999 = !DILocation(line: 0, scope: !776)
!1000 = !DILocation(line: 485, column: 33, scope: !776)
!1001 = !DILocation(line: 485, column: 35, scope: !776)
!1002 = !DILocation(line: 485, column: 27, scope: !776)
!1003 = !DILocation(line: 485, column: 52, scope: !776)
!1004 = !DILocation(line: 485, column: 54, scope: !776)
!1005 = !DILocation(line: 485, column: 46, scope: !776)
!1006 = !DILocation(line: 485, column: 41, scope: !776)
!1007 = !DILocation(line: 487, column: 26, scope: !776)
!1008 = !DILocation(line: 487, column: 17, scope: !776)
!1009 = !DILocation(line: 488, column: 39, scope: !776)
!1010 = !DILocation(line: 488, column: 53, scope: !776)
!1011 = !DILocation(line: 488, column: 51, scope: !776)
!1012 = !DILocation(line: 488, column: 36, scope: !776)
!1013 = !DILocation(line: 488, column: 17, scope: !776)
!1014 = !DILocation(line: 489, column: 29, scope: !776)
!1015 = !DILocation(line: 489, column: 50, scope: !776)
!1016 = !DILocation(line: 489, column: 42, scope: !776)
!1017 = !DILocation(line: 489, column: 54, scope: !776)
!1018 = !DILocation(line: 489, column: 14, scope: !776)
!1019 = !DILocation(line: 490, column: 22, scope: !776)
!1020 = !DILocation(line: 491, column: 18, scope: !776)
!1021 = !DILocation(line: 492, column: 31, scope: !776)
!1022 = !DILocation(line: 492, column: 21, scope: !776)
!1023 = !DILocation(line: 492, column: 60, scope: !776)
!1024 = !DILocation(line: 492, column: 59, scope: !776)
!1025 = !DILocation(line: 492, column: 42, scope: !776)
!1026 = !DILocation(line: 492, column: 18, scope: !776)
!1027 = !DILocation(line: 493, column: 44, scope: !1028)
!1028 = distinct !DILexicalBlock(scope: !776, file: !2, line: 493, column: 12)
!1029 = !DILocation(line: 493, column: 42, scope: !1028)
!1030 = !DILocation(line: 493, column: 24, scope: !1028)
!1031 = !DILocation(line: 482, column: 28, scope: !777)
!1032 = !DILocation(line: 482, column: 17, scope: !777)
!1033 = distinct !{!1033, !993, !1034, !477}
!1034 = !DILocation(line: 494, column: 7, scope: !778)
!1035 = !DILocation(line: 482, scope: !778)
!1036 = !DILocation(line: 496, column: 12, scope: !1037)
!1037 = distinct !DILexicalBlock(scope: !756, file: !2, line: 496, column: 10)
!1038 = !DILocation(line: 498, column: 19, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !756, file: !2, line: 498, column: 10)
!1040 = !DILocation(line: 498, column: 10, scope: !756)
!1041 = !DILocation(line: 503, column: 18, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !1039, file: !2, line: 502, column: 12)
!1043 = !DILocation(line: 506, column: 19, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !1042, file: !2, line: 506, column: 12)
!1045 = !DILocation(line: 506, column: 12, scope: !1042)
!1046 = !DILocation(line: 523, column: 40, scope: !720)
!1047 = !DILocation(line: 524, column: 33, scope: !720)
!1048 = !DILocation(line: 512, column: 17, scope: !756)
!1049 = !DILocation(line: 513, column: 5, scope: !757)
!1050 = !DILocation(line: 508, column: 23, scope: !1051)
!1051 = distinct !DILexicalBlock(scope: !1044, file: !2, line: 506, column: 35)
!1052 = !DILocation(line: 509, column: 11, scope: !1053)
!1053 = distinct !DILexicalBlock(scope: !1051, file: !2, line: 509, column: 11)
!1054 = !DILocation(line: 522, column: 15, scope: !720)
!1055 = !DILocation(line: 523, column: 23, scope: !720)
!1056 = !DILocation(line: 523, column: 35, scope: !720)
!1057 = !DILocation(line: 523, column: 27, scope: !720)
!1058 = !DILocation(line: 523, column: 18, scope: !720)
!1059 = !DILocation(line: 524, column: 23, scope: !720)
!1060 = !DILocation(line: 524, column: 27, scope: !720)
!1061 = !DILocation(line: 524, column: 13, scope: !720)
!1062 = !DILocation(line: 525, column: 45, scope: !720)
!1063 = !DILocation(line: 525, column: 60, scope: !720)
!1064 = !DILocation(line: 525, column: 58, scope: !720)
!1065 = !DILocation(line: 525, column: 42, scope: !720)
!1066 = !DILocation(line: 525, column: 17, scope: !720)
!1067 = !DILocation(line: 526, column: 44, scope: !720)
!1068 = !DILocation(line: 526, column: 42, scope: !720)
!1069 = !DILocation(line: 526, column: 17, scope: !720)
!1070 = !DILocation(line: 527, column: 5, scope: !720)
!1071 = !DILocation(line: 528, column: 3, scope: !721)
!1072 = !DILocation(line: 532, column: 5, scope: !782)
!1073 = !DILocation(line: 534, column: 5, scope: !782)
!1074 = !DILocation(line: 540, column: 5, scope: !782)
!1075 = !DILocation(line: 541, column: 5, scope: !782)
!1076 = !DILocation(line: 542, column: 20, scope: !782)
!1077 = !DILocation(line: 543, column: 42, scope: !782)
!1078 = !DILocation(line: 543, column: 20, scope: !782)
!1079 = !DILocation(line: 544, column: 20, scope: !782)
!1080 = !DILocation(line: 545, column: 20, scope: !782)
!1081 = !DILocation(line: 546, column: 25, scope: !782)
!1082 = !DILocation(line: 546, column: 40, scope: !782)
!1083 = !DILocation(line: 547, column: 25, scope: !782)
!1084 = !DILocation(line: 547, column: 40, scope: !782)
!1085 = !DILocation(line: 549, column: 5, scope: !782)
!1086 = !DILocation(line: 550, column: 5, scope: !782)
!1087 = !DILocation(line: 551, column: 5, scope: !782)
!1088 = !DILocation(line: 552, column: 5, scope: !782)
!1089 = !DILocation(line: 553, column: 26, scope: !782)
!1090 = !DILocation(line: 553, column: 5, scope: !782)
!1091 = !DILocation(line: 555, column: 12, scope: !782)
!1092 = !DILocation(line: 555, column: 21, scope: !782)
!1093 = !DILocation(line: 555, column: 19, scope: !782)
!1094 = !DILocation(line: 555, column: 31, scope: !782)
!1095 = !DILocation(line: 555, column: 29, scope: !782)
!1096 = !DILocation(line: 555, column: 42, scope: !782)
!1097 = !DILocation(line: 555, column: 40, scope: !782)
!1098 = !DILocation(line: 556, column: 21, scope: !782)
!1099 = !DILocation(line: 556, column: 19, scope: !782)
!1100 = !DILocation(line: 556, column: 31, scope: !782)
!1101 = !DILocation(line: 556, column: 29, scope: !782)
!1102 = !DILocation(line: 556, column: 42, scope: !782)
!1103 = !DILocation(line: 556, column: 40, scope: !782)
!1104 = !DILocation(line: 558, column: 12, scope: !812)
!1105 = !DILocation(line: 559, column: 34, scope: !811)
!1106 = !DILocation(line: 559, column: 46, scope: !811)
!1107 = !DILocation(line: 559, column: 38, scope: !811)
!1108 = !DILocation(line: 559, column: 61, scope: !811)
!1109 = !DILocation(line: 559, column: 51, scope: !811)
!1110 = !DILocation(line: 559, column: 75, scope: !811)
!1111 = !DILocation(line: 559, column: 65, scope: !811)
!1112 = !DILocation(line: 0, scope: !811)
!1113 = !DILocation(line: 560, column: 47, scope: !811)
!1114 = !DILocation(line: 560, column: 38, scope: !811)
!1115 = !DILocation(line: 560, column: 60, scope: !811)
!1116 = !DILocation(line: 560, column: 51, scope: !811)
!1117 = !DILocation(line: 560, column: 74, scope: !811)
!1118 = !DILocation(line: 560, column: 65, scope: !811)
!1119 = !DILocation(line: 560, column: 89, scope: !811)
!1120 = !DILocation(line: 560, column: 82, scope: !811)
!1121 = !DILocation(line: 560, column: 81, scope: !811)
!1122 = !DILocation(line: 560, column: 78, scope: !811)
!1123 = !DILocation(line: 563, column: 22, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !811, file: !2, line: 563, column: 10)
!1125 = !DILocation(line: 563, column: 40, scope: !1124)
!1126 = !DILocation(line: 561, column: 34, scope: !811)
!1127 = !DILocation(line: 562, column: 47, scope: !811)
!1128 = !DILocation(line: 562, column: 38, scope: !811)
!1129 = !DILocation(line: 562, column: 60, scope: !811)
!1130 = !DILocation(line: 562, column: 51, scope: !811)
!1131 = !DILocation(line: 562, column: 74, scope: !811)
!1132 = !DILocation(line: 562, column: 65, scope: !811)
!1133 = !DILocation(line: 561, column: 46, scope: !811)
!1134 = !DILocation(line: 561, column: 38, scope: !811)
!1135 = !DILocation(line: 561, column: 60, scope: !811)
!1136 = !DILocation(line: 561, column: 50, scope: !811)
!1137 = !DILocation(line: 561, column: 74, scope: !811)
!1138 = !DILocation(line: 561, column: 64, scope: !811)
!1139 = !DILocation(line: 564, column: 9, scope: !1140)
!1140 = distinct !DILexicalBlock(scope: !1124, file: !2, line: 563, column: 74)
!1141 = !DILocation(line: 565, column: 9, scope: !1140)
!1142 = !DILocation(line: 566, column: 18, scope: !1140)
!1143 = distinct !DIAssignID()
!1144 = !DILocation(line: 567, column: 18, scope: !1140)
!1145 = distinct !DIAssignID()
!1146 = !DILocation(line: 570, column: 9, scope: !1147)
!1147 = distinct !DILexicalBlock(scope: !1148, file: !2, line: 570, column: 9)
!1148 = distinct !DILexicalBlock(scope: !1124, file: !2, line: 569, column: 12)
!1149 = !DILocation(line: 570, column: 9, scope: !1150)
!1150 = distinct !DILexicalBlock(scope: !1147, file: !2, line: 570, column: 9)
!1151 = !DILocation(line: 573, column: 13, scope: !818)
!1152 = !DILocation(line: 573, column: 17, scope: !818)
!1153 = !DILocation(line: 574, column: 34, scope: !817)
!1154 = !DILocation(line: 574, column: 46, scope: !817)
!1155 = !DILocation(line: 574, column: 38, scope: !817)
!1156 = !DILocation(line: 574, column: 60, scope: !817)
!1157 = !DILocation(line: 574, column: 50, scope: !817)
!1158 = !DILocation(line: 574, column: 74, scope: !817)
!1159 = !DILocation(line: 574, column: 64, scope: !817)
!1160 = !DILocation(line: 0, scope: !817)
!1161 = !DILocation(line: 576, column: 22, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !817, file: !2, line: 576, column: 10)
!1163 = !DILocation(line: 576, column: 10, scope: !817)
!1164 = !DILocation(line: 575, column: 34, scope: !817)
!1165 = !DILocation(line: 575, column: 46, scope: !817)
!1166 = !DILocation(line: 575, column: 38, scope: !817)
!1167 = !DILocation(line: 575, column: 60, scope: !817)
!1168 = !DILocation(line: 575, column: 50, scope: !817)
!1169 = !DILocation(line: 575, column: 74, scope: !817)
!1170 = !DILocation(line: 575, column: 64, scope: !817)
!1171 = !DILocation(line: 577, column: 9, scope: !1172)
!1172 = distinct !DILexicalBlock(scope: !1162, file: !2, line: 576, column: 41)
!1173 = !DILocation(line: 578, column: 18, scope: !1172)
!1174 = distinct !DIAssignID()
!1175 = distinct !DIAssignID()
!1176 = !DILocation(line: 605, column: 55, scope: !782)
!1177 = !DILocation(line: 580, column: 18, scope: !1172)
!1178 = !DILocation(line: 583, column: 9, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !1180, file: !2, line: 583, column: 9)
!1180 = distinct !DILexicalBlock(scope: !1162, file: !2, line: 582, column: 12)
!1181 = !DILocation(line: 583, column: 9, scope: !1182)
!1182 = distinct !DILexicalBlock(scope: !1179, file: !2, line: 583, column: 9)
!1183 = !DILocation(line: 586, column: 18, scope: !822)
!1184 = !DILocation(line: 587, column: 34, scope: !821)
!1185 = !DILocation(line: 587, column: 47, scope: !821)
!1186 = !DILocation(line: 587, column: 38, scope: !821)
!1187 = !DILocation(line: 587, column: 60, scope: !821)
!1188 = !DILocation(line: 587, column: 51, scope: !821)
!1189 = !DILocation(line: 587, column: 73, scope: !821)
!1190 = !DILocation(line: 587, column: 64, scope: !821)
!1191 = !DILocation(line: 587, column: 88, scope: !821)
!1192 = !DILocation(line: 587, column: 81, scope: !821)
!1193 = !DILocation(line: 587, column: 80, scope: !821)
!1194 = !DILocation(line: 587, column: 77, scope: !821)
!1195 = !DILocation(line: 0, scope: !821)
!1196 = !DILocation(line: 589, column: 22, scope: !1197)
!1197 = distinct !DILexicalBlock(scope: !821, file: !2, line: 589, column: 10)
!1198 = !DILocation(line: 589, column: 10, scope: !821)
!1199 = !DILocation(line: 588, column: 34, scope: !821)
!1200 = !DILocation(line: 588, column: 47, scope: !821)
!1201 = !DILocation(line: 588, column: 38, scope: !821)
!1202 = !DILocation(line: 588, column: 60, scope: !821)
!1203 = !DILocation(line: 588, column: 51, scope: !821)
!1204 = !DILocation(line: 588, column: 73, scope: !821)
!1205 = !DILocation(line: 588, column: 64, scope: !821)
!1206 = distinct !DIAssignID()
!1207 = !DILocation(line: 591, column: 18, scope: !1208)
!1208 = distinct !DILexicalBlock(scope: !1197, file: !2, line: 589, column: 41)
!1209 = !DILocation(line: 592, column: 9, scope: !1208)
!1210 = !DILocation(line: 593, column: 18, scope: !1208)
!1211 = distinct !DIAssignID()
!1212 = !DILocation(line: 596, column: 9, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1214, file: !2, line: 596, column: 9)
!1214 = distinct !DILexicalBlock(scope: !1197, file: !2, line: 595, column: 12)
!1215 = !DILocation(line: 596, column: 9, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !1213, file: !2, line: 596, column: 9)
!1217 = !DILocation(line: 600, column: 16, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !822, file: !2, line: 599, column: 10)
!1219 = distinct !DIAssignID()
!1220 = !DILocation(line: 601, column: 16, scope: !1218)
!1221 = distinct !DIAssignID()
!1222 = !DILocation(line: 602, column: 7, scope: !1223)
!1223 = distinct !DILexicalBlock(scope: !1218, file: !2, line: 602, column: 7)
!1224 = !DILocation(line: 602, column: 7, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !1223, file: !2, line: 602, column: 7)
!1226 = !DILocation(line: 605, column: 48, scope: !782)
!1227 = !DILocation(line: 605, column: 17, scope: !782)
!1228 = !DILocation(line: 606, column: 48, scope: !782)
!1229 = !DILocation(line: 606, column: 17, scope: !782)
!1230 = !DILocation(line: 608, column: 25, scope: !782)
!1231 = !DILocation(line: 608, column: 32, scope: !782)
!1232 = !DILocation(line: 608, column: 28, scope: !782)
!1233 = !DILocation(line: 608, column: 43, scope: !782)
!1234 = !DILocation(line: 608, column: 50, scope: !782)
!1235 = !DILocation(line: 608, column: 46, scope: !782)
!1236 = !DILocation(line: 608, column: 36, scope: !782)
!1237 = !DILocation(line: 608, column: 18, scope: !782)
!1238 = !DILocation(line: 609, column: 37, scope: !782)
!1239 = !DILocation(line: 609, column: 33, scope: !782)
!1240 = !DILocation(line: 609, column: 20, scope: !782)
!1241 = !DILocation(line: 609, column: 61, scope: !782)
!1242 = !DILocation(line: 609, column: 57, scope: !782)
!1243 = !DILocation(line: 609, column: 44, scope: !782)
!1244 = !DILocation(line: 609, column: 42, scope: !782)
!1245 = !DILocation(line: 609, column: 13, scope: !782)
!1246 = !DILocation(line: 610, column: 30, scope: !782)
!1247 = !DILocation(line: 610, column: 33, scope: !782)
!1248 = !DILocation(line: 610, column: 20, scope: !782)
!1249 = !DILocation(line: 610, column: 54, scope: !782)
!1250 = !DILocation(line: 610, column: 57, scope: !782)
!1251 = !DILocation(line: 610, column: 44, scope: !782)
!1252 = !DILocation(line: 610, column: 42, scope: !782)
!1253 = !DILocation(line: 610, column: 17, scope: !782)
!1254 = !DILocation(line: 611, column: 45, scope: !782)
!1255 = !DILocation(line: 611, column: 69, scope: !782)
!1256 = !DILocation(line: 611, column: 67, scope: !782)
!1257 = !DILocation(line: 611, column: 42, scope: !782)
!1258 = !DILocation(line: 611, column: 17, scope: !782)
!1259 = !DILocation(line: 612, column: 44, scope: !782)
!1260 = !DILocation(line: 612, column: 42, scope: !782)
!1261 = !DILocation(line: 612, column: 17, scope: !782)
!1262 = !DILocation(line: 614, column: 9, scope: !1263)
!1263 = distinct !DILexicalBlock(scope: !782, file: !2, line: 614, column: 9)
!1264 = !DILocation(line: 614, column: 9, scope: !782)
!1265 = !DILocation(line: 621, column: 3, scope: !721)
!1266 = !DILocation(line: 0, scope: !721)
!1267 = !DILocation(line: 622, column: 1, scope: !709)
!1268 = !DISubprogram(name: "gsl_sf_hyperg_1F1_e", scope: !1269, file: !1269, line: 65, type: !1270, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1269 = !DIFile(filename: "../gsl/gsl_sf_hyperg.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "6a7ad80bd86b12c428cf1476c4b61a8a")
!1270 = !DISubroutineType(types: !1271)
!1271 = !{!45, !96, !96, !96, !97}
!1272 = distinct !DISubprogram(name: "gsl_sf_hyperg_2F1_conj_e", scope: !2, file: !2, line: 779, type: !385, scopeLine: 782, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !1273)
!1273 = !{!1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281}
!1274 = !DILocalVariable(name: "aR", arg: 1, scope: !1272, file: !2, line: 779, type: !96)
!1275 = !DILocalVariable(name: "aI", arg: 2, scope: !1272, file: !2, line: 779, type: !96)
!1276 = !DILocalVariable(name: "c", arg: 3, scope: !1272, file: !2, line: 779, type: !96)
!1277 = !DILocalVariable(name: "x", arg: 4, scope: !1272, file: !2, line: 780, type: !96)
!1278 = !DILocalVariable(name: "result", arg: 5, scope: !1272, file: !2, line: 781, type: !97)
!1279 = !DILocalVariable(name: "ax", scope: !1272, file: !2, line: 783, type: !96)
!1280 = !DILocalVariable(name: "rintc", scope: !1272, file: !2, line: 784, type: !96)
!1281 = !DILocalVariable(name: "c_neg_integer", scope: !1272, file: !2, line: 785, type: !115)
!1282 = !DILocation(line: 0, scope: !1272)
!1283 = !DILocation(line: 783, column: 21, scope: !1272)
!1284 = !DILocation(line: 785, column: 33, scope: !1272)
!1285 = !DILocation(line: 785, column: 40, scope: !1272)
!1286 = !DILocation(line: 784, column: 32, scope: !1272)
!1287 = !DILocation(line: 784, column: 24, scope: !1272)
!1288 = !DILocation(line: 785, column: 51, scope: !1272)
!1289 = !DILocation(line: 785, column: 44, scope: !1272)
!1290 = !DILocation(line: 785, column: 60, scope: !1272)
!1291 = !DILocation(line: 790, column: 9, scope: !1292)
!1292 = distinct !DILexicalBlock(scope: !1272, file: !2, line: 790, column: 6)
!1293 = !DILocation(line: 790, column: 16, scope: !1292)
!1294 = !DILocation(line: 788, column: 15, scope: !1272)
!1295 = !DILocation(line: 788, column: 11, scope: !1272)
!1296 = !DILocation(line: 791, column: 5, scope: !1297)
!1297 = distinct !DILexicalBlock(scope: !1298, file: !2, line: 791, column: 5)
!1298 = distinct !DILexicalBlock(scope: !1292, file: !2, line: 790, column: 46)
!1299 = !DILocation(line: 791, column: 5, scope: !1300)
!1300 = distinct !DILexicalBlock(scope: !1297, file: !2, line: 791, column: 5)
!1301 = !DILocation(line: 794, column: 13, scope: !1302)
!1302 = distinct !DILexicalBlock(scope: !1272, file: !2, line: 794, column: 9)
!1303 = !DILocation(line: 794, column: 20, scope: !1302)
!1304 = !DILocation(line: 795, column: 12, scope: !1302)
!1305 = !DILocation(line: 795, column: 18, scope: !1302)
!1306 = !DILocation(line: 797, column: 12, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !1302, file: !2, line: 796, column: 7)
!1308 = !DILocation(line: 797, column: 5, scope: !1307)
!1309 = !DILocation(line: 799, column: 20, scope: !1310)
!1310 = distinct !DILexicalBlock(scope: !1302, file: !2, line: 799, column: 11)
!1311 = !DILocation(line: 799, column: 27, scope: !1310)
!1312 = !DILocation(line: 800, column: 10, scope: !1313)
!1313 = distinct !DILexicalBlock(scope: !1314, file: !2, line: 800, column: 8)
!1314 = distinct !DILexicalBlock(scope: !1310, file: !2, line: 799, column: 47)
!1315 = !DILocation(line: 800, column: 8, scope: !1314)
!1316 = !DILocation(line: 801, column: 14, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1313, file: !2, line: 800, column: 19)
!1318 = !DILocation(line: 801, column: 7, scope: !1317)
!1319 = !DILocation(line: 804, column: 14, scope: !1320)
!1320 = distinct !DILexicalBlock(scope: !1313, file: !2, line: 803, column: 10)
!1321 = !DILocation(line: 804, column: 7, scope: !1320)
!1322 = !DILocation(line: 808, column: 10, scope: !1323)
!1323 = distinct !DILexicalBlock(scope: !1324, file: !2, line: 808, column: 8)
!1324 = distinct !DILexicalBlock(scope: !1310, file: !2, line: 807, column: 8)
!1325 = !DILocation(line: 808, column: 8, scope: !1324)
!1326 = !DILocation(line: 811, column: 14, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !1323, file: !2, line: 808, column: 17)
!1328 = !DILocation(line: 811, column: 7, scope: !1327)
!1329 = !DILocation(line: 817, column: 5, scope: !1330)
!1330 = distinct !DILexicalBlock(scope: !1324, file: !2, line: 817, column: 5)
!1331 = !DILocation(line: 819, column: 1, scope: !1272)
!1332 = distinct !DISubprogram(name: "hyperg_2F1_conj_series", scope: !2, file: !2, line: 112, type: !1333, scopeLine: 115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !1335)
!1333 = !DISubroutineType(types: !1334)
!1334 = !{!45, !96, !96, !96, !83, !97}
!1335 = !{!1336, !1337, !1338, !1339, !1340, !1341, !1344, !1345, !1346, !1347, !1348}
!1336 = !DILocalVariable(name: "aR", arg: 1, scope: !1332, file: !2, line: 112, type: !96)
!1337 = !DILocalVariable(name: "aI", arg: 2, scope: !1332, file: !2, line: 112, type: !96)
!1338 = !DILocalVariable(name: "c", arg: 3, scope: !1332, file: !2, line: 112, type: !96)
!1339 = !DILocalVariable(name: "x", arg: 4, scope: !1332, file: !2, line: 113, type: !83)
!1340 = !DILocalVariable(name: "result", arg: 5, scope: !1332, file: !2, line: 114, type: !97)
!1341 = !DILocalVariable(name: "sum_pos", scope: !1342, file: !2, line: 122, type: !83)
!1342 = distinct !DILexicalBlock(scope: !1343, file: !2, line: 121, column: 8)
!1343 = distinct !DILexicalBlock(scope: !1332, file: !2, line: 116, column: 6)
!1344 = !DILocalVariable(name: "sum_neg", scope: !1342, file: !2, line: 123, type: !83)
!1345 = !DILocalVariable(name: "del_pos", scope: !1342, file: !2, line: 124, type: !83)
!1346 = !DILocalVariable(name: "del_neg", scope: !1342, file: !2, line: 125, type: !83)
!1347 = !DILocalVariable(name: "del", scope: !1342, file: !2, line: 126, type: !83)
!1348 = !DILocalVariable(name: "k", scope: !1342, file: !2, line: 127, type: !83)
!1349 = !DILocation(line: 0, scope: !1332)
!1350 = !DILocation(line: 116, column: 8, scope: !1343)
!1351 = !DILocation(line: 116, column: 6, scope: !1332)
!1352 = !DILocation(line: 128, column: 5, scope: !1342)
!1353 = !DILocation(line: 118, column: 17, scope: !1354)
!1354 = distinct !DILexicalBlock(scope: !1343, file: !2, line: 116, column: 16)
!1355 = !DILocation(line: 119, column: 5, scope: !1356)
!1356 = distinct !DILexicalBlock(scope: !1354, file: !2, line: 119, column: 5)
!1357 = !DILocation(line: 0, scope: !1342)
!1358 = !DILocation(line: 123, column: 12, scope: !1342)
!1359 = !DILocation(line: 125, column: 12, scope: !1342)
!1360 = !DILocation(line: 129, column: 18, scope: !1361)
!1361 = distinct !DILexicalBlock(scope: !1342, file: !2, line: 128, column: 8)
!1362 = !DILocation(line: 129, column: 21, scope: !1361)
!1363 = !DILocation(line: 129, column: 29, scope: !1361)
!1364 = !DILocation(line: 129, column: 41, scope: !1361)
!1365 = !DILocation(line: 129, column: 49, scope: !1361)
!1366 = !DILocation(line: 129, column: 46, scope: !1361)
!1367 = !DILocation(line: 129, column: 37, scope: !1361)
!1368 = !DILocation(line: 129, column: 54, scope: !1361)
!1369 = !DILocation(line: 129, column: 11, scope: !1361)
!1370 = !DILocation(line: 131, column: 14, scope: !1371)
!1371 = distinct !DILexicalBlock(scope: !1361, file: !2, line: 131, column: 10)
!1372 = !DILocation(line: 131, column: 10, scope: !1361)
!1373 = !DILocation(line: 133, column: 17, scope: !1374)
!1374 = distinct !DILexicalBlock(scope: !1371, file: !2, line: 131, column: 22)
!1375 = !DILocation(line: 134, column: 7, scope: !1374)
!1376 = !DILocation(line: 136, column: 20, scope: !1377)
!1377 = distinct !DILexicalBlock(scope: !1371, file: !2, line: 135, column: 12)
!1378 = !DILocation(line: 137, column: 17, scope: !1377)
!1379 = !DILocation(line: 140, column: 12, scope: !1380)
!1380 = distinct !DILexicalBlock(scope: !1361, file: !2, line: 140, column: 10)
!1381 = !DILocation(line: 140, column: 10, scope: !1361)
!1382 = !DILocation(line: 141, column: 32, scope: !1383)
!1383 = distinct !DILexicalBlock(scope: !1380, file: !2, line: 140, column: 21)
!1384 = !DILocation(line: 141, column: 22, scope: !1383)
!1385 = !DILocation(line: 142, column: 32, scope: !1383)
!1386 = !DILocation(line: 142, column: 17, scope: !1383)
!1387 = !DILocation(line: 143, column: 57, scope: !1383)
!1388 = !DILocation(line: 143, column: 46, scope: !1383)
!1389 = !DILocation(line: 143, column: 21, scope: !1383)
!1390 = !DILocation(line: 144, column: 53, scope: !1383)
!1391 = !DILocation(line: 144, column: 52, scope: !1383)
!1392 = !DILocation(line: 144, column: 60, scope: !1383)
!1393 = !DILocation(line: 144, column: 46, scope: !1383)
!1394 = !DILocation(line: 144, column: 81, scope: !1383)
!1395 = !DILocation(line: 144, column: 68, scope: !1383)
!1396 = !DILocation(line: 144, column: 66, scope: !1383)
!1397 = !DILocation(line: 144, column: 21, scope: !1383)
!1398 = !DILocation(line: 145, column: 9, scope: !1399)
!1399 = distinct !DILexicalBlock(scope: !1383, file: !2, line: 145, column: 9)
!1400 = !DILocation(line: 149, column: 27, scope: !1342)
!1401 = !DILocation(line: 149, column: 47, scope: !1342)
!1402 = !DILocation(line: 149, column: 37, scope: !1342)
!1403 = !DILocation(line: 149, column: 13, scope: !1342)
!1404 = !DILocation(line: 149, column: 59, scope: !1342)
!1405 = !DILocation(line: 149, column: 5, scope: !1361)
!1406 = distinct !{!1406, !1352, !1407, !477}
!1407 = !DILocation(line: 149, column: 76, scope: !1342)
!1408 = !DILocation(line: 151, column: 18, scope: !1342)
!1409 = !DILocation(line: 152, column: 13, scope: !1342)
!1410 = !DILocation(line: 153, column: 53, scope: !1342)
!1411 = !DILocation(line: 153, column: 42, scope: !1342)
!1412 = !DILocation(line: 153, column: 17, scope: !1342)
!1413 = !DILocation(line: 154, column: 49, scope: !1342)
!1414 = !DILocation(line: 154, column: 48, scope: !1342)
!1415 = !DILocation(line: 154, column: 57, scope: !1342)
!1416 = !DILocation(line: 154, column: 42, scope: !1342)
!1417 = !DILocation(line: 154, column: 79, scope: !1342)
!1418 = !DILocation(line: 154, column: 66, scope: !1342)
!1419 = !DILocation(line: 154, column: 64, scope: !1342)
!1420 = !DILocation(line: 154, column: 17, scope: !1342)
!1421 = !DILocation(line: 156, column: 5, scope: !1342)
!1422 = !DILocation(line: 0, scope: !1343)
!1423 = !DILocation(line: 158, column: 1, scope: !1332)
!1424 = distinct !DISubprogram(name: "hyperg_2F1_conj_luke", scope: !2, file: !2, line: 268, type: !385, scopeLine: 271, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !1425)
!1425 = !{!1426, !1427, !1428, !1429, !1430, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1439, !1440, !1441, !1442, !1443, !1444, !1445, !1446, !1447, !1448, !1449, !1450, !1452, !1453, !1454, !1455, !1456, !1457, !1458, !1459, !1460, !1461, !1462, !1463, !1464, !1465, !1466, !1467}
!1426 = !DILocalVariable(name: "aR", arg: 1, scope: !1424, file: !2, line: 268, type: !96)
!1427 = !DILocalVariable(name: "aI", arg: 2, scope: !1424, file: !2, line: 268, type: !96)
!1428 = !DILocalVariable(name: "c", arg: 3, scope: !1424, file: !2, line: 268, type: !96)
!1429 = !DILocalVariable(name: "xin", arg: 4, scope: !1424, file: !2, line: 269, type: !96)
!1430 = !DILocalVariable(name: "result", arg: 5, scope: !1424, file: !2, line: 270, type: !97)
!1431 = !DILocalVariable(name: "stat_iter", scope: !1424, file: !2, line: 272, type: !45)
!1432 = !DILocalVariable(name: "RECUR_BIG", scope: !1424, file: !2, line: 273, type: !96)
!1433 = !DILocalVariable(name: "nmax", scope: !1424, file: !2, line: 274, type: !115)
!1434 = !DILocalVariable(name: "n", scope: !1424, file: !2, line: 275, type: !45)
!1435 = !DILocalVariable(name: "x", scope: !1424, file: !2, line: 276, type: !96)
!1436 = !DILocalVariable(name: "x3", scope: !1424, file: !2, line: 277, type: !96)
!1437 = !DILocalVariable(name: "atimesb", scope: !1424, file: !2, line: 278, type: !96)
!1438 = !DILocalVariable(name: "apb", scope: !1424, file: !2, line: 279, type: !96)
!1439 = !DILocalVariable(name: "t0", scope: !1424, file: !2, line: 280, type: !96)
!1440 = !DILocalVariable(name: "t1", scope: !1424, file: !2, line: 281, type: !96)
!1441 = !DILocalVariable(name: "t2", scope: !1424, file: !2, line: 282, type: !96)
!1442 = !DILocalVariable(name: "F", scope: !1424, file: !2, line: 283, type: !83)
!1443 = !DILocalVariable(name: "prec", scope: !1424, file: !2, line: 284, type: !83)
!1444 = !DILocalVariable(name: "Bnm3", scope: !1424, file: !2, line: 286, type: !83)
!1445 = !DILocalVariable(name: "Bnm2", scope: !1424, file: !2, line: 287, type: !83)
!1446 = !DILocalVariable(name: "Bnm1", scope: !1424, file: !2, line: 288, type: !83)
!1447 = !DILocalVariable(name: "Anm3", scope: !1424, file: !2, line: 290, type: !83)
!1448 = !DILocalVariable(name: "Anm2", scope: !1424, file: !2, line: 291, type: !83)
!1449 = !DILocalVariable(name: "Anm1", scope: !1424, file: !2, line: 292, type: !83)
!1450 = !DILocalVariable(name: "nm1", scope: !1451, file: !2, line: 295, type: !83)
!1451 = distinct !DILexicalBlock(scope: !1424, file: !2, line: 294, column: 12)
!1452 = !DILocalVariable(name: "nm2", scope: !1451, file: !2, line: 296, type: !83)
!1453 = !DILocalVariable(name: "npam1_npbm1", scope: !1451, file: !2, line: 297, type: !83)
!1454 = !DILocalVariable(name: "npam2_npbm2", scope: !1451, file: !2, line: 298, type: !83)
!1455 = !DILocalVariable(name: "npcm1", scope: !1451, file: !2, line: 299, type: !83)
!1456 = !DILocalVariable(name: "npcm2", scope: !1451, file: !2, line: 300, type: !83)
!1457 = !DILocalVariable(name: "tnm1", scope: !1451, file: !2, line: 301, type: !83)
!1458 = !DILocalVariable(name: "tnm3", scope: !1451, file: !2, line: 302, type: !83)
!1459 = !DILocalVariable(name: "tnm5", scope: !1451, file: !2, line: 303, type: !83)
!1460 = !DILocalVariable(name: "n2", scope: !1451, file: !2, line: 304, type: !83)
!1461 = !DILocalVariable(name: "F1", scope: !1451, file: !2, line: 305, type: !83)
!1462 = !DILocalVariable(name: "F2", scope: !1451, file: !2, line: 306, type: !83)
!1463 = !DILocalVariable(name: "F3", scope: !1451, file: !2, line: 307, type: !83)
!1464 = !DILocalVariable(name: "E", scope: !1451, file: !2, line: 308, type: !83)
!1465 = !DILocalVariable(name: "An", scope: !1451, file: !2, line: 310, type: !83)
!1466 = !DILocalVariable(name: "Bn", scope: !1451, file: !2, line: 311, type: !83)
!1467 = !DILocalVariable(name: "r", scope: !1451, file: !2, line: 312, type: !83)
!1468 = !DILocation(line: 0, scope: !1424)
!1469 = !DILocation(line: 276, column: 20, scope: !1424)
!1470 = !DILocation(line: 277, column: 22, scope: !1424)
!1471 = !DILocation(line: 277, column: 24, scope: !1424)
!1472 = !DILocation(line: 278, column: 28, scope: !1424)
!1473 = !DILocation(line: 278, column: 36, scope: !1424)
!1474 = !DILocation(line: 278, column: 32, scope: !1424)
!1475 = !DILocation(line: 279, column: 29, scope: !1424)
!1476 = !DILocation(line: 280, column: 28, scope: !1424)
!1477 = !DILocation(line: 281, column: 30, scope: !1424)
!1478 = !DILocation(line: 281, column: 40, scope: !1424)
!1479 = !DILocation(line: 281, column: 51, scope: !1424)
!1480 = !DILocation(line: 281, column: 46, scope: !1424)
!1481 = !DILocation(line: 282, column: 35, scope: !1424)
!1482 = !DILocation(line: 282, column: 30, scope: !1424)
!1483 = !DILocation(line: 282, column: 40, scope: !1424)
!1484 = !DILocation(line: 282, column: 54, scope: !1424)
!1485 = !DILocation(line: 282, column: 51, scope: !1424)
!1486 = !DILocation(line: 282, column: 46, scope: !1424)
!1487 = !DILocation(line: 287, column: 21, scope: !1424)
!1488 = !DILocation(line: 288, column: 26, scope: !1424)
!1489 = !DILocation(line: 288, column: 41, scope: !1424)
!1490 = !DILocation(line: 288, column: 37, scope: !1424)
!1491 = !DILocation(line: 288, column: 30, scope: !1424)
!1492 = !DILocation(line: 288, column: 21, scope: !1424)
!1493 = !DILocation(line: 291, column: 22, scope: !1424)
!1494 = !DILocation(line: 292, column: 32, scope: !1424)
!1495 = !DILocation(line: 292, column: 26, scope: !1424)
!1496 = !DILocation(line: 292, column: 22, scope: !1424)
!1497 = !DILocation(line: 292, column: 47, scope: !1424)
!1498 = !DILocation(line: 292, column: 56, scope: !1424)
!1499 = !DILocation(line: 292, column: 52, scope: !1424)
!1500 = !DILocation(line: 292, column: 66, scope: !1424)
!1501 = !DILocation(line: 292, column: 42, scope: !1424)
!1502 = !DILocation(line: 294, column: 3, scope: !1424)
!1503 = !DILocation(line: 292, column: 10, scope: !1424)
!1504 = !DILocation(line: 291, column: 10, scope: !1424)
!1505 = !DILocation(line: 290, column: 10, scope: !1424)
!1506 = !DILocation(line: 288, column: 10, scope: !1424)
!1507 = !DILocation(line: 287, column: 10, scope: !1424)
!1508 = !DILocation(line: 286, column: 10, scope: !1424)
!1509 = !DILocation(line: 275, column: 7, scope: !1424)
!1510 = !DILocation(line: 295, column: 20, scope: !1451)
!1511 = !DILocation(line: 295, column: 18, scope: !1451)
!1512 = !DILocation(line: 0, scope: !1451)
!1513 = !DILocation(line: 296, column: 20, scope: !1451)
!1514 = !DILocation(line: 296, column: 18, scope: !1451)
!1515 = !DILocation(line: 297, column: 39, scope: !1451)
!1516 = !DILocation(line: 297, column: 34, scope: !1451)
!1517 = !DILocation(line: 297, column: 49, scope: !1451)
!1518 = !DILocation(line: 297, column: 44, scope: !1451)
!1519 = !DILocation(line: 298, column: 39, scope: !1451)
!1520 = !DILocation(line: 298, column: 34, scope: !1451)
!1521 = !DILocation(line: 298, column: 49, scope: !1451)
!1522 = !DILocation(line: 298, column: 44, scope: !1451)
!1523 = !DILocation(line: 299, column: 24, scope: !1451)
!1524 = !DILocation(line: 300, column: 24, scope: !1451)
!1525 = !DILocation(line: 301, column: 21, scope: !1451)
!1526 = !DILocation(line: 301, column: 24, scope: !1451)
!1527 = !DILocation(line: 301, column: 20, scope: !1451)
!1528 = !DILocation(line: 302, column: 24, scope: !1451)
!1529 = !DILocation(line: 302, column: 20, scope: !1451)
!1530 = !DILocation(line: 303, column: 24, scope: !1451)
!1531 = !DILocation(line: 303, column: 20, scope: !1451)
!1532 = !DILocation(line: 304, column: 18, scope: !1451)
!1533 = !DILocation(line: 304, column: 17, scope: !1451)
!1534 = !DILocation(line: 305, column: 22, scope: !1451)
!1535 = !DILocation(line: 305, column: 36, scope: !1451)
!1536 = !DILocation(line: 305, column: 35, scope: !1451)
!1537 = !DILocation(line: 305, column: 26, scope: !1451)
!1538 = !DILocation(line: 305, column: 38, scope: !1451)
!1539 = !DILocation(line: 305, column: 42, scope: !1451)
!1540 = !DILocation(line: 305, column: 52, scope: !1451)
!1541 = !DILocation(line: 305, column: 65, scope: !1451)
!1542 = !DILocation(line: 305, column: 70, scope: !1451)
!1543 = !DILocation(line: 305, column: 61, scope: !1451)
!1544 = !DILocation(line: 306, column: 35, scope: !1451)
!1545 = !DILocation(line: 306, column: 26, scope: !1451)
!1546 = !DILocation(line: 306, column: 38, scope: !1451)
!1547 = !DILocation(line: 306, column: 42, scope: !1451)
!1548 = !DILocation(line: 306, column: 17, scope: !1451)
!1549 = !DILocation(line: 306, column: 52, scope: !1451)
!1550 = !DILocation(line: 306, column: 67, scope: !1451)
!1551 = !DILocation(line: 306, column: 72, scope: !1451)
!1552 = !DILocation(line: 306, column: 77, scope: !1451)
!1553 = !DILocation(line: 306, column: 83, scope: !1451)
!1554 = !DILocation(line: 306, column: 64, scope: !1451)
!1555 = !DILocation(line: 307, column: 29, scope: !1451)
!1556 = !DILocation(line: 307, column: 51, scope: !1451)
!1557 = !DILocation(line: 307, column: 61, scope: !1451)
!1558 = !DILocation(line: 307, column: 41, scope: !1451)
!1559 = !DILocation(line: 307, column: 77, scope: !1451)
!1560 = !DILocation(line: 307, column: 82, scope: !1451)
!1561 = !DILocation(line: 307, column: 87, scope: !1451)
!1562 = !DILocation(line: 307, column: 95, scope: !1451)
!1563 = !DILocation(line: 307, column: 97, scope: !1451)
!1564 = !DILocation(line: 307, column: 92, scope: !1451)
!1565 = !DILocation(line: 307, column: 100, scope: !1451)
!1566 = !DILocation(line: 307, column: 106, scope: !1451)
!1567 = !DILocation(line: 307, column: 73, scope: !1451)
!1568 = !DILocation(line: 308, column: 17, scope: !1451)
!1569 = !DILocation(line: 308, column: 32, scope: !1451)
!1570 = !DILocation(line: 308, column: 34, scope: !1451)
!1571 = !DILocation(line: 308, column: 29, scope: !1451)
!1572 = !DILocation(line: 308, column: 47, scope: !1451)
!1573 = !DILocation(line: 308, column: 53, scope: !1451)
!1574 = !DILocation(line: 308, column: 38, scope: !1451)
!1575 = !DILocation(line: 310, column: 21, scope: !1451)
!1576 = !DILocation(line: 310, column: 27, scope: !1451)
!1577 = !DILocation(line: 310, column: 38, scope: !1451)
!1578 = !DILocation(line: 310, column: 45, scope: !1451)
!1579 = !DILocation(line: 310, column: 47, scope: !1451)
!1580 = !DILocation(line: 310, column: 33, scope: !1451)
!1581 = !DILocation(line: 310, column: 57, scope: !1451)
!1582 = !DILocation(line: 310, column: 60, scope: !1451)
!1583 = !DILocation(line: 310, column: 53, scope: !1451)
!1584 = !DILocation(line: 311, column: 27, scope: !1451)
!1585 = !DILocation(line: 311, column: 47, scope: !1451)
!1586 = !DILocation(line: 311, column: 33, scope: !1451)
!1587 = !DILocation(line: 311, column: 60, scope: !1451)
!1588 = !DILocation(line: 311, column: 53, scope: !1451)
!1589 = !DILocation(line: 312, column: 18, scope: !1451)
!1590 = !DILocation(line: 314, column: 19, scope: !1451)
!1591 = !DILocation(line: 314, column: 23, scope: !1451)
!1592 = !DILocation(line: 317, column: 13, scope: !1593)
!1593 = distinct !DILexicalBlock(scope: !1451, file: !2, line: 317, column: 8)
!1594 = !DILocation(line: 317, column: 31, scope: !1593)
!1595 = !DILocation(line: 319, column: 8, scope: !1596)
!1596 = distinct !DILexicalBlock(scope: !1451, file: !2, line: 319, column: 8)
!1597 = !DILocation(line: 319, column: 17, scope: !1596)
!1598 = !DILocation(line: 319, column: 29, scope: !1596)
!1599 = !DILocation(line: 319, column: 32, scope: !1596)
!1600 = !DILocation(line: 319, column: 41, scope: !1596)
!1601 = !DILocation(line: 319, column: 8, scope: !1451)
!1602 = !DILocation(line: 320, column: 12, scope: !1603)
!1603 = distinct !DILexicalBlock(scope: !1596, file: !2, line: 319, column: 54)
!1604 = !DILocation(line: 321, column: 12, scope: !1603)
!1605 = !DILocation(line: 322, column: 12, scope: !1603)
!1606 = !DILocation(line: 323, column: 12, scope: !1603)
!1607 = !DILocation(line: 324, column: 12, scope: !1603)
!1608 = !DILocation(line: 325, column: 12, scope: !1603)
!1609 = !DILocation(line: 328, column: 5, scope: !1603)
!1610 = !DILocation(line: 329, column: 22, scope: !1611)
!1611 = distinct !DILexicalBlock(scope: !1596, file: !2, line: 329, column: 13)
!1612 = !DILocation(line: 329, column: 38, scope: !1611)
!1613 = !DILocation(line: 330, column: 12, scope: !1614)
!1614 = distinct !DILexicalBlock(scope: !1611, file: !2, line: 329, column: 67)
!1615 = !DILocation(line: 331, column: 12, scope: !1614)
!1616 = !DILocation(line: 332, column: 12, scope: !1614)
!1617 = !DILocation(line: 333, column: 12, scope: !1614)
!1618 = !DILocation(line: 334, column: 12, scope: !1614)
!1619 = !DILocation(line: 335, column: 12, scope: !1614)
!1620 = !DILocation(line: 338, column: 5, scope: !1614)
!1621 = !DILocation(line: 340, column: 6, scope: !1451)
!1622 = !DILocation(line: 349, column: 16, scope: !1424)
!1623 = !DILocation(line: 350, column: 34, scope: !1424)
!1624 = !DILocation(line: 350, column: 24, scope: !1424)
!1625 = !DILocation(line: 350, column: 22, scope: !1424)
!1626 = !DILocation(line: 350, column: 11, scope: !1424)
!1627 = !DILocation(line: 351, column: 44, scope: !1424)
!1628 = !DILocation(line: 351, column: 40, scope: !1424)
!1629 = !DILocation(line: 351, column: 52, scope: !1424)
!1630 = !DILocation(line: 351, column: 50, scope: !1424)
!1631 = !DILocation(line: 351, column: 15, scope: !1424)
!1632 = !DILocation(line: 354, column: 25, scope: !1424)
!1633 = !DILocation(line: 354, column: 36, scope: !1424)
!1634 = !DILocation(line: 354, column: 34, scope: !1424)
!1635 = !DILocation(line: 354, column: 45, scope: !1424)
!1636 = !DILocation(line: 354, column: 22, scope: !1424)
!1637 = !DILocation(line: 354, column: 15, scope: !1424)
!1638 = !DILocation(line: 356, column: 18, scope: !1424)
!1639 = !DILocation(line: 356, column: 16, scope: !1424)
!1640 = !DILocation(line: 358, column: 3, scope: !1424)
!1641 = distinct !DISubprogram(name: "gsl_sf_hyperg_2F1_renorm_e", scope: !2, file: !2, line: 823, type: !385, scopeLine: 827, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !1642)
!1642 = !{!1643, !1644, !1645, !1646, !1647, !1648, !1649, !1650, !1651, !1652, !1653, !1654, !1659, !1660, !1661, !1662, !1663, !1664, !1665, !1666, !1667, !1668, !1669, !1672, !1673, !1674, !1675, !1676, !1677, !1679, !1680, !1681, !1682, !1683}
!1643 = !DILocalVariable(name: "a", arg: 1, scope: !1641, file: !2, line: 823, type: !96)
!1644 = !DILocalVariable(name: "b", arg: 2, scope: !1641, file: !2, line: 823, type: !96)
!1645 = !DILocalVariable(name: "c", arg: 3, scope: !1641, file: !2, line: 823, type: !96)
!1646 = !DILocalVariable(name: "x", arg: 4, scope: !1641, file: !2, line: 824, type: !96)
!1647 = !DILocalVariable(name: "result", arg: 5, scope: !1641, file: !2, line: 825, type: !97)
!1648 = !DILocalVariable(name: "rinta", scope: !1641, file: !2, line: 828, type: !96)
!1649 = !DILocalVariable(name: "rintb", scope: !1641, file: !2, line: 829, type: !96)
!1650 = !DILocalVariable(name: "rintc", scope: !1641, file: !2, line: 830, type: !96)
!1651 = !DILocalVariable(name: "a_neg_integer", scope: !1641, file: !2, line: 831, type: !115)
!1652 = !DILocalVariable(name: "b_neg_integer", scope: !1641, file: !2, line: 832, type: !115)
!1653 = !DILocalVariable(name: "c_neg_integer", scope: !1641, file: !2, line: 833, type: !115)
!1654 = !DILocalVariable(name: "g1", scope: !1655, file: !2, line: 845, type: !98)
!1655 = distinct !DILexicalBlock(scope: !1656, file: !2, line: 842, column: 10)
!1656 = distinct !DILexicalBlock(scope: !1657, file: !2, line: 836, column: 8)
!1657 = distinct !DILexicalBlock(scope: !1658, file: !2, line: 835, column: 21)
!1658 = distinct !DILexicalBlock(scope: !1641, file: !2, line: 835, column: 6)
!1659 = !DILocalVariable(name: "g2", scope: !1655, file: !2, line: 845, type: !98)
!1660 = !DILocalVariable(name: "g3", scope: !1655, file: !2, line: 845, type: !98)
!1661 = !DILocalVariable(name: "g4", scope: !1655, file: !2, line: 845, type: !98)
!1662 = !DILocalVariable(name: "g5", scope: !1655, file: !2, line: 845, type: !98)
!1663 = !DILocalVariable(name: "s1", scope: !1655, file: !2, line: 846, type: !83)
!1664 = !DILocalVariable(name: "s2", scope: !1655, file: !2, line: 846, type: !83)
!1665 = !DILocalVariable(name: "s3", scope: !1655, file: !2, line: 846, type: !83)
!1666 = !DILocalVariable(name: "s4", scope: !1655, file: !2, line: 846, type: !83)
!1667 = !DILocalVariable(name: "s5", scope: !1655, file: !2, line: 846, type: !83)
!1668 = !DILocalVariable(name: "stat", scope: !1655, file: !2, line: 847, type: !45)
!1669 = !DILocalVariable(name: "F", scope: !1670, file: !2, line: 857, type: !98)
!1670 = distinct !DILexicalBlock(scope: !1671, file: !2, line: 856, column: 12)
!1671 = distinct !DILexicalBlock(scope: !1655, file: !2, line: 853, column: 10)
!1672 = !DILocalVariable(name: "stat_F", scope: !1670, file: !2, line: 858, type: !45)
!1673 = !DILocalVariable(name: "ln_pre_val", scope: !1670, file: !2, line: 859, type: !83)
!1674 = !DILocalVariable(name: "ln_pre_err", scope: !1670, file: !2, line: 860, type: !83)
!1675 = !DILocalVariable(name: "sg", scope: !1670, file: !2, line: 861, type: !83)
!1676 = !DILocalVariable(name: "stat_e", scope: !1670, file: !2, line: 862, type: !45)
!1677 = !DILocalVariable(name: "F", scope: !1678, file: !2, line: 871, type: !98)
!1678 = distinct !DILexicalBlock(scope: !1658, file: !2, line: 869, column: 8)
!1679 = !DILocalVariable(name: "lng", scope: !1678, file: !2, line: 872, type: !98)
!1680 = !DILocalVariable(name: "sgn", scope: !1678, file: !2, line: 873, type: !83)
!1681 = !DILocalVariable(name: "stat_g", scope: !1678, file: !2, line: 874, type: !45)
!1682 = !DILocalVariable(name: "stat_F", scope: !1678, file: !2, line: 875, type: !45)
!1683 = !DILocalVariable(name: "stat_e", scope: !1678, file: !2, line: 876, type: !45)
!1684 = distinct !DIAssignID()
!1685 = !DILocation(line: 0, scope: !1655)
!1686 = distinct !DIAssignID()
!1687 = distinct !DIAssignID()
!1688 = distinct !DIAssignID()
!1689 = distinct !DIAssignID()
!1690 = distinct !DIAssignID()
!1691 = distinct !DIAssignID()
!1692 = distinct !DIAssignID()
!1693 = distinct !DIAssignID()
!1694 = distinct !DIAssignID()
!1695 = distinct !DIAssignID()
!1696 = !DILocation(line: 0, scope: !1670)
!1697 = distinct !DIAssignID()
!1698 = !DILocation(line: 0, scope: !1678)
!1699 = distinct !DIAssignID()
!1700 = distinct !DIAssignID()
!1701 = !DILocation(line: 0, scope: !1641)
!1702 = !DILocation(line: 829, column: 32, scope: !1641)
!1703 = !DILocation(line: 829, column: 24, scope: !1641)
!1704 = !DILocation(line: 830, column: 32, scope: !1641)
!1705 = !DILocation(line: 830, column: 24, scope: !1641)
!1706 = !DILocation(line: 831, column: 33, scope: !1641)
!1707 = !DILocation(line: 831, column: 40, scope: !1641)
!1708 = !DILocation(line: 828, column: 32, scope: !1641)
!1709 = !DILocation(line: 828, column: 24, scope: !1641)
!1710 = !DILocation(line: 831, column: 51, scope: !1641)
!1711 = !DILocation(line: 831, column: 44, scope: !1641)
!1712 = !DILocation(line: 831, column: 60, scope: !1641)
!1713 = !DILocation(line: 833, column: 33, scope: !1641)
!1714 = !DILocation(line: 833, column: 40, scope: !1641)
!1715 = !DILocation(line: 835, column: 6, scope: !1641)
!1716 = !DILocation(line: 832, column: 33, scope: !1641)
!1717 = !DILocation(line: 832, column: 40, scope: !1641)
!1718 = !DILocation(line: 836, column: 23, scope: !1656)
!1719 = !DILocation(line: 839, column: 19, scope: !1720)
!1720 = distinct !DILexicalBlock(scope: !1656, file: !2, line: 836, column: 70)
!1721 = !DILocation(line: 840, column: 7, scope: !1720)
!1722 = !DILocation(line: 845, column: 7, scope: !1655)
!1723 = !DILocation(line: 846, column: 7, scope: !1655)
!1724 = !DILocation(line: 848, column: 37, scope: !1655)
!1725 = !DILocation(line: 848, column: 39, scope: !1655)
!1726 = !DILocation(line: 848, column: 15, scope: !1655)
!1727 = !DILocation(line: 849, column: 37, scope: !1655)
!1728 = !DILocation(line: 849, column: 39, scope: !1655)
!1729 = !DILocation(line: 849, column: 15, scope: !1655)
!1730 = !DILocation(line: 849, column: 12, scope: !1655)
!1731 = !DILocation(line: 850, column: 15, scope: !1655)
!1732 = !DILocation(line: 850, column: 12, scope: !1655)
!1733 = !DILocation(line: 851, column: 15, scope: !1655)
!1734 = !DILocation(line: 851, column: 12, scope: !1655)
!1735 = !DILocation(line: 852, column: 38, scope: !1655)
!1736 = !DILocation(line: 852, column: 15, scope: !1655)
!1737 = !DILocation(line: 853, column: 15, scope: !1671)
!1738 = !DILocation(line: 853, column: 10, scope: !1655)
!1739 = !DILocation(line: 854, column: 9, scope: !1740)
!1740 = distinct !DILexicalBlock(scope: !1741, file: !2, line: 854, column: 9)
!1741 = distinct !DILexicalBlock(scope: !1671, file: !2, line: 853, column: 21)
!1742 = !DILocation(line: 854, column: 9, scope: !1743)
!1743 = distinct !DILexicalBlock(scope: !1740, file: !2, line: 854, column: 9)
!1744 = !DILocation(line: 857, column: 9, scope: !1670)
!1745 = !DILocation(line: 858, column: 22, scope: !1670)
!1746 = !DILocation(line: 859, column: 32, scope: !1670)
!1747 = !DILocation(line: 859, column: 41, scope: !1670)
!1748 = !DILocation(line: 859, column: 36, scope: !1670)
!1749 = !DILocation(line: 859, column: 50, scope: !1670)
!1750 = !DILocation(line: 859, column: 45, scope: !1670)
!1751 = !DILocation(line: 859, column: 59, scope: !1670)
!1752 = !DILocation(line: 859, column: 54, scope: !1670)
!1753 = !DILocation(line: 859, column: 68, scope: !1670)
!1754 = !DILocation(line: 859, column: 63, scope: !1670)
!1755 = !DILocation(line: 860, column: 32, scope: !1670)
!1756 = !DILocation(line: 860, column: 41, scope: !1670)
!1757 = !DILocation(line: 860, column: 36, scope: !1670)
!1758 = !DILocation(line: 860, column: 50, scope: !1670)
!1759 = !DILocation(line: 860, column: 45, scope: !1670)
!1760 = !DILocation(line: 860, column: 59, scope: !1670)
!1761 = !DILocation(line: 860, column: 54, scope: !1670)
!1762 = !DILocation(line: 860, column: 68, scope: !1670)
!1763 = !DILocation(line: 860, column: 63, scope: !1670)
!1764 = !DILocation(line: 861, column: 22, scope: !1670)
!1765 = !DILocation(line: 861, column: 27, scope: !1670)
!1766 = !DILocation(line: 861, column: 25, scope: !1670)
!1767 = !DILocation(line: 861, column: 32, scope: !1670)
!1768 = !DILocation(line: 861, column: 30, scope: !1670)
!1769 = !DILocation(line: 861, column: 37, scope: !1670)
!1770 = !DILocation(line: 861, column: 35, scope: !1670)
!1771 = !DILocation(line: 861, column: 42, scope: !1670)
!1772 = !DILocation(line: 861, column: 40, scope: !1670)
!1773 = !DILocation(line: 863, column: 54, scope: !1670)
!1774 = !DILocation(line: 863, column: 50, scope: !1670)
!1775 = !DILocation(line: 863, column: 61, scope: !1670)
!1776 = !DILocation(line: 862, column: 22, scope: !1670)
!1777 = !DILocation(line: 865, column: 16, scope: !1670)
!1778 = !DILocation(line: 866, column: 7, scope: !1671)
!1779 = !DILocation(line: 0, scope: !1671)
!1780 = !DILocation(line: 867, column: 5, scope: !1656)
!1781 = !DILocation(line: 871, column: 5, scope: !1678)
!1782 = !DILocation(line: 872, column: 5, scope: !1678)
!1783 = !DILocation(line: 873, column: 5, scope: !1678)
!1784 = !DILocation(line: 874, column: 18, scope: !1678)
!1785 = !DILocation(line: 875, column: 18, scope: !1678)
!1786 = !DILocation(line: 876, column: 45, scope: !1678)
!1787 = !DILocation(line: 876, column: 40, scope: !1678)
!1788 = !DILocation(line: 876, column: 54, scope: !1678)
!1789 = !DILocation(line: 877, column: 43, scope: !1678)
!1790 = !DILocation(line: 877, column: 49, scope: !1678)
!1791 = !DILocation(line: 877, column: 46, scope: !1678)
!1792 = !DILocation(line: 877, column: 56, scope: !1678)
!1793 = !DILocation(line: 876, column: 18, scope: !1678)
!1794 = !DILocation(line: 879, column: 12, scope: !1678)
!1795 = !DILocation(line: 880, column: 3, scope: !1658)
!1796 = !DILocation(line: 0, scope: !1658)
!1797 = !DILocation(line: 881, column: 1, scope: !1641)
!1798 = !DISubprogram(name: "gsl_sf_exp_mult_err_e", scope: !383, file: !383, line: 122, type: !385, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1799 = distinct !DISubprogram(name: "gsl_sf_hyperg_2F1_conj_renorm_e", scope: !2, file: !2, line: 885, type: !385, scopeLine: 889, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !1800)
!1800 = !{!1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1815, !1816, !1817, !1818, !1819, !1820, !1823, !1824, !1825, !1826, !1827, !1829, !1830, !1831, !1832, !1833}
!1801 = !DILocalVariable(name: "aR", arg: 1, scope: !1799, file: !2, line: 885, type: !96)
!1802 = !DILocalVariable(name: "aI", arg: 2, scope: !1799, file: !2, line: 885, type: !96)
!1803 = !DILocalVariable(name: "c", arg: 3, scope: !1799, file: !2, line: 885, type: !96)
!1804 = !DILocalVariable(name: "x", arg: 4, scope: !1799, file: !2, line: 886, type: !96)
!1805 = !DILocalVariable(name: "result", arg: 5, scope: !1799, file: !2, line: 887, type: !97)
!1806 = !DILocalVariable(name: "rintc", scope: !1799, file: !2, line: 890, type: !96)
!1807 = !DILocalVariable(name: "rinta", scope: !1799, file: !2, line: 891, type: !96)
!1808 = !DILocalVariable(name: "a_neg_integer", scope: !1799, file: !2, line: 892, type: !115)
!1809 = !DILocalVariable(name: "c_neg_integer", scope: !1799, file: !2, line: 893, type: !115)
!1810 = !DILocalVariable(name: "g1", scope: !1811, file: !2, line: 905, type: !98)
!1811 = distinct !DILexicalBlock(scope: !1812, file: !2, line: 902, column: 10)
!1812 = distinct !DILexicalBlock(scope: !1813, file: !2, line: 896, column: 8)
!1813 = distinct !DILexicalBlock(scope: !1814, file: !2, line: 895, column: 21)
!1814 = distinct !DILexicalBlock(scope: !1799, file: !2, line: 895, column: 6)
!1815 = !DILocalVariable(name: "g2", scope: !1811, file: !2, line: 905, type: !98)
!1816 = !DILocalVariable(name: "g3", scope: !1811, file: !2, line: 906, type: !98)
!1817 = !DILocalVariable(name: "a1", scope: !1811, file: !2, line: 907, type: !98)
!1818 = !DILocalVariable(name: "a2", scope: !1811, file: !2, line: 907, type: !98)
!1819 = !DILocalVariable(name: "stat", scope: !1811, file: !2, line: 908, type: !45)
!1820 = !DILocalVariable(name: "F", scope: !1821, file: !2, line: 916, type: !98)
!1821 = distinct !DILexicalBlock(scope: !1822, file: !2, line: 915, column: 12)
!1822 = distinct !DILexicalBlock(scope: !1811, file: !2, line: 912, column: 10)
!1823 = !DILocalVariable(name: "stat_F", scope: !1821, file: !2, line: 917, type: !45)
!1824 = !DILocalVariable(name: "ln_pre_val", scope: !1821, file: !2, line: 918, type: !83)
!1825 = !DILocalVariable(name: "ln_pre_err", scope: !1821, file: !2, line: 919, type: !83)
!1826 = !DILocalVariable(name: "stat_e", scope: !1821, file: !2, line: 920, type: !45)
!1827 = !DILocalVariable(name: "F", scope: !1828, file: !2, line: 929, type: !98)
!1828 = distinct !DILexicalBlock(scope: !1814, file: !2, line: 927, column: 8)
!1829 = !DILocalVariable(name: "lng", scope: !1828, file: !2, line: 930, type: !98)
!1830 = !DILocalVariable(name: "sgn", scope: !1828, file: !2, line: 931, type: !83)
!1831 = !DILocalVariable(name: "stat_g", scope: !1828, file: !2, line: 932, type: !45)
!1832 = !DILocalVariable(name: "stat_F", scope: !1828, file: !2, line: 933, type: !45)
!1833 = !DILocalVariable(name: "stat_e", scope: !1828, file: !2, line: 934, type: !45)
!1834 = distinct !DIAssignID()
!1835 = !DILocation(line: 0, scope: !1811)
!1836 = distinct !DIAssignID()
!1837 = distinct !DIAssignID()
!1838 = distinct !DIAssignID()
!1839 = distinct !DIAssignID()
!1840 = distinct !DIAssignID()
!1841 = !DILocation(line: 0, scope: !1821)
!1842 = distinct !DIAssignID()
!1843 = !DILocation(line: 0, scope: !1828)
!1844 = distinct !DIAssignID()
!1845 = distinct !DIAssignID()
!1846 = !DILocation(line: 0, scope: !1799)
!1847 = !DILocation(line: 890, column: 33, scope: !1799)
!1848 = !DILocation(line: 890, column: 24, scope: !1799)
!1849 = !DILocation(line: 892, column: 34, scope: !1799)
!1850 = !DILocation(line: 892, column: 40, scope: !1799)
!1851 = !DILocation(line: 891, column: 33, scope: !1799)
!1852 = !DILocation(line: 891, column: 24, scope: !1799)
!1853 = !DILocation(line: 892, column: 50, scope: !1799)
!1854 = !DILocation(line: 892, column: 43, scope: !1799)
!1855 = !DILocation(line: 892, column: 58, scope: !1799)
!1856 = !DILocation(line: 892, column: 67, scope: !1799)
!1857 = !DILocation(line: 892, column: 73, scope: !1799)
!1858 = !DILocation(line: 893, column: 34, scope: !1799)
!1859 = !DILocation(line: 893, column: 40, scope: !1799)
!1860 = !DILocation(line: 895, column: 6, scope: !1799)
!1861 = !DILocation(line: 896, column: 22, scope: !1812)
!1862 = !DILocation(line: 899, column: 19, scope: !1863)
!1863 = distinct !DILexicalBlock(scope: !1812, file: !2, line: 896, column: 37)
!1864 = !DILocation(line: 900, column: 7, scope: !1863)
!1865 = !DILocation(line: 905, column: 7, scope: !1811)
!1866 = !DILocation(line: 906, column: 7, scope: !1811)
!1867 = !DILocation(line: 907, column: 7, scope: !1811)
!1868 = !DILocation(line: 909, column: 42, scope: !1811)
!1869 = !DILocation(line: 909, column: 44, scope: !1811)
!1870 = !DILocation(line: 909, column: 15, scope: !1811)
!1871 = !DILocation(line: 910, column: 15, scope: !1811)
!1872 = !DILocation(line: 910, column: 12, scope: !1811)
!1873 = !DILocation(line: 911, column: 34, scope: !1811)
!1874 = !DILocation(line: 911, column: 15, scope: !1811)
!1875 = !DILocation(line: 912, column: 15, scope: !1822)
!1876 = !DILocation(line: 912, column: 10, scope: !1811)
!1877 = !DILocation(line: 913, column: 9, scope: !1878)
!1878 = distinct !DILexicalBlock(scope: !1879, file: !2, line: 913, column: 9)
!1879 = distinct !DILexicalBlock(scope: !1822, file: !2, line: 912, column: 21)
!1880 = !DILocation(line: 913, column: 9, scope: !1881)
!1881 = distinct !DILexicalBlock(scope: !1878, file: !2, line: 913, column: 9)
!1882 = !DILocation(line: 916, column: 9, scope: !1821)
!1883 = !DILocation(line: 917, column: 22, scope: !1821)
!1884 = !{i32 0, i32 25}
!1885 = !DILocation(line: 918, column: 37, scope: !1821)
!1886 = !DILocation(line: 918, column: 46, scope: !1821)
!1887 = !DILocation(line: 918, column: 41, scope: !1821)
!1888 = !DILocation(line: 918, column: 32, scope: !1821)
!1889 = !DILocation(line: 918, column: 56, scope: !1821)
!1890 = !DILocation(line: 918, column: 51, scope: !1821)
!1891 = !DILocation(line: 919, column: 39, scope: !1821)
!1892 = !DILocation(line: 919, column: 48, scope: !1821)
!1893 = !DILocation(line: 919, column: 43, scope: !1821)
!1894 = !DILocation(line: 919, column: 33, scope: !1821)
!1895 = !DILocation(line: 919, column: 58, scope: !1821)
!1896 = !DILocation(line: 919, column: 53, scope: !1821)
!1897 = !DILocation(line: 921, column: 49, scope: !1821)
!1898 = !DILocation(line: 921, column: 56, scope: !1821)
!1899 = !DILocation(line: 920, column: 22, scope: !1821)
!1900 = !DILocation(line: 923, column: 16, scope: !1821)
!1901 = !DILocation(line: 924, column: 7, scope: !1822)
!1902 = !DILocation(line: 0, scope: !1822)
!1903 = !DILocation(line: 925, column: 5, scope: !1812)
!1904 = !DILocation(line: 929, column: 5, scope: !1828)
!1905 = !DILocation(line: 930, column: 5, scope: !1828)
!1906 = !DILocation(line: 931, column: 5, scope: !1828)
!1907 = !DILocation(line: 932, column: 18, scope: !1828)
!1908 = !DILocation(line: 933, column: 18, scope: !1828)
!1909 = !DILocation(line: 934, column: 45, scope: !1828)
!1910 = !DILocation(line: 934, column: 40, scope: !1828)
!1911 = !DILocation(line: 934, column: 54, scope: !1828)
!1912 = !DILocation(line: 935, column: 43, scope: !1828)
!1913 = !DILocation(line: 935, column: 49, scope: !1828)
!1914 = !DILocation(line: 935, column: 46, scope: !1828)
!1915 = !DILocation(line: 935, column: 56, scope: !1828)
!1916 = !DILocation(line: 934, column: 18, scope: !1828)
!1917 = !DILocation(line: 937, column: 12, scope: !1828)
!1918 = !DILocation(line: 938, column: 3, scope: !1814)
!1919 = !DILocation(line: 0, scope: !1814)
!1920 = !DILocation(line: 939, column: 1, scope: !1799)
!1921 = !DISubprogram(name: "gsl_sf_lngamma_complex_e", scope: !370, file: !370, line: 103, type: !1922, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1922 = !DISubroutineType(types: !1923)
!1923 = !{!45, !83, !83, !97, !97}
!1924 = distinct !DISubprogram(name: "gsl_sf_hyperg_2F1", scope: !2, file: !2, line: 946, type: !1925, scopeLine: 947, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !1927)
!1925 = !DISubroutineType(types: !1926)
!1926 = !{!83, !83, !83, !83, !83}
!1927 = !{!1928, !1929, !1930, !1931, !1932, !1933}
!1928 = !DILocalVariable(name: "a", arg: 1, scope: !1924, file: !2, line: 946, type: !83)
!1929 = !DILocalVariable(name: "b", arg: 2, scope: !1924, file: !2, line: 946, type: !83)
!1930 = !DILocalVariable(name: "c", arg: 3, scope: !1924, file: !2, line: 946, type: !83)
!1931 = !DILocalVariable(name: "x", arg: 4, scope: !1924, file: !2, line: 946, type: !83)
!1932 = !DILocalVariable(name: "result", scope: !1924, file: !2, line: 948, type: !98)
!1933 = !DILocalVariable(name: "status", scope: !1924, file: !2, line: 948, type: !45)
!1934 = distinct !DIAssignID()
!1935 = !DILocation(line: 0, scope: !1924)
!1936 = !DILocation(line: 948, column: 3, scope: !1924)
!1937 = !DILocation(line: 948, column: 3, scope: !1938)
!1938 = distinct !DILexicalBlock(scope: !1924, file: !2, line: 948, column: 3)
!1939 = !DILocation(line: 948, column: 3, scope: !1940)
!1940 = distinct !DILexicalBlock(scope: !1941, file: !2, line: 948, column: 3)
!1941 = distinct !DILexicalBlock(scope: !1938, file: !2, line: 948, column: 3)
!1942 = !DILocation(line: 949, column: 1, scope: !1924)
!1943 = distinct !DISubprogram(name: "gsl_sf_hyperg_2F1_conj", scope: !2, file: !2, line: 951, type: !1925, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !1944)
!1944 = !{!1945, !1946, !1947, !1948, !1949, !1950}
!1945 = !DILocalVariable(name: "aR", arg: 1, scope: !1943, file: !2, line: 951, type: !83)
!1946 = !DILocalVariable(name: "aI", arg: 2, scope: !1943, file: !2, line: 951, type: !83)
!1947 = !DILocalVariable(name: "c", arg: 3, scope: !1943, file: !2, line: 951, type: !83)
!1948 = !DILocalVariable(name: "x", arg: 4, scope: !1943, file: !2, line: 951, type: !83)
!1949 = !DILocalVariable(name: "result", scope: !1943, file: !2, line: 953, type: !98)
!1950 = !DILocalVariable(name: "status", scope: !1943, file: !2, line: 953, type: !45)
!1951 = distinct !DIAssignID()
!1952 = !DILocation(line: 0, scope: !1943)
!1953 = !DILocation(line: 953, column: 3, scope: !1943)
!1954 = !DILocation(line: 953, column: 3, scope: !1955)
!1955 = distinct !DILexicalBlock(scope: !1943, file: !2, line: 953, column: 3)
!1956 = !DILocation(line: 953, column: 3, scope: !1957)
!1957 = distinct !DILexicalBlock(scope: !1958, file: !2, line: 953, column: 3)
!1958 = distinct !DILexicalBlock(scope: !1955, file: !2, line: 953, column: 3)
!1959 = !DILocation(line: 954, column: 1, scope: !1943)
!1960 = distinct !DISubprogram(name: "gsl_sf_hyperg_2F1_renorm", scope: !2, file: !2, line: 956, type: !1925, scopeLine: 957, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !1961)
!1961 = !{!1962, !1963, !1964, !1965, !1966, !1967}
!1962 = !DILocalVariable(name: "a", arg: 1, scope: !1960, file: !2, line: 956, type: !83)
!1963 = !DILocalVariable(name: "b", arg: 2, scope: !1960, file: !2, line: 956, type: !83)
!1964 = !DILocalVariable(name: "c", arg: 3, scope: !1960, file: !2, line: 956, type: !83)
!1965 = !DILocalVariable(name: "x", arg: 4, scope: !1960, file: !2, line: 956, type: !83)
!1966 = !DILocalVariable(name: "result", scope: !1960, file: !2, line: 958, type: !98)
!1967 = !DILocalVariable(name: "status", scope: !1960, file: !2, line: 958, type: !45)
!1968 = distinct !DIAssignID()
!1969 = !DILocation(line: 0, scope: !1960)
!1970 = !DILocation(line: 958, column: 3, scope: !1960)
!1971 = !DILocation(line: 958, column: 3, scope: !1972)
!1972 = distinct !DILexicalBlock(scope: !1960, file: !2, line: 958, column: 3)
!1973 = !DILocation(line: 958, column: 3, scope: !1974)
!1974 = distinct !DILexicalBlock(scope: !1975, file: !2, line: 958, column: 3)
!1975 = distinct !DILexicalBlock(scope: !1972, file: !2, line: 958, column: 3)
!1976 = !DILocation(line: 959, column: 1, scope: !1960)
!1977 = distinct !DISubprogram(name: "gsl_sf_hyperg_2F1_conj_renorm", scope: !2, file: !2, line: 961, type: !1925, scopeLine: 962, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !1978)
!1978 = !{!1979, !1980, !1981, !1982, !1983, !1984}
!1979 = !DILocalVariable(name: "aR", arg: 1, scope: !1977, file: !2, line: 961, type: !83)
!1980 = !DILocalVariable(name: "aI", arg: 2, scope: !1977, file: !2, line: 961, type: !83)
!1981 = !DILocalVariable(name: "c", arg: 3, scope: !1977, file: !2, line: 961, type: !83)
!1982 = !DILocalVariable(name: "x", arg: 4, scope: !1977, file: !2, line: 961, type: !83)
!1983 = !DILocalVariable(name: "result", scope: !1977, file: !2, line: 963, type: !98)
!1984 = !DILocalVariable(name: "status", scope: !1977, file: !2, line: 963, type: !45)
!1985 = distinct !DIAssignID()
!1986 = !DILocation(line: 0, scope: !1977)
!1987 = !DILocation(line: 963, column: 3, scope: !1977)
!1988 = !DILocation(line: 963, column: 3, scope: !1989)
!1989 = distinct !DILexicalBlock(scope: !1977, file: !2, line: 963, column: 3)
!1990 = !DILocation(line: 963, column: 3, scope: !1991)
!1991 = distinct !DILexicalBlock(scope: !1992, file: !2, line: 963, column: 3)
!1992 = distinct !DILexicalBlock(scope: !1989, file: !2, line: 963, column: 3)
!1993 = !DILocation(line: 964, column: 1, scope: !1977)
!1994 = !DISubprogram(name: "log", scope: !1995, file: !1995, line: 104, type: !1996, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1995 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!1996 = !DISubroutineType(types: !1997)
!1997 = !{!83, !83}
!1998 = !DISubprogram(name: "sqrt", scope: !1995, file: !1995, line: 143, type: !1996, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1999 = !DISubprogram(name: "gsl_sf_psi_e", scope: !2000, file: !2000, line: 60, type: !2001, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2000 = !DIFile(filename: "../gsl/gsl_sf_psi.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "991a41b1033bad74a63fe4c86bbfa6a4")
!2001 = !DISubroutineType(types: !2002)
!2002 = !{!45, !96, !97}
