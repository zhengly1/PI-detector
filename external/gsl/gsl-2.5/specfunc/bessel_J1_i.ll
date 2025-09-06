; ModuleID = 'bessel_J1.ll'
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
  br label %164, !dbg !123

7:                                                ; preds = %2
  %8 = fcmp olt double %4, 0x20000000000000, !dbg !124
  br i1 %8, label %9, label %11, !dbg !125

9:                                                ; preds = %7
  store double 0.000000e+00, ptr %1, align 8, !dbg !126, !tbaa !129
  %10 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !126
  store double 0x10000000000000, ptr %10, align 8, !dbg !126, !tbaa !134
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 86, i32 noundef 15) #5, !dbg !135
  br label %164, !dbg !135

11:                                               ; preds = %7
  %12 = fcmp olt double %4, 0x3E66A09E667F3BCD, !dbg !137
  br i1 %12, label %13, label %16, !dbg !138

13:                                               ; preds = %11
  %14 = fmul double %0, 5.000000e-01, !dbg !139
  store double %14, ptr %1, align 8, !dbg !141, !tbaa !129
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !142
  store double 0.000000e+00, ptr %15, align 8, !dbg !143, !tbaa !134
  br label %164, !dbg !144

16:                                               ; preds = %11
  %17 = fcmp olt double %4, 4.000000e+00, !dbg !145
  br i1 %17, label %18, label %46, !dbg !146

18:                                               ; preds = %16
  %19 = fmul double %4, 1.250000e-01, !dbg !147
  %20 = fmul double %4, %19, !dbg !148
  %handler_result = call double @fAddHandlerDouble(double %20, double -1.000000e+00), !dbg !149
  call void @llvm.dbg.value(metadata !173, metadata !157, metadata !DIExpression()), !dbg !174
  call void @llvm.dbg.value(metadata double %handler_result, metadata !158, metadata !DIExpression()), !dbg !174
  call void @llvm.dbg.value(metadata ptr undef, metadata !159, metadata !DIExpression()), !dbg !174
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !161, metadata !DIExpression()), !dbg !174
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !162, metadata !DIExpression()), !dbg !174
  %21 = fmul double %handler_result, 2.000000e+00, !dbg !149
  %handler_result1 = call double @fAddHandlerDouble(double %21, double 1.000000e+00), !dbg !175
  %handler_result2 = call double @fAddHandlerDouble(double %handler_result1, double -1.000000e+00), !dbg !176
  %22 = fmul double %handler_result2, 5.000000e-01, !dbg !176
  call void @llvm.dbg.value(metadata double %22, metadata !163, metadata !DIExpression()), !dbg !174
  %23 = fmul double %22, 2.000000e+00, !dbg !177
  call void @llvm.dbg.value(metadata double %23, metadata !164, metadata !DIExpression()), !dbg !174
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !165, metadata !DIExpression()), !dbg !174
  call void @llvm.dbg.value(metadata i32 11, metadata !160, metadata !DIExpression()), !dbg !174
  br label %24, !dbg !178

24:                                               ; preds = %24, %18
  %25 = phi i64 [ 11, %18 ], [ %35, %24 ]
  %26 = phi double [ 0.000000e+00, %18 ], [ %handler_result4, %24 ]
  %27 = phi double [ 0.000000e+00, %18 ], [ %handler_result7, %24 ]
  %28 = phi double [ 0.000000e+00, %18 ], [ %26, %24 ]
  call void @llvm.dbg.value(metadata i64 %25, metadata !160, metadata !DIExpression()), !dbg !174
  call void @llvm.dbg.value(metadata double %26, metadata !161, metadata !DIExpression()), !dbg !174
  call void @llvm.dbg.value(metadata double %27, metadata !165, metadata !DIExpression()), !dbg !174
  call void @llvm.dbg.value(metadata double %28, metadata !162, metadata !DIExpression()), !dbg !174
  call void @llvm.dbg.value(metadata double %26, metadata !166, metadata !DIExpression()), !dbg !179
  %29 = fmul double %23, %26, !dbg !180
  %handler_result3 = call double @fSubHandlerDouble(double %29, double %28), !dbg !181
  %30 = getelementptr inbounds double, ptr @bj1_data, i64 %25, !dbg !181
  %31 = load double, ptr %30, align 8, !dbg !181, !tbaa !182
  %handler_result4 = call double @fAddHandlerDouble(double %handler_result3, double %31), !dbg !183
  call void @llvm.dbg.value(metadata double %handler_result4, metadata !161, metadata !DIExpression()), !dbg !174
  %32 = tail call double @llvm.fabs.f64(double %29), !dbg !183
  %33 = tail call double @llvm.fabs.f64(double %28), !dbg !184
  %handler_result5 = call double @fAddHandlerDouble(double %32, double %33), !dbg !185
  %34 = tail call double @llvm.fabs.f64(double %31), !dbg !185
  %handler_result6 = call double @fAddHandlerDouble(double %handler_result5, double %34), !dbg !186
  %handler_result7 = call double @fAddHandlerDouble(double %27, double %handler_result6), !dbg !187
  call void @llvm.dbg.value(metadata double %handler_result7, metadata !165, metadata !DIExpression()), !dbg !174
  call void @llvm.dbg.value(metadata double %26, metadata !162, metadata !DIExpression()), !dbg !174
  %35 = add nsw i64 %25, -1, !dbg !187
  call void @llvm.dbg.value(metadata i64 %35, metadata !160, metadata !DIExpression()), !dbg !174
  %36 = icmp ugt i64 %25, 1, !dbg !188
  br i1 %36, label %24, label %37, !dbg !178, !llvm.loop !189

37:                                               ; preds = %24
  call void @llvm.dbg.value(metadata double %handler_result4, metadata !170, metadata !DIExpression()), !dbg !192
  %38 = fmul double %22, %handler_result4, !dbg !193
  %handler_result8 = call double @fSubHandlerDouble(double %38, double %26), !dbg !194
  %handler_result9 = call double @fAddHandlerDouble(double %handler_result8, double 0xBFAE04D817149007), !dbg !195
  call void @llvm.dbg.value(metadata double %handler_result9, metadata !161, metadata !DIExpression()), !dbg !174
  %39 = tail call double @llvm.fabs.f64(double %38), !dbg !195
  %40 = tail call double @llvm.fabs.f64(double %26), !dbg !196
  %handler_result10 = call double @fAddHandlerDouble(double %40, double %39), !dbg !197
  %handler_result11 = call double @fAddHandlerDouble(double %handler_result10, double 0x3FAE04D817149007), !dbg !198
  %handler_result12 = call double @fAddHandlerDouble(double %handler_result7, double %handler_result11), !dbg !199
  call void @llvm.dbg.value(metadata double %handler_result12, metadata !165, metadata !DIExpression()), !dbg !174
  tail call void @llvm.dbg.value(metadata double %handler_result9, metadata !98, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !200
  %41 = fmul double %handler_result12, 0x3CB0000000000000, !dbg !199
  %handler_result13 = call double @fAddHandlerDouble(double %41, double 4.400000e-17), !dbg !201
  tail call void @llvm.dbg.value(metadata double %handler_result13, metadata !98, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !200
  %handler_result14 = call double @fAddHandlerDouble(double %handler_result9, double 2.500000e-01), !dbg !202
  %42 = fmul double %handler_result14, %0, !dbg !202
  store double %42, ptr %1, align 8, !dbg !203, !tbaa !129
  %43 = fmul double %handler_result13, %0, !dbg !204
  %44 = tail call double @llvm.fabs.f64(double %43), !dbg !205
  %45 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !206
  store double %44, ptr %45, align 8, !dbg !207, !tbaa !134
  br label %164

46:                                               ; preds = %16
  %47 = fmul double %0, %0, !dbg !208
  %48 = fdiv double 3.200000e+01, %47, !dbg !209
  %handler_result15 = call double @fAddHandlerDouble(double %48, double -1.000000e+00), !dbg !210
  tail call void @llvm.dbg.value(metadata double %handler_result15, metadata !104, metadata !DIExpression()), !dbg !116
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #5, !dbg !210
  call void @llvm.dbg.value(metadata ptr @_gsl_sf_bessel_amp_phase_bm1_cs, metadata !157, metadata !DIExpression()), !dbg !211
  call void @llvm.dbg.value(metadata double %handler_result15, metadata !158, metadata !DIExpression()), !dbg !211
  call void @llvm.dbg.value(metadata ptr undef, metadata !159, metadata !DIExpression()), !dbg !211
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !161, metadata !DIExpression()), !dbg !211
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !162, metadata !DIExpression()), !dbg !211
  %49 = fmul double %handler_result15, 2.000000e+00, !dbg !213
  %50 = load double, ptr getelementptr inbounds (%struct.cheb_series_struct, ptr @_gsl_sf_bessel_amp_phase_bm1_cs, i64 0, i32 2), align 8, !dbg !214, !tbaa !215
  %handler_result16 = call double @fSubHandlerDouble(double %49, double %50), !dbg !219
  %51 = load double, ptr getelementptr inbounds (%struct.cheb_series_struct, ptr @_gsl_sf_bessel_amp_phase_bm1_cs, i64 0, i32 3), align 8, !dbg !219, !tbaa !220
  %handler_result17 = call double @fSubHandlerDouble(double %handler_result16, double %51), !dbg !221
  %handler_result18 = call double @fSubHandlerDouble(double %51, double %50), !dbg !222
  %52 = fdiv double %handler_result17, %handler_result18, !dbg !222
  call void @llvm.dbg.value(metadata double %52, metadata !163, metadata !DIExpression()), !dbg !211
  %53 = fmul double %52, 2.000000e+00, !dbg !223
  call void @llvm.dbg.value(metadata double %53, metadata !164, metadata !DIExpression()), !dbg !211
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !165, metadata !DIExpression()), !dbg !211
  %54 = load i32, ptr getelementptr inbounds (%struct.cheb_series_struct, ptr @_gsl_sf_bessel_amp_phase_bm1_cs, i64 0, i32 1), align 8, !dbg !224, !tbaa !225
  call void @llvm.dbg.value(metadata i32 %54, metadata !160, metadata !DIExpression()), !dbg !211
  %55 = icmp sgt i32 %54, 0, !dbg !226
  %56 = load ptr, ptr @_gsl_sf_bessel_amp_phase_bm1_cs, align 8, !dbg !227, !tbaa !228
  br i1 %55, label %57, label %72, !dbg !229

57:                                               ; preds = %46
  %58 = zext nneg i32 %54 to i64, !dbg !229
  br label %59, !dbg !229

59:                                               ; preds = %59, %57
  %60 = phi i64 [ %58, %57 ], [ %70, %59 ]
  %61 = phi double [ 0.000000e+00, %57 ], [ %handler_result20, %59 ]
  %62 = phi double [ 0.000000e+00, %57 ], [ %handler_result23, %59 ]
  %63 = phi double [ 0.000000e+00, %57 ], [ %61, %59 ]
  call void @llvm.dbg.value(metadata i64 %60, metadata !160, metadata !DIExpression()), !dbg !211
  call void @llvm.dbg.value(metadata double %61, metadata !161, metadata !DIExpression()), !dbg !211
  call void @llvm.dbg.value(metadata double %62, metadata !165, metadata !DIExpression()), !dbg !211
  call void @llvm.dbg.value(metadata double %63, metadata !162, metadata !DIExpression()), !dbg !211
  call void @llvm.dbg.value(metadata double %61, metadata !166, metadata !DIExpression()), !dbg !230
  %64 = fmul double %53, %61, !dbg !231
  %handler_result19 = call double @fSubHandlerDouble(double %64, double %63), !dbg !232
  %65 = getelementptr inbounds double, ptr %56, i64 %60, !dbg !232
  %66 = load double, ptr %65, align 8, !dbg !232, !tbaa !182
  %handler_result20 = call double @fAddHandlerDouble(double %handler_result19, double %66), !dbg !233
  call void @llvm.dbg.value(metadata double %handler_result20, metadata !161, metadata !DIExpression()), !dbg !211
  %67 = tail call double @llvm.fabs.f64(double %64), !dbg !233
  %68 = tail call double @llvm.fabs.f64(double %63), !dbg !234
  %handler_result21 = call double @fAddHandlerDouble(double %67, double %68), !dbg !235
  %69 = tail call double @llvm.fabs.f64(double %66), !dbg !235
  %handler_result22 = call double @fAddHandlerDouble(double %handler_result21, double %69), !dbg !236
  %handler_result23 = call double @fAddHandlerDouble(double %62, double %handler_result22), !dbg !237
  call void @llvm.dbg.value(metadata double %handler_result23, metadata !165, metadata !DIExpression()), !dbg !211
  call void @llvm.dbg.value(metadata double %61, metadata !162, metadata !DIExpression()), !dbg !211
  %70 = add nsw i64 %60, -1, !dbg !237
  call void @llvm.dbg.value(metadata i64 %70, metadata !160, metadata !DIExpression()), !dbg !211
  %71 = icmp ugt i64 %60, 1, !dbg !226
  br i1 %71, label %59, label %72, !dbg !229, !llvm.loop !238

72:                                               ; preds = %59, %46
  %73 = phi double [ 0.000000e+00, %46 ], [ %61, %59 ], !dbg !211
  %74 = phi double [ 0.000000e+00, %46 ], [ %handler_result23, %59 ], !dbg !211
  %75 = phi double [ 0.000000e+00, %46 ], [ %handler_result20, %59 ], !dbg !211
  call void @llvm.dbg.value(metadata double %75, metadata !170, metadata !DIExpression()), !dbg !240
  %76 = fmul double %52, %75, !dbg !241
  %handler_result24 = call double @fSubHandlerDouble(double %76, double %73), !dbg !242
  %77 = load double, ptr %56, align 8, !dbg !242, !tbaa !182
  %78 = fmul double %77, 5.000000e-01, !dbg !243
  %handler_result25 = call double @fAddHandlerDouble(double %handler_result24, double %78), !dbg !244
  call void @llvm.dbg.value(metadata double %handler_result25, metadata !161, metadata !DIExpression()), !dbg !211
  %79 = tail call double @llvm.fabs.f64(double %76), !dbg !244
  %80 = tail call double @llvm.fabs.f64(double %73), !dbg !245
  %handler_result26 = call double @fAddHandlerDouble(double %80, double %79), !dbg !246
  %81 = tail call double @llvm.fabs.f64(double %77), !dbg !246
  %82 = fmul double %81, 5.000000e-01, !dbg !247
  %handler_result27 = call double @fAddHandlerDouble(double %handler_result26, double %82), !dbg !248
  %handler_result28 = call double @fAddHandlerDouble(double %74, double %handler_result27), !dbg !249
  call void @llvm.dbg.value(metadata double %handler_result28, metadata !165, metadata !DIExpression()), !dbg !211
  tail call void @llvm.dbg.value(metadata double %handler_result25, metadata !106, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !116
  %83 = fmul double %handler_result28, 0x3CB0000000000000, !dbg !249
  %84 = sext i32 %54 to i64, !dbg !250
  %85 = getelementptr inbounds double, ptr %56, i64 %84, !dbg !250
  %86 = load double, ptr %85, align 8, !dbg !250, !tbaa !182
  %87 = tail call double @llvm.fabs.f64(double %86), !dbg !251
  %handler_result29 = call double @fAddHandlerDouble(double %87, double %83), !dbg !252
  tail call void @llvm.dbg.value(metadata double %handler_result29, metadata !106, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !116
  tail call void @llvm.dbg.value(metadata i32 0, metadata !109, metadata !DIExpression()), !dbg !116
  call void @llvm.dbg.value(metadata ptr @_gsl_sf_bessel_amp_phase_bth1_cs, metadata !157, metadata !DIExpression()), !dbg !254
  call void @llvm.dbg.value(metadata double %handler_result15, metadata !158, metadata !DIExpression()), !dbg !254
  call void @llvm.dbg.value(metadata ptr undef, metadata !159, metadata !DIExpression()), !dbg !254
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !161, metadata !DIExpression()), !dbg !254
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !162, metadata !DIExpression()), !dbg !254
  %88 = load double, ptr getelementptr inbounds (%struct.cheb_series_struct, ptr @_gsl_sf_bessel_amp_phase_bth1_cs, i64 0, i32 2), align 8, !dbg !252, !tbaa !215
  %handler_result30 = call double @fSubHandlerDouble(double %49, double %88), !dbg !255
  %89 = load double, ptr getelementptr inbounds (%struct.cheb_series_struct, ptr @_gsl_sf_bessel_amp_phase_bth1_cs, i64 0, i32 3), align 8, !dbg !255, !tbaa !220
  %handler_result31 = call double @fSubHandlerDouble(double %handler_result30, double %89), !dbg !256
  %handler_result32 = call double @fSubHandlerDouble(double %89, double %88), !dbg !257
  %90 = fdiv double %handler_result31, %handler_result32, !dbg !257
  call void @llvm.dbg.value(metadata double %90, metadata !163, metadata !DIExpression()), !dbg !254
  %91 = fmul double %90, 2.000000e+00, !dbg !258
  call void @llvm.dbg.value(metadata double %91, metadata !164, metadata !DIExpression()), !dbg !254
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !165, metadata !DIExpression()), !dbg !254
  %92 = load i32, ptr getelementptr inbounds (%struct.cheb_series_struct, ptr @_gsl_sf_bessel_amp_phase_bth1_cs, i64 0, i32 1), align 8, !dbg !259, !tbaa !225
  call void @llvm.dbg.value(metadata i32 %92, metadata !160, metadata !DIExpression()), !dbg !254
  %93 = icmp sgt i32 %92, 0, !dbg !260
  %94 = load ptr, ptr @_gsl_sf_bessel_amp_phase_bth1_cs, align 8, !dbg !261, !tbaa !228
  br i1 %93, label %95, label %139, !dbg !262

95:                                               ; preds = %72
  %96 = zext nneg i32 %92 to i64, !dbg !262
  %97 = and i64 %96, 3, !dbg !262
  %98 = icmp eq i64 %97, 0, !dbg !262
  br i1 %98, label %110, label %99, !dbg !262

99:                                               ; preds = %99, %95
  %100 = phi i64 [ %107, %99 ], [ %96, %95 ]
  %101 = phi double [ %handler_result34, %99 ], [ 0.000000e+00, %95 ]
  %102 = phi double [ %101, %99 ], [ 0.000000e+00, %95 ]
  %103 = phi i64 [ %108, %99 ], [ 0, %95 ]
  call void @llvm.dbg.value(metadata i64 %100, metadata !160, metadata !DIExpression()), !dbg !254
  call void @llvm.dbg.value(metadata double %101, metadata !161, metadata !DIExpression()), !dbg !254
  call void @llvm.dbg.value(metadata double poison, metadata !165, metadata !DIExpression()), !dbg !254
  call void @llvm.dbg.value(metadata double %102, metadata !162, metadata !DIExpression()), !dbg !254
  call void @llvm.dbg.value(metadata double %101, metadata !166, metadata !DIExpression()), !dbg !263
  %104 = fmul double %91, %101, !dbg !264
  %handler_result33 = call double @fSubHandlerDouble(double %104, double %102), !dbg !265
  %105 = getelementptr inbounds double, ptr %94, i64 %100, !dbg !265
  %106 = load double, ptr %105, align 8, !dbg !265, !tbaa !182
  %handler_result34 = call double @fAddHandlerDouble(double %handler_result33, double %106), !dbg !266
  call void @llvm.dbg.value(metadata double %handler_result34, metadata !161, metadata !DIExpression()), !dbg !254
  call void @llvm.dbg.value(metadata double %101, metadata !162, metadata !DIExpression()), !dbg !254
  %107 = add nsw i64 %100, -1, !dbg !266
  call void @llvm.dbg.value(metadata i64 %107, metadata !160, metadata !DIExpression()), !dbg !254
  %108 = add i64 %103, 1, !dbg !262
  %109 = icmp eq i64 %108, %97, !dbg !262
  br i1 %109, label %110, label %99, !dbg !262, !llvm.loop !267

110:                                              ; preds = %99, %95
  %111 = phi i64 [ %96, %95 ], [ %107, %99 ]
  %112 = phi double [ 0.000000e+00, %95 ], [ %handler_result34, %99 ]
  %113 = phi double [ 0.000000e+00, %95 ], [ %101, %99 ]
  %114 = phi double [ undef, %95 ], [ %101, %99 ]
  %115 = phi double [ undef, %95 ], [ %handler_result34, %99 ]
  %116 = icmp ult i32 %92, 4, !dbg !262
  br i1 %116, label %139, label %117, !dbg !262

117:                                              ; preds = %110
  %118 = getelementptr double, ptr %94, i64 -1, !dbg !262
  %119 = getelementptr double, ptr %94, i64 -2, !dbg !262
  br label %120, !dbg !262

120:                                              ; preds = %120, %117
  %121 = phi i64 [ %111, %117 ], [ %137, %120 ]
  %122 = phi double [ %112, %117 ], [ %handler_result42, %120 ]
  %123 = phi double [ %113, %117 ], [ %handler_result40, %120 ]
  call void @llvm.dbg.value(metadata i64 %121, metadata !160, metadata !DIExpression()), !dbg !254
  call void @llvm.dbg.value(metadata double %122, metadata !161, metadata !DIExpression()), !dbg !254
  call void @llvm.dbg.value(metadata double poison, metadata !165, metadata !DIExpression()), !dbg !254
  call void @llvm.dbg.value(metadata double %123, metadata !162, metadata !DIExpression()), !dbg !254
  call void @llvm.dbg.value(metadata double %122, metadata !166, metadata !DIExpression()), !dbg !263
  %124 = fmul double %91, %122, !dbg !264
  %handler_result35 = call double @fSubHandlerDouble(double %124, double %123), !dbg !265
  %125 = getelementptr inbounds double, ptr %94, i64 %121, !dbg !265
  %126 = load double, ptr %125, align 8, !dbg !265, !tbaa !182
  %handler_result36 = call double @fAddHandlerDouble(double %handler_result35, double %126), !dbg !264
  call void @llvm.dbg.value(metadata double %handler_result36, metadata !161, metadata !DIExpression()), !dbg !254
  call void @llvm.dbg.value(metadata double %122, metadata !162, metadata !DIExpression()), !dbg !254
  call void @llvm.dbg.value(metadata i64 %121, metadata !160, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !254
  call void @llvm.dbg.value(metadata i64 %121, metadata !160, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !254
  call void @llvm.dbg.value(metadata double %handler_result36, metadata !161, metadata !DIExpression()), !dbg !254
  call void @llvm.dbg.value(metadata double poison, metadata !165, metadata !DIExpression()), !dbg !254
  call void @llvm.dbg.value(metadata double %122, metadata !162, metadata !DIExpression()), !dbg !254
  call void @llvm.dbg.value(metadata double %handler_result36, metadata !166, metadata !DIExpression()), !dbg !263
  %127 = fmul double %91, %handler_result36, !dbg !264
  %handler_result37 = call double @fSubHandlerDouble(double %127, double %122), !dbg !265
  %128 = getelementptr double, ptr %118, i64 %121, !dbg !265
  %129 = load double, ptr %128, align 8, !dbg !265, !tbaa !182
  %handler_result38 = call double @fAddHandlerDouble(double %handler_result37, double %129), !dbg !264
  call void @llvm.dbg.value(metadata double %handler_result38, metadata !161, metadata !DIExpression()), !dbg !254
  call void @llvm.dbg.value(metadata double %handler_result36, metadata !162, metadata !DIExpression()), !dbg !254
  call void @llvm.dbg.value(metadata i64 %121, metadata !160, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !254
  call void @llvm.dbg.value(metadata i64 %121, metadata !160, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !254
  call void @llvm.dbg.value(metadata double %handler_result38, metadata !161, metadata !DIExpression()), !dbg !254
  call void @llvm.dbg.value(metadata double poison, metadata !165, metadata !DIExpression()), !dbg !254
  call void @llvm.dbg.value(metadata double %handler_result36, metadata !162, metadata !DIExpression()), !dbg !254
  call void @llvm.dbg.value(metadata double %handler_result38, metadata !166, metadata !DIExpression()), !dbg !263
  %130 = fmul double %91, %handler_result38, !dbg !264
  %handler_result39 = call double @fSubHandlerDouble(double %130, double %handler_result36), !dbg !265
  %131 = getelementptr double, ptr %119, i64 %121, !dbg !265
  %132 = load double, ptr %131, align 8, !dbg !265, !tbaa !182
  %handler_result40 = call double @fAddHandlerDouble(double %handler_result39, double %132), !dbg !266
  call void @llvm.dbg.value(metadata double %handler_result40, metadata !161, metadata !DIExpression()), !dbg !254
  call void @llvm.dbg.value(metadata double %handler_result38, metadata !162, metadata !DIExpression()), !dbg !254
  %133 = add nsw i64 %121, -3, !dbg !266
  call void @llvm.dbg.value(metadata i64 %133, metadata !160, metadata !DIExpression()), !dbg !254
  call void @llvm.dbg.value(metadata i64 %133, metadata !160, metadata !DIExpression()), !dbg !254
  call void @llvm.dbg.value(metadata double %handler_result40, metadata !161, metadata !DIExpression()), !dbg !254
  call void @llvm.dbg.value(metadata double poison, metadata !165, metadata !DIExpression()), !dbg !254
  call void @llvm.dbg.value(metadata double %handler_result38, metadata !162, metadata !DIExpression()), !dbg !254
  call void @llvm.dbg.value(metadata double %handler_result40, metadata !166, metadata !DIExpression()), !dbg !263
  %134 = fmul double %91, %handler_result40, !dbg !264
  %handler_result41 = call double @fSubHandlerDouble(double %134, double %handler_result38), !dbg !265
  %135 = getelementptr inbounds double, ptr %94, i64 %133, !dbg !265
  %136 = load double, ptr %135, align 8, !dbg !265, !tbaa !182
  %handler_result42 = call double @fAddHandlerDouble(double %handler_result41, double %136), !dbg !266
  call void @llvm.dbg.value(metadata double %handler_result42, metadata !161, metadata !DIExpression()), !dbg !254
  call void @llvm.dbg.value(metadata double %handler_result40, metadata !162, metadata !DIExpression()), !dbg !254
  %137 = add nsw i64 %121, -4, !dbg !266
  call void @llvm.dbg.value(metadata i64 %137, metadata !160, metadata !DIExpression()), !dbg !254
  %138 = icmp ugt i64 %133, 1, !dbg !260
  br i1 %138, label %120, label %139, !dbg !262, !llvm.loop !269

139:                                              ; preds = %120, %110, %72
  %140 = phi double [ 0.000000e+00, %72 ], [ %114, %110 ], [ %handler_result40, %120 ], !dbg !254
  %141 = phi double [ 0.000000e+00, %72 ], [ %115, %110 ], [ %handler_result42, %120 ], !dbg !254
  call void @llvm.dbg.value(metadata double %141, metadata !170, metadata !DIExpression()), !dbg !271
  %142 = fmul double %90, %141, !dbg !272
  %handler_result43 = call double @fSubHandlerDouble(double %142, double %140), !dbg !273
  %143 = load double, ptr %94, align 8, !dbg !273, !tbaa !182
  %144 = fmul double %143, 5.000000e-01, !dbg !274
  %handler_result44 = call double @fAddHandlerDouble(double %handler_result43, double %144), !dbg !275
  call void @llvm.dbg.value(metadata double %handler_result44, metadata !161, metadata !DIExpression()), !dbg !254
  call void @llvm.dbg.value(metadata double poison, metadata !165, metadata !DIExpression()), !dbg !254
  tail call void @llvm.dbg.value(metadata double %handler_result44, metadata !107, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !116
  tail call void @llvm.dbg.value(metadata double poison, metadata !107, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !116
  tail call void @llvm.dbg.value(metadata i32 0, metadata !111, metadata !DIExpression()), !dbg !116
  %145 = fdiv double %handler_result44, %4, !dbg !275
  %146 = call i32 @gsl_sf_bessel_sin_pi4_e(double noundef %4, double noundef %145, ptr noundef nonnull %3) #5, !dbg !276
  tail call void @llvm.dbg.value(metadata i32 %146, metadata !112, metadata !DIExpression()), !dbg !116
  %147 = call double @llvm.sqrt.f64(double %4), !dbg !277
  tail call void @llvm.dbg.value(metadata double %147, metadata !113, metadata !DIExpression()), !dbg !116
  %handler_result45 = call double @fAddHandlerDouble(double %handler_result25, double 7.500000e-01), !dbg !278
  %148 = fdiv double %handler_result45, %147, !dbg !278
  tail call void @llvm.dbg.value(metadata double %148, metadata !114, metadata !DIExpression()), !dbg !116
  %149 = fcmp olt double %0, 0.000000e+00, !dbg !279
  %150 = fneg double %148, !dbg !280
  %151 = select i1 %149, double %150, double %148, !dbg !280
  %152 = load double, ptr %3, align 8, !dbg !281, !tbaa !129
  %153 = fmul double %151, %152, !dbg !282
  store double %153, ptr %1, align 8, !dbg !283, !tbaa !129
  %154 = call double @llvm.fabs.f64(double %152), !dbg !284
  %155 = fmul double %handler_result29, %154, !dbg !285
  %156 = fdiv double %155, %147, !dbg !286
  %157 = call double @llvm.fabs.f64(double %148), !dbg !287
  %158 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !288
  %159 = load double, ptr %158, align 8, !dbg !288, !tbaa !134
  %160 = fmul double %157, %159, !dbg !289
  %handler_result46 = call double @fAddHandlerDouble(double %156, double %160), !dbg !290
  %161 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !290
  %162 = call double @llvm.fabs.f64(double %153), !dbg !291
  %163 = fmul double %162, 0x3CB0000000000000, !dbg !292
  %handler_result47 = call double @fAddHandlerDouble(double %163, double %handler_result46), !dbg !293
  store double %handler_result47, ptr %161, align 8, !dbg !293, !tbaa !134
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #5, !dbg !294
  br label %164

164:                                              ; preds = %139, %37, %13, %9, %6
  %165 = phi i32 [ 0, %6 ], [ 15, %9 ], [ 0, %13 ], [ 0, %37 ], [ %146, %139 ], !dbg !295
  ret i32 %165, !dbg !296
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #2

declare !dbg !297 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare !dbg !302 i32 @gsl_sf_bessel_sin_pi4_e(double noundef, double noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_bessel_J1(double noundef %0) local_unnamed_addr #0 !dbg !306 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !313
  call void @llvm.dbg.assign(metadata i1 undef, metadata !311, metadata !DIExpression(), metadata !313, metadata ptr %2, metadata !DIExpression()), !dbg !314
  tail call void @llvm.dbg.value(metadata double %0, metadata !310, metadata !DIExpression()), !dbg !314
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #5, !dbg !315
  %3 = call i32 @gsl_sf_bessel_J1_e(double noundef %0, ptr noundef nonnull %2), !dbg !315
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !312, metadata !DIExpression()), !dbg !314
  %4 = icmp eq i32 %3, 0, !dbg !316
  br i1 %4, label %6, label %5, !dbg !315

5:                                                ; preds = %1
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 127, i32 noundef %3) #5, !dbg !318
  br label %6, !dbg !318

6:                                                ; preds = %5, %1
  %7 = load double, ptr %2, align 8, !dbg !315, !tbaa !129
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #5, !dbg !321
  ret double %7, !dbg !321
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

declare double @fAddHandlerDouble(double, double)

declare double @fSubHandlerDouble(double, double)

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind }

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
!149 = !DILocation(line: 11, column: 19, scope: !150, inlinedAt: !172)
!150 = distinct !DISubprogram(name: "cheb_eval_e", scope: !151, file: !151, line: 3, type: !152, scopeLine: 6, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !156)
!151 = !DIFile(filename: "./cheb_eval.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "540fdb014588703ccd0b3c3b3ea8a26b")
!152 = !DISubroutineType(types: !153)
!153 = !{!23, !154, !86, !87}
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !63)
!156 = !{!157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !170}
!157 = !DILocalVariable(name: "cs", arg: 1, scope: !150, file: !151, line: 3, type: !154)
!158 = !DILocalVariable(name: "x", arg: 2, scope: !150, file: !151, line: 4, type: !86)
!159 = !DILocalVariable(name: "result", arg: 3, scope: !150, file: !151, line: 5, type: !87)
!160 = !DILocalVariable(name: "j", scope: !150, file: !151, line: 7, type: !23)
!161 = !DILocalVariable(name: "d", scope: !150, file: !151, line: 8, type: !69)
!162 = !DILocalVariable(name: "dd", scope: !150, file: !151, line: 9, type: !69)
!163 = !DILocalVariable(name: "y", scope: !150, file: !151, line: 11, type: !69)
!164 = !DILocalVariable(name: "y2", scope: !150, file: !151, line: 12, type: !69)
!165 = !DILocalVariable(name: "e", scope: !150, file: !151, line: 14, type: !69)
!166 = !DILocalVariable(name: "temp", scope: !167, file: !151, line: 17, type: !69)
!167 = distinct !DILexicalBlock(scope: !168, file: !151, line: 16, column: 33)
!168 = distinct !DILexicalBlock(scope: !169, file: !151, line: 16, column: 3)
!169 = distinct !DILexicalBlock(scope: !150, file: !151, line: 16, column: 3)
!170 = !DILocalVariable(name: "temp", scope: !171, file: !151, line: 24, type: !69)
!171 = distinct !DILexicalBlock(scope: !150, file: !151, line: 23, column: 3)
!172 = distinct !DILocation(line: 95, column: 5, scope: !99)
!173 = !{}
!174 = !DILocation(line: 0, scope: !150, inlinedAt: !172)
!175 = !DILocation(line: 11, column: 30, scope: !150, inlinedAt: !172)
!176 = !DILocation(line: 11, column: 39, scope: !150, inlinedAt: !172)
!177 = !DILocation(line: 12, column: 19, scope: !150, inlinedAt: !172)
!178 = !DILocation(line: 16, column: 3, scope: !169, inlinedAt: !172)
!179 = !DILocation(line: 0, scope: !167, inlinedAt: !172)
!180 = !DILocation(line: 18, column: 11, scope: !167, inlinedAt: !172)
!181 = !DILocation(line: 18, column: 21, scope: !167, inlinedAt: !172)
!182 = !{!131, !131, i64 0}
!183 = !DILocation(line: 19, column: 10, scope: !167, inlinedAt: !172)
!184 = !DILocation(line: 19, column: 26, scope: !167, inlinedAt: !172)
!185 = !DILocation(line: 19, column: 37, scope: !167, inlinedAt: !172)
!186 = !DILocation(line: 19, column: 7, scope: !167, inlinedAt: !172)
!187 = !DILocation(line: 16, column: 29, scope: !168, inlinedAt: !172)
!188 = !DILocation(line: 16, column: 23, scope: !168, inlinedAt: !172)
!189 = distinct !{!189, !178, !190, !191}
!190 = !DILocation(line: 21, column: 3, scope: !169, inlinedAt: !172)
!191 = !{!"llvm.loop.mustprogress"}
!192 = !DILocation(line: 0, scope: !171, inlinedAt: !172)
!193 = !DILocation(line: 25, column: 10, scope: !171, inlinedAt: !172)
!194 = !DILocation(line: 25, column: 18, scope: !171, inlinedAt: !172)
!195 = !DILocation(line: 26, column: 10, scope: !171, inlinedAt: !172)
!196 = !DILocation(line: 26, column: 25, scope: !171, inlinedAt: !172)
!197 = !DILocation(line: 26, column: 34, scope: !171, inlinedAt: !172)
!198 = !DILocation(line: 26, column: 7, scope: !171, inlinedAt: !172)
!199 = !DILocation(line: 30, column: 33, scope: !150, inlinedAt: !172)
!200 = !DILocation(line: 0, scope: !99)
!201 = !DILocation(line: 96, column: 29, scope: !99)
!202 = !DILocation(line: 96, column: 21, scope: !99)
!203 = !DILocation(line: 96, column: 17, scope: !99)
!204 = !DILocation(line: 97, column: 26, scope: !99)
!205 = !DILocation(line: 97, column: 19, scope: !99)
!206 = !DILocation(line: 97, column: 13, scope: !99)
!207 = !DILocation(line: 97, column: 17, scope: !99)
!208 = !DILocation(line: 105, column: 30, scope: !105)
!209 = !DILocation(line: 105, column: 27, scope: !105)
!210 = !DILocation(line: 108, column: 5, scope: !105)
!211 = !DILocation(line: 0, scope: !150, inlinedAt: !212)
!212 = distinct !DILocation(line: 109, column: 25, scope: !105)
!213 = !DILocation(line: 11, column: 19, scope: !150, inlinedAt: !212)
!214 = !DILocation(line: 11, column: 28, scope: !150, inlinedAt: !212)
!215 = !{!216, !131, i64 16}
!216 = !{!"cheb_series_struct", !217, i64 0, !218, i64 8, !131, i64 16, !131, i64 24, !218, i64 32}
!217 = !{!"any pointer", !132, i64 0}
!218 = !{!"int", !132, i64 0}
!219 = !DILocation(line: 11, column: 36, scope: !150, inlinedAt: !212)
!220 = !{!216, !131, i64 24}
!221 = !DILocation(line: 11, column: 48, scope: !150, inlinedAt: !212)
!222 = !DILocation(line: 11, column: 39, scope: !150, inlinedAt: !212)
!223 = !DILocation(line: 12, column: 19, scope: !150, inlinedAt: !212)
!224 = !DILocation(line: 16, column: 15, scope: !169, inlinedAt: !212)
!225 = !{!216, !218, i64 8}
!226 = !DILocation(line: 16, column: 23, scope: !168, inlinedAt: !212)
!227 = !DILocation(line: 25, column: 30, scope: !171, inlinedAt: !212)
!228 = !{!216, !217, i64 0}
!229 = !DILocation(line: 16, column: 3, scope: !169, inlinedAt: !212)
!230 = !DILocation(line: 0, scope: !167, inlinedAt: !212)
!231 = !DILocation(line: 18, column: 11, scope: !167, inlinedAt: !212)
!232 = !DILocation(line: 18, column: 21, scope: !167, inlinedAt: !212)
!233 = !DILocation(line: 19, column: 10, scope: !167, inlinedAt: !212)
!234 = !DILocation(line: 19, column: 26, scope: !167, inlinedAt: !212)
!235 = !DILocation(line: 19, column: 37, scope: !167, inlinedAt: !212)
!236 = !DILocation(line: 19, column: 7, scope: !167, inlinedAt: !212)
!237 = !DILocation(line: 16, column: 29, scope: !168, inlinedAt: !212)
!238 = distinct !{!238, !229, !239, !191}
!239 = !DILocation(line: 21, column: 3, scope: !169, inlinedAt: !212)
!240 = !DILocation(line: 0, scope: !171, inlinedAt: !212)
!241 = !DILocation(line: 25, column: 10, scope: !171, inlinedAt: !212)
!242 = !DILocation(line: 25, column: 26, scope: !171, inlinedAt: !212)
!243 = !DILocation(line: 25, column: 24, scope: !171, inlinedAt: !212)
!244 = !DILocation(line: 26, column: 10, scope: !171, inlinedAt: !212)
!245 = !DILocation(line: 26, column: 25, scope: !171, inlinedAt: !212)
!246 = !DILocation(line: 26, column: 42, scope: !171, inlinedAt: !212)
!247 = !DILocation(line: 26, column: 40, scope: !171, inlinedAt: !212)
!248 = !DILocation(line: 26, column: 7, scope: !171, inlinedAt: !212)
!249 = !DILocation(line: 30, column: 33, scope: !150, inlinedAt: !212)
!250 = !DILocation(line: 30, column: 44, scope: !150, inlinedAt: !212)
!251 = !DILocation(line: 30, column: 39, scope: !150, inlinedAt: !212)
!252 = !DILocation(line: 11, column: 28, scope: !150, inlinedAt: !253)
!253 = distinct !DILocation(line: 110, column: 25, scope: !105)
!254 = !DILocation(line: 0, scope: !150, inlinedAt: !253)
!255 = !DILocation(line: 11, column: 36, scope: !150, inlinedAt: !253)
!256 = !DILocation(line: 11, column: 48, scope: !150, inlinedAt: !253)
!257 = !DILocation(line: 11, column: 39, scope: !150, inlinedAt: !253)
!258 = !DILocation(line: 12, column: 19, scope: !150, inlinedAt: !253)
!259 = !DILocation(line: 16, column: 15, scope: !169, inlinedAt: !253)
!260 = !DILocation(line: 16, column: 23, scope: !168, inlinedAt: !253)
!261 = !DILocation(line: 25, column: 30, scope: !171, inlinedAt: !253)
!262 = !DILocation(line: 16, column: 3, scope: !169, inlinedAt: !253)
!263 = !DILocation(line: 0, scope: !167, inlinedAt: !253)
!264 = !DILocation(line: 18, column: 11, scope: !167, inlinedAt: !253)
!265 = !DILocation(line: 18, column: 21, scope: !167, inlinedAt: !253)
!266 = !DILocation(line: 16, column: 29, scope: !168, inlinedAt: !253)
!267 = distinct !{!267, !268}
!268 = !{!"llvm.loop.unroll.disable"}
!269 = distinct !{!269, !262, !270, !191}
!270 = !DILocation(line: 21, column: 3, scope: !169, inlinedAt: !253)
!271 = !DILocation(line: 0, scope: !171, inlinedAt: !253)
!272 = !DILocation(line: 25, column: 10, scope: !171, inlinedAt: !253)
!273 = !DILocation(line: 25, column: 26, scope: !171, inlinedAt: !253)
!274 = !DILocation(line: 25, column: 24, scope: !171, inlinedAt: !253)
!275 = !DILocation(line: 111, column: 58, scope: !105)
!276 = !DILocation(line: 111, column: 25, scope: !105)
!277 = !DILocation(line: 112, column: 26, scope: !105)
!278 = !DILocation(line: 113, column: 42, scope: !105)
!279 = !DILocation(line: 114, column: 23, scope: !105)
!280 = !DILocation(line: 114, column: 21, scope: !105)
!281 = !DILocation(line: 114, column: 50, scope: !105)
!282 = !DILocation(line: 114, column: 45, scope: !105)
!283 = !DILocation(line: 114, column: 18, scope: !105)
!284 = !DILocation(line: 115, column: 20, scope: !105)
!285 = !DILocation(line: 115, column: 33, scope: !105)
!286 = !DILocation(line: 115, column: 41, scope: !105)
!287 = !DILocation(line: 115, column: 50, scope: !105)
!288 = !DILocation(line: 115, column: 66, scope: !105)
!289 = !DILocation(line: 115, column: 61, scope: !105)
!290 = !DILocation(line: 115, column: 13, scope: !105)
!291 = !DILocation(line: 116, column: 38, scope: !105)
!292 = !DILocation(line: 116, column: 36, scope: !105)
!293 = !DILocation(line: 116, column: 17, scope: !105)
!294 = !DILocation(line: 118, column: 3, scope: !100)
!295 = !DILocation(line: 0, scope: !103)
!296 = !DILocation(line: 119, column: 1, scope: !83)
!297 = !DISubprogram(name: "gsl_error", scope: !22, file: !22, line: 77, type: !298, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!298 = !DISubroutineType(types: !299)
!299 = !{null, !300, !300, !23, !23}
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!301 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!302 = !DISubprogram(name: "gsl_sf_bessel_sin_pi4_e", scope: !303, file: !303, line: 92, type: !304, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!303 = !DIFile(filename: "./bessel.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "57b96fff5bee18a41e1173dbca5404a0")
!304 = !DISubroutineType(types: !305)
!305 = !{!23, !69, !69, !87}
!306 = distinct !DISubprogram(name: "gsl_sf_bessel_J1", scope: !2, file: !2, line: 125, type: !307, scopeLine: 126, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !309)
!307 = !DISubroutineType(types: !308)
!308 = !{!69, !86}
!309 = !{!310, !311, !312}
!310 = !DILocalVariable(name: "x", arg: 1, scope: !306, file: !2, line: 125, type: !86)
!311 = !DILocalVariable(name: "result", scope: !306, file: !2, line: 127, type: !88)
!312 = !DILocalVariable(name: "status", scope: !306, file: !2, line: 127, type: !23)
!313 = distinct !DIAssignID()
!314 = !DILocation(line: 0, scope: !306)
!315 = !DILocation(line: 127, column: 3, scope: !306)
!316 = !DILocation(line: 127, column: 3, scope: !317)
!317 = distinct !DILexicalBlock(scope: !306, file: !2, line: 127, column: 3)
!318 = !DILocation(line: 127, column: 3, scope: !319)
!319 = distinct !DILexicalBlock(scope: !320, file: !2, line: 127, column: 3)
!320 = distinct !DILexicalBlock(scope: !317, file: !2, line: 127, column: 3)
!321 = !DILocation(line: 128, column: 1, scope: !306)
