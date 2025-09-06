; ModuleID = 'bessel_In.c'
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
  %13 = tail call i32 @gsl_sf_bessel_I0_scaled_e(double noundef %1, ptr noundef %2) #7, !dbg !140
  br label %190, !dbg !142

14:                                               ; preds = %3
  %15 = icmp eq i32 %10, 1, !dbg !143
  br i1 %15, label %16, label %18, !dbg !144

16:                                               ; preds = %14
  %17 = tail call i32 @gsl_sf_bessel_I1_scaled_e(double noundef %1, ptr noundef %2) #7, !dbg !145
  br label %190, !dbg !147

18:                                               ; preds = %14
  %19 = fcmp oeq double %1, 0.000000e+00, !dbg !148
  br i1 %19, label %20, label %21, !dbg !149

20:                                               ; preds = %18
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !dbg !150
  br label %190, !dbg !152

21:                                               ; preds = %18
  %22 = fmul double %1, %1, !dbg !153
  %23 = sitofp i32 %10 to double, !dbg !154
  %24 = fadd double %23, 1.000000e+00, !dbg !155
  %25 = fmul double %24, 1.000000e+01, !dbg !156
  %26 = fdiv double %25, 0x4005BF0A8B145769, !dbg !157
  %27 = fcmp olt double %22, %26, !dbg !158
  br i1 %27, label %28, label %48, !dbg !159

28:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #7, !dbg !160
  %29 = fneg double %9, !dbg !161
  %30 = tail call double @exp(double noundef %29) #7, !dbg !162
  tail call void @llvm.dbg.value(metadata double %30, metadata !101, metadata !DIExpression()), !dbg !128
  %31 = call i32 @gsl_sf_bessel_IJ_taylor_e(double noundef %23, double noundef %9, i32 noundef 1, i32 noundef 50, double noundef 0x3CB0000000000000, ptr noundef nonnull %4) #7, !dbg !163
  tail call void @llvm.dbg.value(metadata i32 %31, metadata !102, metadata !DIExpression()), !dbg !128
  %32 = load double, ptr %4, align 8, !dbg !164, !tbaa !165
  %33 = fmul double %30, %32, !dbg !170
  store double %33, ptr %2, align 8, !dbg !171, !tbaa !165
  %34 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !172
  %35 = load double, ptr %34, align 8, !dbg !172, !tbaa !173
  %36 = fmul double %30, %35, !dbg !174
  %37 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !175
  %38 = call double @llvm.fabs.f64(double %33), !dbg !176
  %39 = fmul double %38, 0x3CC0000000000000, !dbg !177
  %40 = fadd double %36, %39, !dbg !178
  store double %40, ptr %37, align 8, !dbg !178, !tbaa !173
  %41 = fcmp uge double %1, 0.000000e+00, !dbg !179
  %42 = and i32 %10, 1
  %43 = icmp eq i32 %42, 0
  %44 = select i1 %41, i1 true, i1 %43, !dbg !181
  br i1 %44, label %47, label %45, !dbg !181

45:                                               ; preds = %28
  %46 = fneg double %33, !dbg !182
  store double %46, ptr %2, align 8, !dbg !183, !tbaa !165
  br label %47, !dbg !184

47:                                               ; preds = %45, %28
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #7, !dbg !185
  br label %190

48:                                               ; preds = %21
  %49 = icmp ult i32 %10, 150, !dbg !186
  %50 = fcmp olt double %9, 1.000000e+07
  %51 = and i1 %49, %50, !dbg !187
  br i1 %51, label %52, label %88, !dbg !187

52:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7, !dbg !188
  %53 = call i32 @gsl_sf_bessel_I0_scaled_e(double noundef %9, ptr noundef nonnull %5) #7, !dbg !189
  tail call void @llvm.dbg.value(metadata i32 %53, metadata !106, metadata !DIExpression()), !dbg !130
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #7, !dbg !190
  %54 = call i32 @gsl_sf_bessel_I_CF1_ser(double noundef %23, double noundef %9, ptr noundef nonnull %6) #7, !dbg !191
  tail call void @llvm.dbg.value(metadata i32 %54, metadata !108, metadata !DIExpression()), !dbg !130
  %55 = load double, ptr %6, align 8, !dbg !192, !tbaa !193
  %56 = fmul double %55, 0x2000000000000000, !dbg !194
  tail call void @llvm.dbg.value(metadata double %56, metadata !109, metadata !DIExpression()), !dbg !130
  tail call void @llvm.dbg.value(metadata double 0x2000000000000000, metadata !110, metadata !DIExpression()), !dbg !130
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !112, metadata !DIExpression()), !dbg !130
  br label %57, !dbg !195

57:                                               ; preds = %52, %57
  %58 = phi double [ %56, %52 ], [ %59, %57 ]
  %59 = phi double [ 0x2000000000000000, %52 ], [ %65, %57 ]
  %60 = phi i32 [ %10, %52 ], [ %66, %57 ]
  tail call void @llvm.dbg.value(metadata double %58, metadata !109, metadata !DIExpression()), !dbg !130
  tail call void @llvm.dbg.value(metadata double %59, metadata !110, metadata !DIExpression()), !dbg !130
  tail call void @llvm.dbg.value(metadata i32 %60, metadata !112, metadata !DIExpression()), !dbg !130
  %61 = sitofp i32 %60 to double, !dbg !197
  %62 = fmul double %61, 2.000000e+00, !dbg !200
  %63 = fdiv double %62, %9, !dbg !201
  %64 = fmul double %59, %63, !dbg !202
  %65 = fadd double %58, %64, !dbg !203
  tail call void @llvm.dbg.value(metadata double %65, metadata !111, metadata !DIExpression()), !dbg !130
  tail call void @llvm.dbg.value(metadata double %59, metadata !109, metadata !DIExpression()), !dbg !130
  tail call void @llvm.dbg.value(metadata double %65, metadata !110, metadata !DIExpression()), !dbg !130
  %66 = add nsw i32 %60, -1, !dbg !204
  tail call void @llvm.dbg.value(metadata i32 %66, metadata !112, metadata !DIExpression()), !dbg !130
  %67 = icmp ugt i32 %60, 1, !dbg !205
  br i1 %67, label %57, label %68, !dbg !195, !llvm.loop !206

68:                                               ; preds = %57
  %69 = load double, ptr %5, align 8, !dbg !209, !tbaa !165
  %70 = fdiv double 0x2000000000000000, %65, !dbg !210
  %71 = fmul double %70, %69, !dbg !211
  store double %71, ptr %2, align 8, !dbg !212, !tbaa !165
  %72 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !213
  %73 = load double, ptr %72, align 8, !dbg !213, !tbaa !173
  %74 = fmul double %70, %73, !dbg !214
  %75 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !215
  %76 = call double @llvm.fabs.f64(double %71), !dbg !216
  %77 = fmul double %76, 0x3CC0000000000000, !dbg !217
  %78 = fadd double %74, %77, !dbg !218
  store double %78, ptr %75, align 8, !dbg !218, !tbaa !173
  %79 = fcmp uge double %1, 0.000000e+00, !dbg !219
  %80 = and i32 %10, 1
  %81 = icmp eq i32 %80, 0
  %82 = select i1 %79, i1 true, i1 %81, !dbg !221
  br i1 %82, label %85, label %83, !dbg !221

83:                                               ; preds = %68
  %84 = fneg double %71, !dbg !222
  store double %84, ptr %2, align 8, !dbg !223, !tbaa !165
  br label %85, !dbg !224

85:                                               ; preds = %83, %68
  %86 = icmp eq i32 %53, 0, !dbg !225
  %87 = select i1 %86, i32 %54, i32 %53, !dbg !225
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #7, !dbg !226
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7, !dbg !226
  br label %190

88:                                               ; preds = %48
  %89 = mul i32 %0, %0, !dbg !227
  %90 = sitofp i32 %89 to double, !dbg !227
  %91 = fdiv double 2.900000e-01, %90, !dbg !227
  %92 = fadd double %22, %90, !dbg !227
  %93 = fdiv double 5.000000e-01, %92, !dbg !227
  %94 = fcmp olt double %91, %93, !dbg !227
  %95 = select i1 %94, double %91, double %93, !dbg !227
  %96 = fcmp olt double %95, 0x3EC965FEA53D6E41, !dbg !228
  br i1 %96, label %97, label %106, !dbg !229

97:                                               ; preds = %88
  %98 = tail call i32 @gsl_sf_bessel_Inu_scaled_asymp_unif_e(double noundef %23, double noundef %9, ptr noundef %2) #7, !dbg !230
  tail call void @llvm.dbg.value(metadata i32 %98, metadata !113, metadata !DIExpression()), !dbg !231
  %99 = fcmp uge double %1, 0.000000e+00, !dbg !232
  %100 = and i32 %10, 1
  %101 = icmp eq i32 %100, 0
  %102 = select i1 %99, i1 true, i1 %101, !dbg !234
  br i1 %102, label %190, label %103, !dbg !234

103:                                              ; preds = %97
  %104 = load double, ptr %2, align 8, !dbg !235, !tbaa !165
  %105 = fneg double %104, !dbg !236
  store double %105, ptr %2, align 8, !dbg !237, !tbaa !165
  br label %190, !dbg !238

106:                                              ; preds = %88
  tail call void @llvm.dbg.value(metadata i32 489, metadata !116, metadata !DIExpression()), !dbg !133
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #7, !dbg !239
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #7, !dbg !240
  %107 = call i32 @gsl_sf_bessel_Inu_scaled_asymp_unif_e(double noundef 4.900000e+02, double noundef %9, ptr noundef nonnull %7) #7, !dbg !241
  tail call void @llvm.dbg.value(metadata i32 %107, metadata !121, metadata !DIExpression()), !dbg !133
  %108 = call i32 @gsl_sf_bessel_Inu_scaled_asymp_unif_e(double noundef 4.890000e+02, double noundef %9, ptr noundef nonnull %8) #7, !dbg !242
  tail call void @llvm.dbg.value(metadata i32 %108, metadata !122, metadata !DIExpression()), !dbg !133
  %109 = load double, ptr %7, align 8, !dbg !243, !tbaa !165
  tail call void @llvm.dbg.value(metadata double %109, metadata !123, metadata !DIExpression()), !dbg !133
  %110 = load double, ptr %8, align 8, !dbg !244, !tbaa !165
  tail call void @llvm.dbg.value(metadata double %110, metadata !124, metadata !DIExpression()), !dbg !133
  tail call void @llvm.dbg.value(metadata i32 489, metadata !126, metadata !DIExpression()), !dbg !133
  tail call void @llvm.dbg.value(metadata double %109, metadata !123, metadata !DIExpression()), !dbg !133
  %111 = icmp ult i32 %10, 489, !dbg !245
  br i1 %111, label %112, label %170, !dbg !248

112:                                              ; preds = %106
  %113 = call i32 @llvm.abs.i32(i32 %0, i1 false), !dbg !248
  %114 = sub i32 489, %113, !dbg !248
  %115 = and i32 %114, 3, !dbg !248
  %116 = add i32 %113, -486, !dbg !248
  %117 = icmp ult i32 %116, 3, !dbg !248
  br i1 %117, label %151, label %118, !dbg !248

118:                                              ; preds = %112
  %119 = and i32 %114, -4, !dbg !248
  br label %120, !dbg !248

120:                                              ; preds = %120, %118
  %121 = phi i32 [ 489, %118 ], [ %148, %120 ]
  %122 = phi double [ %110, %118 ], [ %147, %120 ]
  %123 = phi double [ %109, %118 ], [ %141, %120 ]
  %124 = phi i32 [ 0, %118 ], [ %149, %120 ]
  tail call void @llvm.dbg.value(metadata i32 %121, metadata !126, metadata !DIExpression()), !dbg !133
  tail call void @llvm.dbg.value(metadata double %122, metadata !124, metadata !DIExpression()), !dbg !133
  tail call void @llvm.dbg.value(metadata double %123, metadata !123, metadata !DIExpression()), !dbg !133
  %125 = sitofp i32 %121 to double, !dbg !249
  %126 = fmul double %125, 2.000000e+00, !dbg !251
  %127 = fdiv double %126, %9, !dbg !252
  %128 = fmul double %122, %127, !dbg !253
  %129 = fadd double %123, %128, !dbg !254
  tail call void @llvm.dbg.value(metadata double %129, metadata !125, metadata !DIExpression()), !dbg !133
  tail call void @llvm.dbg.value(metadata double %122, metadata !123, metadata !DIExpression()), !dbg !133
  tail call void @llvm.dbg.value(metadata double %129, metadata !124, metadata !DIExpression()), !dbg !133
  %130 = add nsw i32 %121, -1, !dbg !255
  tail call void @llvm.dbg.value(metadata i32 %130, metadata !126, metadata !DIExpression()), !dbg !133
  tail call void @llvm.dbg.value(metadata i32 %130, metadata !126, metadata !DIExpression()), !dbg !133
  tail call void @llvm.dbg.value(metadata double %129, metadata !124, metadata !DIExpression()), !dbg !133
  tail call void @llvm.dbg.value(metadata double %122, metadata !123, metadata !DIExpression()), !dbg !133
  %131 = sitofp i32 %130 to double, !dbg !249
  %132 = fmul double %131, 2.000000e+00, !dbg !251
  %133 = fdiv double %132, %9, !dbg !252
  %134 = fmul double %129, %133, !dbg !253
  %135 = fadd double %122, %134, !dbg !254
  tail call void @llvm.dbg.value(metadata double %135, metadata !125, metadata !DIExpression()), !dbg !133
  tail call void @llvm.dbg.value(metadata double %129, metadata !123, metadata !DIExpression()), !dbg !133
  tail call void @llvm.dbg.value(metadata double %135, metadata !124, metadata !DIExpression()), !dbg !133
  %136 = add nsw i32 %121, -2, !dbg !255
  tail call void @llvm.dbg.value(metadata i32 %136, metadata !126, metadata !DIExpression()), !dbg !133
  tail call void @llvm.dbg.value(metadata i32 %136, metadata !126, metadata !DIExpression()), !dbg !133
  tail call void @llvm.dbg.value(metadata double %135, metadata !124, metadata !DIExpression()), !dbg !133
  tail call void @llvm.dbg.value(metadata double %129, metadata !123, metadata !DIExpression()), !dbg !133
  %137 = sitofp i32 %136 to double, !dbg !249
  %138 = fmul double %137, 2.000000e+00, !dbg !251
  %139 = fdiv double %138, %9, !dbg !252
  %140 = fmul double %135, %139, !dbg !253
  %141 = fadd double %129, %140, !dbg !254
  tail call void @llvm.dbg.value(metadata double %141, metadata !125, metadata !DIExpression()), !dbg !133
  tail call void @llvm.dbg.value(metadata double %135, metadata !123, metadata !DIExpression()), !dbg !133
  tail call void @llvm.dbg.value(metadata double %141, metadata !124, metadata !DIExpression()), !dbg !133
  %142 = add nsw i32 %121, -3, !dbg !255
  tail call void @llvm.dbg.value(metadata i32 %142, metadata !126, metadata !DIExpression()), !dbg !133
  tail call void @llvm.dbg.value(metadata i32 %142, metadata !126, metadata !DIExpression()), !dbg !133
  tail call void @llvm.dbg.value(metadata double %141, metadata !124, metadata !DIExpression()), !dbg !133
  tail call void @llvm.dbg.value(metadata double %135, metadata !123, metadata !DIExpression()), !dbg !133
  %143 = sitofp i32 %142 to double, !dbg !249
  %144 = fmul double %143, 2.000000e+00, !dbg !251
  %145 = fdiv double %144, %9, !dbg !252
  %146 = fmul double %141, %145, !dbg !253
  %147 = fadd double %135, %146, !dbg !254
  tail call void @llvm.dbg.value(metadata double %147, metadata !125, metadata !DIExpression()), !dbg !133
  tail call void @llvm.dbg.value(metadata double %141, metadata !123, metadata !DIExpression()), !dbg !133
  tail call void @llvm.dbg.value(metadata double %147, metadata !124, metadata !DIExpression()), !dbg !133
  %148 = add nsw i32 %121, -4, !dbg !255
  tail call void @llvm.dbg.value(metadata i32 %148, metadata !126, metadata !DIExpression()), !dbg !133
  %149 = add i32 %124, 4, !dbg !248
  %150 = icmp eq i32 %149, %119, !dbg !248
  br i1 %150, label %151, label %120, !dbg !248, !llvm.loop !256

151:                                              ; preds = %120, %112
  %152 = phi double [ undef, %112 ], [ %147, %120 ]
  %153 = phi i32 [ 489, %112 ], [ %148, %120 ]
  %154 = phi double [ %110, %112 ], [ %147, %120 ]
  %155 = phi double [ %109, %112 ], [ %141, %120 ]
  %156 = icmp eq i32 %115, 0, !dbg !248
  br i1 %156, label %170, label %157, !dbg !248

157:                                              ; preds = %151, %157
  %158 = phi i32 [ %167, %157 ], [ %153, %151 ]
  %159 = phi double [ %166, %157 ], [ %154, %151 ]
  %160 = phi double [ %159, %157 ], [ %155, %151 ]
  %161 = phi i32 [ %168, %157 ], [ 0, %151 ]
  tail call void @llvm.dbg.value(metadata i32 %158, metadata !126, metadata !DIExpression()), !dbg !133
  tail call void @llvm.dbg.value(metadata double %159, metadata !124, metadata !DIExpression()), !dbg !133
  tail call void @llvm.dbg.value(metadata double %160, metadata !123, metadata !DIExpression()), !dbg !133
  %162 = sitofp i32 %158 to double, !dbg !249
  %163 = fmul double %162, 2.000000e+00, !dbg !251
  %164 = fdiv double %163, %9, !dbg !252
  %165 = fmul double %159, %164, !dbg !253
  %166 = fadd double %160, %165, !dbg !254
  tail call void @llvm.dbg.value(metadata double %166, metadata !125, metadata !DIExpression()), !dbg !133
  tail call void @llvm.dbg.value(metadata double %159, metadata !123, metadata !DIExpression()), !dbg !133
  tail call void @llvm.dbg.value(metadata double %166, metadata !124, metadata !DIExpression()), !dbg !133
  %167 = add nsw i32 %158, -1, !dbg !255
  tail call void @llvm.dbg.value(metadata i32 %167, metadata !126, metadata !DIExpression()), !dbg !133
  %168 = add i32 %161, 1, !dbg !248
  %169 = icmp eq i32 %168, %115, !dbg !248
  br i1 %169, label %170, label %157, !dbg !248, !llvm.loop !258

170:                                              ; preds = %151, %157, %106
  %171 = phi double [ %110, %106 ], [ %152, %151 ], [ %166, %157 ], !dbg !133
  store double %171, ptr %2, align 8, !dbg !260, !tbaa !165
  %172 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %7, i64 0, i32 1, !dbg !261
  %173 = load double, ptr %172, align 8, !dbg !261, !tbaa !173
  %174 = fdiv double %173, %109, !dbg !262
  %175 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %8, i64 0, i32 1, !dbg !263
  %176 = load double, ptr %175, align 8, !dbg !263, !tbaa !173
  %177 = fdiv double %176, %110, !dbg !264
  %178 = fadd double %174, %177, !dbg !265
  %179 = fmul double %171, %178, !dbg !266
  %180 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !267
  store double %179, ptr %180, align 8, !dbg !268, !tbaa !173
  %181 = fcmp uge double %1, 0.000000e+00, !dbg !269
  %182 = and i32 %10, 1
  %183 = icmp eq i32 %182, 0
  %184 = select i1 %181, i1 true, i1 %183, !dbg !271
  br i1 %184, label %187, label %185, !dbg !271

185:                                              ; preds = %170
  %186 = fneg double %171, !dbg !272
  store double %186, ptr %2, align 8, !dbg !273, !tbaa !165
  br label %187, !dbg !274

187:                                              ; preds = %185, %170
  %188 = icmp eq i32 %107, 0, !dbg !275
  %189 = select i1 %188, i32 %108, i32 %107, !dbg !275
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #7, !dbg !276
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #7, !dbg !276
  br label %190

190:                                              ; preds = %97, %103, %187, %85, %47, %20, %16, %12
  %191 = phi i32 [ %13, %12 ], [ %17, %16 ], [ 0, %20 ], [ %31, %47 ], [ %87, %85 ], [ %189, %187 ], [ %98, %103 ], [ %98, %97 ], !dbg !277
  ret i32 %191, !dbg !278
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #2

declare !dbg !279 i32 @gsl_sf_bessel_I0_scaled_e(double noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !283 i32 @gsl_sf_bessel_I1_scaled_e(double noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !284 double @exp(double noundef) local_unnamed_addr #4

declare !dbg !288 i32 @gsl_sf_bessel_IJ_taylor_e(double noundef, double noundef, i32 noundef, i32 noundef, double noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare !dbg !292 i32 @gsl_sf_bessel_I_CF1_ser(double noundef, double noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !296 i32 @gsl_sf_bessel_Inu_scaled_asymp_unif_e(double noundef, double noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_bessel_In_scaled_array(i32 noundef %0, i32 noundef %1, double noundef %2, ptr nocapture noundef %3) local_unnamed_addr #0 !dbg !299 {
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !328
  call void @llvm.dbg.assign(metadata i1 undef, metadata !313, metadata !DIExpression(), metadata !328, metadata ptr %5, metadata !DIExpression()), !dbg !329
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !330
  call void @llvm.dbg.assign(metadata i1 undef, metadata !320, metadata !DIExpression(), metadata !330, metadata ptr %6, metadata !DIExpression()), !dbg !331
  %7 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !332
  call void @llvm.dbg.assign(metadata i1 undef, metadata !321, metadata !DIExpression(), metadata !332, metadata ptr %7, metadata !DIExpression()), !dbg !331
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !303, metadata !DIExpression()), !dbg !333
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !304, metadata !DIExpression()), !dbg !333
  tail call void @llvm.dbg.value(metadata double %2, metadata !305, metadata !DIExpression()), !dbg !333
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !306, metadata !DIExpression()), !dbg !333
  %8 = icmp slt i32 %1, %0, !dbg !334
  %9 = icmp slt i32 %0, 0
  %10 = or i1 %9, %8, !dbg !335
  br i1 %10, label %11, label %19, !dbg !335

11:                                               ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 0, metadata !307, metadata !DIExpression()), !dbg !336
  %12 = icmp slt i32 %1, %0, !dbg !337
  br i1 %12, label %18, label %13, !dbg !340

13:                                               ; preds = %11
  %14 = add i32 %1, 1, !dbg !340
  %15 = sub i32 %14, %0, !dbg !340
  %16 = zext i32 %15 to i64, !dbg !340
  %17 = shl nuw nsw i64 %16, 3, !dbg !340
  tail call void @llvm.memset.p0.i64(ptr align 8 %3, i8 0, i64 %17, i1 false), !dbg !341, !tbaa !193
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !307, metadata !DIExpression()), !dbg !336
  br label %18, !dbg !342

18:                                               ; preds = %13, %11
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 120, i32 noundef 1) #7, !dbg !342
  br label %98

19:                                               ; preds = %4
  %20 = fcmp oeq double %2, 0.000000e+00, !dbg !344
  br i1 %20, label %21, label %28, !dbg !345

21:                                               ; preds = %19
  tail call void @llvm.dbg.value(metadata i32 0, metadata !310, metadata !DIExpression()), !dbg !346
  %22 = add i32 %1, 1, !dbg !347
  %23 = sub i32 %22, %0, !dbg !347
  %24 = zext i32 %23 to i64, !dbg !347
  %25 = shl nuw nsw i64 %24, 3, !dbg !347
  tail call void @llvm.memset.p0.i64(ptr align 8 %3, i8 0, i64 %25, i1 false), !dbg !349, !tbaa !193
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !310, metadata !DIExpression()), !dbg !346
  %26 = icmp eq i32 %0, 0, !dbg !351
  br i1 %26, label %27, label %98, !dbg !353

27:                                               ; preds = %21
  store double 1.000000e+00, ptr %3, align 8, !dbg !354, !tbaa !193
  br label %98, !dbg !355

28:                                               ; preds = %19
  %29 = icmp eq i32 %1, 0, !dbg !356
  br i1 %29, label %30, label %33, !dbg !357

30:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7, !dbg !358
  %31 = call i32 @gsl_sf_bessel_I0_scaled_e(double noundef %2, ptr noundef nonnull %5) #7, !dbg !359
  tail call void @llvm.dbg.value(metadata i32 %31, metadata !316, metadata !DIExpression()), !dbg !329
  %32 = load double, ptr %5, align 8, !dbg !360, !tbaa !165
  store double %32, ptr %3, align 8, !dbg !361, !tbaa !193
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7, !dbg !362
  br label %98

33:                                               ; preds = %28
  %34 = tail call double @llvm.fabs.f64(double %2), !dbg !363
  tail call void @llvm.dbg.value(metadata double %34, metadata !317, metadata !DIExpression()), !dbg !331
  %35 = fdiv double 2.000000e+00, %34, !dbg !364
  tail call void @llvm.dbg.value(metadata double %35, metadata !319, metadata !DIExpression()), !dbg !331
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #7, !dbg !365
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #7, !dbg !366
  %36 = add i32 %1, 1, !dbg !367
  %37 = call i32 @gsl_sf_bessel_In_scaled_e(i32 noundef %36, double noundef %34, ptr noundef nonnull %6), !dbg !368
  tail call void @llvm.dbg.value(metadata i32 %37, metadata !322, metadata !DIExpression()), !dbg !331
  %38 = call i32 @gsl_sf_bessel_In_scaled_e(i32 noundef %1, double noundef %34, ptr noundef nonnull %7), !dbg !369
  tail call void @llvm.dbg.value(metadata i32 %38, metadata !323, metadata !DIExpression()), !dbg !331
  tail call void @llvm.dbg.value(metadata double poison, metadata !325, metadata !DIExpression()), !dbg !331
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !327, metadata !DIExpression()), !dbg !331
  tail call void @llvm.dbg.value(metadata double poison, metadata !324, metadata !DIExpression()), !dbg !331
  %39 = load double, ptr %7, align 8, !dbg !370, !tbaa !165
  tail call void @llvm.dbg.value(metadata double %39, metadata !325, metadata !DIExpression()), !dbg !331
  %40 = load double, ptr %6, align 8, !dbg !371, !tbaa !165
  tail call void @llvm.dbg.value(metadata double %40, metadata !324, metadata !DIExpression()), !dbg !331
  %41 = sext i32 %1 to i64, !dbg !372
  %42 = zext nneg i32 %0 to i64, !dbg !372
  br label %43, !dbg !372

43:                                               ; preds = %33, %43
  %44 = phi i64 [ %41, %33 ], [ %54, %43 ]
  %45 = phi double [ %39, %33 ], [ %53, %43 ]
  %46 = phi double [ %40, %33 ], [ %45, %43 ]
  tail call void @llvm.dbg.value(metadata i64 %44, metadata !327, metadata !DIExpression()), !dbg !331
  tail call void @llvm.dbg.value(metadata double %45, metadata !325, metadata !DIExpression()), !dbg !331
  tail call void @llvm.dbg.value(metadata double %46, metadata !324, metadata !DIExpression()), !dbg !331
  %47 = sub nsw i64 %44, %42, !dbg !374
  %48 = getelementptr inbounds double, ptr %3, i64 %47, !dbg !377
  store double %45, ptr %48, align 8, !dbg !378, !tbaa !193
  %49 = trunc i64 %44 to i32, !dbg !379
  %50 = sitofp i32 %49 to double, !dbg !379
  %51 = fmul double %35, %50, !dbg !380
  %52 = fmul double %45, %51, !dbg !381
  %53 = fadd double %46, %52, !dbg !382
  tail call void @llvm.dbg.value(metadata double %53, metadata !326, metadata !DIExpression()), !dbg !331
  tail call void @llvm.dbg.value(metadata double %45, metadata !324, metadata !DIExpression()), !dbg !331
  tail call void @llvm.dbg.value(metadata double %53, metadata !325, metadata !DIExpression()), !dbg !331
  %54 = add nsw i64 %44, -1, !dbg !383
  tail call void @llvm.dbg.value(metadata i64 %54, metadata !327, metadata !DIExpression()), !dbg !331
  %55 = icmp sgt i64 %44, %42, !dbg !384
  br i1 %55, label %43, label %56, !dbg !372, !llvm.loop !385

56:                                               ; preds = %43
  %57 = fcmp uge double %2, 0.000000e+00, !dbg !387
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !327, metadata !DIExpression()), !dbg !331
  br i1 %57, label %95, label %58, !dbg !389

58:                                               ; preds = %56
  %59 = sext i32 %0 to i64, !dbg !390
  %60 = xor i32 %1, -1, !dbg !390
  %61 = sub i32 %60, %0, !dbg !390
  %62 = and i32 %61, 1, !dbg !390
  %63 = icmp eq i32 %62, 0, !dbg !390
  br i1 %63, label %72, label %64, !dbg !390

64:                                               ; preds = %58
  tail call void @llvm.dbg.value(metadata i64 %59, metadata !327, metadata !DIExpression()), !dbg !331
  %65 = and i64 %59, 1, !dbg !393
  %66 = icmp eq i64 %65, 0, !dbg !393
  br i1 %66, label %70, label %67, !dbg !397

67:                                               ; preds = %64
  %68 = load double, ptr %3, align 8, !dbg !398, !tbaa !193
  %69 = fneg double %68, !dbg !399
  store double %69, ptr %3, align 8, !dbg !400, !tbaa !193
  br label %70, !dbg !401

70:                                               ; preds = %67, %64
  %71 = add nsw i64 %59, 1, !dbg !402
  tail call void @llvm.dbg.value(metadata i64 %71, metadata !327, metadata !DIExpression()), !dbg !331
  br label %72, !dbg !390

72:                                               ; preds = %70, %58
  %73 = phi i64 [ %59, %58 ], [ %71, %70 ]
  %74 = icmp eq i32 %1, %0, !dbg !390
  br i1 %74, label %95, label %75, !dbg !390

75:                                               ; preds = %72
  %76 = and i64 %73, 1, !dbg !390
  br label %77, !dbg !390

77:                                               ; preds = %91, %75
  %78 = phi i64 [ %73, %75 ], [ %92, %91 ]
  tail call void @llvm.dbg.value(metadata i64 %78, metadata !327, metadata !DIExpression()), !dbg !331
  %79 = icmp eq i64 %76, 0, !dbg !397
  br i1 %79, label %85, label %80, !dbg !397

80:                                               ; preds = %77
  %81 = sub nsw i64 %78, %59, !dbg !403
  %82 = getelementptr inbounds double, ptr %3, i64 %81, !dbg !398
  %83 = load double, ptr %82, align 8, !dbg !398, !tbaa !193
  %84 = fneg double %83, !dbg !399
  store double %84, ptr %82, align 8, !dbg !400, !tbaa !193
  tail call void @llvm.dbg.value(metadata i64 %78, metadata !327, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !331
  tail call void @llvm.dbg.value(metadata i64 %78, metadata !327, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !331
  br label %91, !dbg !397

85:                                               ; preds = %77
  %86 = add nsw i64 %78, 1, !dbg !402
  tail call void @llvm.dbg.value(metadata i64 %86, metadata !327, metadata !DIExpression()), !dbg !331
  %87 = sub nsw i64 %86, %59, !dbg !403
  %88 = getelementptr inbounds double, ptr %3, i64 %87, !dbg !398
  %89 = load double, ptr %88, align 8, !dbg !398, !tbaa !193
  %90 = fneg double %89, !dbg !399
  store double %90, ptr %88, align 8, !dbg !400, !tbaa !193
  br label %91, !dbg !401

91:                                               ; preds = %80, %85
  %92 = add nsw i64 %78, 2, !dbg !402
  tail call void @llvm.dbg.value(metadata i64 %92, metadata !327, metadata !DIExpression()), !dbg !331
  %93 = trunc i64 %92 to i32, !dbg !404
  %94 = icmp eq i32 %36, %93, !dbg !404
  br i1 %94, label %95, label %77, !dbg !390, !llvm.loop !405

95:                                               ; preds = %72, %91, %56
  %96 = icmp eq i32 %37, 0, !dbg !407
  %97 = select i1 %96, i32 %38, i32 %37, !dbg !407
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #7, !dbg !408
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #7, !dbg !408
  br label %98

98:                                               ; preds = %21, %27, %18, %30, %95
  %99 = phi i32 [ 1, %18 ], [ %31, %30 ], [ %97, %95 ], [ 0, %27 ], [ 0, %21 ], !dbg !409
  ret i32 %99, !dbg !410
}

declare !dbg !411 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_bessel_In_e(i32 noundef %0, double noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 !dbg !416 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !430
  call void @llvm.dbg.assign(metadata i1 undef, metadata !425, metadata !DIExpression(), metadata !430, metadata ptr %4, metadata !DIExpression()), !dbg !431
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !420, metadata !DIExpression()), !dbg !431
  tail call void @llvm.dbg.value(metadata double %1, metadata !421, metadata !DIExpression()), !dbg !431
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !422, metadata !DIExpression()), !dbg !431
  %5 = tail call double @llvm.fabs.f64(double %1), !dbg !432
  tail call void @llvm.dbg.value(metadata double %5, metadata !423, metadata !DIExpression()), !dbg !431
  %6 = tail call i32 @llvm.abs.i32(i32 %0, i1 true), !dbg !433
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !424, metadata !DIExpression()), !dbg !431
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #7, !dbg !434
  %7 = call i32 @gsl_sf_bessel_In_scaled_e(i32 noundef %6, double noundef %5, ptr noundef nonnull %4), !dbg !435
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !426, metadata !DIExpression()), !dbg !431
  %8 = fcmp ogt double %5, 0x40862642FEFA39EF, !dbg !436
  br i1 %8, label %9, label %11, !dbg !437

9:                                                ; preds = %3
  store double 0x7FF0000000000000, ptr %2, align 8, !dbg !438, !tbaa !165
  %10 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !438
  store double 0x7FF0000000000000, ptr %10, align 8, !dbg !438, !tbaa !173
  call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 179, i32 noundef 16) #7, !dbg !441
  br label %29, !dbg !441

11:                                               ; preds = %3
  %12 = call double @exp(double noundef %5) #7, !dbg !443
  tail call void @llvm.dbg.value(metadata double %12, metadata !427, metadata !DIExpression()), !dbg !444
  %13 = load double, ptr %4, align 8, !dbg !445, !tbaa !165
  %14 = fmul double %12, %13, !dbg !446
  store double %14, ptr %2, align 8, !dbg !447, !tbaa !165
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !448
  %16 = load double, ptr %15, align 8, !dbg !448, !tbaa !173
  %17 = fmul double %12, %16, !dbg !449
  %18 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !450
  %19 = fmul double %5, 0x3CB0000000000000, !dbg !451
  %20 = call double @llvm.fabs.f64(double %14), !dbg !452
  %21 = fmul double %19, %20, !dbg !453
  %22 = fadd double %17, %21, !dbg !454
  store double %22, ptr %18, align 8, !dbg !454, !tbaa !173
  %23 = fcmp uge double %1, 0.000000e+00, !dbg !455
  %24 = and i32 %6, 1
  %25 = icmp eq i32 %24, 0
  %26 = or i1 %23, %25, !dbg !457
  br i1 %26, label %29, label %27, !dbg !457

27:                                               ; preds = %11
  %28 = fneg double %14, !dbg !458
  store double %28, ptr %2, align 8, !dbg !459, !tbaa !165
  br label %29, !dbg !460

29:                                               ; preds = %11, %27, %9
  %30 = phi i32 [ 16, %9 ], [ %7, %27 ], [ %7, %11 ], !dbg !461
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #7, !dbg !462
  ret i32 %30, !dbg !462
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_bessel_In_array(i32 noundef %0, i32 noundef %1, double noundef %2, ptr nocapture noundef %3) local_unnamed_addr #0 !dbg !463 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !465, metadata !DIExpression()), !dbg !477
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !466, metadata !DIExpression()), !dbg !477
  tail call void @llvm.dbg.value(metadata double %2, metadata !467, metadata !DIExpression()), !dbg !477
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !468, metadata !DIExpression()), !dbg !477
  %5 = tail call double @llvm.fabs.f64(double %2), !dbg !478
  tail call void @llvm.dbg.value(metadata double %5, metadata !469, metadata !DIExpression()), !dbg !477
  %6 = fcmp ogt double %5, 0x40862642FEFA39EF, !dbg !479
  br i1 %6, label %7, label %15, !dbg !480

7:                                                ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 0, metadata !470, metadata !DIExpression()), !dbg !481
  %8 = icmp slt i32 %1, %0, !dbg !482
  br i1 %8, label %14, label %9, !dbg !485

9:                                                ; preds = %7
  %10 = add i32 %1, 1, !dbg !485
  %11 = sub i32 %10, %0, !dbg !485
  %12 = zext i32 %11 to i64, !dbg !485
  %13 = shl nuw nsw i64 %12, 3, !dbg !485
  tail call void @llvm.memset.p0.i64(ptr align 8 %3, i8 0, i64 %13, i1 false), !dbg !486, !tbaa !193
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !470, metadata !DIExpression()), !dbg !481
  br label %14, !dbg !487

14:                                               ; preds = %9, %7
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 202, i32 noundef 16) #7, !dbg !487
  br label %61

15:                                               ; preds = %4
  %16 = tail call double @exp(double noundef %5) #7, !dbg !489
  tail call void @llvm.dbg.value(metadata double %16, metadata !475, metadata !DIExpression()), !dbg !490
  %17 = tail call i32 @gsl_sf_bessel_In_scaled_array(i32 noundef %0, i32 noundef %1, double noundef %2, ptr noundef %3), !dbg !491
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !476, metadata !DIExpression()), !dbg !490
  tail call void @llvm.dbg.value(metadata i32 0, metadata !473, metadata !DIExpression()), !dbg !490
  tail call void @llvm.dbg.value(metadata i32 0, metadata !473, metadata !DIExpression()), !dbg !490
  %18 = icmp slt i32 %1, %0, !dbg !492
  br i1 %18, label %61, label %19, !dbg !495

19:                                               ; preds = %15
  %20 = add i32 %1, 1, !dbg !495
  %21 = sub i32 %20, %0, !dbg !495
  %22 = zext i32 %21 to i64, !dbg !492
  %23 = add nsw i64 %22, -1, !dbg !495
  %24 = and i64 %22, 3, !dbg !495
  %25 = icmp ult i64 %23, 3, !dbg !495
  br i1 %25, label %49, label %26, !dbg !495

26:                                               ; preds = %19
  %27 = and i64 %22, 4294967292, !dbg !495
  br label %28, !dbg !495

28:                                               ; preds = %28, %26
  %29 = phi i64 [ 0, %26 ], [ %46, %28 ]
  %30 = phi i64 [ 0, %26 ], [ %47, %28 ]
  tail call void @llvm.dbg.value(metadata i64 %29, metadata !473, metadata !DIExpression()), !dbg !490
  %31 = getelementptr inbounds double, ptr %3, i64 %29, !dbg !496
  %32 = load double, ptr %31, align 8, !dbg !497, !tbaa !193
  %33 = fmul double %16, %32, !dbg !497
  store double %33, ptr %31, align 8, !dbg !497, !tbaa !193
  %34 = or disjoint i64 %29, 1, !dbg !498
  tail call void @llvm.dbg.value(metadata i64 %34, metadata !473, metadata !DIExpression()), !dbg !490
  tail call void @llvm.dbg.value(metadata i64 %34, metadata !473, metadata !DIExpression()), !dbg !490
  %35 = getelementptr inbounds double, ptr %3, i64 %34, !dbg !496
  %36 = load double, ptr %35, align 8, !dbg !497, !tbaa !193
  %37 = fmul double %16, %36, !dbg !497
  store double %37, ptr %35, align 8, !dbg !497, !tbaa !193
  %38 = or disjoint i64 %29, 2, !dbg !498
  tail call void @llvm.dbg.value(metadata i64 %38, metadata !473, metadata !DIExpression()), !dbg !490
  tail call void @llvm.dbg.value(metadata i64 %38, metadata !473, metadata !DIExpression()), !dbg !490
  %39 = getelementptr inbounds double, ptr %3, i64 %38, !dbg !496
  %40 = load double, ptr %39, align 8, !dbg !497, !tbaa !193
  %41 = fmul double %16, %40, !dbg !497
  store double %41, ptr %39, align 8, !dbg !497, !tbaa !193
  %42 = or disjoint i64 %29, 3, !dbg !498
  tail call void @llvm.dbg.value(metadata i64 %42, metadata !473, metadata !DIExpression()), !dbg !490
  tail call void @llvm.dbg.value(metadata i64 %42, metadata !473, metadata !DIExpression()), !dbg !490
  %43 = getelementptr inbounds double, ptr %3, i64 %42, !dbg !496
  %44 = load double, ptr %43, align 8, !dbg !497, !tbaa !193
  %45 = fmul double %16, %44, !dbg !497
  store double %45, ptr %43, align 8, !dbg !497, !tbaa !193
  %46 = add nuw nsw i64 %29, 4, !dbg !498
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !473, metadata !DIExpression()), !dbg !490
  %47 = add i64 %30, 4, !dbg !495
  %48 = icmp eq i64 %47, %27, !dbg !495
  br i1 %48, label %49, label %28, !dbg !495, !llvm.loop !499

49:                                               ; preds = %28, %19
  %50 = phi i64 [ 0, %19 ], [ %46, %28 ]
  %51 = icmp eq i64 %24, 0, !dbg !495
  br i1 %51, label %61, label %52, !dbg !495

52:                                               ; preds = %49, %52
  %53 = phi i64 [ %58, %52 ], [ %50, %49 ]
  %54 = phi i64 [ %59, %52 ], [ 0, %49 ]
  tail call void @llvm.dbg.value(metadata i64 %53, metadata !473, metadata !DIExpression()), !dbg !490
  %55 = getelementptr inbounds double, ptr %3, i64 %53, !dbg !496
  %56 = load double, ptr %55, align 8, !dbg !497, !tbaa !193
  %57 = fmul double %16, %56, !dbg !497
  store double %57, ptr %55, align 8, !dbg !497, !tbaa !193
  %58 = add nuw nsw i64 %53, 1, !dbg !498
  tail call void @llvm.dbg.value(metadata i64 %58, metadata !473, metadata !DIExpression()), !dbg !490
  %59 = add i64 %54, 1, !dbg !495
  %60 = icmp eq i64 %59, %24, !dbg !495
  br i1 %60, label %61, label %52, !dbg !495, !llvm.loop !501

61:                                               ; preds = %49, %52, %15, %14
  %62 = phi i32 [ 16, %14 ], [ %17, %15 ], [ %17, %52 ], [ %17, %49 ], !dbg !502
  ret i32 %62, !dbg !503
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_bessel_In_scaled(i32 noundef %0, double noundef %1) local_unnamed_addr #0 !dbg !504 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !512
  call void @llvm.dbg.assign(metadata i1 undef, metadata !510, metadata !DIExpression(), metadata !512, metadata ptr %3, metadata !DIExpression()), !dbg !513
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !508, metadata !DIExpression()), !dbg !513
  tail call void @llvm.dbg.value(metadata double %1, metadata !509, metadata !DIExpression()), !dbg !513
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7, !dbg !514
  %4 = call i32 @gsl_sf_bessel_In_scaled_e(i32 noundef %0, double noundef %1, ptr noundef nonnull %3), !dbg !514
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !511, metadata !DIExpression()), !dbg !513
  %5 = icmp eq i32 %4, 0, !dbg !515
  br i1 %5, label %7, label %6, !dbg !514

6:                                                ; preds = %2
  call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 219, i32 noundef %4) #7, !dbg !517
  br label %7, !dbg !517

7:                                                ; preds = %2, %6
  %8 = load double, ptr %3, align 8, !dbg !514, !tbaa !165
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7, !dbg !520
  ret double %8, !dbg !520
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_bessel_In(i32 noundef %0, double noundef %1) local_unnamed_addr #0 !dbg !521 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !527
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !523, metadata !DIExpression()), !dbg !528
  tail call void @llvm.dbg.value(metadata double %1, metadata !524, metadata !DIExpression()), !dbg !528
  call void @llvm.dbg.assign(metadata i1 undef, metadata !425, metadata !DIExpression(), metadata !527, metadata ptr %3, metadata !DIExpression()), !dbg !529
  call void @llvm.dbg.value(metadata i32 %0, metadata !420, metadata !DIExpression()), !dbg !529
  call void @llvm.dbg.value(metadata double %1, metadata !421, metadata !DIExpression()), !dbg !529
  call void @llvm.dbg.value(metadata ptr undef, metadata !422, metadata !DIExpression()), !dbg !529
  %4 = tail call double @llvm.fabs.f64(double %1), !dbg !531
  call void @llvm.dbg.value(metadata double %4, metadata !423, metadata !DIExpression()), !dbg !529
  %5 = tail call i32 @llvm.abs.i32(i32 %0, i1 true), !dbg !532
  call void @llvm.dbg.value(metadata i32 %5, metadata !424, metadata !DIExpression()), !dbg !529
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7, !dbg !533
  %6 = call i32 @gsl_sf_bessel_In_scaled_e(i32 noundef %5, double noundef %4, ptr noundef nonnull %3), !dbg !534
  call void @llvm.dbg.value(metadata i32 %6, metadata !426, metadata !DIExpression()), !dbg !529
  %7 = fcmp ogt double %4, 0x40862642FEFA39EF, !dbg !535
  br i1 %7, label %8, label %9, !dbg !536

8:                                                ; preds = %2
  tail call void @llvm.dbg.value(metadata double 0x7FF0000000000000, metadata !525, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !528
  tail call void @llvm.dbg.value(metadata double 0x7FF0000000000000, metadata !525, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !528
  call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 179, i32 noundef 16) #7, !dbg !537
  tail call void @llvm.dbg.value(metadata double 0x7FF0000000000000, metadata !525, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !528
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7, !dbg !538
  tail call void @llvm.dbg.value(metadata i32 16, metadata !526, metadata !DIExpression()), !dbg !528
  br label %20, !dbg !539

9:                                                ; preds = %2
  %10 = call double @exp(double noundef %4) #7, !dbg !540
  call void @llvm.dbg.value(metadata double %10, metadata !427, metadata !DIExpression()), !dbg !541
  %11 = load double, ptr %3, align 8, !dbg !542, !tbaa !165
  %12 = fmul double %10, %11, !dbg !543
  tail call void @llvm.dbg.value(metadata double %12, metadata !525, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !528
  tail call void @llvm.dbg.value(metadata double poison, metadata !525, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !528
  %13 = fcmp uge double %1, 0.000000e+00, !dbg !544
  %14 = and i32 %5, 1
  %15 = icmp eq i32 %14, 0
  %16 = or i1 %13, %15, !dbg !545
  %17 = fneg double %12, !dbg !545
  %18 = select i1 %16, double %12, double %17, !dbg !545
  tail call void @llvm.dbg.value(metadata double %18, metadata !525, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !528
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7, !dbg !538
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !526, metadata !DIExpression()), !dbg !528
  %19 = icmp eq i32 %6, 0, !dbg !546
  br i1 %19, label %23, label %20, !dbg !539

20:                                               ; preds = %8, %9
  %21 = phi i32 [ 16, %8 ], [ %6, %9 ]
  %22 = phi double [ 0x7FF0000000000000, %8 ], [ %18, %9 ]
  call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 224, i32 noundef %21) #7, !dbg !548
  br label %23, !dbg !548

23:                                               ; preds = %9, %20
  %24 = phi double [ %18, %9 ], [ %22, %20 ]
  ret double %24, !dbg !551
}

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
!155 = !DILocation(line: 54, column: 24, scope: !97)
!156 = !DILocation(line: 54, column: 21, scope: !97)
!157 = !DILocation(line: 54, column: 29, scope: !97)
!158 = !DILocation(line: 54, column: 15, scope: !97)
!159 = !DILocation(line: 54, column: 11, scope: !98)
!160 = !DILocation(line: 55, column: 5, scope: !96)
!161 = !DILocation(line: 56, column: 23, scope: !96)
!162 = !DILocation(line: 56, column: 19, scope: !96)
!163 = !DILocation(line: 57, column: 19, scope: !96)
!164 = !DILocation(line: 58, column: 22, scope: !96)
!165 = !{!166, !167, i64 0}
!166 = !{!"gsl_sf_result_struct", !167, i64 0, !167, i64 8}
!167 = !{!"double", !168, i64 0}
!168 = !{!"omnipotent char", !169, i64 0}
!169 = !{!"Simple C/C++ TBAA"}
!170 = !DILocation(line: 58, column: 26, scope: !96)
!171 = !DILocation(line: 58, column: 18, scope: !96)
!172 = !DILocation(line: 59, column: 22, scope: !96)
!173 = !{!166, !167, i64 8}
!174 = !DILocation(line: 59, column: 26, scope: !96)
!175 = !DILocation(line: 59, column: 13, scope: !96)
!176 = !DILocation(line: 60, column: 44, scope: !96)
!177 = !DILocation(line: 60, column: 42, scope: !96)
!178 = !DILocation(line: 60, column: 17, scope: !96)
!179 = !DILocation(line: 61, column: 10, scope: !180)
!180 = distinct !DILexicalBlock(scope: !96, file: !2, line: 61, column: 8)
!181 = !DILocation(line: 61, column: 16, scope: !180)
!182 = !DILocation(line: 61, column: 48, scope: !180)
!183 = !DILocation(line: 61, column: 46, scope: !180)
!184 = !DILocation(line: 61, column: 34, scope: !180)
!185 = !DILocation(line: 63, column: 3, scope: !97)
!186 = !DILocation(line: 64, column: 13, scope: !105)
!187 = !DILocation(line: 64, column: 19, scope: !105)
!188 = !DILocation(line: 65, column: 5, scope: !104)
!189 = !DILocation(line: 66, column: 19, scope: !104)
!190 = !DILocation(line: 67, column: 5, scope: !104)
!191 = !DILocation(line: 68, column: 20, scope: !104)
!192 = !DILocation(line: 69, column: 19, scope: !104)
!193 = !{!167, !167, i64 0}
!194 = !DILocation(line: 69, column: 23, scope: !104)
!195 = !DILocation(line: 73, column: 5, scope: !196)
!196 = distinct !DILexicalBlock(scope: !104, file: !2, line: 73, column: 5)
!197 = !DILocation(line: 74, column: 25, scope: !198)
!198 = distinct !DILexicalBlock(scope: !199, file: !2, line: 73, column: 27)
!199 = distinct !DILexicalBlock(scope: !196, file: !2, line: 73, column: 5)
!200 = !DILocation(line: 74, column: 24, scope: !198)
!201 = !DILocation(line: 74, column: 26, scope: !198)
!202 = !DILocation(line: 74, column: 30, scope: !198)
!203 = !DILocation(line: 74, column: 19, scope: !198)
!204 = !DILocation(line: 73, column: 23, scope: !199)
!205 = !DILocation(line: 73, column: 16, scope: !199)
!206 = distinct !{!206, !195, !207, !208}
!207 = !DILocation(line: 77, column: 5, scope: !196)
!208 = !{!"llvm.loop.mustprogress"}
!209 = !DILocation(line: 78, column: 30, scope: !104)
!210 = !DILocation(line: 78, column: 54, scope: !104)
!211 = !DILocation(line: 78, column: 34, scope: !104)
!212 = !DILocation(line: 78, column: 18, scope: !104)
!213 = !DILocation(line: 79, column: 30, scope: !104)
!214 = !DILocation(line: 79, column: 34, scope: !104)
!215 = !DILocation(line: 79, column: 13, scope: !104)
!216 = !DILocation(line: 80, column: 44, scope: !104)
!217 = !DILocation(line: 80, column: 42, scope: !104)
!218 = !DILocation(line: 80, column: 17, scope: !104)
!219 = !DILocation(line: 81, column: 10, scope: !220)
!220 = distinct !DILexicalBlock(scope: !104, file: !2, line: 81, column: 8)
!221 = !DILocation(line: 81, column: 16, scope: !220)
!222 = !DILocation(line: 81, column: 48, scope: !220)
!223 = !DILocation(line: 81, column: 46, scope: !220)
!224 = !DILocation(line: 81, column: 34, scope: !220)
!225 = !DILocation(line: 82, column: 12, scope: !104)
!226 = !DILocation(line: 83, column: 3, scope: !105)
!227 = !DILocation(line: 84, column: 12, scope: !115)
!228 = !DILocation(line: 84, column: 51, scope: !115)
!229 = !DILocation(line: 84, column: 12, scope: !105)
!230 = !DILocation(line: 85, column: 19, scope: !114)
!231 = !DILocation(line: 0, scope: !114)
!232 = !DILocation(line: 86, column: 10, scope: !233)
!233 = distinct !DILexicalBlock(scope: !114, file: !2, line: 86, column: 8)
!234 = !DILocation(line: 86, column: 16, scope: !233)
!235 = !DILocation(line: 86, column: 57, scope: !233)
!236 = !DILocation(line: 86, column: 48, scope: !233)
!237 = !DILocation(line: 86, column: 46, scope: !233)
!238 = !DILocation(line: 86, column: 34, scope: !233)
!239 = !DILocation(line: 91, column: 5, scope: !117)
!240 = !DILocation(line: 92, column: 5, scope: !117)
!241 = !DILocation(line: 93, column: 19, scope: !117)
!242 = !DILocation(line: 94, column: 19, scope: !117)
!243 = !DILocation(line: 95, column: 26, scope: !117)
!244 = !DILocation(line: 96, column: 24, scope: !117)
!245 = !DILocation(line: 99, column: 18, scope: !246)
!246 = distinct !DILexicalBlock(scope: !247, file: !2, line: 99, column: 5)
!247 = distinct !DILexicalBlock(scope: !117, file: !2, line: 99, column: 5)
!248 = !DILocation(line: 99, column: 5, scope: !247)
!249 = !DILocation(line: 100, column: 25, scope: !250)
!250 = distinct !DILexicalBlock(scope: !246, file: !2, line: 99, column: 28)
!251 = !DILocation(line: 100, column: 24, scope: !250)
!252 = !DILocation(line: 100, column: 26, scope: !250)
!253 = !DILocation(line: 100, column: 30, scope: !250)
!254 = !DILocation(line: 100, column: 19, scope: !250)
!255 = !DILocation(line: 99, column: 24, scope: !246)
!256 = distinct !{!256, !248, !257, !208}
!257 = !DILocation(line: 103, column: 5, scope: !247)
!258 = distinct !{!258, !259}
!259 = !{!"llvm.loop.unroll.disable"}
!260 = !DILocation(line: 104, column: 17, scope: !117)
!261 = !DILocation(line: 105, column: 32, scope: !117)
!262 = !DILocation(line: 105, column: 35, scope: !117)
!263 = !DILocation(line: 105, column: 54, scope: !117)
!264 = !DILocation(line: 105, column: 57, scope: !117)
!265 = !DILocation(line: 105, column: 47, scope: !117)
!266 = !DILocation(line: 105, column: 22, scope: !117)
!267 = !DILocation(line: 105, column: 13, scope: !117)
!268 = !DILocation(line: 105, column: 17, scope: !117)
!269 = !DILocation(line: 106, column: 10, scope: !270)
!270 = distinct !DILexicalBlock(scope: !117, file: !2, line: 106, column: 8)
!271 = !DILocation(line: 106, column: 16, scope: !270)
!272 = !DILocation(line: 106, column: 48, scope: !270)
!273 = !DILocation(line: 106, column: 46, scope: !270)
!274 = !DILocation(line: 106, column: 34, scope: !270)
!275 = !DILocation(line: 107, column: 12, scope: !117)
!276 = !DILocation(line: 108, column: 3, scope: !115)
!277 = !DILocation(line: 0, scope: !100)
!278 = !DILocation(line: 109, column: 1, scope: !79)
!279 = !DISubprogram(name: "gsl_sf_bessel_I0_scaled_e", scope: !280, file: !280, line: 146, type: !281, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!280 = !DIFile(filename: "../gsl/gsl_sf_bessel.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "45459f63edc3203df6c715a25160d493")
!281 = !DISubroutineType(types: !282)
!282 = !{!31, !82, !83}
!283 = !DISubprogram(name: "gsl_sf_bessel_I1_scaled_e", scope: !280, file: !280, line: 155, type: !281, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!284 = !DISubprogram(name: "exp", scope: !285, file: !285, line: 95, type: !286, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!285 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!286 = !DISubroutineType(types: !287)
!287 = !{!69, !69}
!288 = !DISubprogram(name: "gsl_sf_bessel_IJ_taylor_e", scope: !289, file: !289, line: 32, type: !290, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!289 = !DIFile(filename: "./bessel.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "57b96fff5bee18a41e1173dbca5404a0")
!290 = !DISubroutineType(types: !291)
!291 = !{!31, !82, !82, !118, !118, !82, !83}
!292 = !DISubprogram(name: "gsl_sf_bessel_I_CF1_ser", scope: !289, file: !289, line: 62, type: !293, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!293 = !DISubroutineType(types: !294)
!294 = !{!31, !82, !82, !295}
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!296 = !DISubprogram(name: "gsl_sf_bessel_Inu_scaled_asymp_unif_e", scope: !289, file: !289, line: 48, type: !297, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!297 = !DISubroutineType(types: !298)
!298 = !{!31, !82, !82, !83}
!299 = distinct !DISubprogram(name: "gsl_sf_bessel_In_scaled_array", scope: !2, file: !2, line: 113, type: !300, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !27, retainedNodes: !302)
!300 = !DISubroutineType(types: !301)
!301 = !{!31, !118, !118, !82, !295}
!302 = !{!303, !304, !305, !306, !307, !310, !313, !316, !317, !319, !320, !321, !322, !323, !324, !325, !326, !327}
!303 = !DILocalVariable(name: "nmin", arg: 1, scope: !299, file: !2, line: 113, type: !118)
!304 = !DILocalVariable(name: "nmax", arg: 2, scope: !299, file: !2, line: 113, type: !118)
!305 = !DILocalVariable(name: "x", arg: 3, scope: !299, file: !2, line: 113, type: !82)
!306 = !DILocalVariable(name: "result_array", arg: 4, scope: !299, file: !2, line: 113, type: !295)
!307 = !DILocalVariable(name: "j", scope: !308, file: !2, line: 118, type: !31)
!308 = distinct !DILexicalBlock(scope: !309, file: !2, line: 117, column: 31)
!309 = distinct !DILexicalBlock(scope: !299, file: !2, line: 117, column: 6)
!310 = !DILocalVariable(name: "j", scope: !311, file: !2, line: 123, type: !31)
!311 = distinct !DILexicalBlock(scope: !312, file: !2, line: 122, column: 21)
!312 = distinct !DILexicalBlock(scope: !309, file: !2, line: 122, column: 11)
!313 = !DILocalVariable(name: "I0_scaled", scope: !314, file: !2, line: 129, type: !84)
!314 = distinct !DILexicalBlock(scope: !315, file: !2, line: 128, column: 22)
!315 = distinct !DILexicalBlock(scope: !312, file: !2, line: 128, column: 11)
!316 = !DILocalVariable(name: "stat", scope: !314, file: !2, line: 130, type: !31)
!317 = !DILocalVariable(name: "ax", scope: !318, file: !2, line: 135, type: !82)
!318 = distinct !DILexicalBlock(scope: !315, file: !2, line: 134, column: 8)
!319 = !DILocalVariable(name: "two_over_x", scope: !318, file: !2, line: 136, type: !82)
!320 = !DILocalVariable(name: "r_Inp1", scope: !318, file: !2, line: 139, type: !84)
!321 = !DILocalVariable(name: "r_In", scope: !318, file: !2, line: 140, type: !84)
!322 = !DILocalVariable(name: "stat_0", scope: !318, file: !2, line: 141, type: !31)
!323 = !DILocalVariable(name: "stat_1", scope: !318, file: !2, line: 142, type: !31)
!324 = !DILocalVariable(name: "Inp1", scope: !318, file: !2, line: 143, type: !69)
!325 = !DILocalVariable(name: "In", scope: !318, file: !2, line: 144, type: !69)
!326 = !DILocalVariable(name: "Inm1", scope: !318, file: !2, line: 145, type: !69)
!327 = !DILocalVariable(name: "n", scope: !318, file: !2, line: 146, type: !31)
!328 = distinct !DIAssignID()
!329 = !DILocation(line: 0, scope: !314)
!330 = distinct !DIAssignID()
!331 = !DILocation(line: 0, scope: !318)
!332 = distinct !DIAssignID()
!333 = !DILocation(line: 0, scope: !299)
!334 = !DILocation(line: 117, column: 11, scope: !309)
!335 = !DILocation(line: 117, column: 18, scope: !309)
!336 = !DILocation(line: 0, scope: !308)
!337 = !DILocation(line: 119, column: 15, scope: !338)
!338 = distinct !DILexicalBlock(scope: !339, file: !2, line: 119, column: 5)
!339 = distinct !DILexicalBlock(scope: !308, file: !2, line: 119, column: 5)
!340 = !DILocation(line: 119, column: 5, scope: !339)
!341 = !DILocation(line: 119, column: 49, scope: !338)
!342 = !DILocation(line: 120, column: 5, scope: !343)
!343 = distinct !DILexicalBlock(scope: !308, file: !2, line: 120, column: 5)
!344 = !DILocation(line: 122, column: 13, scope: !312)
!345 = !DILocation(line: 122, column: 11, scope: !309)
!346 = !DILocation(line: 0, scope: !311)
!347 = !DILocation(line: 124, column: 5, scope: !348)
!348 = distinct !DILexicalBlock(scope: !311, file: !2, line: 124, column: 5)
!349 = !DILocation(line: 124, column: 49, scope: !350)
!350 = distinct !DILexicalBlock(scope: !348, file: !2, line: 124, column: 5)
!351 = !DILocation(line: 125, column: 13, scope: !352)
!352 = distinct !DILexicalBlock(scope: !311, file: !2, line: 125, column: 8)
!353 = !DILocation(line: 125, column: 8, scope: !311)
!354 = !DILocation(line: 125, column: 35, scope: !352)
!355 = !DILocation(line: 125, column: 19, scope: !352)
!356 = !DILocation(line: 128, column: 16, scope: !315)
!357 = !DILocation(line: 128, column: 11, scope: !312)
!358 = !DILocation(line: 129, column: 5, scope: !314)
!359 = !DILocation(line: 130, column: 16, scope: !314)
!360 = !DILocation(line: 131, column: 33, scope: !314)
!361 = !DILocation(line: 131, column: 21, scope: !314)
!362 = !DILocation(line: 133, column: 3, scope: !315)
!363 = !DILocation(line: 135, column: 23, scope: !318)
!364 = !DILocation(line: 136, column: 34, scope: !318)
!365 = !DILocation(line: 139, column: 5, scope: !318)
!366 = !DILocation(line: 140, column: 5, scope: !318)
!367 = !DILocation(line: 141, column: 48, scope: !318)
!368 = !DILocation(line: 141, column: 18, scope: !318)
!369 = !DILocation(line: 142, column: 18, scope: !318)
!370 = !DILocation(line: 144, column: 24, scope: !318)
!371 = !DILocation(line: 143, column: 26, scope: !318)
!372 = !DILocation(line: 148, column: 5, scope: !373)
!373 = distinct !DILexicalBlock(scope: !318, file: !2, line: 148, column: 5)
!374 = !DILocation(line: 149, column: 21, scope: !375)
!375 = distinct !DILexicalBlock(scope: !376, file: !2, line: 148, column: 31)
!376 = distinct !DILexicalBlock(scope: !373, file: !2, line: 148, column: 5)
!377 = !DILocation(line: 149, column: 7, scope: !375)
!378 = !DILocation(line: 149, column: 28, scope: !375)
!379 = !DILocation(line: 150, column: 21, scope: !375)
!380 = !DILocation(line: 150, column: 23, scope: !375)
!381 = !DILocation(line: 150, column: 36, scope: !375)
!382 = !DILocation(line: 150, column: 19, scope: !375)
!383 = !DILocation(line: 148, column: 27, scope: !376)
!384 = !DILocation(line: 148, column: 18, scope: !376)
!385 = distinct !{!385, !372, !386, !208}
!386 = !DILocation(line: 153, column: 5, scope: !373)
!387 = !DILocation(line: 156, column: 10, scope: !388)
!388 = distinct !DILexicalBlock(scope: !318, file: !2, line: 156, column: 8)
!389 = !DILocation(line: 156, column: 8, scope: !318)
!390 = !DILocation(line: 157, column: 7, scope: !391)
!391 = distinct !DILexicalBlock(scope: !392, file: !2, line: 157, column: 7)
!392 = distinct !DILexicalBlock(scope: !388, file: !2, line: 156, column: 17)
!393 = !DILocation(line: 158, column: 12, scope: !394)
!394 = distinct !DILexicalBlock(scope: !395, file: !2, line: 158, column: 12)
!395 = distinct !DILexicalBlock(scope: !396, file: !2, line: 157, column: 33)
!396 = distinct !DILexicalBlock(scope: !391, file: !2, line: 157, column: 7)
!397 = !DILocation(line: 158, column: 12, scope: !395)
!398 = !DILocation(line: 158, column: 51, scope: !394)
!399 = !DILocation(line: 158, column: 50, scope: !394)
!400 = !DILocation(line: 158, column: 48, scope: !394)
!401 = !DILocation(line: 158, column: 27, scope: !394)
!402 = !DILocation(line: 157, column: 29, scope: !396)
!403 = !DILocation(line: 158, column: 65, scope: !394)
!404 = !DILocation(line: 157, column: 20, scope: !396)
!405 = distinct !{!405, !390, !406, !208}
!406 = !DILocation(line: 159, column: 7, scope: !391)
!407 = !DILocation(line: 162, column: 12, scope: !318)
!408 = !DILocation(line: 163, column: 3, scope: !315)
!409 = !DILocation(line: 0, scope: !309)
!410 = !DILocation(line: 164, column: 1, scope: !299)
!411 = !DISubprogram(name: "gsl_error", scope: !30, file: !30, line: 77, type: !412, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!412 = !DISubroutineType(types: !413)
!413 = !{null, !414, !414, !31, !31}
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!415 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!416 = distinct !DISubprogram(name: "gsl_sf_bessel_In_e", scope: !2, file: !2, line: 168, type: !417, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !27, retainedNodes: !419)
!417 = !DISubroutineType(types: !418)
!418 = !{!31, !118, !82, !83}
!419 = !{!420, !421, !422, !423, !424, !425, !426, !427}
!420 = !DILocalVariable(name: "n_in", arg: 1, scope: !416, file: !2, line: 168, type: !118)
!421 = !DILocalVariable(name: "x", arg: 2, scope: !416, file: !2, line: 168, type: !82)
!422 = !DILocalVariable(name: "result", arg: 3, scope: !416, file: !2, line: 168, type: !83)
!423 = !DILocalVariable(name: "ax", scope: !416, file: !2, line: 170, type: !82)
!424 = !DILocalVariable(name: "n", scope: !416, file: !2, line: 171, type: !118)
!425 = !DILocalVariable(name: "In_scaled", scope: !416, file: !2, line: 172, type: !84)
!426 = !DILocalVariable(name: "stat_In_scaled", scope: !416, file: !2, line: 173, type: !118)
!427 = !DILocalVariable(name: "ex", scope: !428, file: !2, line: 182, type: !82)
!428 = distinct !DILexicalBlock(scope: !429, file: !2, line: 181, column: 8)
!429 = distinct !DILexicalBlock(scope: !416, file: !2, line: 178, column: 6)
!430 = distinct !DIAssignID()
!431 = !DILocation(line: 0, scope: !416)
!432 = !DILocation(line: 170, column: 21, scope: !416)
!433 = !DILocation(line: 171, column: 17, scope: !416)
!434 = !DILocation(line: 172, column: 3, scope: !416)
!435 = !DILocation(line: 173, column: 30, scope: !416)
!436 = !DILocation(line: 178, column: 9, scope: !429)
!437 = !DILocation(line: 178, column: 6, scope: !416)
!438 = !DILocation(line: 179, column: 5, scope: !439)
!439 = distinct !DILexicalBlock(scope: !440, file: !2, line: 179, column: 5)
!440 = distinct !DILexicalBlock(scope: !429, file: !2, line: 178, column: 34)
!441 = !DILocation(line: 179, column: 5, scope: !442)
!442 = distinct !DILexicalBlock(scope: !439, file: !2, line: 179, column: 5)
!443 = !DILocation(line: 182, column: 23, scope: !428)
!444 = !DILocation(line: 0, scope: !428)
!445 = !DILocation(line: 183, column: 35, scope: !428)
!446 = !DILocation(line: 183, column: 23, scope: !428)
!447 = !DILocation(line: 183, column: 18, scope: !428)
!448 = !DILocation(line: 184, column: 35, scope: !428)
!449 = !DILocation(line: 184, column: 23, scope: !428)
!450 = !DILocation(line: 184, column: 13, scope: !428)
!451 = !DILocation(line: 185, column: 23, scope: !428)
!452 = !DILocation(line: 185, column: 43, scope: !428)
!453 = !DILocation(line: 185, column: 41, scope: !428)
!454 = !DILocation(line: 185, column: 17, scope: !428)
!455 = !DILocation(line: 186, column: 10, scope: !456)
!456 = distinct !DILexicalBlock(scope: !428, file: !2, line: 186, column: 8)
!457 = !DILocation(line: 186, column: 16, scope: !456)
!458 = !DILocation(line: 186, column: 48, scope: !456)
!459 = !DILocation(line: 186, column: 46, scope: !456)
!460 = !DILocation(line: 186, column: 34, scope: !456)
!461 = !DILocation(line: 0, scope: !429)
!462 = !DILocation(line: 189, column: 1, scope: !416)
!463 = distinct !DISubprogram(name: "gsl_sf_bessel_In_array", scope: !2, file: !2, line: 193, type: !300, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !27, retainedNodes: !464)
!464 = !{!465, !466, !467, !468, !469, !470, !473, !475, !476}
!465 = !DILocalVariable(name: "nmin", arg: 1, scope: !463, file: !2, line: 193, type: !118)
!466 = !DILocalVariable(name: "nmax", arg: 2, scope: !463, file: !2, line: 193, type: !118)
!467 = !DILocalVariable(name: "x", arg: 3, scope: !463, file: !2, line: 193, type: !82)
!468 = !DILocalVariable(name: "result_array", arg: 4, scope: !463, file: !2, line: 193, type: !295)
!469 = !DILocalVariable(name: "ax", scope: !463, file: !2, line: 195, type: !69)
!470 = !DILocalVariable(name: "j", scope: !471, file: !2, line: 200, type: !31)
!471 = distinct !DILexicalBlock(scope: !472, file: !2, line: 199, column: 34)
!472 = distinct !DILexicalBlock(scope: !463, file: !2, line: 199, column: 6)
!473 = !DILocalVariable(name: "j", scope: !474, file: !2, line: 205, type: !31)
!474 = distinct !DILexicalBlock(scope: !472, file: !2, line: 204, column: 8)
!475 = !DILocalVariable(name: "eax", scope: !474, file: !2, line: 206, type: !69)
!476 = !DILocalVariable(name: "status", scope: !474, file: !2, line: 207, type: !31)
!477 = !DILocation(line: 0, scope: !463)
!478 = !DILocation(line: 195, column: 15, scope: !463)
!479 = !DILocation(line: 199, column: 9, scope: !472)
!480 = !DILocation(line: 199, column: 6, scope: !463)
!481 = !DILocation(line: 0, scope: !471)
!482 = !DILocation(line: 201, column: 15, scope: !483)
!483 = distinct !DILexicalBlock(scope: !484, file: !2, line: 201, column: 5)
!484 = distinct !DILexicalBlock(scope: !471, file: !2, line: 201, column: 5)
!485 = !DILocation(line: 201, column: 5, scope: !484)
!486 = !DILocation(line: 201, column: 49, scope: !483)
!487 = !DILocation(line: 202, column: 5, scope: !488)
!488 = distinct !DILexicalBlock(scope: !471, file: !2, line: 202, column: 5)
!489 = !DILocation(line: 206, column: 18, scope: !474)
!490 = !DILocation(line: 0, scope: !474)
!491 = !DILocation(line: 207, column: 18, scope: !474)
!492 = !DILocation(line: 208, column: 15, scope: !493)
!493 = distinct !DILexicalBlock(scope: !494, file: !2, line: 208, column: 5)
!494 = distinct !DILexicalBlock(scope: !474, file: !2, line: 208, column: 5)
!495 = !DILocation(line: 208, column: 5, scope: !494)
!496 = !DILocation(line: 208, column: 33, scope: !493)
!497 = !DILocation(line: 208, column: 49, scope: !493)
!498 = !DILocation(line: 208, column: 29, scope: !493)
!499 = distinct !{!499, !495, !500, !208}
!500 = !DILocation(line: 208, column: 52, scope: !494)
!501 = distinct !{!501, !259}
!502 = !DILocation(line: 0, scope: !472)
!503 = !DILocation(line: 211, column: 1, scope: !463)
!504 = distinct !DISubprogram(name: "gsl_sf_bessel_In_scaled", scope: !2, file: !2, line: 217, type: !505, scopeLine: 218, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !27, retainedNodes: !507)
!505 = !DISubroutineType(types: !506)
!506 = !{!69, !118, !82}
!507 = !{!508, !509, !510, !511}
!508 = !DILocalVariable(name: "n", arg: 1, scope: !504, file: !2, line: 217, type: !118)
!509 = !DILocalVariable(name: "x", arg: 2, scope: !504, file: !2, line: 217, type: !82)
!510 = !DILocalVariable(name: "result", scope: !504, file: !2, line: 219, type: !84)
!511 = !DILocalVariable(name: "status", scope: !504, file: !2, line: 219, type: !31)
!512 = distinct !DIAssignID()
!513 = !DILocation(line: 0, scope: !504)
!514 = !DILocation(line: 219, column: 3, scope: !504)
!515 = !DILocation(line: 219, column: 3, scope: !516)
!516 = distinct !DILexicalBlock(scope: !504, file: !2, line: 219, column: 3)
!517 = !DILocation(line: 219, column: 3, scope: !518)
!518 = distinct !DILexicalBlock(scope: !519, file: !2, line: 219, column: 3)
!519 = distinct !DILexicalBlock(scope: !516, file: !2, line: 219, column: 3)
!520 = !DILocation(line: 220, column: 1, scope: !504)
!521 = distinct !DISubprogram(name: "gsl_sf_bessel_In", scope: !2, file: !2, line: 222, type: !505, scopeLine: 223, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !27, retainedNodes: !522)
!522 = !{!523, !524, !525, !526}
!523 = !DILocalVariable(name: "n", arg: 1, scope: !521, file: !2, line: 222, type: !118)
!524 = !DILocalVariable(name: "x", arg: 2, scope: !521, file: !2, line: 222, type: !82)
!525 = !DILocalVariable(name: "result", scope: !521, file: !2, line: 224, type: !84)
!526 = !DILocalVariable(name: "status", scope: !521, file: !2, line: 224, type: !31)
!527 = distinct !DIAssignID()
!528 = !DILocation(line: 0, scope: !521)
!529 = !DILocation(line: 0, scope: !416, inlinedAt: !530)
!530 = distinct !DILocation(line: 224, column: 3, scope: !521)
!531 = !DILocation(line: 170, column: 21, scope: !416, inlinedAt: !530)
!532 = !DILocation(line: 171, column: 17, scope: !416, inlinedAt: !530)
!533 = !DILocation(line: 172, column: 3, scope: !416, inlinedAt: !530)
!534 = !DILocation(line: 173, column: 30, scope: !416, inlinedAt: !530)
!535 = !DILocation(line: 178, column: 9, scope: !429, inlinedAt: !530)
!536 = !DILocation(line: 178, column: 6, scope: !416, inlinedAt: !530)
!537 = !DILocation(line: 179, column: 5, scope: !442, inlinedAt: !530)
!538 = !DILocation(line: 189, column: 1, scope: !416, inlinedAt: !530)
!539 = !DILocation(line: 224, column: 3, scope: !521)
!540 = !DILocation(line: 182, column: 23, scope: !428, inlinedAt: !530)
!541 = !DILocation(line: 0, scope: !428, inlinedAt: !530)
!542 = !DILocation(line: 183, column: 35, scope: !428, inlinedAt: !530)
!543 = !DILocation(line: 183, column: 23, scope: !428, inlinedAt: !530)
!544 = !DILocation(line: 186, column: 10, scope: !456, inlinedAt: !530)
!545 = !DILocation(line: 186, column: 16, scope: !456, inlinedAt: !530)
!546 = !DILocation(line: 224, column: 3, scope: !547)
!547 = distinct !DILexicalBlock(scope: !521, file: !2, line: 224, column: 3)
!548 = !DILocation(line: 224, column: 3, scope: !549)
!549 = distinct !DILexicalBlock(scope: !550, file: !2, line: 224, column: 3)
!550 = distinct !DILexicalBlock(scope: !547, file: !2, line: 224, column: 3)
!551 = !DILocation(line: 225, column: 1, scope: !521)
