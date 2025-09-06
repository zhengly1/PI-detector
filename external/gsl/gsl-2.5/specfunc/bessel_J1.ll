; ModuleID = 'bessel_J1.c'
source_filename = "bessel_J1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.cheb_series_struct = type { ptr, i32, double, double, i32 }
%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [10 x i8] c"underflow\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [12 x i8] c"bessel_J1.c\00", align 1, !dbg !7
@_gsl_sf_bessel_amp_phase_bm1_cs = external local_unnamed_addr constant %struct.cheb_series_struct, align 8
@_gsl_sf_bessel_amp_phase_bth1_cs = external local_unnamed_addr constant %struct.cheb_series_struct, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"gsl_sf_bessel_J1_e(x, &result)\00", align 1, !dbg !12
@bj1_data = internal unnamed_addr constant [12 x double] [double 0xBFBE04D817149007, double 0xBFD03B3B53199F79, double 0x3FA9AA41BAF1C97A, double 0xBF72F87ECA366473, double 0x3F3040AFB1E32CC6, double 0xBEE233799FEAFA80, double 0x3E8CC3153AB24D21, double 0xBE30E7C7B52E9CC8, double 0x3DCEBCE3B8C9AB8A, double -6.327610e-13, double 5.840000e-15, double -4.400000e-17], align 16, !dbg !17

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_bessel_J1_e(double noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !83 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !115
  call void @llvm.dbg.assign(metadata i1 undef, metadata !108, metadata !DIExpression(), metadata !115, metadata ptr %3, metadata !DIExpression()), !dbg !116
  tail call void @llvm.dbg.value(metadata double %0, metadata !95, metadata !DIExpression()), !dbg !117
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !96, metadata !DIExpression()), !dbg !117
  %4 = tail call double @llvm.fabs.f64(double %0), !dbg !118
  tail call void @llvm.dbg.value(metadata double %4, metadata !97, metadata !DIExpression()), !dbg !117
  %5 = fcmp oeq double %0, 0.000000e+00, !dbg !119
  br i1 %5, label %6, label %7, !dbg !120

6:                                                ; preds = %2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false), !dbg !121
  br label %212, !dbg !123

7:                                                ; preds = %2
  %8 = fcmp olt double %4, 0x20000000000000, !dbg !124
  br i1 %8, label %9, label %11, !dbg !125

9:                                                ; preds = %7
  store double 0.000000e+00, ptr %1, align 8, !dbg !126, !tbaa !129
  %10 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !126
  store double 0x10000000000000, ptr %10, align 8, !dbg !126, !tbaa !134
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 86, i32 noundef 15) #6, !dbg !135
  br label %212, !dbg !135

11:                                               ; preds = %7
  %12 = fcmp olt double %4, 0x3E66A09E667F3BCD, !dbg !137
  br i1 %12, label %13, label %16, !dbg !138

13:                                               ; preds = %11
  %14 = fmul double %0, 5.000000e-01, !dbg !139
  store double %14, ptr %1, align 8, !dbg !141, !tbaa !129
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !142
  store double 0.000000e+00, ptr %15, align 8, !dbg !143, !tbaa !134
  br label %212, !dbg !144

16:                                               ; preds = %11
  %17 = fcmp olt double %4, 4.000000e+00, !dbg !145
  br i1 %17, label %18, label %61, !dbg !146

18:                                               ; preds = %16
  %19 = fmul double %4, 1.250000e-01, !dbg !147
  %20 = fmul double %4, %19, !dbg !148
  %21 = fadd double %20, -1.000000e+00, !dbg !149
  call void @llvm.dbg.value(metadata !150, metadata !151, metadata !DIExpression()), !dbg !173
  call void @llvm.dbg.value(metadata double %21, metadata !159, metadata !DIExpression()), !dbg !173
  call void @llvm.dbg.value(metadata ptr undef, metadata !160, metadata !DIExpression()), !dbg !173
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !162, metadata !DIExpression()), !dbg !173
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !163, metadata !DIExpression()), !dbg !173
  %22 = fmul double %21, 2.000000e+00, !dbg !175
  %23 = fadd double %22, 1.000000e+00, !dbg !176
  %24 = fadd double %23, -1.000000e+00, !dbg !177
  %25 = fmul double %24, 5.000000e-01, !dbg !178
  call void @llvm.dbg.value(metadata double %25, metadata !164, metadata !DIExpression()), !dbg !173
  %26 = fmul double %25, 2.000000e+00, !dbg !179
  call void @llvm.dbg.value(metadata double %26, metadata !165, metadata !DIExpression()), !dbg !173
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !166, metadata !DIExpression()), !dbg !173
  call void @llvm.dbg.value(metadata i32 11, metadata !161, metadata !DIExpression()), !dbg !173
  br label %27, !dbg !180

27:                                               ; preds = %27, %18
  %28 = phi i64 [ 11, %18 ], [ %43, %27 ]
  %29 = phi double [ 0.000000e+00, %18 ], [ %36, %27 ]
  %30 = phi double [ 0.000000e+00, %18 ], [ %42, %27 ]
  %31 = phi double [ 0.000000e+00, %18 ], [ %29, %27 ]
  call void @llvm.dbg.value(metadata i64 %28, metadata !161, metadata !DIExpression()), !dbg !173
  call void @llvm.dbg.value(metadata double %29, metadata !162, metadata !DIExpression()), !dbg !173
  call void @llvm.dbg.value(metadata double %30, metadata !166, metadata !DIExpression()), !dbg !173
  call void @llvm.dbg.value(metadata double %31, metadata !163, metadata !DIExpression()), !dbg !173
  call void @llvm.dbg.value(metadata double %29, metadata !167, metadata !DIExpression()), !dbg !181
  %32 = fmul double %26, %29, !dbg !182
  %33 = fsub double %32, %31, !dbg !183
  %34 = getelementptr inbounds double, ptr @bj1_data, i64 %28, !dbg !184
  %35 = load double, ptr %34, align 8, !dbg !184, !tbaa !185
  %36 = fadd double %33, %35, !dbg !186
  call void @llvm.dbg.value(metadata double %36, metadata !162, metadata !DIExpression()), !dbg !173
  %37 = tail call double @llvm.fabs.f64(double %32), !dbg !187
  %38 = tail call double @llvm.fabs.f64(double %31), !dbg !188
  %39 = fadd double %37, %38, !dbg !189
  %40 = tail call double @llvm.fabs.f64(double %35), !dbg !190
  %41 = fadd double %39, %40, !dbg !191
  %42 = fadd double %30, %41, !dbg !192
  call void @llvm.dbg.value(metadata double %42, metadata !166, metadata !DIExpression()), !dbg !173
  call void @llvm.dbg.value(metadata double %29, metadata !163, metadata !DIExpression()), !dbg !173
  %43 = add nsw i64 %28, -1, !dbg !193
  call void @llvm.dbg.value(metadata i64 %43, metadata !161, metadata !DIExpression()), !dbg !173
  %44 = icmp ugt i64 %28, 1, !dbg !194
  br i1 %44, label %27, label %45, !dbg !180, !llvm.loop !195

45:                                               ; preds = %27
  call void @llvm.dbg.value(metadata double %36, metadata !171, metadata !DIExpression()), !dbg !198
  %46 = fmul double %25, %36, !dbg !199
  %47 = fsub double %46, %29, !dbg !200
  %48 = fadd double %47, 0xBFAE04D817149007, !dbg !201
  call void @llvm.dbg.value(metadata double %48, metadata !162, metadata !DIExpression()), !dbg !173
  %49 = tail call double @llvm.fabs.f64(double %46), !dbg !202
  %50 = tail call double @llvm.fabs.f64(double %29), !dbg !203
  %51 = fadd double %50, %49, !dbg !204
  %52 = fadd double %51, 0x3FAE04D817149007, !dbg !205
  %53 = fadd double %42, %52, !dbg !206
  call void @llvm.dbg.value(metadata double %53, metadata !166, metadata !DIExpression()), !dbg !173
  tail call void @llvm.dbg.value(metadata double %48, metadata !98, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !207
  %54 = fmul double %53, 0x3CB0000000000000, !dbg !208
  %55 = fadd double %54, 4.400000e-17, !dbg !209
  tail call void @llvm.dbg.value(metadata double %55, metadata !98, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !207
  %56 = fadd double %48, 2.500000e-01, !dbg !210
  %57 = fmul double %56, %0, !dbg !211
  store double %57, ptr %1, align 8, !dbg !212, !tbaa !129
  %58 = fmul double %55, %0, !dbg !213
  %59 = tail call double @llvm.fabs.f64(double %58), !dbg !214
  %60 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !215
  store double %59, ptr %60, align 8, !dbg !216, !tbaa !134
  br label %212

61:                                               ; preds = %16
  %62 = fmul double %0, %0, !dbg !217
  %63 = fdiv double 3.200000e+01, %62, !dbg !218
  %64 = fadd double %63, -1.000000e+00, !dbg !219
  tail call void @llvm.dbg.value(metadata double %64, metadata !104, metadata !DIExpression()), !dbg !116
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6, !dbg !220
  call void @llvm.dbg.value(metadata ptr @_gsl_sf_bessel_amp_phase_bm1_cs, metadata !151, metadata !DIExpression()), !dbg !221
  call void @llvm.dbg.value(metadata double %64, metadata !159, metadata !DIExpression()), !dbg !221
  call void @llvm.dbg.value(metadata ptr undef, metadata !160, metadata !DIExpression()), !dbg !221
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !162, metadata !DIExpression()), !dbg !221
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !163, metadata !DIExpression()), !dbg !221
  %65 = fmul double %64, 2.000000e+00, !dbg !223
  %66 = load double, ptr getelementptr inbounds (%struct.cheb_series_struct, ptr @_gsl_sf_bessel_amp_phase_bm1_cs, i64 0, i32 2), align 8, !dbg !224, !tbaa !225
  %67 = fsub double %65, %66, !dbg !229
  %68 = load double, ptr getelementptr inbounds (%struct.cheb_series_struct, ptr @_gsl_sf_bessel_amp_phase_bm1_cs, i64 0, i32 3), align 8, !dbg !230, !tbaa !231
  %69 = fsub double %67, %68, !dbg !232
  %70 = fsub double %68, %66, !dbg !233
  %71 = fdiv double %69, %70, !dbg !234
  call void @llvm.dbg.value(metadata double %71, metadata !164, metadata !DIExpression()), !dbg !221
  %72 = fmul double %71, 2.000000e+00, !dbg !235
  call void @llvm.dbg.value(metadata double %72, metadata !165, metadata !DIExpression()), !dbg !221
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !166, metadata !DIExpression()), !dbg !221
  %73 = load i32, ptr getelementptr inbounds (%struct.cheb_series_struct, ptr @_gsl_sf_bessel_amp_phase_bm1_cs, i64 0, i32 1), align 8, !dbg !236, !tbaa !237
  call void @llvm.dbg.value(metadata i32 %73, metadata !161, metadata !DIExpression()), !dbg !221
  %74 = icmp sgt i32 %73, 0, !dbg !238
  %75 = load ptr, ptr @_gsl_sf_bessel_amp_phase_bm1_cs, align 8, !dbg !239, !tbaa !240
  br i1 %74, label %76, label %96, !dbg !241

76:                                               ; preds = %61
  %77 = zext nneg i32 %73 to i64, !dbg !241
  br label %78, !dbg !241

78:                                               ; preds = %78, %76
  %79 = phi i64 [ %77, %76 ], [ %94, %78 ]
  %80 = phi double [ 0.000000e+00, %76 ], [ %87, %78 ]
  %81 = phi double [ 0.000000e+00, %76 ], [ %93, %78 ]
  %82 = phi double [ 0.000000e+00, %76 ], [ %80, %78 ]
  call void @llvm.dbg.value(metadata i64 %79, metadata !161, metadata !DIExpression()), !dbg !221
  call void @llvm.dbg.value(metadata double %80, metadata !162, metadata !DIExpression()), !dbg !221
  call void @llvm.dbg.value(metadata double %81, metadata !166, metadata !DIExpression()), !dbg !221
  call void @llvm.dbg.value(metadata double %82, metadata !163, metadata !DIExpression()), !dbg !221
  call void @llvm.dbg.value(metadata double %80, metadata !167, metadata !DIExpression()), !dbg !242
  %83 = fmul double %72, %80, !dbg !243
  %84 = fsub double %83, %82, !dbg !244
  %85 = getelementptr inbounds double, ptr %75, i64 %79, !dbg !245
  %86 = load double, ptr %85, align 8, !dbg !245, !tbaa !185
  %87 = fadd double %84, %86, !dbg !246
  call void @llvm.dbg.value(metadata double %87, metadata !162, metadata !DIExpression()), !dbg !221
  %88 = tail call double @llvm.fabs.f64(double %83), !dbg !247
  %89 = tail call double @llvm.fabs.f64(double %82), !dbg !248
  %90 = fadd double %88, %89, !dbg !249
  %91 = tail call double @llvm.fabs.f64(double %86), !dbg !250
  %92 = fadd double %90, %91, !dbg !251
  %93 = fadd double %81, %92, !dbg !252
  call void @llvm.dbg.value(metadata double %93, metadata !166, metadata !DIExpression()), !dbg !221
  call void @llvm.dbg.value(metadata double %80, metadata !163, metadata !DIExpression()), !dbg !221
  %94 = add nsw i64 %79, -1, !dbg !253
  call void @llvm.dbg.value(metadata i64 %94, metadata !161, metadata !DIExpression()), !dbg !221
  %95 = icmp ugt i64 %79, 1, !dbg !238
  br i1 %95, label %78, label %96, !dbg !241, !llvm.loop !254

96:                                               ; preds = %78, %61
  %97 = phi double [ 0.000000e+00, %61 ], [ %80, %78 ], !dbg !221
  %98 = phi double [ 0.000000e+00, %61 ], [ %93, %78 ], !dbg !221
  %99 = phi double [ 0.000000e+00, %61 ], [ %87, %78 ], !dbg !221
  call void @llvm.dbg.value(metadata double %99, metadata !171, metadata !DIExpression()), !dbg !256
  %100 = fmul double %71, %99, !dbg !257
  %101 = fsub double %100, %97, !dbg !258
  %102 = load double, ptr %75, align 8, !dbg !259, !tbaa !185
  %103 = fmul double %102, 5.000000e-01, !dbg !260
  %104 = fadd double %101, %103, !dbg !261
  call void @llvm.dbg.value(metadata double %104, metadata !162, metadata !DIExpression()), !dbg !221
  %105 = tail call double @llvm.fabs.f64(double %100), !dbg !262
  %106 = tail call double @llvm.fabs.f64(double %97), !dbg !263
  %107 = fadd double %106, %105, !dbg !264
  %108 = tail call double @llvm.fabs.f64(double %102), !dbg !265
  %109 = fmul double %108, 5.000000e-01, !dbg !266
  %110 = fadd double %107, %109, !dbg !267
  %111 = fadd double %98, %110, !dbg !268
  call void @llvm.dbg.value(metadata double %111, metadata !166, metadata !DIExpression()), !dbg !221
  tail call void @llvm.dbg.value(metadata double %104, metadata !106, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !116
  %112 = fmul double %111, 0x3CB0000000000000, !dbg !269
  %113 = sext i32 %73 to i64, !dbg !270
  %114 = getelementptr inbounds double, ptr %75, i64 %113, !dbg !270
  %115 = load double, ptr %114, align 8, !dbg !270, !tbaa !185
  %116 = tail call double @llvm.fabs.f64(double %115), !dbg !271
  %117 = fadd double %116, %112, !dbg !272
  tail call void @llvm.dbg.value(metadata double %117, metadata !106, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !116
  tail call void @llvm.dbg.value(metadata i32 0, metadata !109, metadata !DIExpression()), !dbg !116
  call void @llvm.dbg.value(metadata ptr @_gsl_sf_bessel_amp_phase_bth1_cs, metadata !151, metadata !DIExpression()), !dbg !273
  call void @llvm.dbg.value(metadata double %64, metadata !159, metadata !DIExpression()), !dbg !273
  call void @llvm.dbg.value(metadata ptr undef, metadata !160, metadata !DIExpression()), !dbg !273
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !162, metadata !DIExpression()), !dbg !273
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !163, metadata !DIExpression()), !dbg !273
  %118 = load double, ptr getelementptr inbounds (%struct.cheb_series_struct, ptr @_gsl_sf_bessel_amp_phase_bth1_cs, i64 0, i32 2), align 8, !dbg !275, !tbaa !225
  %119 = fsub double %65, %118, !dbg !276
  %120 = load double, ptr getelementptr inbounds (%struct.cheb_series_struct, ptr @_gsl_sf_bessel_amp_phase_bth1_cs, i64 0, i32 3), align 8, !dbg !277, !tbaa !231
  %121 = fsub double %119, %120, !dbg !278
  %122 = fsub double %120, %118, !dbg !279
  %123 = fdiv double %121, %122, !dbg !280
  call void @llvm.dbg.value(metadata double %123, metadata !164, metadata !DIExpression()), !dbg !273
  %124 = fmul double %123, 2.000000e+00, !dbg !281
  call void @llvm.dbg.value(metadata double %124, metadata !165, metadata !DIExpression()), !dbg !273
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !166, metadata !DIExpression()), !dbg !273
  %125 = load i32, ptr getelementptr inbounds (%struct.cheb_series_struct, ptr @_gsl_sf_bessel_amp_phase_bth1_cs, i64 0, i32 1), align 8, !dbg !282, !tbaa !237
  call void @llvm.dbg.value(metadata i32 %125, metadata !161, metadata !DIExpression()), !dbg !273
  %126 = icmp sgt i32 %125, 0, !dbg !283
  %127 = load ptr, ptr @_gsl_sf_bessel_amp_phase_bth1_cs, align 8, !dbg !284, !tbaa !240
  br i1 %126, label %128, label %182, !dbg !285

128:                                              ; preds = %96
  %129 = zext nneg i32 %125 to i64, !dbg !285
  %130 = and i64 %129, 3, !dbg !285
  %131 = icmp eq i64 %130, 0, !dbg !285
  br i1 %131, label %145, label %132, !dbg !285

132:                                              ; preds = %128, %132
  %133 = phi i64 [ %142, %132 ], [ %129, %128 ]
  %134 = phi double [ %141, %132 ], [ 0.000000e+00, %128 ]
  %135 = phi double [ %134, %132 ], [ 0.000000e+00, %128 ]
  %136 = phi i64 [ %143, %132 ], [ 0, %128 ]
  call void @llvm.dbg.value(metadata i64 %133, metadata !161, metadata !DIExpression()), !dbg !273
  call void @llvm.dbg.value(metadata double %134, metadata !162, metadata !DIExpression()), !dbg !273
  call void @llvm.dbg.value(metadata double poison, metadata !166, metadata !DIExpression()), !dbg !273
  call void @llvm.dbg.value(metadata double %135, metadata !163, metadata !DIExpression()), !dbg !273
  call void @llvm.dbg.value(metadata double %134, metadata !167, metadata !DIExpression()), !dbg !286
  %137 = fmul double %124, %134, !dbg !287
  %138 = fsub double %137, %135, !dbg !288
  %139 = getelementptr inbounds double, ptr %127, i64 %133, !dbg !289
  %140 = load double, ptr %139, align 8, !dbg !289, !tbaa !185
  %141 = fadd double %138, %140, !dbg !290
  call void @llvm.dbg.value(metadata double %141, metadata !162, metadata !DIExpression()), !dbg !273
  call void @llvm.dbg.value(metadata double %134, metadata !163, metadata !DIExpression()), !dbg !273
  %142 = add nsw i64 %133, -1, !dbg !291
  call void @llvm.dbg.value(metadata i64 %142, metadata !161, metadata !DIExpression()), !dbg !273
  %143 = add i64 %136, 1, !dbg !285
  %144 = icmp eq i64 %143, %130, !dbg !285
  br i1 %144, label %145, label %132, !dbg !285, !llvm.loop !292

145:                                              ; preds = %132, %128
  %146 = phi i64 [ %129, %128 ], [ %142, %132 ]
  %147 = phi double [ 0.000000e+00, %128 ], [ %141, %132 ]
  %148 = phi double [ 0.000000e+00, %128 ], [ %134, %132 ]
  %149 = phi double [ undef, %128 ], [ %134, %132 ]
  %150 = phi double [ undef, %128 ], [ %141, %132 ]
  %151 = icmp ult i32 %125, 4, !dbg !285
  br i1 %151, label %182, label %152, !dbg !285

152:                                              ; preds = %145
  %153 = getelementptr double, ptr %127, i64 -1, !dbg !285
  %154 = getelementptr double, ptr %127, i64 -2, !dbg !285
  br label %155, !dbg !285

155:                                              ; preds = %155, %152
  %156 = phi i64 [ %146, %152 ], [ %180, %155 ]
  %157 = phi double [ %147, %152 ], [ %179, %155 ]
  %158 = phi double [ %148, %152 ], [ %173, %155 ]
  call void @llvm.dbg.value(metadata i64 %156, metadata !161, metadata !DIExpression()), !dbg !273
  call void @llvm.dbg.value(metadata double %157, metadata !162, metadata !DIExpression()), !dbg !273
  call void @llvm.dbg.value(metadata double poison, metadata !166, metadata !DIExpression()), !dbg !273
  call void @llvm.dbg.value(metadata double %158, metadata !163, metadata !DIExpression()), !dbg !273
  call void @llvm.dbg.value(metadata double %157, metadata !167, metadata !DIExpression()), !dbg !286
  %159 = fmul double %124, %157, !dbg !287
  %160 = fsub double %159, %158, !dbg !288
  %161 = getelementptr inbounds double, ptr %127, i64 %156, !dbg !289
  %162 = load double, ptr %161, align 8, !dbg !289, !tbaa !185
  %163 = fadd double %160, %162, !dbg !290
  call void @llvm.dbg.value(metadata double %163, metadata !162, metadata !DIExpression()), !dbg !273
  call void @llvm.dbg.value(metadata double %157, metadata !163, metadata !DIExpression()), !dbg !273
  call void @llvm.dbg.value(metadata i64 %156, metadata !161, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !273
  call void @llvm.dbg.value(metadata i64 %156, metadata !161, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !273
  call void @llvm.dbg.value(metadata double %163, metadata !162, metadata !DIExpression()), !dbg !273
  call void @llvm.dbg.value(metadata double poison, metadata !166, metadata !DIExpression()), !dbg !273
  call void @llvm.dbg.value(metadata double %157, metadata !163, metadata !DIExpression()), !dbg !273
  call void @llvm.dbg.value(metadata double %163, metadata !167, metadata !DIExpression()), !dbg !286
  %164 = fmul double %124, %163, !dbg !287
  %165 = fsub double %164, %157, !dbg !288
  %166 = getelementptr double, ptr %153, i64 %156, !dbg !289
  %167 = load double, ptr %166, align 8, !dbg !289, !tbaa !185
  %168 = fadd double %165, %167, !dbg !290
  call void @llvm.dbg.value(metadata double %168, metadata !162, metadata !DIExpression()), !dbg !273
  call void @llvm.dbg.value(metadata double %163, metadata !163, metadata !DIExpression()), !dbg !273
  call void @llvm.dbg.value(metadata i64 %156, metadata !161, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !273
  call void @llvm.dbg.value(metadata i64 %156, metadata !161, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !273
  call void @llvm.dbg.value(metadata double %168, metadata !162, metadata !DIExpression()), !dbg !273
  call void @llvm.dbg.value(metadata double poison, metadata !166, metadata !DIExpression()), !dbg !273
  call void @llvm.dbg.value(metadata double %163, metadata !163, metadata !DIExpression()), !dbg !273
  call void @llvm.dbg.value(metadata double %168, metadata !167, metadata !DIExpression()), !dbg !286
  %169 = fmul double %124, %168, !dbg !287
  %170 = fsub double %169, %163, !dbg !288
  %171 = getelementptr double, ptr %154, i64 %156, !dbg !289
  %172 = load double, ptr %171, align 8, !dbg !289, !tbaa !185
  %173 = fadd double %170, %172, !dbg !290
  call void @llvm.dbg.value(metadata double %173, metadata !162, metadata !DIExpression()), !dbg !273
  call void @llvm.dbg.value(metadata double %168, metadata !163, metadata !DIExpression()), !dbg !273
  %174 = add nsw i64 %156, -3, !dbg !291
  call void @llvm.dbg.value(metadata i64 %174, metadata !161, metadata !DIExpression()), !dbg !273
  call void @llvm.dbg.value(metadata i64 %174, metadata !161, metadata !DIExpression()), !dbg !273
  call void @llvm.dbg.value(metadata double %173, metadata !162, metadata !DIExpression()), !dbg !273
  call void @llvm.dbg.value(metadata double poison, metadata !166, metadata !DIExpression()), !dbg !273
  call void @llvm.dbg.value(metadata double %168, metadata !163, metadata !DIExpression()), !dbg !273
  call void @llvm.dbg.value(metadata double %173, metadata !167, metadata !DIExpression()), !dbg !286
  %175 = fmul double %124, %173, !dbg !287
  %176 = fsub double %175, %168, !dbg !288
  %177 = getelementptr inbounds double, ptr %127, i64 %174, !dbg !289
  %178 = load double, ptr %177, align 8, !dbg !289, !tbaa !185
  %179 = fadd double %176, %178, !dbg !290
  call void @llvm.dbg.value(metadata double %179, metadata !162, metadata !DIExpression()), !dbg !273
  call void @llvm.dbg.value(metadata double %173, metadata !163, metadata !DIExpression()), !dbg !273
  %180 = add nsw i64 %156, -4, !dbg !291
  call void @llvm.dbg.value(metadata i64 %180, metadata !161, metadata !DIExpression()), !dbg !273
  %181 = icmp ugt i64 %174, 1, !dbg !283
  br i1 %181, label %155, label %182, !dbg !285, !llvm.loop !294

182:                                              ; preds = %145, %155, %96
  %183 = phi double [ 0.000000e+00, %96 ], [ %149, %145 ], [ %173, %155 ], !dbg !273
  %184 = phi double [ 0.000000e+00, %96 ], [ %150, %145 ], [ %179, %155 ], !dbg !273
  call void @llvm.dbg.value(metadata double %184, metadata !171, metadata !DIExpression()), !dbg !296
  %185 = fmul double %123, %184, !dbg !297
  %186 = fsub double %185, %183, !dbg !298
  %187 = load double, ptr %127, align 8, !dbg !299, !tbaa !185
  %188 = fmul double %187, 5.000000e-01, !dbg !300
  %189 = fadd double %186, %188, !dbg !301
  call void @llvm.dbg.value(metadata double %189, metadata !162, metadata !DIExpression()), !dbg !273
  call void @llvm.dbg.value(metadata double poison, metadata !166, metadata !DIExpression()), !dbg !273
  tail call void @llvm.dbg.value(metadata double %189, metadata !107, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !116
  tail call void @llvm.dbg.value(metadata double poison, metadata !107, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !116
  tail call void @llvm.dbg.value(metadata i32 0, metadata !111, metadata !DIExpression()), !dbg !116
  %190 = fdiv double %189, %4, !dbg !302
  %191 = call i32 @gsl_sf_bessel_sin_pi4_e(double noundef %4, double noundef %190, ptr noundef nonnull %3) #6, !dbg !303
  tail call void @llvm.dbg.value(metadata i32 %191, metadata !112, metadata !DIExpression()), !dbg !116
  %192 = call double @llvm.sqrt.f64(double %4), !dbg !304
  tail call void @llvm.dbg.value(metadata double %192, metadata !113, metadata !DIExpression()), !dbg !116
  %193 = fadd double %104, 7.500000e-01, !dbg !305
  %194 = fdiv double %193, %192, !dbg !306
  tail call void @llvm.dbg.value(metadata double %194, metadata !114, metadata !DIExpression()), !dbg !116
  %195 = fcmp olt double %0, 0.000000e+00, !dbg !307
  %196 = fneg double %194, !dbg !308
  %197 = select i1 %195, double %196, double %194, !dbg !308
  %198 = load double, ptr %3, align 8, !dbg !309, !tbaa !129
  %199 = fmul double %197, %198, !dbg !310
  store double %199, ptr %1, align 8, !dbg !311, !tbaa !129
  %200 = call double @llvm.fabs.f64(double %198), !dbg !312
  %201 = fmul double %117, %200, !dbg !313
  %202 = fdiv double %201, %192, !dbg !314
  %203 = call double @llvm.fabs.f64(double %194), !dbg !315
  %204 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !316
  %205 = load double, ptr %204, align 8, !dbg !316, !tbaa !134
  %206 = fmul double %203, %205, !dbg !317
  %207 = fadd double %202, %206, !dbg !318
  %208 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !319
  %209 = call double @llvm.fabs.f64(double %199), !dbg !320
  %210 = fmul double %209, 0x3CB0000000000000, !dbg !321
  %211 = fadd double %210, %207, !dbg !322
  store double %211, ptr %208, align 8, !dbg !322, !tbaa !134
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6, !dbg !323
  br label %212

212:                                              ; preds = %182, %45, %13, %9, %6
  %213 = phi i32 [ 0, %6 ], [ 15, %9 ], [ 0, %13 ], [ 0, %45 ], [ %191, %182 ], !dbg !324
  ret i32 %213, !dbg !325
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #2

declare !dbg !326 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare !dbg !331 i32 @gsl_sf_bessel_sin_pi4_e(double noundef, double noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_bessel_J1(double noundef %0) local_unnamed_addr #0 !dbg !335 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !342
  call void @llvm.dbg.assign(metadata i1 undef, metadata !340, metadata !DIExpression(), metadata !342, metadata ptr %2, metadata !DIExpression()), !dbg !343
  tail call void @llvm.dbg.value(metadata double %0, metadata !339, metadata !DIExpression()), !dbg !343
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #6, !dbg !344
  %3 = call i32 @gsl_sf_bessel_J1_e(double noundef %0, ptr noundef nonnull %2), !dbg !344
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !341, metadata !DIExpression()), !dbg !343
  %4 = icmp eq i32 %3, 0, !dbg !345
  br i1 %4, label %6, label %5, !dbg !344

5:                                                ; preds = %1
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 127, i32 noundef %3) #6, !dbg !347
  br label %6, !dbg !347

6:                                                ; preds = %1, %5
  %7 = load double, ptr %2, align 8, !dbg !344, !tbaa !129
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #6, !dbg !350
  ret double %7, !dbg !350
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!19}
!llvm.module.flags = !{!75, !76, !77, !78, !79, !80, !81}
!llvm.ident = !{!82}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 86, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "bessel_J1.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "a7b6fcaf91dbdd8bc4c9e7e20256bf03")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 10)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 86, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 12)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 127, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 248, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 31)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(name: "bj1_data", scope: !19, file: !2, line: 50, type: !74, isLocal: true, isDefinition: true)
!19 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !20, globals: !60, splitDebugInlining: false, nameTableKind: None)
!20 = !{!21}
!21 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !22, line: 39, baseType: !23, size: 32, elements: !24)
!22 = !DIFile(filename: "../gsl/gsl_errno.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "3ff14ff6df19564f3d7caf1e8e622626")
!23 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!24 = !{!25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59}
!25 = !DIEnumerator(name: "GSL_SUCCESS", value: 0)
!26 = !DIEnumerator(name: "GSL_FAILURE", value: -1)
!27 = !DIEnumerator(name: "GSL_CONTINUE", value: -2)
!28 = !DIEnumerator(name: "GSL_EDOM", value: 1)
!29 = !DIEnumerator(name: "GSL_ERANGE", value: 2)
!30 = !DIEnumerator(name: "GSL_EFAULT", value: 3)
!31 = !DIEnumerator(name: "GSL_EINVAL", value: 4)
!32 = !DIEnumerator(name: "GSL_EFAILED", value: 5)
!33 = !DIEnumerator(name: "GSL_EFACTOR", value: 6)
!34 = !DIEnumerator(name: "GSL_ESANITY", value: 7)
!35 = !DIEnumerator(name: "GSL_ENOMEM", value: 8)
!36 = !DIEnumerator(name: "GSL_EBADFUNC", value: 9)
!37 = !DIEnumerator(name: "GSL_ERUNAWAY", value: 10)
!38 = !DIEnumerator(name: "GSL_EMAXITER", value: 11)
!39 = !DIEnumerator(name: "GSL_EZERODIV", value: 12)
!40 = !DIEnumerator(name: "GSL_EBADTOL", value: 13)
!41 = !DIEnumerator(name: "GSL_ETOL", value: 14)
!42 = !DIEnumerator(name: "GSL_EUNDRFLW", value: 15)
!43 = !DIEnumerator(name: "GSL_EOVRFLW", value: 16)
!44 = !DIEnumerator(name: "GSL_ELOSS", value: 17)
!45 = !DIEnumerator(name: "GSL_EROUND", value: 18)
!46 = !DIEnumerator(name: "GSL_EBADLEN", value: 19)
!47 = !DIEnumerator(name: "GSL_ENOTSQR", value: 20)
!48 = !DIEnumerator(name: "GSL_ESING", value: 21)
!49 = !DIEnumerator(name: "GSL_EDIVERGE", value: 22)
!50 = !DIEnumerator(name: "GSL_EUNSUP", value: 23)
!51 = !DIEnumerator(name: "GSL_EUNIMPL", value: 24)
!52 = !DIEnumerator(name: "GSL_ECACHE", value: 25)
!53 = !DIEnumerator(name: "GSL_ETABLE", value: 26)
!54 = !DIEnumerator(name: "GSL_ENOPROG", value: 27)
!55 = !DIEnumerator(name: "GSL_ENOPROGJ", value: 28)
!56 = !DIEnumerator(name: "GSL_ETOLF", value: 29)
!57 = !DIEnumerator(name: "GSL_ETOLX", value: 30)
!58 = !DIEnumerator(name: "GSL_ETOLG", value: 31)
!59 = !DIEnumerator(name: "GSL_EOF", value: 32)
!60 = !{!0, !7, !12, !61, !17}
!61 = !DIGlobalVariableExpression(var: !62, expr: !DIExpression())
!62 = distinct !DIGlobalVariable(name: "bj1_cs", scope: !19, file: !2, line: 64, type: !63, isLocal: true, isDefinition: true)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "cheb_series", file: !64, line: 29, baseType: !65)
!64 = !DIFile(filename: "./chebyshev.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "41e3a40b0ef4c15c011f3f1dbb3f3cf6")
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cheb_series_struct", file: !64, line: 22, size: 320, elements: !66)
!66 = !{!67, !70, !71, !72, !73}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !65, file: !64, line: 23, baseType: !68, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "order", scope: !65, file: !64, line: 24, baseType: !23, size: 32, offset: 64)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !65, file: !64, line: 25, baseType: !69, size: 64, offset: 128)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !65, file: !64, line: 26, baseType: !69, size: 64, offset: 192)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "order_sp", scope: !65, file: !64, line: 27, baseType: !23, size: 32, offset: 256)
!74 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 768, elements: !10)
!75 = !{i32 7, !"Dwarf Version", i32 5}
!76 = !{i32 2, !"Debug Info Version", i32 3}
!77 = !{i32 1, !"wchar_size", i32 4}
!78 = !{i32 8, !"PIC Level", i32 2}
!79 = !{i32 7, !"PIE Level", i32 2}
!80 = !{i32 7, !"uwtable", i32 2}
!81 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!82 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!83 = distinct !DISubprogram(name: "gsl_sf_bessel_J1_e", scope: !2, file: !2, line: 74, type: !84, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !94)
!84 = !DISubroutineType(types: !85)
!85 = !{!23, !86, !87}
!86 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !69)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !89, line: 41, baseType: !90)
!89 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "5b52deed011f1ffd07977b19a388d251")
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !89, line: 37, size: 128, elements: !91)
!91 = !{!92, !93}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !90, file: !89, line: 38, baseType: !69, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !90, file: !89, line: 39, baseType: !69, size: 64, offset: 64)
!94 = !{!95, !96, !97, !98, !104, !106, !107, !108, !109, !111, !112, !113, !114}
!95 = !DILocalVariable(name: "x", arg: 1, scope: !83, file: !2, line: 74, type: !86)
!96 = !DILocalVariable(name: "result", arg: 2, scope: !83, file: !2, line: 74, type: !87)
!97 = !DILocalVariable(name: "y", scope: !83, file: !2, line: 76, type: !69)
!98 = !DILocalVariable(name: "c", scope: !99, file: !2, line: 94, type: !88)
!99 = distinct !DILexicalBlock(scope: !100, file: !2, line: 93, column: 20)
!100 = distinct !DILexicalBlock(scope: !101, file: !2, line: 93, column: 11)
!101 = distinct !DILexicalBlock(scope: !102, file: !2, line: 88, column: 11)
!102 = distinct !DILexicalBlock(scope: !103, file: !2, line: 85, column: 11)
!103 = distinct !DILexicalBlock(scope: !83, file: !2, line: 80, column: 6)
!104 = !DILocalVariable(name: "z", scope: !105, file: !2, line: 105, type: !86)
!105 = distinct !DILexicalBlock(scope: !100, file: !2, line: 100, column: 8)
!106 = !DILocalVariable(name: "ca", scope: !105, file: !2, line: 106, type: !88)
!107 = !DILocalVariable(name: "ct", scope: !105, file: !2, line: 107, type: !88)
!108 = !DILocalVariable(name: "sp", scope: !105, file: !2, line: 108, type: !88)
!109 = !DILocalVariable(name: "stat_ca", scope: !105, file: !2, line: 109, type: !110)
!110 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !23)
!111 = !DILocalVariable(name: "stat_ct", scope: !105, file: !2, line: 110, type: !110)
!112 = !DILocalVariable(name: "stat_sp", scope: !105, file: !2, line: 111, type: !110)
!113 = !DILocalVariable(name: "sqrty", scope: !105, file: !2, line: 112, type: !86)
!114 = !DILocalVariable(name: "ampl", scope: !105, file: !2, line: 113, type: !86)
!115 = distinct !DIAssignID()
!116 = !DILocation(line: 0, scope: !105)
!117 = !DILocation(line: 0, scope: !83)
!118 = !DILocation(line: 76, column: 14, scope: !83)
!119 = !DILocation(line: 80, column: 8, scope: !103)
!120 = !DILocation(line: 80, column: 6, scope: !83)
!121 = !DILocation(line: 82, column: 17, scope: !122)
!122 = distinct !DILexicalBlock(scope: !103, file: !2, line: 80, column: 16)
!123 = !DILocation(line: 83, column: 5, scope: !122)
!124 = !DILocation(line: 85, column: 13, scope: !102)
!125 = !DILocation(line: 85, column: 11, scope: !103)
!126 = !DILocation(line: 86, column: 5, scope: !127)
!127 = distinct !DILexicalBlock(scope: !128, file: !2, line: 86, column: 5)
!128 = distinct !DILexicalBlock(scope: !102, file: !2, line: 85, column: 32)
!129 = !{!130, !131, i64 0}
!130 = !{!"gsl_sf_result_struct", !131, i64 0, !131, i64 8}
!131 = !{!"double", !132, i64 0}
!132 = !{!"omnipotent char", !133, i64 0}
!133 = !{!"Simple C/C++ TBAA"}
!134 = !{!130, !131, i64 8}
!135 = !DILocation(line: 86, column: 5, scope: !136)
!136 = distinct !DILexicalBlock(scope: !127, file: !2, line: 86, column: 5)
!137 = !DILocation(line: 88, column: 13, scope: !101)
!138 = !DILocation(line: 88, column: 11, scope: !102)
!139 = !DILocation(line: 89, column: 22, scope: !140)
!140 = distinct !DILexicalBlock(scope: !101, file: !2, line: 88, column: 50)
!141 = !DILocation(line: 89, column: 17, scope: !140)
!142 = !DILocation(line: 90, column: 13, scope: !140)
!143 = !DILocation(line: 90, column: 17, scope: !140)
!144 = !DILocation(line: 91, column: 5, scope: !140)
!145 = !DILocation(line: 93, column: 13, scope: !100)
!146 = !DILocation(line: 93, column: 11, scope: !101)
!147 = !DILocation(line: 95, column: 31, scope: !99)
!148 = !DILocation(line: 95, column: 33, scope: !99)
!149 = !DILocation(line: 95, column: 35, scope: !99)
!150 = !{}
!151 = !DILocalVariable(name: "cs", arg: 1, scope: !152, file: !153, line: 3, type: !156)
!152 = distinct !DISubprogram(name: "cheb_eval_e", scope: !153, file: !153, line: 3, type: !154, scopeLine: 6, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !158)
!153 = !DIFile(filename: "./cheb_eval.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "540fdb014588703ccd0b3c3b3ea8a26b")
!154 = !DISubroutineType(types: !155)
!155 = !{!23, !156, !86, !87}
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!157 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !63)
!158 = !{!151, !159, !160, !161, !162, !163, !164, !165, !166, !167, !171}
!159 = !DILocalVariable(name: "x", arg: 2, scope: !152, file: !153, line: 4, type: !86)
!160 = !DILocalVariable(name: "result", arg: 3, scope: !152, file: !153, line: 5, type: !87)
!161 = !DILocalVariable(name: "j", scope: !152, file: !153, line: 7, type: !23)
!162 = !DILocalVariable(name: "d", scope: !152, file: !153, line: 8, type: !69)
!163 = !DILocalVariable(name: "dd", scope: !152, file: !153, line: 9, type: !69)
!164 = !DILocalVariable(name: "y", scope: !152, file: !153, line: 11, type: !69)
!165 = !DILocalVariable(name: "y2", scope: !152, file: !153, line: 12, type: !69)
!166 = !DILocalVariable(name: "e", scope: !152, file: !153, line: 14, type: !69)
!167 = !DILocalVariable(name: "temp", scope: !168, file: !153, line: 17, type: !69)
!168 = distinct !DILexicalBlock(scope: !169, file: !153, line: 16, column: 33)
!169 = distinct !DILexicalBlock(scope: !170, file: !153, line: 16, column: 3)
!170 = distinct !DILexicalBlock(scope: !152, file: !153, line: 16, column: 3)
!171 = !DILocalVariable(name: "temp", scope: !172, file: !153, line: 24, type: !69)
!172 = distinct !DILexicalBlock(scope: !152, file: !153, line: 23, column: 3)
!173 = !DILocation(line: 0, scope: !152, inlinedAt: !174)
!174 = distinct !DILocation(line: 95, column: 5, scope: !99)
!175 = !DILocation(line: 11, column: 19, scope: !152, inlinedAt: !174)
!176 = !DILocation(line: 11, column: 22, scope: !152, inlinedAt: !174)
!177 = !DILocation(line: 11, column: 30, scope: !152, inlinedAt: !174)
!178 = !DILocation(line: 11, column: 39, scope: !152, inlinedAt: !174)
!179 = !DILocation(line: 12, column: 19, scope: !152, inlinedAt: !174)
!180 = !DILocation(line: 16, column: 3, scope: !170, inlinedAt: !174)
!181 = !DILocation(line: 0, scope: !168, inlinedAt: !174)
!182 = !DILocation(line: 18, column: 11, scope: !168, inlinedAt: !174)
!183 = !DILocation(line: 18, column: 14, scope: !168, inlinedAt: !174)
!184 = !DILocation(line: 18, column: 21, scope: !168, inlinedAt: !174)
!185 = !{!131, !131, i64 0}
!186 = !DILocation(line: 18, column: 19, scope: !168, inlinedAt: !174)
!187 = !DILocation(line: 19, column: 10, scope: !168, inlinedAt: !174)
!188 = !DILocation(line: 19, column: 26, scope: !168, inlinedAt: !174)
!189 = !DILocation(line: 19, column: 24, scope: !168, inlinedAt: !174)
!190 = !DILocation(line: 19, column: 37, scope: !168, inlinedAt: !174)
!191 = !DILocation(line: 19, column: 35, scope: !168, inlinedAt: !174)
!192 = !DILocation(line: 19, column: 7, scope: !168, inlinedAt: !174)
!193 = !DILocation(line: 16, column: 29, scope: !169, inlinedAt: !174)
!194 = !DILocation(line: 16, column: 23, scope: !169, inlinedAt: !174)
!195 = distinct !{!195, !180, !196, !197}
!196 = !DILocation(line: 21, column: 3, scope: !170, inlinedAt: !174)
!197 = !{!"llvm.loop.mustprogress"}
!198 = !DILocation(line: 0, scope: !172, inlinedAt: !174)
!199 = !DILocation(line: 25, column: 10, scope: !172, inlinedAt: !174)
!200 = !DILocation(line: 25, column: 13, scope: !172, inlinedAt: !174)
!201 = !DILocation(line: 25, column: 18, scope: !172, inlinedAt: !174)
!202 = !DILocation(line: 26, column: 10, scope: !172, inlinedAt: !174)
!203 = !DILocation(line: 26, column: 25, scope: !172, inlinedAt: !174)
!204 = !DILocation(line: 26, column: 23, scope: !172, inlinedAt: !174)
!205 = !DILocation(line: 26, column: 34, scope: !172, inlinedAt: !174)
!206 = !DILocation(line: 26, column: 7, scope: !172, inlinedAt: !174)
!207 = !DILocation(line: 0, scope: !99)
!208 = !DILocation(line: 30, column: 33, scope: !152, inlinedAt: !174)
!209 = !DILocation(line: 30, column: 37, scope: !152, inlinedAt: !174)
!210 = !DILocation(line: 96, column: 29, scope: !99)
!211 = !DILocation(line: 96, column: 21, scope: !99)
!212 = !DILocation(line: 96, column: 17, scope: !99)
!213 = !DILocation(line: 97, column: 26, scope: !99)
!214 = !DILocation(line: 97, column: 19, scope: !99)
!215 = !DILocation(line: 97, column: 13, scope: !99)
!216 = !DILocation(line: 97, column: 17, scope: !99)
!217 = !DILocation(line: 105, column: 30, scope: !105)
!218 = !DILocation(line: 105, column: 27, scope: !105)
!219 = !DILocation(line: 105, column: 34, scope: !105)
!220 = !DILocation(line: 108, column: 5, scope: !105)
!221 = !DILocation(line: 0, scope: !152, inlinedAt: !222)
!222 = distinct !DILocation(line: 109, column: 25, scope: !105)
!223 = !DILocation(line: 11, column: 19, scope: !152, inlinedAt: !222)
!224 = !DILocation(line: 11, column: 28, scope: !152, inlinedAt: !222)
!225 = !{!226, !131, i64 16}
!226 = !{!"cheb_series_struct", !227, i64 0, !228, i64 8, !131, i64 16, !131, i64 24, !228, i64 32}
!227 = !{!"any pointer", !132, i64 0}
!228 = !{!"int", !132, i64 0}
!229 = !DILocation(line: 11, column: 22, scope: !152, inlinedAt: !222)
!230 = !DILocation(line: 11, column: 36, scope: !152, inlinedAt: !222)
!231 = !{!226, !131, i64 24}
!232 = !DILocation(line: 11, column: 30, scope: !152, inlinedAt: !222)
!233 = !DILocation(line: 11, column: 48, scope: !152, inlinedAt: !222)
!234 = !DILocation(line: 11, column: 39, scope: !152, inlinedAt: !222)
!235 = !DILocation(line: 12, column: 19, scope: !152, inlinedAt: !222)
!236 = !DILocation(line: 16, column: 15, scope: !170, inlinedAt: !222)
!237 = !{!226, !228, i64 8}
!238 = !DILocation(line: 16, column: 23, scope: !169, inlinedAt: !222)
!239 = !DILocation(line: 25, column: 30, scope: !172, inlinedAt: !222)
!240 = !{!226, !227, i64 0}
!241 = !DILocation(line: 16, column: 3, scope: !170, inlinedAt: !222)
!242 = !DILocation(line: 0, scope: !168, inlinedAt: !222)
!243 = !DILocation(line: 18, column: 11, scope: !168, inlinedAt: !222)
!244 = !DILocation(line: 18, column: 14, scope: !168, inlinedAt: !222)
!245 = !DILocation(line: 18, column: 21, scope: !168, inlinedAt: !222)
!246 = !DILocation(line: 18, column: 19, scope: !168, inlinedAt: !222)
!247 = !DILocation(line: 19, column: 10, scope: !168, inlinedAt: !222)
!248 = !DILocation(line: 19, column: 26, scope: !168, inlinedAt: !222)
!249 = !DILocation(line: 19, column: 24, scope: !168, inlinedAt: !222)
!250 = !DILocation(line: 19, column: 37, scope: !168, inlinedAt: !222)
!251 = !DILocation(line: 19, column: 35, scope: !168, inlinedAt: !222)
!252 = !DILocation(line: 19, column: 7, scope: !168, inlinedAt: !222)
!253 = !DILocation(line: 16, column: 29, scope: !169, inlinedAt: !222)
!254 = distinct !{!254, !241, !255, !197}
!255 = !DILocation(line: 21, column: 3, scope: !170, inlinedAt: !222)
!256 = !DILocation(line: 0, scope: !172, inlinedAt: !222)
!257 = !DILocation(line: 25, column: 10, scope: !172, inlinedAt: !222)
!258 = !DILocation(line: 25, column: 13, scope: !172, inlinedAt: !222)
!259 = !DILocation(line: 25, column: 26, scope: !172, inlinedAt: !222)
!260 = !DILocation(line: 25, column: 24, scope: !172, inlinedAt: !222)
!261 = !DILocation(line: 25, column: 18, scope: !172, inlinedAt: !222)
!262 = !DILocation(line: 26, column: 10, scope: !172, inlinedAt: !222)
!263 = !DILocation(line: 26, column: 25, scope: !172, inlinedAt: !222)
!264 = !DILocation(line: 26, column: 23, scope: !172, inlinedAt: !222)
!265 = !DILocation(line: 26, column: 42, scope: !172, inlinedAt: !222)
!266 = !DILocation(line: 26, column: 40, scope: !172, inlinedAt: !222)
!267 = !DILocation(line: 26, column: 34, scope: !172, inlinedAt: !222)
!268 = !DILocation(line: 26, column: 7, scope: !172, inlinedAt: !222)
!269 = !DILocation(line: 30, column: 33, scope: !152, inlinedAt: !222)
!270 = !DILocation(line: 30, column: 44, scope: !152, inlinedAt: !222)
!271 = !DILocation(line: 30, column: 39, scope: !152, inlinedAt: !222)
!272 = !DILocation(line: 30, column: 37, scope: !152, inlinedAt: !222)
!273 = !DILocation(line: 0, scope: !152, inlinedAt: !274)
!274 = distinct !DILocation(line: 110, column: 25, scope: !105)
!275 = !DILocation(line: 11, column: 28, scope: !152, inlinedAt: !274)
!276 = !DILocation(line: 11, column: 22, scope: !152, inlinedAt: !274)
!277 = !DILocation(line: 11, column: 36, scope: !152, inlinedAt: !274)
!278 = !DILocation(line: 11, column: 30, scope: !152, inlinedAt: !274)
!279 = !DILocation(line: 11, column: 48, scope: !152, inlinedAt: !274)
!280 = !DILocation(line: 11, column: 39, scope: !152, inlinedAt: !274)
!281 = !DILocation(line: 12, column: 19, scope: !152, inlinedAt: !274)
!282 = !DILocation(line: 16, column: 15, scope: !170, inlinedAt: !274)
!283 = !DILocation(line: 16, column: 23, scope: !169, inlinedAt: !274)
!284 = !DILocation(line: 25, column: 30, scope: !172, inlinedAt: !274)
!285 = !DILocation(line: 16, column: 3, scope: !170, inlinedAt: !274)
!286 = !DILocation(line: 0, scope: !168, inlinedAt: !274)
!287 = !DILocation(line: 18, column: 11, scope: !168, inlinedAt: !274)
!288 = !DILocation(line: 18, column: 14, scope: !168, inlinedAt: !274)
!289 = !DILocation(line: 18, column: 21, scope: !168, inlinedAt: !274)
!290 = !DILocation(line: 18, column: 19, scope: !168, inlinedAt: !274)
!291 = !DILocation(line: 16, column: 29, scope: !169, inlinedAt: !274)
!292 = distinct !{!292, !293}
!293 = !{!"llvm.loop.unroll.disable"}
!294 = distinct !{!294, !285, !295, !197}
!295 = !DILocation(line: 21, column: 3, scope: !170, inlinedAt: !274)
!296 = !DILocation(line: 0, scope: !172, inlinedAt: !274)
!297 = !DILocation(line: 25, column: 10, scope: !172, inlinedAt: !274)
!298 = !DILocation(line: 25, column: 13, scope: !172, inlinedAt: !274)
!299 = !DILocation(line: 25, column: 26, scope: !172, inlinedAt: !274)
!300 = !DILocation(line: 25, column: 24, scope: !172, inlinedAt: !274)
!301 = !DILocation(line: 25, column: 18, scope: !172, inlinedAt: !274)
!302 = !DILocation(line: 111, column: 58, scope: !105)
!303 = !DILocation(line: 111, column: 25, scope: !105)
!304 = !DILocation(line: 112, column: 26, scope: !105)
!305 = !DILocation(line: 113, column: 32, scope: !105)
!306 = !DILocation(line: 113, column: 42, scope: !105)
!307 = !DILocation(line: 114, column: 23, scope: !105)
!308 = !DILocation(line: 114, column: 21, scope: !105)
!309 = !DILocation(line: 114, column: 50, scope: !105)
!310 = !DILocation(line: 114, column: 45, scope: !105)
!311 = !DILocation(line: 114, column: 18, scope: !105)
!312 = !DILocation(line: 115, column: 20, scope: !105)
!313 = !DILocation(line: 115, column: 33, scope: !105)
!314 = !DILocation(line: 115, column: 41, scope: !105)
!315 = !DILocation(line: 115, column: 50, scope: !105)
!316 = !DILocation(line: 115, column: 66, scope: !105)
!317 = !DILocation(line: 115, column: 61, scope: !105)
!318 = !DILocation(line: 115, column: 48, scope: !105)
!319 = !DILocation(line: 115, column: 13, scope: !105)
!320 = !DILocation(line: 116, column: 38, scope: !105)
!321 = !DILocation(line: 116, column: 36, scope: !105)
!322 = !DILocation(line: 116, column: 17, scope: !105)
!323 = !DILocation(line: 118, column: 3, scope: !100)
!324 = !DILocation(line: 0, scope: !103)
!325 = !DILocation(line: 119, column: 1, scope: !83)
!326 = !DISubprogram(name: "gsl_error", scope: !22, file: !22, line: 77, type: !327, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!327 = !DISubroutineType(types: !328)
!328 = !{null, !329, !329, !23, !23}
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!330 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!331 = !DISubprogram(name: "gsl_sf_bessel_sin_pi4_e", scope: !332, file: !332, line: 92, type: !333, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!332 = !DIFile(filename: "./bessel.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "57b96fff5bee18a41e1173dbca5404a0")
!333 = !DISubroutineType(types: !334)
!334 = !{!23, !69, !69, !87}
!335 = distinct !DISubprogram(name: "gsl_sf_bessel_J1", scope: !2, file: !2, line: 125, type: !336, scopeLine: 126, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !338)
!336 = !DISubroutineType(types: !337)
!337 = !{!69, !86}
!338 = !{!339, !340, !341}
!339 = !DILocalVariable(name: "x", arg: 1, scope: !335, file: !2, line: 125, type: !86)
!340 = !DILocalVariable(name: "result", scope: !335, file: !2, line: 127, type: !88)
!341 = !DILocalVariable(name: "status", scope: !335, file: !2, line: 127, type: !23)
!342 = distinct !DIAssignID()
!343 = !DILocation(line: 0, scope: !335)
!344 = !DILocation(line: 127, column: 3, scope: !335)
!345 = !DILocation(line: 127, column: 3, scope: !346)
!346 = distinct !DILexicalBlock(scope: !335, file: !2, line: 127, column: 3)
!347 = !DILocation(line: 127, column: 3, scope: !348)
!348 = distinct !DILexicalBlock(scope: !349, file: !2, line: 127, column: 3)
!349 = distinct !DILexicalBlock(scope: !346, file: !2, line: 127, column: 3)
!350 = !DILocation(line: 128, column: 1, scope: !335)
