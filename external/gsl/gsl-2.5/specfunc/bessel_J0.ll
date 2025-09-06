; ModuleID = 'bessel_J0.c'
source_filename = "bessel_J0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.cheb_series_struct = type { ptr, i32, double, double, i32 }
%struct.gsl_sf_result_struct = type { double, double }

@_gsl_sf_bessel_amp_phase_bm0_cs = external local_unnamed_addr constant %struct.cheb_series_struct, align 8
@_gsl_sf_bessel_amp_phase_bth0_cs = external local_unnamed_addr constant %struct.cheb_series_struct, align 8
@.str = private unnamed_addr constant [31 x i8] c"gsl_sf_bessel_J0_e(x, &result)\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [12 x i8] c"bessel_J0.c\00", align 1, !dbg !7
@bj0_data = internal unnamed_addr constant [13 x double] [double 0x3FB9AA41BAF1C97A, double 0xBFE54981C2DCA2CF, double 0x3FCFDEB2AFE18BCE, double 0xBFA106803D09576B, double 0x3F62EF650D666EF6, double 0xBF19FB587EC623DD, double 0x3EC841D0DE9B1CCB, double 0xBE706E60D04405E4, double 0x3E10E71599E3A0D3, double 0xBDAB51D676039C1D, double 0x3D41CF33EF469EB5, double -1.061900e-15, double 7.400000e-18], align 16, !dbg !12

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_bessel_J0_e(double noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !80 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !108
  call void @llvm.dbg.assign(metadata i1 undef, metadata !101, metadata !DIExpression(), metadata !108, metadata ptr %3, metadata !DIExpression()), !dbg !109
  tail call void @llvm.dbg.value(metadata double %0, metadata !92, metadata !DIExpression()), !dbg !110
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !93, metadata !DIExpression()), !dbg !110
  %4 = tail call double @llvm.fabs.f64(double %0), !dbg !111
  tail call void @llvm.dbg.value(metadata double %4, metadata !94, metadata !DIExpression()), !dbg !110
  %5 = fcmp olt double %4, 0x3E60000000000000, !dbg !112
  br i1 %5, label %6, label %9, !dbg !113

6:                                                ; preds = %2
  store double 1.000000e+00, ptr %1, align 8, !dbg !114, !tbaa !116
  %7 = fmul double %0, %0, !dbg !121
  %8 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !122
  store double %7, ptr %8, align 8, !dbg !123, !tbaa !124
  br label %198, !dbg !125

9:                                                ; preds = %2
  %10 = fcmp ugt double %4, 4.000000e+00, !dbg !126
  br i1 %10, label %50, label %11, !dbg !127

11:                                               ; preds = %9
  %12 = fmul double %4, 1.250000e-01, !dbg !128
  %13 = fmul double %4, %12, !dbg !130
  %14 = fadd double %13, -1.000000e+00, !dbg !131
  call void @llvm.dbg.value(metadata !132, metadata !133, metadata !DIExpression()), !dbg !155
  call void @llvm.dbg.value(metadata double %14, metadata !141, metadata !DIExpression()), !dbg !155
  call void @llvm.dbg.value(metadata ptr %1, metadata !142, metadata !DIExpression()), !dbg !155
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !144, metadata !DIExpression()), !dbg !155
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !145, metadata !DIExpression()), !dbg !155
  %15 = fmul double %14, 2.000000e+00, !dbg !157
  %16 = fadd double %15, 1.000000e+00, !dbg !158
  %17 = fadd double %16, -1.000000e+00, !dbg !159
  %18 = fmul double %17, 5.000000e-01, !dbg !160
  call void @llvm.dbg.value(metadata double %18, metadata !146, metadata !DIExpression()), !dbg !155
  %19 = fmul double %18, 2.000000e+00, !dbg !161
  call void @llvm.dbg.value(metadata double %19, metadata !147, metadata !DIExpression()), !dbg !155
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !148, metadata !DIExpression()), !dbg !155
  call void @llvm.dbg.value(metadata i32 12, metadata !143, metadata !DIExpression()), !dbg !155
  br label %20, !dbg !162

20:                                               ; preds = %20, %11
  %21 = phi i64 [ 12, %11 ], [ %36, %20 ]
  %22 = phi double [ 0.000000e+00, %11 ], [ %29, %20 ]
  %23 = phi double [ 0.000000e+00, %11 ], [ %35, %20 ]
  %24 = phi double [ 0.000000e+00, %11 ], [ %22, %20 ]
  call void @llvm.dbg.value(metadata i64 %21, metadata !143, metadata !DIExpression()), !dbg !155
  call void @llvm.dbg.value(metadata double %22, metadata !144, metadata !DIExpression()), !dbg !155
  call void @llvm.dbg.value(metadata double %23, metadata !148, metadata !DIExpression()), !dbg !155
  call void @llvm.dbg.value(metadata double %24, metadata !145, metadata !DIExpression()), !dbg !155
  call void @llvm.dbg.value(metadata double %22, metadata !149, metadata !DIExpression()), !dbg !163
  %25 = fmul double %19, %22, !dbg !164
  %26 = fsub double %25, %24, !dbg !165
  %27 = getelementptr inbounds double, ptr @bj0_data, i64 %21, !dbg !166
  %28 = load double, ptr %27, align 8, !dbg !166, !tbaa !167
  %29 = fadd double %26, %28, !dbg !168
  call void @llvm.dbg.value(metadata double %29, metadata !144, metadata !DIExpression()), !dbg !155
  %30 = tail call double @llvm.fabs.f64(double %25), !dbg !169
  %31 = tail call double @llvm.fabs.f64(double %24), !dbg !170
  %32 = fadd double %30, %31, !dbg !171
  %33 = tail call double @llvm.fabs.f64(double %28), !dbg !172
  %34 = fadd double %32, %33, !dbg !173
  %35 = fadd double %23, %34, !dbg !174
  call void @llvm.dbg.value(metadata double %35, metadata !148, metadata !DIExpression()), !dbg !155
  call void @llvm.dbg.value(metadata double %22, metadata !145, metadata !DIExpression()), !dbg !155
  %36 = add nsw i64 %21, -1, !dbg !175
  call void @llvm.dbg.value(metadata i64 %36, metadata !143, metadata !DIExpression()), !dbg !155
  %37 = icmp ugt i64 %21, 1, !dbg !176
  br i1 %37, label %20, label %38, !dbg !162, !llvm.loop !177

38:                                               ; preds = %20
  call void @llvm.dbg.value(metadata double %29, metadata !153, metadata !DIExpression()), !dbg !180
  %39 = fmul double %18, %29, !dbg !181
  %40 = fsub double %39, %22, !dbg !182
  %41 = fadd double %40, 0x3FA9AA41BAF1C97A, !dbg !183
  call void @llvm.dbg.value(metadata double %41, metadata !144, metadata !DIExpression()), !dbg !155
  %42 = tail call double @llvm.fabs.f64(double %39), !dbg !184
  %43 = tail call double @llvm.fabs.f64(double %22), !dbg !185
  %44 = fadd double %43, %42, !dbg !186
  %45 = fadd double %44, 0x3FA9AA41BAF1C97A, !dbg !187
  %46 = fadd double %35, %45, !dbg !188
  call void @llvm.dbg.value(metadata double %46, metadata !148, metadata !DIExpression()), !dbg !155
  store double %41, ptr %1, align 8, !dbg !189, !tbaa !116
  %47 = fmul double %46, 0x3CB0000000000000, !dbg !190
  %48 = fadd double %47, 7.400000e-18, !dbg !191
  %49 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !192
  store double %48, ptr %49, align 8, !dbg !193, !tbaa !124
  br label %198, !dbg !194

50:                                               ; preds = %9
  %51 = fmul double %0, %0, !dbg !195
  %52 = fdiv double 3.200000e+01, %51, !dbg !196
  %53 = fadd double %52, -1.000000e+00, !dbg !197
  tail call void @llvm.dbg.value(metadata double %53, metadata !95, metadata !DIExpression()), !dbg !109
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #5, !dbg !198
  call void @llvm.dbg.value(metadata ptr @_gsl_sf_bessel_amp_phase_bm0_cs, metadata !133, metadata !DIExpression()), !dbg !199
  call void @llvm.dbg.value(metadata double %53, metadata !141, metadata !DIExpression()), !dbg !199
  call void @llvm.dbg.value(metadata ptr undef, metadata !142, metadata !DIExpression()), !dbg !199
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !144, metadata !DIExpression()), !dbg !199
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !145, metadata !DIExpression()), !dbg !199
  %54 = fmul double %53, 2.000000e+00, !dbg !201
  %55 = load double, ptr getelementptr inbounds (%struct.cheb_series_struct, ptr @_gsl_sf_bessel_amp_phase_bm0_cs, i64 0, i32 2), align 8, !dbg !202, !tbaa !203
  %56 = fsub double %54, %55, !dbg !207
  %57 = load double, ptr getelementptr inbounds (%struct.cheb_series_struct, ptr @_gsl_sf_bessel_amp_phase_bm0_cs, i64 0, i32 3), align 8, !dbg !208, !tbaa !209
  %58 = fsub double %56, %57, !dbg !210
  %59 = fsub double %57, %55, !dbg !211
  %60 = fdiv double %58, %59, !dbg !212
  call void @llvm.dbg.value(metadata double %60, metadata !146, metadata !DIExpression()), !dbg !199
  %61 = fmul double %60, 2.000000e+00, !dbg !213
  call void @llvm.dbg.value(metadata double %61, metadata !147, metadata !DIExpression()), !dbg !199
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !148, metadata !DIExpression()), !dbg !199
  %62 = load i32, ptr getelementptr inbounds (%struct.cheb_series_struct, ptr @_gsl_sf_bessel_amp_phase_bm0_cs, i64 0, i32 1), align 8, !dbg !214, !tbaa !215
  call void @llvm.dbg.value(metadata i32 %62, metadata !143, metadata !DIExpression()), !dbg !199
  %63 = icmp sgt i32 %62, 0, !dbg !216
  %64 = load ptr, ptr @_gsl_sf_bessel_amp_phase_bm0_cs, align 8, !dbg !217, !tbaa !218
  br i1 %63, label %65, label %85, !dbg !219

65:                                               ; preds = %50
  %66 = zext nneg i32 %62 to i64, !dbg !219
  br label %67, !dbg !219

67:                                               ; preds = %67, %65
  %68 = phi i64 [ %66, %65 ], [ %83, %67 ]
  %69 = phi double [ 0.000000e+00, %65 ], [ %76, %67 ]
  %70 = phi double [ 0.000000e+00, %65 ], [ %82, %67 ]
  %71 = phi double [ 0.000000e+00, %65 ], [ %69, %67 ]
  call void @llvm.dbg.value(metadata i64 %68, metadata !143, metadata !DIExpression()), !dbg !199
  call void @llvm.dbg.value(metadata double %69, metadata !144, metadata !DIExpression()), !dbg !199
  call void @llvm.dbg.value(metadata double %70, metadata !148, metadata !DIExpression()), !dbg !199
  call void @llvm.dbg.value(metadata double %71, metadata !145, metadata !DIExpression()), !dbg !199
  call void @llvm.dbg.value(metadata double %69, metadata !149, metadata !DIExpression()), !dbg !220
  %72 = fmul double %61, %69, !dbg !221
  %73 = fsub double %72, %71, !dbg !222
  %74 = getelementptr inbounds double, ptr %64, i64 %68, !dbg !223
  %75 = load double, ptr %74, align 8, !dbg !223, !tbaa !167
  %76 = fadd double %73, %75, !dbg !224
  call void @llvm.dbg.value(metadata double %76, metadata !144, metadata !DIExpression()), !dbg !199
  %77 = tail call double @llvm.fabs.f64(double %72), !dbg !225
  %78 = tail call double @llvm.fabs.f64(double %71), !dbg !226
  %79 = fadd double %77, %78, !dbg !227
  %80 = tail call double @llvm.fabs.f64(double %75), !dbg !228
  %81 = fadd double %79, %80, !dbg !229
  %82 = fadd double %70, %81, !dbg !230
  call void @llvm.dbg.value(metadata double %82, metadata !148, metadata !DIExpression()), !dbg !199
  call void @llvm.dbg.value(metadata double %69, metadata !145, metadata !DIExpression()), !dbg !199
  %83 = add nsw i64 %68, -1, !dbg !231
  call void @llvm.dbg.value(metadata i64 %83, metadata !143, metadata !DIExpression()), !dbg !199
  %84 = icmp ugt i64 %68, 1, !dbg !216
  br i1 %84, label %67, label %85, !dbg !219, !llvm.loop !232

85:                                               ; preds = %67, %50
  %86 = phi double [ 0.000000e+00, %50 ], [ %69, %67 ], !dbg !199
  %87 = phi double [ 0.000000e+00, %50 ], [ %82, %67 ], !dbg !199
  %88 = phi double [ 0.000000e+00, %50 ], [ %76, %67 ], !dbg !199
  call void @llvm.dbg.value(metadata double %88, metadata !153, metadata !DIExpression()), !dbg !234
  %89 = fmul double %60, %88, !dbg !235
  %90 = fsub double %89, %86, !dbg !236
  %91 = load double, ptr %64, align 8, !dbg !237, !tbaa !167
  %92 = fmul double %91, 5.000000e-01, !dbg !238
  %93 = fadd double %90, %92, !dbg !239
  call void @llvm.dbg.value(metadata double %93, metadata !144, metadata !DIExpression()), !dbg !199
  %94 = tail call double @llvm.fabs.f64(double %89), !dbg !240
  %95 = tail call double @llvm.fabs.f64(double %86), !dbg !241
  %96 = fadd double %95, %94, !dbg !242
  %97 = tail call double @llvm.fabs.f64(double %91), !dbg !243
  %98 = fmul double %97, 5.000000e-01, !dbg !244
  %99 = fadd double %96, %98, !dbg !245
  %100 = fadd double %87, %99, !dbg !246
  call void @llvm.dbg.value(metadata double %100, metadata !148, metadata !DIExpression()), !dbg !199
  tail call void @llvm.dbg.value(metadata double %93, metadata !99, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !109
  %101 = fmul double %100, 0x3CB0000000000000, !dbg !247
  %102 = sext i32 %62 to i64, !dbg !248
  %103 = getelementptr inbounds double, ptr %64, i64 %102, !dbg !248
  %104 = load double, ptr %103, align 8, !dbg !248, !tbaa !167
  %105 = tail call double @llvm.fabs.f64(double %104), !dbg !249
  %106 = fadd double %105, %101, !dbg !250
  tail call void @llvm.dbg.value(metadata double %106, metadata !99, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !109
  tail call void @llvm.dbg.value(metadata i32 0, metadata !102, metadata !DIExpression()), !dbg !109
  call void @llvm.dbg.value(metadata ptr @_gsl_sf_bessel_amp_phase_bth0_cs, metadata !133, metadata !DIExpression()), !dbg !251
  call void @llvm.dbg.value(metadata double %53, metadata !141, metadata !DIExpression()), !dbg !251
  call void @llvm.dbg.value(metadata ptr undef, metadata !142, metadata !DIExpression()), !dbg !251
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !144, metadata !DIExpression()), !dbg !251
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !145, metadata !DIExpression()), !dbg !251
  %107 = load double, ptr getelementptr inbounds (%struct.cheb_series_struct, ptr @_gsl_sf_bessel_amp_phase_bth0_cs, i64 0, i32 2), align 8, !dbg !253, !tbaa !203
  %108 = fsub double %54, %107, !dbg !254
  %109 = load double, ptr getelementptr inbounds (%struct.cheb_series_struct, ptr @_gsl_sf_bessel_amp_phase_bth0_cs, i64 0, i32 3), align 8, !dbg !255, !tbaa !209
  %110 = fsub double %108, %109, !dbg !256
  %111 = fsub double %109, %107, !dbg !257
  %112 = fdiv double %110, %111, !dbg !258
  call void @llvm.dbg.value(metadata double %112, metadata !146, metadata !DIExpression()), !dbg !251
  %113 = fmul double %112, 2.000000e+00, !dbg !259
  call void @llvm.dbg.value(metadata double %113, metadata !147, metadata !DIExpression()), !dbg !251
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !148, metadata !DIExpression()), !dbg !251
  %114 = load i32, ptr getelementptr inbounds (%struct.cheb_series_struct, ptr @_gsl_sf_bessel_amp_phase_bth0_cs, i64 0, i32 1), align 8, !dbg !260, !tbaa !215
  call void @llvm.dbg.value(metadata i32 %114, metadata !143, metadata !DIExpression()), !dbg !251
  %115 = icmp sgt i32 %114, 0, !dbg !261
  %116 = load ptr, ptr @_gsl_sf_bessel_amp_phase_bth0_cs, align 8, !dbg !262, !tbaa !218
  br i1 %115, label %117, label %171, !dbg !263

117:                                              ; preds = %85
  %118 = zext nneg i32 %114 to i64, !dbg !263
  %119 = and i64 %118, 3, !dbg !263
  %120 = icmp eq i64 %119, 0, !dbg !263
  br i1 %120, label %134, label %121, !dbg !263

121:                                              ; preds = %117, %121
  %122 = phi i64 [ %131, %121 ], [ %118, %117 ]
  %123 = phi double [ %130, %121 ], [ 0.000000e+00, %117 ]
  %124 = phi double [ %123, %121 ], [ 0.000000e+00, %117 ]
  %125 = phi i64 [ %132, %121 ], [ 0, %117 ]
  call void @llvm.dbg.value(metadata i64 %122, metadata !143, metadata !DIExpression()), !dbg !251
  call void @llvm.dbg.value(metadata double %123, metadata !144, metadata !DIExpression()), !dbg !251
  call void @llvm.dbg.value(metadata double poison, metadata !148, metadata !DIExpression()), !dbg !251
  call void @llvm.dbg.value(metadata double %124, metadata !145, metadata !DIExpression()), !dbg !251
  call void @llvm.dbg.value(metadata double %123, metadata !149, metadata !DIExpression()), !dbg !264
  %126 = fmul double %113, %123, !dbg !265
  %127 = fsub double %126, %124, !dbg !266
  %128 = getelementptr inbounds double, ptr %116, i64 %122, !dbg !267
  %129 = load double, ptr %128, align 8, !dbg !267, !tbaa !167
  %130 = fadd double %127, %129, !dbg !268
  call void @llvm.dbg.value(metadata double %130, metadata !144, metadata !DIExpression()), !dbg !251
  call void @llvm.dbg.value(metadata double %123, metadata !145, metadata !DIExpression()), !dbg !251
  %131 = add nsw i64 %122, -1, !dbg !269
  call void @llvm.dbg.value(metadata i64 %131, metadata !143, metadata !DIExpression()), !dbg !251
  %132 = add i64 %125, 1, !dbg !263
  %133 = icmp eq i64 %132, %119, !dbg !263
  br i1 %133, label %134, label %121, !dbg !263, !llvm.loop !270

134:                                              ; preds = %121, %117
  %135 = phi i64 [ %118, %117 ], [ %131, %121 ]
  %136 = phi double [ 0.000000e+00, %117 ], [ %130, %121 ]
  %137 = phi double [ 0.000000e+00, %117 ], [ %123, %121 ]
  %138 = phi double [ undef, %117 ], [ %123, %121 ]
  %139 = phi double [ undef, %117 ], [ %130, %121 ]
  %140 = icmp ult i32 %114, 4, !dbg !263
  br i1 %140, label %171, label %141, !dbg !263

141:                                              ; preds = %134
  %142 = getelementptr double, ptr %116, i64 -1, !dbg !263
  %143 = getelementptr double, ptr %116, i64 -2, !dbg !263
  br label %144, !dbg !263

144:                                              ; preds = %144, %141
  %145 = phi i64 [ %135, %141 ], [ %169, %144 ]
  %146 = phi double [ %136, %141 ], [ %168, %144 ]
  %147 = phi double [ %137, %141 ], [ %162, %144 ]
  call void @llvm.dbg.value(metadata i64 %145, metadata !143, metadata !DIExpression()), !dbg !251
  call void @llvm.dbg.value(metadata double %146, metadata !144, metadata !DIExpression()), !dbg !251
  call void @llvm.dbg.value(metadata double poison, metadata !148, metadata !DIExpression()), !dbg !251
  call void @llvm.dbg.value(metadata double %147, metadata !145, metadata !DIExpression()), !dbg !251
  call void @llvm.dbg.value(metadata double %146, metadata !149, metadata !DIExpression()), !dbg !264
  %148 = fmul double %113, %146, !dbg !265
  %149 = fsub double %148, %147, !dbg !266
  %150 = getelementptr inbounds double, ptr %116, i64 %145, !dbg !267
  %151 = load double, ptr %150, align 8, !dbg !267, !tbaa !167
  %152 = fadd double %149, %151, !dbg !268
  call void @llvm.dbg.value(metadata double %152, metadata !144, metadata !DIExpression()), !dbg !251
  call void @llvm.dbg.value(metadata double %146, metadata !145, metadata !DIExpression()), !dbg !251
  call void @llvm.dbg.value(metadata i64 %145, metadata !143, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !251
  call void @llvm.dbg.value(metadata i64 %145, metadata !143, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !251
  call void @llvm.dbg.value(metadata double %152, metadata !144, metadata !DIExpression()), !dbg !251
  call void @llvm.dbg.value(metadata double poison, metadata !148, metadata !DIExpression()), !dbg !251
  call void @llvm.dbg.value(metadata double %146, metadata !145, metadata !DIExpression()), !dbg !251
  call void @llvm.dbg.value(metadata double %152, metadata !149, metadata !DIExpression()), !dbg !264
  %153 = fmul double %113, %152, !dbg !265
  %154 = fsub double %153, %146, !dbg !266
  %155 = getelementptr double, ptr %142, i64 %145, !dbg !267
  %156 = load double, ptr %155, align 8, !dbg !267, !tbaa !167
  %157 = fadd double %154, %156, !dbg !268
  call void @llvm.dbg.value(metadata double %157, metadata !144, metadata !DIExpression()), !dbg !251
  call void @llvm.dbg.value(metadata double %152, metadata !145, metadata !DIExpression()), !dbg !251
  call void @llvm.dbg.value(metadata i64 %145, metadata !143, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !251
  call void @llvm.dbg.value(metadata i64 %145, metadata !143, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !251
  call void @llvm.dbg.value(metadata double %157, metadata !144, metadata !DIExpression()), !dbg !251
  call void @llvm.dbg.value(metadata double poison, metadata !148, metadata !DIExpression()), !dbg !251
  call void @llvm.dbg.value(metadata double %152, metadata !145, metadata !DIExpression()), !dbg !251
  call void @llvm.dbg.value(metadata double %157, metadata !149, metadata !DIExpression()), !dbg !264
  %158 = fmul double %113, %157, !dbg !265
  %159 = fsub double %158, %152, !dbg !266
  %160 = getelementptr double, ptr %143, i64 %145, !dbg !267
  %161 = load double, ptr %160, align 8, !dbg !267, !tbaa !167
  %162 = fadd double %159, %161, !dbg !268
  call void @llvm.dbg.value(metadata double %162, metadata !144, metadata !DIExpression()), !dbg !251
  call void @llvm.dbg.value(metadata double %157, metadata !145, metadata !DIExpression()), !dbg !251
  %163 = add nsw i64 %145, -3, !dbg !269
  call void @llvm.dbg.value(metadata i64 %163, metadata !143, metadata !DIExpression()), !dbg !251
  call void @llvm.dbg.value(metadata i64 %163, metadata !143, metadata !DIExpression()), !dbg !251
  call void @llvm.dbg.value(metadata double %162, metadata !144, metadata !DIExpression()), !dbg !251
  call void @llvm.dbg.value(metadata double poison, metadata !148, metadata !DIExpression()), !dbg !251
  call void @llvm.dbg.value(metadata double %157, metadata !145, metadata !DIExpression()), !dbg !251
  call void @llvm.dbg.value(metadata double %162, metadata !149, metadata !DIExpression()), !dbg !264
  %164 = fmul double %113, %162, !dbg !265
  %165 = fsub double %164, %157, !dbg !266
  %166 = getelementptr inbounds double, ptr %116, i64 %163, !dbg !267
  %167 = load double, ptr %166, align 8, !dbg !267, !tbaa !167
  %168 = fadd double %165, %167, !dbg !268
  call void @llvm.dbg.value(metadata double %168, metadata !144, metadata !DIExpression()), !dbg !251
  call void @llvm.dbg.value(metadata double %162, metadata !145, metadata !DIExpression()), !dbg !251
  %169 = add nsw i64 %145, -4, !dbg !269
  call void @llvm.dbg.value(metadata i64 %169, metadata !143, metadata !DIExpression()), !dbg !251
  %170 = icmp ugt i64 %163, 1, !dbg !261
  br i1 %170, label %144, label %171, !dbg !263, !llvm.loop !272

171:                                              ; preds = %134, %144, %85
  %172 = phi double [ 0.000000e+00, %85 ], [ %138, %134 ], [ %162, %144 ], !dbg !251
  %173 = phi double [ 0.000000e+00, %85 ], [ %139, %134 ], [ %168, %144 ], !dbg !251
  call void @llvm.dbg.value(metadata double %173, metadata !153, metadata !DIExpression()), !dbg !274
  %174 = fmul double %112, %173, !dbg !275
  %175 = fsub double %174, %172, !dbg !276
  %176 = load double, ptr %116, align 8, !dbg !277, !tbaa !167
  %177 = fmul double %176, 5.000000e-01, !dbg !278
  %178 = fadd double %175, %177, !dbg !279
  call void @llvm.dbg.value(metadata double %178, metadata !144, metadata !DIExpression()), !dbg !251
  call void @llvm.dbg.value(metadata double poison, metadata !148, metadata !DIExpression()), !dbg !251
  tail call void @llvm.dbg.value(metadata double %178, metadata !100, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !109
  tail call void @llvm.dbg.value(metadata double poison, metadata !100, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !109
  tail call void @llvm.dbg.value(metadata i32 0, metadata !104, metadata !DIExpression()), !dbg !109
  %179 = fdiv double %178, %4, !dbg !280
  %180 = call i32 @gsl_sf_bessel_cos_pi4_e(double noundef %4, double noundef %179, ptr noundef nonnull %3) #5, !dbg !281
  tail call void @llvm.dbg.value(metadata i32 %180, metadata !105, metadata !DIExpression()), !dbg !109
  %181 = call double @llvm.sqrt.f64(double %4), !dbg !282
  tail call void @llvm.dbg.value(metadata double %181, metadata !106, metadata !DIExpression()), !dbg !109
  %182 = fadd double %93, 7.500000e-01, !dbg !283
  %183 = fdiv double %182, %181, !dbg !284
  tail call void @llvm.dbg.value(metadata double %183, metadata !107, metadata !DIExpression()), !dbg !109
  %184 = load double, ptr %3, align 8, !dbg !285, !tbaa !116
  %185 = fmul double %183, %184, !dbg !286
  store double %185, ptr %1, align 8, !dbg !287, !tbaa !116
  %186 = call double @llvm.fabs.f64(double %184), !dbg !288
  %187 = fmul double %106, %186, !dbg !289
  %188 = fdiv double %187, %181, !dbg !290
  %189 = call double @llvm.fabs.f64(double %183), !dbg !291
  %190 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !292
  %191 = load double, ptr %190, align 8, !dbg !292, !tbaa !124
  %192 = fmul double %189, %191, !dbg !293
  %193 = fadd double %188, %192, !dbg !294
  %194 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !295
  %195 = call double @llvm.fabs.f64(double %185), !dbg !296
  %196 = fmul double %195, 0x3CB0000000000000, !dbg !297
  %197 = fadd double %196, %193, !dbg !298
  store double %197, ptr %194, align 8, !dbg !298, !tbaa !124
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #5, !dbg !299
  br label %198

198:                                              ; preds = %171, %38, %6
  %199 = phi i32 [ 0, %6 ], [ 0, %38 ], [ %180, %171 ], !dbg !300
  ret i32 %199, !dbg !301
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #2

declare !dbg !302 i32 @gsl_sf_bessel_cos_pi4_e(double noundef, double noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_bessel_J0(double noundef %0) local_unnamed_addr #0 !dbg !306 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !313
  call void @llvm.dbg.assign(metadata i1 undef, metadata !311, metadata !DIExpression(), metadata !313, metadata ptr %2, metadata !DIExpression()), !dbg !314
  tail call void @llvm.dbg.value(metadata double %0, metadata !310, metadata !DIExpression()), !dbg !314
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #5, !dbg !315
  %3 = call i32 @gsl_sf_bessel_J0_e(double noundef %0, ptr noundef nonnull %2), !dbg !315
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !312, metadata !DIExpression()), !dbg !314
  %4 = icmp eq i32 %3, 0, !dbg !316
  br i1 %4, label %6, label %5, !dbg !315

5:                                                ; preds = %1
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 110, i32 noundef %3) #5, !dbg !318
  br label %6, !dbg !318

6:                                                ; preds = %1, %5
  %7 = load double, ptr %2, align 8, !dbg !315, !tbaa !116
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #5, !dbg !321
  ret double %7, !dbg !321
}

declare !dbg !322 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!14}
!llvm.module.flags = !{!72, !73, !74, !75, !76, !77, !78}
!llvm.ident = !{!79}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 110, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "bessel_J0.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "f0e411c110c62fcffbc07ae9cbcf57d9")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 248, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 31)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 110, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 12)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(name: "bj0_data", scope: !14, file: !2, line: 48, type: !69, isLocal: true, isDefinition: true)
!14 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !15, globals: !55, splitDebugInlining: false, nameTableKind: None)
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
!55 = !{!0, !7, !56, !12}
!56 = !DIGlobalVariableExpression(var: !57, expr: !DIExpression())
!57 = distinct !DIGlobalVariable(name: "bj0_cs", scope: !14, file: !2, line: 63, type: !58, isLocal: true, isDefinition: true)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "cheb_series", file: !59, line: 29, baseType: !60)
!59 = !DIFile(filename: "./chebyshev.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "41e3a40b0ef4c15c011f3f1dbb3f3cf6")
!60 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cheb_series_struct", file: !59, line: 22, size: 320, elements: !61)
!61 = !{!62, !65, !66, !67, !68}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !60, file: !59, line: 23, baseType: !63, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "order", scope: !60, file: !59, line: 24, baseType: !18, size: 32, offset: 64)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !60, file: !59, line: 25, baseType: !64, size: 64, offset: 128)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !60, file: !59, line: 26, baseType: !64, size: 64, offset: 192)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "order_sp", scope: !60, file: !59, line: 27, baseType: !18, size: 32, offset: 256)
!69 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 832, elements: !70)
!70 = !{!71}
!71 = !DISubrange(count: 13)
!72 = !{i32 7, !"Dwarf Version", i32 5}
!73 = !{i32 2, !"Debug Info Version", i32 3}
!74 = !{i32 1, !"wchar_size", i32 4}
!75 = !{i32 8, !"PIC Level", i32 2}
!76 = !{i32 7, !"PIE Level", i32 2}
!77 = !{i32 7, !"uwtable", i32 2}
!78 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!79 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!80 = distinct !DISubprogram(name: "gsl_sf_bessel_J0_e", scope: !2, file: !2, line: 73, type: !81, scopeLine: 74, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !91)
!81 = !DISubroutineType(types: !82)
!82 = !{!18, !83, !84}
!83 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !64)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !86, line: 41, baseType: !87)
!86 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "5b52deed011f1ffd07977b19a388d251")
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !86, line: 37, size: 128, elements: !88)
!88 = !{!89, !90}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !87, file: !86, line: 38, baseType: !64, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !87, file: !86, line: 39, baseType: !64, size: 64, offset: 64)
!91 = !{!92, !93, !94, !95, !99, !100, !101, !102, !104, !105, !106, !107}
!92 = !DILocalVariable(name: "x", arg: 1, scope: !80, file: !2, line: 73, type: !83)
!93 = !DILocalVariable(name: "result", arg: 2, scope: !80, file: !2, line: 73, type: !84)
!94 = !DILocalVariable(name: "y", scope: !80, file: !2, line: 75, type: !64)
!95 = !DILocalVariable(name: "z", scope: !96, file: !2, line: 88, type: !83)
!96 = distinct !DILexicalBlock(scope: !97, file: !2, line: 87, column: 8)
!97 = distinct !DILexicalBlock(scope: !98, file: !2, line: 84, column: 11)
!98 = distinct !DILexicalBlock(scope: !80, file: !2, line: 79, column: 6)
!99 = !DILocalVariable(name: "ca", scope: !96, file: !2, line: 89, type: !85)
!100 = !DILocalVariable(name: "ct", scope: !96, file: !2, line: 90, type: !85)
!101 = !DILocalVariable(name: "cp", scope: !96, file: !2, line: 91, type: !85)
!102 = !DILocalVariable(name: "stat_ca", scope: !96, file: !2, line: 92, type: !103)
!103 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !18)
!104 = !DILocalVariable(name: "stat_ct", scope: !96, file: !2, line: 93, type: !103)
!105 = !DILocalVariable(name: "stat_cp", scope: !96, file: !2, line: 94, type: !103)
!106 = !DILocalVariable(name: "sqrty", scope: !96, file: !2, line: 95, type: !83)
!107 = !DILocalVariable(name: "ampl", scope: !96, file: !2, line: 96, type: !83)
!108 = distinct !DIAssignID()
!109 = !DILocation(line: 0, scope: !96)
!110 = !DILocation(line: 0, scope: !80)
!111 = !DILocation(line: 75, column: 14, scope: !80)
!112 = !DILocation(line: 79, column: 8, scope: !98)
!113 = !DILocation(line: 79, column: 6, scope: !80)
!114 = !DILocation(line: 80, column: 17, scope: !115)
!115 = distinct !DILexicalBlock(scope: !98, file: !2, line: 79, column: 36)
!116 = !{!117, !118, i64 0}
!117 = !{!"gsl_sf_result_struct", !118, i64 0, !118, i64 8}
!118 = !{!"double", !119, i64 0}
!119 = !{!"omnipotent char", !120, i64 0}
!120 = !{!"Simple C/C++ TBAA"}
!121 = !DILocation(line: 81, column: 20, scope: !115)
!122 = !DILocation(line: 81, column: 13, scope: !115)
!123 = !DILocation(line: 81, column: 17, scope: !115)
!124 = !{!117, !118, i64 8}
!125 = !DILocation(line: 82, column: 5, scope: !115)
!126 = !DILocation(line: 84, column: 13, scope: !97)
!127 = !DILocation(line: 84, column: 11, scope: !98)
!128 = !DILocation(line: 85, column: 38, scope: !129)
!129 = distinct !DILexicalBlock(scope: !97, file: !2, line: 84, column: 21)
!130 = !DILocation(line: 85, column: 40, scope: !129)
!131 = !DILocation(line: 85, column: 43, scope: !129)
!132 = !{}
!133 = !DILocalVariable(name: "cs", arg: 1, scope: !134, file: !135, line: 3, type: !138)
!134 = distinct !DISubprogram(name: "cheb_eval_e", scope: !135, file: !135, line: 3, type: !136, scopeLine: 6, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !140)
!135 = !DIFile(filename: "./cheb_eval.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "540fdb014588703ccd0b3c3b3ea8a26b")
!136 = !DISubroutineType(types: !137)
!137 = !{!18, !138, !83, !84}
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !58)
!140 = !{!133, !141, !142, !143, !144, !145, !146, !147, !148, !149, !153}
!141 = !DILocalVariable(name: "x", arg: 2, scope: !134, file: !135, line: 4, type: !83)
!142 = !DILocalVariable(name: "result", arg: 3, scope: !134, file: !135, line: 5, type: !84)
!143 = !DILocalVariable(name: "j", scope: !134, file: !135, line: 7, type: !18)
!144 = !DILocalVariable(name: "d", scope: !134, file: !135, line: 8, type: !64)
!145 = !DILocalVariable(name: "dd", scope: !134, file: !135, line: 9, type: !64)
!146 = !DILocalVariable(name: "y", scope: !134, file: !135, line: 11, type: !64)
!147 = !DILocalVariable(name: "y2", scope: !134, file: !135, line: 12, type: !64)
!148 = !DILocalVariable(name: "e", scope: !134, file: !135, line: 14, type: !64)
!149 = !DILocalVariable(name: "temp", scope: !150, file: !135, line: 17, type: !64)
!150 = distinct !DILexicalBlock(scope: !151, file: !135, line: 16, column: 33)
!151 = distinct !DILexicalBlock(scope: !152, file: !135, line: 16, column: 3)
!152 = distinct !DILexicalBlock(scope: !134, file: !135, line: 16, column: 3)
!153 = !DILocalVariable(name: "temp", scope: !154, file: !135, line: 24, type: !64)
!154 = distinct !DILexicalBlock(scope: !134, file: !135, line: 23, column: 3)
!155 = !DILocation(line: 0, scope: !134, inlinedAt: !156)
!156 = distinct !DILocation(line: 85, column: 12, scope: !129)
!157 = !DILocation(line: 11, column: 19, scope: !134, inlinedAt: !156)
!158 = !DILocation(line: 11, column: 22, scope: !134, inlinedAt: !156)
!159 = !DILocation(line: 11, column: 30, scope: !134, inlinedAt: !156)
!160 = !DILocation(line: 11, column: 39, scope: !134, inlinedAt: !156)
!161 = !DILocation(line: 12, column: 19, scope: !134, inlinedAt: !156)
!162 = !DILocation(line: 16, column: 3, scope: !152, inlinedAt: !156)
!163 = !DILocation(line: 0, scope: !150, inlinedAt: !156)
!164 = !DILocation(line: 18, column: 11, scope: !150, inlinedAt: !156)
!165 = !DILocation(line: 18, column: 14, scope: !150, inlinedAt: !156)
!166 = !DILocation(line: 18, column: 21, scope: !150, inlinedAt: !156)
!167 = !{!118, !118, i64 0}
!168 = !DILocation(line: 18, column: 19, scope: !150, inlinedAt: !156)
!169 = !DILocation(line: 19, column: 10, scope: !150, inlinedAt: !156)
!170 = !DILocation(line: 19, column: 26, scope: !150, inlinedAt: !156)
!171 = !DILocation(line: 19, column: 24, scope: !150, inlinedAt: !156)
!172 = !DILocation(line: 19, column: 37, scope: !150, inlinedAt: !156)
!173 = !DILocation(line: 19, column: 35, scope: !150, inlinedAt: !156)
!174 = !DILocation(line: 19, column: 7, scope: !150, inlinedAt: !156)
!175 = !DILocation(line: 16, column: 29, scope: !151, inlinedAt: !156)
!176 = !DILocation(line: 16, column: 23, scope: !151, inlinedAt: !156)
!177 = distinct !{!177, !162, !178, !179}
!178 = !DILocation(line: 21, column: 3, scope: !152, inlinedAt: !156)
!179 = !{!"llvm.loop.mustprogress"}
!180 = !DILocation(line: 0, scope: !154, inlinedAt: !156)
!181 = !DILocation(line: 25, column: 10, scope: !154, inlinedAt: !156)
!182 = !DILocation(line: 25, column: 13, scope: !154, inlinedAt: !156)
!183 = !DILocation(line: 25, column: 18, scope: !154, inlinedAt: !156)
!184 = !DILocation(line: 26, column: 10, scope: !154, inlinedAt: !156)
!185 = !DILocation(line: 26, column: 25, scope: !154, inlinedAt: !156)
!186 = !DILocation(line: 26, column: 23, scope: !154, inlinedAt: !156)
!187 = !DILocation(line: 26, column: 34, scope: !154, inlinedAt: !156)
!188 = !DILocation(line: 26, column: 7, scope: !154, inlinedAt: !156)
!189 = !DILocation(line: 29, column: 15, scope: !134, inlinedAt: !156)
!190 = !DILocation(line: 30, column: 33, scope: !134, inlinedAt: !156)
!191 = !DILocation(line: 30, column: 37, scope: !134, inlinedAt: !156)
!192 = !DILocation(line: 30, column: 11, scope: !134, inlinedAt: !156)
!193 = !DILocation(line: 30, column: 15, scope: !134, inlinedAt: !156)
!194 = !DILocation(line: 85, column: 5, scope: !129)
!195 = !DILocation(line: 88, column: 29, scope: !96)
!196 = !DILocation(line: 88, column: 26, scope: !96)
!197 = !DILocation(line: 88, column: 33, scope: !96)
!198 = !DILocation(line: 91, column: 5, scope: !96)
!199 = !DILocation(line: 0, scope: !134, inlinedAt: !200)
!200 = distinct !DILocation(line: 92, column: 25, scope: !96)
!201 = !DILocation(line: 11, column: 19, scope: !134, inlinedAt: !200)
!202 = !DILocation(line: 11, column: 28, scope: !134, inlinedAt: !200)
!203 = !{!204, !118, i64 16}
!204 = !{!"cheb_series_struct", !205, i64 0, !206, i64 8, !118, i64 16, !118, i64 24, !206, i64 32}
!205 = !{!"any pointer", !119, i64 0}
!206 = !{!"int", !119, i64 0}
!207 = !DILocation(line: 11, column: 22, scope: !134, inlinedAt: !200)
!208 = !DILocation(line: 11, column: 36, scope: !134, inlinedAt: !200)
!209 = !{!204, !118, i64 24}
!210 = !DILocation(line: 11, column: 30, scope: !134, inlinedAt: !200)
!211 = !DILocation(line: 11, column: 48, scope: !134, inlinedAt: !200)
!212 = !DILocation(line: 11, column: 39, scope: !134, inlinedAt: !200)
!213 = !DILocation(line: 12, column: 19, scope: !134, inlinedAt: !200)
!214 = !DILocation(line: 16, column: 15, scope: !152, inlinedAt: !200)
!215 = !{!204, !206, i64 8}
!216 = !DILocation(line: 16, column: 23, scope: !151, inlinedAt: !200)
!217 = !DILocation(line: 25, column: 30, scope: !154, inlinedAt: !200)
!218 = !{!204, !205, i64 0}
!219 = !DILocation(line: 16, column: 3, scope: !152, inlinedAt: !200)
!220 = !DILocation(line: 0, scope: !150, inlinedAt: !200)
!221 = !DILocation(line: 18, column: 11, scope: !150, inlinedAt: !200)
!222 = !DILocation(line: 18, column: 14, scope: !150, inlinedAt: !200)
!223 = !DILocation(line: 18, column: 21, scope: !150, inlinedAt: !200)
!224 = !DILocation(line: 18, column: 19, scope: !150, inlinedAt: !200)
!225 = !DILocation(line: 19, column: 10, scope: !150, inlinedAt: !200)
!226 = !DILocation(line: 19, column: 26, scope: !150, inlinedAt: !200)
!227 = !DILocation(line: 19, column: 24, scope: !150, inlinedAt: !200)
!228 = !DILocation(line: 19, column: 37, scope: !150, inlinedAt: !200)
!229 = !DILocation(line: 19, column: 35, scope: !150, inlinedAt: !200)
!230 = !DILocation(line: 19, column: 7, scope: !150, inlinedAt: !200)
!231 = !DILocation(line: 16, column: 29, scope: !151, inlinedAt: !200)
!232 = distinct !{!232, !219, !233, !179}
!233 = !DILocation(line: 21, column: 3, scope: !152, inlinedAt: !200)
!234 = !DILocation(line: 0, scope: !154, inlinedAt: !200)
!235 = !DILocation(line: 25, column: 10, scope: !154, inlinedAt: !200)
!236 = !DILocation(line: 25, column: 13, scope: !154, inlinedAt: !200)
!237 = !DILocation(line: 25, column: 26, scope: !154, inlinedAt: !200)
!238 = !DILocation(line: 25, column: 24, scope: !154, inlinedAt: !200)
!239 = !DILocation(line: 25, column: 18, scope: !154, inlinedAt: !200)
!240 = !DILocation(line: 26, column: 10, scope: !154, inlinedAt: !200)
!241 = !DILocation(line: 26, column: 25, scope: !154, inlinedAt: !200)
!242 = !DILocation(line: 26, column: 23, scope: !154, inlinedAt: !200)
!243 = !DILocation(line: 26, column: 42, scope: !154, inlinedAt: !200)
!244 = !DILocation(line: 26, column: 40, scope: !154, inlinedAt: !200)
!245 = !DILocation(line: 26, column: 34, scope: !154, inlinedAt: !200)
!246 = !DILocation(line: 26, column: 7, scope: !154, inlinedAt: !200)
!247 = !DILocation(line: 30, column: 33, scope: !134, inlinedAt: !200)
!248 = !DILocation(line: 30, column: 44, scope: !134, inlinedAt: !200)
!249 = !DILocation(line: 30, column: 39, scope: !134, inlinedAt: !200)
!250 = !DILocation(line: 30, column: 37, scope: !134, inlinedAt: !200)
!251 = !DILocation(line: 0, scope: !134, inlinedAt: !252)
!252 = distinct !DILocation(line: 93, column: 25, scope: !96)
!253 = !DILocation(line: 11, column: 28, scope: !134, inlinedAt: !252)
!254 = !DILocation(line: 11, column: 22, scope: !134, inlinedAt: !252)
!255 = !DILocation(line: 11, column: 36, scope: !134, inlinedAt: !252)
!256 = !DILocation(line: 11, column: 30, scope: !134, inlinedAt: !252)
!257 = !DILocation(line: 11, column: 48, scope: !134, inlinedAt: !252)
!258 = !DILocation(line: 11, column: 39, scope: !134, inlinedAt: !252)
!259 = !DILocation(line: 12, column: 19, scope: !134, inlinedAt: !252)
!260 = !DILocation(line: 16, column: 15, scope: !152, inlinedAt: !252)
!261 = !DILocation(line: 16, column: 23, scope: !151, inlinedAt: !252)
!262 = !DILocation(line: 25, column: 30, scope: !154, inlinedAt: !252)
!263 = !DILocation(line: 16, column: 3, scope: !152, inlinedAt: !252)
!264 = !DILocation(line: 0, scope: !150, inlinedAt: !252)
!265 = !DILocation(line: 18, column: 11, scope: !150, inlinedAt: !252)
!266 = !DILocation(line: 18, column: 14, scope: !150, inlinedAt: !252)
!267 = !DILocation(line: 18, column: 21, scope: !150, inlinedAt: !252)
!268 = !DILocation(line: 18, column: 19, scope: !150, inlinedAt: !252)
!269 = !DILocation(line: 16, column: 29, scope: !151, inlinedAt: !252)
!270 = distinct !{!270, !271}
!271 = !{!"llvm.loop.unroll.disable"}
!272 = distinct !{!272, !263, !273, !179}
!273 = !DILocation(line: 21, column: 3, scope: !152, inlinedAt: !252)
!274 = !DILocation(line: 0, scope: !154, inlinedAt: !252)
!275 = !DILocation(line: 25, column: 10, scope: !154, inlinedAt: !252)
!276 = !DILocation(line: 25, column: 13, scope: !154, inlinedAt: !252)
!277 = !DILocation(line: 25, column: 26, scope: !154, inlinedAt: !252)
!278 = !DILocation(line: 25, column: 24, scope: !154, inlinedAt: !252)
!279 = !DILocation(line: 25, column: 18, scope: !154, inlinedAt: !252)
!280 = !DILocation(line: 94, column: 58, scope: !96)
!281 = !DILocation(line: 94, column: 25, scope: !96)
!282 = !DILocation(line: 95, column: 26, scope: !96)
!283 = !DILocation(line: 96, column: 32, scope: !96)
!284 = !DILocation(line: 96, column: 42, scope: !96)
!285 = !DILocation(line: 97, column: 30, scope: !96)
!286 = !DILocation(line: 97, column: 25, scope: !96)
!287 = !DILocation(line: 97, column: 18, scope: !96)
!288 = !DILocation(line: 98, column: 20, scope: !96)
!289 = !DILocation(line: 98, column: 33, scope: !96)
!290 = !DILocation(line: 98, column: 41, scope: !96)
!291 = !DILocation(line: 98, column: 50, scope: !96)
!292 = !DILocation(line: 98, column: 66, scope: !96)
!293 = !DILocation(line: 98, column: 61, scope: !96)
!294 = !DILocation(line: 98, column: 48, scope: !96)
!295 = !DILocation(line: 98, column: 13, scope: !96)
!296 = !DILocation(line: 99, column: 38, scope: !96)
!297 = !DILocation(line: 99, column: 36, scope: !96)
!298 = !DILocation(line: 99, column: 17, scope: !96)
!299 = !DILocation(line: 101, column: 3, scope: !97)
!300 = !DILocation(line: 0, scope: !98)
!301 = !DILocation(line: 102, column: 1, scope: !80)
!302 = !DISubprogram(name: "gsl_sf_bessel_cos_pi4_e", scope: !303, file: !303, line: 91, type: !304, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!303 = !DIFile(filename: "./bessel.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "57b96fff5bee18a41e1173dbca5404a0")
!304 = !DISubroutineType(types: !305)
!305 = !{!18, !64, !64, !84}
!306 = distinct !DISubprogram(name: "gsl_sf_bessel_J0", scope: !2, file: !2, line: 108, type: !307, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !309)
!307 = !DISubroutineType(types: !308)
!308 = !{!64, !83}
!309 = !{!310, !311, !312}
!310 = !DILocalVariable(name: "x", arg: 1, scope: !306, file: !2, line: 108, type: !83)
!311 = !DILocalVariable(name: "result", scope: !306, file: !2, line: 110, type: !85)
!312 = !DILocalVariable(name: "status", scope: !306, file: !2, line: 110, type: !18)
!313 = distinct !DIAssignID()
!314 = !DILocation(line: 0, scope: !306)
!315 = !DILocation(line: 110, column: 3, scope: !306)
!316 = !DILocation(line: 110, column: 3, scope: !317)
!317 = distinct !DILexicalBlock(scope: !306, file: !2, line: 110, column: 3)
!318 = !DILocation(line: 110, column: 3, scope: !319)
!319 = distinct !DILexicalBlock(scope: !320, file: !2, line: 110, column: 3)
!320 = distinct !DILexicalBlock(scope: !317, file: !2, line: 110, column: 3)
!321 = !DILocation(line: 111, column: 1, scope: !306)
!322 = !DISubprogram(name: "gsl_error", scope: !17, file: !17, line: 77, type: !323, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!323 = !DISubroutineType(types: !324)
!324 = !{null, !325, !325, !18, !18}
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!326 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
