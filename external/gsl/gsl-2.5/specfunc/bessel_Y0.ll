; ModuleID = 'bessel_Y0.c'
source_filename = "bessel_Y0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.cheb_series_struct = type { ptr, i32, double, double, i32 }
%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [13 x i8] c"domain error\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [12 x i8] c"bessel_Y0.c\00", align 1, !dbg !7
@_gsl_sf_bessel_amp_phase_bm0_cs = external local_unnamed_addr constant %struct.cheb_series_struct, align 8
@_gsl_sf_bessel_amp_phase_bth0_cs = external local_unnamed_addr constant %struct.cheb_series_struct, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"underflow\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [31 x i8] c"gsl_sf_bessel_Y0_e(x, &result)\00", align 1, !dbg !17
@by0_data = internal unnamed_addr constant [13 x double] [double 0xBF8718D5FAE52AD9, double 0xBFC06D9DE2F5AD77, double 0xBFBAB8927A8B99F7, double 0x3F983B0C3783AFDB, double 0xBF611FDE7868149D, double 0x3F1B41ACB26FE761, double 0xBECC447A18082B07, double 0x3E74BF97A912DBDD, double 0xBE16C34F3962C677, double 0x3DB36789230EB520, double -1.881050e-13, double 1.641000e-15, double -1.100000e-17], align 16, !dbg !22

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_bessel_Y0_e(double noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !88 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !122
  call void @llvm.dbg.assign(metadata i1 undef, metadata !104, metadata !DIExpression(), metadata !122, metadata ptr %3, metadata !DIExpression()), !dbg !123
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !124
  call void @llvm.dbg.assign(metadata i1 undef, metadata !115, metadata !DIExpression(), metadata !124, metadata ptr %4, metadata !DIExpression()), !dbg !125
  tail call void @llvm.dbg.value(metadata double %0, metadata !100, metadata !DIExpression()), !dbg !126
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !101, metadata !DIExpression()), !dbg !126
  tail call void @llvm.dbg.value(metadata double 0x3FE45F306DC9C883, metadata !102, metadata !DIExpression()), !dbg !126
  tail call void @llvm.dbg.value(metadata double 0x4330000000000000, metadata !103, metadata !DIExpression()), !dbg !126
  %5 = fcmp ugt double %0, 0.000000e+00, !dbg !127
  br i1 %5, label %8, label %6, !dbg !128

6:                                                ; preds = %2
  store double 0x7FF8000000000000, ptr %1, align 8, !dbg !129, !tbaa !132
  %7 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !129
  store double 0x7FF8000000000000, ptr %7, align 8, !dbg !129, !tbaa !137
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 80, i32 noundef 1) #6, !dbg !138
  br label %212, !dbg !138

8:                                                ; preds = %2
  %9 = fcmp olt double %0, 4.000000e+00, !dbg !140
  br i1 %9, label %10, label %60, !dbg !141

10:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6, !dbg !142
  %11 = call i32 @gsl_sf_bessel_J0_e(double noundef %0, ptr noundef nonnull %3) #6, !dbg !143
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !109, metadata !DIExpression()), !dbg !123
  %12 = fmul double %0, 1.250000e-01, !dbg !144
  %13 = fmul double %12, %0, !dbg !145
  %14 = fadd double %13, -1.000000e+00, !dbg !146
  call void @llvm.dbg.value(metadata !147, metadata !148, metadata !DIExpression()), !dbg !170
  call void @llvm.dbg.value(metadata double %14, metadata !156, metadata !DIExpression()), !dbg !170
  call void @llvm.dbg.value(metadata ptr undef, metadata !157, metadata !DIExpression()), !dbg !170
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !159, metadata !DIExpression()), !dbg !170
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !160, metadata !DIExpression()), !dbg !170
  %15 = fmul double %14, 2.000000e+00, !dbg !172
  %16 = fadd double %15, 1.000000e+00, !dbg !173
  %17 = fadd double %16, -1.000000e+00, !dbg !174
  %18 = fmul double %17, 5.000000e-01, !dbg !175
  call void @llvm.dbg.value(metadata double %18, metadata !161, metadata !DIExpression()), !dbg !170
  %19 = fmul double %18, 2.000000e+00, !dbg !176
  call void @llvm.dbg.value(metadata double %19, metadata !162, metadata !DIExpression()), !dbg !170
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !163, metadata !DIExpression()), !dbg !170
  call void @llvm.dbg.value(metadata i32 12, metadata !158, metadata !DIExpression()), !dbg !170
  br label %20, !dbg !177

20:                                               ; preds = %20, %10
  %21 = phi i64 [ 12, %10 ], [ %36, %20 ]
  %22 = phi double [ 0.000000e+00, %10 ], [ %29, %20 ]
  %23 = phi double [ 0.000000e+00, %10 ], [ %35, %20 ]
  %24 = phi double [ 0.000000e+00, %10 ], [ %22, %20 ]
  call void @llvm.dbg.value(metadata i64 %21, metadata !158, metadata !DIExpression()), !dbg !170
  call void @llvm.dbg.value(metadata double %22, metadata !159, metadata !DIExpression()), !dbg !170
  call void @llvm.dbg.value(metadata double %23, metadata !163, metadata !DIExpression()), !dbg !170
  call void @llvm.dbg.value(metadata double %24, metadata !160, metadata !DIExpression()), !dbg !170
  call void @llvm.dbg.value(metadata double %22, metadata !164, metadata !DIExpression()), !dbg !178
  %25 = fmul double %19, %22, !dbg !179
  %26 = fsub double %25, %24, !dbg !180
  %27 = getelementptr inbounds double, ptr @by0_data, i64 %21, !dbg !181
  %28 = load double, ptr %27, align 8, !dbg !181, !tbaa !182
  %29 = fadd double %26, %28, !dbg !183
  call void @llvm.dbg.value(metadata double %29, metadata !159, metadata !DIExpression()), !dbg !170
  %30 = call double @llvm.fabs.f64(double %25), !dbg !184
  %31 = call double @llvm.fabs.f64(double %24), !dbg !185
  %32 = fadd double %30, %31, !dbg !186
  %33 = call double @llvm.fabs.f64(double %28), !dbg !187
  %34 = fadd double %32, %33, !dbg !188
  %35 = fadd double %23, %34, !dbg !189
  call void @llvm.dbg.value(metadata double %35, metadata !163, metadata !DIExpression()), !dbg !170
  call void @llvm.dbg.value(metadata double %22, metadata !160, metadata !DIExpression()), !dbg !170
  %36 = add nsw i64 %21, -1, !dbg !190
  call void @llvm.dbg.value(metadata i64 %36, metadata !158, metadata !DIExpression()), !dbg !170
  %37 = icmp ugt i64 %21, 1, !dbg !191
  br i1 %37, label %20, label %38, !dbg !177, !llvm.loop !192

38:                                               ; preds = %20
  call void @llvm.dbg.value(metadata double %29, metadata !168, metadata !DIExpression()), !dbg !195
  %39 = fmul double %18, %29, !dbg !196
  %40 = fsub double %39, %22, !dbg !197
  %41 = fadd double %40, 0xBF7718D5FAE52AD9, !dbg !198
  call void @llvm.dbg.value(metadata double %41, metadata !159, metadata !DIExpression()), !dbg !170
  %42 = call double @llvm.fabs.f64(double %39), !dbg !199
  %43 = call double @llvm.fabs.f64(double %22), !dbg !200
  %44 = fadd double %43, %42, !dbg !201
  %45 = fadd double %44, 0x3F7718D5FAE52AD9, !dbg !202
  %46 = fadd double %35, %45, !dbg !203
  call void @llvm.dbg.value(metadata double %46, metadata !163, metadata !DIExpression()), !dbg !170
  tail call void @llvm.dbg.value(metadata double %41, metadata !108, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !123
  %47 = fmul double %46, 0x3CB0000000000000, !dbg !204
  %48 = fadd double %47, 1.100000e-17, !dbg !205
  tail call void @llvm.dbg.value(metadata double %48, metadata !108, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !123
  %49 = call double @log(double noundef %0) #6, !dbg !206
  %50 = fadd double %49, 0xBFE62E42FEFA39EF, !dbg !207
  %51 = fmul double %50, 0x3FE45F306DC9C883, !dbg !208
  %52 = load double, ptr %3, align 8, !dbg !209, !tbaa !132
  %53 = fmul double %52, %51, !dbg !210
  %54 = fadd double %53, 3.750000e-01, !dbg !211
  %55 = fadd double %41, %54, !dbg !212
  store double %55, ptr %1, align 8, !dbg !213, !tbaa !132
  %56 = call double @llvm.fabs.f64(double %55), !dbg !214
  %57 = fmul double %56, 0x3CC0000000000000, !dbg !215
  %58 = fadd double %48, %57, !dbg !216
  %59 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !217
  store double %58, ptr %59, align 8, !dbg !218, !tbaa !137
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6, !dbg !219
  br label %212

60:                                               ; preds = %8
  %61 = fcmp olt double %0, 0x4330000000000000, !dbg !220
  br i1 %61, label %62, label %210, !dbg !221

62:                                               ; preds = %60
  %63 = fmul double %0, %0, !dbg !222
  %64 = fdiv double 3.200000e+01, %63, !dbg !223
  %65 = fadd double %64, -1.000000e+00, !dbg !224
  tail call void @llvm.dbg.value(metadata double %65, metadata !110, metadata !DIExpression()), !dbg !125
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #6, !dbg !225
  call void @llvm.dbg.value(metadata ptr @_gsl_sf_bessel_amp_phase_bm0_cs, metadata !148, metadata !DIExpression()), !dbg !226
  call void @llvm.dbg.value(metadata double %65, metadata !156, metadata !DIExpression()), !dbg !226
  call void @llvm.dbg.value(metadata ptr undef, metadata !157, metadata !DIExpression()), !dbg !226
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !159, metadata !DIExpression()), !dbg !226
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !160, metadata !DIExpression()), !dbg !226
  %66 = fmul double %65, 2.000000e+00, !dbg !228
  %67 = load double, ptr getelementptr inbounds (%struct.cheb_series_struct, ptr @_gsl_sf_bessel_amp_phase_bm0_cs, i64 0, i32 2), align 8, !dbg !229, !tbaa !230
  %68 = fsub double %66, %67, !dbg !234
  %69 = load double, ptr getelementptr inbounds (%struct.cheb_series_struct, ptr @_gsl_sf_bessel_amp_phase_bm0_cs, i64 0, i32 3), align 8, !dbg !235, !tbaa !236
  %70 = fsub double %68, %69, !dbg !237
  %71 = fsub double %69, %67, !dbg !238
  %72 = fdiv double %70, %71, !dbg !239
  call void @llvm.dbg.value(metadata double %72, metadata !161, metadata !DIExpression()), !dbg !226
  %73 = fmul double %72, 2.000000e+00, !dbg !240
  call void @llvm.dbg.value(metadata double %73, metadata !162, metadata !DIExpression()), !dbg !226
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !163, metadata !DIExpression()), !dbg !226
  %74 = load i32, ptr getelementptr inbounds (%struct.cheb_series_struct, ptr @_gsl_sf_bessel_amp_phase_bm0_cs, i64 0, i32 1), align 8, !dbg !241, !tbaa !242
  call void @llvm.dbg.value(metadata i32 %74, metadata !158, metadata !DIExpression()), !dbg !226
  %75 = icmp sgt i32 %74, 0, !dbg !243
  %76 = load ptr, ptr @_gsl_sf_bessel_amp_phase_bm0_cs, align 8, !dbg !244, !tbaa !245
  br i1 %75, label %77, label %97, !dbg !246

77:                                               ; preds = %62
  %78 = zext nneg i32 %74 to i64, !dbg !246
  br label %79, !dbg !246

79:                                               ; preds = %79, %77
  %80 = phi i64 [ %78, %77 ], [ %95, %79 ]
  %81 = phi double [ 0.000000e+00, %77 ], [ %88, %79 ]
  %82 = phi double [ 0.000000e+00, %77 ], [ %94, %79 ]
  %83 = phi double [ 0.000000e+00, %77 ], [ %81, %79 ]
  call void @llvm.dbg.value(metadata i64 %80, metadata !158, metadata !DIExpression()), !dbg !226
  call void @llvm.dbg.value(metadata double %81, metadata !159, metadata !DIExpression()), !dbg !226
  call void @llvm.dbg.value(metadata double %82, metadata !163, metadata !DIExpression()), !dbg !226
  call void @llvm.dbg.value(metadata double %83, metadata !160, metadata !DIExpression()), !dbg !226
  call void @llvm.dbg.value(metadata double %81, metadata !164, metadata !DIExpression()), !dbg !247
  %84 = fmul double %73, %81, !dbg !248
  %85 = fsub double %84, %83, !dbg !249
  %86 = getelementptr inbounds double, ptr %76, i64 %80, !dbg !250
  %87 = load double, ptr %86, align 8, !dbg !250, !tbaa !182
  %88 = fadd double %85, %87, !dbg !251
  call void @llvm.dbg.value(metadata double %88, metadata !159, metadata !DIExpression()), !dbg !226
  %89 = tail call double @llvm.fabs.f64(double %84), !dbg !252
  %90 = tail call double @llvm.fabs.f64(double %83), !dbg !253
  %91 = fadd double %89, %90, !dbg !254
  %92 = tail call double @llvm.fabs.f64(double %87), !dbg !255
  %93 = fadd double %91, %92, !dbg !256
  %94 = fadd double %82, %93, !dbg !257
  call void @llvm.dbg.value(metadata double %94, metadata !163, metadata !DIExpression()), !dbg !226
  call void @llvm.dbg.value(metadata double %81, metadata !160, metadata !DIExpression()), !dbg !226
  %95 = add nsw i64 %80, -1, !dbg !258
  call void @llvm.dbg.value(metadata i64 %95, metadata !158, metadata !DIExpression()), !dbg !226
  %96 = icmp ugt i64 %80, 1, !dbg !243
  br i1 %96, label %79, label %97, !dbg !246, !llvm.loop !259

97:                                               ; preds = %79, %62
  %98 = phi double [ 0.000000e+00, %62 ], [ %81, %79 ], !dbg !226
  %99 = phi double [ 0.000000e+00, %62 ], [ %94, %79 ], !dbg !226
  %100 = phi double [ 0.000000e+00, %62 ], [ %88, %79 ], !dbg !226
  call void @llvm.dbg.value(metadata double %100, metadata !168, metadata !DIExpression()), !dbg !261
  %101 = fmul double %72, %100, !dbg !262
  %102 = fsub double %101, %98, !dbg !263
  %103 = load double, ptr %76, align 8, !dbg !264, !tbaa !182
  %104 = fmul double %103, 5.000000e-01, !dbg !265
  %105 = fadd double %102, %104, !dbg !266
  call void @llvm.dbg.value(metadata double %105, metadata !159, metadata !DIExpression()), !dbg !226
  %106 = tail call double @llvm.fabs.f64(double %101), !dbg !267
  %107 = tail call double @llvm.fabs.f64(double %98), !dbg !268
  %108 = fadd double %107, %106, !dbg !269
  %109 = tail call double @llvm.fabs.f64(double %103), !dbg !270
  %110 = fmul double %109, 5.000000e-01, !dbg !271
  %111 = fadd double %108, %110, !dbg !272
  %112 = fadd double %99, %111, !dbg !273
  call void @llvm.dbg.value(metadata double %112, metadata !163, metadata !DIExpression()), !dbg !226
  tail call void @llvm.dbg.value(metadata double %105, metadata !113, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !125
  %113 = fmul double %112, 0x3CB0000000000000, !dbg !274
  %114 = sext i32 %74 to i64, !dbg !275
  %115 = getelementptr inbounds double, ptr %76, i64 %114, !dbg !275
  %116 = load double, ptr %115, align 8, !dbg !275, !tbaa !182
  %117 = tail call double @llvm.fabs.f64(double %116), !dbg !276
  %118 = fadd double %117, %113, !dbg !277
  tail call void @llvm.dbg.value(metadata double %118, metadata !113, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !125
  tail call void @llvm.dbg.value(metadata i32 0, metadata !116, metadata !DIExpression()), !dbg !125
  call void @llvm.dbg.value(metadata ptr @_gsl_sf_bessel_amp_phase_bth0_cs, metadata !148, metadata !DIExpression()), !dbg !278
  call void @llvm.dbg.value(metadata double %65, metadata !156, metadata !DIExpression()), !dbg !278
  call void @llvm.dbg.value(metadata ptr undef, metadata !157, metadata !DIExpression()), !dbg !278
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !159, metadata !DIExpression()), !dbg !278
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !160, metadata !DIExpression()), !dbg !278
  %119 = load double, ptr getelementptr inbounds (%struct.cheb_series_struct, ptr @_gsl_sf_bessel_amp_phase_bth0_cs, i64 0, i32 2), align 8, !dbg !280, !tbaa !230
  %120 = fsub double %66, %119, !dbg !281
  %121 = load double, ptr getelementptr inbounds (%struct.cheb_series_struct, ptr @_gsl_sf_bessel_amp_phase_bth0_cs, i64 0, i32 3), align 8, !dbg !282, !tbaa !236
  %122 = fsub double %120, %121, !dbg !283
  %123 = fsub double %121, %119, !dbg !284
  %124 = fdiv double %122, %123, !dbg !285
  call void @llvm.dbg.value(metadata double %124, metadata !161, metadata !DIExpression()), !dbg !278
  %125 = fmul double %124, 2.000000e+00, !dbg !286
  call void @llvm.dbg.value(metadata double %125, metadata !162, metadata !DIExpression()), !dbg !278
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !163, metadata !DIExpression()), !dbg !278
  %126 = load i32, ptr getelementptr inbounds (%struct.cheb_series_struct, ptr @_gsl_sf_bessel_amp_phase_bth0_cs, i64 0, i32 1), align 8, !dbg !287, !tbaa !242
  call void @llvm.dbg.value(metadata i32 %126, metadata !158, metadata !DIExpression()), !dbg !278
  %127 = icmp sgt i32 %126, 0, !dbg !288
  %128 = load ptr, ptr @_gsl_sf_bessel_amp_phase_bth0_cs, align 8, !dbg !289, !tbaa !245
  br i1 %127, label %129, label %183, !dbg !290

129:                                              ; preds = %97
  %130 = zext nneg i32 %126 to i64, !dbg !290
  %131 = and i64 %130, 3, !dbg !290
  %132 = icmp eq i64 %131, 0, !dbg !290
  br i1 %132, label %146, label %133, !dbg !290

133:                                              ; preds = %129, %133
  %134 = phi i64 [ %143, %133 ], [ %130, %129 ]
  %135 = phi double [ %142, %133 ], [ 0.000000e+00, %129 ]
  %136 = phi double [ %135, %133 ], [ 0.000000e+00, %129 ]
  %137 = phi i64 [ %144, %133 ], [ 0, %129 ]
  call void @llvm.dbg.value(metadata i64 %134, metadata !158, metadata !DIExpression()), !dbg !278
  call void @llvm.dbg.value(metadata double %135, metadata !159, metadata !DIExpression()), !dbg !278
  call void @llvm.dbg.value(metadata double poison, metadata !163, metadata !DIExpression()), !dbg !278
  call void @llvm.dbg.value(metadata double %136, metadata !160, metadata !DIExpression()), !dbg !278
  call void @llvm.dbg.value(metadata double %135, metadata !164, metadata !DIExpression()), !dbg !291
  %138 = fmul double %125, %135, !dbg !292
  %139 = fsub double %138, %136, !dbg !293
  %140 = getelementptr inbounds double, ptr %128, i64 %134, !dbg !294
  %141 = load double, ptr %140, align 8, !dbg !294, !tbaa !182
  %142 = fadd double %139, %141, !dbg !295
  call void @llvm.dbg.value(metadata double %142, metadata !159, metadata !DIExpression()), !dbg !278
  call void @llvm.dbg.value(metadata double %135, metadata !160, metadata !DIExpression()), !dbg !278
  %143 = add nsw i64 %134, -1, !dbg !296
  call void @llvm.dbg.value(metadata i64 %143, metadata !158, metadata !DIExpression()), !dbg !278
  %144 = add i64 %137, 1, !dbg !290
  %145 = icmp eq i64 %144, %131, !dbg !290
  br i1 %145, label %146, label %133, !dbg !290, !llvm.loop !297

146:                                              ; preds = %133, %129
  %147 = phi i64 [ %130, %129 ], [ %143, %133 ]
  %148 = phi double [ 0.000000e+00, %129 ], [ %142, %133 ]
  %149 = phi double [ 0.000000e+00, %129 ], [ %135, %133 ]
  %150 = phi double [ undef, %129 ], [ %135, %133 ]
  %151 = phi double [ undef, %129 ], [ %142, %133 ]
  %152 = icmp ult i32 %126, 4, !dbg !290
  br i1 %152, label %183, label %153, !dbg !290

153:                                              ; preds = %146
  %154 = getelementptr double, ptr %128, i64 -1, !dbg !290
  %155 = getelementptr double, ptr %128, i64 -2, !dbg !290
  br label %156, !dbg !290

156:                                              ; preds = %156, %153
  %157 = phi i64 [ %147, %153 ], [ %181, %156 ]
  %158 = phi double [ %148, %153 ], [ %180, %156 ]
  %159 = phi double [ %149, %153 ], [ %174, %156 ]
  call void @llvm.dbg.value(metadata i64 %157, metadata !158, metadata !DIExpression()), !dbg !278
  call void @llvm.dbg.value(metadata double %158, metadata !159, metadata !DIExpression()), !dbg !278
  call void @llvm.dbg.value(metadata double poison, metadata !163, metadata !DIExpression()), !dbg !278
  call void @llvm.dbg.value(metadata double %159, metadata !160, metadata !DIExpression()), !dbg !278
  call void @llvm.dbg.value(metadata double %158, metadata !164, metadata !DIExpression()), !dbg !291
  %160 = fmul double %125, %158, !dbg !292
  %161 = fsub double %160, %159, !dbg !293
  %162 = getelementptr inbounds double, ptr %128, i64 %157, !dbg !294
  %163 = load double, ptr %162, align 8, !dbg !294, !tbaa !182
  %164 = fadd double %161, %163, !dbg !295
  call void @llvm.dbg.value(metadata double %164, metadata !159, metadata !DIExpression()), !dbg !278
  call void @llvm.dbg.value(metadata double %158, metadata !160, metadata !DIExpression()), !dbg !278
  call void @llvm.dbg.value(metadata i64 %157, metadata !158, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !278
  call void @llvm.dbg.value(metadata i64 %157, metadata !158, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !278
  call void @llvm.dbg.value(metadata double %164, metadata !159, metadata !DIExpression()), !dbg !278
  call void @llvm.dbg.value(metadata double poison, metadata !163, metadata !DIExpression()), !dbg !278
  call void @llvm.dbg.value(metadata double %158, metadata !160, metadata !DIExpression()), !dbg !278
  call void @llvm.dbg.value(metadata double %164, metadata !164, metadata !DIExpression()), !dbg !291
  %165 = fmul double %125, %164, !dbg !292
  %166 = fsub double %165, %158, !dbg !293
  %167 = getelementptr double, ptr %154, i64 %157, !dbg !294
  %168 = load double, ptr %167, align 8, !dbg !294, !tbaa !182
  %169 = fadd double %166, %168, !dbg !295
  call void @llvm.dbg.value(metadata double %169, metadata !159, metadata !DIExpression()), !dbg !278
  call void @llvm.dbg.value(metadata double %164, metadata !160, metadata !DIExpression()), !dbg !278
  call void @llvm.dbg.value(metadata i64 %157, metadata !158, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !278
  call void @llvm.dbg.value(metadata i64 %157, metadata !158, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !278
  call void @llvm.dbg.value(metadata double %169, metadata !159, metadata !DIExpression()), !dbg !278
  call void @llvm.dbg.value(metadata double poison, metadata !163, metadata !DIExpression()), !dbg !278
  call void @llvm.dbg.value(metadata double %164, metadata !160, metadata !DIExpression()), !dbg !278
  call void @llvm.dbg.value(metadata double %169, metadata !164, metadata !DIExpression()), !dbg !291
  %170 = fmul double %125, %169, !dbg !292
  %171 = fsub double %170, %164, !dbg !293
  %172 = getelementptr double, ptr %155, i64 %157, !dbg !294
  %173 = load double, ptr %172, align 8, !dbg !294, !tbaa !182
  %174 = fadd double %171, %173, !dbg !295
  call void @llvm.dbg.value(metadata double %174, metadata !159, metadata !DIExpression()), !dbg !278
  call void @llvm.dbg.value(metadata double %169, metadata !160, metadata !DIExpression()), !dbg !278
  %175 = add nsw i64 %157, -3, !dbg !296
  call void @llvm.dbg.value(metadata i64 %175, metadata !158, metadata !DIExpression()), !dbg !278
  call void @llvm.dbg.value(metadata i64 %175, metadata !158, metadata !DIExpression()), !dbg !278
  call void @llvm.dbg.value(metadata double %174, metadata !159, metadata !DIExpression()), !dbg !278
  call void @llvm.dbg.value(metadata double poison, metadata !163, metadata !DIExpression()), !dbg !278
  call void @llvm.dbg.value(metadata double %169, metadata !160, metadata !DIExpression()), !dbg !278
  call void @llvm.dbg.value(metadata double %174, metadata !164, metadata !DIExpression()), !dbg !291
  %176 = fmul double %125, %174, !dbg !292
  %177 = fsub double %176, %169, !dbg !293
  %178 = getelementptr inbounds double, ptr %128, i64 %175, !dbg !294
  %179 = load double, ptr %178, align 8, !dbg !294, !tbaa !182
  %180 = fadd double %177, %179, !dbg !295
  call void @llvm.dbg.value(metadata double %180, metadata !159, metadata !DIExpression()), !dbg !278
  call void @llvm.dbg.value(metadata double %174, metadata !160, metadata !DIExpression()), !dbg !278
  %181 = add nsw i64 %157, -4, !dbg !296
  call void @llvm.dbg.value(metadata i64 %181, metadata !158, metadata !DIExpression()), !dbg !278
  %182 = icmp ugt i64 %175, 1, !dbg !288
  br i1 %182, label %156, label %183, !dbg !290, !llvm.loop !299

183:                                              ; preds = %146, %156, %97
  %184 = phi double [ 0.000000e+00, %97 ], [ %150, %146 ], [ %174, %156 ], !dbg !278
  %185 = phi double [ 0.000000e+00, %97 ], [ %151, %146 ], [ %180, %156 ], !dbg !278
  call void @llvm.dbg.value(metadata double %185, metadata !168, metadata !DIExpression()), !dbg !301
  %186 = fmul double %124, %185, !dbg !302
  %187 = fsub double %186, %184, !dbg !303
  %188 = load double, ptr %128, align 8, !dbg !304, !tbaa !182
  %189 = fmul double %188, 5.000000e-01, !dbg !305
  %190 = fadd double %187, %189, !dbg !306
  call void @llvm.dbg.value(metadata double %190, metadata !159, metadata !DIExpression()), !dbg !278
  call void @llvm.dbg.value(metadata double poison, metadata !163, metadata !DIExpression()), !dbg !278
  tail call void @llvm.dbg.value(metadata double %190, metadata !114, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !125
  tail call void @llvm.dbg.value(metadata double poison, metadata !114, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !125
  tail call void @llvm.dbg.value(metadata i32 0, metadata !118, metadata !DIExpression()), !dbg !125
  %191 = fdiv double %190, %0, !dbg !307
  %192 = call i32 @gsl_sf_bessel_sin_pi4_e(double noundef %0, double noundef %191, ptr noundef nonnull %4) #6, !dbg !308
  tail call void @llvm.dbg.value(metadata i32 %192, metadata !119, metadata !DIExpression()), !dbg !125
  %193 = call double @sqrt(double noundef %0) #6, !dbg !309
  tail call void @llvm.dbg.value(metadata double %193, metadata !120, metadata !DIExpression()), !dbg !125
  %194 = fadd double %105, 7.500000e-01, !dbg !310
  %195 = fdiv double %194, %193, !dbg !311
  tail call void @llvm.dbg.value(metadata double %195, metadata !121, metadata !DIExpression()), !dbg !125
  %196 = load double, ptr %4, align 8, !dbg !312, !tbaa !132
  %197 = fmul double %195, %196, !dbg !313
  store double %197, ptr %1, align 8, !dbg !314, !tbaa !132
  %198 = call double @llvm.fabs.f64(double %196), !dbg !315
  %199 = fmul double %118, %198, !dbg !316
  %200 = fdiv double %199, %193, !dbg !317
  %201 = call double @llvm.fabs.f64(double %195), !dbg !318
  %202 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !319
  %203 = load double, ptr %202, align 8, !dbg !319, !tbaa !137
  %204 = fmul double %201, %203, !dbg !320
  %205 = fadd double %200, %204, !dbg !321
  %206 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !322
  %207 = call double @llvm.fabs.f64(double %197), !dbg !323
  %208 = fmul double %207, 0x3CC0000000000000, !dbg !324
  %209 = fadd double %208, %205, !dbg !325
  store double %209, ptr %206, align 8, !dbg !325, !tbaa !137
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #6, !dbg !326
  br label %212

210:                                              ; preds = %60
  store double 0.000000e+00, ptr %1, align 8, !dbg !327, !tbaa !132
  %211 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !327
  store double 0x10000000000000, ptr %211, align 8, !dbg !327, !tbaa !137
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 110, i32 noundef 15) #6, !dbg !330
  br label %212, !dbg !330

212:                                              ; preds = %210, %183, %38, %6
  %213 = phi i32 [ 1, %6 ], [ %11, %38 ], [ %192, %183 ], [ 15, %210 ], !dbg !332
  ret i32 %213, !dbg !333
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare !dbg !334 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !339 i32 @gsl_sf_bessel_J0_e(double noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !341 double @log(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare !dbg !345 i32 @gsl_sf_bessel_sin_pi4_e(double noundef, double noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !349 double @sqrt(double noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_bessel_Y0(double noundef %0) local_unnamed_addr #0 !dbg !350 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !357
  call void @llvm.dbg.assign(metadata i1 undef, metadata !355, metadata !DIExpression(), metadata !357, metadata ptr %2, metadata !DIExpression()), !dbg !358
  tail call void @llvm.dbg.value(metadata double %0, metadata !354, metadata !DIExpression()), !dbg !358
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #6, !dbg !359
  %3 = call i32 @gsl_sf_bessel_Y0_e(double noundef %0, ptr noundef nonnull %2), !dbg !359
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !356, metadata !DIExpression()), !dbg !358
  %4 = icmp eq i32 %3, 0, !dbg !360
  br i1 %4, label %6, label %5, !dbg !359

5:                                                ; preds = %1
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 121, i32 noundef %3) #6, !dbg !362
  br label %6, !dbg !362

6:                                                ; preds = %1, %5
  %7 = load double, ptr %2, align 8, !dbg !359, !tbaa !132
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #6, !dbg !365
  ret double %7, !dbg !365
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!24}
!llvm.module.flags = !{!80, !81, !82, !83, !84, !85, !86}
!llvm.ident = !{!87}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 80, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "bessel_Y0.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "3cfc018c36082496fd9bbb83781b60e4")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 13)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 80, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 12)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 110, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 10)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 121, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 248, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 31)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(name: "by0_data", scope: !24, file: !2, line: 47, type: !79, isLocal: true, isDefinition: true)
!24 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !25, globals: !65, splitDebugInlining: false, nameTableKind: None)
!25 = !{!26}
!26 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !27, line: 39, baseType: !28, size: 32, elements: !29)
!27 = !DIFile(filename: "../gsl/gsl_errno.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "3ff14ff6df19564f3d7caf1e8e622626")
!28 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!29 = !{!30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64}
!30 = !DIEnumerator(name: "GSL_SUCCESS", value: 0)
!31 = !DIEnumerator(name: "GSL_FAILURE", value: -1)
!32 = !DIEnumerator(name: "GSL_CONTINUE", value: -2)
!33 = !DIEnumerator(name: "GSL_EDOM", value: 1)
!34 = !DIEnumerator(name: "GSL_ERANGE", value: 2)
!35 = !DIEnumerator(name: "GSL_EFAULT", value: 3)
!36 = !DIEnumerator(name: "GSL_EINVAL", value: 4)
!37 = !DIEnumerator(name: "GSL_EFAILED", value: 5)
!38 = !DIEnumerator(name: "GSL_EFACTOR", value: 6)
!39 = !DIEnumerator(name: "GSL_ESANITY", value: 7)
!40 = !DIEnumerator(name: "GSL_ENOMEM", value: 8)
!41 = !DIEnumerator(name: "GSL_EBADFUNC", value: 9)
!42 = !DIEnumerator(name: "GSL_ERUNAWAY", value: 10)
!43 = !DIEnumerator(name: "GSL_EMAXITER", value: 11)
!44 = !DIEnumerator(name: "GSL_EZERODIV", value: 12)
!45 = !DIEnumerator(name: "GSL_EBADTOL", value: 13)
!46 = !DIEnumerator(name: "GSL_ETOL", value: 14)
!47 = !DIEnumerator(name: "GSL_EUNDRFLW", value: 15)
!48 = !DIEnumerator(name: "GSL_EOVRFLW", value: 16)
!49 = !DIEnumerator(name: "GSL_ELOSS", value: 17)
!50 = !DIEnumerator(name: "GSL_EROUND", value: 18)
!51 = !DIEnumerator(name: "GSL_EBADLEN", value: 19)
!52 = !DIEnumerator(name: "GSL_ENOTSQR", value: 20)
!53 = !DIEnumerator(name: "GSL_ESING", value: 21)
!54 = !DIEnumerator(name: "GSL_EDIVERGE", value: 22)
!55 = !DIEnumerator(name: "GSL_EUNSUP", value: 23)
!56 = !DIEnumerator(name: "GSL_EUNIMPL", value: 24)
!57 = !DIEnumerator(name: "GSL_ECACHE", value: 25)
!58 = !DIEnumerator(name: "GSL_ETABLE", value: 26)
!59 = !DIEnumerator(name: "GSL_ENOPROG", value: 27)
!60 = !DIEnumerator(name: "GSL_ENOPROGJ", value: 28)
!61 = !DIEnumerator(name: "GSL_ETOLF", value: 29)
!62 = !DIEnumerator(name: "GSL_ETOLX", value: 30)
!63 = !DIEnumerator(name: "GSL_ETOLG", value: 31)
!64 = !DIEnumerator(name: "GSL_EOF", value: 32)
!65 = !{!0, !7, !12, !17, !66, !22}
!66 = !DIGlobalVariableExpression(var: !67, expr: !DIExpression())
!67 = distinct !DIGlobalVariable(name: "by0_cs", scope: !24, file: !2, line: 62, type: !68, isLocal: true, isDefinition: true)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "cheb_series", file: !69, line: 29, baseType: !70)
!69 = !DIFile(filename: "./chebyshev.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "41e3a40b0ef4c15c011f3f1dbb3f3cf6")
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cheb_series_struct", file: !69, line: 22, size: 320, elements: !71)
!71 = !{!72, !75, !76, !77, !78}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !70, file: !69, line: 23, baseType: !73, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!74 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "order", scope: !70, file: !69, line: 24, baseType: !28, size: 32, offset: 64)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !70, file: !69, line: 25, baseType: !74, size: 64, offset: 128)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !70, file: !69, line: 26, baseType: !74, size: 64, offset: 192)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "order_sp", scope: !70, file: !69, line: 27, baseType: !28, size: 32, offset: 256)
!79 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 832, elements: !5)
!80 = !{i32 7, !"Dwarf Version", i32 5}
!81 = !{i32 2, !"Debug Info Version", i32 3}
!82 = !{i32 1, !"wchar_size", i32 4}
!83 = !{i32 8, !"PIC Level", i32 2}
!84 = !{i32 7, !"PIE Level", i32 2}
!85 = !{i32 7, !"uwtable", i32 2}
!86 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!87 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!88 = distinct !DISubprogram(name: "gsl_sf_bessel_Y0_e", scope: !2, file: !2, line: 72, type: !89, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !99)
!89 = !DISubroutineType(types: !90)
!90 = !{!28, !91, !92}
!91 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !74)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !94, line: 41, baseType: !95)
!94 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "5b52deed011f1ffd07977b19a388d251")
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !94, line: 37, size: 128, elements: !96)
!96 = !{!97, !98}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !95, file: !94, line: 38, baseType: !74, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !95, file: !94, line: 39, baseType: !74, size: 64, offset: 64)
!99 = !{!100, !101, !102, !103, !104, !108, !109, !110, !113, !114, !115, !116, !118, !119, !120, !121}
!100 = !DILocalVariable(name: "x", arg: 1, scope: !88, file: !2, line: 72, type: !91)
!101 = !DILocalVariable(name: "result", arg: 2, scope: !88, file: !2, line: 72, type: !92)
!102 = !DILocalVariable(name: "two_over_pi", scope: !88, file: !2, line: 74, type: !91)
!103 = !DILocalVariable(name: "xmax", scope: !88, file: !2, line: 75, type: !91)
!104 = !DILocalVariable(name: "J0", scope: !105, file: !2, line: 83, type: !93)
!105 = distinct !DILexicalBlock(scope: !106, file: !2, line: 82, column: 20)
!106 = distinct !DILexicalBlock(scope: !107, file: !2, line: 82, column: 11)
!107 = distinct !DILexicalBlock(scope: !88, file: !2, line: 79, column: 7)
!108 = !DILocalVariable(name: "c", scope: !105, file: !2, line: 84, type: !93)
!109 = !DILocalVariable(name: "stat_J0", scope: !105, file: !2, line: 85, type: !28)
!110 = !DILocalVariable(name: "z", scope: !111, file: !2, line: 95, type: !91)
!111 = distinct !DILexicalBlock(scope: !112, file: !2, line: 91, column: 21)
!112 = distinct !DILexicalBlock(scope: !106, file: !2, line: 91, column: 11)
!113 = !DILocalVariable(name: "c1", scope: !111, file: !2, line: 96, type: !93)
!114 = !DILocalVariable(name: "c2", scope: !111, file: !2, line: 97, type: !93)
!115 = !DILocalVariable(name: "sp", scope: !111, file: !2, line: 98, type: !93)
!116 = !DILocalVariable(name: "stat_c1", scope: !111, file: !2, line: 99, type: !117)
!117 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!118 = !DILocalVariable(name: "stat_c2", scope: !111, file: !2, line: 100, type: !117)
!119 = !DILocalVariable(name: "stat_sp", scope: !111, file: !2, line: 101, type: !117)
!120 = !DILocalVariable(name: "sqrtx", scope: !111, file: !2, line: 102, type: !91)
!121 = !DILocalVariable(name: "ampl", scope: !111, file: !2, line: 103, type: !91)
!122 = distinct !DIAssignID()
!123 = !DILocation(line: 0, scope: !105)
!124 = distinct !DIAssignID()
!125 = !DILocation(line: 0, scope: !111)
!126 = !DILocation(line: 0, scope: !88)
!127 = !DILocation(line: 79, column: 9, scope: !107)
!128 = !DILocation(line: 79, column: 7, scope: !88)
!129 = !DILocation(line: 80, column: 5, scope: !130)
!130 = distinct !DILexicalBlock(scope: !131, file: !2, line: 80, column: 5)
!131 = distinct !DILexicalBlock(scope: !107, file: !2, line: 79, column: 17)
!132 = !{!133, !134, i64 0}
!133 = !{!"gsl_sf_result_struct", !134, i64 0, !134, i64 8}
!134 = !{!"double", !135, i64 0}
!135 = !{!"omnipotent char", !136, i64 0}
!136 = !{!"Simple C/C++ TBAA"}
!137 = !{!133, !134, i64 8}
!138 = !DILocation(line: 80, column: 5, scope: !139)
!139 = distinct !DILexicalBlock(scope: !130, file: !2, line: 80, column: 5)
!140 = !DILocation(line: 82, column: 13, scope: !106)
!141 = !DILocation(line: 82, column: 11, scope: !107)
!142 = !DILocation(line: 83, column: 5, scope: !105)
!143 = !DILocation(line: 85, column: 19, scope: !105)
!144 = !DILocation(line: 86, column: 31, scope: !105)
!145 = !DILocation(line: 86, column: 33, scope: !105)
!146 = !DILocation(line: 86, column: 35, scope: !105)
!147 = !{}
!148 = !DILocalVariable(name: "cs", arg: 1, scope: !149, file: !150, line: 3, type: !153)
!149 = distinct !DISubprogram(name: "cheb_eval_e", scope: !150, file: !150, line: 3, type: !151, scopeLine: 6, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !155)
!150 = !DIFile(filename: "./cheb_eval.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "540fdb014588703ccd0b3c3b3ea8a26b")
!151 = !DISubroutineType(types: !152)
!152 = !{!28, !153, !91, !92}
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !68)
!155 = !{!148, !156, !157, !158, !159, !160, !161, !162, !163, !164, !168}
!156 = !DILocalVariable(name: "x", arg: 2, scope: !149, file: !150, line: 4, type: !91)
!157 = !DILocalVariable(name: "result", arg: 3, scope: !149, file: !150, line: 5, type: !92)
!158 = !DILocalVariable(name: "j", scope: !149, file: !150, line: 7, type: !28)
!159 = !DILocalVariable(name: "d", scope: !149, file: !150, line: 8, type: !74)
!160 = !DILocalVariable(name: "dd", scope: !149, file: !150, line: 9, type: !74)
!161 = !DILocalVariable(name: "y", scope: !149, file: !150, line: 11, type: !74)
!162 = !DILocalVariable(name: "y2", scope: !149, file: !150, line: 12, type: !74)
!163 = !DILocalVariable(name: "e", scope: !149, file: !150, line: 14, type: !74)
!164 = !DILocalVariable(name: "temp", scope: !165, file: !150, line: 17, type: !74)
!165 = distinct !DILexicalBlock(scope: !166, file: !150, line: 16, column: 33)
!166 = distinct !DILexicalBlock(scope: !167, file: !150, line: 16, column: 3)
!167 = distinct !DILexicalBlock(scope: !149, file: !150, line: 16, column: 3)
!168 = !DILocalVariable(name: "temp", scope: !169, file: !150, line: 24, type: !74)
!169 = distinct !DILexicalBlock(scope: !149, file: !150, line: 23, column: 3)
!170 = !DILocation(line: 0, scope: !149, inlinedAt: !171)
!171 = distinct !DILocation(line: 86, column: 5, scope: !105)
!172 = !DILocation(line: 11, column: 19, scope: !149, inlinedAt: !171)
!173 = !DILocation(line: 11, column: 22, scope: !149, inlinedAt: !171)
!174 = !DILocation(line: 11, column: 30, scope: !149, inlinedAt: !171)
!175 = !DILocation(line: 11, column: 39, scope: !149, inlinedAt: !171)
!176 = !DILocation(line: 12, column: 19, scope: !149, inlinedAt: !171)
!177 = !DILocation(line: 16, column: 3, scope: !167, inlinedAt: !171)
!178 = !DILocation(line: 0, scope: !165, inlinedAt: !171)
!179 = !DILocation(line: 18, column: 11, scope: !165, inlinedAt: !171)
!180 = !DILocation(line: 18, column: 14, scope: !165, inlinedAt: !171)
!181 = !DILocation(line: 18, column: 21, scope: !165, inlinedAt: !171)
!182 = !{!134, !134, i64 0}
!183 = !DILocation(line: 18, column: 19, scope: !165, inlinedAt: !171)
!184 = !DILocation(line: 19, column: 10, scope: !165, inlinedAt: !171)
!185 = !DILocation(line: 19, column: 26, scope: !165, inlinedAt: !171)
!186 = !DILocation(line: 19, column: 24, scope: !165, inlinedAt: !171)
!187 = !DILocation(line: 19, column: 37, scope: !165, inlinedAt: !171)
!188 = !DILocation(line: 19, column: 35, scope: !165, inlinedAt: !171)
!189 = !DILocation(line: 19, column: 7, scope: !165, inlinedAt: !171)
!190 = !DILocation(line: 16, column: 29, scope: !166, inlinedAt: !171)
!191 = !DILocation(line: 16, column: 23, scope: !166, inlinedAt: !171)
!192 = distinct !{!192, !177, !193, !194}
!193 = !DILocation(line: 21, column: 3, scope: !167, inlinedAt: !171)
!194 = !{!"llvm.loop.mustprogress"}
!195 = !DILocation(line: 0, scope: !169, inlinedAt: !171)
!196 = !DILocation(line: 25, column: 10, scope: !169, inlinedAt: !171)
!197 = !DILocation(line: 25, column: 13, scope: !169, inlinedAt: !171)
!198 = !DILocation(line: 25, column: 18, scope: !169, inlinedAt: !171)
!199 = !DILocation(line: 26, column: 10, scope: !169, inlinedAt: !171)
!200 = !DILocation(line: 26, column: 25, scope: !169, inlinedAt: !171)
!201 = !DILocation(line: 26, column: 23, scope: !169, inlinedAt: !171)
!202 = !DILocation(line: 26, column: 34, scope: !169, inlinedAt: !171)
!203 = !DILocation(line: 26, column: 7, scope: !169, inlinedAt: !171)
!204 = !DILocation(line: 30, column: 33, scope: !149, inlinedAt: !171)
!205 = !DILocation(line: 30, column: 37, scope: !149, inlinedAt: !171)
!206 = !DILocation(line: 87, column: 41, scope: !105)
!207 = !DILocation(line: 87, column: 39, scope: !105)
!208 = !DILocation(line: 87, column: 30, scope: !105)
!209 = !DILocation(line: 87, column: 52, scope: !105)
!210 = !DILocation(line: 87, column: 48, scope: !105)
!211 = !DILocation(line: 87, column: 56, scope: !105)
!212 = !DILocation(line: 87, column: 64, scope: !105)
!213 = !DILocation(line: 87, column: 17, scope: !105)
!214 = !DILocation(line: 88, column: 43, scope: !105)
!215 = !DILocation(line: 88, column: 41, scope: !105)
!216 = !DILocation(line: 88, column: 61, scope: !105)
!217 = !DILocation(line: 88, column: 13, scope: !105)
!218 = !DILocation(line: 88, column: 17, scope: !105)
!219 = !DILocation(line: 90, column: 3, scope: !106)
!220 = !DILocation(line: 91, column: 13, scope: !112)
!221 = !DILocation(line: 91, column: 11, scope: !106)
!222 = !DILocation(line: 95, column: 30, scope: !111)
!223 = !DILocation(line: 95, column: 27, scope: !111)
!224 = !DILocation(line: 95, column: 34, scope: !111)
!225 = !DILocation(line: 98, column: 5, scope: !111)
!226 = !DILocation(line: 0, scope: !149, inlinedAt: !227)
!227 = distinct !DILocation(line: 99, column: 25, scope: !111)
!228 = !DILocation(line: 11, column: 19, scope: !149, inlinedAt: !227)
!229 = !DILocation(line: 11, column: 28, scope: !149, inlinedAt: !227)
!230 = !{!231, !134, i64 16}
!231 = !{!"cheb_series_struct", !232, i64 0, !233, i64 8, !134, i64 16, !134, i64 24, !233, i64 32}
!232 = !{!"any pointer", !135, i64 0}
!233 = !{!"int", !135, i64 0}
!234 = !DILocation(line: 11, column: 22, scope: !149, inlinedAt: !227)
!235 = !DILocation(line: 11, column: 36, scope: !149, inlinedAt: !227)
!236 = !{!231, !134, i64 24}
!237 = !DILocation(line: 11, column: 30, scope: !149, inlinedAt: !227)
!238 = !DILocation(line: 11, column: 48, scope: !149, inlinedAt: !227)
!239 = !DILocation(line: 11, column: 39, scope: !149, inlinedAt: !227)
!240 = !DILocation(line: 12, column: 19, scope: !149, inlinedAt: !227)
!241 = !DILocation(line: 16, column: 15, scope: !167, inlinedAt: !227)
!242 = !{!231, !233, i64 8}
!243 = !DILocation(line: 16, column: 23, scope: !166, inlinedAt: !227)
!244 = !DILocation(line: 25, column: 30, scope: !169, inlinedAt: !227)
!245 = !{!231, !232, i64 0}
!246 = !DILocation(line: 16, column: 3, scope: !167, inlinedAt: !227)
!247 = !DILocation(line: 0, scope: !165, inlinedAt: !227)
!248 = !DILocation(line: 18, column: 11, scope: !165, inlinedAt: !227)
!249 = !DILocation(line: 18, column: 14, scope: !165, inlinedAt: !227)
!250 = !DILocation(line: 18, column: 21, scope: !165, inlinedAt: !227)
!251 = !DILocation(line: 18, column: 19, scope: !165, inlinedAt: !227)
!252 = !DILocation(line: 19, column: 10, scope: !165, inlinedAt: !227)
!253 = !DILocation(line: 19, column: 26, scope: !165, inlinedAt: !227)
!254 = !DILocation(line: 19, column: 24, scope: !165, inlinedAt: !227)
!255 = !DILocation(line: 19, column: 37, scope: !165, inlinedAt: !227)
!256 = !DILocation(line: 19, column: 35, scope: !165, inlinedAt: !227)
!257 = !DILocation(line: 19, column: 7, scope: !165, inlinedAt: !227)
!258 = !DILocation(line: 16, column: 29, scope: !166, inlinedAt: !227)
!259 = distinct !{!259, !246, !260, !194}
!260 = !DILocation(line: 21, column: 3, scope: !167, inlinedAt: !227)
!261 = !DILocation(line: 0, scope: !169, inlinedAt: !227)
!262 = !DILocation(line: 25, column: 10, scope: !169, inlinedAt: !227)
!263 = !DILocation(line: 25, column: 13, scope: !169, inlinedAt: !227)
!264 = !DILocation(line: 25, column: 26, scope: !169, inlinedAt: !227)
!265 = !DILocation(line: 25, column: 24, scope: !169, inlinedAt: !227)
!266 = !DILocation(line: 25, column: 18, scope: !169, inlinedAt: !227)
!267 = !DILocation(line: 26, column: 10, scope: !169, inlinedAt: !227)
!268 = !DILocation(line: 26, column: 25, scope: !169, inlinedAt: !227)
!269 = !DILocation(line: 26, column: 23, scope: !169, inlinedAt: !227)
!270 = !DILocation(line: 26, column: 42, scope: !169, inlinedAt: !227)
!271 = !DILocation(line: 26, column: 40, scope: !169, inlinedAt: !227)
!272 = !DILocation(line: 26, column: 34, scope: !169, inlinedAt: !227)
!273 = !DILocation(line: 26, column: 7, scope: !169, inlinedAt: !227)
!274 = !DILocation(line: 30, column: 33, scope: !149, inlinedAt: !227)
!275 = !DILocation(line: 30, column: 44, scope: !149, inlinedAt: !227)
!276 = !DILocation(line: 30, column: 39, scope: !149, inlinedAt: !227)
!277 = !DILocation(line: 30, column: 37, scope: !149, inlinedAt: !227)
!278 = !DILocation(line: 0, scope: !149, inlinedAt: !279)
!279 = distinct !DILocation(line: 100, column: 25, scope: !111)
!280 = !DILocation(line: 11, column: 28, scope: !149, inlinedAt: !279)
!281 = !DILocation(line: 11, column: 22, scope: !149, inlinedAt: !279)
!282 = !DILocation(line: 11, column: 36, scope: !149, inlinedAt: !279)
!283 = !DILocation(line: 11, column: 30, scope: !149, inlinedAt: !279)
!284 = !DILocation(line: 11, column: 48, scope: !149, inlinedAt: !279)
!285 = !DILocation(line: 11, column: 39, scope: !149, inlinedAt: !279)
!286 = !DILocation(line: 12, column: 19, scope: !149, inlinedAt: !279)
!287 = !DILocation(line: 16, column: 15, scope: !167, inlinedAt: !279)
!288 = !DILocation(line: 16, column: 23, scope: !166, inlinedAt: !279)
!289 = !DILocation(line: 25, column: 30, scope: !169, inlinedAt: !279)
!290 = !DILocation(line: 16, column: 3, scope: !167, inlinedAt: !279)
!291 = !DILocation(line: 0, scope: !165, inlinedAt: !279)
!292 = !DILocation(line: 18, column: 11, scope: !165, inlinedAt: !279)
!293 = !DILocation(line: 18, column: 14, scope: !165, inlinedAt: !279)
!294 = !DILocation(line: 18, column: 21, scope: !165, inlinedAt: !279)
!295 = !DILocation(line: 18, column: 19, scope: !165, inlinedAt: !279)
!296 = !DILocation(line: 16, column: 29, scope: !166, inlinedAt: !279)
!297 = distinct !{!297, !298}
!298 = !{!"llvm.loop.unroll.disable"}
!299 = distinct !{!299, !290, !300, !194}
!300 = !DILocation(line: 21, column: 3, scope: !167, inlinedAt: !279)
!301 = !DILocation(line: 0, scope: !169, inlinedAt: !279)
!302 = !DILocation(line: 25, column: 10, scope: !169, inlinedAt: !279)
!303 = !DILocation(line: 25, column: 13, scope: !169, inlinedAt: !279)
!304 = !DILocation(line: 25, column: 26, scope: !169, inlinedAt: !279)
!305 = !DILocation(line: 25, column: 24, scope: !169, inlinedAt: !279)
!306 = !DILocation(line: 25, column: 18, scope: !169, inlinedAt: !279)
!307 = !DILocation(line: 101, column: 58, scope: !111)
!308 = !DILocation(line: 101, column: 25, scope: !111)
!309 = !DILocation(line: 102, column: 26, scope: !111)
!310 = !DILocation(line: 103, column: 32, scope: !111)
!311 = !DILocation(line: 103, column: 42, scope: !111)
!312 = !DILocation(line: 104, column: 30, scope: !111)
!313 = !DILocation(line: 104, column: 25, scope: !111)
!314 = !DILocation(line: 104, column: 18, scope: !111)
!315 = !DILocation(line: 105, column: 20, scope: !111)
!316 = !DILocation(line: 105, column: 33, scope: !111)
!317 = !DILocation(line: 105, column: 41, scope: !111)
!318 = !DILocation(line: 105, column: 50, scope: !111)
!319 = !DILocation(line: 105, column: 66, scope: !111)
!320 = !DILocation(line: 105, column: 61, scope: !111)
!321 = !DILocation(line: 105, column: 48, scope: !111)
!322 = !DILocation(line: 105, column: 13, scope: !111)
!323 = !DILocation(line: 106, column: 44, scope: !111)
!324 = !DILocation(line: 106, column: 42, scope: !111)
!325 = !DILocation(line: 106, column: 17, scope: !111)
!326 = !DILocation(line: 108, column: 3, scope: !112)
!327 = !DILocation(line: 110, column: 5, scope: !328)
!328 = distinct !DILexicalBlock(scope: !329, file: !2, line: 110, column: 5)
!329 = distinct !DILexicalBlock(scope: !112, file: !2, line: 109, column: 8)
!330 = !DILocation(line: 110, column: 5, scope: !331)
!331 = distinct !DILexicalBlock(scope: !328, file: !2, line: 110, column: 5)
!332 = !DILocation(line: 0, scope: !107)
!333 = !DILocation(line: 112, column: 1, scope: !88)
!334 = !DISubprogram(name: "gsl_error", scope: !27, file: !27, line: 77, type: !335, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!335 = !DISubroutineType(types: !336)
!336 = !{null, !337, !337, !28, !28}
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!339 = !DISubprogram(name: "gsl_sf_bessel_J0_e", scope: !340, file: !340, line: 47, type: !89, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!340 = !DIFile(filename: "../gsl/gsl_sf_bessel.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "45459f63edc3203df6c715a25160d493")
!341 = !DISubprogram(name: "log", scope: !342, file: !342, line: 104, type: !343, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!342 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!343 = !DISubroutineType(types: !344)
!344 = !{!74, !74}
!345 = !DISubprogram(name: "gsl_sf_bessel_sin_pi4_e", scope: !346, file: !346, line: 92, type: !347, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!346 = !DIFile(filename: "./bessel.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "57b96fff5bee18a41e1173dbca5404a0")
!347 = !DISubroutineType(types: !348)
!348 = !{!28, !74, !74, !92}
!349 = !DISubprogram(name: "sqrt", scope: !342, file: !342, line: 143, type: !343, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!350 = distinct !DISubprogram(name: "gsl_sf_bessel_Y0", scope: !2, file: !2, line: 119, type: !351, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !353)
!351 = !DISubroutineType(types: !352)
!352 = !{!74, !91}
!353 = !{!354, !355, !356}
!354 = !DILocalVariable(name: "x", arg: 1, scope: !350, file: !2, line: 119, type: !91)
!355 = !DILocalVariable(name: "result", scope: !350, file: !2, line: 121, type: !93)
!356 = !DILocalVariable(name: "status", scope: !350, file: !2, line: 121, type: !28)
!357 = distinct !DIAssignID()
!358 = !DILocation(line: 0, scope: !350)
!359 = !DILocation(line: 121, column: 3, scope: !350)
!360 = !DILocation(line: 121, column: 3, scope: !361)
!361 = distinct !DILexicalBlock(scope: !350, file: !2, line: 121, column: 3)
!362 = !DILocation(line: 121, column: 3, scope: !363)
!363 = distinct !DILexicalBlock(scope: !364, file: !2, line: 121, column: 3)
!364 = distinct !DILexicalBlock(scope: !361, file: !2, line: 121, column: 3)
!365 = !DILocation(line: 122, column: 1, scope: !350)
