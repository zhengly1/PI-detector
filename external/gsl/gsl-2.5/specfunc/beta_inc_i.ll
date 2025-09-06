; ModuleID = 'beta_inc.ll'
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
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 115, i32 noundef 1) #6, !dbg !154
  br label %162, !dbg !154

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
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 117, i32 noundef 1) #6, !dbg !172
  br label %162, !dbg !172

30:                                               ; preds = %23
  %handler_result = call double @fAddHandlerDouble(double %0, double %1), !dbg !174
  call void @llvm.dbg.value(metadata double %handler_result, metadata !156, metadata !DIExpression()), !dbg !176
  %31 = fcmp olt double %handler_result, 0.000000e+00, !dbg !174
  %32 = tail call double @llvm.floor.f64(double %handler_result)
  %33 = fcmp oeq double %32, %handler_result
  %34 = and i1 %31, %33, !dbg !177
  br i1 %34, label %35, label %37, !dbg !177

35:                                               ; preds = %30
  store double 0x7FF8000000000000, ptr %3, align 8, !dbg !178, !tbaa !148
  %36 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !178
  store double 0x7FF8000000000000, ptr %36, align 8, !dbg !178, !tbaa !153
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 119, i32 noundef 1) #6, !dbg !181
  br label %162, !dbg !181

37:                                               ; preds = %30
  %38 = fcmp oeq double %2, 0.000000e+00, !dbg !183
  br i1 %38, label %39, label %40, !dbg !184

39:                                               ; preds = %37
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false), !dbg !185
  br label %162, !dbg !187

40:                                               ; preds = %37
  %41 = fcmp oeq double %2, 1.000000e+00, !dbg !188
  br i1 %41, label %42, label %44, !dbg !189

42:                                               ; preds = %40
  store double 1.000000e+00, ptr %3, align 8, !dbg !190, !tbaa !148
  %43 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !192
  store double 0.000000e+00, ptr %43, align 8, !dbg !193, !tbaa !153
  br label %162, !dbg !194

44:                                               ; preds = %40
  %45 = fcmp ole double %0, 0.000000e+00, !dbg !195
  %46 = fcmp ole double %1, 0.000000e+00
  %47 = or i1 %45, %46, !dbg !196
  br i1 %47, label %48, label %78, !dbg !196

48:                                               ; preds = %44
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #6, !dbg !197
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #6, !dbg !197
  %handler_result1 = call double @fSubHandlerDouble(double 1.000000e+00, double %1), !dbg !198
  %handler_result2 = call double @fAddHandlerDouble(double %0, double 1.000000e+00), !dbg !199
  %49 = call i32 @gsl_sf_hyperg_2F1_e(double noundef %0, double noundef %handler_result1, double noundef %handler_result2, double noundef %2, ptr noundef nonnull %5) #6, !dbg !199
  tail call void @llvm.dbg.value(metadata i32 %49, metadata !104, metadata !DIExpression()), !dbg !131
  %50 = call i32 @gsl_sf_beta_e(double noundef %0, double noundef %1, ptr noundef nonnull %6) #6, !dbg !200
  tail call void @llvm.dbg.value(metadata i32 %50, metadata !106, metadata !DIExpression()), !dbg !131
  %51 = call double @pow(double noundef %2, double noundef %0) #6, !dbg !201
  %52 = fdiv double %51, %0, !dbg !202
  tail call void @llvm.dbg.value(metadata double %52, metadata !107, metadata !DIExpression()), !dbg !131
  %53 = load double, ptr %5, align 8, !dbg !203, !tbaa !148
  %54 = fmul double %52, %53, !dbg !204
  %55 = load double, ptr %6, align 8, !dbg !205, !tbaa !148
  %56 = fdiv double %54, %55, !dbg !206
  store double %56, ptr %3, align 8, !dbg !207, !tbaa !148
  %57 = call double @llvm.fabs.f64(double %52), !dbg !208
  %58 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !209
  %59 = load double, ptr %58, align 8, !dbg !209, !tbaa !153
  %60 = fmul double %57, %59, !dbg !210
  %61 = call double @llvm.fabs.f64(double %55), !dbg !211
  %62 = fdiv double %60, %61, !dbg !212
  %63 = fdiv double %56, %55, !dbg !213
  %64 = call double @llvm.fabs.f64(double %63), !dbg !214
  %65 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !215
  %66 = load double, ptr %65, align 8, !dbg !215, !tbaa !153
  %67 = fmul double %64, %66, !dbg !216
  %handler_result3 = call double @fAddHandlerDouble(double %62, double %67), !dbg !217
  %68 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !217
  store double %handler_result3, ptr %68, align 8, !dbg !218, !tbaa !153
  %69 = icmp eq i32 %49, 0, !dbg !219
  %70 = select i1 %69, i32 %50, i32 %49, !dbg !219
  tail call void @llvm.dbg.value(metadata i32 %70, metadata !103, metadata !DIExpression()), !dbg !131
  %71 = icmp eq i32 %70, 0, !dbg !220
  br i1 %71, label %72, label %76, !dbg !222

72:                                               ; preds = %48
  %73 = call double @llvm.fabs.f64(double %56), !dbg !223
  %74 = fcmp olt double %73, 0x10000000000000, !dbg !223
  br i1 %74, label %75, label %76, !dbg !226

75:                                               ; preds = %72
  call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 140, i32 noundef 15) #6, !dbg !227
  br label %76, !dbg !227

76:                                               ; preds = %75, %72, %48
  %77 = phi i32 [ 15, %75 ], [ 0, %72 ], [ %70, %48 ], !dbg !131
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #6, !dbg !229
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #6, !dbg !229
  br label %162

78:                                               ; preds = %44
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #6, !dbg !230
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #6, !dbg !231
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #6, !dbg !232
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #6, !dbg !233
  %79 = call i32 @gsl_sf_lnbeta_e(double noundef %0, double noundef %1, ptr noundef nonnull %7) #6, !dbg !234
  tail call void @llvm.dbg.value(metadata i32 %79, metadata !113, metadata !DIExpression()), !dbg !134
  %80 = fneg double %2, !dbg !235
  %81 = call i32 @gsl_sf_log_1plusx_e(double noundef %80, ptr noundef nonnull %9) #6, !dbg !236
  tail call void @llvm.dbg.value(metadata i32 %81, metadata !114, metadata !DIExpression()), !dbg !134
  %82 = call i32 @gsl_sf_log_e(double noundef %2, ptr noundef nonnull %8) #6, !dbg !237
  tail call void @llvm.dbg.value(metadata i32 %82, metadata !115, metadata !DIExpression()), !dbg !134
  %83 = icmp eq i32 %79, 0, !dbg !238
  %84 = icmp eq i32 %81, 0, !dbg !238
  %85 = select i1 %83, i1 %84, i1 false, !dbg !238
  %86 = icmp eq i32 %82, 0
  %87 = select i1 %85, i1 %86, i1 false, !dbg !238
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !116, metadata !DIExpression()), !dbg !134
  %88 = load double, ptr %7, align 8, !dbg !239, !tbaa !148
  %89 = load double, ptr %8, align 8, !dbg !240, !tbaa !148
  %90 = fmul double %89, %0, !dbg !241
  %handler_result4 = call double @fSubHandlerDouble(double %90, double %88), !dbg !242
  %91 = load double, ptr %9, align 8, !dbg !242, !tbaa !148
  %92 = fmul double %91, %1, !dbg !243
  %handler_result5 = call double @fAddHandlerDouble(double %handler_result4, double %92), !dbg !244
  tail call void @llvm.dbg.value(metadata double %handler_result5, metadata !117, metadata !DIExpression()), !dbg !134
  %93 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %7, i64 0, i32 1, !dbg !244
  %94 = load double, ptr %93, align 8, !dbg !244, !tbaa !153
  %95 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %8, i64 0, i32 1, !dbg !245
  %96 = load double, ptr %95, align 8, !dbg !245, !tbaa !153
  %97 = fmul double %96, %0, !dbg !246
  %98 = call double @llvm.fabs.f64(double %97), !dbg !247
  %handler_result6 = call double @fAddHandlerDouble(double %94, double %98), !dbg !248
  %99 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %9, i64 0, i32 1, !dbg !248
  %100 = load double, ptr %99, align 8, !dbg !248, !tbaa !153
  %101 = fmul double %100, %1, !dbg !249
  %102 = call double @llvm.fabs.f64(double %101), !dbg !250
  %handler_result7 = call double @fAddHandlerDouble(double %handler_result6, double %102), !dbg !251
  tail call void @llvm.dbg.value(metadata double %handler_result7, metadata !118, metadata !DIExpression()), !dbg !134
  %103 = call i32 @gsl_sf_exp_err_e(double noundef %handler_result5, double noundef %handler_result7, ptr noundef nonnull %10) #6, !dbg !251
  tail call void @llvm.dbg.value(metadata i32 %103, metadata !119, metadata !DIExpression()), !dbg !134
  br i1 %87, label %105, label %104, !dbg !252

104:                                              ; preds = %78
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false), !dbg !253
  call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 160, i32 noundef 7) #6, !dbg !256
  br label %160, !dbg !256

105:                                              ; preds = %78
  %handler_result8 = call double @fAddHandlerDouble(double %0, double 1.000000e+00), !dbg !258
  %handler_result9 = call double @fAddHandlerDouble(double %handler_result, double 2.000000e+00), !dbg !259
  %106 = fdiv double %handler_result8, %handler_result9, !dbg !259
  %107 = fcmp ogt double %106, %2, !dbg !260
  br i1 %107, label %108, label %133, !dbg !261

108:                                              ; preds = %105
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #6, !dbg !262
  %109 = call fastcc i32 @beta_cont_frac(double noundef %0, double noundef %1, double noundef %2, ptr noundef nonnull %11), !dbg !263, !range !264
  tail call void @llvm.dbg.value(metadata i32 %109, metadata !123, metadata !DIExpression()), !dbg !139
  %110 = load double, ptr %10, align 8, !dbg !265, !tbaa !148
  %111 = load double, ptr %11, align 8, !dbg !266, !tbaa !148
  %112 = fmul double %110, %111, !dbg !267
  %113 = fdiv double %112, %0, !dbg !268
  store double %113, ptr %3, align 8, !dbg !269, !tbaa !148
  %114 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %10, i64 0, i32 1, !dbg !270
  %115 = load double, ptr %114, align 8, !dbg !270, !tbaa !153
  %116 = fmul double %111, %115, !dbg !271
  %117 = call double @llvm.fabs.f64(double %116), !dbg !272
  %118 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %11, i64 0, i32 1, !dbg !273
  %119 = load double, ptr %118, align 8, !dbg !273, !tbaa !153
  %120 = fmul double %110, %119, !dbg !274
  %121 = call double @llvm.fabs.f64(double %120), !dbg !275
  %handler_result10 = call double @fAddHandlerDouble(double %117, double %121), !dbg !276
  %122 = fdiv double %handler_result10, %0, !dbg !276
  %123 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !277
  store double %122, ptr %123, align 8, !dbg !278, !tbaa !153
  %124 = icmp eq i32 %103, 0, !dbg !279
  %125 = select i1 %124, i32 %109, i32 %103, !dbg !279
  tail call void @llvm.dbg.value(metadata i32 %125, metadata !124, metadata !DIExpression()), !dbg !139
  %126 = icmp eq i32 %125, 0, !dbg !280
  br i1 %126, label %127, label %131, !dbg !282

127:                                              ; preds = %108
  %128 = call double @llvm.fabs.f64(double %113), !dbg !283
  %129 = fcmp olt double %128, 0x10000000000000, !dbg !283
  br i1 %129, label %130, label %131, !dbg !286

130:                                              ; preds = %127
  call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 173, i32 noundef 15) #6, !dbg !287
  br label %131, !dbg !287

131:                                              ; preds = %130, %127, %108
  %132 = phi i32 [ 15, %130 ], [ 0, %127 ], [ %125, %108 ], !dbg !139
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #6, !dbg !289
  br label %160

133:                                              ; preds = %105
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #6, !dbg !290
  %handler_result11 = call double @fSubHandlerDouble(double 1.000000e+00, double %2), !dbg !291
  %134 = call fastcc i32 @beta_cont_frac(double noundef %1, double noundef %0, double noundef %handler_result11, ptr noundef nonnull %12), !dbg !291, !range !264
  tail call void @llvm.dbg.value(metadata i32 %134, metadata !127, metadata !DIExpression()), !dbg !141
  %135 = load double, ptr %10, align 8, !dbg !292, !tbaa !148
  %136 = load double, ptr %12, align 8, !dbg !293, !tbaa !148
  %137 = fmul double %135, %136, !dbg !294
  %138 = fdiv double %137, %1, !dbg !295
  tail call void @llvm.dbg.value(metadata double %138, metadata !129, metadata !DIExpression()), !dbg !141
  %handler_result12 = call double @fSubHandlerDouble(double 1.000000e+00, double %138), !dbg !296
  store double %handler_result12, ptr %3, align 8, !dbg !296, !tbaa !148
  %139 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %10, i64 0, i32 1, !dbg !297
  %140 = load double, ptr %139, align 8, !dbg !297, !tbaa !153
  %141 = fmul double %136, %140, !dbg !298
  %142 = call double @llvm.fabs.f64(double %141), !dbg !299
  %143 = fdiv double %142, %1, !dbg !300
  %144 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !301
  %145 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %12, i64 0, i32 1, !dbg !302
  %146 = load double, ptr %145, align 8, !dbg !302, !tbaa !153
  %147 = fmul double %135, %146, !dbg !303
  %148 = call double @llvm.fabs.f64(double %147), !dbg !304
  %149 = fdiv double %148, %1, !dbg !305
  %handler_result13 = call double @fAddHandlerDouble(double %143, double %149), !dbg !306
  %150 = call double @llvm.fabs.f64(double %138), !dbg !306
  %handler_result14 = call double @fAddHandlerDouble(double %150, double 1.000000e+00), !dbg !307
  %151 = fmul double %handler_result14, 0x3CC0000000000000, !dbg !307
  %handler_result15 = call double @fAddHandlerDouble(double %151, double %handler_result13), !dbg !308
  store double %handler_result15, ptr %144, align 8, !dbg !308, !tbaa !153
  switch i32 %103, label %158 [
    i32 15, label %152
    i32 0, label %152
  ], !dbg !309

152:                                              ; preds = %133, %133
  tail call void @llvm.dbg.value(metadata i32 %134, metadata !128, metadata !DIExpression()), !dbg !141
  %153 = icmp eq i32 %134, 0, !dbg !310
  br i1 %153, label %154, label %158, !dbg !312

154:                                              ; preds = %152
  %155 = call double @llvm.fabs.f64(double %handler_result12), !dbg !313
  %156 = fcmp olt double %155, 0x10000000000000, !dbg !313
  br i1 %156, label %157, label %158, !dbg !316

157:                                              ; preds = %154
  call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 195, i32 noundef 15) #6, !dbg !317
  br label %158, !dbg !317

158:                                              ; preds = %157, %154, %152, %133
  %159 = phi i32 [ 15, %157 ], [ 0, %154 ], [ %134, %152 ], [ %103, %133 ], !dbg !141
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #6, !dbg !319
  br label %160

160:                                              ; preds = %158, %131, %104
  %161 = phi i32 [ 7, %104 ], [ %132, %131 ], [ %159, %158 ], !dbg !134
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #6, !dbg !320
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #6, !dbg !320
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #6, !dbg !320
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #6, !dbg !320
  br label %162

162:                                              ; preds = %160, %76, %42, %39, %35, %28, %16
  %163 = phi i32 [ 1, %16 ], [ 1, %28 ], [ 1, %35 ], [ 0, %39 ], [ 0, %42 ], [ %77, %76 ], [ %161, %160 ], !dbg !321
  ret i32 %163, !dbg !322
}

declare !dbg !323 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare !dbg !328 i32 @gsl_sf_hyperg_2F1_e(double noundef, double noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !332 i32 @gsl_sf_beta_e(double noundef, double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !336 double @pow(double noundef, double noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

declare !dbg !340 i32 @gsl_sf_lnbeta_e(double noundef, double noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !341 i32 @gsl_sf_log_1plusx_e(double noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !345 i32 @gsl_sf_log_e(double noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !346 i32 @gsl_sf_exp_err_e(double noundef, double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @beta_cont_frac(double noundef %0, double noundef %1, double noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 !dbg !348 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !350, metadata !DIExpression()), !dbg !366
  tail call void @llvm.dbg.value(metadata double %1, metadata !351, metadata !DIExpression()), !dbg !366
  tail call void @llvm.dbg.value(metadata double %2, metadata !352, metadata !DIExpression()), !dbg !366
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !353, metadata !DIExpression()), !dbg !366
  tail call void @llvm.dbg.value(metadata i32 512, metadata !354, metadata !DIExpression()), !dbg !366
  tail call void @llvm.dbg.value(metadata double 0x20000000000000, metadata !357, metadata !DIExpression()), !dbg !366
  tail call void @llvm.dbg.value(metadata i32 0, metadata !358, metadata !DIExpression()), !dbg !366
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !360, metadata !DIExpression()), !dbg !366
  %handler_result = call double @fAddHandlerDouble(double %0, double %1), !dbg !367
  %5 = fmul double %handler_result, %2, !dbg !367
  %handler_result1 = call double @fAddHandlerDouble(double %0, double 1.000000e+00), !dbg !368
  %6 = fdiv double %5, %handler_result1, !dbg !368
  %handler_result2 = call double @fSubHandlerDouble(double 1.000000e+00, double %6), !dbg !369
  tail call void @llvm.dbg.value(metadata double %handler_result2, metadata !361, metadata !DIExpression()), !dbg !366
  %7 = tail call double @llvm.fabs.f64(double %handler_result2), !dbg !369
  %8 = fcmp olt double %7, 0x20000000000000, !dbg !371
  %9 = fdiv double 1.000000e+00, %handler_result2, !dbg !372
  tail call void @llvm.dbg.value(metadata double poison, metadata !361, metadata !DIExpression()), !dbg !366
  %10 = select i1 %8, double 0x7FC0000000000000, double %9, !dbg !372
  tail call void @llvm.dbg.value(metadata double %10, metadata !361, metadata !DIExpression()), !dbg !366
  tail call void @llvm.dbg.value(metadata double %10, metadata !359, metadata !DIExpression()), !dbg !366
  %handler_result3 = call double @fAddHandlerDouble(double %0, double -1.000000e+00), !dbg !373
  br label %11, !dbg !373

11:                                               ; preds = %17, %4
  %12 = phi i32 [ 0, %4 ], [ %18, %17 ], !dbg !374
  %13 = phi double [ %10, %4 ], [ %52, %17 ], !dbg !366
  %14 = phi double [ 1.000000e+00, %4 ], [ %49, %17 ], !dbg !366
  %15 = phi double [ %10, %4 ], [ %50, %17 ], !dbg !366
  tail call void @llvm.dbg.value(metadata double %15, metadata !361, metadata !DIExpression()), !dbg !366
  tail call void @llvm.dbg.value(metadata double %14, metadata !360, metadata !DIExpression()), !dbg !366
  tail call void @llvm.dbg.value(metadata double %13, metadata !359, metadata !DIExpression()), !dbg !366
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !358, metadata !DIExpression()), !dbg !366
  %16 = icmp eq i32 %12, 512, !dbg !375
  br i1 %16, label %55, label %17, !dbg !373

17:                                               ; preds = %11
  %18 = add nuw nsw i32 %12, 1, !dbg !376
  tail call void @llvm.dbg.value(metadata i32 %18, metadata !362, metadata !DIExpression()), !dbg !377
  %19 = sitofp i32 %18 to double, !dbg !378
  %handler_result4 = call double @fSubHandlerDouble(double %1, double %19), !dbg !379
  %20 = fmul double %handler_result4, %19, !dbg !379
  %21 = fmul double %20, %2, !dbg !380
  %22 = shl nuw nsw i32 %18, 1, !dbg !381
  %23 = sitofp i32 %22 to double, !dbg !382
  %handler_result5 = call double @fAddHandlerDouble(double %handler_result3, double %23), !dbg !383
  %handler_result6 = call double @fAddHandlerDouble(double %23, double %0), !dbg !384
  %24 = fmul double %handler_result5, %handler_result6, !dbg !384
  %25 = fdiv double %21, %24, !dbg !385
  tail call void @llvm.dbg.value(metadata double %25, metadata !364, metadata !DIExpression()), !dbg !377
  %26 = fmul double %15, %25, !dbg !386
  %handler_result7 = call double @fAddHandlerDouble(double %26, double 1.000000e+00), !dbg !387
  tail call void @llvm.dbg.value(metadata double %handler_result7, metadata !361, metadata !DIExpression()), !dbg !366
  %27 = fdiv double %25, %14, !dbg !387
  %handler_result8 = call double @fAddHandlerDouble(double %27, double 1.000000e+00), !dbg !388
  tail call void @llvm.dbg.value(metadata double %handler_result8, metadata !360, metadata !DIExpression()), !dbg !366
  %28 = tail call double @llvm.fabs.f64(double %handler_result7), !dbg !388
  %29 = fcmp olt double %28, 0x20000000000000, !dbg !390
  %30 = fdiv double 1.000000e+00, %handler_result7, !dbg !391
  tail call void @llvm.dbg.value(metadata double poison, metadata !361, metadata !DIExpression()), !dbg !366
  %31 = tail call double @llvm.fabs.f64(double %handler_result8), !dbg !392
  %32 = fcmp olt double %31, 0x20000000000000, !dbg !394
  %33 = select i1 %32, double 0x20000000000000, double %handler_result8, !dbg !395
  tail call void @llvm.dbg.value(metadata double %33, metadata !360, metadata !DIExpression()), !dbg !366
  %34 = select i1 %29, double 0x7FC0000000000000, double %30, !dbg !391
  tail call void @llvm.dbg.value(metadata double %34, metadata !361, metadata !DIExpression()), !dbg !366
  %35 = fmul double %34, %33, !dbg !396
  tail call void @llvm.dbg.value(metadata double %35, metadata !365, metadata !DIExpression()), !dbg !377
  %36 = fmul double %13, %35, !dbg !397
  tail call void @llvm.dbg.value(metadata double %36, metadata !359, metadata !DIExpression()), !dbg !366
  %handler_result9 = call double @fAddHandlerDouble(double %19, double %0), !dbg !398
  %37 = fneg double %handler_result9, !dbg !398
  %handler_result10 = call double @fAddHandlerDouble(double %handler_result, double %19), !dbg !399
  %38 = fmul double %handler_result10, %37, !dbg !399
  %39 = fmul double %38, %2, !dbg !400
  %handler_result11 = call double @fAddHandlerDouble(double %handler_result6, double 1.000000e+00), !dbg !401
  %40 = fmul double %handler_result6, %handler_result11, !dbg !401
  %41 = fdiv double %39, %40, !dbg !402
  tail call void @llvm.dbg.value(metadata double %41, metadata !364, metadata !DIExpression()), !dbg !377
  %42 = fmul double %41, %34, !dbg !403
  %handler_result12 = call double @fAddHandlerDouble(double %42, double 1.000000e+00), !dbg !404
  tail call void @llvm.dbg.value(metadata double %handler_result12, metadata !361, metadata !DIExpression()), !dbg !366
  %43 = fdiv double %41, %33, !dbg !404
  %handler_result13 = call double @fAddHandlerDouble(double %43, double 1.000000e+00), !dbg !405
  tail call void @llvm.dbg.value(metadata double %handler_result13, metadata !360, metadata !DIExpression()), !dbg !366
  %44 = tail call double @llvm.fabs.f64(double %handler_result12), !dbg !405
  %45 = fcmp olt double %44, 0x20000000000000, !dbg !407
  %46 = fdiv double 1.000000e+00, %handler_result12, !dbg !408
  tail call void @llvm.dbg.value(metadata double poison, metadata !361, metadata !DIExpression()), !dbg !366
  %47 = tail call double @llvm.fabs.f64(double %handler_result13), !dbg !409
  %48 = fcmp olt double %47, 0x20000000000000, !dbg !411
  %49 = select i1 %48, double 0x20000000000000, double %handler_result13, !dbg !412
  tail call void @llvm.dbg.value(metadata double %49, metadata !360, metadata !DIExpression()), !dbg !366
  %50 = select i1 %45, double 0x7FC0000000000000, double %46, !dbg !408
  tail call void @llvm.dbg.value(metadata double %50, metadata !361, metadata !DIExpression()), !dbg !366
  %51 = fmul double %50, %49, !dbg !413
  tail call void @llvm.dbg.value(metadata double %51, metadata !365, metadata !DIExpression()), !dbg !377
  %52 = fmul double %36, %51, !dbg !414
  tail call void @llvm.dbg.value(metadata double %52, metadata !359, metadata !DIExpression()), !dbg !366
  %handler_result14 = call double @fAddHandlerDouble(double %51, double -1.000000e+00), !dbg !415
  %53 = tail call double @llvm.fabs.f64(double %handler_result14), !dbg !415
  %54 = fcmp olt double %53, 0x3CC0000000000000, !dbg !417
  tail call void @llvm.dbg.value(metadata i32 undef, metadata !358, metadata !DIExpression()), !dbg !366
  br i1 %54, label %55, label %11

55:                                               ; preds = %17, %11
  %56 = phi double [ %52, %17 ], [ %13, %11 ], !dbg !366
  tail call void @llvm.dbg.value(metadata double %56, metadata !359, metadata !DIExpression()), !dbg !366
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !358, metadata !DIExpression()), !dbg !366
  store double %56, ptr %3, align 8, !dbg !418, !tbaa !148
  %57 = uitofp i32 %12 to double, !dbg !419
  %58 = fmul double %57, 4.000000e+00, !dbg !420
  %59 = fmul double %58, 0x3CB0000000000000, !dbg !421
  %60 = tail call double @llvm.fabs.f64(double %56), !dbg !422
  %61 = fmul double %59, %60, !dbg !423
  %62 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !424
  store double %61, ptr %62, align 8, !dbg !425, !tbaa !153
  %63 = icmp ugt i32 %12, 511, !dbg !426
  br i1 %63, label %64, label %65, !dbg !428

64:                                               ; preds = %55
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 97, i32 noundef 11) #6, !dbg !429
  br label %65, !dbg !429

65:                                               ; preds = %64, %55
  %66 = phi i32 [ 11, %64 ], [ 0, %55 ], !dbg !431
  ret i32 %66, !dbg !432
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_beta_inc(double noundef %0, double noundef %1, double noundef %2) local_unnamed_addr #0 !dbg !433 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !442
  call void @llvm.dbg.assign(metadata i1 undef, metadata !440, metadata !DIExpression(), metadata !442, metadata ptr %4, metadata !DIExpression()), !dbg !443
  tail call void @llvm.dbg.value(metadata double %0, metadata !437, metadata !DIExpression()), !dbg !443
  tail call void @llvm.dbg.value(metadata double %1, metadata !438, metadata !DIExpression()), !dbg !443
  tail call void @llvm.dbg.value(metadata double %2, metadata !439, metadata !DIExpression()), !dbg !443
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #6, !dbg !444
  %5 = call i32 @gsl_sf_beta_inc_e(double noundef %0, double noundef %1, double noundef %2, ptr noundef nonnull %4), !dbg !444
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !441, metadata !DIExpression()), !dbg !443
  %6 = icmp eq i32 %5, 0, !dbg !445
  br i1 %6, label %8, label %7, !dbg !444

7:                                                ; preds = %3
  tail call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 209, i32 noundef %5) #6, !dbg !447
  br label %8, !dbg !447

8:                                                ; preds = %7, %3
  %9 = load double, ptr %4, align 8, !dbg !444, !tbaa !148
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #6, !dbg !450
  ret double %9, !dbg !450
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

declare double @fAddHandlerDouble(double, double)

declare double @fSubHandlerDouble(double, double)

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind }

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
!174 = !DILocation(line: 37, column: 13, scope: !157, inlinedAt: !175)
!175 = distinct !DILocation(line: 118, column: 14, scope: !99)
!176 = !DILocation(line: 0, scope: !157, inlinedAt: !175)
!177 = !DILocation(line: 37, column: 18, scope: !157, inlinedAt: !175)
!178 = !DILocation(line: 119, column: 5, scope: !179)
!179 = distinct !DILexicalBlock(scope: !180, file: !2, line: 119, column: 5)
!180 = distinct !DILexicalBlock(scope: !99, file: !2, line: 118, column: 29)
!181 = !DILocation(line: 119, column: 5, scope: !182)
!182 = distinct !DILexicalBlock(scope: !179, file: !2, line: 119, column: 5)
!183 = !DILocation(line: 120, column: 15, scope: !98)
!184 = !DILocation(line: 120, column: 13, scope: !99)
!185 = !DILocation(line: 122, column: 17, scope: !186)
!186 = distinct !DILexicalBlock(scope: !98, file: !2, line: 120, column: 23)
!187 = !DILocation(line: 123, column: 5, scope: !186)
!188 = !DILocation(line: 125, column: 13, scope: !97)
!189 = !DILocation(line: 125, column: 11, scope: !98)
!190 = !DILocation(line: 126, column: 17, scope: !191)
!191 = distinct !DILexicalBlock(scope: !97, file: !2, line: 125, column: 21)
!192 = !DILocation(line: 127, column: 13, scope: !191)
!193 = !DILocation(line: 127, column: 17, scope: !191)
!194 = !DILocation(line: 128, column: 5, scope: !191)
!195 = !DILocation(line: 129, column: 16, scope: !96)
!196 = !DILocation(line: 129, column: 21, scope: !96)
!197 = !DILocation(line: 130, column: 5, scope: !95)
!198 = !DILocation(line: 132, column: 53, scope: !95)
!199 = !DILocation(line: 132, column: 24, scope: !95)
!200 = !DILocation(line: 133, column: 27, scope: !95)
!201 = !DILocation(line: 134, column: 25, scope: !95)
!202 = !DILocation(line: 134, column: 35, scope: !95)
!203 = !DILocation(line: 135, column: 33, scope: !95)
!204 = !DILocation(line: 135, column: 29, scope: !95)
!205 = !DILocation(line: 135, column: 44, scope: !95)
!206 = !DILocation(line: 135, column: 37, scope: !95)
!207 = !DILocation(line: 135, column: 17, scope: !95)
!208 = !DILocation(line: 136, column: 19, scope: !95)
!209 = !DILocation(line: 136, column: 39, scope: !95)
!210 = !DILocation(line: 136, column: 35, scope: !95)
!211 = !DILocation(line: 136, column: 44, scope: !95)
!212 = !DILocation(line: 136, column: 42, scope: !95)
!213 = !DILocation(line: 136, column: 77, scope: !95)
!214 = !DILocation(line: 136, column: 61, scope: !95)
!215 = !DILocation(line: 136, column: 95, scope: !95)
!216 = !DILocation(line: 136, column: 88, scope: !95)
!217 = !DILocation(line: 136, column: 13, scope: !95)
!218 = !DILocation(line: 136, column: 17, scope: !95)
!219 = !DILocation(line: 138, column: 12, scope: !95)
!220 = !DILocation(line: 139, column: 13, scope: !221)
!221 = distinct !DILexicalBlock(scope: !95, file: !2, line: 139, column: 8)
!222 = !DILocation(line: 139, column: 8, scope: !95)
!223 = !DILocation(line: 140, column: 7, scope: !224)
!224 = distinct !DILexicalBlock(scope: !225, file: !2, line: 140, column: 7)
!225 = distinct !DILexicalBlock(scope: !221, file: !2, line: 139, column: 29)
!226 = !DILocation(line: 140, column: 7, scope: !225)
!227 = !DILocation(line: 140, column: 7, scope: !228)
!228 = distinct !DILexicalBlock(scope: !224, file: !2, line: 140, column: 7)
!229 = !DILocation(line: 143, column: 3, scope: !96)
!230 = !DILocation(line: 144, column: 5, scope: !109)
!231 = !DILocation(line: 145, column: 5, scope: !109)
!232 = !DILocation(line: 146, column: 5, scope: !109)
!233 = !DILocation(line: 147, column: 5, scope: !109)
!234 = !DILocation(line: 148, column: 30, scope: !109)
!235 = !DILocation(line: 149, column: 49, scope: !109)
!236 = !DILocation(line: 149, column: 29, scope: !109)
!237 = !DILocation(line: 150, column: 27, scope: !109)
!238 = !DILocation(line: 151, column: 25, scope: !109)
!239 = !DILocation(line: 153, column: 40, scope: !109)
!240 = !DILocation(line: 153, column: 55, scope: !109)
!241 = !DILocation(line: 153, column: 48, scope: !109)
!242 = !DILocation(line: 153, column: 72, scope: !109)
!243 = !DILocation(line: 153, column: 63, scope: !109)
!244 = !DILocation(line: 154, column: 40, scope: !109)
!245 = !DILocation(line: 154, column: 58, scope: !109)
!246 = !DILocation(line: 154, column: 52, scope: !109)
!247 = !DILocation(line: 154, column: 46, scope: !109)
!248 = !DILocation(line: 154, column: 79, scope: !109)
!249 = !DILocation(line: 154, column: 71, scope: !109)
!250 = !DILocation(line: 154, column: 65, scope: !109)
!251 = !DILocation(line: 155, column: 26, scope: !109)
!252 = !DILocation(line: 157, column: 8, scope: !109)
!253 = !DILocation(line: 159, column: 19, scope: !254)
!254 = distinct !DILexicalBlock(scope: !255, file: !2, line: 157, column: 32)
!255 = distinct !DILexicalBlock(scope: !109, file: !2, line: 157, column: 8)
!256 = !DILocation(line: 160, column: 7, scope: !257)
!257 = distinct !DILexicalBlock(scope: !254, file: !2, line: 160, column: 7)
!258 = !DILocation(line: 163, column: 26, scope: !122)
!259 = !DILocation(line: 163, column: 21, scope: !122)
!260 = !DILocation(line: 163, column: 10, scope: !122)
!261 = !DILocation(line: 163, column: 8, scope: !109)
!262 = !DILocation(line: 165, column: 7, scope: !121)
!263 = !DILocation(line: 166, column: 27, scope: !121)
!264 = !{i32 0, i32 12}
!265 = !DILocation(line: 168, column: 31, scope: !121)
!266 = !DILocation(line: 168, column: 40, scope: !121)
!267 = !DILocation(line: 168, column: 35, scope: !121)
!268 = !DILocation(line: 168, column: 44, scope: !121)
!269 = !DILocation(line: 168, column: 19, scope: !121)
!270 = !DILocation(line: 169, column: 37, scope: !121)
!271 = !DILocation(line: 169, column: 41, scope: !121)
!272 = !DILocation(line: 169, column: 22, scope: !121)
!273 = !DILocation(line: 169, column: 77, scope: !121)
!274 = !DILocation(line: 169, column: 72, scope: !121)
!275 = !DILocation(line: 169, column: 53, scope: !121)
!276 = !DILocation(line: 169, column: 82, scope: !121)
!277 = !DILocation(line: 169, column: 15, scope: !121)
!278 = !DILocation(line: 169, column: 19, scope: !121)
!279 = !DILocation(line: 171, column: 14, scope: !121)
!280 = !DILocation(line: 172, column: 15, scope: !281)
!281 = distinct !DILexicalBlock(scope: !121, file: !2, line: 172, column: 10)
!282 = !DILocation(line: 172, column: 10, scope: !121)
!283 = !DILocation(line: 173, column: 9, scope: !284)
!284 = distinct !DILexicalBlock(scope: !285, file: !2, line: 173, column: 9)
!285 = distinct !DILexicalBlock(scope: !281, file: !2, line: 172, column: 31)
!286 = !DILocation(line: 173, column: 9, scope: !285)
!287 = !DILocation(line: 173, column: 9, scope: !288)
!288 = distinct !DILexicalBlock(scope: !284, file: !2, line: 173, column: 9)
!289 = !DILocation(line: 176, column: 5, scope: !122)
!290 = !DILocation(line: 179, column: 7, scope: !126)
!291 = !DILocation(line: 180, column: 27, scope: !126)
!292 = !DILocation(line: 182, column: 37, scope: !126)
!293 = !DILocation(line: 182, column: 46, scope: !126)
!294 = !DILocation(line: 182, column: 41, scope: !126)
!295 = !DILocation(line: 182, column: 50, scope: !126)
!296 = !DILocation(line: 183, column: 20, scope: !126)
!297 = !DILocation(line: 184, column: 37, scope: !126)
!298 = !DILocation(line: 184, column: 41, scope: !126)
!299 = !DILocation(line: 184, column: 22, scope: !126)
!300 = !DILocation(line: 184, column: 50, scope: !126)
!301 = !DILocation(line: 184, column: 15, scope: !126)
!302 = !DILocation(line: 185, column: 46, scope: !126)
!303 = !DILocation(line: 185, column: 41, scope: !126)
!304 = !DILocation(line: 185, column: 22, scope: !126)
!305 = !DILocation(line: 185, column: 50, scope: !126)
!306 = !DILocation(line: 186, column: 53, scope: !126)
!307 = !DILocation(line: 186, column: 44, scope: !126)
!308 = !DILocation(line: 186, column: 19, scope: !126)
!309 = !DILocation(line: 189, column: 11, scope: !126)
!310 = !DILocation(line: 194, column: 15, scope: !311)
!311 = distinct !DILexicalBlock(scope: !126, file: !2, line: 194, column: 10)
!312 = !DILocation(line: 194, column: 10, scope: !126)
!313 = !DILocation(line: 195, column: 9, scope: !314)
!314 = distinct !DILexicalBlock(scope: !315, file: !2, line: 195, column: 9)
!315 = distinct !DILexicalBlock(scope: !311, file: !2, line: 194, column: 31)
!316 = !DILocation(line: 195, column: 9, scope: !315)
!317 = !DILocation(line: 195, column: 9, scope: !318)
!318 = distinct !DILexicalBlock(scope: !314, file: !2, line: 195, column: 9)
!319 = !DILocation(line: 198, column: 5, scope: !122)
!320 = !DILocation(line: 199, column: 3, scope: !96)
!321 = !DILocation(line: 0, scope: !101)
!322 = !DILocation(line: 200, column: 1, scope: !77)
!323 = !DISubprogram(name: "gsl_error", scope: !30, file: !30, line: 77, type: !324, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!324 = !DISubroutineType(types: !325)
!325 = !{null, !326, !326, !31, !31}
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!327 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!328 = !DISubprogram(name: "gsl_sf_hyperg_2F1_e", scope: !329, file: !329, line: 108, type: !330, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!329 = !DIFile(filename: "../gsl/gsl_sf_hyperg.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "6a7ad80bd86b12c428cf1476c4b61a8a")
!330 = !DISubroutineType(types: !331)
!331 = !{!31, !81, !81, !80, !80, !82}
!332 = !DISubprogram(name: "gsl_sf_beta_e", scope: !333, file: !333, line: 266, type: !334, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!333 = !DIFile(filename: "../gsl/gsl_sf_gamma.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "88cc3c2b19ea790e1c6889b01cfd3137")
!334 = !DISubroutineType(types: !335)
!335 = !{!31, !80, !80, !82}
!336 = !DISubprogram(name: "pow", scope: !337, file: !337, line: 140, type: !338, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!337 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!338 = !DISubroutineType(types: !339)
!339 = !{!81, !81, !81}
!340 = !DISubprogram(name: "gsl_sf_lnbeta_e", scope: !333, file: !333, line: 254, type: !334, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!341 = !DISubprogram(name: "gsl_sf_log_1plusx_e", scope: !342, file: !342, line: 69, type: !343, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!342 = !DIFile(filename: "../gsl/gsl_sf_log.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "f56b795d5c89d6a7f7c2549105288199")
!343 = !DISubroutineType(types: !344)
!344 = !{!31, !80, !82}
!345 = !DISubprogram(name: "gsl_sf_log_e", scope: !342, file: !342, line: 44, type: !343, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!346 = !DISubprogram(name: "gsl_sf_exp_err_e", scope: !347, file: !347, line: 110, type: !334, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!347 = !DIFile(filename: "../gsl/gsl_sf_exp.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "c512f91507e79efdd09661b0faef2cde")
!348 = distinct !DISubprogram(name: "beta_cont_frac", scope: !2, file: !2, line: 42, type: !78, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !27, retainedNodes: !349)
!349 = !{!350, !351, !352, !353, !354, !357, !358, !359, !360, !361, !362, !364, !365}
!350 = !DILocalVariable(name: "a", arg: 1, scope: !348, file: !2, line: 43, type: !80)
!351 = !DILocalVariable(name: "b", arg: 2, scope: !348, file: !2, line: 44, type: !80)
!352 = !DILocalVariable(name: "x", arg: 3, scope: !348, file: !2, line: 45, type: !80)
!353 = !DILocalVariable(name: "result", arg: 4, scope: !348, file: !2, line: 46, type: !82)
!354 = !DILocalVariable(name: "max_iter", scope: !348, file: !2, line: 49, type: !355)
!355 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !356)
!356 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!357 = !DILocalVariable(name: "cutoff", scope: !348, file: !2, line: 50, type: !80)
!358 = !DILocalVariable(name: "iter_count", scope: !348, file: !2, line: 51, type: !356)
!359 = !DILocalVariable(name: "cf", scope: !348, file: !2, line: 52, type: !81)
!360 = !DILocalVariable(name: "num_term", scope: !348, file: !2, line: 55, type: !81)
!361 = !DILocalVariable(name: "den_term", scope: !348, file: !2, line: 56, type: !81)
!362 = !DILocalVariable(name: "k", scope: !363, file: !2, line: 62, type: !105)
!363 = distinct !DILexicalBlock(scope: !348, file: !2, line: 61, column: 32)
!364 = !DILocalVariable(name: "coeff", scope: !363, file: !2, line: 63, type: !81)
!365 = !DILocalVariable(name: "delta_frac", scope: !363, file: !2, line: 64, type: !81)
!366 = !DILocation(line: 0, scope: !348)
!367 = !DILocation(line: 56, column: 32, scope: !348)
!368 = !DILocation(line: 56, column: 34, scope: !348)
!369 = !DILocation(line: 57, column: 7, scope: !370)
!370 = distinct !DILexicalBlock(scope: !348, file: !2, line: 57, column: 7)
!371 = !DILocation(line: 57, column: 22, scope: !370)
!372 = !DILocation(line: 58, column: 17, scope: !348)
!373 = !DILocation(line: 61, column: 3, scope: !348)
!374 = !DILocation(line: 51, column: 16, scope: !348)
!375 = !DILocation(line: 61, column: 20, scope: !348)
!376 = !DILocation(line: 62, column: 31, scope: !363)
!377 = !DILocation(line: 0, scope: !363)
!378 = !DILocation(line: 63, column: 20, scope: !363)
!379 = !DILocation(line: 63, column: 21, scope: !363)
!380 = !DILocation(line: 63, column: 27, scope: !363)
!381 = !DILocation(line: 63, column: 41, scope: !363)
!382 = !DILocation(line: 63, column: 40, scope: !363)
!383 = !DILocation(line: 63, column: 47, scope: !363)
!384 = !DILocation(line: 63, column: 44, scope: !363)
!385 = !DILocation(line: 63, column: 29, scope: !363)
!386 = !DILocation(line: 67, column: 27, scope: !363)
!387 = !DILocation(line: 68, column: 27, scope: !363)
!388 = !DILocation(line: 69, column: 8, scope: !389)
!389 = distinct !DILexicalBlock(scope: !363, file: !2, line: 69, column: 8)
!390 = !DILocation(line: 69, column: 23, scope: !389)
!391 = !DILocation(line: 71, column: 20, scope: !363)
!392 = !DILocation(line: 70, column: 8, scope: !393)
!393 = distinct !DILexicalBlock(scope: !363, file: !2, line: 70, column: 8)
!394 = !DILocation(line: 70, column: 23, scope: !393)
!395 = !DILocation(line: 70, column: 8, scope: !363)
!396 = !DILocation(line: 73, column: 27, scope: !363)
!397 = !DILocation(line: 74, column: 8, scope: !363)
!398 = !DILocation(line: 76, column: 13, scope: !363)
!399 = !DILocation(line: 76, column: 19, scope: !363)
!400 = !DILocation(line: 76, column: 27, scope: !363)
!401 = !DILocation(line: 76, column: 38, scope: !363)
!402 = !DILocation(line: 76, column: 29, scope: !363)
!403 = !DILocation(line: 79, column: 27, scope: !363)
!404 = !DILocation(line: 80, column: 27, scope: !363)
!405 = !DILocation(line: 81, column: 8, scope: !406)
!406 = distinct !DILexicalBlock(scope: !363, file: !2, line: 81, column: 8)
!407 = !DILocation(line: 81, column: 23, scope: !406)
!408 = !DILocation(line: 83, column: 19, scope: !363)
!409 = !DILocation(line: 82, column: 8, scope: !410)
!410 = distinct !DILexicalBlock(scope: !363, file: !2, line: 82, column: 8)
!411 = !DILocation(line: 82, column: 23, scope: !410)
!412 = !DILocation(line: 82, column: 8, scope: !363)
!413 = !DILocation(line: 85, column: 26, scope: !363)
!414 = !DILocation(line: 86, column: 8, scope: !363)
!415 = !DILocation(line: 88, column: 8, scope: !416)
!416 = distinct !DILexicalBlock(scope: !363, file: !2, line: 88, column: 8)
!417 = !DILocation(line: 88, column: 29, scope: !416)
!418 = !DILocation(line: 93, column: 15, scope: !348)
!419 = !DILocation(line: 94, column: 17, scope: !348)
!420 = !DILocation(line: 94, column: 28, scope: !348)
!421 = !DILocation(line: 94, column: 34, scope: !348)
!422 = !DILocation(line: 94, column: 54, scope: !348)
!423 = !DILocation(line: 94, column: 52, scope: !348)
!424 = !DILocation(line: 94, column: 11, scope: !348)
!425 = !DILocation(line: 94, column: 15, scope: !348)
!426 = !DILocation(line: 96, column: 17, scope: !427)
!427 = distinct !DILexicalBlock(scope: !348, file: !2, line: 96, column: 6)
!428 = !DILocation(line: 96, column: 6, scope: !348)
!429 = !DILocation(line: 97, column: 5, scope: !430)
!430 = distinct !DILexicalBlock(scope: !427, file: !2, line: 97, column: 5)
!431 = !DILocation(line: 0, scope: !427)
!432 = !DILocation(line: 100, column: 1, scope: !348)
!433 = distinct !DISubprogram(name: "gsl_sf_beta_inc", scope: !2, file: !2, line: 207, type: !434, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !27, retainedNodes: !436)
!434 = !DISubroutineType(types: !435)
!435 = !{!81, !80, !80, !80}
!436 = !{!437, !438, !439, !440, !441}
!437 = !DILocalVariable(name: "a", arg: 1, scope: !433, file: !2, line: 207, type: !80)
!438 = !DILocalVariable(name: "b", arg: 2, scope: !433, file: !2, line: 207, type: !80)
!439 = !DILocalVariable(name: "x", arg: 3, scope: !433, file: !2, line: 207, type: !80)
!440 = !DILocalVariable(name: "result", scope: !433, file: !2, line: 209, type: !83)
!441 = !DILocalVariable(name: "status", scope: !433, file: !2, line: 209, type: !31)
!442 = distinct !DIAssignID()
!443 = !DILocation(line: 0, scope: !433)
!444 = !DILocation(line: 209, column: 3, scope: !433)
!445 = !DILocation(line: 209, column: 3, scope: !446)
!446 = distinct !DILexicalBlock(scope: !433, file: !2, line: 209, column: 3)
!447 = !DILocation(line: 209, column: 3, scope: !448)
!448 = distinct !DILexicalBlock(scope: !449, file: !2, line: 209, column: 3)
!449 = distinct !DILexicalBlock(scope: !446, file: !2, line: 209, column: 3)
!450 = !DILocation(line: 210, column: 1, scope: !433)
