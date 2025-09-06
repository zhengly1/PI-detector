; ModuleID = 'bessel_In.ll'
source_filename = "bessel_In.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [13 x i8] c"domain error\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [12 x i8] c"bessel_In.c\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [9 x i8] c"overflow\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [41 x i8] c"gsl_sf_bessel_In_scaled_e(n, x, &result)\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [34 x i8] c"gsl_sf_bessel_In_e(n, x, &result)\00", align 1, !dbg !22

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_bessel_In_scaled_e(i32 noundef %0, double noundef %1, ptr noundef %2) local_unnamed_addr #0 !dbg !79 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !127
  call void @llvm.dbg.assign(metadata i1 undef, metadata !95, metadata !DIExpression(), metadata !127, metadata ptr %4, metadata !DIExpression()), !dbg !128
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !129
  call void @llvm.dbg.assign(metadata i1 undef, metadata !103, metadata !DIExpression(), metadata !129, metadata ptr %5, metadata !DIExpression()), !dbg !130
  %6 = alloca double, align 8, !DIAssignID !131
  call void @llvm.dbg.assign(metadata i1 undef, metadata !107, metadata !DIExpression(), metadata !131, metadata ptr %6, metadata !DIExpression()), !dbg !130
  %7 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !132
  call void @llvm.dbg.assign(metadata i1 undef, metadata !119, metadata !DIExpression(), metadata !132, metadata ptr %7, metadata !DIExpression()), !dbg !133
  %8 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !134
  call void @llvm.dbg.assign(metadata i1 undef, metadata !120, metadata !DIExpression(), metadata !134, metadata ptr %8, metadata !DIExpression()), !dbg !133
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !91, metadata !DIExpression()), !dbg !135
  tail call void @llvm.dbg.value(metadata double %1, metadata !92, metadata !DIExpression()), !dbg !135
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !93, metadata !DIExpression()), !dbg !135
  %9 = tail call double @llvm.fabs.f64(double %1), !dbg !136
  tail call void @llvm.dbg.value(metadata double %9, metadata !94, metadata !DIExpression()), !dbg !135
  %10 = tail call i32 @llvm.abs.i32(i32 %0, i1 true), !dbg !137
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !91, metadata !DIExpression()), !dbg !135
  %11 = icmp eq i32 %0, 0, !dbg !138
  br i1 %11, label %12, label %14, !dbg !139

12:                                               ; preds = %3
  %13 = tail call i32 @gsl_sf_bessel_I0_scaled_e(double noundef %1, ptr noundef %2) #6, !dbg !140
  br label %179, !dbg !142

14:                                               ; preds = %3
  %15 = icmp eq i32 %10, 1, !dbg !143
  br i1 %15, label %16, label %18, !dbg !144

16:                                               ; preds = %14
  %17 = tail call i32 @gsl_sf_bessel_I1_scaled_e(double noundef %1, ptr noundef %2) #6, !dbg !145
  br label %179, !dbg !147

18:                                               ; preds = %14
  %19 = fcmp oeq double %1, 0.000000e+00, !dbg !148
  br i1 %19, label %20, label %21, !dbg !149

20:                                               ; preds = %18
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !dbg !150
  br label %179, !dbg !152

21:                                               ; preds = %18
  %22 = fmul double %1, %1, !dbg !153
  %23 = sitofp i32 %10 to double, !dbg !154
  %handler_result = call double @fAddHandlerDouble(double %23, double 1.000000e+00), !dbg !155
  %24 = fmul double %handler_result, 1.000000e+01, !dbg !155
  %25 = fdiv double %24, 0x4005BF0A8B145769, !dbg !156
  %26 = fcmp olt double %22, %25, !dbg !157
  br i1 %26, label %27, label %46, !dbg !158

27:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #6, !dbg !159
  %28 = fneg double %9, !dbg !160
  %29 = tail call double @exp(double noundef %28) #6, !dbg !161
  tail call void @llvm.dbg.value(metadata double %29, metadata !101, metadata !DIExpression()), !dbg !128
  %30 = call i32 @gsl_sf_bessel_IJ_taylor_e(double noundef %23, double noundef %9, i32 noundef 1, i32 noundef 50, double noundef 0x3CB0000000000000, ptr noundef nonnull %4) #6, !dbg !162
  tail call void @llvm.dbg.value(metadata i32 %30, metadata !102, metadata !DIExpression()), !dbg !128
  %31 = load double, ptr %4, align 8, !dbg !163, !tbaa !164
  %32 = fmul double %29, %31, !dbg !169
  store double %32, ptr %2, align 8, !dbg !170, !tbaa !164
  %33 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !171
  %34 = load double, ptr %33, align 8, !dbg !171, !tbaa !172
  %35 = fmul double %29, %34, !dbg !173
  %36 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !174
  %37 = call double @llvm.fabs.f64(double %32), !dbg !175
  %38 = fmul double %37, 0x3CC0000000000000, !dbg !176
  %handler_result1 = call double @fAddHandlerDouble(double %35, double %38), !dbg !177
  store double %handler_result1, ptr %36, align 8, !dbg !177, !tbaa !172
  %39 = fcmp uge double %1, 0.000000e+00, !dbg !178
  %40 = and i32 %10, 1
  %41 = icmp eq i32 %40, 0
  %42 = select i1 %39, i1 true, i1 %41, !dbg !180
  br i1 %42, label %45, label %43, !dbg !180

43:                                               ; preds = %27
  %44 = fneg double %32, !dbg !181
  store double %44, ptr %2, align 8, !dbg !182, !tbaa !164
  br label %45, !dbg !183

45:                                               ; preds = %43, %27
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #6, !dbg !184
  br label %179

46:                                               ; preds = %21
  %47 = icmp ult i32 %10, 150, !dbg !185
  %48 = fcmp olt double %9, 1.000000e+07
  %49 = and i1 %47, %48, !dbg !186
  br i1 %49, label %50, label %84, !dbg !186

50:                                               ; preds = %46
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #6, !dbg !187
  %51 = call i32 @gsl_sf_bessel_I0_scaled_e(double noundef %9, ptr noundef nonnull %5) #6, !dbg !188
  tail call void @llvm.dbg.value(metadata i32 %51, metadata !106, metadata !DIExpression()), !dbg !130
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #6, !dbg !189
  %52 = call i32 @gsl_sf_bessel_I_CF1_ser(double noundef %23, double noundef %9, ptr noundef nonnull %6) #6, !dbg !190
  tail call void @llvm.dbg.value(metadata i32 %52, metadata !108, metadata !DIExpression()), !dbg !130
  %53 = load double, ptr %6, align 8, !dbg !191, !tbaa !192
  %54 = fmul double %53, 0x2000000000000000, !dbg !193
  tail call void @llvm.dbg.value(metadata double %54, metadata !109, metadata !DIExpression()), !dbg !130
  tail call void @llvm.dbg.value(metadata double 0x2000000000000000, metadata !110, metadata !DIExpression()), !dbg !130
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !112, metadata !DIExpression()), !dbg !130
  br label %55, !dbg !194

55:                                               ; preds = %55, %50
  %56 = phi double [ %54, %50 ], [ %57, %55 ]
  %57 = phi double [ 0x2000000000000000, %50 ], [ %handler_result2, %55 ]
  %58 = phi i32 [ %10, %50 ], [ %63, %55 ]
  tail call void @llvm.dbg.value(metadata double %56, metadata !109, metadata !DIExpression()), !dbg !130
  tail call void @llvm.dbg.value(metadata double %57, metadata !110, metadata !DIExpression()), !dbg !130
  tail call void @llvm.dbg.value(metadata i32 %58, metadata !112, metadata !DIExpression()), !dbg !130
  %59 = sitofp i32 %58 to double, !dbg !196
  %60 = fmul double %59, 2.000000e+00, !dbg !199
  %61 = fdiv double %60, %9, !dbg !200
  %62 = fmul double %57, %61, !dbg !201
  %handler_result2 = call double @fAddHandlerDouble(double %56, double %62), !dbg !202
  tail call void @llvm.dbg.value(metadata double %handler_result2, metadata !111, metadata !DIExpression()), !dbg !130
  tail call void @llvm.dbg.value(metadata double %57, metadata !109, metadata !DIExpression()), !dbg !130
  tail call void @llvm.dbg.value(metadata double %handler_result2, metadata !110, metadata !DIExpression()), !dbg !130
  %63 = add nsw i32 %58, -1, !dbg !202
  tail call void @llvm.dbg.value(metadata i32 %63, metadata !112, metadata !DIExpression()), !dbg !130
  %64 = icmp ugt i32 %58, 1, !dbg !203
  br i1 %64, label %55, label %65, !dbg !194, !llvm.loop !204

65:                                               ; preds = %55
  %66 = load double, ptr %5, align 8, !dbg !207, !tbaa !164
  %67 = fdiv double 0x2000000000000000, %handler_result2, !dbg !208
  %68 = fmul double %67, %66, !dbg !209
  store double %68, ptr %2, align 8, !dbg !210, !tbaa !164
  %69 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !211
  %70 = load double, ptr %69, align 8, !dbg !211, !tbaa !172
  %71 = fmul double %67, %70, !dbg !212
  %72 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !213
  %73 = call double @llvm.fabs.f64(double %68), !dbg !214
  %74 = fmul double %73, 0x3CC0000000000000, !dbg !215
  %handler_result3 = call double @fAddHandlerDouble(double %71, double %74), !dbg !216
  store double %handler_result3, ptr %72, align 8, !dbg !216, !tbaa !172
  %75 = fcmp uge double %1, 0.000000e+00, !dbg !217
  %76 = and i32 %10, 1
  %77 = icmp eq i32 %76, 0
  %78 = select i1 %75, i1 true, i1 %77, !dbg !219
  br i1 %78, label %81, label %79, !dbg !219

79:                                               ; preds = %65
  %80 = fneg double %68, !dbg !220
  store double %80, ptr %2, align 8, !dbg !221, !tbaa !164
  br label %81, !dbg !222

81:                                               ; preds = %79, %65
  %82 = icmp eq i32 %51, 0, !dbg !223
  %83 = select i1 %82, i32 %52, i32 %51, !dbg !223
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #6, !dbg !224
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #6, !dbg !224
  br label %179

84:                                               ; preds = %46
  %85 = mul i32 %0, %0, !dbg !225
  %86 = sitofp i32 %85 to double, !dbg !225
  %87 = fdiv double 2.900000e-01, %86, !dbg !225
  %handler_result4 = call double @fAddHandlerDouble(double %22, double %86), !dbg !225
  %88 = fdiv double 5.000000e-01, %handler_result4, !dbg !225
  %89 = fcmp olt double %87, %88, !dbg !225
  %90 = select i1 %89, double %87, double %88, !dbg !225
  %91 = fcmp olt double %90, 0x3EC965FEA53D6E41, !dbg !226
  br i1 %91, label %92, label %101, !dbg !227

92:                                               ; preds = %84
  %93 = tail call i32 @gsl_sf_bessel_Inu_scaled_asymp_unif_e(double noundef %23, double noundef %9, ptr noundef %2) #6, !dbg !228
  tail call void @llvm.dbg.value(metadata i32 %93, metadata !113, metadata !DIExpression()), !dbg !229
  %94 = fcmp uge double %1, 0.000000e+00, !dbg !230
  %95 = and i32 %10, 1
  %96 = icmp eq i32 %95, 0
  %97 = select i1 %94, i1 true, i1 %96, !dbg !232
  br i1 %97, label %179, label %98, !dbg !232

98:                                               ; preds = %92
  %99 = load double, ptr %2, align 8, !dbg !233, !tbaa !164
  %100 = fneg double %99, !dbg !234
  store double %100, ptr %2, align 8, !dbg !235, !tbaa !164
  br label %179, !dbg !236

101:                                              ; preds = %84
  tail call void @llvm.dbg.value(metadata i32 489, metadata !116, metadata !DIExpression()), !dbg !133
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #6, !dbg !237
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #6, !dbg !238
  %102 = call i32 @gsl_sf_bessel_Inu_scaled_asymp_unif_e(double noundef 4.900000e+02, double noundef %9, ptr noundef nonnull %7) #6, !dbg !239
  tail call void @llvm.dbg.value(metadata i32 %102, metadata !121, metadata !DIExpression()), !dbg !133
  %103 = call i32 @gsl_sf_bessel_Inu_scaled_asymp_unif_e(double noundef 4.890000e+02, double noundef %9, ptr noundef nonnull %8) #6, !dbg !240
  tail call void @llvm.dbg.value(metadata i32 %103, metadata !122, metadata !DIExpression()), !dbg !133
  %104 = load double, ptr %7, align 8, !dbg !241, !tbaa !164
  tail call void @llvm.dbg.value(metadata double %104, metadata !123, metadata !DIExpression()), !dbg !133
  %105 = load double, ptr %8, align 8, !dbg !242, !tbaa !164
  tail call void @llvm.dbg.value(metadata double %105, metadata !124, metadata !DIExpression()), !dbg !133
  tail call void @llvm.dbg.value(metadata i32 489, metadata !126, metadata !DIExpression()), !dbg !133
  tail call void @llvm.dbg.value(metadata double %104, metadata !123, metadata !DIExpression()), !dbg !133
  %106 = icmp ult i32 %10, 489, !dbg !243
  br i1 %106, label %107, label %160, !dbg !246

107:                                              ; preds = %101
  %108 = call i32 @llvm.abs.i32(i32 %0, i1 false), !dbg !246
  %109 = sub i32 489, %108, !dbg !246
  %110 = and i32 %109, 3, !dbg !246
  %111 = add i32 %108, -486, !dbg !246
  %112 = icmp ult i32 %111, 3, !dbg !246
  br i1 %112, label %142, label %113, !dbg !246

113:                                              ; preds = %107
  %114 = and i32 %109, -4, !dbg !246
  br label %115, !dbg !246

115:                                              ; preds = %115, %113
  %116 = phi i32 [ 489, %113 ], [ %139, %115 ]
  %117 = phi double [ %105, %113 ], [ %handler_result8, %115 ]
  %118 = phi double [ %104, %113 ], [ %handler_result7, %115 ]
  %119 = phi i32 [ 0, %113 ], [ %140, %115 ]
  tail call void @llvm.dbg.value(metadata i32 %116, metadata !126, metadata !DIExpression()), !dbg !133
  tail call void @llvm.dbg.value(metadata double %117, metadata !124, metadata !DIExpression()), !dbg !133
  tail call void @llvm.dbg.value(metadata double %118, metadata !123, metadata !DIExpression()), !dbg !133
  %120 = sitofp i32 %116 to double, !dbg !247
  %121 = fmul double %120, 2.000000e+00, !dbg !249
  %122 = fdiv double %121, %9, !dbg !250
  %123 = fmul double %117, %122, !dbg !251
  %handler_result5 = call double @fAddHandlerDouble(double %118, double %123), !dbg !252
  tail call void @llvm.dbg.value(metadata double %handler_result5, metadata !125, metadata !DIExpression()), !dbg !133
  tail call void @llvm.dbg.value(metadata double %117, metadata !123, metadata !DIExpression()), !dbg !133
  tail call void @llvm.dbg.value(metadata double %handler_result5, metadata !124, metadata !DIExpression()), !dbg !133
  %124 = add nsw i32 %116, -1, !dbg !252
  tail call void @llvm.dbg.value(metadata i32 %124, metadata !126, metadata !DIExpression()), !dbg !133
  tail call void @llvm.dbg.value(metadata i32 %124, metadata !126, metadata !DIExpression()), !dbg !133
  tail call void @llvm.dbg.value(metadata double %handler_result5, metadata !124, metadata !DIExpression()), !dbg !133
  tail call void @llvm.dbg.value(metadata double %117, metadata !123, metadata !DIExpression()), !dbg !133
  %125 = sitofp i32 %124 to double, !dbg !247
  %126 = fmul double %125, 2.000000e+00, !dbg !249
  %127 = fdiv double %126, %9, !dbg !250
  %128 = fmul double %handler_result5, %127, !dbg !251
  %handler_result6 = call double @fAddHandlerDouble(double %117, double %128), !dbg !252
  tail call void @llvm.dbg.value(metadata double %handler_result6, metadata !125, metadata !DIExpression()), !dbg !133
  tail call void @llvm.dbg.value(metadata double %handler_result5, metadata !123, metadata !DIExpression()), !dbg !133
  tail call void @llvm.dbg.value(metadata double %handler_result6, metadata !124, metadata !DIExpression()), !dbg !133
  %129 = add nsw i32 %116, -2, !dbg !252
  tail call void @llvm.dbg.value(metadata i32 %129, metadata !126, metadata !DIExpression()), !dbg !133
  tail call void @llvm.dbg.value(metadata i32 %129, metadata !126, metadata !DIExpression()), !dbg !133
  tail call void @llvm.dbg.value(metadata double %handler_result6, metadata !124, metadata !DIExpression()), !dbg !133
  tail call void @llvm.dbg.value(metadata double %handler_result5, metadata !123, metadata !DIExpression()), !dbg !133
  %130 = sitofp i32 %129 to double, !dbg !247
  %131 = fmul double %130, 2.000000e+00, !dbg !249
  %132 = fdiv double %131, %9, !dbg !250
  %133 = fmul double %handler_result6, %132, !dbg !251
  %handler_result7 = call double @fAddHandlerDouble(double %handler_result5, double %133), !dbg !252
  tail call void @llvm.dbg.value(metadata double %handler_result7, metadata !125, metadata !DIExpression()), !dbg !133
  tail call void @llvm.dbg.value(metadata double %handler_result6, metadata !123, metadata !DIExpression()), !dbg !133
  tail call void @llvm.dbg.value(metadata double %handler_result7, metadata !124, metadata !DIExpression()), !dbg !133
  %134 = add nsw i32 %116, -3, !dbg !252
  tail call void @llvm.dbg.value(metadata i32 %134, metadata !126, metadata !DIExpression()), !dbg !133
  tail call void @llvm.dbg.value(metadata i32 %134, metadata !126, metadata !DIExpression()), !dbg !133
  tail call void @llvm.dbg.value(metadata double %handler_result7, metadata !124, metadata !DIExpression()), !dbg !133
  tail call void @llvm.dbg.value(metadata double %handler_result6, metadata !123, metadata !DIExpression()), !dbg !133
  %135 = sitofp i32 %134 to double, !dbg !247
  %136 = fmul double %135, 2.000000e+00, !dbg !249
  %137 = fdiv double %136, %9, !dbg !250
  %138 = fmul double %handler_result7, %137, !dbg !251
  %handler_result8 = call double @fAddHandlerDouble(double %handler_result6, double %138), !dbg !252
  tail call void @llvm.dbg.value(metadata double %handler_result8, metadata !125, metadata !DIExpression()), !dbg !133
  tail call void @llvm.dbg.value(metadata double %handler_result7, metadata !123, metadata !DIExpression()), !dbg !133
  tail call void @llvm.dbg.value(metadata double %handler_result8, metadata !124, metadata !DIExpression()), !dbg !133
  %139 = add nsw i32 %116, -4, !dbg !252
  tail call void @llvm.dbg.value(metadata i32 %139, metadata !126, metadata !DIExpression()), !dbg !133
  %140 = add i32 %119, 4, !dbg !246
  %141 = icmp eq i32 %140, %114, !dbg !246
  br i1 %141, label %142, label %115, !dbg !246, !llvm.loop !253

142:                                              ; preds = %115, %107
  %143 = phi double [ undef, %107 ], [ %handler_result8, %115 ]
  %144 = phi i32 [ 489, %107 ], [ %139, %115 ]
  %145 = phi double [ %105, %107 ], [ %handler_result8, %115 ]
  %146 = phi double [ %104, %107 ], [ %handler_result7, %115 ]
  %147 = icmp eq i32 %110, 0, !dbg !246
  br i1 %147, label %160, label %148, !dbg !246

148:                                              ; preds = %148, %142
  %149 = phi i32 [ %157, %148 ], [ %144, %142 ]
  %150 = phi double [ %handler_result9, %148 ], [ %145, %142 ]
  %151 = phi double [ %150, %148 ], [ %146, %142 ]
  %152 = phi i32 [ %158, %148 ], [ 0, %142 ]
  tail call void @llvm.dbg.value(metadata i32 %149, metadata !126, metadata !DIExpression()), !dbg !133
  tail call void @llvm.dbg.value(metadata double %150, metadata !124, metadata !DIExpression()), !dbg !133
  tail call void @llvm.dbg.value(metadata double %151, metadata !123, metadata !DIExpression()), !dbg !133
  %153 = sitofp i32 %149 to double, !dbg !247
  %154 = fmul double %153, 2.000000e+00, !dbg !249
  %155 = fdiv double %154, %9, !dbg !250
  %156 = fmul double %150, %155, !dbg !251
  %handler_result9 = call double @fAddHandlerDouble(double %151, double %156), !dbg !252
  tail call void @llvm.dbg.value(metadata double %handler_result9, metadata !125, metadata !DIExpression()), !dbg !133
  tail call void @llvm.dbg.value(metadata double %150, metadata !123, metadata !DIExpression()), !dbg !133
  tail call void @llvm.dbg.value(metadata double %handler_result9, metadata !124, metadata !DIExpression()), !dbg !133
  %157 = add nsw i32 %149, -1, !dbg !252
  tail call void @llvm.dbg.value(metadata i32 %157, metadata !126, metadata !DIExpression()), !dbg !133
  %158 = add i32 %152, 1, !dbg !246
  %159 = icmp eq i32 %158, %110, !dbg !246
  br i1 %159, label %160, label %148, !dbg !246, !llvm.loop !255

160:                                              ; preds = %148, %142, %101
  %161 = phi double [ %105, %101 ], [ %143, %142 ], [ %handler_result9, %148 ], !dbg !133
  store double %161, ptr %2, align 8, !dbg !257, !tbaa !164
  %162 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %7, i64 0, i32 1, !dbg !258
  %163 = load double, ptr %162, align 8, !dbg !258, !tbaa !172
  %164 = fdiv double %163, %104, !dbg !259
  %165 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %8, i64 0, i32 1, !dbg !260
  %166 = load double, ptr %165, align 8, !dbg !260, !tbaa !172
  %167 = fdiv double %166, %105, !dbg !261
  %handler_result10 = call double @fAddHandlerDouble(double %164, double %167), !dbg !262
  %168 = fmul double %161, %handler_result10, !dbg !262
  %169 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !263
  store double %168, ptr %169, align 8, !dbg !264, !tbaa !172
  %170 = fcmp uge double %1, 0.000000e+00, !dbg !265
  %171 = and i32 %10, 1
  %172 = icmp eq i32 %171, 0
  %173 = select i1 %170, i1 true, i1 %172, !dbg !267
  br i1 %173, label %176, label %174, !dbg !267

174:                                              ; preds = %160
  %175 = fneg double %161, !dbg !268
  store double %175, ptr %2, align 8, !dbg !269, !tbaa !164
  br label %176, !dbg !270

176:                                              ; preds = %174, %160
  %177 = icmp eq i32 %102, 0, !dbg !271
  %178 = select i1 %177, i32 %103, i32 %102, !dbg !271
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #6, !dbg !272
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #6, !dbg !272
  br label %179

179:                                              ; preds = %176, %98, %92, %81, %45, %20, %16, %12
  %180 = phi i32 [ %13, %12 ], [ %17, %16 ], [ 0, %20 ], [ %30, %45 ], [ %83, %81 ], [ %178, %176 ], [ %93, %98 ], [ %93, %92 ], !dbg !273
  ret i32 %180, !dbg !274
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #2

declare !dbg !275 i32 @gsl_sf_bessel_I0_scaled_e(double noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !279 i32 @gsl_sf_bessel_I1_scaled_e(double noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !280 double @exp(double noundef) local_unnamed_addr #4

declare !dbg !284 i32 @gsl_sf_bessel_IJ_taylor_e(double noundef, double noundef, i32 noundef, i32 noundef, double noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare !dbg !288 i32 @gsl_sf_bessel_I_CF1_ser(double noundef, double noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !292 i32 @gsl_sf_bessel_Inu_scaled_asymp_unif_e(double noundef, double noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_bessel_In_scaled_array(i32 noundef %0, i32 noundef %1, double noundef %2, ptr nocapture noundef %3) local_unnamed_addr #0 !dbg !295 {
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !324
  call void @llvm.dbg.assign(metadata i1 undef, metadata !309, metadata !DIExpression(), metadata !324, metadata ptr %5, metadata !DIExpression()), !dbg !325
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !326
  call void @llvm.dbg.assign(metadata i1 undef, metadata !316, metadata !DIExpression(), metadata !326, metadata ptr %6, metadata !DIExpression()), !dbg !327
  %7 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !328
  call void @llvm.dbg.assign(metadata i1 undef, metadata !317, metadata !DIExpression(), metadata !328, metadata ptr %7, metadata !DIExpression()), !dbg !327
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !299, metadata !DIExpression()), !dbg !329
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !300, metadata !DIExpression()), !dbg !329
  tail call void @llvm.dbg.value(metadata double %2, metadata !301, metadata !DIExpression()), !dbg !329
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !302, metadata !DIExpression()), !dbg !329
  %8 = icmp slt i32 %1, %0, !dbg !330
  %9 = icmp slt i32 %0, 0
  %10 = or i1 %9, %8, !dbg !331
  br i1 %10, label %11, label %19, !dbg !331

11:                                               ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 0, metadata !303, metadata !DIExpression()), !dbg !332
  %12 = icmp slt i32 %1, %0, !dbg !333
  br i1 %12, label %18, label %13, !dbg !336

13:                                               ; preds = %11
  %14 = add i32 %1, 1, !dbg !336
  %15 = sub i32 %14, %0, !dbg !336
  %16 = zext i32 %15 to i64, !dbg !336
  %17 = shl nuw nsw i64 %16, 3, !dbg !336
  tail call void @llvm.memset.p0.i64(ptr align 8 %3, i8 0, i64 %17, i1 false), !dbg !337, !tbaa !192
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !303, metadata !DIExpression()), !dbg !332
  br label %18, !dbg !338

18:                                               ; preds = %13, %11
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 120, i32 noundef 1) #6, !dbg !338
  br label %97

19:                                               ; preds = %4
  %20 = fcmp oeq double %2, 0.000000e+00, !dbg !340
  br i1 %20, label %21, label %28, !dbg !341

21:                                               ; preds = %19
  tail call void @llvm.dbg.value(metadata i32 0, metadata !306, metadata !DIExpression()), !dbg !342
  %22 = add i32 %1, 1, !dbg !343
  %23 = sub i32 %22, %0, !dbg !343
  %24 = zext i32 %23 to i64, !dbg !343
  %25 = shl nuw nsw i64 %24, 3, !dbg !343
  tail call void @llvm.memset.p0.i64(ptr align 8 %3, i8 0, i64 %25, i1 false), !dbg !345, !tbaa !192
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !306, metadata !DIExpression()), !dbg !342
  %26 = icmp eq i32 %0, 0, !dbg !347
  br i1 %26, label %27, label %97, !dbg !349

27:                                               ; preds = %21
  store double 1.000000e+00, ptr %3, align 8, !dbg !350, !tbaa !192
  br label %97, !dbg !351

28:                                               ; preds = %19
  %29 = icmp eq i32 %1, 0, !dbg !352
  br i1 %29, label %30, label %33, !dbg !353

30:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #6, !dbg !354
  %31 = call i32 @gsl_sf_bessel_I0_scaled_e(double noundef %2, ptr noundef nonnull %5) #6, !dbg !355
  tail call void @llvm.dbg.value(metadata i32 %31, metadata !312, metadata !DIExpression()), !dbg !325
  %32 = load double, ptr %5, align 8, !dbg !356, !tbaa !164
  store double %32, ptr %3, align 8, !dbg !357, !tbaa !192
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #6, !dbg !358
  br label %97

33:                                               ; preds = %28
  %34 = tail call double @llvm.fabs.f64(double %2), !dbg !359
  tail call void @llvm.dbg.value(metadata double %34, metadata !313, metadata !DIExpression()), !dbg !327
  %35 = fdiv double 2.000000e+00, %34, !dbg !360
  tail call void @llvm.dbg.value(metadata double %35, metadata !315, metadata !DIExpression()), !dbg !327
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #6, !dbg !361
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #6, !dbg !362
  %36 = add i32 %1, 1, !dbg !363
  %37 = call i32 @gsl_sf_bessel_In_scaled_e(i32 noundef %36, double noundef %34, ptr noundef nonnull %6), !dbg !364
  tail call void @llvm.dbg.value(metadata i32 %37, metadata !318, metadata !DIExpression()), !dbg !327
  %38 = call i32 @gsl_sf_bessel_In_scaled_e(i32 noundef %1, double noundef %34, ptr noundef nonnull %7), !dbg !365
  tail call void @llvm.dbg.value(metadata i32 %38, metadata !319, metadata !DIExpression()), !dbg !327
  tail call void @llvm.dbg.value(metadata double poison, metadata !321, metadata !DIExpression()), !dbg !327
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !323, metadata !DIExpression()), !dbg !327
  tail call void @llvm.dbg.value(metadata double poison, metadata !320, metadata !DIExpression()), !dbg !327
  %39 = load double, ptr %7, align 8, !dbg !366, !tbaa !164
  tail call void @llvm.dbg.value(metadata double %39, metadata !321, metadata !DIExpression()), !dbg !327
  %40 = load double, ptr %6, align 8, !dbg !367, !tbaa !164
  tail call void @llvm.dbg.value(metadata double %40, metadata !320, metadata !DIExpression()), !dbg !327
  %41 = sext i32 %1 to i64, !dbg !368
  %42 = zext nneg i32 %0 to i64, !dbg !368
  br label %43, !dbg !368

43:                                               ; preds = %43, %33
  %44 = phi i64 [ %41, %33 ], [ %53, %43 ]
  %45 = phi double [ %39, %33 ], [ %handler_result, %43 ]
  %46 = phi double [ %40, %33 ], [ %45, %43 ]
  tail call void @llvm.dbg.value(metadata i64 %44, metadata !323, metadata !DIExpression()), !dbg !327
  tail call void @llvm.dbg.value(metadata double %45, metadata !321, metadata !DIExpression()), !dbg !327
  tail call void @llvm.dbg.value(metadata double %46, metadata !320, metadata !DIExpression()), !dbg !327
  %47 = sub nsw i64 %44, %42, !dbg !370
  %48 = getelementptr inbounds double, ptr %3, i64 %47, !dbg !373
  store double %45, ptr %48, align 8, !dbg !374, !tbaa !192
  %49 = trunc i64 %44 to i32, !dbg !375
  %50 = sitofp i32 %49 to double, !dbg !375
  %51 = fmul double %35, %50, !dbg !376
  %52 = fmul double %45, %51, !dbg !377
  %handler_result = call double @fAddHandlerDouble(double %46, double %52), !dbg !378
  tail call void @llvm.dbg.value(metadata double %handler_result, metadata !322, metadata !DIExpression()), !dbg !327
  tail call void @llvm.dbg.value(metadata double %45, metadata !320, metadata !DIExpression()), !dbg !327
  tail call void @llvm.dbg.value(metadata double %handler_result, metadata !321, metadata !DIExpression()), !dbg !327
  %53 = add nsw i64 %44, -1, !dbg !378
  tail call void @llvm.dbg.value(metadata i64 %53, metadata !323, metadata !DIExpression()), !dbg !327
  %54 = icmp sgt i64 %44, %42, !dbg !379
  br i1 %54, label %43, label %55, !dbg !368, !llvm.loop !380

55:                                               ; preds = %43
  %56 = fcmp uge double %2, 0.000000e+00, !dbg !382
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !323, metadata !DIExpression()), !dbg !327
  br i1 %56, label %94, label %57, !dbg !384

57:                                               ; preds = %55
  %58 = sext i32 %0 to i64, !dbg !385
  %59 = xor i32 %1, -1, !dbg !385
  %60 = sub i32 %59, %0, !dbg !385
  %61 = and i32 %60, 1, !dbg !385
  %62 = icmp eq i32 %61, 0, !dbg !385
  br i1 %62, label %71, label %63, !dbg !385

63:                                               ; preds = %57
  tail call void @llvm.dbg.value(metadata i64 %58, metadata !323, metadata !DIExpression()), !dbg !327
  %64 = and i64 %58, 1, !dbg !388
  %65 = icmp eq i64 %64, 0, !dbg !388
  br i1 %65, label %69, label %66, !dbg !392

66:                                               ; preds = %63
  %67 = load double, ptr %3, align 8, !dbg !393, !tbaa !192
  %68 = fneg double %67, !dbg !394
  store double %68, ptr %3, align 8, !dbg !395, !tbaa !192
  br label %69, !dbg !396

69:                                               ; preds = %66, %63
  %70 = add nsw i64 %58, 1, !dbg !397
  tail call void @llvm.dbg.value(metadata i64 %70, metadata !323, metadata !DIExpression()), !dbg !327
  br label %71, !dbg !385

71:                                               ; preds = %69, %57
  %72 = phi i64 [ %58, %57 ], [ %70, %69 ]
  %73 = icmp eq i32 %1, %0, !dbg !385
  br i1 %73, label %94, label %74, !dbg !385

74:                                               ; preds = %71
  %75 = and i64 %72, 1, !dbg !385
  br label %76, !dbg !385

76:                                               ; preds = %90, %74
  %77 = phi i64 [ %72, %74 ], [ %91, %90 ]
  tail call void @llvm.dbg.value(metadata i64 %77, metadata !323, metadata !DIExpression()), !dbg !327
  %78 = icmp eq i64 %75, 0, !dbg !392
  br i1 %78, label %84, label %79, !dbg !392

79:                                               ; preds = %76
  %80 = sub nsw i64 %77, %58, !dbg !398
  %81 = getelementptr inbounds double, ptr %3, i64 %80, !dbg !393
  %82 = load double, ptr %81, align 8, !dbg !393, !tbaa !192
  %83 = fneg double %82, !dbg !394
  store double %83, ptr %81, align 8, !dbg !395, !tbaa !192
  tail call void @llvm.dbg.value(metadata i64 %77, metadata !323, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !327
  tail call void @llvm.dbg.value(metadata i64 %77, metadata !323, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !327
  br label %90, !dbg !392

84:                                               ; preds = %76
  %85 = add nsw i64 %77, 1, !dbg !397
  tail call void @llvm.dbg.value(metadata i64 %85, metadata !323, metadata !DIExpression()), !dbg !327
  %86 = sub nsw i64 %85, %58, !dbg !398
  %87 = getelementptr inbounds double, ptr %3, i64 %86, !dbg !393
  %88 = load double, ptr %87, align 8, !dbg !393, !tbaa !192
  %89 = fneg double %88, !dbg !394
  store double %89, ptr %87, align 8, !dbg !395, !tbaa !192
  br label %90, !dbg !396

90:                                               ; preds = %84, %79
  %91 = add nsw i64 %77, 2, !dbg !397
  tail call void @llvm.dbg.value(metadata i64 %91, metadata !323, metadata !DIExpression()), !dbg !327
  %92 = trunc i64 %91 to i32, !dbg !399
  %93 = icmp eq i32 %36, %92, !dbg !399
  br i1 %93, label %94, label %76, !dbg !385, !llvm.loop !400

94:                                               ; preds = %90, %71, %55
  %95 = icmp eq i32 %37, 0, !dbg !402
  %96 = select i1 %95, i32 %38, i32 %37, !dbg !402
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #6, !dbg !403
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #6, !dbg !403
  br label %97

97:                                               ; preds = %94, %30, %27, %21, %18
  %98 = phi i32 [ 1, %18 ], [ %31, %30 ], [ %96, %94 ], [ 0, %27 ], [ 0, %21 ], !dbg !404
  ret i32 %98, !dbg !405
}

declare !dbg !406 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_bessel_In_e(i32 noundef %0, double noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 !dbg !411 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !425
  call void @llvm.dbg.assign(metadata i1 undef, metadata !420, metadata !DIExpression(), metadata !425, metadata ptr %4, metadata !DIExpression()), !dbg !426
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !415, metadata !DIExpression()), !dbg !426
  tail call void @llvm.dbg.value(metadata double %1, metadata !416, metadata !DIExpression()), !dbg !426
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !417, metadata !DIExpression()), !dbg !426
  %5 = tail call double @llvm.fabs.f64(double %1), !dbg !427
  tail call void @llvm.dbg.value(metadata double %5, metadata !418, metadata !DIExpression()), !dbg !426
  %6 = tail call i32 @llvm.abs.i32(i32 %0, i1 true), !dbg !428
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !419, metadata !DIExpression()), !dbg !426
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #6, !dbg !429
  %7 = call i32 @gsl_sf_bessel_In_scaled_e(i32 noundef %6, double noundef %5, ptr noundef nonnull %4), !dbg !430
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !421, metadata !DIExpression()), !dbg !426
  %8 = fcmp ogt double %5, 0x40862642FEFA39EF, !dbg !431
  br i1 %8, label %9, label %11, !dbg !432

9:                                                ; preds = %3
  store double 0x7FF0000000000000, ptr %2, align 8, !dbg !433, !tbaa !164
  %10 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !433
  store double 0x7FF0000000000000, ptr %10, align 8, !dbg !433, !tbaa !172
  call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 179, i32 noundef 16) #6, !dbg !436
  br label %28, !dbg !436

11:                                               ; preds = %3
  %12 = call double @exp(double noundef %5) #6, !dbg !438
  tail call void @llvm.dbg.value(metadata double %12, metadata !422, metadata !DIExpression()), !dbg !439
  %13 = load double, ptr %4, align 8, !dbg !440, !tbaa !164
  %14 = fmul double %12, %13, !dbg !441
  store double %14, ptr %2, align 8, !dbg !442, !tbaa !164
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !443
  %16 = load double, ptr %15, align 8, !dbg !443, !tbaa !172
  %17 = fmul double %12, %16, !dbg !444
  %18 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !445
  %19 = fmul double %5, 0x3CB0000000000000, !dbg !446
  %20 = call double @llvm.fabs.f64(double %14), !dbg !447
  %21 = fmul double %19, %20, !dbg !448
  %handler_result = call double @fAddHandlerDouble(double %17, double %21), !dbg !449
  store double %handler_result, ptr %18, align 8, !dbg !449, !tbaa !172
  %22 = fcmp uge double %1, 0.000000e+00, !dbg !450
  %23 = and i32 %6, 1
  %24 = icmp eq i32 %23, 0
  %25 = or i1 %22, %24, !dbg !452
  br i1 %25, label %28, label %26, !dbg !452

26:                                               ; preds = %11
  %27 = fneg double %14, !dbg !453
  store double %27, ptr %2, align 8, !dbg !454, !tbaa !164
  br label %28, !dbg !455

28:                                               ; preds = %26, %11, %9
  %29 = phi i32 [ 16, %9 ], [ %7, %26 ], [ %7, %11 ], !dbg !456
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #6, !dbg !457
  ret i32 %29, !dbg !457
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_bessel_In_array(i32 noundef %0, i32 noundef %1, double noundef %2, ptr nocapture noundef %3) local_unnamed_addr #0 !dbg !458 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !460, metadata !DIExpression()), !dbg !472
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !461, metadata !DIExpression()), !dbg !472
  tail call void @llvm.dbg.value(metadata double %2, metadata !462, metadata !DIExpression()), !dbg !472
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !463, metadata !DIExpression()), !dbg !472
  %5 = tail call double @llvm.fabs.f64(double %2), !dbg !473
  tail call void @llvm.dbg.value(metadata double %5, metadata !464, metadata !DIExpression()), !dbg !472
  %6 = fcmp ogt double %5, 0x40862642FEFA39EF, !dbg !474
  br i1 %6, label %7, label %15, !dbg !475

7:                                                ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 0, metadata !465, metadata !DIExpression()), !dbg !476
  %8 = icmp slt i32 %1, %0, !dbg !477
  br i1 %8, label %14, label %9, !dbg !480

9:                                                ; preds = %7
  %10 = add i32 %1, 1, !dbg !480
  %11 = sub i32 %10, %0, !dbg !480
  %12 = zext i32 %11 to i64, !dbg !480
  %13 = shl nuw nsw i64 %12, 3, !dbg !480
  tail call void @llvm.memset.p0.i64(ptr align 8 %3, i8 0, i64 %13, i1 false), !dbg !481, !tbaa !192
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !465, metadata !DIExpression()), !dbg !476
  br label %14, !dbg !482

14:                                               ; preds = %9, %7
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 202, i32 noundef 16) #6, !dbg !482
  br label %61

15:                                               ; preds = %4
  %16 = tail call double @exp(double noundef %5) #6, !dbg !484
  tail call void @llvm.dbg.value(metadata double %16, metadata !470, metadata !DIExpression()), !dbg !485
  %17 = tail call i32 @gsl_sf_bessel_In_scaled_array(i32 noundef %0, i32 noundef %1, double noundef %2, ptr noundef %3), !dbg !486
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !471, metadata !DIExpression()), !dbg !485
  tail call void @llvm.dbg.value(metadata i32 0, metadata !468, metadata !DIExpression()), !dbg !485
  tail call void @llvm.dbg.value(metadata i32 0, metadata !468, metadata !DIExpression()), !dbg !485
  %18 = icmp slt i32 %1, %0, !dbg !487
  br i1 %18, label %61, label %19, !dbg !490

19:                                               ; preds = %15
  %20 = add i32 %1, 1, !dbg !490
  %21 = sub i32 %20, %0, !dbg !490
  %22 = zext i32 %21 to i64, !dbg !487
  %23 = add nsw i64 %22, -1, !dbg !490
  %24 = and i64 %22, 3, !dbg !490
  %25 = icmp ult i64 %23, 3, !dbg !490
  br i1 %25, label %49, label %26, !dbg !490

26:                                               ; preds = %19
  %27 = and i64 %22, 4294967292, !dbg !490
  br label %28, !dbg !490

28:                                               ; preds = %28, %26
  %29 = phi i64 [ 0, %26 ], [ %46, %28 ]
  %30 = phi i64 [ 0, %26 ], [ %47, %28 ]
  tail call void @llvm.dbg.value(metadata i64 %29, metadata !468, metadata !DIExpression()), !dbg !485
  %31 = getelementptr inbounds double, ptr %3, i64 %29, !dbg !491
  %32 = load double, ptr %31, align 8, !dbg !492, !tbaa !192
  %33 = fmul double %16, %32, !dbg !492
  store double %33, ptr %31, align 8, !dbg !492, !tbaa !192
  %34 = or disjoint i64 %29, 1, !dbg !493
  tail call void @llvm.dbg.value(metadata i64 %34, metadata !468, metadata !DIExpression()), !dbg !485
  tail call void @llvm.dbg.value(metadata i64 %34, metadata !468, metadata !DIExpression()), !dbg !485
  %35 = getelementptr inbounds double, ptr %3, i64 %34, !dbg !491
  %36 = load double, ptr %35, align 8, !dbg !492, !tbaa !192
  %37 = fmul double %16, %36, !dbg !492
  store double %37, ptr %35, align 8, !dbg !492, !tbaa !192
  %38 = or disjoint i64 %29, 2, !dbg !493
  tail call void @llvm.dbg.value(metadata i64 %38, metadata !468, metadata !DIExpression()), !dbg !485
  tail call void @llvm.dbg.value(metadata i64 %38, metadata !468, metadata !DIExpression()), !dbg !485
  %39 = getelementptr inbounds double, ptr %3, i64 %38, !dbg !491
  %40 = load double, ptr %39, align 8, !dbg !492, !tbaa !192
  %41 = fmul double %16, %40, !dbg !492
  store double %41, ptr %39, align 8, !dbg !492, !tbaa !192
  %42 = or disjoint i64 %29, 3, !dbg !493
  tail call void @llvm.dbg.value(metadata i64 %42, metadata !468, metadata !DIExpression()), !dbg !485
  tail call void @llvm.dbg.value(metadata i64 %42, metadata !468, metadata !DIExpression()), !dbg !485
  %43 = getelementptr inbounds double, ptr %3, i64 %42, !dbg !491
  %44 = load double, ptr %43, align 8, !dbg !492, !tbaa !192
  %45 = fmul double %16, %44, !dbg !492
  store double %45, ptr %43, align 8, !dbg !492, !tbaa !192
  %46 = add nuw nsw i64 %29, 4, !dbg !493
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !468, metadata !DIExpression()), !dbg !485
  %47 = add i64 %30, 4, !dbg !490
  %48 = icmp eq i64 %47, %27, !dbg !490
  br i1 %48, label %49, label %28, !dbg !490, !llvm.loop !494

49:                                               ; preds = %28, %19
  %50 = phi i64 [ 0, %19 ], [ %46, %28 ]
  %51 = icmp eq i64 %24, 0, !dbg !490
  br i1 %51, label %61, label %52, !dbg !490

52:                                               ; preds = %52, %49
  %53 = phi i64 [ %58, %52 ], [ %50, %49 ]
  %54 = phi i64 [ %59, %52 ], [ 0, %49 ]
  tail call void @llvm.dbg.value(metadata i64 %53, metadata !468, metadata !DIExpression()), !dbg !485
  %55 = getelementptr inbounds double, ptr %3, i64 %53, !dbg !491
  %56 = load double, ptr %55, align 8, !dbg !492, !tbaa !192
  %57 = fmul double %16, %56, !dbg !492
  store double %57, ptr %55, align 8, !dbg !492, !tbaa !192
  %58 = add nuw nsw i64 %53, 1, !dbg !493
  tail call void @llvm.dbg.value(metadata i64 %58, metadata !468, metadata !DIExpression()), !dbg !485
  %59 = add i64 %54, 1, !dbg !490
  %60 = icmp eq i64 %59, %24, !dbg !490
  br i1 %60, label %61, label %52, !dbg !490, !llvm.loop !496

61:                                               ; preds = %52, %49, %15, %14
  %62 = phi i32 [ 16, %14 ], [ %17, %15 ], [ %17, %52 ], [ %17, %49 ], !dbg !497
  ret i32 %62, !dbg !498
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_bessel_In_scaled(i32 noundef %0, double noundef %1) local_unnamed_addr #0 !dbg !499 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !507
  call void @llvm.dbg.assign(metadata i1 undef, metadata !505, metadata !DIExpression(), metadata !507, metadata ptr %3, metadata !DIExpression()), !dbg !508
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !503, metadata !DIExpression()), !dbg !508
  tail call void @llvm.dbg.value(metadata double %1, metadata !504, metadata !DIExpression()), !dbg !508
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6, !dbg !509
  %4 = call i32 @gsl_sf_bessel_In_scaled_e(i32 noundef %0, double noundef %1, ptr noundef nonnull %3), !dbg !509
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !506, metadata !DIExpression()), !dbg !508
  %5 = icmp eq i32 %4, 0, !dbg !510
  br i1 %5, label %7, label %6, !dbg !509

6:                                                ; preds = %2
  call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 219, i32 noundef %4) #6, !dbg !512
  br label %7, !dbg !512

7:                                                ; preds = %6, %2
  %8 = load double, ptr %3, align 8, !dbg !509, !tbaa !164
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6, !dbg !515
  ret double %8, !dbg !515
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_bessel_In(i32 noundef %0, double noundef %1) local_unnamed_addr #0 !dbg !516 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !522
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !518, metadata !DIExpression()), !dbg !523
  tail call void @llvm.dbg.value(metadata double %1, metadata !519, metadata !DIExpression()), !dbg !523
  call void @llvm.dbg.assign(metadata i1 undef, metadata !420, metadata !DIExpression(), metadata !522, metadata ptr %3, metadata !DIExpression()), !dbg !524
  call void @llvm.dbg.value(metadata i32 %0, metadata !415, metadata !DIExpression()), !dbg !524
  call void @llvm.dbg.value(metadata double %1, metadata !416, metadata !DIExpression()), !dbg !524
  call void @llvm.dbg.value(metadata ptr undef, metadata !417, metadata !DIExpression()), !dbg !524
  %4 = tail call double @llvm.fabs.f64(double %1), !dbg !526
  call void @llvm.dbg.value(metadata double %4, metadata !418, metadata !DIExpression()), !dbg !524
  %5 = tail call i32 @llvm.abs.i32(i32 %0, i1 true), !dbg !527
  call void @llvm.dbg.value(metadata i32 %5, metadata !419, metadata !DIExpression()), !dbg !524
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6, !dbg !528
  %6 = call i32 @gsl_sf_bessel_In_scaled_e(i32 noundef %5, double noundef %4, ptr noundef nonnull %3), !dbg !529
  call void @llvm.dbg.value(metadata i32 %6, metadata !421, metadata !DIExpression()), !dbg !524
  %7 = fcmp ogt double %4, 0x40862642FEFA39EF, !dbg !530
  br i1 %7, label %8, label %9, !dbg !531

8:                                                ; preds = %2
  tail call void @llvm.dbg.value(metadata double 0x7FF0000000000000, metadata !520, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !523
  tail call void @llvm.dbg.value(metadata double 0x7FF0000000000000, metadata !520, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !523
  call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 179, i32 noundef 16) #6, !dbg !532
  tail call void @llvm.dbg.value(metadata double 0x7FF0000000000000, metadata !520, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !523
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6, !dbg !533
  tail call void @llvm.dbg.value(metadata i32 16, metadata !521, metadata !DIExpression()), !dbg !523
  br label %20, !dbg !534

9:                                                ; preds = %2
  %10 = call double @exp(double noundef %4) #6, !dbg !535
  call void @llvm.dbg.value(metadata double %10, metadata !422, metadata !DIExpression()), !dbg !536
  %11 = load double, ptr %3, align 8, !dbg !537, !tbaa !164
  %12 = fmul double %10, %11, !dbg !538
  tail call void @llvm.dbg.value(metadata double %12, metadata !520, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !523
  tail call void @llvm.dbg.value(metadata double poison, metadata !520, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !523
  %13 = fcmp uge double %1, 0.000000e+00, !dbg !539
  %14 = and i32 %5, 1
  %15 = icmp eq i32 %14, 0
  %16 = or i1 %13, %15, !dbg !540
  %17 = fneg double %12, !dbg !540
  %18 = select i1 %16, double %12, double %17, !dbg !540
  tail call void @llvm.dbg.value(metadata double %18, metadata !520, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !523
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6, !dbg !533
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !521, metadata !DIExpression()), !dbg !523
  %19 = icmp eq i32 %6, 0, !dbg !541
  br i1 %19, label %23, label %20, !dbg !534

20:                                               ; preds = %9, %8
  %21 = phi i32 [ 16, %8 ], [ %6, %9 ]
  %22 = phi double [ 0x7FF0000000000000, %8 ], [ %18, %9 ]
  call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 224, i32 noundef %21) #6, !dbg !543
  br label %23, !dbg !543

23:                                               ; preds = %20, %9
  %24 = phi double [ %18, %9 ], [ %22, %20 ]
  ret double %24, !dbg !546
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

declare double @fAddHandlerDouble(double, double)

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!27}
!llvm.module.flags = !{!71, !72, !73, !74, !75, !76, !77}
!llvm.ident = !{!78}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 120, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "bessel_In.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "b320e4be3e7d447d8e3608fdb44dc226")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 13)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 120, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 12)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 179, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 9)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 219, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 328, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 41)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 224, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 34)
!27 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !28, retainedTypes: !68, globals: !70, splitDebugInlining: false, nameTableKind: None)
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
!68 = !{!69, !31}
!69 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!70 = !{!0, !7, !12, !17, !22}
!71 = !{i32 7, !"Dwarf Version", i32 5}
!72 = !{i32 2, !"Debug Info Version", i32 3}
!73 = !{i32 1, !"wchar_size", i32 4}
!74 = !{i32 8, !"PIC Level", i32 2}
!75 = !{i32 7, !"PIE Level", i32 2}
!76 = !{i32 7, !"uwtable", i32 2}
!77 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!78 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!79 = distinct !DISubprogram(name: "gsl_sf_bessel_In_scaled_e", scope: !2, file: !2, line: 35, type: !80, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !27, retainedNodes: !90)
!80 = !DISubroutineType(types: !81)
!81 = !{!31, !31, !82, !83}
!82 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !69)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !85, line: 41, baseType: !86)
!85 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "5b52deed011f1ffd07977b19a388d251")
!86 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !85, line: 37, size: 128, elements: !87)
!87 = !{!88, !89}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !86, file: !85, line: 38, baseType: !69, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !86, file: !85, line: 39, baseType: !69, size: 64, offset: 64)
!90 = !{!91, !92, !93, !94, !95, !101, !102, !103, !106, !107, !108, !109, !110, !111, !112, !113, !116, !119, !120, !121, !122, !123, !124, !125, !126}
!91 = !DILocalVariable(name: "n", arg: 1, scope: !79, file: !2, line: 35, type: !31)
!92 = !DILocalVariable(name: "x", arg: 2, scope: !79, file: !2, line: 35, type: !82)
!93 = !DILocalVariable(name: "result", arg: 3, scope: !79, file: !2, line: 35, type: !83)
!94 = !DILocalVariable(name: "ax", scope: !79, file: !2, line: 37, type: !82)
!95 = !DILocalVariable(name: "t", scope: !96, file: !2, line: 55, type: !84)
!96 = distinct !DILexicalBlock(scope: !97, file: !2, line: 54, column: 35)
!97 = distinct !DILexicalBlock(scope: !98, file: !2, line: 54, column: 11)
!98 = distinct !DILexicalBlock(scope: !99, file: !2, line: 49, column: 11)
!99 = distinct !DILexicalBlock(scope: !100, file: !2, line: 46, column: 11)
!100 = distinct !DILexicalBlock(scope: !79, file: !2, line: 43, column: 6)
!101 = !DILocalVariable(name: "ex", scope: !96, file: !2, line: 56, type: !69)
!102 = !DILocalVariable(name: "stat_In", scope: !96, file: !2, line: 57, type: !31)
!103 = !DILocalVariable(name: "I0_scaled", scope: !104, file: !2, line: 65, type: !84)
!104 = distinct !DILexicalBlock(scope: !105, file: !2, line: 64, column: 32)
!105 = distinct !DILexicalBlock(scope: !97, file: !2, line: 64, column: 11)
!106 = !DILocalVariable(name: "stat_I0", scope: !104, file: !2, line: 66, type: !31)
!107 = !DILocalVariable(name: "rat", scope: !104, file: !2, line: 67, type: !69)
!108 = !DILocalVariable(name: "stat_CF1", scope: !104, file: !2, line: 68, type: !31)
!109 = !DILocalVariable(name: "Ikp1", scope: !104, file: !2, line: 69, type: !69)
!110 = !DILocalVariable(name: "Ik", scope: !104, file: !2, line: 70, type: !69)
!111 = !DILocalVariable(name: "Ikm1", scope: !104, file: !2, line: 71, type: !69)
!112 = !DILocalVariable(name: "k", scope: !104, file: !2, line: 72, type: !31)
!113 = !DILocalVariable(name: "stat_as", scope: !114, file: !2, line: 85, type: !31)
!114 = distinct !DILexicalBlock(scope: !115, file: !2, line: 84, column: 80)
!115 = distinct !DILexicalBlock(scope: !105, file: !2, line: 84, column: 12)
!116 = !DILocalVariable(name: "nhi", scope: !117, file: !2, line: 90, type: !118)
!117 = distinct !DILexicalBlock(scope: !115, file: !2, line: 89, column: 8)
!118 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!119 = !DILocalVariable(name: "r_Ikp1", scope: !117, file: !2, line: 91, type: !84)
!120 = !DILocalVariable(name: "r_Ik", scope: !117, file: !2, line: 92, type: !84)
!121 = !DILocalVariable(name: "stat_a1", scope: !117, file: !2, line: 93, type: !31)
!122 = !DILocalVariable(name: "stat_a2", scope: !117, file: !2, line: 94, type: !31)
!123 = !DILocalVariable(name: "Ikp1", scope: !117, file: !2, line: 95, type: !69)
!124 = !DILocalVariable(name: "Ik", scope: !117, file: !2, line: 96, type: !69)
!125 = !DILocalVariable(name: "Ikm1", scope: !117, file: !2, line: 97, type: !69)
!126 = !DILocalVariable(name: "k", scope: !117, file: !2, line: 98, type: !31)
!127 = distinct !DIAssignID()
!128 = !DILocation(line: 0, scope: !96)
!129 = distinct !DIAssignID()
!130 = !DILocation(line: 0, scope: !104)
!131 = distinct !DIAssignID()
!132 = distinct !DIAssignID()
!133 = !DILocation(line: 0, scope: !117)
!134 = distinct !DIAssignID()
!135 = !DILocation(line: 0, scope: !79)
!136 = !DILocation(line: 37, column: 21, scope: !79)
!137 = !DILocation(line: 39, column: 7, scope: !79)
!138 = !DILocation(line: 43, column: 8, scope: !100)
!139 = !DILocation(line: 43, column: 6, scope: !79)
!140 = !DILocation(line: 44, column: 12, scope: !141)
!141 = distinct !DILexicalBlock(scope: !100, file: !2, line: 43, column: 14)
!142 = !DILocation(line: 44, column: 5, scope: !141)
!143 = !DILocation(line: 46, column: 13, scope: !99)
!144 = !DILocation(line: 46, column: 11, scope: !100)
!145 = !DILocation(line: 47, column: 12, scope: !146)
!146 = distinct !DILexicalBlock(scope: !99, file: !2, line: 46, column: 19)
!147 = !DILocation(line: 47, column: 5, scope: !146)
!148 = !DILocation(line: 49, column: 13, scope: !98)
!149 = !DILocation(line: 49, column: 11, scope: !99)
!150 = !DILocation(line: 51, column: 17, scope: !151)
!151 = distinct !DILexicalBlock(scope: !98, file: !2, line: 49, column: 21)
!152 = !DILocation(line: 52, column: 5, scope: !151)
!153 = !DILocation(line: 54, column: 12, scope: !97)
!154 = !DILocation(line: 54, column: 23, scope: !97)
!155 = !DILocation(line: 54, column: 21, scope: !97)
!156 = !DILocation(line: 54, column: 29, scope: !97)
!157 = !DILocation(line: 54, column: 15, scope: !97)
!158 = !DILocation(line: 54, column: 11, scope: !98)
!159 = !DILocation(line: 55, column: 5, scope: !96)
!160 = !DILocation(line: 56, column: 23, scope: !96)
!161 = !DILocation(line: 56, column: 19, scope: !96)
!162 = !DILocation(line: 57, column: 19, scope: !96)
!163 = !DILocation(line: 58, column: 22, scope: !96)
!164 = !{!165, !166, i64 0}
!165 = !{!"gsl_sf_result_struct", !166, i64 0, !166, i64 8}
!166 = !{!"double", !167, i64 0}
!167 = !{!"omnipotent char", !168, i64 0}
!168 = !{!"Simple C/C++ TBAA"}
!169 = !DILocation(line: 58, column: 26, scope: !96)
!170 = !DILocation(line: 58, column: 18, scope: !96)
!171 = !DILocation(line: 59, column: 22, scope: !96)
!172 = !{!165, !166, i64 8}
!173 = !DILocation(line: 59, column: 26, scope: !96)
!174 = !DILocation(line: 59, column: 13, scope: !96)
!175 = !DILocation(line: 60, column: 44, scope: !96)
!176 = !DILocation(line: 60, column: 42, scope: !96)
!177 = !DILocation(line: 60, column: 17, scope: !96)
!178 = !DILocation(line: 61, column: 10, scope: !179)
!179 = distinct !DILexicalBlock(scope: !96, file: !2, line: 61, column: 8)
!180 = !DILocation(line: 61, column: 16, scope: !179)
!181 = !DILocation(line: 61, column: 48, scope: !179)
!182 = !DILocation(line: 61, column: 46, scope: !179)
!183 = !DILocation(line: 61, column: 34, scope: !179)
!184 = !DILocation(line: 63, column: 3, scope: !97)
!185 = !DILocation(line: 64, column: 13, scope: !105)
!186 = !DILocation(line: 64, column: 19, scope: !105)
!187 = !DILocation(line: 65, column: 5, scope: !104)
!188 = !DILocation(line: 66, column: 19, scope: !104)
!189 = !DILocation(line: 67, column: 5, scope: !104)
!190 = !DILocation(line: 68, column: 20, scope: !104)
!191 = !DILocation(line: 69, column: 19, scope: !104)
!192 = !{!166, !166, i64 0}
!193 = !DILocation(line: 69, column: 23, scope: !104)
!194 = !DILocation(line: 73, column: 5, scope: !195)
!195 = distinct !DILexicalBlock(scope: !104, file: !2, line: 73, column: 5)
!196 = !DILocation(line: 74, column: 25, scope: !197)
!197 = distinct !DILexicalBlock(scope: !198, file: !2, line: 73, column: 27)
!198 = distinct !DILexicalBlock(scope: !195, file: !2, line: 73, column: 5)
!199 = !DILocation(line: 74, column: 24, scope: !197)
!200 = !DILocation(line: 74, column: 26, scope: !197)
!201 = !DILocation(line: 74, column: 30, scope: !197)
!202 = !DILocation(line: 73, column: 23, scope: !198)
!203 = !DILocation(line: 73, column: 16, scope: !198)
!204 = distinct !{!204, !194, !205, !206}
!205 = !DILocation(line: 77, column: 5, scope: !195)
!206 = !{!"llvm.loop.mustprogress"}
!207 = !DILocation(line: 78, column: 30, scope: !104)
!208 = !DILocation(line: 78, column: 54, scope: !104)
!209 = !DILocation(line: 78, column: 34, scope: !104)
!210 = !DILocation(line: 78, column: 18, scope: !104)
!211 = !DILocation(line: 79, column: 30, scope: !104)
!212 = !DILocation(line: 79, column: 34, scope: !104)
!213 = !DILocation(line: 79, column: 13, scope: !104)
!214 = !DILocation(line: 80, column: 44, scope: !104)
!215 = !DILocation(line: 80, column: 42, scope: !104)
!216 = !DILocation(line: 80, column: 17, scope: !104)
!217 = !DILocation(line: 81, column: 10, scope: !218)
!218 = distinct !DILexicalBlock(scope: !104, file: !2, line: 81, column: 8)
!219 = !DILocation(line: 81, column: 16, scope: !218)
!220 = !DILocation(line: 81, column: 48, scope: !218)
!221 = !DILocation(line: 81, column: 46, scope: !218)
!222 = !DILocation(line: 81, column: 34, scope: !218)
!223 = !DILocation(line: 82, column: 12, scope: !104)
!224 = !DILocation(line: 83, column: 3, scope: !105)
!225 = !DILocation(line: 84, column: 12, scope: !115)
!226 = !DILocation(line: 84, column: 51, scope: !115)
!227 = !DILocation(line: 84, column: 12, scope: !105)
!228 = !DILocation(line: 85, column: 19, scope: !114)
!229 = !DILocation(line: 0, scope: !114)
!230 = !DILocation(line: 86, column: 10, scope: !231)
!231 = distinct !DILexicalBlock(scope: !114, file: !2, line: 86, column: 8)
!232 = !DILocation(line: 86, column: 16, scope: !231)
!233 = !DILocation(line: 86, column: 57, scope: !231)
!234 = !DILocation(line: 86, column: 48, scope: !231)
!235 = !DILocation(line: 86, column: 46, scope: !231)
!236 = !DILocation(line: 86, column: 34, scope: !231)
!237 = !DILocation(line: 91, column: 5, scope: !117)
!238 = !DILocation(line: 92, column: 5, scope: !117)
!239 = !DILocation(line: 93, column: 19, scope: !117)
!240 = !DILocation(line: 94, column: 19, scope: !117)
!241 = !DILocation(line: 95, column: 26, scope: !117)
!242 = !DILocation(line: 96, column: 24, scope: !117)
!243 = !DILocation(line: 99, column: 18, scope: !244)
!244 = distinct !DILexicalBlock(scope: !245, file: !2, line: 99, column: 5)
!245 = distinct !DILexicalBlock(scope: !117, file: !2, line: 99, column: 5)
!246 = !DILocation(line: 99, column: 5, scope: !245)
!247 = !DILocation(line: 100, column: 25, scope: !248)
!248 = distinct !DILexicalBlock(scope: !244, file: !2, line: 99, column: 28)
!249 = !DILocation(line: 100, column: 24, scope: !248)
!250 = !DILocation(line: 100, column: 26, scope: !248)
!251 = !DILocation(line: 100, column: 30, scope: !248)
!252 = !DILocation(line: 99, column: 24, scope: !244)
!253 = distinct !{!253, !246, !254, !206}
!254 = !DILocation(line: 103, column: 5, scope: !245)
!255 = distinct !{!255, !256}
!256 = !{!"llvm.loop.unroll.disable"}
!257 = !DILocation(line: 104, column: 17, scope: !117)
!258 = !DILocation(line: 105, column: 32, scope: !117)
!259 = !DILocation(line: 105, column: 35, scope: !117)
!260 = !DILocation(line: 105, column: 54, scope: !117)
!261 = !DILocation(line: 105, column: 57, scope: !117)
!262 = !DILocation(line: 105, column: 22, scope: !117)
!263 = !DILocation(line: 105, column: 13, scope: !117)
!264 = !DILocation(line: 105, column: 17, scope: !117)
!265 = !DILocation(line: 106, column: 10, scope: !266)
!266 = distinct !DILexicalBlock(scope: !117, file: !2, line: 106, column: 8)
!267 = !DILocation(line: 106, column: 16, scope: !266)
!268 = !DILocation(line: 106, column: 48, scope: !266)
!269 = !DILocation(line: 106, column: 46, scope: !266)
!270 = !DILocation(line: 106, column: 34, scope: !266)
!271 = !DILocation(line: 107, column: 12, scope: !117)
!272 = !DILocation(line: 108, column: 3, scope: !115)
!273 = !DILocation(line: 0, scope: !100)
!274 = !DILocation(line: 109, column: 1, scope: !79)
!275 = !DISubprogram(name: "gsl_sf_bessel_I0_scaled_e", scope: !276, file: !276, line: 146, type: !277, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!276 = !DIFile(filename: "../gsl/gsl_sf_bessel.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "45459f63edc3203df6c715a25160d493")
!277 = !DISubroutineType(types: !278)
!278 = !{!31, !82, !83}
!279 = !DISubprogram(name: "gsl_sf_bessel_I1_scaled_e", scope: !276, file: !276, line: 155, type: !277, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!280 = !DISubprogram(name: "exp", scope: !281, file: !281, line: 95, type: !282, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!281 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!282 = !DISubroutineType(types: !283)
!283 = !{!69, !69}
!284 = !DISubprogram(name: "gsl_sf_bessel_IJ_taylor_e", scope: !285, file: !285, line: 32, type: !286, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!285 = !DIFile(filename: "./bessel.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "57b96fff5bee18a41e1173dbca5404a0")
!286 = !DISubroutineType(types: !287)
!287 = !{!31, !82, !82, !118, !118, !82, !83}
!288 = !DISubprogram(name: "gsl_sf_bessel_I_CF1_ser", scope: !285, file: !285, line: 62, type: !289, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!289 = !DISubroutineType(types: !290)
!290 = !{!31, !82, !82, !291}
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!292 = !DISubprogram(name: "gsl_sf_bessel_Inu_scaled_asymp_unif_e", scope: !285, file: !285, line: 48, type: !293, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!293 = !DISubroutineType(types: !294)
!294 = !{!31, !82, !82, !83}
!295 = distinct !DISubprogram(name: "gsl_sf_bessel_In_scaled_array", scope: !2, file: !2, line: 113, type: !296, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !27, retainedNodes: !298)
!296 = !DISubroutineType(types: !297)
!297 = !{!31, !118, !118, !82, !291}
!298 = !{!299, !300, !301, !302, !303, !306, !309, !312, !313, !315, !316, !317, !318, !319, !320, !321, !322, !323}
!299 = !DILocalVariable(name: "nmin", arg: 1, scope: !295, file: !2, line: 113, type: !118)
!300 = !DILocalVariable(name: "nmax", arg: 2, scope: !295, file: !2, line: 113, type: !118)
!301 = !DILocalVariable(name: "x", arg: 3, scope: !295, file: !2, line: 113, type: !82)
!302 = !DILocalVariable(name: "result_array", arg: 4, scope: !295, file: !2, line: 113, type: !291)
!303 = !DILocalVariable(name: "j", scope: !304, file: !2, line: 118, type: !31)
!304 = distinct !DILexicalBlock(scope: !305, file: !2, line: 117, column: 31)
!305 = distinct !DILexicalBlock(scope: !295, file: !2, line: 117, column: 6)
!306 = !DILocalVariable(name: "j", scope: !307, file: !2, line: 123, type: !31)
!307 = distinct !DILexicalBlock(scope: !308, file: !2, line: 122, column: 21)
!308 = distinct !DILexicalBlock(scope: !305, file: !2, line: 122, column: 11)
!309 = !DILocalVariable(name: "I0_scaled", scope: !310, file: !2, line: 129, type: !84)
!310 = distinct !DILexicalBlock(scope: !311, file: !2, line: 128, column: 22)
!311 = distinct !DILexicalBlock(scope: !308, file: !2, line: 128, column: 11)
!312 = !DILocalVariable(name: "stat", scope: !310, file: !2, line: 130, type: !31)
!313 = !DILocalVariable(name: "ax", scope: !314, file: !2, line: 135, type: !82)
!314 = distinct !DILexicalBlock(scope: !311, file: !2, line: 134, column: 8)
!315 = !DILocalVariable(name: "two_over_x", scope: !314, file: !2, line: 136, type: !82)
!316 = !DILocalVariable(name: "r_Inp1", scope: !314, file: !2, line: 139, type: !84)
!317 = !DILocalVariable(name: "r_In", scope: !314, file: !2, line: 140, type: !84)
!318 = !DILocalVariable(name: "stat_0", scope: !314, file: !2, line: 141, type: !31)
!319 = !DILocalVariable(name: "stat_1", scope: !314, file: !2, line: 142, type: !31)
!320 = !DILocalVariable(name: "Inp1", scope: !314, file: !2, line: 143, type: !69)
!321 = !DILocalVariable(name: "In", scope: !314, file: !2, line: 144, type: !69)
!322 = !DILocalVariable(name: "Inm1", scope: !314, file: !2, line: 145, type: !69)
!323 = !DILocalVariable(name: "n", scope: !314, file: !2, line: 146, type: !31)
!324 = distinct !DIAssignID()
!325 = !DILocation(line: 0, scope: !310)
!326 = distinct !DIAssignID()
!327 = !DILocation(line: 0, scope: !314)
!328 = distinct !DIAssignID()
!329 = !DILocation(line: 0, scope: !295)
!330 = !DILocation(line: 117, column: 11, scope: !305)
!331 = !DILocation(line: 117, column: 18, scope: !305)
!332 = !DILocation(line: 0, scope: !304)
!333 = !DILocation(line: 119, column: 15, scope: !334)
!334 = distinct !DILexicalBlock(scope: !335, file: !2, line: 119, column: 5)
!335 = distinct !DILexicalBlock(scope: !304, file: !2, line: 119, column: 5)
!336 = !DILocation(line: 119, column: 5, scope: !335)
!337 = !DILocation(line: 119, column: 49, scope: !334)
!338 = !DILocation(line: 120, column: 5, scope: !339)
!339 = distinct !DILexicalBlock(scope: !304, file: !2, line: 120, column: 5)
!340 = !DILocation(line: 122, column: 13, scope: !308)
!341 = !DILocation(line: 122, column: 11, scope: !305)
!342 = !DILocation(line: 0, scope: !307)
!343 = !DILocation(line: 124, column: 5, scope: !344)
!344 = distinct !DILexicalBlock(scope: !307, file: !2, line: 124, column: 5)
!345 = !DILocation(line: 124, column: 49, scope: !346)
!346 = distinct !DILexicalBlock(scope: !344, file: !2, line: 124, column: 5)
!347 = !DILocation(line: 125, column: 13, scope: !348)
!348 = distinct !DILexicalBlock(scope: !307, file: !2, line: 125, column: 8)
!349 = !DILocation(line: 125, column: 8, scope: !307)
!350 = !DILocation(line: 125, column: 35, scope: !348)
!351 = !DILocation(line: 125, column: 19, scope: !348)
!352 = !DILocation(line: 128, column: 16, scope: !311)
!353 = !DILocation(line: 128, column: 11, scope: !308)
!354 = !DILocation(line: 129, column: 5, scope: !310)
!355 = !DILocation(line: 130, column: 16, scope: !310)
!356 = !DILocation(line: 131, column: 33, scope: !310)
!357 = !DILocation(line: 131, column: 21, scope: !310)
!358 = !DILocation(line: 133, column: 3, scope: !311)
!359 = !DILocation(line: 135, column: 23, scope: !314)
!360 = !DILocation(line: 136, column: 34, scope: !314)
!361 = !DILocation(line: 139, column: 5, scope: !314)
!362 = !DILocation(line: 140, column: 5, scope: !314)
!363 = !DILocation(line: 141, column: 48, scope: !314)
!364 = !DILocation(line: 141, column: 18, scope: !314)
!365 = !DILocation(line: 142, column: 18, scope: !314)
!366 = !DILocation(line: 144, column: 24, scope: !314)
!367 = !DILocation(line: 143, column: 26, scope: !314)
!368 = !DILocation(line: 148, column: 5, scope: !369)
!369 = distinct !DILexicalBlock(scope: !314, file: !2, line: 148, column: 5)
!370 = !DILocation(line: 149, column: 21, scope: !371)
!371 = distinct !DILexicalBlock(scope: !372, file: !2, line: 148, column: 31)
!372 = distinct !DILexicalBlock(scope: !369, file: !2, line: 148, column: 5)
!373 = !DILocation(line: 149, column: 7, scope: !371)
!374 = !DILocation(line: 149, column: 28, scope: !371)
!375 = !DILocation(line: 150, column: 21, scope: !371)
!376 = !DILocation(line: 150, column: 23, scope: !371)
!377 = !DILocation(line: 150, column: 36, scope: !371)
!378 = !DILocation(line: 148, column: 27, scope: !372)
!379 = !DILocation(line: 148, column: 18, scope: !372)
!380 = distinct !{!380, !368, !381, !206}
!381 = !DILocation(line: 153, column: 5, scope: !369)
!382 = !DILocation(line: 156, column: 10, scope: !383)
!383 = distinct !DILexicalBlock(scope: !314, file: !2, line: 156, column: 8)
!384 = !DILocation(line: 156, column: 8, scope: !314)
!385 = !DILocation(line: 157, column: 7, scope: !386)
!386 = distinct !DILexicalBlock(scope: !387, file: !2, line: 157, column: 7)
!387 = distinct !DILexicalBlock(scope: !383, file: !2, line: 156, column: 17)
!388 = !DILocation(line: 158, column: 12, scope: !389)
!389 = distinct !DILexicalBlock(scope: !390, file: !2, line: 158, column: 12)
!390 = distinct !DILexicalBlock(scope: !391, file: !2, line: 157, column: 33)
!391 = distinct !DILexicalBlock(scope: !386, file: !2, line: 157, column: 7)
!392 = !DILocation(line: 158, column: 12, scope: !390)
!393 = !DILocation(line: 158, column: 51, scope: !389)
!394 = !DILocation(line: 158, column: 50, scope: !389)
!395 = !DILocation(line: 158, column: 48, scope: !389)
!396 = !DILocation(line: 158, column: 27, scope: !389)
!397 = !DILocation(line: 157, column: 29, scope: !391)
!398 = !DILocation(line: 158, column: 65, scope: !389)
!399 = !DILocation(line: 157, column: 20, scope: !391)
!400 = distinct !{!400, !385, !401, !206}
!401 = !DILocation(line: 159, column: 7, scope: !386)
!402 = !DILocation(line: 162, column: 12, scope: !314)
!403 = !DILocation(line: 163, column: 3, scope: !311)
!404 = !DILocation(line: 0, scope: !305)
!405 = !DILocation(line: 164, column: 1, scope: !295)
!406 = !DISubprogram(name: "gsl_error", scope: !30, file: !30, line: 77, type: !407, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!407 = !DISubroutineType(types: !408)
!408 = !{null, !409, !409, !31, !31}
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!410 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!411 = distinct !DISubprogram(name: "gsl_sf_bessel_In_e", scope: !2, file: !2, line: 168, type: !412, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !27, retainedNodes: !414)
!412 = !DISubroutineType(types: !413)
!413 = !{!31, !118, !82, !83}
!414 = !{!415, !416, !417, !418, !419, !420, !421, !422}
!415 = !DILocalVariable(name: "n_in", arg: 1, scope: !411, file: !2, line: 168, type: !118)
!416 = !DILocalVariable(name: "x", arg: 2, scope: !411, file: !2, line: 168, type: !82)
!417 = !DILocalVariable(name: "result", arg: 3, scope: !411, file: !2, line: 168, type: !83)
!418 = !DILocalVariable(name: "ax", scope: !411, file: !2, line: 170, type: !82)
!419 = !DILocalVariable(name: "n", scope: !411, file: !2, line: 171, type: !118)
!420 = !DILocalVariable(name: "In_scaled", scope: !411, file: !2, line: 172, type: !84)
!421 = !DILocalVariable(name: "stat_In_scaled", scope: !411, file: !2, line: 173, type: !118)
!422 = !DILocalVariable(name: "ex", scope: !423, file: !2, line: 182, type: !82)
!423 = distinct !DILexicalBlock(scope: !424, file: !2, line: 181, column: 8)
!424 = distinct !DILexicalBlock(scope: !411, file: !2, line: 178, column: 6)
!425 = distinct !DIAssignID()
!426 = !DILocation(line: 0, scope: !411)
!427 = !DILocation(line: 170, column: 21, scope: !411)
!428 = !DILocation(line: 171, column: 17, scope: !411)
!429 = !DILocation(line: 172, column: 3, scope: !411)
!430 = !DILocation(line: 173, column: 30, scope: !411)
!431 = !DILocation(line: 178, column: 9, scope: !424)
!432 = !DILocation(line: 178, column: 6, scope: !411)
!433 = !DILocation(line: 179, column: 5, scope: !434)
!434 = distinct !DILexicalBlock(scope: !435, file: !2, line: 179, column: 5)
!435 = distinct !DILexicalBlock(scope: !424, file: !2, line: 178, column: 34)
!436 = !DILocation(line: 179, column: 5, scope: !437)
!437 = distinct !DILexicalBlock(scope: !434, file: !2, line: 179, column: 5)
!438 = !DILocation(line: 182, column: 23, scope: !423)
!439 = !DILocation(line: 0, scope: !423)
!440 = !DILocation(line: 183, column: 35, scope: !423)
!441 = !DILocation(line: 183, column: 23, scope: !423)
!442 = !DILocation(line: 183, column: 18, scope: !423)
!443 = !DILocation(line: 184, column: 35, scope: !423)
!444 = !DILocation(line: 184, column: 23, scope: !423)
!445 = !DILocation(line: 184, column: 13, scope: !423)
!446 = !DILocation(line: 185, column: 23, scope: !423)
!447 = !DILocation(line: 185, column: 43, scope: !423)
!448 = !DILocation(line: 185, column: 41, scope: !423)
!449 = !DILocation(line: 185, column: 17, scope: !423)
!450 = !DILocation(line: 186, column: 10, scope: !451)
!451 = distinct !DILexicalBlock(scope: !423, file: !2, line: 186, column: 8)
!452 = !DILocation(line: 186, column: 16, scope: !451)
!453 = !DILocation(line: 186, column: 48, scope: !451)
!454 = !DILocation(line: 186, column: 46, scope: !451)
!455 = !DILocation(line: 186, column: 34, scope: !451)
!456 = !DILocation(line: 0, scope: !424)
!457 = !DILocation(line: 189, column: 1, scope: !411)
!458 = distinct !DISubprogram(name: "gsl_sf_bessel_In_array", scope: !2, file: !2, line: 193, type: !296, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !27, retainedNodes: !459)
!459 = !{!460, !461, !462, !463, !464, !465, !468, !470, !471}
!460 = !DILocalVariable(name: "nmin", arg: 1, scope: !458, file: !2, line: 193, type: !118)
!461 = !DILocalVariable(name: "nmax", arg: 2, scope: !458, file: !2, line: 193, type: !118)
!462 = !DILocalVariable(name: "x", arg: 3, scope: !458, file: !2, line: 193, type: !82)
!463 = !DILocalVariable(name: "result_array", arg: 4, scope: !458, file: !2, line: 193, type: !291)
!464 = !DILocalVariable(name: "ax", scope: !458, file: !2, line: 195, type: !69)
!465 = !DILocalVariable(name: "j", scope: !466, file: !2, line: 200, type: !31)
!466 = distinct !DILexicalBlock(scope: !467, file: !2, line: 199, column: 34)
!467 = distinct !DILexicalBlock(scope: !458, file: !2, line: 199, column: 6)
!468 = !DILocalVariable(name: "j", scope: !469, file: !2, line: 205, type: !31)
!469 = distinct !DILexicalBlock(scope: !467, file: !2, line: 204, column: 8)
!470 = !DILocalVariable(name: "eax", scope: !469, file: !2, line: 206, type: !69)
!471 = !DILocalVariable(name: "status", scope: !469, file: !2, line: 207, type: !31)
!472 = !DILocation(line: 0, scope: !458)
!473 = !DILocation(line: 195, column: 15, scope: !458)
!474 = !DILocation(line: 199, column: 9, scope: !467)
!475 = !DILocation(line: 199, column: 6, scope: !458)
!476 = !DILocation(line: 0, scope: !466)
!477 = !DILocation(line: 201, column: 15, scope: !478)
!478 = distinct !DILexicalBlock(scope: !479, file: !2, line: 201, column: 5)
!479 = distinct !DILexicalBlock(scope: !466, file: !2, line: 201, column: 5)
!480 = !DILocation(line: 201, column: 5, scope: !479)
!481 = !DILocation(line: 201, column: 49, scope: !478)
!482 = !DILocation(line: 202, column: 5, scope: !483)
!483 = distinct !DILexicalBlock(scope: !466, file: !2, line: 202, column: 5)
!484 = !DILocation(line: 206, column: 18, scope: !469)
!485 = !DILocation(line: 0, scope: !469)
!486 = !DILocation(line: 207, column: 18, scope: !469)
!487 = !DILocation(line: 208, column: 15, scope: !488)
!488 = distinct !DILexicalBlock(scope: !489, file: !2, line: 208, column: 5)
!489 = distinct !DILexicalBlock(scope: !469, file: !2, line: 208, column: 5)
!490 = !DILocation(line: 208, column: 5, scope: !489)
!491 = !DILocation(line: 208, column: 33, scope: !488)
!492 = !DILocation(line: 208, column: 49, scope: !488)
!493 = !DILocation(line: 208, column: 29, scope: !488)
!494 = distinct !{!494, !490, !495, !206}
!495 = !DILocation(line: 208, column: 52, scope: !489)
!496 = distinct !{!496, !256}
!497 = !DILocation(line: 0, scope: !467)
!498 = !DILocation(line: 211, column: 1, scope: !458)
!499 = distinct !DISubprogram(name: "gsl_sf_bessel_In_scaled", scope: !2, file: !2, line: 217, type: !500, scopeLine: 218, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !27, retainedNodes: !502)
!500 = !DISubroutineType(types: !501)
!501 = !{!69, !118, !82}
!502 = !{!503, !504, !505, !506}
!503 = !DILocalVariable(name: "n", arg: 1, scope: !499, file: !2, line: 217, type: !118)
!504 = !DILocalVariable(name: "x", arg: 2, scope: !499, file: !2, line: 217, type: !82)
!505 = !DILocalVariable(name: "result", scope: !499, file: !2, line: 219, type: !84)
!506 = !DILocalVariable(name: "status", scope: !499, file: !2, line: 219, type: !31)
!507 = distinct !DIAssignID()
!508 = !DILocation(line: 0, scope: !499)
!509 = !DILocation(line: 219, column: 3, scope: !499)
!510 = !DILocation(line: 219, column: 3, scope: !511)
!511 = distinct !DILexicalBlock(scope: !499, file: !2, line: 219, column: 3)
!512 = !DILocation(line: 219, column: 3, scope: !513)
!513 = distinct !DILexicalBlock(scope: !514, file: !2, line: 219, column: 3)
!514 = distinct !DILexicalBlock(scope: !511, file: !2, line: 219, column: 3)
!515 = !DILocation(line: 220, column: 1, scope: !499)
!516 = distinct !DISubprogram(name: "gsl_sf_bessel_In", scope: !2, file: !2, line: 222, type: !500, scopeLine: 223, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !27, retainedNodes: !517)
!517 = !{!518, !519, !520, !521}
!518 = !DILocalVariable(name: "n", arg: 1, scope: !516, file: !2, line: 222, type: !118)
!519 = !DILocalVariable(name: "x", arg: 2, scope: !516, file: !2, line: 222, type: !82)
!520 = !DILocalVariable(name: "result", scope: !516, file: !2, line: 224, type: !84)
!521 = !DILocalVariable(name: "status", scope: !516, file: !2, line: 224, type: !31)
!522 = distinct !DIAssignID()
!523 = !DILocation(line: 0, scope: !516)
!524 = !DILocation(line: 0, scope: !411, inlinedAt: !525)
!525 = distinct !DILocation(line: 224, column: 3, scope: !516)
!526 = !DILocation(line: 170, column: 21, scope: !411, inlinedAt: !525)
!527 = !DILocation(line: 171, column: 17, scope: !411, inlinedAt: !525)
!528 = !DILocation(line: 172, column: 3, scope: !411, inlinedAt: !525)
!529 = !DILocation(line: 173, column: 30, scope: !411, inlinedAt: !525)
!530 = !DILocation(line: 178, column: 9, scope: !424, inlinedAt: !525)
!531 = !DILocation(line: 178, column: 6, scope: !411, inlinedAt: !525)
!532 = !DILocation(line: 179, column: 5, scope: !437, inlinedAt: !525)
!533 = !DILocation(line: 189, column: 1, scope: !411, inlinedAt: !525)
!534 = !DILocation(line: 224, column: 3, scope: !516)
!535 = !DILocation(line: 182, column: 23, scope: !423, inlinedAt: !525)
!536 = !DILocation(line: 0, scope: !423, inlinedAt: !525)
!537 = !DILocation(line: 183, column: 35, scope: !423, inlinedAt: !525)
!538 = !DILocation(line: 183, column: 23, scope: !423, inlinedAt: !525)
!539 = !DILocation(line: 186, column: 10, scope: !451, inlinedAt: !525)
!540 = !DILocation(line: 186, column: 16, scope: !451, inlinedAt: !525)
!541 = !DILocation(line: 224, column: 3, scope: !542)
!542 = distinct !DILexicalBlock(scope: !516, file: !2, line: 224, column: 3)
!543 = !DILocation(line: 224, column: 3, scope: !544)
!544 = distinct !DILexicalBlock(scope: !545, file: !2, line: 224, column: 3)
!545 = distinct !DILexicalBlock(scope: !542, file: !2, line: 224, column: 3)
!546 = !DILocation(line: 225, column: 1, scope: !516)
