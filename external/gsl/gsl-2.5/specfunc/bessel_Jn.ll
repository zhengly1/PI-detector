; ModuleID = 'bessel_Jn.c'
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
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #6, !dbg !149
  %29 = call i32 @gsl_sf_bessel_J0_e(double noundef %27, ptr noundef nonnull %4) #6, !dbg !150
  tail call void @llvm.dbg.value(metadata i32 %29, metadata !87, metadata !DIExpression()), !dbg !124
  %30 = sitofp i32 %26 to double, !dbg !151
  %31 = load double, ptr %4, align 8, !dbg !152, !tbaa !153
  %32 = fmul double %31, %30, !dbg !158
  store double %32, ptr %2, align 8, !dbg !159, !tbaa !153
  %33 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !160
  %34 = load double, ptr %33, align 8, !dbg !160, !tbaa !161
  %35 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !162
  store double %34, ptr %35, align 8, !dbg !163, !tbaa !161
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #6, !dbg !164
  br label %179

36:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #6, !dbg !165
  %37 = call i32 @gsl_sf_bessel_J1_e(double noundef %27, ptr noundef nonnull %5) #6, !dbg !166
  tail call void @llvm.dbg.value(metadata i32 %37, metadata !91, metadata !DIExpression()), !dbg !126
  %38 = sitofp i32 %26 to double, !dbg !167
  %39 = load double, ptr %5, align 8, !dbg !168, !tbaa !153
  %40 = fmul double %39, %38, !dbg !169
  store double %40, ptr %2, align 8, !dbg !170, !tbaa !153
  %41 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !171
  %42 = load double, ptr %41, align 8, !dbg !171, !tbaa !161
  %43 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !172
  store double %42, ptr %43, align 8, !dbg !173, !tbaa !161
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #6, !dbg !174
  br label %179

44:                                               ; preds = %25
  %45 = fcmp oeq double %27, 0.000000e+00, !dbg !175
  br i1 %45, label %46, label %47, !dbg !176

46:                                               ; preds = %44
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !dbg !177
  br label %179, !dbg !179

47:                                               ; preds = %44
  %48 = fmul double %27, %27, !dbg !180
  %49 = sitofp i32 %17 to double, !dbg !181
  %50 = fadd double %49, 1.000000e+00, !dbg !182
  %51 = fmul double %50, 1.000000e+01, !dbg !183
  %52 = fmul double %51, 0x3F48406003B2AE5A, !dbg !184
  %53 = fcmp olt double %48, %52, !dbg !185
  br i1 %53, label %54, label %65, !dbg !186

54:                                               ; preds = %47
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #6, !dbg !187
  %55 = call i32 @gsl_sf_bessel_IJ_taylor_e(double noundef %49, double noundef %27, i32 noundef -1, i32 noundef 50, double noundef 0x3CB0000000000000, ptr noundef nonnull %6) #6, !dbg !188
  tail call void @llvm.dbg.value(metadata i32 %55, metadata !97, metadata !DIExpression()), !dbg !128
  %56 = sitofp i32 %26 to double, !dbg !189
  %57 = load double, ptr %6, align 8, !dbg !190, !tbaa !153
  %58 = fmul double %57, %56, !dbg !191
  store double %58, ptr %2, align 8, !dbg !192, !tbaa !153
  %59 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !193
  %60 = load double, ptr %59, align 8, !dbg !193, !tbaa !161
  %61 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !194
  %62 = call double @llvm.fabs.f64(double %58), !dbg !195
  %63 = fmul double %62, 0x3CB0000000000000, !dbg !196
  %64 = fadd double %60, %63, !dbg !197
  store double %64, ptr %61, align 8, !dbg !197, !tbaa !161
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #6, !dbg !198
  br label %179

65:                                               ; preds = %47
  %66 = fmul double %27, 0x3F20000000000000, !dbg !199
  %67 = mul i32 %0, %0, !dbg !200
  %68 = add nuw nsw i32 %67, 1, !dbg !201
  %69 = sitofp i32 %68 to double, !dbg !201
  %70 = fcmp ogt double %66, %69, !dbg !202
  br i1 %70, label %71, label %76, !dbg !203

71:                                               ; preds = %65
  %72 = tail call i32 @gsl_sf_bessel_Jnu_asympx_e(double noundef %49, double noundef %27, ptr noundef %2) #6, !dbg !204
  tail call void @llvm.dbg.value(metadata i32 %72, metadata !98, metadata !DIExpression()), !dbg !205
  %73 = sitofp i32 %26 to double, !dbg !206
  %74 = load double, ptr %2, align 8, !dbg !207, !tbaa !153
  %75 = fmul double %74, %73, !dbg !207
  store double %75, ptr %2, align 8, !dbg !207, !tbaa !153
  br label %179

76:                                               ; preds = %65
  %77 = icmp sgt i32 %17, 50, !dbg !208
  br i1 %77, label %78, label %83, !dbg !209

78:                                               ; preds = %76
  %79 = tail call i32 @gsl_sf_bessel_Jnu_asymp_Olver_e(double noundef %49, double noundef %27, ptr noundef %2) #6, !dbg !210
  tail call void @llvm.dbg.value(metadata i32 %79, metadata !101, metadata !DIExpression()), !dbg !211
  %80 = sitofp i32 %26 to double, !dbg !212
  %81 = load double, ptr %2, align 8, !dbg !213, !tbaa !153
  %82 = fmul double %81, %80, !dbg !213
  store double %82, ptr %2, align 8, !dbg !213, !tbaa !153
  br label %179

83:                                               ; preds = %76
  %84 = fcmp ogt double %27, 1.000000e+03, !dbg !214
  br i1 %84, label %85, label %90, !dbg !215

85:                                               ; preds = %83
  %86 = tail call i32 @gsl_sf_bessel_Jnu_asympx_e(double noundef %49, double noundef %27, ptr noundef %2) #6, !dbg !216
  tail call void @llvm.dbg.value(metadata i32 %86, metadata !104, metadata !DIExpression()), !dbg !217
  %87 = sitofp i32 %26 to double, !dbg !218
  %88 = load double, ptr %2, align 8, !dbg !219, !tbaa !153
  %89 = fmul double %88, %87, !dbg !219
  store double %89, ptr %2, align 8, !dbg !219, !tbaa !153
  br label %179

90:                                               ; preds = %83
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #6, !dbg !220
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #6, !dbg !221
  %91 = call i32 @gsl_sf_bessel_J_CF1(double noundef %49, double noundef %27, ptr noundef nonnull %7, ptr noundef nonnull %8) #6, !dbg !222
  tail call void @llvm.dbg.value(metadata i32 %91, metadata !113, metadata !DIExpression()), !dbg !130
  %92 = load double, ptr %7, align 8, !dbg !223, !tbaa !224
  %93 = fmul double %92, 0x2000000000000000, !dbg !225
  tail call void @llvm.dbg.value(metadata double %93, metadata !114, metadata !DIExpression()), !dbg !130
  tail call void @llvm.dbg.value(metadata double 0x2000000000000000, metadata !115, metadata !DIExpression()), !dbg !130
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !117, metadata !DIExpression()), !dbg !130
  %94 = icmp sgt i32 %17, 0, !dbg !226
  br i1 %94, label %95, label %147, !dbg !229

95:                                               ; preds = %90
  %96 = and i32 %17, 3, !dbg !229
  %97 = icmp eq i32 %96, 0, !dbg !229
  br i1 %97, label %111, label %98, !dbg !229

98:                                               ; preds = %95, %98
  %99 = phi i32 [ %108, %98 ], [ %17, %95 ]
  %100 = phi double [ %107, %98 ], [ 0x2000000000000000, %95 ]
  %101 = phi double [ %100, %98 ], [ %93, %95 ]
  %102 = phi i32 [ %109, %98 ], [ 0, %95 ]
  tail call void @llvm.dbg.value(metadata i32 %99, metadata !117, metadata !DIExpression()), !dbg !130
  tail call void @llvm.dbg.value(metadata double %100, metadata !115, metadata !DIExpression()), !dbg !130
  tail call void @llvm.dbg.value(metadata double %101, metadata !114, metadata !DIExpression()), !dbg !130
  %103 = sitofp i32 %99 to double, !dbg !230
  %104 = fmul double %103, 2.000000e+00, !dbg !232
  %105 = fdiv double %104, %27, !dbg !233
  %106 = fmul double %100, %105, !dbg !234
  %107 = fsub double %106, %101, !dbg !235
  tail call void @llvm.dbg.value(metadata double %107, metadata !116, metadata !DIExpression()), !dbg !130
  tail call void @llvm.dbg.value(metadata double %100, metadata !114, metadata !DIExpression()), !dbg !130
  tail call void @llvm.dbg.value(metadata double %107, metadata !115, metadata !DIExpression()), !dbg !130
  %108 = add nsw i32 %99, -1, !dbg !236
  tail call void @llvm.dbg.value(metadata i32 %108, metadata !117, metadata !DIExpression()), !dbg !130
  %109 = add i32 %102, 1, !dbg !229
  %110 = icmp eq i32 %109, %96, !dbg !229
  br i1 %110, label %111, label %98, !dbg !229, !llvm.loop !237

111:                                              ; preds = %98, %95
  %112 = phi i32 [ %17, %95 ], [ %108, %98 ]
  %113 = phi double [ 0x2000000000000000, %95 ], [ %107, %98 ]
  %114 = phi double [ %93, %95 ], [ %100, %98 ]
  %115 = phi double [ undef, %95 ], [ %100, %98 ]
  %116 = phi double [ undef, %95 ], [ %107, %98 ]
  %117 = icmp ult i32 %17, 4, !dbg !229
  br i1 %117, label %147, label %118, !dbg !229

118:                                              ; preds = %111, %118
  %119 = phi i32 [ %145, %118 ], [ %112, %111 ]
  %120 = phi double [ %144, %118 ], [ %113, %111 ]
  %121 = phi double [ %138, %118 ], [ %114, %111 ]
  tail call void @llvm.dbg.value(metadata i32 %119, metadata !117, metadata !DIExpression()), !dbg !130
  tail call void @llvm.dbg.value(metadata double %120, metadata !115, metadata !DIExpression()), !dbg !130
  tail call void @llvm.dbg.value(metadata double %121, metadata !114, metadata !DIExpression()), !dbg !130
  %122 = sitofp i32 %119 to double, !dbg !230
  %123 = fmul double %122, 2.000000e+00, !dbg !232
  %124 = fdiv double %123, %27, !dbg !233
  %125 = fmul double %120, %124, !dbg !234
  %126 = fsub double %125, %121, !dbg !235
  tail call void @llvm.dbg.value(metadata double %126, metadata !116, metadata !DIExpression()), !dbg !130
  tail call void @llvm.dbg.value(metadata double %120, metadata !114, metadata !DIExpression()), !dbg !130
  tail call void @llvm.dbg.value(metadata double %126, metadata !115, metadata !DIExpression()), !dbg !130
  %127 = add nsw i32 %119, -1, !dbg !236
  tail call void @llvm.dbg.value(metadata i32 %127, metadata !117, metadata !DIExpression()), !dbg !130
  tail call void @llvm.dbg.value(metadata i32 %127, metadata !117, metadata !DIExpression()), !dbg !130
  tail call void @llvm.dbg.value(metadata double %126, metadata !115, metadata !DIExpression()), !dbg !130
  tail call void @llvm.dbg.value(metadata double %120, metadata !114, metadata !DIExpression()), !dbg !130
  %128 = sitofp i32 %127 to double, !dbg !230
  %129 = fmul double %128, 2.000000e+00, !dbg !232
  %130 = fdiv double %129, %27, !dbg !233
  %131 = fmul double %126, %130, !dbg !234
  %132 = fsub double %131, %120, !dbg !235
  tail call void @llvm.dbg.value(metadata double %132, metadata !116, metadata !DIExpression()), !dbg !130
  tail call void @llvm.dbg.value(metadata double %126, metadata !114, metadata !DIExpression()), !dbg !130
  tail call void @llvm.dbg.value(metadata double %132, metadata !115, metadata !DIExpression()), !dbg !130
  %133 = add nsw i32 %119, -2, !dbg !236
  tail call void @llvm.dbg.value(metadata i32 %133, metadata !117, metadata !DIExpression()), !dbg !130
  tail call void @llvm.dbg.value(metadata i32 %133, metadata !117, metadata !DIExpression()), !dbg !130
  tail call void @llvm.dbg.value(metadata double %132, metadata !115, metadata !DIExpression()), !dbg !130
  tail call void @llvm.dbg.value(metadata double %126, metadata !114, metadata !DIExpression()), !dbg !130
  %134 = sitofp i32 %133 to double, !dbg !230
  %135 = fmul double %134, 2.000000e+00, !dbg !232
  %136 = fdiv double %135, %27, !dbg !233
  %137 = fmul double %132, %136, !dbg !234
  %138 = fsub double %137, %126, !dbg !235
  tail call void @llvm.dbg.value(metadata double %138, metadata !116, metadata !DIExpression()), !dbg !130
  tail call void @llvm.dbg.value(metadata double %132, metadata !114, metadata !DIExpression()), !dbg !130
  tail call void @llvm.dbg.value(metadata double %138, metadata !115, metadata !DIExpression()), !dbg !130
  %139 = add nsw i32 %119, -3, !dbg !236
  tail call void @llvm.dbg.value(metadata i32 %139, metadata !117, metadata !DIExpression()), !dbg !130
  tail call void @llvm.dbg.value(metadata i32 %139, metadata !117, metadata !DIExpression()), !dbg !130
  tail call void @llvm.dbg.value(metadata double %138, metadata !115, metadata !DIExpression()), !dbg !130
  tail call void @llvm.dbg.value(metadata double %132, metadata !114, metadata !DIExpression()), !dbg !130
  %140 = sitofp i32 %139 to double, !dbg !230
  %141 = fmul double %140, 2.000000e+00, !dbg !232
  %142 = fdiv double %141, %27, !dbg !233
  %143 = fmul double %138, %142, !dbg !234
  %144 = fsub double %143, %132, !dbg !235
  tail call void @llvm.dbg.value(metadata double %144, metadata !116, metadata !DIExpression()), !dbg !130
  tail call void @llvm.dbg.value(metadata double %138, metadata !114, metadata !DIExpression()), !dbg !130
  tail call void @llvm.dbg.value(metadata double %144, metadata !115, metadata !DIExpression()), !dbg !130
  %145 = add nsw i32 %119, -4, !dbg !236
  tail call void @llvm.dbg.value(metadata i32 %145, metadata !117, metadata !DIExpression()), !dbg !130
  %146 = icmp ugt i32 %139, 1, !dbg !226
  br i1 %146, label %118, label %147, !dbg !229, !llvm.loop !239

147:                                              ; preds = %111, %118, %90
  %148 = phi double [ %93, %90 ], [ %115, %111 ], [ %138, %118 ], !dbg !130
  %149 = phi double [ 0x2000000000000000, %90 ], [ %116, %111 ], [ %144, %118 ], !dbg !130
  %150 = call double @llvm.fabs.f64(double %148), !dbg !242
  %151 = call double @llvm.fabs.f64(double %149), !dbg !243
  %152 = fcmp ogt double %150, %151, !dbg !244
  tail call void @llvm.dbg.value(metadata double poison, metadata !107, metadata !DIExpression()), !dbg !130
  tail call void @llvm.dbg.value(metadata double poison, metadata !107, metadata !DIExpression()), !dbg !130
  tail call void @llvm.dbg.value(metadata double poison, metadata !109, metadata !DIExpression()), !dbg !130
  tail call void @llvm.dbg.value(metadata double poison, metadata !109, metadata !DIExpression()), !dbg !130
  br i1 %152, label %153, label %160, !dbg !245

153:                                              ; preds = %147
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #6, !dbg !246
  %154 = call i32 @gsl_sf_bessel_J1_e(double noundef %27, ptr noundef nonnull %9) #6, !dbg !247
  tail call void @llvm.dbg.value(metadata i32 %154, metadata !112, metadata !DIExpression()), !dbg !130
  %155 = load double, ptr %9, align 8, !dbg !248, !tbaa !153
  %156 = fdiv double %155, %148, !dbg !249
  %157 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %9, i64 0, i32 1, !dbg !250
  %158 = load double, ptr %157, align 8, !dbg !250, !tbaa !161
  %159 = fdiv double %158, %148, !dbg !251
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #6, !dbg !252
  br label %167, !dbg !253

160:                                              ; preds = %147
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #6, !dbg !254
  %161 = call i32 @gsl_sf_bessel_J0_e(double noundef %27, ptr noundef nonnull %10) #6, !dbg !255
  tail call void @llvm.dbg.value(metadata i32 %161, metadata !112, metadata !DIExpression()), !dbg !130
  %162 = load double, ptr %10, align 8, !dbg !256, !tbaa !153
  %163 = fdiv double %162, %149, !dbg !257
  %164 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %10, i64 0, i32 1, !dbg !258
  %165 = load double, ptr %164, align 8, !dbg !258, !tbaa !161
  %166 = fdiv double %165, %149, !dbg !259
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #6, !dbg !260
  br label %167

167:                                              ; preds = %160, %153
  %168 = phi double [ %156, %153 ], [ %163, %160 ]
  %169 = phi double [ %159, %153 ], [ %166, %160 ]
  %170 = phi i32 [ %154, %153 ], [ %161, %160 ], !dbg !261
  %171 = fmul double %169, 0x2000000000000000, !dbg !261
  %172 = fmul double %168, 0x2000000000000000, !dbg !261
  tail call void @llvm.dbg.value(metadata i32 %170, metadata !112, metadata !DIExpression()), !dbg !130
  tail call void @llvm.dbg.value(metadata double %171, metadata !109, metadata !DIExpression()), !dbg !130
  tail call void @llvm.dbg.value(metadata double %172, metadata !107, metadata !DIExpression()), !dbg !130
  %173 = sitofp i32 %26 to double, !dbg !262
  %174 = fmul double %172, %173, !dbg !263
  store double %174, ptr %2, align 8, !dbg !264, !tbaa !153
  %175 = call double @llvm.fabs.f64(double %171), !dbg !265
  %176 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !266
  store double %175, ptr %176, align 8, !dbg !267, !tbaa !161
  %177 = icmp eq i32 %91, 0, !dbg !268
  %178 = select i1 %177, i32 %170, i32 %91, !dbg !268
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #6, !dbg !269
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #6, !dbg !269
  br label %179

179:                                              ; preds = %167, %85, %78, %71, %54, %46, %36, %28
  %180 = phi i32 [ %29, %28 ], [ %37, %36 ], [ 0, %46 ], [ %55, %54 ], [ %72, %71 ], [ %79, %78 ], [ %86, %85 ], [ %178, %167 ], !dbg !270
  ret i32 %180, !dbg !271
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare !dbg !272 i32 @gsl_sf_bessel_J0_e(double noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare !dbg !277 i32 @gsl_sf_bessel_J1_e(double noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !278 i32 @gsl_sf_bessel_IJ_taylor_e(double noundef, double noundef, i32 noundef, i32 noundef, double noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #3

declare !dbg !283 i32 @gsl_sf_bessel_Jnu_asympx_e(double noundef, double noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !286 i32 @gsl_sf_bessel_Jnu_asymp_Olver_e(double noundef, double noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !290 i32 @gsl_sf_bessel_J_CF1(double noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_bessel_Jn_array(i32 noundef %0, i32 noundef %1, double noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 !dbg !294 {
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !318
  call void @llvm.dbg.assign(metadata i1 undef, metadata !308, metadata !DIExpression(), metadata !318, metadata ptr %5, metadata !DIExpression()), !dbg !319
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !320
  call void @llvm.dbg.assign(metadata i1 undef, metadata !310, metadata !DIExpression(), metadata !320, metadata ptr %6, metadata !DIExpression()), !dbg !319
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !298, metadata !DIExpression()), !dbg !321
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !299, metadata !DIExpression()), !dbg !321
  tail call void @llvm.dbg.value(metadata double %2, metadata !300, metadata !DIExpression()), !dbg !321
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !301, metadata !DIExpression()), !dbg !321
  %7 = icmp slt i32 %0, 0, !dbg !322
  %8 = icmp slt i32 %1, %0
  %9 = or i1 %7, %8, !dbg !323
  br i1 %9, label %10, label %23, !dbg !323

10:                                               ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !302, metadata !DIExpression()), !dbg !324
  br i1 %8, label %22, label %11, !dbg !325

11:                                               ; preds = %10
  %12 = sext i32 %1 to i64, !dbg !325
  %13 = sext i32 %0 to i64, !dbg !325
  %14 = sub i32 %1, %0, !dbg !325
  %15 = zext i32 %14 to i64, !dbg !325
  %16 = shl nuw nsw i64 %15, 3, !dbg !325
  %17 = add nsw i64 %13, %15, !dbg !325
  %18 = sub nsw i64 %12, %17, !dbg !325
  %19 = shl nsw i64 %18, 3, !dbg !325
  %20 = getelementptr i8, ptr %3, i64 %19, !dbg !325
  %21 = add nuw nsw i64 %16, 8, !dbg !325
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %20, i8 0, i64 %21, i1 false), !dbg !327, !tbaa !224
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !302, metadata !DIExpression()), !dbg !324
  br label %22, !dbg !330

22:                                               ; preds = %11, %10
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 152, i32 noundef 1) #6, !dbg !330
  br label %76

23:                                               ; preds = %4
  %24 = fcmp oeq double %2, 0.000000e+00, !dbg !332
  br i1 %24, label %25, label %38, !dbg !333

25:                                               ; preds = %23
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !305, metadata !DIExpression()), !dbg !334
  %26 = sext i32 %1 to i64, !dbg !335
  %27 = zext nneg i32 %0 to i64, !dbg !335
  %28 = sub i32 %1, %0, !dbg !335
  %29 = zext i32 %28 to i64, !dbg !335
  %30 = shl nuw nsw i64 %29, 3, !dbg !335
  %31 = add nuw nsw i64 %27, %29, !dbg !335
  %32 = sub nsw i64 %26, %31, !dbg !335
  %33 = shl nsw i64 %32, 3, !dbg !335
  %34 = getelementptr i8, ptr %3, i64 %33, !dbg !335
  %35 = add nuw nsw i64 %30, 8, !dbg !335
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %34, i8 0, i64 %35, i1 false), !dbg !337, !tbaa !224
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !305, metadata !DIExpression()), !dbg !334
  %36 = icmp eq i32 %0, 0, !dbg !340
  br i1 %36, label %37, label %76, !dbg !342

37:                                               ; preds = %25
  store double 1.000000e+00, ptr %3, align 8, !dbg !343, !tbaa !224
  br label %76, !dbg !344

38:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #6, !dbg !345
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #6, !dbg !346
  %39 = add nuw nsw i32 %1, 1, !dbg !347
  %40 = call i32 @gsl_sf_bessel_Jn_e(i32 noundef %39, double noundef %2, ptr noundef nonnull %5), !dbg !348
  tail call void @llvm.dbg.value(metadata i32 %40, metadata !311, metadata !DIExpression()), !dbg !319
  %41 = call i32 @gsl_sf_bessel_Jn_e(i32 noundef %1, double noundef %2, ptr noundef nonnull %6), !dbg !349
  tail call void @llvm.dbg.value(metadata i32 %41, metadata !312, metadata !DIExpression()), !dbg !319
  %42 = icmp eq i32 %40, 0, !dbg !350
  %43 = select i1 %42, i32 %41, i32 %40, !dbg !350
  tail call void @llvm.dbg.value(metadata i32 %43, metadata !313, metadata !DIExpression()), !dbg !319
  tail call void @llvm.dbg.value(metadata double poison, metadata !314, metadata !DIExpression()), !dbg !319
  tail call void @llvm.dbg.value(metadata double poison, metadata !315, metadata !DIExpression()), !dbg !319
  %44 = icmp eq i32 %43, 0, !dbg !351
  br i1 %44, label %56, label %45, !dbg !353

45:                                               ; preds = %38
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !317, metadata !DIExpression()), !dbg !319
  %46 = sext i32 %1 to i64, !dbg !354
  %47 = zext nneg i32 %0 to i64, !dbg !354
  %48 = sub i32 %1, %0, !dbg !354
  %49 = zext i32 %48 to i64, !dbg !354
  %50 = shl nuw nsw i64 %49, 3, !dbg !354
  %51 = add nuw nsw i64 %47, %49, !dbg !354
  %52 = sub nsw i64 %46, %51, !dbg !354
  %53 = shl nsw i64 %52, 3, !dbg !354
  %54 = getelementptr i8, ptr %3, i64 %53, !dbg !354
  %55 = add nuw nsw i64 %50, 8, !dbg !354
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %54, i8 0, i64 %55, i1 false), !dbg !357, !tbaa !224
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !317, metadata !DIExpression()), !dbg !319
  br label %75, !dbg !360

56:                                               ; preds = %38
  tail call void @llvm.dbg.value(metadata double poison, metadata !314, metadata !DIExpression()), !dbg !319
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !317, metadata !DIExpression()), !dbg !319
  tail call void @llvm.dbg.value(metadata double poison, metadata !315, metadata !DIExpression()), !dbg !319
  %57 = load double, ptr %5, align 8, !dbg !361, !tbaa !153
  tail call void @llvm.dbg.value(metadata double %57, metadata !314, metadata !DIExpression()), !dbg !319
  %58 = load double, ptr %6, align 8, !dbg !362, !tbaa !153
  tail call void @llvm.dbg.value(metadata double %58, metadata !315, metadata !DIExpression()), !dbg !319
  %59 = sext i32 %1 to i64, !dbg !363
  %60 = zext nneg i32 %0 to i64, !dbg !363
  br label %61, !dbg !363

61:                                               ; preds = %56, %61
  %62 = phi i64 [ %59, %56 ], [ %73, %61 ]
  %63 = phi double [ %58, %56 ], [ %72, %61 ]
  %64 = phi double [ %57, %56 ], [ %63, %61 ]
  tail call void @llvm.dbg.value(metadata i64 %62, metadata !317, metadata !DIExpression()), !dbg !319
  tail call void @llvm.dbg.value(metadata double %63, metadata !315, metadata !DIExpression()), !dbg !319
  tail call void @llvm.dbg.value(metadata double %64, metadata !314, metadata !DIExpression()), !dbg !319
  %65 = sub nsw i64 %62, %60, !dbg !366
  %66 = getelementptr inbounds double, ptr %3, i64 %65, !dbg !369
  store double %63, ptr %66, align 8, !dbg !370, !tbaa !224
  %67 = trunc i64 %62 to i32, !dbg !371
  %68 = sitofp i32 %67 to double, !dbg !371
  %69 = fmul double %68, 2.000000e+00, !dbg !372
  %70 = fdiv double %69, %2, !dbg !373
  %71 = fmul double %63, %70, !dbg !374
  %72 = fsub double %71, %64, !dbg !375
  tail call void @llvm.dbg.value(metadata double %72, metadata !316, metadata !DIExpression()), !dbg !319
  tail call void @llvm.dbg.value(metadata double %63, metadata !314, metadata !DIExpression()), !dbg !319
  tail call void @llvm.dbg.value(metadata double %72, metadata !315, metadata !DIExpression()), !dbg !319
  %73 = add nsw i64 %62, -1, !dbg !376
  tail call void @llvm.dbg.value(metadata i64 %73, metadata !317, metadata !DIExpression()), !dbg !319
  %74 = icmp sgt i64 %62, %60, !dbg !377
  br i1 %74, label %61, label %75, !dbg !363, !llvm.loop !378

75:                                               ; preds = %61, %45
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #6, !dbg !360
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #6, !dbg !360
  br label %76

76:                                               ; preds = %25, %37, %22, %75
  %77 = phi i32 [ 1, %22 ], [ %43, %75 ], [ 0, %37 ], [ 0, %25 ], !dbg !380
  ret i32 %77, !dbg !381
}

declare !dbg !382 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_bessel_Jn(i32 noundef %0, double noundef %1) local_unnamed_addr #0 !dbg !387 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !395
  call void @llvm.dbg.assign(metadata i1 undef, metadata !393, metadata !DIExpression(), metadata !395, metadata ptr %3, metadata !DIExpression()), !dbg !396
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !391, metadata !DIExpression()), !dbg !396
  tail call void @llvm.dbg.value(metadata double %1, metadata !392, metadata !DIExpression()), !dbg !396
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6, !dbg !397
  %4 = call i32 @gsl_sf_bessel_Jn_e(i32 noundef %0, double noundef %1, ptr noundef nonnull %3), !dbg !397
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !394, metadata !DIExpression()), !dbg !396
  %5 = icmp eq i32 %4, 0, !dbg !398
  br i1 %5, label %7, label %6, !dbg !397

6:                                                ; preds = %2
  call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 198, i32 noundef %4) #6, !dbg !400
  br label %7, !dbg !400

7:                                                ; preds = %2, %6
  %8 = load double, ptr %3, align 8, !dbg !397, !tbaa !153
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6, !dbg !403
  ret double %8, !dbg !403
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind }

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
!182 = !DILocation(line: 74, column: 26, scope: !94)
!183 = !DILocation(line: 74, column: 23, scope: !94)
!184 = !DILocation(line: 74, column: 31, scope: !94)
!185 = !DILocation(line: 74, column: 17, scope: !94)
!186 = !DILocation(line: 74, column: 13, scope: !95)
!187 = !DILocation(line: 75, column: 7, scope: !93)
!188 = !DILocation(line: 76, column: 20, scope: !93)
!189 = !DILocation(line: 77, column: 22, scope: !93)
!190 = !DILocation(line: 77, column: 31, scope: !93)
!191 = !DILocation(line: 77, column: 27, scope: !93)
!192 = !DILocation(line: 77, column: 20, scope: !93)
!193 = !DILocation(line: 78, column: 24, scope: !93)
!194 = !DILocation(line: 78, column: 15, scope: !93)
!195 = !DILocation(line: 79, column: 40, scope: !93)
!196 = !DILocation(line: 79, column: 38, scope: !93)
!197 = !DILocation(line: 79, column: 19, scope: !93)
!198 = !DILocation(line: 81, column: 5, scope: !94)
!199 = !DILocation(line: 82, column: 35, scope: !100)
!200 = !DILocation(line: 82, column: 43, scope: !100)
!201 = !DILocation(line: 82, column: 45, scope: !100)
!202 = !DILocation(line: 82, column: 39, scope: !100)
!203 = !DILocation(line: 82, column: 13, scope: !94)
!204 = !DILocation(line: 83, column: 20, scope: !99)
!205 = !DILocation(line: 0, scope: !99)
!206 = !DILocation(line: 84, column: 22, scope: !99)
!207 = !DILocation(line: 84, column: 19, scope: !99)
!208 = !DILocation(line: 87, column: 15, scope: !103)
!209 = !DILocation(line: 87, column: 13, scope: !100)
!210 = !DILocation(line: 88, column: 20, scope: !102)
!211 = !DILocation(line: 0, scope: !102)
!212 = !DILocation(line: 89, column: 22, scope: !102)
!213 = !DILocation(line: 89, column: 19, scope: !102)
!214 = !DILocation(line: 92, column: 15, scope: !106)
!215 = !DILocation(line: 92, column: 13, scope: !103)
!216 = !DILocation(line: 97, column: 20, scope: !105)
!217 = !DILocation(line: 0, scope: !105)
!218 = !DILocation(line: 98, column: 22, scope: !105)
!219 = !DILocation(line: 98, column: 19, scope: !105)
!220 = !DILocation(line: 104, column: 7, scope: !108)
!221 = !DILocation(line: 105, column: 7, scope: !108)
!222 = !DILocation(line: 107, column: 22, scope: !108)
!223 = !DILocation(line: 110, column: 40, scope: !108)
!224 = !{!155, !155, i64 0}
!225 = !DILocation(line: 110, column: 38, scope: !108)
!226 = !DILocation(line: 115, column: 17, scope: !227)
!227 = distinct !DILexicalBlock(scope: !228, file: !2, line: 115, column: 7)
!228 = distinct !DILexicalBlock(scope: !108, file: !2, line: 115, column: 7)
!229 = !DILocation(line: 115, column: 7, scope: !228)
!230 = !DILocation(line: 116, column: 20, scope: !231)
!231 = distinct !DILexicalBlock(scope: !227, file: !2, line: 115, column: 26)
!232 = !DILocation(line: 116, column: 19, scope: !231)
!233 = !DILocation(line: 116, column: 21, scope: !231)
!234 = !DILocation(line: 116, column: 24, scope: !231)
!235 = !DILocation(line: 116, column: 29, scope: !231)
!236 = !DILocation(line: 115, column: 22, scope: !227)
!237 = distinct !{!237, !238}
!238 = !{!"llvm.loop.unroll.disable"}
!239 = distinct !{!239, !229, !240, !241}
!240 = !DILocation(line: 119, column: 7, scope: !228)
!241 = !{!"llvm.loop.mustprogress"}
!242 = !DILocation(line: 121, column: 10, scope: !120)
!243 = !DILocation(line: 121, column: 23, scope: !120)
!244 = !DILocation(line: 121, column: 21, scope: !120)
!245 = !DILocation(line: 121, column: 10, scope: !108)
!246 = !DILocation(line: 122, column: 9, scope: !119)
!247 = !DILocation(line: 123, column: 18, scope: !119)
!248 = !DILocation(line: 124, column: 18, scope: !119)
!249 = !DILocation(line: 124, column: 21, scope: !119)
!250 = !DILocation(line: 125, column: 18, scope: !119)
!251 = !DILocation(line: 125, column: 21, scope: !119)
!252 = !DILocation(line: 126, column: 7, scope: !120)
!253 = !DILocation(line: 126, column: 7, scope: !119)
!254 = !DILocation(line: 128, column: 9, scope: !122)
!255 = !DILocation(line: 129, column: 18, scope: !122)
!256 = !DILocation(line: 130, column: 18, scope: !122)
!257 = !DILocation(line: 130, column: 21, scope: !122)
!258 = !DILocation(line: 131, column: 18, scope: !122)
!259 = !DILocation(line: 131, column: 21, scope: !122)
!260 = !DILocation(line: 132, column: 7, scope: !120)
!261 = !DILocation(line: 0, scope: !120)
!262 = !DILocation(line: 134, column: 21, scope: !108)
!263 = !DILocation(line: 134, column: 26, scope: !108)
!264 = !DILocation(line: 134, column: 19, scope: !108)
!265 = !DILocation(line: 135, column: 21, scope: !108)
!266 = !DILocation(line: 135, column: 15, scope: !108)
!267 = !DILocation(line: 135, column: 19, scope: !108)
!268 = !DILocation(line: 136, column: 14, scope: !108)
!269 = !DILocation(line: 137, column: 5, scope: !106)
!270 = !DILocation(line: 0, scope: !86)
!271 = !DILocation(line: 139, column: 1, scope: !69)
!272 = !DISubprogram(name: "gsl_sf_bessel_J0_e", scope: !273, file: !273, line: 47, type: !274, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!273 = !DIFile(filename: "../gsl/gsl_sf_bessel.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "45459f63edc3203df6c715a25160d493")
!274 = !DISubroutineType(types: !275)
!275 = !{!21, !276, !72}
!276 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !59)
!277 = !DISubprogram(name: "gsl_sf_bessel_J1_e", scope: !273, file: !273, line: 55, type: !274, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!278 = !DISubprogram(name: "gsl_sf_bessel_IJ_taylor_e", scope: !279, file: !279, line: 32, type: !280, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!279 = !DIFile(filename: "./bessel.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "57b96fff5bee18a41e1173dbca5404a0")
!280 = !DISubroutineType(types: !281)
!281 = !{!21, !276, !276, !282, !282, !276, !72}
!282 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!283 = !DISubprogram(name: "gsl_sf_bessel_Jnu_asympx_e", scope: !279, file: !279, line: 39, type: !284, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!284 = !DISubroutineType(types: !285)
!285 = !{!21, !276, !276, !72}
!286 = !DISubprogram(name: "gsl_sf_bessel_Jnu_asymp_Olver_e", scope: !287, file: !287, line: 27, type: !288, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!287 = !DIFile(filename: "./bessel_olver.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "ec509d1b6cab5ef68906304c5e69a8d7")
!288 = !DISubroutineType(types: !289)
!289 = !{!21, !59, !59, !72}
!290 = !DISubprogram(name: "gsl_sf_bessel_J_CF1", scope: !279, file: !279, line: 56, type: !291, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!291 = !DISubroutineType(types: !292)
!292 = !{!21, !276, !276, !293, !293}
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!294 = distinct !DISubprogram(name: "gsl_sf_bessel_Jn_array", scope: !2, file: !2, line: 143, type: !295, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !297)
!295 = !DISubroutineType(types: !296)
!296 = !{!21, !21, !21, !59, !293}
!297 = !{!298, !299, !300, !301, !302, !305, !308, !310, !311, !312, !313, !314, !315, !316, !317}
!298 = !DILocalVariable(name: "nmin", arg: 1, scope: !294, file: !2, line: 143, type: !21)
!299 = !DILocalVariable(name: "nmax", arg: 2, scope: !294, file: !2, line: 143, type: !21)
!300 = !DILocalVariable(name: "x", arg: 3, scope: !294, file: !2, line: 143, type: !59)
!301 = !DILocalVariable(name: "result_array", arg: 4, scope: !294, file: !2, line: 143, type: !293)
!302 = !DILocalVariable(name: "n", scope: !303, file: !2, line: 148, type: !21)
!303 = distinct !DILexicalBlock(scope: !304, file: !2, line: 147, column: 31)
!304 = distinct !DILexicalBlock(scope: !294, file: !2, line: 147, column: 6)
!305 = !DILocalVariable(name: "n", scope: !306, file: !2, line: 155, type: !21)
!306 = distinct !DILexicalBlock(scope: !307, file: !2, line: 154, column: 21)
!307 = distinct !DILexicalBlock(scope: !304, file: !2, line: 154, column: 11)
!308 = !DILocalVariable(name: "r_Jnp1", scope: !309, file: !2, line: 163, type: !73)
!309 = distinct !DILexicalBlock(scope: !307, file: !2, line: 162, column: 8)
!310 = !DILocalVariable(name: "r_Jn", scope: !309, file: !2, line: 164, type: !73)
!311 = !DILocalVariable(name: "stat_np1", scope: !309, file: !2, line: 165, type: !21)
!312 = !DILocalVariable(name: "stat_n", scope: !309, file: !2, line: 166, type: !21)
!313 = !DILocalVariable(name: "stat", scope: !309, file: !2, line: 167, type: !21)
!314 = !DILocalVariable(name: "Jnp1", scope: !309, file: !2, line: 169, type: !59)
!315 = !DILocalVariable(name: "Jn", scope: !309, file: !2, line: 170, type: !59)
!316 = !DILocalVariable(name: "Jnm1", scope: !309, file: !2, line: 171, type: !59)
!317 = !DILocalVariable(name: "n", scope: !309, file: !2, line: 172, type: !21)
!318 = distinct !DIAssignID()
!319 = !DILocation(line: 0, scope: !309)
!320 = distinct !DIAssignID()
!321 = !DILocation(line: 0, scope: !294)
!322 = !DILocation(line: 147, column: 11, scope: !304)
!323 = !DILocation(line: 147, column: 15, scope: !304)
!324 = !DILocation(line: 0, scope: !303)
!325 = !DILocation(line: 149, column: 5, scope: !326)
!326 = distinct !DILexicalBlock(scope: !303, file: !2, line: 149, column: 5)
!327 = !DILocation(line: 150, column: 28, scope: !328)
!328 = distinct !DILexicalBlock(scope: !329, file: !2, line: 149, column: 31)
!329 = distinct !DILexicalBlock(scope: !326, file: !2, line: 149, column: 5)
!330 = !DILocation(line: 152, column: 5, scope: !331)
!331 = distinct !DILexicalBlock(scope: !303, file: !2, line: 152, column: 5)
!332 = !DILocation(line: 154, column: 13, scope: !307)
!333 = !DILocation(line: 154, column: 11, scope: !304)
!334 = !DILocation(line: 0, scope: !306)
!335 = !DILocation(line: 156, column: 5, scope: !336)
!336 = distinct !DILexicalBlock(scope: !306, file: !2, line: 156, column: 5)
!337 = !DILocation(line: 157, column: 28, scope: !338)
!338 = distinct !DILexicalBlock(scope: !339, file: !2, line: 156, column: 31)
!339 = distinct !DILexicalBlock(scope: !336, file: !2, line: 156, column: 5)
!340 = !DILocation(line: 159, column: 13, scope: !341)
!341 = distinct !DILexicalBlock(scope: !306, file: !2, line: 159, column: 8)
!342 = !DILocation(line: 159, column: 8, scope: !306)
!343 = !DILocation(line: 159, column: 35, scope: !341)
!344 = !DILocation(line: 159, column: 19, scope: !341)
!345 = !DILocation(line: 163, column: 5, scope: !309)
!346 = !DILocation(line: 164, column: 5, scope: !309)
!347 = !DILocation(line: 165, column: 43, scope: !309)
!348 = !DILocation(line: 165, column: 20, scope: !309)
!349 = !DILocation(line: 166, column: 20, scope: !309)
!350 = !DILocation(line: 167, column: 16, scope: !309)
!351 = !DILocation(line: 174, column: 13, scope: !352)
!352 = distinct !DILexicalBlock(scope: !309, file: !2, line: 174, column: 8)
!353 = !DILocation(line: 174, column: 8, scope: !309)
!354 = !DILocation(line: 183, column: 7, scope: !355)
!355 = distinct !DILexicalBlock(scope: !356, file: !2, line: 183, column: 7)
!356 = distinct !DILexicalBlock(scope: !352, file: !2, line: 182, column: 10)
!357 = !DILocation(line: 184, column: 30, scope: !358)
!358 = distinct !DILexicalBlock(scope: !359, file: !2, line: 183, column: 33)
!359 = distinct !DILexicalBlock(scope: !355, file: !2, line: 183, column: 7)
!360 = !DILocation(line: 189, column: 3, scope: !307)
!361 = !DILocation(line: 169, column: 26, scope: !309)
!362 = !DILocation(line: 170, column: 24, scope: !309)
!363 = !DILocation(line: 175, column: 7, scope: !364)
!364 = distinct !DILexicalBlock(scope: !365, file: !2, line: 175, column: 7)
!365 = distinct !DILexicalBlock(scope: !352, file: !2, line: 174, column: 29)
!366 = !DILocation(line: 176, column: 23, scope: !367)
!367 = distinct !DILexicalBlock(scope: !368, file: !2, line: 175, column: 33)
!368 = distinct !DILexicalBlock(scope: !364, file: !2, line: 175, column: 7)
!369 = !DILocation(line: 176, column: 9, scope: !367)
!370 = !DILocation(line: 176, column: 30, scope: !367)
!371 = !DILocation(line: 177, column: 28, scope: !367)
!372 = !DILocation(line: 177, column: 27, scope: !367)
!373 = !DILocation(line: 177, column: 29, scope: !367)
!374 = !DILocation(line: 177, column: 32, scope: !367)
!375 = !DILocation(line: 177, column: 22, scope: !367)
!376 = !DILocation(line: 175, column: 29, scope: !368)
!377 = !DILocation(line: 175, column: 20, scope: !368)
!378 = distinct !{!378, !363, !379, !241}
!379 = !DILocation(line: 180, column: 7, scope: !364)
!380 = !DILocation(line: 0, scope: !304)
!381 = !DILocation(line: 190, column: 1, scope: !294)
!382 = !DISubprogram(name: "gsl_error", scope: !20, file: !20, line: 77, type: !383, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!383 = !DISubroutineType(types: !384)
!384 = !{null, !385, !385, !21, !21}
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!386 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!387 = distinct !DISubprogram(name: "gsl_sf_bessel_Jn", scope: !2, file: !2, line: 196, type: !388, scopeLine: 197, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !390)
!388 = !DISubroutineType(types: !389)
!389 = !{!59, !282, !276}
!390 = !{!391, !392, !393, !394}
!391 = !DILocalVariable(name: "n", arg: 1, scope: !387, file: !2, line: 196, type: !282)
!392 = !DILocalVariable(name: "x", arg: 2, scope: !387, file: !2, line: 196, type: !276)
!393 = !DILocalVariable(name: "result", scope: !387, file: !2, line: 198, type: !73)
!394 = !DILocalVariable(name: "status", scope: !387, file: !2, line: 198, type: !21)
!395 = distinct !DIAssignID()
!396 = !DILocation(line: 0, scope: !387)
!397 = !DILocation(line: 198, column: 3, scope: !387)
!398 = !DILocation(line: 198, column: 3, scope: !399)
!399 = distinct !DILexicalBlock(scope: !387, file: !2, line: 198, column: 3)
!400 = !DILocation(line: 198, column: 3, scope: !401)
!401 = distinct !DILexicalBlock(scope: !402, file: !2, line: 198, column: 3)
!402 = distinct !DILexicalBlock(scope: !399, file: !2, line: 198, column: 3)
!403 = !DILocation(line: 199, column: 1, scope: !387)
