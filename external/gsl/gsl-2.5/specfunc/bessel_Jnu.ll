; ModuleID = 'bessel_Jnu.c'
source_filename = "bessel_Jnu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [13 x i8] c"domain error\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [13 x i8] c"bessel_Jnu.c\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [36 x i8] c"gsl_sf_bessel_Jnu_e(nu, x, &result)\00", align 1, !dbg !9

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_bessel_Jnupos_e(double noundef %0, double noundef %1, ptr noundef %2) local_unnamed_addr #0 !dbg !65 {
  %4 = alloca double, align 8, !DIAssignID !114
  call void @llvm.dbg.assign(metadata i1 undef, metadata !88, metadata !DIExpression(), metadata !114, metadata ptr %4, metadata !DIExpression()), !dbg !115
  %5 = alloca double, align 8, !DIAssignID !116
  call void @llvm.dbg.assign(metadata i1 undef, metadata !89, metadata !DIExpression(), metadata !116, metadata ptr %5, metadata !DIExpression()), !dbg !115
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !117
  call void @llvm.dbg.assign(metadata i1 undef, metadata !92, metadata !DIExpression(), metadata !117, metadata ptr %6, metadata !DIExpression()), !dbg !118
  %7 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !119
  call void @llvm.dbg.assign(metadata i1 undef, metadata !95, metadata !DIExpression(), metadata !119, metadata ptr %7, metadata !DIExpression()), !dbg !118
  %8 = alloca double, align 8, !DIAssignID !120
  call void @llvm.dbg.assign(metadata i1 undef, metadata !106, metadata !DIExpression(), metadata !120, metadata ptr %8, metadata !DIExpression()), !dbg !121
  %9 = alloca double, align 8, !DIAssignID !122
  call void @llvm.dbg.assign(metadata i1 undef, metadata !107, metadata !DIExpression(), metadata !122, metadata ptr %9, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata double %0, metadata !78, metadata !DIExpression()), !dbg !123
  tail call void @llvm.dbg.value(metadata double %1, metadata !79, metadata !DIExpression()), !dbg !123
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !80, metadata !DIExpression()), !dbg !123
  %10 = fcmp oeq double %1, 0.000000e+00, !dbg !124
  br i1 %10, label %11, label %16, !dbg !125

11:                                               ; preds = %3
  %12 = fcmp oeq double %0, 0.000000e+00, !dbg !126
  br i1 %12, label %13, label %15, !dbg !129

13:                                               ; preds = %11
  store double 1.000000e+00, ptr %2, align 8, !dbg !130, !tbaa !132
  %14 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !137
  store double 0.000000e+00, ptr %14, align 8, !dbg !138, !tbaa !139
  br label %175, !dbg !140

15:                                               ; preds = %11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !dbg !141
  br label %175

16:                                               ; preds = %3
  %17 = fmul double %1, %1, !dbg !143
  %18 = fadd double %0, 1.000000e+00, !dbg !144
  %19 = fmul double %18, 1.000000e+01, !dbg !145
  %20 = fcmp olt double %17, %19, !dbg !146
  br i1 %20, label %21, label %23, !dbg !147

21:                                               ; preds = %16
  %22 = tail call i32 @gsl_sf_bessel_IJ_taylor_e(double noundef %0, double noundef %1, i32 noundef -1, i32 noundef 100, double noundef 0x3CB0000000000000, ptr noundef %2) #7, !dbg !148
  br label %175, !dbg !150

23:                                               ; preds = %16
  %24 = fcmp ogt double %0, 5.000000e+01, !dbg !151
  br i1 %24, label %25, label %27, !dbg !152

25:                                               ; preds = %23
  %26 = tail call i32 @gsl_sf_bessel_Jnu_asymp_Olver_e(double noundef %0, double noundef %1, ptr noundef %2) #7, !dbg !153
  br label %175, !dbg !155

27:                                               ; preds = %23
  %28 = fcmp ogt double %1, 1.000000e+03, !dbg !156
  br i1 %28, label %29, label %31, !dbg !157

29:                                               ; preds = %27
  %30 = tail call i32 @gsl_sf_bessel_Jnu_asympx_e(double noundef %0, double noundef %1, ptr noundef %2) #7, !dbg !158
  br label %175, !dbg !160

31:                                               ; preds = %27
  %32 = fadd double %0, 5.000000e-01, !dbg !161
  %33 = fptosi double %32 to i32, !dbg !162
  tail call void @llvm.dbg.value(metadata i32 %33, metadata !81, metadata !DIExpression()), !dbg !115
  %34 = sitofp i32 %33 to double, !dbg !163
  %35 = fsub double %0, %34, !dbg !164
  tail call void @llvm.dbg.value(metadata double %35, metadata !87, metadata !DIExpression()), !dbg !115
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #7, !dbg !165
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #7, !dbg !166
  %36 = call i32 @gsl_sf_bessel_J_CF1(double noundef %0, double noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %5) #7, !dbg !167
  tail call void @llvm.dbg.value(metadata i32 %36, metadata !90, metadata !DIExpression()), !dbg !115
  %37 = fcmp olt double %1, 2.000000e+00, !dbg !168
  br i1 %37, label %38, label %100, !dbg !169

38:                                               ; preds = %31
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #7, !dbg !170
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #7, !dbg !170
  %39 = call i32 @gsl_sf_bessel_Y_temme(double noundef %35, double noundef %1, ptr noundef nonnull %6, ptr noundef nonnull %7) #7, !dbg !171
  tail call void @llvm.dbg.value(metadata i32 %39, metadata !96, metadata !DIExpression()), !dbg !118
  tail call void @llvm.dbg.value(metadata double poison, metadata !97, metadata !DIExpression()), !dbg !118
  %40 = load double, ptr %7, align 8, !dbg !172, !tbaa !132
  tail call void @llvm.dbg.value(metadata double %40, metadata !98, metadata !DIExpression()), !dbg !118
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !99, metadata !DIExpression()), !dbg !118
  tail call void @llvm.dbg.value(metadata i32 1, metadata !100, metadata !DIExpression()), !dbg !118
  tail call void @llvm.dbg.value(metadata double poison, metadata !97, metadata !DIExpression()), !dbg !118
  %41 = icmp sgt i32 %33, 1, !dbg !173
  br i1 %41, label %42, label %84, !dbg !176

42:                                               ; preds = %38
  %43 = load double, ptr %6, align 8, !dbg !177, !tbaa !132
  tail call void @llvm.dbg.value(metadata double %43, metadata !97, metadata !DIExpression()), !dbg !118
  %44 = add nsw i32 %33, -1, !dbg !176
  %45 = and i32 %44, 1, !dbg !176
  %46 = icmp eq i32 %33, 2, !dbg !176
  br i1 %46, label %72, label %47, !dbg !176

47:                                               ; preds = %42
  %48 = and i32 %44, -2, !dbg !176
  br label %49, !dbg !176

49:                                               ; preds = %49, %47
  %50 = phi double [ %43, %47 ], [ %59, %49 ]
  %51 = phi double [ %40, %47 ], [ %66, %49 ]
  %52 = phi i32 [ 1, %47 ], [ %67, %49 ]
  %53 = phi i32 [ 0, %47 ], [ %68, %49 ]
  tail call void @llvm.dbg.value(metadata double %50, metadata !97, metadata !DIExpression()), !dbg !118
  tail call void @llvm.dbg.value(metadata double %51, metadata !98, metadata !DIExpression()), !dbg !118
  tail call void @llvm.dbg.value(metadata i32 %52, metadata !100, metadata !DIExpression()), !dbg !118
  %54 = sitofp i32 %52 to double, !dbg !178
  %55 = fadd double %35, %54, !dbg !180
  %56 = fmul double %55, 2.000000e+00, !dbg !181
  %57 = fdiv double %56, %1, !dbg !182
  %58 = fmul double %51, %57, !dbg !183
  %59 = fsub double %58, %50, !dbg !184
  tail call void @llvm.dbg.value(metadata double %59, metadata !99, metadata !DIExpression()), !dbg !118
  tail call void @llvm.dbg.value(metadata double %51, metadata !97, metadata !DIExpression()), !dbg !118
  tail call void @llvm.dbg.value(metadata double %59, metadata !98, metadata !DIExpression()), !dbg !118
  %60 = add nuw nsw i32 %52, 1, !dbg !185
  tail call void @llvm.dbg.value(metadata i32 %60, metadata !100, metadata !DIExpression()), !dbg !118
  tail call void @llvm.dbg.value(metadata double %51, metadata !97, metadata !DIExpression()), !dbg !118
  tail call void @llvm.dbg.value(metadata double %59, metadata !98, metadata !DIExpression()), !dbg !118
  tail call void @llvm.dbg.value(metadata i32 %60, metadata !100, metadata !DIExpression()), !dbg !118
  %61 = sitofp i32 %60 to double, !dbg !178
  %62 = fadd double %35, %61, !dbg !180
  %63 = fmul double %62, 2.000000e+00, !dbg !181
  %64 = fdiv double %63, %1, !dbg !182
  %65 = fmul double %59, %64, !dbg !183
  %66 = fsub double %65, %51, !dbg !184
  tail call void @llvm.dbg.value(metadata double %66, metadata !99, metadata !DIExpression()), !dbg !118
  tail call void @llvm.dbg.value(metadata double %59, metadata !97, metadata !DIExpression()), !dbg !118
  tail call void @llvm.dbg.value(metadata double %66, metadata !98, metadata !DIExpression()), !dbg !118
  %67 = add nuw nsw i32 %52, 2, !dbg !185
  tail call void @llvm.dbg.value(metadata i32 %67, metadata !100, metadata !DIExpression()), !dbg !118
  %68 = add i32 %53, 2, !dbg !176
  %69 = icmp eq i32 %68, %48, !dbg !176
  br i1 %69, label %70, label %49, !dbg !176, !llvm.loop !186

70:                                               ; preds = %49
  %71 = sitofp i32 %67 to double, !dbg !178
  br label %72, !dbg !176

72:                                               ; preds = %70, %42
  %73 = phi double [ undef, %42 ], [ %66, %70 ]
  %74 = phi double [ %43, %42 ], [ %59, %70 ]
  %75 = phi double [ %40, %42 ], [ %66, %70 ]
  %76 = phi double [ 1.000000e+00, %42 ], [ %71, %70 ]
  %77 = icmp eq i32 %45, 0, !dbg !176
  br i1 %77, label %84, label %78, !dbg !176

78:                                               ; preds = %72
  tail call void @llvm.dbg.value(metadata double %74, metadata !97, metadata !DIExpression()), !dbg !118
  tail call void @llvm.dbg.value(metadata double %75, metadata !98, metadata !DIExpression()), !dbg !118
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !100, metadata !DIExpression()), !dbg !118
  %79 = fadd double %35, %76, !dbg !180
  %80 = fmul double %79, 2.000000e+00, !dbg !181
  %81 = fdiv double %80, %1, !dbg !182
  %82 = fmul double %75, %81, !dbg !183
  %83 = fsub double %82, %74, !dbg !184
  tail call void @llvm.dbg.value(metadata double %83, metadata !99, metadata !DIExpression()), !dbg !118
  tail call void @llvm.dbg.value(metadata double %75, metadata !97, metadata !DIExpression()), !dbg !118
  tail call void @llvm.dbg.value(metadata double %83, metadata !98, metadata !DIExpression()), !dbg !118
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !100, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !118
  br label %84, !dbg !189

84:                                               ; preds = %78, %72, %38
  %85 = phi double [ 0.000000e+00, %38 ], [ %73, %72 ], [ %83, %78 ], !dbg !118
  %86 = phi double [ %40, %38 ], [ %73, %72 ], [ %83, %78 ], !dbg !118
  %87 = fmul double %1, 0x400921FB54442D18, !dbg !189
  %88 = fdiv double 2.000000e+00, %87, !dbg !190
  %89 = load double, ptr %4, align 8, !dbg !191, !tbaa !192
  %90 = fmul double %86, %89, !dbg !193
  %91 = fsub double %90, %85, !dbg !194
  %92 = fdiv double %88, %91, !dbg !195
  store double %92, ptr %2, align 8, !dbg !196, !tbaa !132
  %93 = fadd double %34, 2.000000e+00, !dbg !197
  %94 = fmul double %93, 0x3CB0000000000000, !dbg !198
  %95 = call double @llvm.fabs.f64(double %92), !dbg !199
  %96 = fmul double %94, %95, !dbg !200
  %97 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !201
  store double %96, ptr %97, align 8, !dbg !202, !tbaa !139
  %98 = icmp eq i32 %39, 0, !dbg !203
  %99 = select i1 %98, i32 %36, i32 %39, !dbg !203
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #7, !dbg !204
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #7, !dbg !204
  br label %173

100:                                              ; preds = %31
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #7, !dbg !205
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #7, !dbg !205
  %101 = call i32 @gsl_sf_bessel_JY_steed_CF2(double noundef %35, double noundef %1, ptr noundef nonnull %8, ptr noundef nonnull %9) #7, !dbg !206
  tail call void @llvm.dbg.value(metadata i32 %101, metadata !108, metadata !DIExpression()), !dbg !121
  %102 = load double, ptr %5, align 8, !dbg !207, !tbaa !192
  %103 = fmul double %102, 0x2000000000000000, !dbg !208
  %104 = load double, ptr %4, align 8, !dbg !209, !tbaa !192
  %105 = fmul double %103, %104, !dbg !210
  tail call void @llvm.dbg.value(metadata double %105, metadata !110, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata double %103, metadata !111, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata i32 %33, metadata !113, metadata !DIExpression()), !dbg !121
  %106 = icmp sgt i32 %33, 0, !dbg !211
  br i1 %106, label %107, label %143, !dbg !214

107:                                              ; preds = %100
  %108 = and i32 %33, 1, !dbg !214
  %109 = icmp eq i32 %108, 0, !dbg !214
  br i1 %109, label %118, label %110, !dbg !214

110:                                              ; preds = %107
  tail call void @llvm.dbg.value(metadata i32 %33, metadata !113, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata double %103, metadata !111, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata double %105, metadata !110, metadata !DIExpression()), !dbg !121
  %111 = sitofp i32 %33 to double, !dbg !215
  %112 = fadd double %35, %111, !dbg !217
  %113 = fmul double %112, 2.000000e+00, !dbg !218
  %114 = fdiv double %113, %1, !dbg !219
  %115 = fmul double %103, %114, !dbg !220
  %116 = fsub double %115, %105, !dbg !221
  tail call void @llvm.dbg.value(metadata double %116, metadata !112, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata double %103, metadata !110, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata double %116, metadata !111, metadata !DIExpression()), !dbg !121
  %117 = add nsw i32 %33, -1, !dbg !222
  tail call void @llvm.dbg.value(metadata i32 %117, metadata !113, metadata !DIExpression()), !dbg !121
  br label %118, !dbg !214

118:                                              ; preds = %110, %107
  %119 = phi i32 [ %33, %107 ], [ %117, %110 ]
  %120 = phi double [ %103, %107 ], [ %116, %110 ]
  %121 = phi double [ %105, %107 ], [ %103, %110 ]
  %122 = phi double [ undef, %107 ], [ %116, %110 ]
  %123 = icmp eq i32 %33, 1, !dbg !214
  br i1 %123, label %143, label %124, !dbg !214

124:                                              ; preds = %118, %124
  %125 = phi i32 [ %141, %124 ], [ %119, %118 ]
  %126 = phi double [ %140, %124 ], [ %120, %118 ]
  %127 = phi double [ %133, %124 ], [ %121, %118 ]
  tail call void @llvm.dbg.value(metadata i32 %125, metadata !113, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata double %126, metadata !111, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata double %127, metadata !110, metadata !DIExpression()), !dbg !121
  %128 = sitofp i32 %125 to double, !dbg !215
  %129 = fadd double %35, %128, !dbg !217
  %130 = fmul double %129, 2.000000e+00, !dbg !218
  %131 = fdiv double %130, %1, !dbg !219
  %132 = fmul double %126, %131, !dbg !220
  %133 = fsub double %132, %127, !dbg !221
  tail call void @llvm.dbg.value(metadata double %133, metadata !112, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata double %126, metadata !110, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata double %133, metadata !111, metadata !DIExpression()), !dbg !121
  %134 = add nsw i32 %125, -1, !dbg !222
  tail call void @llvm.dbg.value(metadata i32 %134, metadata !113, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata i32 %134, metadata !113, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata double %133, metadata !111, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata double %126, metadata !110, metadata !DIExpression()), !dbg !121
  %135 = sitofp i32 %134 to double, !dbg !215
  %136 = fadd double %35, %135, !dbg !217
  %137 = fmul double %136, 2.000000e+00, !dbg !218
  %138 = fdiv double %137, %1, !dbg !219
  %139 = fmul double %133, %138, !dbg !220
  %140 = fsub double %139, %126, !dbg !221
  tail call void @llvm.dbg.value(metadata double %140, metadata !112, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata double %133, metadata !110, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata double %140, metadata !111, metadata !DIExpression()), !dbg !121
  %141 = add nsw i32 %125, -2, !dbg !222
  tail call void @llvm.dbg.value(metadata i32 %141, metadata !113, metadata !DIExpression()), !dbg !121
  %142 = icmp ugt i32 %134, 1, !dbg !211
  br i1 %142, label %124, label %143, !dbg !214, !llvm.loop !223

143:                                              ; preds = %118, %124, %100
  %144 = phi double [ %105, %100 ], [ %103, %118 ], [ %133, %124 ], !dbg !121
  %145 = phi double [ %103, %100 ], [ %122, %118 ], [ %140, %124 ], !dbg !121
  %146 = fdiv double %144, %145, !dbg !225
  tail call void @llvm.dbg.value(metadata double %146, metadata !103, metadata !DIExpression()), !dbg !121
  %147 = fcmp oge double %145, 0.000000e+00, !dbg !226
  tail call void @llvm.dbg.value(metadata double poison, metadata !104, metadata !DIExpression()), !dbg !121
  %148 = fdiv double %35, %1, !dbg !227
  %149 = fsub double %148, %146, !dbg !228
  tail call void @llvm.dbg.value(metadata double %149, metadata !105, metadata !DIExpression()), !dbg !121
  %150 = load double, ptr %8, align 8, !dbg !229, !tbaa !192
  %151 = fsub double %150, %149, !dbg !230
  %152 = load double, ptr %9, align 8, !dbg !231, !tbaa !192
  %153 = fdiv double %151, %152, !dbg !232
  tail call void @llvm.dbg.value(metadata double %153, metadata !109, metadata !DIExpression()), !dbg !121
  %154 = fmul double %1, 0x400921FB54442D18, !dbg !233
  %155 = fdiv double 2.000000e+00, %154, !dbg !234
  %156 = fmul double %151, %153, !dbg !235
  %157 = fadd double %152, %156, !dbg !236
  %158 = fdiv double %155, %157, !dbg !237
  %159 = call double @sqrt(double noundef %158) #7, !dbg !238
  %160 = fneg double %159, !dbg !239
  %161 = select i1 %147, double %159, double %160, !dbg !239
  tail call void @llvm.dbg.value(metadata double %161, metadata !101, metadata !DIExpression()), !dbg !121
  %162 = load double, ptr %5, align 8, !dbg !240, !tbaa !192
  %163 = fmul double %162, 0x2000000000000000, !dbg !241
  %164 = fmul double %161, %163, !dbg !242
  %165 = fdiv double %164, %145, !dbg !243
  store double %165, ptr %2, align 8, !dbg !244, !tbaa !132
  %166 = fadd double %34, 2.000000e+00, !dbg !245
  %167 = fmul double %166, 0x3CC0000000000000, !dbg !246
  %168 = call double @llvm.fabs.f64(double %165), !dbg !247
  %169 = fmul double %167, %168, !dbg !248
  %170 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !249
  store double %169, ptr %170, align 8, !dbg !250, !tbaa !139
  %171 = icmp eq i32 %101, 0, !dbg !251
  %172 = select i1 %171, i32 %36, i32 %101, !dbg !251
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #7, !dbg !252
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #7, !dbg !252
  br label %173

173:                                              ; preds = %143, %84
  %174 = phi i32 [ %99, %84 ], [ %172, %143 ], !dbg !253
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #7, !dbg !254
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7, !dbg !254
  br label %175

175:                                              ; preds = %13, %15, %173, %29, %25, %21
  %176 = phi i32 [ %22, %21 ], [ %26, %25 ], [ %30, %29 ], [ %174, %173 ], [ 0, %15 ], [ 0, %13 ], !dbg !255
  ret i32 %176, !dbg !256
}

declare !dbg !257 i32 @gsl_sf_bessel_IJ_taylor_e(double noundef, double noundef, i32 noundef, i32 noundef, double noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !261 i32 @gsl_sf_bessel_Jnu_asymp_Olver_e(double noundef, double noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !265 i32 @gsl_sf_bessel_Jnu_asympx_e(double noundef, double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare !dbg !266 i32 @gsl_sf_bessel_J_CF1(double noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !270 i32 @gsl_sf_bessel_Y_temme(double noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

declare !dbg !274 i32 @gsl_sf_bessel_JY_steed_CF2(double noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !275 double @sqrt(double noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_bessel_Jnu_e(double noundef %0, double noundef %1, ptr noundef %2) local_unnamed_addr #0 !dbg !279 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !281, metadata !DIExpression()), !dbg !299
  tail call void @llvm.dbg.value(metadata double %1, metadata !282, metadata !DIExpression()), !dbg !299
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !283, metadata !DIExpression()), !dbg !299
  %4 = fcmp ugt double %1, 0.000000e+00, !dbg !300
  br i1 %4, label %7, label %5, !dbg !301

5:                                                ; preds = %3
  store double 0x7FF8000000000000, ptr %2, align 8, !dbg !302, !tbaa !132
  %6 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !302
  store double 0x7FF8000000000000, ptr %6, align 8, !dbg !302, !tbaa !139
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 182, i32 noundef 1) #7, !dbg !305
  br label %46, !dbg !305

7:                                                ; preds = %3
  %8 = fcmp olt double %0, 0.000000e+00, !dbg !307
  br i1 %8, label %9, label %44, !dbg !308

9:                                                ; preds = %7
  %10 = fneg double %0, !dbg !309
  %11 = tail call i32 @gsl_sf_bessel_Jnupos_e(double noundef %10, double noundef %1, ptr noundef %2), !dbg !310
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !284, metadata !DIExpression()), !dbg !311
  %12 = load double, ptr %2, align 8, !dbg !312, !tbaa !132
  tail call void @llvm.dbg.value(metadata double %12, metadata !288, metadata !DIExpression()), !dbg !311
  %13 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !313
  %14 = load double, ptr %13, align 8, !dbg !313, !tbaa !139
  tail call void @llvm.dbg.value(metadata double %14, metadata !289, metadata !DIExpression()), !dbg !311
  %15 = tail call i32 @gsl_sf_bessel_Ynupos_e(double noundef %10, double noundef %1, ptr noundef nonnull %2) #7, !dbg !314
  tail call void @llvm.dbg.value(metadata i32 %15, metadata !290, metadata !DIExpression()), !dbg !311
  %16 = load double, ptr %2, align 8, !dbg !315, !tbaa !132
  tail call void @llvm.dbg.value(metadata double %16, metadata !291, metadata !DIExpression()), !dbg !311
  %17 = load double, ptr %13, align 8, !dbg !316, !tbaa !139
  tail call void @llvm.dbg.value(metadata double %17, metadata !292, metadata !DIExpression()), !dbg !311
  %18 = tail call i32 @gsl_sf_sin_pi_e(double noundef %0, ptr noundef nonnull %2) #7, !dbg !317
  tail call void @llvm.dbg.value(metadata i32 %18, metadata !293, metadata !DIExpression()), !dbg !311
  %19 = load double, ptr %2, align 8, !dbg !318, !tbaa !132
  tail call void @llvm.dbg.value(metadata double %19, metadata !294, metadata !DIExpression()), !dbg !311
  %20 = load double, ptr %13, align 8, !dbg !319, !tbaa !139
  tail call void @llvm.dbg.value(metadata double %20, metadata !295, metadata !DIExpression()), !dbg !311
  %21 = tail call i32 @gsl_sf_cos_pi_e(double noundef %0, ptr noundef nonnull %2) #7, !dbg !320
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !296, metadata !DIExpression()), !dbg !311
  %22 = load double, ptr %2, align 8, !dbg !321, !tbaa !132
  tail call void @llvm.dbg.value(metadata double %22, metadata !297, metadata !DIExpression()), !dbg !311
  %23 = load double, ptr %13, align 8, !dbg !322, !tbaa !139
  tail call void @llvm.dbg.value(metadata double %23, metadata !298, metadata !DIExpression()), !dbg !311
  %24 = fmul double %16, %19, !dbg !323
  %25 = fmul double %12, %22, !dbg !324
  %26 = fadd double %24, %25, !dbg !325
  store double %26, ptr %2, align 8, !dbg !326, !tbaa !132
  %27 = fmul double %17, %22, !dbg !327
  %28 = tail call double @llvm.fabs.f64(double %27), !dbg !328
  %29 = fmul double %14, %19, !dbg !329
  %30 = tail call double @llvm.fabs.f64(double %29), !dbg !330
  %31 = fadd double %30, %28, !dbg !331
  %32 = fmul double %16, %23, !dbg !332
  %33 = tail call double @llvm.fabs.f64(double %32), !dbg !333
  %34 = fadd double %31, %33, !dbg !334
  %35 = fmul double %12, %20, !dbg !335
  %36 = tail call double @llvm.fabs.f64(double %35), !dbg !336
  %37 = fadd double %36, %34, !dbg !337
  store double %37, ptr %13, align 8, !dbg !338, !tbaa !139
  %38 = icmp eq i32 %11, 0, !dbg !339
  br i1 %38, label %39, label %46, !dbg !339

39:                                               ; preds = %9
  %40 = icmp eq i32 %15, 0, !dbg !339
  br i1 %40, label %41, label %46, !dbg !339

41:                                               ; preds = %39
  %42 = icmp eq i32 %18, 0, !dbg !339
  %43 = select i1 %42, i32 %21, i32 %18, !dbg !339
  br label %46, !dbg !339

44:                                               ; preds = %7
  %45 = tail call i32 @gsl_sf_bessel_Jnupos_e(double noundef %0, double noundef %1, ptr noundef %2), !dbg !340
  br label %46, !dbg !341

46:                                               ; preds = %9, %39, %41, %5, %44
  %47 = phi i32 [ 1, %5 ], [ %45, %44 ], [ %11, %9 ], [ %15, %39 ], [ %43, %41 ], !dbg !342
  ret i32 %47, !dbg !343
}

declare !dbg !344 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare !dbg !349 i32 @gsl_sf_bessel_Ynupos_e(double noundef, double noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !350 i32 @gsl_sf_sin_pi_e(double noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !354 i32 @gsl_sf_cos_pi_e(double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_bessel_Jnu(double noundef %0, double noundef %1) local_unnamed_addr #0 !dbg !355 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !363
  call void @llvm.dbg.assign(metadata i1 undef, metadata !361, metadata !DIExpression(), metadata !363, metadata ptr %3, metadata !DIExpression()), !dbg !364
  tail call void @llvm.dbg.value(metadata double %0, metadata !359, metadata !DIExpression()), !dbg !364
  tail call void @llvm.dbg.value(metadata double %1, metadata !360, metadata !DIExpression()), !dbg !364
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7, !dbg !365
  %4 = call i32 @gsl_sf_bessel_Jnu_e(double noundef %0, double noundef %1, ptr noundef nonnull %3), !dbg !365
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !362, metadata !DIExpression()), !dbg !364
  %5 = icmp eq i32 %4, 0, !dbg !366
  br i1 %5, label %7, label %6, !dbg !365

6:                                                ; preds = %2
  call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 211, i32 noundef %4) #7, !dbg !368
  br label %7, !dbg !368

7:                                                ; preds = %2, %6
  %8 = load double, ptr %3, align 8, !dbg !365, !tbaa !132
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7, !dbg !371
  ret double %8, !dbg !371
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!14}
!llvm.module.flags = !{!57, !58, !59, !60, !61, !62, !63}
!llvm.ident = !{!64}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 182, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "bessel_Jnu.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "eb8e34beb3a4926787c5014ea459f773")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 13)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 182, type: !3, isLocal: true, isDefinition: true)
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(scope: null, file: !2, line: 211, type: !11, isLocal: true, isDefinition: true)
!11 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !12)
!12 = !{!13}
!13 = !DISubrange(count: 36)
!14 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !15, retainedTypes: !55, globals: !56, splitDebugInlining: false, nameTableKind: None)
!15 = !{!16}
!16 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !17, line: 39, baseType: !18, size: 32, elements: !19)
!17 = !DIFile(filename: "../gsl/gsl_errno.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "3ff14ff6df19564f3d7caf1e8e622626")
!18 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!19 = !{!20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54}
!20 = !DIEnumerator(name: "GSL_SUCCESS", value: 0)
!21 = !DIEnumerator(name: "GSL_FAILURE", value: -1)
!22 = !DIEnumerator(name: "GSL_CONTINUE", value: -2)
!23 = !DIEnumerator(name: "GSL_EDOM", value: 1)
!24 = !DIEnumerator(name: "GSL_ERANGE", value: 2)
!25 = !DIEnumerator(name: "GSL_EFAULT", value: 3)
!26 = !DIEnumerator(name: "GSL_EINVAL", value: 4)
!27 = !DIEnumerator(name: "GSL_EFAILED", value: 5)
!28 = !DIEnumerator(name: "GSL_EFACTOR", value: 6)
!29 = !DIEnumerator(name: "GSL_ESANITY", value: 7)
!30 = !DIEnumerator(name: "GSL_ENOMEM", value: 8)
!31 = !DIEnumerator(name: "GSL_EBADFUNC", value: 9)
!32 = !DIEnumerator(name: "GSL_ERUNAWAY", value: 10)
!33 = !DIEnumerator(name: "GSL_EMAXITER", value: 11)
!34 = !DIEnumerator(name: "GSL_EZERODIV", value: 12)
!35 = !DIEnumerator(name: "GSL_EBADTOL", value: 13)
!36 = !DIEnumerator(name: "GSL_ETOL", value: 14)
!37 = !DIEnumerator(name: "GSL_EUNDRFLW", value: 15)
!38 = !DIEnumerator(name: "GSL_EOVRFLW", value: 16)
!39 = !DIEnumerator(name: "GSL_ELOSS", value: 17)
!40 = !DIEnumerator(name: "GSL_EROUND", value: 18)
!41 = !DIEnumerator(name: "GSL_EBADLEN", value: 19)
!42 = !DIEnumerator(name: "GSL_ENOTSQR", value: 20)
!43 = !DIEnumerator(name: "GSL_ESING", value: 21)
!44 = !DIEnumerator(name: "GSL_EDIVERGE", value: 22)
!45 = !DIEnumerator(name: "GSL_EUNSUP", value: 23)
!46 = !DIEnumerator(name: "GSL_EUNIMPL", value: 24)
!47 = !DIEnumerator(name: "GSL_ECACHE", value: 25)
!48 = !DIEnumerator(name: "GSL_ETABLE", value: 26)
!49 = !DIEnumerator(name: "GSL_ENOPROG", value: 27)
!50 = !DIEnumerator(name: "GSL_ENOPROGJ", value: 28)
!51 = !DIEnumerator(name: "GSL_ETOLF", value: 29)
!52 = !DIEnumerator(name: "GSL_ETOLX", value: 30)
!53 = !DIEnumerator(name: "GSL_ETOLG", value: 31)
!54 = !DIEnumerator(name: "GSL_EOF", value: 32)
!55 = !{!18}
!56 = !{!0, !7, !9}
!57 = !{i32 7, !"Dwarf Version", i32 5}
!58 = !{i32 2, !"Debug Info Version", i32 3}
!59 = !{i32 1, !"wchar_size", i32 4}
!60 = !{i32 8, !"PIC Level", i32 2}
!61 = !{i32 7, !"PIE Level", i32 2}
!62 = !{i32 7, !"uwtable", i32 2}
!63 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!64 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!65 = distinct !DISubprogram(name: "gsl_sf_bessel_Jnupos_e", scope: !2, file: !2, line: 78, type: !66, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !77)
!66 = !DISubroutineType(types: !67)
!67 = !{!18, !68, !68, !70}
!68 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !69)
!69 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !72, line: 41, baseType: !73)
!72 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "5b52deed011f1ffd07977b19a388d251")
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !72, line: 37, size: 128, elements: !74)
!74 = !{!75, !76}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !73, file: !72, line: 38, baseType: !69, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !73, file: !72, line: 39, baseType: !69, size: 64, offset: 64)
!77 = !{!78, !79, !80, !81, !87, !88, !89, !90, !92, !95, !96, !97, !98, !99, !100, !101, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113}
!78 = !DILocalVariable(name: "nu", arg: 1, scope: !65, file: !2, line: 78, type: !68)
!79 = !DILocalVariable(name: "x", arg: 2, scope: !65, file: !2, line: 78, type: !68)
!80 = !DILocalVariable(name: "result", arg: 3, scope: !65, file: !2, line: 78, type: !70)
!81 = !DILocalVariable(name: "N", scope: !82, file: !2, line: 109, type: !18)
!82 = distinct !DILexicalBlock(scope: !83, file: !2, line: 107, column: 8)
!83 = distinct !DILexicalBlock(scope: !84, file: !2, line: 99, column: 11)
!84 = distinct !DILexicalBlock(scope: !85, file: !2, line: 96, column: 11)
!85 = distinct !DILexicalBlock(scope: !86, file: !2, line: 93, column: 11)
!86 = distinct !DILexicalBlock(scope: !65, file: !2, line: 82, column: 6)
!87 = !DILocalVariable(name: "mu", scope: !82, file: !2, line: 110, type: !69)
!88 = !DILocalVariable(name: "Jnup1_Jnu", scope: !82, file: !2, line: 114, type: !69)
!89 = !DILocalVariable(name: "sgn_Jnu", scope: !82, file: !2, line: 115, type: !69)
!90 = !DILocalVariable(name: "stat_CF1", scope: !82, file: !2, line: 116, type: !91)
!91 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !18)
!92 = !DILocalVariable(name: "Y_mu", scope: !93, file: !2, line: 122, type: !71)
!93 = distinct !DILexicalBlock(scope: !94, file: !2, line: 118, column: 17)
!94 = distinct !DILexicalBlock(scope: !82, file: !2, line: 118, column: 8)
!95 = !DILocalVariable(name: "Y_mup1", scope: !93, file: !2, line: 122, type: !71)
!96 = !DILocalVariable(name: "stat_mu", scope: !93, file: !2, line: 123, type: !91)
!97 = !DILocalVariable(name: "Ynm1", scope: !93, file: !2, line: 125, type: !69)
!98 = !DILocalVariable(name: "Yn", scope: !93, file: !2, line: 126, type: !69)
!99 = !DILocalVariable(name: "Ynp1", scope: !93, file: !2, line: 127, type: !69)
!100 = !DILocalVariable(name: "n", scope: !93, file: !2, line: 128, type: !18)
!101 = !DILocalVariable(name: "Jmu", scope: !102, file: !2, line: 144, type: !69)
!102 = distinct !DILexicalBlock(scope: !94, file: !2, line: 139, column: 10)
!103 = !DILocalVariable(name: "Jmup1_Jmu", scope: !102, file: !2, line: 145, type: !69)
!104 = !DILocalVariable(name: "sgn_Jmu", scope: !102, file: !2, line: 146, type: !69)
!105 = !DILocalVariable(name: "Jmuprime_Jmu", scope: !102, file: !2, line: 147, type: !69)
!106 = !DILocalVariable(name: "P", scope: !102, file: !2, line: 148, type: !69)
!107 = !DILocalVariable(name: "Q", scope: !102, file: !2, line: 148, type: !69)
!108 = !DILocalVariable(name: "stat_CF2", scope: !102, file: !2, line: 149, type: !91)
!109 = !DILocalVariable(name: "gamma", scope: !102, file: !2, line: 150, type: !69)
!110 = !DILocalVariable(name: "Jnp1", scope: !102, file: !2, line: 152, type: !69)
!111 = !DILocalVariable(name: "Jn", scope: !102, file: !2, line: 153, type: !69)
!112 = !DILocalVariable(name: "Jnm1", scope: !102, file: !2, line: 154, type: !69)
!113 = !DILocalVariable(name: "n", scope: !102, file: !2, line: 155, type: !18)
!114 = distinct !DIAssignID()
!115 = !DILocation(line: 0, scope: !82)
!116 = distinct !DIAssignID()
!117 = distinct !DIAssignID()
!118 = !DILocation(line: 0, scope: !93)
!119 = distinct !DIAssignID()
!120 = distinct !DIAssignID()
!121 = !DILocation(line: 0, scope: !102)
!122 = distinct !DIAssignID()
!123 = !DILocation(line: 0, scope: !65)
!124 = !DILocation(line: 82, column: 8, scope: !86)
!125 = !DILocation(line: 82, column: 6, scope: !65)
!126 = !DILocation(line: 83, column: 11, scope: !127)
!127 = distinct !DILexicalBlock(scope: !128, file: !2, line: 83, column: 8)
!128 = distinct !DILexicalBlock(scope: !86, file: !2, line: 82, column: 16)
!129 = !DILocation(line: 83, column: 8, scope: !128)
!130 = !DILocation(line: 84, column: 19, scope: !131)
!131 = distinct !DILexicalBlock(scope: !127, file: !2, line: 83, column: 19)
!132 = !{!133, !134, i64 0}
!133 = !{!"gsl_sf_result_struct", !134, i64 0, !134, i64 8}
!134 = !{!"double", !135, i64 0}
!135 = !{!"omnipotent char", !136, i64 0}
!136 = !{!"Simple C/C++ TBAA"}
!137 = !DILocation(line: 85, column: 15, scope: !131)
!138 = !DILocation(line: 85, column: 19, scope: !131)
!139 = !{!133, !134, i64 8}
!140 = !DILocation(line: 86, column: 5, scope: !131)
!141 = !DILocation(line: 89, column: 19, scope: !142)
!142 = distinct !DILexicalBlock(scope: !127, file: !2, line: 87, column: 10)
!143 = !DILocation(line: 93, column: 12, scope: !85)
!144 = !DILocation(line: 93, column: 25, scope: !85)
!145 = !DILocation(line: 93, column: 21, scope: !85)
!146 = !DILocation(line: 93, column: 15, scope: !85)
!147 = !DILocation(line: 93, column: 11, scope: !86)
!148 = !DILocation(line: 94, column: 12, scope: !149)
!149 = distinct !DILexicalBlock(scope: !85, file: !2, line: 93, column: 32)
!150 = !DILocation(line: 94, column: 5, scope: !149)
!151 = !DILocation(line: 96, column: 14, scope: !84)
!152 = !DILocation(line: 96, column: 11, scope: !85)
!153 = !DILocation(line: 97, column: 12, scope: !154)
!154 = distinct !DILexicalBlock(scope: !84, file: !2, line: 96, column: 22)
!155 = !DILocation(line: 97, column: 5, scope: !154)
!156 = !DILocation(line: 99, column: 13, scope: !83)
!157 = !DILocation(line: 99, column: 11, scope: !84)
!158 = !DILocation(line: 105, column: 12, scope: !159)
!159 = distinct !DILexicalBlock(scope: !83, file: !2, line: 100, column: 3)
!160 = !DILocation(line: 105, column: 5, scope: !159)
!161 = !DILocation(line: 109, column: 22, scope: !82)
!162 = !DILocation(line: 109, column: 13, scope: !82)
!163 = !DILocation(line: 110, column: 22, scope: !82)
!164 = !DILocation(line: 110, column: 20, scope: !82)
!165 = !DILocation(line: 114, column: 5, scope: !82)
!166 = !DILocation(line: 115, column: 5, scope: !82)
!167 = !DILocation(line: 116, column: 26, scope: !82)
!168 = !DILocation(line: 118, column: 10, scope: !94)
!169 = !DILocation(line: 118, column: 8, scope: !82)
!170 = !DILocation(line: 122, column: 7, scope: !93)
!171 = !DILocation(line: 123, column: 27, scope: !93)
!172 = !DILocation(line: 126, column: 28, scope: !93)
!173 = !DILocation(line: 129, column: 17, scope: !174)
!174 = distinct !DILexicalBlock(scope: !175, file: !2, line: 129, column: 7)
!175 = distinct !DILexicalBlock(scope: !93, file: !2, line: 129, column: 7)
!176 = !DILocation(line: 129, column: 7, scope: !175)
!177 = !DILocation(line: 125, column: 26, scope: !93)
!178 = !DILocation(line: 130, column: 24, scope: !179)
!179 = distinct !DILexicalBlock(scope: !174, file: !2, line: 129, column: 26)
!180 = !DILocation(line: 130, column: 23, scope: !179)
!181 = !DILocation(line: 130, column: 19, scope: !179)
!182 = !DILocation(line: 130, column: 26, scope: !179)
!183 = !DILocation(line: 130, column: 29, scope: !179)
!184 = !DILocation(line: 130, column: 34, scope: !179)
!185 = !DILocation(line: 129, column: 22, scope: !174)
!186 = distinct !{!186, !176, !187, !188}
!187 = !DILocation(line: 133, column: 7, scope: !175)
!188 = !{!"llvm.loop.mustprogress"}
!189 = !DILocation(line: 135, column: 30, scope: !93)
!190 = !DILocation(line: 135, column: 24, scope: !93)
!191 = !DILocation(line: 135, column: 37, scope: !93)
!192 = !{!134, !134, i64 0}
!193 = !DILocation(line: 135, column: 46, scope: !93)
!194 = !DILocation(line: 135, column: 50, scope: !93)
!195 = !DILocation(line: 135, column: 34, scope: !93)
!196 = !DILocation(line: 135, column: 19, scope: !93)
!197 = !DILocation(line: 136, column: 42, scope: !93)
!198 = !DILocation(line: 136, column: 37, scope: !93)
!199 = !DILocation(line: 136, column: 51, scope: !93)
!200 = !DILocation(line: 136, column: 49, scope: !93)
!201 = !DILocation(line: 136, column: 15, scope: !93)
!202 = !DILocation(line: 136, column: 19, scope: !93)
!203 = !DILocation(line: 137, column: 14, scope: !93)
!204 = !DILocation(line: 138, column: 5, scope: !94)
!205 = !DILocation(line: 148, column: 7, scope: !102)
!206 = !DILocation(line: 149, column: 28, scope: !102)
!207 = !DILocation(line: 152, column: 21, scope: !102)
!208 = !DILocation(line: 152, column: 29, scope: !102)
!209 = !DILocation(line: 152, column: 50, scope: !102)
!210 = !DILocation(line: 152, column: 48, scope: !102)
!211 = !DILocation(line: 156, column: 17, scope: !212)
!212 = distinct !DILexicalBlock(scope: !213, file: !2, line: 156, column: 7)
!213 = distinct !DILexicalBlock(scope: !102, file: !2, line: 156, column: 7)
!214 = !DILocation(line: 156, column: 7, scope: !213)
!215 = !DILocation(line: 157, column: 24, scope: !216)
!216 = distinct !DILexicalBlock(scope: !212, file: !2, line: 156, column: 26)
!217 = !DILocation(line: 157, column: 23, scope: !216)
!218 = !DILocation(line: 157, column: 19, scope: !216)
!219 = !DILocation(line: 157, column: 26, scope: !216)
!220 = !DILocation(line: 157, column: 29, scope: !216)
!221 = !DILocation(line: 157, column: 34, scope: !216)
!222 = !DILocation(line: 156, column: 22, scope: !212)
!223 = distinct !{!223, !214, !224, !188}
!224 = !DILocation(line: 160, column: 7, scope: !213)
!225 = !DILocation(line: 161, column: 23, scope: !102)
!226 = !DILocation(line: 162, column: 19, scope: !102)
!227 = !DILocation(line: 163, column: 24, scope: !102)
!228 = !DILocation(line: 163, column: 27, scope: !102)
!229 = !DILocation(line: 165, column: 16, scope: !102)
!230 = !DILocation(line: 165, column: 18, scope: !102)
!231 = !DILocation(line: 165, column: 34, scope: !102)
!232 = !DILocation(line: 165, column: 33, scope: !102)
!233 = !DILocation(line: 166, column: 39, scope: !102)
!234 = !DILocation(line: 166, column: 33, scope: !102)
!235 = !DILocation(line: 166, column: 55, scope: !102)
!236 = !DILocation(line: 166, column: 48, scope: !102)
!237 = !DILocation(line: 166, column: 43, scope: !102)
!238 = !DILocation(line: 166, column: 25, scope: !102)
!239 = !DILocation(line: 166, column: 23, scope: !102)
!240 = !DILocation(line: 168, column: 28, scope: !102)
!241 = !DILocation(line: 168, column: 36, scope: !102)
!242 = !DILocation(line: 168, column: 25, scope: !102)
!243 = !DILocation(line: 168, column: 56, scope: !102)
!244 = !DILocation(line: 168, column: 19, scope: !102)
!245 = !DILocation(line: 169, column: 48, scope: !102)
!246 = !DILocation(line: 169, column: 43, scope: !102)
!247 = !DILocation(line: 169, column: 57, scope: !102)
!248 = !DILocation(line: 169, column: 55, scope: !102)
!249 = !DILocation(line: 169, column: 15, scope: !102)
!250 = !DILocation(line: 169, column: 19, scope: !102)
!251 = !DILocation(line: 171, column: 14, scope: !102)
!252 = !DILocation(line: 172, column: 5, scope: !94)
!253 = !DILocation(line: 0, scope: !94)
!254 = !DILocation(line: 173, column: 3, scope: !83)
!255 = !DILocation(line: 0, scope: !86)
!256 = !DILocation(line: 174, column: 1, scope: !65)
!257 = !DISubprogram(name: "gsl_sf_bessel_IJ_taylor_e", scope: !258, file: !258, line: 32, type: !259, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!258 = !DIFile(filename: "./bessel.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "57b96fff5bee18a41e1173dbca5404a0")
!259 = !DISubroutineType(types: !260)
!260 = !{!18, !68, !68, !91, !91, !68, !70}
!261 = !DISubprogram(name: "gsl_sf_bessel_Jnu_asymp_Olver_e", scope: !262, file: !262, line: 27, type: !263, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!262 = !DIFile(filename: "./bessel_olver.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "ec509d1b6cab5ef68906304c5e69a8d7")
!263 = !DISubroutineType(types: !264)
!264 = !{!18, !69, !69, !70}
!265 = !DISubprogram(name: "gsl_sf_bessel_Jnu_asympx_e", scope: !258, file: !258, line: 39, type: !66, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!266 = !DISubprogram(name: "gsl_sf_bessel_J_CF1", scope: !258, file: !258, line: 56, type: !267, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!267 = !DISubroutineType(types: !268)
!268 = !{!18, !68, !68, !269, !269}
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!270 = !DISubprogram(name: "gsl_sf_bessel_Y_temme", scope: !271, file: !271, line: 29, type: !272, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!271 = !DIFile(filename: "./bessel_temme.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "896353903515c0fd2eba1477c11cb66c")
!272 = !DISubroutineType(types: !273)
!273 = !{!18, !68, !68, !70, !70}
!274 = !DISubprogram(name: "gsl_sf_bessel_JY_steed_CF2", scope: !258, file: !258, line: 70, type: !267, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!275 = !DISubprogram(name: "sqrt", scope: !276, file: !276, line: 143, type: !277, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!276 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!277 = !DISubroutineType(types: !278)
!278 = !{!69, !69}
!279 = distinct !DISubprogram(name: "gsl_sf_bessel_Jnu_e", scope: !2, file: !2, line: 177, type: !66, scopeLine: 178, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !280)
!280 = !{!281, !282, !283, !284, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298}
!281 = !DILocalVariable(name: "nu", arg: 1, scope: !279, file: !2, line: 177, type: !68)
!282 = !DILocalVariable(name: "x", arg: 2, scope: !279, file: !2, line: 177, type: !68)
!283 = !DILocalVariable(name: "result", arg: 3, scope: !279, file: !2, line: 177, type: !70)
!284 = !DILocalVariable(name: "Jstatus", scope: !285, file: !2, line: 185, type: !18)
!285 = distinct !DILexicalBlock(scope: !286, file: !2, line: 184, column: 22)
!286 = distinct !DILexicalBlock(scope: !287, file: !2, line: 184, column: 12)
!287 = distinct !DILexicalBlock(scope: !279, file: !2, line: 181, column: 6)
!288 = !DILocalVariable(name: "Jval", scope: !285, file: !2, line: 186, type: !69)
!289 = !DILocalVariable(name: "Jerr", scope: !285, file: !2, line: 187, type: !69)
!290 = !DILocalVariable(name: "Ystatus", scope: !285, file: !2, line: 188, type: !18)
!291 = !DILocalVariable(name: "Yval", scope: !285, file: !2, line: 189, type: !69)
!292 = !DILocalVariable(name: "Yerr", scope: !285, file: !2, line: 190, type: !69)
!293 = !DILocalVariable(name: "sinstatus", scope: !285, file: !2, line: 192, type: !18)
!294 = !DILocalVariable(name: "s", scope: !285, file: !2, line: 193, type: !69)
!295 = !DILocalVariable(name: "serr", scope: !285, file: !2, line: 194, type: !69)
!296 = !DILocalVariable(name: "cosstatus", scope: !285, file: !2, line: 195, type: !18)
!297 = !DILocalVariable(name: "c", scope: !285, file: !2, line: 196, type: !69)
!298 = !DILocalVariable(name: "cerr", scope: !285, file: !2, line: 197, type: !69)
!299 = !DILocation(line: 0, scope: !279)
!300 = !DILocation(line: 181, column: 8, scope: !287)
!301 = !DILocation(line: 181, column: 6, scope: !279)
!302 = !DILocation(line: 182, column: 5, scope: !303)
!303 = distinct !DILexicalBlock(scope: !304, file: !2, line: 182, column: 5)
!304 = distinct !DILexicalBlock(scope: !287, file: !2, line: 181, column: 16)
!305 = !DILocation(line: 182, column: 5, scope: !306)
!306 = distinct !DILexicalBlock(scope: !303, file: !2, line: 182, column: 5)
!307 = !DILocation(line: 184, column: 15, scope: !286)
!308 = !DILocation(line: 184, column: 12, scope: !287)
!309 = !DILocation(line: 185, column: 42, scope: !285)
!310 = !DILocation(line: 185, column: 19, scope: !285)
!311 = !DILocation(line: 0, scope: !285)
!312 = !DILocation(line: 186, column: 27, scope: !285)
!313 = !DILocation(line: 187, column: 27, scope: !285)
!314 = !DILocation(line: 188, column: 19, scope: !285)
!315 = !DILocation(line: 189, column: 27, scope: !285)
!316 = !DILocation(line: 190, column: 27, scope: !285)
!317 = !DILocation(line: 192, column: 21, scope: !285)
!318 = !DILocation(line: 193, column: 24, scope: !285)
!319 = !DILocation(line: 194, column: 27, scope: !285)
!320 = !DILocation(line: 195, column: 21, scope: !285)
!321 = !DILocation(line: 196, column: 24, scope: !285)
!322 = !DILocation(line: 197, column: 27, scope: !285)
!323 = !DILocation(line: 198, column: 20, scope: !285)
!324 = !DILocation(line: 198, column: 29, scope: !285)
!325 = !DILocation(line: 198, column: 26, scope: !285)
!326 = !DILocation(line: 198, column: 17, scope: !285)
!327 = !DILocation(line: 199, column: 25, scope: !285)
!328 = !DILocation(line: 199, column: 19, scope: !285)
!329 = !DILocation(line: 199, column: 40, scope: !285)
!330 = !DILocation(line: 199, column: 34, scope: !285)
!331 = !DILocation(line: 199, column: 32, scope: !285)
!332 = !DILocation(line: 199, column: 58, scope: !285)
!333 = !DILocation(line: 199, column: 49, scope: !285)
!334 = !DILocation(line: 199, column: 47, scope: !285)
!335 = !DILocation(line: 199, column: 76, scope: !285)
!336 = !DILocation(line: 199, column: 67, scope: !285)
!337 = !DILocation(line: 199, column: 65, scope: !285)
!338 = !DILocation(line: 199, column: 17, scope: !285)
!339 = !DILocation(line: 200, column: 12, scope: !285)
!340 = !DILocation(line: 202, column: 15, scope: !286)
!341 = !DILocation(line: 202, column: 8, scope: !286)
!342 = !DILocation(line: 0, scope: !287)
!343 = !DILocation(line: 203, column: 1, scope: !279)
!344 = !DISubprogram(name: "gsl_error", scope: !17, file: !17, line: 77, type: !345, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!345 = !DISubroutineType(types: !346)
!346 = !{null, !347, !347, !18, !18}
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!348 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!349 = !DISubprogram(name: "gsl_sf_bessel_Ynupos_e", scope: !258, file: !258, line: 43, type: !66, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!350 = !DISubprogram(name: "gsl_sf_sin_pi_e", scope: !351, file: !351, line: 45, type: !352, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!351 = !DIFile(filename: "../gsl/gsl_sf_sincos_pi.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "7936c4bdc248114844397cef74e4f1a9")
!352 = !DISubroutineType(types: !353)
!353 = !{!18, !69, !70}
!354 = !DISubprogram(name: "gsl_sf_cos_pi_e", scope: !351, file: !351, line: 51, type: !352, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!355 = distinct !DISubprogram(name: "gsl_sf_bessel_Jnu", scope: !2, file: !2, line: 209, type: !356, scopeLine: 210, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !358)
!356 = !DISubroutineType(types: !357)
!357 = !{!69, !68, !68}
!358 = !{!359, !360, !361, !362}
!359 = !DILocalVariable(name: "nu", arg: 1, scope: !355, file: !2, line: 209, type: !68)
!360 = !DILocalVariable(name: "x", arg: 2, scope: !355, file: !2, line: 209, type: !68)
!361 = !DILocalVariable(name: "result", scope: !355, file: !2, line: 211, type: !71)
!362 = !DILocalVariable(name: "status", scope: !355, file: !2, line: 211, type: !18)
!363 = distinct !DIAssignID()
!364 = !DILocation(line: 0, scope: !355)
!365 = !DILocation(line: 211, column: 3, scope: !355)
!366 = !DILocation(line: 211, column: 3, scope: !367)
!367 = distinct !DILexicalBlock(scope: !355, file: !2, line: 211, column: 3)
!368 = !DILocation(line: 211, column: 3, scope: !369)
!369 = distinct !DILexicalBlock(scope: !370, file: !2, line: 211, column: 3)
!370 = distinct !DILexicalBlock(scope: !367, file: !2, line: 211, column: 3)
!371 = !DILocation(line: 212, column: 1, scope: !355)
