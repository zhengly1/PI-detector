; ModuleID = 'bessel_Jn.ll'
source_filename = "bessel_Jn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [13 x i8] c"domain error\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [12 x i8] c"bessel_Jn.c\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [34 x i8] c"gsl_sf_bessel_Jn_e(n, x, &result)\00", align 1, !dbg !12

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_bessel_Jn_e(i32 noundef %0, double noundef %1, ptr noundef %2) local_unnamed_addr #0 !dbg !69 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !123
  call void @llvm.dbg.assign(metadata i1 undef, metadata !84, metadata !DIExpression(), metadata !123, metadata ptr %4, metadata !DIExpression()), !dbg !124
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !125
  call void @llvm.dbg.assign(metadata i1 undef, metadata !88, metadata !DIExpression(), metadata !125, metadata ptr %5, metadata !DIExpression()), !dbg !126
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !127
  call void @llvm.dbg.assign(metadata i1 undef, metadata !92, metadata !DIExpression(), metadata !127, metadata ptr %6, metadata !DIExpression()), !dbg !128
  %7 = alloca double, align 8, !DIAssignID !129
  call void @llvm.dbg.assign(metadata i1 undef, metadata !110, metadata !DIExpression(), metadata !129, metadata ptr %7, metadata !DIExpression()), !dbg !130
  %8 = alloca double, align 8, !DIAssignID !131
  call void @llvm.dbg.assign(metadata i1 undef, metadata !111, metadata !DIExpression(), metadata !131, metadata ptr %8, metadata !DIExpression()), !dbg !130
  %9 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !132
  call void @llvm.dbg.assign(metadata i1 undef, metadata !118, metadata !DIExpression(), metadata !132, metadata ptr %9, metadata !DIExpression()), !dbg !133
  %10 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !134
  call void @llvm.dbg.assign(metadata i1 undef, metadata !121, metadata !DIExpression(), metadata !134, metadata ptr %10, metadata !DIExpression()), !dbg !135
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !80, metadata !DIExpression()), !dbg !136
  tail call void @llvm.dbg.value(metadata double %1, metadata !81, metadata !DIExpression()), !dbg !136
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !82, metadata !DIExpression()), !dbg !136
  tail call void @llvm.dbg.value(metadata i32 1, metadata !83, metadata !DIExpression()), !dbg !136
  %11 = icmp slt i32 %0, 0, !dbg !137
  %12 = sub nsw i32 0, %0, !dbg !139
  %13 = and i32 %12, 1, !dbg !139
  %14 = icmp eq i32 %13, 0, !dbg !139
  %15 = select i1 %14, i32 1, i32 -1, !dbg !139
  %16 = select i1 %11, i32 %15, i32 1, !dbg !139
  %17 = select i1 %11, i32 %12, i32 %0, !dbg !139
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !80, metadata !DIExpression()), !dbg !136
  tail call void @llvm.dbg.value(metadata i32 %16, metadata !83, metadata !DIExpression()), !dbg !136
  %18 = fcmp olt double %1, 0.000000e+00, !dbg !140
  br i1 %18, label %19, label %25, !dbg !142

19:                                               ; preds = %3
  %20 = fneg double %1, !dbg !143
  tail call void @llvm.dbg.value(metadata double %20, metadata !81, metadata !DIExpression()), !dbg !136
  %21 = and i32 %17, 1, !dbg !145
  %22 = icmp eq i32 %21, 0, !dbg !145
  %23 = sub nsw i32 0, %16
  %24 = select i1 %22, i32 %16, i32 %23, !dbg !147
  br label %25, !dbg !147

25:                                               ; preds = %19, %3
  %26 = phi i32 [ %16, %3 ], [ %24, %19 ], !dbg !136
  %27 = phi double [ %1, %3 ], [ %20, %19 ]
  tail call void @llvm.dbg.value(metadata double %27, metadata !81, metadata !DIExpression()), !dbg !136
  tail call void @llvm.dbg.value(metadata i32 %26, metadata !83, metadata !DIExpression()), !dbg !136
  switch i32 %17, label %44 [
    i32 0, label %28
    i32 1, label %36
  ], !dbg !148

28:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #5, !dbg !149
  %29 = call i32 @gsl_sf_bessel_J0_e(double noundef %27, ptr noundef nonnull %4) #5, !dbg !150
  tail call void @llvm.dbg.value(metadata i32 %29, metadata !87, metadata !DIExpression()), !dbg !124
  %30 = sitofp i32 %26 to double, !dbg !151
  %31 = load double, ptr %4, align 8, !dbg !152, !tbaa !153
  %32 = fmul double %31, %30, !dbg !158
  store double %32, ptr %2, align 8, !dbg !159, !tbaa !153
  %33 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !160
  %34 = load double, ptr %33, align 8, !dbg !160, !tbaa !161
  %35 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !162
  store double %34, ptr %35, align 8, !dbg !163, !tbaa !161
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #5, !dbg !164
  br label %172

36:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #5, !dbg !165
  %37 = call i32 @gsl_sf_bessel_J1_e(double noundef %27, ptr noundef nonnull %5) #5, !dbg !166
  tail call void @llvm.dbg.value(metadata i32 %37, metadata !91, metadata !DIExpression()), !dbg !126
  %38 = sitofp i32 %26 to double, !dbg !167
  %39 = load double, ptr %5, align 8, !dbg !168, !tbaa !153
  %40 = fmul double %39, %38, !dbg !169
  store double %40, ptr %2, align 8, !dbg !170, !tbaa !153
  %41 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !171
  %42 = load double, ptr %41, align 8, !dbg !171, !tbaa !161
  %43 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !172
  store double %42, ptr %43, align 8, !dbg !173, !tbaa !161
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #5, !dbg !174
  br label %172

44:                                               ; preds = %25
  %45 = fcmp oeq double %27, 0.000000e+00, !dbg !175
  br i1 %45, label %46, label %47, !dbg !176

46:                                               ; preds = %44
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !dbg !177
  br label %172, !dbg !179

47:                                               ; preds = %44
  %48 = fmul double %27, %27, !dbg !180
  %49 = sitofp i32 %17 to double, !dbg !181
  %handler_result = call double @fAddHandlerDouble(double %49, double 1.000000e+00), !dbg !182
  %50 = fmul double %handler_result, 1.000000e+01, !dbg !182
  %51 = fmul double %50, 0x3F48406003B2AE5A, !dbg !183
  %52 = fcmp olt double %48, %51, !dbg !184
  br i1 %52, label %53, label %63, !dbg !185

53:                                               ; preds = %47
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #5, !dbg !186
  %54 = call i32 @gsl_sf_bessel_IJ_taylor_e(double noundef %49, double noundef %27, i32 noundef -1, i32 noundef 50, double noundef 0x3CB0000000000000, ptr noundef nonnull %6) #5, !dbg !187
  tail call void @llvm.dbg.value(metadata i32 %54, metadata !97, metadata !DIExpression()), !dbg !128
  %55 = sitofp i32 %26 to double, !dbg !188
  %56 = load double, ptr %6, align 8, !dbg !189, !tbaa !153
  %57 = fmul double %56, %55, !dbg !190
  store double %57, ptr %2, align 8, !dbg !191, !tbaa !153
  %58 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !192
  %59 = load double, ptr %58, align 8, !dbg !192, !tbaa !161
  %60 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !193
  %61 = call double @llvm.fabs.f64(double %57), !dbg !194
  %62 = fmul double %61, 0x3CB0000000000000, !dbg !195
  %handler_result1 = call double @fAddHandlerDouble(double %59, double %62), !dbg !196
  store double %handler_result1, ptr %60, align 8, !dbg !196, !tbaa !161
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #5, !dbg !197
  br label %172

63:                                               ; preds = %47
  %64 = fmul double %27, 0x3F20000000000000, !dbg !198
  %65 = mul i32 %0, %0, !dbg !199
  %66 = add nuw nsw i32 %65, 1, !dbg !200
  %67 = sitofp i32 %66 to double, !dbg !200
  %68 = fcmp ogt double %64, %67, !dbg !201
  br i1 %68, label %69, label %74, !dbg !202

69:                                               ; preds = %63
  %70 = tail call i32 @gsl_sf_bessel_Jnu_asympx_e(double noundef %49, double noundef %27, ptr noundef %2) #5, !dbg !203
  tail call void @llvm.dbg.value(metadata i32 %70, metadata !98, metadata !DIExpression()), !dbg !204
  %71 = sitofp i32 %26 to double, !dbg !205
  %72 = load double, ptr %2, align 8, !dbg !206, !tbaa !153
  %73 = fmul double %72, %71, !dbg !206
  store double %73, ptr %2, align 8, !dbg !206, !tbaa !153
  br label %172

74:                                               ; preds = %63
  %75 = icmp sgt i32 %17, 50, !dbg !207
  br i1 %75, label %76, label %81, !dbg !208

76:                                               ; preds = %74
  %77 = tail call i32 @gsl_sf_bessel_Jnu_asymp_Olver_e(double noundef %49, double noundef %27, ptr noundef %2) #5, !dbg !209
  tail call void @llvm.dbg.value(metadata i32 %77, metadata !101, metadata !DIExpression()), !dbg !210
  %78 = sitofp i32 %26 to double, !dbg !211
  %79 = load double, ptr %2, align 8, !dbg !212, !tbaa !153
  %80 = fmul double %79, %78, !dbg !212
  store double %80, ptr %2, align 8, !dbg !212, !tbaa !153
  br label %172

81:                                               ; preds = %74
  %82 = fcmp ogt double %27, 1.000000e+03, !dbg !213
  br i1 %82, label %83, label %88, !dbg !214

83:                                               ; preds = %81
  %84 = tail call i32 @gsl_sf_bessel_Jnu_asympx_e(double noundef %49, double noundef %27, ptr noundef %2) #5, !dbg !215
  tail call void @llvm.dbg.value(metadata i32 %84, metadata !104, metadata !DIExpression()), !dbg !216
  %85 = sitofp i32 %26 to double, !dbg !217
  %86 = load double, ptr %2, align 8, !dbg !218, !tbaa !153
  %87 = fmul double %86, %85, !dbg !218
  store double %87, ptr %2, align 8, !dbg !218, !tbaa !153
  br label %172

88:                                               ; preds = %81
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #5, !dbg !219
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #5, !dbg !220
  %89 = call i32 @gsl_sf_bessel_J_CF1(double noundef %49, double noundef %27, ptr noundef nonnull %7, ptr noundef nonnull %8) #5, !dbg !221
  tail call void @llvm.dbg.value(metadata i32 %89, metadata !113, metadata !DIExpression()), !dbg !130
  %90 = load double, ptr %7, align 8, !dbg !222, !tbaa !223
  %91 = fmul double %90, 0x2000000000000000, !dbg !224
  tail call void @llvm.dbg.value(metadata double %91, metadata !114, metadata !DIExpression()), !dbg !130
  tail call void @llvm.dbg.value(metadata double 0x2000000000000000, metadata !115, metadata !DIExpression()), !dbg !130
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !117, metadata !DIExpression()), !dbg !130
  %92 = icmp sgt i32 %17, 0, !dbg !225
  br i1 %92, label %93, label %140, !dbg !228

93:                                               ; preds = %88
  %94 = and i32 %17, 3, !dbg !228
  %95 = icmp eq i32 %94, 0, !dbg !228
  br i1 %95, label %108, label %96, !dbg !228

96:                                               ; preds = %96, %93
  %97 = phi i32 [ %105, %96 ], [ %17, %93 ]
  %98 = phi double [ %handler_result2, %96 ], [ 0x2000000000000000, %93 ]
  %99 = phi double [ %98, %96 ], [ %91, %93 ]
  %100 = phi i32 [ %106, %96 ], [ 0, %93 ]
  tail call void @llvm.dbg.value(metadata i32 %97, metadata !117, metadata !DIExpression()), !dbg !130
  tail call void @llvm.dbg.value(metadata double %98, metadata !115, metadata !DIExpression()), !dbg !130
  tail call void @llvm.dbg.value(metadata double %99, metadata !114, metadata !DIExpression()), !dbg !130
  %101 = sitofp i32 %97 to double, !dbg !229
  %102 = fmul double %101, 2.000000e+00, !dbg !231
  %103 = fdiv double %102, %27, !dbg !232
  %104 = fmul double %98, %103, !dbg !233
  %handler_result2 = call double @fSubHandlerDouble(double %104, double %99), !dbg !234
  tail call void @llvm.dbg.value(metadata double %handler_result2, metadata !116, metadata !DIExpression()), !dbg !130
  tail call void @llvm.dbg.value(metadata double %98, metadata !114, metadata !DIExpression()), !dbg !130
  tail call void @llvm.dbg.value(metadata double %handler_result2, metadata !115, metadata !DIExpression()), !dbg !130
  %105 = add nsw i32 %97, -1, !dbg !234
  tail call void @llvm.dbg.value(metadata i32 %105, metadata !117, metadata !DIExpression()), !dbg !130
  %106 = add i32 %100, 1, !dbg !228
  %107 = icmp eq i32 %106, %94, !dbg !228
  br i1 %107, label %108, label %96, !dbg !228, !llvm.loop !235

108:                                              ; preds = %96, %93
  %109 = phi i32 [ %17, %93 ], [ %105, %96 ]
  %110 = phi double [ 0x2000000000000000, %93 ], [ %handler_result2, %96 ]
  %111 = phi double [ %91, %93 ], [ %98, %96 ]
  %112 = phi double [ undef, %93 ], [ %98, %96 ]
  %113 = phi double [ undef, %93 ], [ %handler_result2, %96 ]
  %114 = icmp ult i32 %17, 4, !dbg !228
  br i1 %114, label %140, label %115, !dbg !228

115:                                              ; preds = %115, %108
  %116 = phi i32 [ %138, %115 ], [ %109, %108 ]
  %117 = phi double [ %handler_result6, %115 ], [ %110, %108 ]
  %118 = phi double [ %handler_result5, %115 ], [ %111, %108 ]
  tail call void @llvm.dbg.value(metadata i32 %116, metadata !117, metadata !DIExpression()), !dbg !130
  tail call void @llvm.dbg.value(metadata double %117, metadata !115, metadata !DIExpression()), !dbg !130
  tail call void @llvm.dbg.value(metadata double %118, metadata !114, metadata !DIExpression()), !dbg !130
  %119 = sitofp i32 %116 to double, !dbg !229
  %120 = fmul double %119, 2.000000e+00, !dbg !231
  %121 = fdiv double %120, %27, !dbg !232
  %122 = fmul double %117, %121, !dbg !233
  %handler_result3 = call double @fSubHandlerDouble(double %122, double %118), !dbg !234
  tail call void @llvm.dbg.value(metadata double %handler_result3, metadata !116, metadata !DIExpression()), !dbg !130
  tail call void @llvm.dbg.value(metadata double %117, metadata !114, metadata !DIExpression()), !dbg !130
  tail call void @llvm.dbg.value(metadata double %handler_result3, metadata !115, metadata !DIExpression()), !dbg !130
  %123 = add nsw i32 %116, -1, !dbg !234
  tail call void @llvm.dbg.value(metadata i32 %123, metadata !117, metadata !DIExpression()), !dbg !130
  tail call void @llvm.dbg.value(metadata i32 %123, metadata !117, metadata !DIExpression()), !dbg !130
  tail call void @llvm.dbg.value(metadata double %handler_result3, metadata !115, metadata !DIExpression()), !dbg !130
  tail call void @llvm.dbg.value(metadata double %117, metadata !114, metadata !DIExpression()), !dbg !130
  %124 = sitofp i32 %123 to double, !dbg !229
  %125 = fmul double %124, 2.000000e+00, !dbg !231
  %126 = fdiv double %125, %27, !dbg !232
  %127 = fmul double %handler_result3, %126, !dbg !233
  %handler_result4 = call double @fSubHandlerDouble(double %127, double %117), !dbg !234
  tail call void @llvm.dbg.value(metadata double %handler_result4, metadata !116, metadata !DIExpression()), !dbg !130
  tail call void @llvm.dbg.value(metadata double %handler_result3, metadata !114, metadata !DIExpression()), !dbg !130
  tail call void @llvm.dbg.value(metadata double %handler_result4, metadata !115, metadata !DIExpression()), !dbg !130
  %128 = add nsw i32 %116, -2, !dbg !234
  tail call void @llvm.dbg.value(metadata i32 %128, metadata !117, metadata !DIExpression()), !dbg !130
  tail call void @llvm.dbg.value(metadata i32 %128, metadata !117, metadata !DIExpression()), !dbg !130
  tail call void @llvm.dbg.value(metadata double %handler_result4, metadata !115, metadata !DIExpression()), !dbg !130
  tail call void @llvm.dbg.value(metadata double %handler_result3, metadata !114, metadata !DIExpression()), !dbg !130
  %129 = sitofp i32 %128 to double, !dbg !229
  %130 = fmul double %129, 2.000000e+00, !dbg !231
  %131 = fdiv double %130, %27, !dbg !232
  %132 = fmul double %handler_result4, %131, !dbg !233
  %handler_result5 = call double @fSubHandlerDouble(double %132, double %handler_result3), !dbg !234
  tail call void @llvm.dbg.value(metadata double %handler_result5, metadata !116, metadata !DIExpression()), !dbg !130
  tail call void @llvm.dbg.value(metadata double %handler_result4, metadata !114, metadata !DIExpression()), !dbg !130
  tail call void @llvm.dbg.value(metadata double %handler_result5, metadata !115, metadata !DIExpression()), !dbg !130
  %133 = add nsw i32 %116, -3, !dbg !234
  tail call void @llvm.dbg.value(metadata i32 %133, metadata !117, metadata !DIExpression()), !dbg !130
  tail call void @llvm.dbg.value(metadata i32 %133, metadata !117, metadata !DIExpression()), !dbg !130
  tail call void @llvm.dbg.value(metadata double %handler_result5, metadata !115, metadata !DIExpression()), !dbg !130
  tail call void @llvm.dbg.value(metadata double %handler_result4, metadata !114, metadata !DIExpression()), !dbg !130
  %134 = sitofp i32 %133 to double, !dbg !229
  %135 = fmul double %134, 2.000000e+00, !dbg !231
  %136 = fdiv double %135, %27, !dbg !232
  %137 = fmul double %handler_result5, %136, !dbg !233
  %handler_result6 = call double @fSubHandlerDouble(double %137, double %handler_result4), !dbg !234
  tail call void @llvm.dbg.value(metadata double %handler_result6, metadata !116, metadata !DIExpression()), !dbg !130
  tail call void @llvm.dbg.value(metadata double %handler_result5, metadata !114, metadata !DIExpression()), !dbg !130
  tail call void @llvm.dbg.value(metadata double %handler_result6, metadata !115, metadata !DIExpression()), !dbg !130
  %138 = add nsw i32 %116, -4, !dbg !234
  tail call void @llvm.dbg.value(metadata i32 %138, metadata !117, metadata !DIExpression()), !dbg !130
  %139 = icmp ugt i32 %133, 1, !dbg !225
  br i1 %139, label %115, label %140, !dbg !228, !llvm.loop !237

140:                                              ; preds = %115, %108, %88
  %141 = phi double [ %91, %88 ], [ %112, %108 ], [ %handler_result5, %115 ], !dbg !130
  %142 = phi double [ 0x2000000000000000, %88 ], [ %113, %108 ], [ %handler_result6, %115 ], !dbg !130
  %143 = call double @llvm.fabs.f64(double %141), !dbg !240
  %144 = call double @llvm.fabs.f64(double %142), !dbg !241
  %145 = fcmp ogt double %143, %144, !dbg !242
  tail call void @llvm.dbg.value(metadata double poison, metadata !107, metadata !DIExpression()), !dbg !130
  tail call void @llvm.dbg.value(metadata double poison, metadata !107, metadata !DIExpression()), !dbg !130
  tail call void @llvm.dbg.value(metadata double poison, metadata !109, metadata !DIExpression()), !dbg !130
  tail call void @llvm.dbg.value(metadata double poison, metadata !109, metadata !DIExpression()), !dbg !130
  br i1 %145, label %146, label %153, !dbg !243

146:                                              ; preds = %140
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #5, !dbg !244
  %147 = call i32 @gsl_sf_bessel_J1_e(double noundef %27, ptr noundef nonnull %9) #5, !dbg !245
  tail call void @llvm.dbg.value(metadata i32 %147, metadata !112, metadata !DIExpression()), !dbg !130
  %148 = load double, ptr %9, align 8, !dbg !246, !tbaa !153
  %149 = fdiv double %148, %141, !dbg !247
  %150 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %9, i64 0, i32 1, !dbg !248
  %151 = load double, ptr %150, align 8, !dbg !248, !tbaa !161
  %152 = fdiv double %151, %141, !dbg !249
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #5, !dbg !250
  br label %160, !dbg !251

153:                                              ; preds = %140
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #5, !dbg !252
  %154 = call i32 @gsl_sf_bessel_J0_e(double noundef %27, ptr noundef nonnull %10) #5, !dbg !253
  tail call void @llvm.dbg.value(metadata i32 %154, metadata !112, metadata !DIExpression()), !dbg !130
  %155 = load double, ptr %10, align 8, !dbg !254, !tbaa !153
  %156 = fdiv double %155, %142, !dbg !255
  %157 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %10, i64 0, i32 1, !dbg !256
  %158 = load double, ptr %157, align 8, !dbg !256, !tbaa !161
  %159 = fdiv double %158, %142, !dbg !257
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #5, !dbg !258
  br label %160

160:                                              ; preds = %153, %146
  %161 = phi double [ %149, %146 ], [ %156, %153 ]
  %162 = phi double [ %152, %146 ], [ %159, %153 ]
  %163 = phi i32 [ %147, %146 ], [ %154, %153 ], !dbg !259
  %164 = fmul double %162, 0x2000000000000000, !dbg !259
  %165 = fmul double %161, 0x2000000000000000, !dbg !259
  tail call void @llvm.dbg.value(metadata i32 %163, metadata !112, metadata !DIExpression()), !dbg !130
  tail call void @llvm.dbg.value(metadata double %164, metadata !109, metadata !DIExpression()), !dbg !130
  tail call void @llvm.dbg.value(metadata double %165, metadata !107, metadata !DIExpression()), !dbg !130
  %166 = sitofp i32 %26 to double, !dbg !260
  %167 = fmul double %165, %166, !dbg !261
  store double %167, ptr %2, align 8, !dbg !262, !tbaa !153
  %168 = call double @llvm.fabs.f64(double %164), !dbg !263
  %169 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !264
  store double %168, ptr %169, align 8, !dbg !265, !tbaa !161
  %170 = icmp eq i32 %89, 0, !dbg !266
  %171 = select i1 %170, i32 %163, i32 %89, !dbg !266
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #5, !dbg !267
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #5, !dbg !267
  br label %172

172:                                              ; preds = %160, %83, %76, %69, %53, %46, %36, %28
  %173 = phi i32 [ %29, %28 ], [ %37, %36 ], [ 0, %46 ], [ %54, %53 ], [ %70, %69 ], [ %77, %76 ], [ %84, %83 ], [ %171, %160 ], !dbg !268
  ret i32 %173, !dbg !269
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare !dbg !270 i32 @gsl_sf_bessel_J0_e(double noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare !dbg !275 i32 @gsl_sf_bessel_J1_e(double noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !276 i32 @gsl_sf_bessel_IJ_taylor_e(double noundef, double noundef, i32 noundef, i32 noundef, double noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #3

declare !dbg !281 i32 @gsl_sf_bessel_Jnu_asympx_e(double noundef, double noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !284 i32 @gsl_sf_bessel_Jnu_asymp_Olver_e(double noundef, double noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !288 i32 @gsl_sf_bessel_J_CF1(double noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_bessel_Jn_array(i32 noundef %0, i32 noundef %1, double noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 !dbg !292 {
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !316
  call void @llvm.dbg.assign(metadata i1 undef, metadata !306, metadata !DIExpression(), metadata !316, metadata ptr %5, metadata !DIExpression()), !dbg !317
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !318
  call void @llvm.dbg.assign(metadata i1 undef, metadata !308, metadata !DIExpression(), metadata !318, metadata ptr %6, metadata !DIExpression()), !dbg !317
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !296, metadata !DIExpression()), !dbg !319
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !297, metadata !DIExpression()), !dbg !319
  tail call void @llvm.dbg.value(metadata double %2, metadata !298, metadata !DIExpression()), !dbg !319
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !299, metadata !DIExpression()), !dbg !319
  %7 = icmp slt i32 %0, 0, !dbg !320
  %8 = icmp slt i32 %1, %0
  %9 = or i1 %7, %8, !dbg !321
  br i1 %9, label %10, label %23, !dbg !321

10:                                               ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !300, metadata !DIExpression()), !dbg !322
  br i1 %8, label %22, label %11, !dbg !323

11:                                               ; preds = %10
  %12 = sext i32 %1 to i64, !dbg !323
  %13 = sext i32 %0 to i64, !dbg !323
  %14 = sub i32 %1, %0, !dbg !323
  %15 = zext i32 %14 to i64, !dbg !323
  %16 = shl nuw nsw i64 %15, 3, !dbg !323
  %17 = add nsw i64 %13, %15, !dbg !323
  %18 = sub nsw i64 %12, %17, !dbg !323
  %19 = shl nsw i64 %18, 3, !dbg !323
  %20 = getelementptr i8, ptr %3, i64 %19, !dbg !323
  %21 = add nuw nsw i64 %16, 8, !dbg !323
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %20, i8 0, i64 %21, i1 false), !dbg !325, !tbaa !223
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !300, metadata !DIExpression()), !dbg !322
  br label %22, !dbg !328

22:                                               ; preds = %11, %10
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 152, i32 noundef 1) #5, !dbg !328
  br label %75

23:                                               ; preds = %4
  %24 = fcmp oeq double %2, 0.000000e+00, !dbg !330
  br i1 %24, label %25, label %38, !dbg !331

25:                                               ; preds = %23
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !303, metadata !DIExpression()), !dbg !332
  %26 = sext i32 %1 to i64, !dbg !333
  %27 = zext nneg i32 %0 to i64, !dbg !333
  %28 = sub i32 %1, %0, !dbg !333
  %29 = zext i32 %28 to i64, !dbg !333
  %30 = shl nuw nsw i64 %29, 3, !dbg !333
  %31 = add nuw nsw i64 %27, %29, !dbg !333
  %32 = sub nsw i64 %26, %31, !dbg !333
  %33 = shl nsw i64 %32, 3, !dbg !333
  %34 = getelementptr i8, ptr %3, i64 %33, !dbg !333
  %35 = add nuw nsw i64 %30, 8, !dbg !333
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %34, i8 0, i64 %35, i1 false), !dbg !335, !tbaa !223
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !303, metadata !DIExpression()), !dbg !332
  %36 = icmp eq i32 %0, 0, !dbg !338
  br i1 %36, label %37, label %75, !dbg !340

37:                                               ; preds = %25
  store double 1.000000e+00, ptr %3, align 8, !dbg !341, !tbaa !223
  br label %75, !dbg !342

38:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #5, !dbg !343
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #5, !dbg !344
  %39 = add nuw nsw i32 %1, 1, !dbg !345
  %40 = call i32 @gsl_sf_bessel_Jn_e(i32 noundef %39, double noundef %2, ptr noundef nonnull %5), !dbg !346
  tail call void @llvm.dbg.value(metadata i32 %40, metadata !309, metadata !DIExpression()), !dbg !317
  %41 = call i32 @gsl_sf_bessel_Jn_e(i32 noundef %1, double noundef %2, ptr noundef nonnull %6), !dbg !347
  tail call void @llvm.dbg.value(metadata i32 %41, metadata !310, metadata !DIExpression()), !dbg !317
  %42 = icmp eq i32 %40, 0, !dbg !348
  %43 = select i1 %42, i32 %41, i32 %40, !dbg !348
  tail call void @llvm.dbg.value(metadata i32 %43, metadata !311, metadata !DIExpression()), !dbg !317
  tail call void @llvm.dbg.value(metadata double poison, metadata !312, metadata !DIExpression()), !dbg !317
  tail call void @llvm.dbg.value(metadata double poison, metadata !313, metadata !DIExpression()), !dbg !317
  %44 = icmp eq i32 %43, 0, !dbg !349
  br i1 %44, label %56, label %45, !dbg !351

45:                                               ; preds = %38
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !315, metadata !DIExpression()), !dbg !317
  %46 = sext i32 %1 to i64, !dbg !352
  %47 = zext nneg i32 %0 to i64, !dbg !352
  %48 = sub i32 %1, %0, !dbg !352
  %49 = zext i32 %48 to i64, !dbg !352
  %50 = shl nuw nsw i64 %49, 3, !dbg !352
  %51 = add nuw nsw i64 %47, %49, !dbg !352
  %52 = sub nsw i64 %46, %51, !dbg !352
  %53 = shl nsw i64 %52, 3, !dbg !352
  %54 = getelementptr i8, ptr %3, i64 %53, !dbg !352
  %55 = add nuw nsw i64 %50, 8, !dbg !352
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %54, i8 0, i64 %55, i1 false), !dbg !355, !tbaa !223
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !315, metadata !DIExpression()), !dbg !317
  br label %74, !dbg !358

56:                                               ; preds = %38
  tail call void @llvm.dbg.value(metadata double poison, metadata !312, metadata !DIExpression()), !dbg !317
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !315, metadata !DIExpression()), !dbg !317
  tail call void @llvm.dbg.value(metadata double poison, metadata !313, metadata !DIExpression()), !dbg !317
  %57 = load double, ptr %5, align 8, !dbg !359, !tbaa !153
  tail call void @llvm.dbg.value(metadata double %57, metadata !312, metadata !DIExpression()), !dbg !317
  %58 = load double, ptr %6, align 8, !dbg !360, !tbaa !153
  tail call void @llvm.dbg.value(metadata double %58, metadata !313, metadata !DIExpression()), !dbg !317
  %59 = sext i32 %1 to i64, !dbg !361
  %60 = zext nneg i32 %0 to i64, !dbg !361
  br label %61, !dbg !361

61:                                               ; preds = %61, %56
  %62 = phi i64 [ %59, %56 ], [ %72, %61 ]
  %63 = phi double [ %58, %56 ], [ %handler_result, %61 ]
  %64 = phi double [ %57, %56 ], [ %63, %61 ]
  tail call void @llvm.dbg.value(metadata i64 %62, metadata !315, metadata !DIExpression()), !dbg !317
  tail call void @llvm.dbg.value(metadata double %63, metadata !313, metadata !DIExpression()), !dbg !317
  tail call void @llvm.dbg.value(metadata double %64, metadata !312, metadata !DIExpression()), !dbg !317
  %65 = sub nsw i64 %62, %60, !dbg !364
  %66 = getelementptr inbounds double, ptr %3, i64 %65, !dbg !367
  store double %63, ptr %66, align 8, !dbg !368, !tbaa !223
  %67 = trunc i64 %62 to i32, !dbg !369
  %68 = sitofp i32 %67 to double, !dbg !369
  %69 = fmul double %68, 2.000000e+00, !dbg !370
  %70 = fdiv double %69, %2, !dbg !371
  %71 = fmul double %63, %70, !dbg !372
  %handler_result = call double @fSubHandlerDouble(double %71, double %64), !dbg !373
  tail call void @llvm.dbg.value(metadata double %handler_result, metadata !314, metadata !DIExpression()), !dbg !317
  tail call void @llvm.dbg.value(metadata double %63, metadata !312, metadata !DIExpression()), !dbg !317
  tail call void @llvm.dbg.value(metadata double %handler_result, metadata !313, metadata !DIExpression()), !dbg !317
  %72 = add nsw i64 %62, -1, !dbg !373
  tail call void @llvm.dbg.value(metadata i64 %72, metadata !315, metadata !DIExpression()), !dbg !317
  %73 = icmp sgt i64 %62, %60, !dbg !374
  br i1 %73, label %61, label %74, !dbg !361, !llvm.loop !375

74:                                               ; preds = %61, %45
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #5, !dbg !358
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #5, !dbg !358
  br label %75

75:                                               ; preds = %74, %37, %25, %22
  %76 = phi i32 [ 1, %22 ], [ %43, %74 ], [ 0, %37 ], [ 0, %25 ], !dbg !377
  ret i32 %76, !dbg !378
}

declare !dbg !379 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_bessel_Jn(i32 noundef %0, double noundef %1) local_unnamed_addr #0 !dbg !384 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !392
  call void @llvm.dbg.assign(metadata i1 undef, metadata !390, metadata !DIExpression(), metadata !392, metadata ptr %3, metadata !DIExpression()), !dbg !393
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !388, metadata !DIExpression()), !dbg !393
  tail call void @llvm.dbg.value(metadata double %1, metadata !389, metadata !DIExpression()), !dbg !393
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #5, !dbg !394
  %4 = call i32 @gsl_sf_bessel_Jn_e(i32 noundef %0, double noundef %1, ptr noundef nonnull %3), !dbg !394
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !391, metadata !DIExpression()), !dbg !393
  %5 = icmp eq i32 %4, 0, !dbg !395
  br i1 %5, label %7, label %6, !dbg !394

6:                                                ; preds = %2
  call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 198, i32 noundef %4) #5, !dbg !397
  br label %7, !dbg !397

7:                                                ; preds = %6, %2
  %8 = load double, ptr %3, align 8, !dbg !394, !tbaa !153
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #5, !dbg !400
  ret double %8, !dbg !400
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

declare double @fAddHandlerDouble(double, double)

declare double @fSubHandlerDouble(double, double)

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!17}
!llvm.module.flags = !{!61, !62, !63, !64, !65, !66, !67}
!llvm.ident = !{!68}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 152, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "bessel_Jn.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "6514829e37f09da6d1cd3f6f41587ee8")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 13)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 152, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 12)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 198, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 34)
!17 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !18, retainedTypes: !58, globals: !60, splitDebugInlining: false, nameTableKind: None)
!18 = !{!19}
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !20, line: 39, baseType: !21, size: 32, elements: !22)
!20 = !DIFile(filename: "../gsl/gsl_errno.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "3ff14ff6df19564f3d7caf1e8e622626")
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
!58 = !{!59}
!59 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!60 = !{!0, !7, !12}
!61 = !{i32 7, !"Dwarf Version", i32 5}
!62 = !{i32 2, !"Debug Info Version", i32 3}
!63 = !{i32 1, !"wchar_size", i32 4}
!64 = !{i32 8, !"PIC Level", i32 2}
!65 = !{i32 7, !"PIE Level", i32 2}
!66 = !{i32 7, !"uwtable", i32 2}
!67 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!68 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!69 = distinct !DISubprogram(name: "gsl_sf_bessel_Jn_e", scope: !2, file: !2, line: 36, type: !70, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !79)
!70 = !DISubroutineType(types: !71)
!71 = !{!21, !21, !59, !72}
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !74, line: 41, baseType: !75)
!74 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "5b52deed011f1ffd07977b19a388d251")
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !74, line: 37, size: 128, elements: !76)
!76 = !{!77, !78}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !75, file: !74, line: 38, baseType: !59, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !75, file: !74, line: 39, baseType: !59, size: 64, offset: 64)
!79 = !{!80, !81, !82, !83, !84, !87, !88, !91, !92, !97, !98, !101, !104, !107, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !121}
!80 = !DILocalVariable(name: "n", arg: 1, scope: !69, file: !2, line: 36, type: !21)
!81 = !DILocalVariable(name: "x", arg: 2, scope: !69, file: !2, line: 36, type: !59)
!82 = !DILocalVariable(name: "result", arg: 3, scope: !69, file: !2, line: 36, type: !72)
!83 = !DILocalVariable(name: "sign", scope: !69, file: !2, line: 38, type: !21)
!84 = !DILocalVariable(name: "b0", scope: !85, file: !2, line: 55, type: !73)
!85 = distinct !DILexicalBlock(scope: !86, file: !2, line: 54, column: 14)
!86 = distinct !DILexicalBlock(scope: !69, file: !2, line: 54, column: 6)
!87 = !DILocalVariable(name: "stat_J0", scope: !85, file: !2, line: 56, type: !21)
!88 = !DILocalVariable(name: "b1", scope: !89, file: !2, line: 62, type: !73)
!89 = distinct !DILexicalBlock(scope: !90, file: !2, line: 61, column: 19)
!90 = distinct !DILexicalBlock(scope: !86, file: !2, line: 61, column: 11)
!91 = !DILocalVariable(name: "stat_J1", scope: !89, file: !2, line: 63, type: !21)
!92 = !DILocalVariable(name: "b", scope: !93, file: !2, line: 75, type: !73)
!93 = distinct !DILexicalBlock(scope: !94, file: !2, line: 74, column: 55)
!94 = distinct !DILexicalBlock(scope: !95, file: !2, line: 74, column: 13)
!95 = distinct !DILexicalBlock(scope: !96, file: !2, line: 69, column: 8)
!96 = distinct !DILexicalBlock(scope: !90, file: !2, line: 68, column: 8)
!97 = !DILocalVariable(name: "status", scope: !93, file: !2, line: 76, type: !21)
!98 = !DILocalVariable(name: "status", scope: !99, file: !2, line: 83, type: !21)
!99 = distinct !DILexicalBlock(scope: !100, file: !2, line: 82, column: 52)
!100 = distinct !DILexicalBlock(scope: !94, file: !2, line: 82, column: 13)
!101 = !DILocalVariable(name: "status", scope: !102, file: !2, line: 88, type: !21)
!102 = distinct !DILexicalBlock(scope: !103, file: !2, line: 87, column: 21)
!103 = distinct !DILexicalBlock(scope: !100, file: !2, line: 87, column: 13)
!104 = !DILocalVariable(name: "status", scope: !105, file: !2, line: 97, type: !21)
!105 = distinct !DILexicalBlock(scope: !106, file: !2, line: 93, column: 5)
!106 = distinct !DILexicalBlock(scope: !103, file: !2, line: 92, column: 13)
!107 = !DILocalVariable(name: "ans", scope: !108, file: !2, line: 102, type: !59)
!108 = distinct !DILexicalBlock(scope: !106, file: !2, line: 101, column: 10)
!109 = !DILocalVariable(name: "err", scope: !108, file: !2, line: 103, type: !59)
!110 = !DILocalVariable(name: "ratio", scope: !108, file: !2, line: 104, type: !59)
!111 = !DILocalVariable(name: "sgn", scope: !108, file: !2, line: 105, type: !59)
!112 = !DILocalVariable(name: "stat_b", scope: !108, file: !2, line: 106, type: !21)
!113 = !DILocalVariable(name: "stat_CF1", scope: !108, file: !2, line: 107, type: !21)
!114 = !DILocalVariable(name: "Jkp1", scope: !108, file: !2, line: 110, type: !59)
!115 = !DILocalVariable(name: "Jk", scope: !108, file: !2, line: 111, type: !59)
!116 = !DILocalVariable(name: "Jkm1", scope: !108, file: !2, line: 112, type: !59)
!117 = !DILocalVariable(name: "k", scope: !108, file: !2, line: 113, type: !21)
!118 = !DILocalVariable(name: "b1", scope: !119, file: !2, line: 122, type: !73)
!119 = distinct !DILexicalBlock(scope: !120, file: !2, line: 121, column: 33)
!120 = distinct !DILexicalBlock(scope: !108, file: !2, line: 121, column: 10)
!121 = !DILocalVariable(name: "b0", scope: !122, file: !2, line: 128, type: !73)
!122 = distinct !DILexicalBlock(scope: !120, file: !2, line: 127, column: 12)
!123 = distinct !DIAssignID()
!124 = !DILocation(line: 0, scope: !85)
!125 = distinct !DIAssignID()
!126 = !DILocation(line: 0, scope: !89)
!127 = distinct !DIAssignID()
!128 = !DILocation(line: 0, scope: !93)
!129 = distinct !DIAssignID()
!130 = !DILocation(line: 0, scope: !108)
!131 = distinct !DIAssignID()
!132 = distinct !DIAssignID()
!133 = !DILocation(line: 0, scope: !119)
!134 = distinct !DIAssignID()
!135 = !DILocation(line: 0, scope: !122)
!136 = !DILocation(line: 0, scope: !69)
!137 = !DILocation(line: 40, column: 8, scope: !138)
!138 = distinct !DILexicalBlock(scope: !69, file: !2, line: 40, column: 6)
!139 = !DILocation(line: 40, column: 6, scope: !69)
!140 = !DILocation(line: 46, column: 8, scope: !141)
!141 = distinct !DILexicalBlock(scope: !69, file: !2, line: 46, column: 6)
!142 = !DILocation(line: 46, column: 6, scope: !69)
!143 = !DILocation(line: 48, column: 9, scope: !144)
!144 = distinct !DILexicalBlock(scope: !141, file: !2, line: 46, column: 15)
!145 = !DILocation(line: 49, column: 8, scope: !146)
!146 = distinct !DILexicalBlock(scope: !144, file: !2, line: 49, column: 8)
!147 = !DILocation(line: 49, column: 8, scope: !144)
!148 = !DILocation(line: 54, column: 6, scope: !69)
!149 = !DILocation(line: 55, column: 5, scope: !85)
!150 = !DILocation(line: 56, column: 19, scope: !85)
!151 = !DILocation(line: 57, column: 19, scope: !85)
!152 = !DILocation(line: 57, column: 29, scope: !85)
!153 = !{!154, !155, i64 0}
!154 = !{!"gsl_sf_result_struct", !155, i64 0, !155, i64 8}
!155 = !{!"double", !156, i64 0}
!156 = !{!"omnipotent char", !157, i64 0}
!157 = !{!"Simple C/C++ TBAA"}
!158 = !DILocation(line: 57, column: 24, scope: !85)
!159 = !DILocation(line: 57, column: 17, scope: !85)
!160 = !DILocation(line: 58, column: 22, scope: !85)
!161 = !{!154, !155, i64 8}
!162 = !DILocation(line: 58, column: 13, scope: !85)
!163 = !DILocation(line: 58, column: 17, scope: !85)
!164 = !DILocation(line: 60, column: 3, scope: !86)
!165 = !DILocation(line: 62, column: 5, scope: !89)
!166 = !DILocation(line: 63, column: 19, scope: !89)
!167 = !DILocation(line: 64, column: 19, scope: !89)
!168 = !DILocation(line: 64, column: 29, scope: !89)
!169 = !DILocation(line: 64, column: 24, scope: !89)
!170 = !DILocation(line: 64, column: 17, scope: !89)
!171 = !DILocation(line: 65, column: 22, scope: !89)
!172 = !DILocation(line: 65, column: 13, scope: !89)
!173 = !DILocation(line: 65, column: 17, scope: !89)
!174 = !DILocation(line: 67, column: 3, scope: !90)
!175 = !DILocation(line: 69, column: 10, scope: !95)
!176 = !DILocation(line: 69, column: 8, scope: !96)
!177 = !DILocation(line: 71, column: 19, scope: !178)
!178 = distinct !DILexicalBlock(scope: !95, file: !2, line: 69, column: 18)
!179 = !DILocation(line: 72, column: 7, scope: !178)
!180 = !DILocation(line: 74, column: 14, scope: !94)
!181 = !DILocation(line: 74, column: 25, scope: !94)
!182 = !DILocation(line: 74, column: 23, scope: !94)
!183 = !DILocation(line: 74, column: 31, scope: !94)
!184 = !DILocation(line: 74, column: 17, scope: !94)
!185 = !DILocation(line: 74, column: 13, scope: !95)
!186 = !DILocation(line: 75, column: 7, scope: !93)
!187 = !DILocation(line: 76, column: 20, scope: !93)
!188 = !DILocation(line: 77, column: 22, scope: !93)
!189 = !DILocation(line: 77, column: 31, scope: !93)
!190 = !DILocation(line: 77, column: 27, scope: !93)
!191 = !DILocation(line: 77, column: 20, scope: !93)
!192 = !DILocation(line: 78, column: 24, scope: !93)
!193 = !DILocation(line: 78, column: 15, scope: !93)
!194 = !DILocation(line: 79, column: 40, scope: !93)
!195 = !DILocation(line: 79, column: 38, scope: !93)
!196 = !DILocation(line: 79, column: 19, scope: !93)
!197 = !DILocation(line: 81, column: 5, scope: !94)
!198 = !DILocation(line: 82, column: 35, scope: !100)
!199 = !DILocation(line: 82, column: 43, scope: !100)
!200 = !DILocation(line: 82, column: 45, scope: !100)
!201 = !DILocation(line: 82, column: 39, scope: !100)
!202 = !DILocation(line: 82, column: 13, scope: !94)
!203 = !DILocation(line: 83, column: 20, scope: !99)
!204 = !DILocation(line: 0, scope: !99)
!205 = !DILocation(line: 84, column: 22, scope: !99)
!206 = !DILocation(line: 84, column: 19, scope: !99)
!207 = !DILocation(line: 87, column: 15, scope: !103)
!208 = !DILocation(line: 87, column: 13, scope: !100)
!209 = !DILocation(line: 88, column: 20, scope: !102)
!210 = !DILocation(line: 0, scope: !102)
!211 = !DILocation(line: 89, column: 22, scope: !102)
!212 = !DILocation(line: 89, column: 19, scope: !102)
!213 = !DILocation(line: 92, column: 15, scope: !106)
!214 = !DILocation(line: 92, column: 13, scope: !103)
!215 = !DILocation(line: 97, column: 20, scope: !105)
!216 = !DILocation(line: 0, scope: !105)
!217 = !DILocation(line: 98, column: 22, scope: !105)
!218 = !DILocation(line: 98, column: 19, scope: !105)
!219 = !DILocation(line: 104, column: 7, scope: !108)
!220 = !DILocation(line: 105, column: 7, scope: !108)
!221 = !DILocation(line: 107, column: 22, scope: !108)
!222 = !DILocation(line: 110, column: 40, scope: !108)
!223 = !{!155, !155, i64 0}
!224 = !DILocation(line: 110, column: 38, scope: !108)
!225 = !DILocation(line: 115, column: 17, scope: !226)
!226 = distinct !DILexicalBlock(scope: !227, file: !2, line: 115, column: 7)
!227 = distinct !DILexicalBlock(scope: !108, file: !2, line: 115, column: 7)
!228 = !DILocation(line: 115, column: 7, scope: !227)
!229 = !DILocation(line: 116, column: 20, scope: !230)
!230 = distinct !DILexicalBlock(scope: !226, file: !2, line: 115, column: 26)
!231 = !DILocation(line: 116, column: 19, scope: !230)
!232 = !DILocation(line: 116, column: 21, scope: !230)
!233 = !DILocation(line: 116, column: 24, scope: !230)
!234 = !DILocation(line: 115, column: 22, scope: !226)
!235 = distinct !{!235, !236}
!236 = !{!"llvm.loop.unroll.disable"}
!237 = distinct !{!237, !228, !238, !239}
!238 = !DILocation(line: 119, column: 7, scope: !227)
!239 = !{!"llvm.loop.mustprogress"}
!240 = !DILocation(line: 121, column: 10, scope: !120)
!241 = !DILocation(line: 121, column: 23, scope: !120)
!242 = !DILocation(line: 121, column: 21, scope: !120)
!243 = !DILocation(line: 121, column: 10, scope: !108)
!244 = !DILocation(line: 122, column: 9, scope: !119)
!245 = !DILocation(line: 123, column: 18, scope: !119)
!246 = !DILocation(line: 124, column: 18, scope: !119)
!247 = !DILocation(line: 124, column: 21, scope: !119)
!248 = !DILocation(line: 125, column: 18, scope: !119)
!249 = !DILocation(line: 125, column: 21, scope: !119)
!250 = !DILocation(line: 126, column: 7, scope: !120)
!251 = !DILocation(line: 126, column: 7, scope: !119)
!252 = !DILocation(line: 128, column: 9, scope: !122)
!253 = !DILocation(line: 129, column: 18, scope: !122)
!254 = !DILocation(line: 130, column: 18, scope: !122)
!255 = !DILocation(line: 130, column: 21, scope: !122)
!256 = !DILocation(line: 131, column: 18, scope: !122)
!257 = !DILocation(line: 131, column: 21, scope: !122)
!258 = !DILocation(line: 132, column: 7, scope: !120)
!259 = !DILocation(line: 0, scope: !120)
!260 = !DILocation(line: 134, column: 21, scope: !108)
!261 = !DILocation(line: 134, column: 26, scope: !108)
!262 = !DILocation(line: 134, column: 19, scope: !108)
!263 = !DILocation(line: 135, column: 21, scope: !108)
!264 = !DILocation(line: 135, column: 15, scope: !108)
!265 = !DILocation(line: 135, column: 19, scope: !108)
!266 = !DILocation(line: 136, column: 14, scope: !108)
!267 = !DILocation(line: 137, column: 5, scope: !106)
!268 = !DILocation(line: 0, scope: !86)
!269 = !DILocation(line: 139, column: 1, scope: !69)
!270 = !DISubprogram(name: "gsl_sf_bessel_J0_e", scope: !271, file: !271, line: 47, type: !272, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!271 = !DIFile(filename: "../gsl/gsl_sf_bessel.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "45459f63edc3203df6c715a25160d493")
!272 = !DISubroutineType(types: !273)
!273 = !{!21, !274, !72}
!274 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !59)
!275 = !DISubprogram(name: "gsl_sf_bessel_J1_e", scope: !271, file: !271, line: 55, type: !272, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!276 = !DISubprogram(name: "gsl_sf_bessel_IJ_taylor_e", scope: !277, file: !277, line: 32, type: !278, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!277 = !DIFile(filename: "./bessel.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "57b96fff5bee18a41e1173dbca5404a0")
!278 = !DISubroutineType(types: !279)
!279 = !{!21, !274, !274, !280, !280, !274, !72}
!280 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!281 = !DISubprogram(name: "gsl_sf_bessel_Jnu_asympx_e", scope: !277, file: !277, line: 39, type: !282, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!282 = !DISubroutineType(types: !283)
!283 = !{!21, !274, !274, !72}
!284 = !DISubprogram(name: "gsl_sf_bessel_Jnu_asymp_Olver_e", scope: !285, file: !285, line: 27, type: !286, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!285 = !DIFile(filename: "./bessel_olver.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "ec509d1b6cab5ef68906304c5e69a8d7")
!286 = !DISubroutineType(types: !287)
!287 = !{!21, !59, !59, !72}
!288 = !DISubprogram(name: "gsl_sf_bessel_J_CF1", scope: !277, file: !277, line: 56, type: !289, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!289 = !DISubroutineType(types: !290)
!290 = !{!21, !274, !274, !291, !291}
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!292 = distinct !DISubprogram(name: "gsl_sf_bessel_Jn_array", scope: !2, file: !2, line: 143, type: !293, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !295)
!293 = !DISubroutineType(types: !294)
!294 = !{!21, !21, !21, !59, !291}
!295 = !{!296, !297, !298, !299, !300, !303, !306, !308, !309, !310, !311, !312, !313, !314, !315}
!296 = !DILocalVariable(name: "nmin", arg: 1, scope: !292, file: !2, line: 143, type: !21)
!297 = !DILocalVariable(name: "nmax", arg: 2, scope: !292, file: !2, line: 143, type: !21)
!298 = !DILocalVariable(name: "x", arg: 3, scope: !292, file: !2, line: 143, type: !59)
!299 = !DILocalVariable(name: "result_array", arg: 4, scope: !292, file: !2, line: 143, type: !291)
!300 = !DILocalVariable(name: "n", scope: !301, file: !2, line: 148, type: !21)
!301 = distinct !DILexicalBlock(scope: !302, file: !2, line: 147, column: 31)
!302 = distinct !DILexicalBlock(scope: !292, file: !2, line: 147, column: 6)
!303 = !DILocalVariable(name: "n", scope: !304, file: !2, line: 155, type: !21)
!304 = distinct !DILexicalBlock(scope: !305, file: !2, line: 154, column: 21)
!305 = distinct !DILexicalBlock(scope: !302, file: !2, line: 154, column: 11)
!306 = !DILocalVariable(name: "r_Jnp1", scope: !307, file: !2, line: 163, type: !73)
!307 = distinct !DILexicalBlock(scope: !305, file: !2, line: 162, column: 8)
!308 = !DILocalVariable(name: "r_Jn", scope: !307, file: !2, line: 164, type: !73)
!309 = !DILocalVariable(name: "stat_np1", scope: !307, file: !2, line: 165, type: !21)
!310 = !DILocalVariable(name: "stat_n", scope: !307, file: !2, line: 166, type: !21)
!311 = !DILocalVariable(name: "stat", scope: !307, file: !2, line: 167, type: !21)
!312 = !DILocalVariable(name: "Jnp1", scope: !307, file: !2, line: 169, type: !59)
!313 = !DILocalVariable(name: "Jn", scope: !307, file: !2, line: 170, type: !59)
!314 = !DILocalVariable(name: "Jnm1", scope: !307, file: !2, line: 171, type: !59)
!315 = !DILocalVariable(name: "n", scope: !307, file: !2, line: 172, type: !21)
!316 = distinct !DIAssignID()
!317 = !DILocation(line: 0, scope: !307)
!318 = distinct !DIAssignID()
!319 = !DILocation(line: 0, scope: !292)
!320 = !DILocation(line: 147, column: 11, scope: !302)
!321 = !DILocation(line: 147, column: 15, scope: !302)
!322 = !DILocation(line: 0, scope: !301)
!323 = !DILocation(line: 149, column: 5, scope: !324)
!324 = distinct !DILexicalBlock(scope: !301, file: !2, line: 149, column: 5)
!325 = !DILocation(line: 150, column: 28, scope: !326)
!326 = distinct !DILexicalBlock(scope: !327, file: !2, line: 149, column: 31)
!327 = distinct !DILexicalBlock(scope: !324, file: !2, line: 149, column: 5)
!328 = !DILocation(line: 152, column: 5, scope: !329)
!329 = distinct !DILexicalBlock(scope: !301, file: !2, line: 152, column: 5)
!330 = !DILocation(line: 154, column: 13, scope: !305)
!331 = !DILocation(line: 154, column: 11, scope: !302)
!332 = !DILocation(line: 0, scope: !304)
!333 = !DILocation(line: 156, column: 5, scope: !334)
!334 = distinct !DILexicalBlock(scope: !304, file: !2, line: 156, column: 5)
!335 = !DILocation(line: 157, column: 28, scope: !336)
!336 = distinct !DILexicalBlock(scope: !337, file: !2, line: 156, column: 31)
!337 = distinct !DILexicalBlock(scope: !334, file: !2, line: 156, column: 5)
!338 = !DILocation(line: 159, column: 13, scope: !339)
!339 = distinct !DILexicalBlock(scope: !304, file: !2, line: 159, column: 8)
!340 = !DILocation(line: 159, column: 8, scope: !304)
!341 = !DILocation(line: 159, column: 35, scope: !339)
!342 = !DILocation(line: 159, column: 19, scope: !339)
!343 = !DILocation(line: 163, column: 5, scope: !307)
!344 = !DILocation(line: 164, column: 5, scope: !307)
!345 = !DILocation(line: 165, column: 43, scope: !307)
!346 = !DILocation(line: 165, column: 20, scope: !307)
!347 = !DILocation(line: 166, column: 20, scope: !307)
!348 = !DILocation(line: 167, column: 16, scope: !307)
!349 = !DILocation(line: 174, column: 13, scope: !350)
!350 = distinct !DILexicalBlock(scope: !307, file: !2, line: 174, column: 8)
!351 = !DILocation(line: 174, column: 8, scope: !307)
!352 = !DILocation(line: 183, column: 7, scope: !353)
!353 = distinct !DILexicalBlock(scope: !354, file: !2, line: 183, column: 7)
!354 = distinct !DILexicalBlock(scope: !350, file: !2, line: 182, column: 10)
!355 = !DILocation(line: 184, column: 30, scope: !356)
!356 = distinct !DILexicalBlock(scope: !357, file: !2, line: 183, column: 33)
!357 = distinct !DILexicalBlock(scope: !353, file: !2, line: 183, column: 7)
!358 = !DILocation(line: 189, column: 3, scope: !305)
!359 = !DILocation(line: 169, column: 26, scope: !307)
!360 = !DILocation(line: 170, column: 24, scope: !307)
!361 = !DILocation(line: 175, column: 7, scope: !362)
!362 = distinct !DILexicalBlock(scope: !363, file: !2, line: 175, column: 7)
!363 = distinct !DILexicalBlock(scope: !350, file: !2, line: 174, column: 29)
!364 = !DILocation(line: 176, column: 23, scope: !365)
!365 = distinct !DILexicalBlock(scope: !366, file: !2, line: 175, column: 33)
!366 = distinct !DILexicalBlock(scope: !362, file: !2, line: 175, column: 7)
!367 = !DILocation(line: 176, column: 9, scope: !365)
!368 = !DILocation(line: 176, column: 30, scope: !365)
!369 = !DILocation(line: 177, column: 28, scope: !365)
!370 = !DILocation(line: 177, column: 27, scope: !365)
!371 = !DILocation(line: 177, column: 29, scope: !365)
!372 = !DILocation(line: 177, column: 32, scope: !365)
!373 = !DILocation(line: 175, column: 29, scope: !366)
!374 = !DILocation(line: 175, column: 20, scope: !366)
!375 = distinct !{!375, !361, !376, !239}
!376 = !DILocation(line: 180, column: 7, scope: !362)
!377 = !DILocation(line: 0, scope: !302)
!378 = !DILocation(line: 190, column: 1, scope: !292)
!379 = !DISubprogram(name: "gsl_error", scope: !20, file: !20, line: 77, type: !380, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!380 = !DISubroutineType(types: !381)
!381 = !{null, !382, !382, !21, !21}
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!383 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!384 = distinct !DISubprogram(name: "gsl_sf_bessel_Jn", scope: !2, file: !2, line: 196, type: !385, scopeLine: 197, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !387)
!385 = !DISubroutineType(types: !386)
!386 = !{!59, !280, !274}
!387 = !{!388, !389, !390, !391}
!388 = !DILocalVariable(name: "n", arg: 1, scope: !384, file: !2, line: 196, type: !280)
!389 = !DILocalVariable(name: "x", arg: 2, scope: !384, file: !2, line: 196, type: !274)
!390 = !DILocalVariable(name: "result", scope: !384, file: !2, line: 198, type: !73)
!391 = !DILocalVariable(name: "status", scope: !384, file: !2, line: 198, type: !21)
!392 = distinct !DIAssignID()
!393 = !DILocation(line: 0, scope: !384)
!394 = !DILocation(line: 198, column: 3, scope: !384)
!395 = !DILocation(line: 198, column: 3, scope: !396)
!396 = distinct !DILexicalBlock(scope: !384, file: !2, line: 198, column: 3)
!397 = !DILocation(line: 198, column: 3, scope: !398)
!398 = distinct !DILexicalBlock(scope: !399, file: !2, line: 198, column: 3)
!399 = distinct !DILexicalBlock(scope: !396, file: !2, line: 198, column: 3)
!400 = !DILocation(line: 199, column: 1, scope: !384)
