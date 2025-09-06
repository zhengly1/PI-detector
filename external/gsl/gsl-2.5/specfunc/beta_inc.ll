; ModuleID = 'beta_inc.c'
source_filename = "beta_inc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [13 x i8] c"domain error\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [11 x i8] c"beta_inc.c\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [10 x i8] c"underflow\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [6 x i8] c"error\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [36 x i8] c"gsl_sf_beta_inc_e(a, b, x, &result)\00", align 1, !dbg !22

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_beta_inc_e(double noundef %0, double noundef %1, double noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 !dbg !77 {
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !130
  call void @llvm.dbg.assign(metadata i1 undef, metadata !94, metadata !DIExpression(), metadata !130, metadata ptr %5, metadata !DIExpression()), !dbg !131
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !132
  call void @llvm.dbg.assign(metadata i1 undef, metadata !102, metadata !DIExpression(), metadata !132, metadata ptr %6, metadata !DIExpression()), !dbg !131
  %7 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !133
  call void @llvm.dbg.assign(metadata i1 undef, metadata !108, metadata !DIExpression(), metadata !133, metadata ptr %7, metadata !DIExpression()), !dbg !134
  %8 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !135
  call void @llvm.dbg.assign(metadata i1 undef, metadata !110, metadata !DIExpression(), metadata !135, metadata ptr %8, metadata !DIExpression()), !dbg !134
  %9 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !136
  call void @llvm.dbg.assign(metadata i1 undef, metadata !111, metadata !DIExpression(), metadata !136, metadata ptr %9, metadata !DIExpression()), !dbg !134
  %10 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !137
  call void @llvm.dbg.assign(metadata i1 undef, metadata !112, metadata !DIExpression(), metadata !137, metadata ptr %10, metadata !DIExpression()), !dbg !134
  %11 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !138
  call void @llvm.dbg.assign(metadata i1 undef, metadata !120, metadata !DIExpression(), metadata !138, metadata ptr %11, metadata !DIExpression()), !dbg !139
  %12 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !140
  call void @llvm.dbg.assign(metadata i1 undef, metadata !125, metadata !DIExpression(), metadata !140, metadata ptr %12, metadata !DIExpression()), !dbg !141
  tail call void @llvm.dbg.value(metadata double %0, metadata !90, metadata !DIExpression()), !dbg !142
  tail call void @llvm.dbg.value(metadata double %1, metadata !91, metadata !DIExpression()), !dbg !142
  tail call void @llvm.dbg.value(metadata double %2, metadata !92, metadata !DIExpression()), !dbg !142
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !93, metadata !DIExpression()), !dbg !142
  %13 = fcmp olt double %2, 0.000000e+00, !dbg !143
  %14 = fcmp ogt double %2, 1.000000e+00
  %15 = or i1 %13, %14, !dbg !144
  br i1 %15, label %16, label %18, !dbg !144

16:                                               ; preds = %4
  store double 0x7FF8000000000000, ptr %3, align 8, !dbg !145, !tbaa !148
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !145
  store double 0x7FF8000000000000, ptr %17, align 8, !dbg !145, !tbaa !153
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 115, i32 noundef 1) #7, !dbg !154
  br label %178, !dbg !154

18:                                               ; preds = %4
  call void @llvm.dbg.value(metadata double %0, metadata !156, metadata !DIExpression()), !dbg !161
  %19 = fcmp olt double %0, 0.000000e+00, !dbg !163
  %20 = tail call double @llvm.floor.f64(double %0)
  %21 = fcmp oeq double %20, %0
  %22 = and i1 %19, %21, !dbg !164
  br i1 %22, label %28, label %23, !dbg !164

23:                                               ; preds = %18
  call void @llvm.dbg.value(metadata double %1, metadata !156, metadata !DIExpression()), !dbg !165
  %24 = fcmp olt double %1, 0.000000e+00, !dbg !167
  %25 = tail call double @llvm.floor.f64(double %1)
  %26 = fcmp oeq double %25, %1
  %27 = and i1 %24, %26, !dbg !168
  br i1 %27, label %28, label %30, !dbg !168

28:                                               ; preds = %23, %18
  store double 0x7FF8000000000000, ptr %3, align 8, !dbg !169, !tbaa !148
  %29 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !169
  store double 0x7FF8000000000000, ptr %29, align 8, !dbg !169, !tbaa !153
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 117, i32 noundef 1) #7, !dbg !172
  br label %178, !dbg !172

30:                                               ; preds = %23
  %31 = fadd double %0, %1, !dbg !174
  call void @llvm.dbg.value(metadata double %31, metadata !156, metadata !DIExpression()), !dbg !175
  %32 = fcmp olt double %31, 0.000000e+00, !dbg !177
  %33 = tail call double @llvm.floor.f64(double %31)
  %34 = fcmp oeq double %33, %31
  %35 = and i1 %32, %34, !dbg !178
  br i1 %35, label %36, label %38, !dbg !178

36:                                               ; preds = %30
  store double 0x7FF8000000000000, ptr %3, align 8, !dbg !179, !tbaa !148
  %37 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !179
  store double 0x7FF8000000000000, ptr %37, align 8, !dbg !179, !tbaa !153
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 119, i32 noundef 1) #7, !dbg !182
  br label %178, !dbg !182

38:                                               ; preds = %30
  %39 = fcmp oeq double %2, 0.000000e+00, !dbg !184
  br i1 %39, label %40, label %41, !dbg !185

40:                                               ; preds = %38
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false), !dbg !186
  br label %178, !dbg !188

41:                                               ; preds = %38
  %42 = fcmp oeq double %2, 1.000000e+00, !dbg !189
  br i1 %42, label %43, label %45, !dbg !190

43:                                               ; preds = %41
  store double 1.000000e+00, ptr %3, align 8, !dbg !191, !tbaa !148
  %44 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !193
  store double 0.000000e+00, ptr %44, align 8, !dbg !194, !tbaa !153
  br label %178, !dbg !195

45:                                               ; preds = %41
  %46 = fcmp ole double %0, 0.000000e+00, !dbg !196
  %47 = fcmp ole double %1, 0.000000e+00
  %48 = or i1 %46, %47, !dbg !197
  br i1 %48, label %49, label %82, !dbg !197

49:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7, !dbg !198
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #7, !dbg !198
  %50 = fsub double 1.000000e+00, %1, !dbg !199
  %51 = fadd double %0, 1.000000e+00, !dbg !200
  %52 = call i32 @gsl_sf_hyperg_2F1_e(double noundef %0, double noundef %50, double noundef %51, double noundef %2, ptr noundef nonnull %5) #7, !dbg !201
  tail call void @llvm.dbg.value(metadata i32 %52, metadata !104, metadata !DIExpression()), !dbg !131
  %53 = call i32 @gsl_sf_beta_e(double noundef %0, double noundef %1, ptr noundef nonnull %6) #7, !dbg !202
  tail call void @llvm.dbg.value(metadata i32 %53, metadata !106, metadata !DIExpression()), !dbg !131
  %54 = call double @pow(double noundef %2, double noundef %0) #7, !dbg !203
  %55 = fdiv double %54, %0, !dbg !204
  tail call void @llvm.dbg.value(metadata double %55, metadata !107, metadata !DIExpression()), !dbg !131
  %56 = load double, ptr %5, align 8, !dbg !205, !tbaa !148
  %57 = fmul double %55, %56, !dbg !206
  %58 = load double, ptr %6, align 8, !dbg !207, !tbaa !148
  %59 = fdiv double %57, %58, !dbg !208
  store double %59, ptr %3, align 8, !dbg !209, !tbaa !148
  %60 = call double @llvm.fabs.f64(double %55), !dbg !210
  %61 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !211
  %62 = load double, ptr %61, align 8, !dbg !211, !tbaa !153
  %63 = fmul double %60, %62, !dbg !212
  %64 = call double @llvm.fabs.f64(double %58), !dbg !213
  %65 = fdiv double %63, %64, !dbg !214
  %66 = fdiv double %59, %58, !dbg !215
  %67 = call double @llvm.fabs.f64(double %66), !dbg !216
  %68 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !217
  %69 = load double, ptr %68, align 8, !dbg !217, !tbaa !153
  %70 = fmul double %67, %69, !dbg !218
  %71 = fadd double %65, %70, !dbg !219
  %72 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !220
  store double %71, ptr %72, align 8, !dbg !221, !tbaa !153
  %73 = icmp eq i32 %52, 0, !dbg !222
  %74 = select i1 %73, i32 %53, i32 %52, !dbg !222
  tail call void @llvm.dbg.value(metadata i32 %74, metadata !103, metadata !DIExpression()), !dbg !131
  %75 = icmp eq i32 %74, 0, !dbg !223
  br i1 %75, label %76, label %80, !dbg !225

76:                                               ; preds = %49
  %77 = call double @llvm.fabs.f64(double %59), !dbg !226
  %78 = fcmp olt double %77, 0x10000000000000, !dbg !226
  br i1 %78, label %79, label %80, !dbg !229

79:                                               ; preds = %76
  call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 140, i32 noundef 15) #7, !dbg !230
  br label %80, !dbg !230

80:                                               ; preds = %49, %76, %79
  %81 = phi i32 [ 15, %79 ], [ 0, %76 ], [ %74, %49 ], !dbg !131
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #7, !dbg !232
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7, !dbg !232
  br label %178

82:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #7, !dbg !233
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #7, !dbg !234
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #7, !dbg !235
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #7, !dbg !236
  %83 = call i32 @gsl_sf_lnbeta_e(double noundef %0, double noundef %1, ptr noundef nonnull %7) #7, !dbg !237
  tail call void @llvm.dbg.value(metadata i32 %83, metadata !113, metadata !DIExpression()), !dbg !134
  %84 = fneg double %2, !dbg !238
  %85 = call i32 @gsl_sf_log_1plusx_e(double noundef %84, ptr noundef nonnull %9) #7, !dbg !239
  tail call void @llvm.dbg.value(metadata i32 %85, metadata !114, metadata !DIExpression()), !dbg !134
  %86 = call i32 @gsl_sf_log_e(double noundef %2, ptr noundef nonnull %8) #7, !dbg !240
  tail call void @llvm.dbg.value(metadata i32 %86, metadata !115, metadata !DIExpression()), !dbg !134
  %87 = icmp eq i32 %83, 0, !dbg !241
  %88 = icmp eq i32 %85, 0, !dbg !241
  %89 = select i1 %87, i1 %88, i1 false, !dbg !241
  %90 = icmp eq i32 %86, 0
  %91 = select i1 %89, i1 %90, i1 false, !dbg !241
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !116, metadata !DIExpression()), !dbg !134
  %92 = load double, ptr %7, align 8, !dbg !242, !tbaa !148
  %93 = load double, ptr %8, align 8, !dbg !243, !tbaa !148
  %94 = fmul double %93, %0, !dbg !244
  %95 = fsub double %94, %92, !dbg !245
  %96 = load double, ptr %9, align 8, !dbg !246, !tbaa !148
  %97 = fmul double %96, %1, !dbg !247
  %98 = fadd double %95, %97, !dbg !248
  tail call void @llvm.dbg.value(metadata double %98, metadata !117, metadata !DIExpression()), !dbg !134
  %99 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %7, i64 0, i32 1, !dbg !249
  %100 = load double, ptr %99, align 8, !dbg !249, !tbaa !153
  %101 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %8, i64 0, i32 1, !dbg !250
  %102 = load double, ptr %101, align 8, !dbg !250, !tbaa !153
  %103 = fmul double %102, %0, !dbg !251
  %104 = call double @llvm.fabs.f64(double %103), !dbg !252
  %105 = fadd double %100, %104, !dbg !253
  %106 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %9, i64 0, i32 1, !dbg !254
  %107 = load double, ptr %106, align 8, !dbg !254, !tbaa !153
  %108 = fmul double %107, %1, !dbg !255
  %109 = call double @llvm.fabs.f64(double %108), !dbg !256
  %110 = fadd double %105, %109, !dbg !257
  tail call void @llvm.dbg.value(metadata double %110, metadata !118, metadata !DIExpression()), !dbg !134
  %111 = call i32 @gsl_sf_exp_err_e(double noundef %98, double noundef %110, ptr noundef nonnull %10) #7, !dbg !258
  tail call void @llvm.dbg.value(metadata i32 %111, metadata !119, metadata !DIExpression()), !dbg !134
  br i1 %91, label %113, label %112, !dbg !259

112:                                              ; preds = %82
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false), !dbg !260
  call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 160, i32 noundef 7) #7, !dbg !263
  br label %176, !dbg !263

113:                                              ; preds = %82
  %114 = fadd double %0, 1.000000e+00, !dbg !265
  %115 = fadd double %31, 2.000000e+00, !dbg !266
  %116 = fdiv double %114, %115, !dbg !267
  %117 = fcmp ogt double %116, %2, !dbg !268
  br i1 %117, label %118, label %144, !dbg !269

118:                                              ; preds = %113
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #7, !dbg !270
  %119 = call fastcc i32 @beta_cont_frac(double noundef %0, double noundef %1, double noundef %2, ptr noundef nonnull %11), !dbg !271, !range !272
  tail call void @llvm.dbg.value(metadata i32 %119, metadata !123, metadata !DIExpression()), !dbg !139
  %120 = load double, ptr %10, align 8, !dbg !273, !tbaa !148
  %121 = load double, ptr %11, align 8, !dbg !274, !tbaa !148
  %122 = fmul double %120, %121, !dbg !275
  %123 = fdiv double %122, %0, !dbg !276
  store double %123, ptr %3, align 8, !dbg !277, !tbaa !148
  %124 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %10, i64 0, i32 1, !dbg !278
  %125 = load double, ptr %124, align 8, !dbg !278, !tbaa !153
  %126 = fmul double %121, %125, !dbg !279
  %127 = call double @llvm.fabs.f64(double %126), !dbg !280
  %128 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %11, i64 0, i32 1, !dbg !281
  %129 = load double, ptr %128, align 8, !dbg !281, !tbaa !153
  %130 = fmul double %120, %129, !dbg !282
  %131 = call double @llvm.fabs.f64(double %130), !dbg !283
  %132 = fadd double %127, %131, !dbg !284
  %133 = fdiv double %132, %0, !dbg !285
  %134 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !286
  store double %133, ptr %134, align 8, !dbg !287, !tbaa !153
  %135 = icmp eq i32 %111, 0, !dbg !288
  %136 = select i1 %135, i32 %119, i32 %111, !dbg !288
  tail call void @llvm.dbg.value(metadata i32 %136, metadata !124, metadata !DIExpression()), !dbg !139
  %137 = icmp eq i32 %136, 0, !dbg !289
  br i1 %137, label %138, label %142, !dbg !291

138:                                              ; preds = %118
  %139 = call double @llvm.fabs.f64(double %123), !dbg !292
  %140 = fcmp olt double %139, 0x10000000000000, !dbg !292
  br i1 %140, label %141, label %142, !dbg !295

141:                                              ; preds = %138
  call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 173, i32 noundef 15) #7, !dbg !296
  br label %142, !dbg !296

142:                                              ; preds = %118, %138, %141
  %143 = phi i32 [ 15, %141 ], [ 0, %138 ], [ %136, %118 ], !dbg !139
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #7, !dbg !298
  br label %176

144:                                              ; preds = %113
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #7, !dbg !299
  %145 = fsub double 1.000000e+00, %2, !dbg !300
  %146 = call fastcc i32 @beta_cont_frac(double noundef %1, double noundef %0, double noundef %145, ptr noundef nonnull %12), !dbg !301, !range !272
  tail call void @llvm.dbg.value(metadata i32 %146, metadata !127, metadata !DIExpression()), !dbg !141
  %147 = load double, ptr %10, align 8, !dbg !302, !tbaa !148
  %148 = load double, ptr %12, align 8, !dbg !303, !tbaa !148
  %149 = fmul double %147, %148, !dbg !304
  %150 = fdiv double %149, %1, !dbg !305
  tail call void @llvm.dbg.value(metadata double %150, metadata !129, metadata !DIExpression()), !dbg !141
  %151 = fsub double 1.000000e+00, %150, !dbg !306
  store double %151, ptr %3, align 8, !dbg !307, !tbaa !148
  %152 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %10, i64 0, i32 1, !dbg !308
  %153 = load double, ptr %152, align 8, !dbg !308, !tbaa !153
  %154 = fmul double %148, %153, !dbg !309
  %155 = call double @llvm.fabs.f64(double %154), !dbg !310
  %156 = fdiv double %155, %1, !dbg !311
  %157 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !312
  %158 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %12, i64 0, i32 1, !dbg !313
  %159 = load double, ptr %158, align 8, !dbg !313, !tbaa !153
  %160 = fmul double %147, %159, !dbg !314
  %161 = call double @llvm.fabs.f64(double %160), !dbg !315
  %162 = fdiv double %161, %1, !dbg !316
  %163 = fadd double %156, %162, !dbg !317
  %164 = call double @llvm.fabs.f64(double %150), !dbg !318
  %165 = fadd double %164, 1.000000e+00, !dbg !319
  %166 = fmul double %165, 0x3CC0000000000000, !dbg !320
  %167 = fadd double %166, %163, !dbg !321
  store double %167, ptr %157, align 8, !dbg !321, !tbaa !153
  switch i32 %111, label %174 [
    i32 15, label %168
    i32 0, label %168
  ], !dbg !322

168:                                              ; preds = %144, %144
  tail call void @llvm.dbg.value(metadata i32 %146, metadata !128, metadata !DIExpression()), !dbg !141
  %169 = icmp eq i32 %146, 0, !dbg !323
  br i1 %169, label %170, label %174, !dbg !325

170:                                              ; preds = %168
  %171 = call double @llvm.fabs.f64(double %151), !dbg !326
  %172 = fcmp olt double %171, 0x10000000000000, !dbg !326
  br i1 %172, label %173, label %174, !dbg !329

173:                                              ; preds = %170
  call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 195, i32 noundef 15) #7, !dbg !330
  br label %174, !dbg !330

174:                                              ; preds = %144, %168, %170, %173
  %175 = phi i32 [ 15, %173 ], [ 0, %170 ], [ %146, %168 ], [ %111, %144 ], !dbg !141
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #7, !dbg !332
  br label %176

176:                                              ; preds = %174, %142, %112
  %177 = phi i32 [ 7, %112 ], [ %143, %142 ], [ %175, %174 ], !dbg !134
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #7, !dbg !333
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #7, !dbg !333
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #7, !dbg !333
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #7, !dbg !333
  br label %178

178:                                              ; preds = %16, %28, %36, %40, %43, %80, %176
  %179 = phi i32 [ 1, %16 ], [ 1, %28 ], [ 1, %36 ], [ 0, %40 ], [ 0, %43 ], [ %81, %80 ], [ %177, %176 ], !dbg !334
  ret i32 %179, !dbg !335
}

declare !dbg !336 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare !dbg !341 i32 @gsl_sf_hyperg_2F1_e(double noundef, double noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !345 i32 @gsl_sf_beta_e(double noundef, double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !349 double @pow(double noundef, double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

declare !dbg !353 i32 @gsl_sf_lnbeta_e(double noundef, double noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !354 i32 @gsl_sf_log_1plusx_e(double noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !358 i32 @gsl_sf_log_e(double noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !359 i32 @gsl_sf_exp_err_e(double noundef, double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @beta_cont_frac(double noundef %0, double noundef %1, double noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 !dbg !361 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !363, metadata !DIExpression()), !dbg !379
  tail call void @llvm.dbg.value(metadata double %1, metadata !364, metadata !DIExpression()), !dbg !379
  tail call void @llvm.dbg.value(metadata double %2, metadata !365, metadata !DIExpression()), !dbg !379
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !366, metadata !DIExpression()), !dbg !379
  tail call void @llvm.dbg.value(metadata i32 512, metadata !367, metadata !DIExpression()), !dbg !379
  tail call void @llvm.dbg.value(metadata double 0x20000000000000, metadata !370, metadata !DIExpression()), !dbg !379
  tail call void @llvm.dbg.value(metadata i32 0, metadata !371, metadata !DIExpression()), !dbg !379
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !373, metadata !DIExpression()), !dbg !379
  %5 = fadd double %0, %1, !dbg !380
  %6 = fmul double %5, %2, !dbg !381
  %7 = fadd double %0, 1.000000e+00, !dbg !382
  %8 = fdiv double %6, %7, !dbg !383
  %9 = fsub double 1.000000e+00, %8, !dbg !384
  tail call void @llvm.dbg.value(metadata double %9, metadata !374, metadata !DIExpression()), !dbg !379
  %10 = tail call double @llvm.fabs.f64(double %9), !dbg !385
  %11 = fcmp olt double %10, 0x20000000000000, !dbg !387
  %12 = fdiv double 1.000000e+00, %9, !dbg !388
  tail call void @llvm.dbg.value(metadata double poison, metadata !374, metadata !DIExpression()), !dbg !379
  %13 = select i1 %11, double 0x7FC0000000000000, double %12, !dbg !388
  tail call void @llvm.dbg.value(metadata double %13, metadata !374, metadata !DIExpression()), !dbg !379
  tail call void @llvm.dbg.value(metadata double %13, metadata !372, metadata !DIExpression()), !dbg !379
  %14 = fadd double %0, -1.000000e+00
  br label %15, !dbg !389

15:                                               ; preds = %21, %4
  %16 = phi i32 [ 0, %4 ], [ %22, %21 ], !dbg !390
  %17 = phi double [ %13, %4 ], [ %66, %21 ], !dbg !379
  %18 = phi double [ 1.000000e+00, %4 ], [ %63, %21 ], !dbg !379
  %19 = phi double [ %13, %4 ], [ %64, %21 ], !dbg !379
  tail call void @llvm.dbg.value(metadata double %19, metadata !374, metadata !DIExpression()), !dbg !379
  tail call void @llvm.dbg.value(metadata double %18, metadata !373, metadata !DIExpression()), !dbg !379
  tail call void @llvm.dbg.value(metadata double %17, metadata !372, metadata !DIExpression()), !dbg !379
  tail call void @llvm.dbg.value(metadata i32 %16, metadata !371, metadata !DIExpression()), !dbg !379
  %20 = icmp eq i32 %16, 512, !dbg !391
  br i1 %20, label %70, label %21, !dbg !389

21:                                               ; preds = %15
  %22 = add nuw nsw i32 %16, 1, !dbg !392
  tail call void @llvm.dbg.value(metadata i32 %22, metadata !375, metadata !DIExpression()), !dbg !393
  %23 = sitofp i32 %22 to double, !dbg !394
  %24 = fsub double %1, %23, !dbg !395
  %25 = fmul double %24, %23, !dbg !396
  %26 = fmul double %25, %2, !dbg !397
  %27 = shl nuw nsw i32 %22, 1, !dbg !398
  %28 = sitofp i32 %27 to double, !dbg !399
  %29 = fadd double %14, %28, !dbg !400
  %30 = fadd double %28, %0, !dbg !401
  %31 = fmul double %29, %30, !dbg !402
  %32 = fdiv double %26, %31, !dbg !403
  tail call void @llvm.dbg.value(metadata double %32, metadata !377, metadata !DIExpression()), !dbg !393
  %33 = fmul double %19, %32, !dbg !404
  %34 = fadd double %33, 1.000000e+00, !dbg !405
  tail call void @llvm.dbg.value(metadata double %34, metadata !374, metadata !DIExpression()), !dbg !379
  %35 = fdiv double %32, %18, !dbg !406
  %36 = fadd double %35, 1.000000e+00, !dbg !407
  tail call void @llvm.dbg.value(metadata double %36, metadata !373, metadata !DIExpression()), !dbg !379
  %37 = tail call double @llvm.fabs.f64(double %34), !dbg !408
  %38 = fcmp olt double %37, 0x20000000000000, !dbg !410
  %39 = fdiv double 1.000000e+00, %34, !dbg !411
  tail call void @llvm.dbg.value(metadata double poison, metadata !374, metadata !DIExpression()), !dbg !379
  %40 = tail call double @llvm.fabs.f64(double %36), !dbg !412
  %41 = fcmp olt double %40, 0x20000000000000, !dbg !414
  %42 = select i1 %41, double 0x20000000000000, double %36, !dbg !415
  tail call void @llvm.dbg.value(metadata double %42, metadata !373, metadata !DIExpression()), !dbg !379
  %43 = select i1 %38, double 0x7FC0000000000000, double %39, !dbg !411
  tail call void @llvm.dbg.value(metadata double %43, metadata !374, metadata !DIExpression()), !dbg !379
  %44 = fmul double %43, %42, !dbg !416
  tail call void @llvm.dbg.value(metadata double %44, metadata !378, metadata !DIExpression()), !dbg !393
  %45 = fmul double %17, %44, !dbg !417
  tail call void @llvm.dbg.value(metadata double %45, metadata !372, metadata !DIExpression()), !dbg !379
  %46 = fadd double %23, %0, !dbg !418
  %47 = fneg double %46, !dbg !419
  %48 = fadd double %5, %23, !dbg !420
  %49 = fmul double %48, %47, !dbg !421
  %50 = fmul double %49, %2, !dbg !422
  %51 = fadd double %30, 1.000000e+00, !dbg !423
  %52 = fmul double %30, %51, !dbg !424
  %53 = fdiv double %50, %52, !dbg !425
  tail call void @llvm.dbg.value(metadata double %53, metadata !377, metadata !DIExpression()), !dbg !393
  %54 = fmul double %53, %43, !dbg !426
  %55 = fadd double %54, 1.000000e+00, !dbg !427
  tail call void @llvm.dbg.value(metadata double %55, metadata !374, metadata !DIExpression()), !dbg !379
  %56 = fdiv double %53, %42, !dbg !428
  %57 = fadd double %56, 1.000000e+00, !dbg !429
  tail call void @llvm.dbg.value(metadata double %57, metadata !373, metadata !DIExpression()), !dbg !379
  %58 = tail call double @llvm.fabs.f64(double %55), !dbg !430
  %59 = fcmp olt double %58, 0x20000000000000, !dbg !432
  %60 = fdiv double 1.000000e+00, %55, !dbg !433
  tail call void @llvm.dbg.value(metadata double poison, metadata !374, metadata !DIExpression()), !dbg !379
  %61 = tail call double @llvm.fabs.f64(double %57), !dbg !434
  %62 = fcmp olt double %61, 0x20000000000000, !dbg !436
  %63 = select i1 %62, double 0x20000000000000, double %57, !dbg !437
  tail call void @llvm.dbg.value(metadata double %63, metadata !373, metadata !DIExpression()), !dbg !379
  %64 = select i1 %59, double 0x7FC0000000000000, double %60, !dbg !433
  tail call void @llvm.dbg.value(metadata double %64, metadata !374, metadata !DIExpression()), !dbg !379
  %65 = fmul double %64, %63, !dbg !438
  tail call void @llvm.dbg.value(metadata double %65, metadata !378, metadata !DIExpression()), !dbg !393
  %66 = fmul double %45, %65, !dbg !439
  tail call void @llvm.dbg.value(metadata double %66, metadata !372, metadata !DIExpression()), !dbg !379
  %67 = fadd double %65, -1.000000e+00, !dbg !440
  %68 = tail call double @llvm.fabs.f64(double %67), !dbg !442
  %69 = fcmp olt double %68, 0x3CC0000000000000, !dbg !443
  tail call void @llvm.dbg.value(metadata i32 undef, metadata !371, metadata !DIExpression()), !dbg !379
  br i1 %69, label %70, label %15

70:                                               ; preds = %21, %15
  %71 = phi double [ %66, %21 ], [ %17, %15 ], !dbg !379
  tail call void @llvm.dbg.value(metadata double %71, metadata !372, metadata !DIExpression()), !dbg !379
  tail call void @llvm.dbg.value(metadata i32 %16, metadata !371, metadata !DIExpression()), !dbg !379
  store double %71, ptr %3, align 8, !dbg !444, !tbaa !148
  %72 = uitofp i32 %16 to double, !dbg !445
  %73 = fmul double %72, 4.000000e+00, !dbg !446
  %74 = fmul double %73, 0x3CB0000000000000, !dbg !447
  %75 = tail call double @llvm.fabs.f64(double %71), !dbg !448
  %76 = fmul double %74, %75, !dbg !449
  %77 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !450
  store double %76, ptr %77, align 8, !dbg !451, !tbaa !153
  %78 = icmp ugt i32 %16, 511, !dbg !452
  br i1 %78, label %79, label %80, !dbg !454

79:                                               ; preds = %70
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 97, i32 noundef 11) #7, !dbg !455
  br label %80, !dbg !455

80:                                               ; preds = %70, %79
  %81 = phi i32 [ 11, %79 ], [ 0, %70 ], !dbg !457
  ret i32 %81, !dbg !458
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_beta_inc(double noundef %0, double noundef %1, double noundef %2) local_unnamed_addr #0 !dbg !459 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !468
  call void @llvm.dbg.assign(metadata i1 undef, metadata !466, metadata !DIExpression(), metadata !468, metadata ptr %4, metadata !DIExpression()), !dbg !469
  tail call void @llvm.dbg.value(metadata double %0, metadata !463, metadata !DIExpression()), !dbg !469
  tail call void @llvm.dbg.value(metadata double %1, metadata !464, metadata !DIExpression()), !dbg !469
  tail call void @llvm.dbg.value(metadata double %2, metadata !465, metadata !DIExpression()), !dbg !469
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #7, !dbg !470
  %5 = call i32 @gsl_sf_beta_inc_e(double noundef %0, double noundef %1, double noundef %2, ptr noundef nonnull %4), !dbg !470
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !467, metadata !DIExpression()), !dbg !469
  %6 = icmp eq i32 %5, 0, !dbg !471
  br i1 %6, label %8, label %7, !dbg !470

7:                                                ; preds = %3
  tail call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 209, i32 noundef %5) #7, !dbg !473
  br label %8, !dbg !473

8:                                                ; preds = %3, %7
  %9 = load double, ptr %4, align 8, !dbg !470, !tbaa !148
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #7, !dbg !476
  ret double %9, !dbg !476
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!27}
!llvm.module.flags = !{!69, !70, !71, !72, !73, !74, !75}
!llvm.ident = !{!76}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 115, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "beta_inc.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "40774857e093dbf5be2b3709d223f428")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 13)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 115, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 11)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 140, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 10)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 160, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 6)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 209, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 36)
!27 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !28, globals: !68, splitDebugInlining: false, nameTableKind: None)
!28 = !{!29}
!29 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !30, line: 39, baseType: !31, size: 32, elements: !32)
!30 = !DIFile(filename: "../gsl/gsl_errno.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "3ff14ff6df19564f3d7caf1e8e622626")
!31 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!32 = !{!33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67}
!33 = !DIEnumerator(name: "GSL_SUCCESS", value: 0)
!34 = !DIEnumerator(name: "GSL_FAILURE", value: -1)
!35 = !DIEnumerator(name: "GSL_CONTINUE", value: -2)
!36 = !DIEnumerator(name: "GSL_EDOM", value: 1)
!37 = !DIEnumerator(name: "GSL_ERANGE", value: 2)
!38 = !DIEnumerator(name: "GSL_EFAULT", value: 3)
!39 = !DIEnumerator(name: "GSL_EINVAL", value: 4)
!40 = !DIEnumerator(name: "GSL_EFAILED", value: 5)
!41 = !DIEnumerator(name: "GSL_EFACTOR", value: 6)
!42 = !DIEnumerator(name: "GSL_ESANITY", value: 7)
!43 = !DIEnumerator(name: "GSL_ENOMEM", value: 8)
!44 = !DIEnumerator(name: "GSL_EBADFUNC", value: 9)
!45 = !DIEnumerator(name: "GSL_ERUNAWAY", value: 10)
!46 = !DIEnumerator(name: "GSL_EMAXITER", value: 11)
!47 = !DIEnumerator(name: "GSL_EZERODIV", value: 12)
!48 = !DIEnumerator(name: "GSL_EBADTOL", value: 13)
!49 = !DIEnumerator(name: "GSL_ETOL", value: 14)
!50 = !DIEnumerator(name: "GSL_EUNDRFLW", value: 15)
!51 = !DIEnumerator(name: "GSL_EOVRFLW", value: 16)
!52 = !DIEnumerator(name: "GSL_ELOSS", value: 17)
!53 = !DIEnumerator(name: "GSL_EROUND", value: 18)
!54 = !DIEnumerator(name: "GSL_EBADLEN", value: 19)
!55 = !DIEnumerator(name: "GSL_ENOTSQR", value: 20)
!56 = !DIEnumerator(name: "GSL_ESING", value: 21)
!57 = !DIEnumerator(name: "GSL_EDIVERGE", value: 22)
!58 = !DIEnumerator(name: "GSL_EUNSUP", value: 23)
!59 = !DIEnumerator(name: "GSL_EUNIMPL", value: 24)
!60 = !DIEnumerator(name: "GSL_ECACHE", value: 25)
!61 = !DIEnumerator(name: "GSL_ETABLE", value: 26)
!62 = !DIEnumerator(name: "GSL_ENOPROG", value: 27)
!63 = !DIEnumerator(name: "GSL_ENOPROGJ", value: 28)
!64 = !DIEnumerator(name: "GSL_ETOLF", value: 29)
!65 = !DIEnumerator(name: "GSL_ETOLX", value: 30)
!66 = !DIEnumerator(name: "GSL_ETOLG", value: 31)
!67 = !DIEnumerator(name: "GSL_EOF", value: 32)
!68 = !{!0, !7, !12, !17, !22}
!69 = !{i32 7, !"Dwarf Version", i32 5}
!70 = !{i32 2, !"Debug Info Version", i32 3}
!71 = !{i32 1, !"wchar_size", i32 4}
!72 = !{i32 8, !"PIC Level", i32 2}
!73 = !{i32 7, !"PIE Level", i32 2}
!74 = !{i32 7, !"uwtable", i32 2}
!75 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!76 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!77 = distinct !DISubprogram(name: "gsl_sf_beta_inc_e", scope: !2, file: !2, line: 107, type: !78, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !27, retainedNodes: !89)
!78 = !DISubroutineType(types: !79)
!79 = !{!31, !80, !80, !80, !82}
!80 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !81)
!81 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !84, line: 41, baseType: !85)
!84 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "5b52deed011f1ffd07977b19a388d251")
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !84, line: 37, size: 128, elements: !86)
!86 = !{!87, !88}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !85, file: !84, line: 38, baseType: !81, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !85, file: !84, line: 39, baseType: !81, size: 64, offset: 64)
!89 = !{!90, !91, !92, !93, !94, !102, !103, !104, !106, !107, !108, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !123, !124, !125, !127, !128, !129}
!90 = !DILocalVariable(name: "a", arg: 1, scope: !77, file: !2, line: 108, type: !80)
!91 = !DILocalVariable(name: "b", arg: 2, scope: !77, file: !2, line: 109, type: !80)
!92 = !DILocalVariable(name: "x", arg: 3, scope: !77, file: !2, line: 110, type: !80)
!93 = !DILocalVariable(name: "result", arg: 4, scope: !77, file: !2, line: 111, type: !82)
!94 = !DILocalVariable(name: "f", scope: !95, file: !2, line: 130, type: !83)
!95 = distinct !DILexicalBlock(scope: !96, file: !2, line: 129, column: 32)
!96 = distinct !DILexicalBlock(scope: !97, file: !2, line: 129, column: 14)
!97 = distinct !DILexicalBlock(scope: !98, file: !2, line: 125, column: 11)
!98 = distinct !DILexicalBlock(scope: !99, file: !2, line: 120, column: 13)
!99 = distinct !DILexicalBlock(scope: !100, file: !2, line: 118, column: 14)
!100 = distinct !DILexicalBlock(scope: !101, file: !2, line: 116, column: 14)
!101 = distinct !DILexicalBlock(scope: !77, file: !2, line: 114, column: 6)
!102 = !DILocalVariable(name: "beta", scope: !95, file: !2, line: 130, type: !83)
!103 = !DILocalVariable(name: "stat", scope: !95, file: !2, line: 131, type: !31)
!104 = !DILocalVariable(name: "stat_f", scope: !95, file: !2, line: 132, type: !105)
!105 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!106 = !DILocalVariable(name: "stat_beta", scope: !95, file: !2, line: 133, type: !105)
!107 = !DILocalVariable(name: "prefactor", scope: !95, file: !2, line: 134, type: !81)
!108 = !DILocalVariable(name: "ln_beta", scope: !109, file: !2, line: 144, type: !83)
!109 = distinct !DILexicalBlock(scope: !96, file: !2, line: 143, column: 10)
!110 = !DILocalVariable(name: "ln_x", scope: !109, file: !2, line: 145, type: !83)
!111 = !DILocalVariable(name: "ln_1mx", scope: !109, file: !2, line: 146, type: !83)
!112 = !DILocalVariable(name: "prefactor", scope: !109, file: !2, line: 147, type: !83)
!113 = !DILocalVariable(name: "stat_ln_beta", scope: !109, file: !2, line: 148, type: !105)
!114 = !DILocalVariable(name: "stat_ln_1mx", scope: !109, file: !2, line: 149, type: !105)
!115 = !DILocalVariable(name: "stat_ln_x", scope: !109, file: !2, line: 150, type: !105)
!116 = !DILocalVariable(name: "stat_ln", scope: !109, file: !2, line: 151, type: !105)
!117 = !DILocalVariable(name: "ln_pre_val", scope: !109, file: !2, line: 153, type: !80)
!118 = !DILocalVariable(name: "ln_pre_err", scope: !109, file: !2, line: 154, type: !80)
!119 = !DILocalVariable(name: "stat_exp", scope: !109, file: !2, line: 155, type: !105)
!120 = !DILocalVariable(name: "cf", scope: !121, file: !2, line: 165, type: !83)
!121 = distinct !DILexicalBlock(scope: !122, file: !2, line: 163, column: 33)
!122 = distinct !DILexicalBlock(scope: !109, file: !2, line: 163, column: 8)
!123 = !DILocalVariable(name: "stat_cf", scope: !121, file: !2, line: 166, type: !105)
!124 = !DILocalVariable(name: "stat", scope: !121, file: !2, line: 167, type: !31)
!125 = !DILocalVariable(name: "cf", scope: !126, file: !2, line: 179, type: !83)
!126 = distinct !DILexicalBlock(scope: !122, file: !2, line: 177, column: 10)
!127 = !DILocalVariable(name: "stat_cf", scope: !126, file: !2, line: 180, type: !105)
!128 = !DILocalVariable(name: "stat", scope: !126, file: !2, line: 181, type: !31)
!129 = !DILocalVariable(name: "term", scope: !126, file: !2, line: 182, type: !80)
!130 = distinct !DIAssignID()
!131 = !DILocation(line: 0, scope: !95)
!132 = distinct !DIAssignID()
!133 = distinct !DIAssignID()
!134 = !DILocation(line: 0, scope: !109)
!135 = distinct !DIAssignID()
!136 = distinct !DIAssignID()
!137 = distinct !DIAssignID()
!138 = distinct !DIAssignID()
!139 = !DILocation(line: 0, scope: !121)
!140 = distinct !DIAssignID()
!141 = !DILocation(line: 0, scope: !126)
!142 = !DILocation(line: 0, scope: !77)
!143 = !DILocation(line: 114, column: 8, scope: !101)
!144 = !DILocation(line: 114, column: 14, scope: !101)
!145 = !DILocation(line: 115, column: 5, scope: !146)
!146 = distinct !DILexicalBlock(scope: !147, file: !2, line: 115, column: 5)
!147 = distinct !DILexicalBlock(scope: !101, file: !2, line: 114, column: 26)
!148 = !{!149, !150, i64 0}
!149 = !{!"gsl_sf_result_struct", !150, i64 0, !150, i64 8}
!150 = !{!"double", !151, i64 0}
!151 = !{!"omnipotent char", !152, i64 0}
!152 = !{!"Simple C/C++ TBAA"}
!153 = !{!149, !150, i64 8}
!154 = !DILocation(line: 115, column: 5, scope: !155)
!155 = distinct !DILexicalBlock(scope: !146, file: !2, line: 115, column: 5)
!156 = !DILocalVariable(name: "x", arg: 1, scope: !157, file: !2, line: 35, type: !80)
!157 = distinct !DISubprogram(name: "isnegint", scope: !2, file: !2, line: 35, type: !158, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !27, retainedNodes: !160)
!158 = !DISubroutineType(types: !159)
!159 = !{!81, !80}
!160 = !{!156}
!161 = !DILocation(line: 0, scope: !157, inlinedAt: !162)
!162 = distinct !DILocation(line: 116, column: 14, scope: !100)
!163 = !DILocation(line: 37, column: 13, scope: !157, inlinedAt: !162)
!164 = !DILocation(line: 37, column: 18, scope: !157, inlinedAt: !162)
!165 = !DILocation(line: 0, scope: !157, inlinedAt: !166)
!166 = distinct !DILocation(line: 116, column: 29, scope: !100)
!167 = !DILocation(line: 37, column: 13, scope: !157, inlinedAt: !166)
!168 = !DILocation(line: 37, column: 18, scope: !157, inlinedAt: !166)
!169 = !DILocation(line: 117, column: 5, scope: !170)
!170 = distinct !DILexicalBlock(scope: !171, file: !2, line: 117, column: 5)
!171 = distinct !DILexicalBlock(scope: !100, file: !2, line: 116, column: 42)
!172 = !DILocation(line: 117, column: 5, scope: !173)
!173 = distinct !DILexicalBlock(scope: !170, file: !2, line: 117, column: 5)
!174 = !DILocation(line: 118, column: 24, scope: !99)
!175 = !DILocation(line: 0, scope: !157, inlinedAt: !176)
!176 = distinct !DILocation(line: 118, column: 14, scope: !99)
!177 = !DILocation(line: 37, column: 13, scope: !157, inlinedAt: !176)
!178 = !DILocation(line: 37, column: 18, scope: !157, inlinedAt: !176)
!179 = !DILocation(line: 119, column: 5, scope: !180)
!180 = distinct !DILexicalBlock(scope: !181, file: !2, line: 119, column: 5)
!181 = distinct !DILexicalBlock(scope: !99, file: !2, line: 118, column: 29)
!182 = !DILocation(line: 119, column: 5, scope: !183)
!183 = distinct !DILexicalBlock(scope: !180, file: !2, line: 119, column: 5)
!184 = !DILocation(line: 120, column: 15, scope: !98)
!185 = !DILocation(line: 120, column: 13, scope: !99)
!186 = !DILocation(line: 122, column: 17, scope: !187)
!187 = distinct !DILexicalBlock(scope: !98, file: !2, line: 120, column: 23)
!188 = !DILocation(line: 123, column: 5, scope: !187)
!189 = !DILocation(line: 125, column: 13, scope: !97)
!190 = !DILocation(line: 125, column: 11, scope: !98)
!191 = !DILocation(line: 126, column: 17, scope: !192)
!192 = distinct !DILexicalBlock(scope: !97, file: !2, line: 125, column: 21)
!193 = !DILocation(line: 127, column: 13, scope: !192)
!194 = !DILocation(line: 127, column: 17, scope: !192)
!195 = !DILocation(line: 128, column: 5, scope: !192)
!196 = !DILocation(line: 129, column: 16, scope: !96)
!197 = !DILocation(line: 129, column: 21, scope: !96)
!198 = !DILocation(line: 130, column: 5, scope: !95)
!199 = !DILocation(line: 132, column: 48, scope: !95)
!200 = !DILocation(line: 132, column: 53, scope: !95)
!201 = !DILocation(line: 132, column: 24, scope: !95)
!202 = !DILocation(line: 133, column: 27, scope: !95)
!203 = !DILocation(line: 134, column: 25, scope: !95)
!204 = !DILocation(line: 134, column: 35, scope: !95)
!205 = !DILocation(line: 135, column: 33, scope: !95)
!206 = !DILocation(line: 135, column: 29, scope: !95)
!207 = !DILocation(line: 135, column: 44, scope: !95)
!208 = !DILocation(line: 135, column: 37, scope: !95)
!209 = !DILocation(line: 135, column: 17, scope: !95)
!210 = !DILocation(line: 136, column: 19, scope: !95)
!211 = !DILocation(line: 136, column: 39, scope: !95)
!212 = !DILocation(line: 136, column: 35, scope: !95)
!213 = !DILocation(line: 136, column: 44, scope: !95)
!214 = !DILocation(line: 136, column: 42, scope: !95)
!215 = !DILocation(line: 136, column: 77, scope: !95)
!216 = !DILocation(line: 136, column: 61, scope: !95)
!217 = !DILocation(line: 136, column: 95, scope: !95)
!218 = !DILocation(line: 136, column: 88, scope: !95)
!219 = !DILocation(line: 136, column: 59, scope: !95)
!220 = !DILocation(line: 136, column: 13, scope: !95)
!221 = !DILocation(line: 136, column: 17, scope: !95)
!222 = !DILocation(line: 138, column: 12, scope: !95)
!223 = !DILocation(line: 139, column: 13, scope: !224)
!224 = distinct !DILexicalBlock(scope: !95, file: !2, line: 139, column: 8)
!225 = !DILocation(line: 139, column: 8, scope: !95)
!226 = !DILocation(line: 140, column: 7, scope: !227)
!227 = distinct !DILexicalBlock(scope: !228, file: !2, line: 140, column: 7)
!228 = distinct !DILexicalBlock(scope: !224, file: !2, line: 139, column: 29)
!229 = !DILocation(line: 140, column: 7, scope: !228)
!230 = !DILocation(line: 140, column: 7, scope: !231)
!231 = distinct !DILexicalBlock(scope: !227, file: !2, line: 140, column: 7)
!232 = !DILocation(line: 143, column: 3, scope: !96)
!233 = !DILocation(line: 144, column: 5, scope: !109)
!234 = !DILocation(line: 145, column: 5, scope: !109)
!235 = !DILocation(line: 146, column: 5, scope: !109)
!236 = !DILocation(line: 147, column: 5, scope: !109)
!237 = !DILocation(line: 148, column: 30, scope: !109)
!238 = !DILocation(line: 149, column: 49, scope: !109)
!239 = !DILocation(line: 149, column: 29, scope: !109)
!240 = !DILocation(line: 150, column: 27, scope: !109)
!241 = !DILocation(line: 151, column: 25, scope: !109)
!242 = !DILocation(line: 153, column: 40, scope: !109)
!243 = !DILocation(line: 153, column: 55, scope: !109)
!244 = !DILocation(line: 153, column: 48, scope: !109)
!245 = !DILocation(line: 153, column: 44, scope: !109)
!246 = !DILocation(line: 153, column: 72, scope: !109)
!247 = !DILocation(line: 153, column: 63, scope: !109)
!248 = !DILocation(line: 153, column: 59, scope: !109)
!249 = !DILocation(line: 154, column: 40, scope: !109)
!250 = !DILocation(line: 154, column: 58, scope: !109)
!251 = !DILocation(line: 154, column: 52, scope: !109)
!252 = !DILocation(line: 154, column: 46, scope: !109)
!253 = !DILocation(line: 154, column: 44, scope: !109)
!254 = !DILocation(line: 154, column: 79, scope: !109)
!255 = !DILocation(line: 154, column: 71, scope: !109)
!256 = !DILocation(line: 154, column: 65, scope: !109)
!257 = !DILocation(line: 154, column: 63, scope: !109)
!258 = !DILocation(line: 155, column: 26, scope: !109)
!259 = !DILocation(line: 157, column: 8, scope: !109)
!260 = !DILocation(line: 159, column: 19, scope: !261)
!261 = distinct !DILexicalBlock(scope: !262, file: !2, line: 157, column: 32)
!262 = distinct !DILexicalBlock(scope: !109, file: !2, line: 157, column: 8)
!263 = !DILocation(line: 160, column: 7, scope: !264)
!264 = distinct !DILexicalBlock(scope: !261, file: !2, line: 160, column: 7)
!265 = !DILocation(line: 163, column: 15, scope: !122)
!266 = !DILocation(line: 163, column: 26, scope: !122)
!267 = !DILocation(line: 163, column: 21, scope: !122)
!268 = !DILocation(line: 163, column: 10, scope: !122)
!269 = !DILocation(line: 163, column: 8, scope: !109)
!270 = !DILocation(line: 165, column: 7, scope: !121)
!271 = !DILocation(line: 166, column: 27, scope: !121)
!272 = !{i32 0, i32 12}
!273 = !DILocation(line: 168, column: 31, scope: !121)
!274 = !DILocation(line: 168, column: 40, scope: !121)
!275 = !DILocation(line: 168, column: 35, scope: !121)
!276 = !DILocation(line: 168, column: 44, scope: !121)
!277 = !DILocation(line: 168, column: 19, scope: !121)
!278 = !DILocation(line: 169, column: 37, scope: !121)
!279 = !DILocation(line: 169, column: 41, scope: !121)
!280 = !DILocation(line: 169, column: 22, scope: !121)
!281 = !DILocation(line: 169, column: 77, scope: !121)
!282 = !DILocation(line: 169, column: 72, scope: !121)
!283 = !DILocation(line: 169, column: 53, scope: !121)
!284 = !DILocation(line: 169, column: 51, scope: !121)
!285 = !DILocation(line: 169, column: 82, scope: !121)
!286 = !DILocation(line: 169, column: 15, scope: !121)
!287 = !DILocation(line: 169, column: 19, scope: !121)
!288 = !DILocation(line: 171, column: 14, scope: !121)
!289 = !DILocation(line: 172, column: 15, scope: !290)
!290 = distinct !DILexicalBlock(scope: !121, file: !2, line: 172, column: 10)
!291 = !DILocation(line: 172, column: 10, scope: !121)
!292 = !DILocation(line: 173, column: 9, scope: !293)
!293 = distinct !DILexicalBlock(scope: !294, file: !2, line: 173, column: 9)
!294 = distinct !DILexicalBlock(scope: !290, file: !2, line: 172, column: 31)
!295 = !DILocation(line: 173, column: 9, scope: !294)
!296 = !DILocation(line: 173, column: 9, scope: !297)
!297 = distinct !DILexicalBlock(scope: !293, file: !2, line: 173, column: 9)
!298 = !DILocation(line: 176, column: 5, scope: !122)
!299 = !DILocation(line: 179, column: 7, scope: !126)
!300 = !DILocation(line: 180, column: 51, scope: !126)
!301 = !DILocation(line: 180, column: 27, scope: !126)
!302 = !DILocation(line: 182, column: 37, scope: !126)
!303 = !DILocation(line: 182, column: 46, scope: !126)
!304 = !DILocation(line: 182, column: 41, scope: !126)
!305 = !DILocation(line: 182, column: 50, scope: !126)
!306 = !DILocation(line: 183, column: 26, scope: !126)
!307 = !DILocation(line: 183, column: 20, scope: !126)
!308 = !DILocation(line: 184, column: 37, scope: !126)
!309 = !DILocation(line: 184, column: 41, scope: !126)
!310 = !DILocation(line: 184, column: 22, scope: !126)
!311 = !DILocation(line: 184, column: 50, scope: !126)
!312 = !DILocation(line: 184, column: 15, scope: !126)
!313 = !DILocation(line: 185, column: 46, scope: !126)
!314 = !DILocation(line: 185, column: 41, scope: !126)
!315 = !DILocation(line: 185, column: 22, scope: !126)
!316 = !DILocation(line: 185, column: 50, scope: !126)
!317 = !DILocation(line: 185, column: 19, scope: !126)
!318 = !DILocation(line: 186, column: 53, scope: !126)
!319 = !DILocation(line: 186, column: 51, scope: !126)
!320 = !DILocation(line: 186, column: 44, scope: !126)
!321 = !DILocation(line: 186, column: 19, scope: !126)
!322 = !DILocation(line: 189, column: 11, scope: !126)
!323 = !DILocation(line: 194, column: 15, scope: !324)
!324 = distinct !DILexicalBlock(scope: !126, file: !2, line: 194, column: 10)
!325 = !DILocation(line: 194, column: 10, scope: !126)
!326 = !DILocation(line: 195, column: 9, scope: !327)
!327 = distinct !DILexicalBlock(scope: !328, file: !2, line: 195, column: 9)
!328 = distinct !DILexicalBlock(scope: !324, file: !2, line: 194, column: 31)
!329 = !DILocation(line: 195, column: 9, scope: !328)
!330 = !DILocation(line: 195, column: 9, scope: !331)
!331 = distinct !DILexicalBlock(scope: !327, file: !2, line: 195, column: 9)
!332 = !DILocation(line: 198, column: 5, scope: !122)
!333 = !DILocation(line: 199, column: 3, scope: !96)
!334 = !DILocation(line: 0, scope: !101)
!335 = !DILocation(line: 200, column: 1, scope: !77)
!336 = !DISubprogram(name: "gsl_error", scope: !30, file: !30, line: 77, type: !337, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!337 = !DISubroutineType(types: !338)
!338 = !{null, !339, !339, !31, !31}
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!341 = !DISubprogram(name: "gsl_sf_hyperg_2F1_e", scope: !342, file: !342, line: 108, type: !343, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!342 = !DIFile(filename: "../gsl/gsl_sf_hyperg.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "6a7ad80bd86b12c428cf1476c4b61a8a")
!343 = !DISubroutineType(types: !344)
!344 = !{!31, !81, !81, !80, !80, !82}
!345 = !DISubprogram(name: "gsl_sf_beta_e", scope: !346, file: !346, line: 266, type: !347, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!346 = !DIFile(filename: "../gsl/gsl_sf_gamma.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "88cc3c2b19ea790e1c6889b01cfd3137")
!347 = !DISubroutineType(types: !348)
!348 = !{!31, !80, !80, !82}
!349 = !DISubprogram(name: "pow", scope: !350, file: !350, line: 140, type: !351, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!350 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!351 = !DISubroutineType(types: !352)
!352 = !{!81, !81, !81}
!353 = !DISubprogram(name: "gsl_sf_lnbeta_e", scope: !346, file: !346, line: 254, type: !347, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!354 = !DISubprogram(name: "gsl_sf_log_1plusx_e", scope: !355, file: !355, line: 69, type: !356, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!355 = !DIFile(filename: "../gsl/gsl_sf_log.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "f56b795d5c89d6a7f7c2549105288199")
!356 = !DISubroutineType(types: !357)
!357 = !{!31, !80, !82}
!358 = !DISubprogram(name: "gsl_sf_log_e", scope: !355, file: !355, line: 44, type: !356, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!359 = !DISubprogram(name: "gsl_sf_exp_err_e", scope: !360, file: !360, line: 110, type: !347, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!360 = !DIFile(filename: "../gsl/gsl_sf_exp.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "c512f91507e79efdd09661b0faef2cde")
!361 = distinct !DISubprogram(name: "beta_cont_frac", scope: !2, file: !2, line: 42, type: !78, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !27, retainedNodes: !362)
!362 = !{!363, !364, !365, !366, !367, !370, !371, !372, !373, !374, !375, !377, !378}
!363 = !DILocalVariable(name: "a", arg: 1, scope: !361, file: !2, line: 43, type: !80)
!364 = !DILocalVariable(name: "b", arg: 2, scope: !361, file: !2, line: 44, type: !80)
!365 = !DILocalVariable(name: "x", arg: 3, scope: !361, file: !2, line: 45, type: !80)
!366 = !DILocalVariable(name: "result", arg: 4, scope: !361, file: !2, line: 46, type: !82)
!367 = !DILocalVariable(name: "max_iter", scope: !361, file: !2, line: 49, type: !368)
!368 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !369)
!369 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!370 = !DILocalVariable(name: "cutoff", scope: !361, file: !2, line: 50, type: !80)
!371 = !DILocalVariable(name: "iter_count", scope: !361, file: !2, line: 51, type: !369)
!372 = !DILocalVariable(name: "cf", scope: !361, file: !2, line: 52, type: !81)
!373 = !DILocalVariable(name: "num_term", scope: !361, file: !2, line: 55, type: !81)
!374 = !DILocalVariable(name: "den_term", scope: !361, file: !2, line: 56, type: !81)
!375 = !DILocalVariable(name: "k", scope: !376, file: !2, line: 62, type: !105)
!376 = distinct !DILexicalBlock(scope: !361, file: !2, line: 61, column: 32)
!377 = !DILocalVariable(name: "coeff", scope: !376, file: !2, line: 63, type: !81)
!378 = !DILocalVariable(name: "delta_frac", scope: !376, file: !2, line: 64, type: !81)
!379 = !DILocation(line: 0, scope: !361)
!380 = !DILocation(line: 56, column: 29, scope: !361)
!381 = !DILocation(line: 56, column: 32, scope: !361)
!382 = !DILocation(line: 56, column: 37, scope: !361)
!383 = !DILocation(line: 56, column: 34, scope: !361)
!384 = !DILocation(line: 56, column: 25, scope: !361)
!385 = !DILocation(line: 57, column: 7, scope: !386)
!386 = distinct !DILexicalBlock(scope: !361, file: !2, line: 57, column: 7)
!387 = !DILocation(line: 57, column: 22, scope: !386)
!388 = !DILocation(line: 58, column: 17, scope: !361)
!389 = !DILocation(line: 61, column: 3, scope: !361)
!390 = !DILocation(line: 51, column: 16, scope: !361)
!391 = !DILocation(line: 61, column: 20, scope: !361)
!392 = !DILocation(line: 62, column: 31, scope: !376)
!393 = !DILocation(line: 0, scope: !376)
!394 = !DILocation(line: 63, column: 20, scope: !376)
!395 = !DILocation(line: 63, column: 24, scope: !376)
!396 = !DILocation(line: 63, column: 21, scope: !376)
!397 = !DILocation(line: 63, column: 27, scope: !376)
!398 = !DILocation(line: 63, column: 41, scope: !376)
!399 = !DILocation(line: 63, column: 40, scope: !376)
!400 = !DILocation(line: 63, column: 39, scope: !376)
!401 = !DILocation(line: 63, column: 47, scope: !376)
!402 = !DILocation(line: 63, column: 44, scope: !376)
!403 = !DILocation(line: 63, column: 29, scope: !376)
!404 = !DILocation(line: 67, column: 27, scope: !376)
!405 = !DILocation(line: 67, column: 20, scope: !376)
!406 = !DILocation(line: 68, column: 27, scope: !376)
!407 = !DILocation(line: 68, column: 20, scope: !376)
!408 = !DILocation(line: 69, column: 8, scope: !409)
!409 = distinct !DILexicalBlock(scope: !376, file: !2, line: 69, column: 8)
!410 = !DILocation(line: 69, column: 23, scope: !409)
!411 = !DILocation(line: 71, column: 20, scope: !376)
!412 = !DILocation(line: 70, column: 8, scope: !413)
!413 = distinct !DILexicalBlock(scope: !376, file: !2, line: 70, column: 8)
!414 = !DILocation(line: 70, column: 23, scope: !413)
!415 = !DILocation(line: 70, column: 8, scope: !376)
!416 = !DILocation(line: 73, column: 27, scope: !376)
!417 = !DILocation(line: 74, column: 8, scope: !376)
!418 = !DILocation(line: 76, column: 16, scope: !376)
!419 = !DILocation(line: 76, column: 13, scope: !376)
!420 = !DILocation(line: 76, column: 24, scope: !376)
!421 = !DILocation(line: 76, column: 19, scope: !376)
!422 = !DILocation(line: 76, column: 27, scope: !376)
!423 = !DILocation(line: 76, column: 45, scope: !376)
!424 = !DILocation(line: 76, column: 38, scope: !376)
!425 = !DILocation(line: 76, column: 29, scope: !376)
!426 = !DILocation(line: 79, column: 27, scope: !376)
!427 = !DILocation(line: 79, column: 20, scope: !376)
!428 = !DILocation(line: 80, column: 27, scope: !376)
!429 = !DILocation(line: 80, column: 20, scope: !376)
!430 = !DILocation(line: 81, column: 8, scope: !431)
!431 = distinct !DILexicalBlock(scope: !376, file: !2, line: 81, column: 8)
!432 = !DILocation(line: 81, column: 23, scope: !431)
!433 = !DILocation(line: 83, column: 19, scope: !376)
!434 = !DILocation(line: 82, column: 8, scope: !435)
!435 = distinct !DILexicalBlock(scope: !376, file: !2, line: 82, column: 8)
!436 = !DILocation(line: 82, column: 23, scope: !435)
!437 = !DILocation(line: 82, column: 8, scope: !376)
!438 = !DILocation(line: 85, column: 26, scope: !376)
!439 = !DILocation(line: 86, column: 8, scope: !376)
!440 = !DILocation(line: 88, column: 23, scope: !441)
!441 = distinct !DILexicalBlock(scope: !376, file: !2, line: 88, column: 8)
!442 = !DILocation(line: 88, column: 8, scope: !441)
!443 = !DILocation(line: 88, column: 29, scope: !441)
!444 = !DILocation(line: 93, column: 15, scope: !361)
!445 = !DILocation(line: 94, column: 17, scope: !361)
!446 = !DILocation(line: 94, column: 28, scope: !361)
!447 = !DILocation(line: 94, column: 34, scope: !361)
!448 = !DILocation(line: 94, column: 54, scope: !361)
!449 = !DILocation(line: 94, column: 52, scope: !361)
!450 = !DILocation(line: 94, column: 11, scope: !361)
!451 = !DILocation(line: 94, column: 15, scope: !361)
!452 = !DILocation(line: 96, column: 17, scope: !453)
!453 = distinct !DILexicalBlock(scope: !361, file: !2, line: 96, column: 6)
!454 = !DILocation(line: 96, column: 6, scope: !361)
!455 = !DILocation(line: 97, column: 5, scope: !456)
!456 = distinct !DILexicalBlock(scope: !453, file: !2, line: 97, column: 5)
!457 = !DILocation(line: 0, scope: !453)
!458 = !DILocation(line: 100, column: 1, scope: !361)
!459 = distinct !DISubprogram(name: "gsl_sf_beta_inc", scope: !2, file: !2, line: 207, type: !460, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !27, retainedNodes: !462)
!460 = !DISubroutineType(types: !461)
!461 = !{!81, !80, !80, !80}
!462 = !{!463, !464, !465, !466, !467}
!463 = !DILocalVariable(name: "a", arg: 1, scope: !459, file: !2, line: 207, type: !80)
!464 = !DILocalVariable(name: "b", arg: 2, scope: !459, file: !2, line: 207, type: !80)
!465 = !DILocalVariable(name: "x", arg: 3, scope: !459, file: !2, line: 207, type: !80)
!466 = !DILocalVariable(name: "result", scope: !459, file: !2, line: 209, type: !83)
!467 = !DILocalVariable(name: "status", scope: !459, file: !2, line: 209, type: !31)
!468 = distinct !DIAssignID()
!469 = !DILocation(line: 0, scope: !459)
!470 = !DILocation(line: 209, column: 3, scope: !459)
!471 = !DILocation(line: 209, column: 3, scope: !472)
!472 = distinct !DILexicalBlock(scope: !459, file: !2, line: 209, column: 3)
!473 = !DILocation(line: 209, column: 3, scope: !474)
!474 = distinct !DILexicalBlock(scope: !475, file: !2, line: 209, column: 3)
!475 = distinct !DILexicalBlock(scope: !472, file: !2, line: 209, column: 3)
!476 = !DILocation(line: 210, column: 1, scope: !459)
