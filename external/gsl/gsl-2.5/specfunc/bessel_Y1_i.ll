; ModuleID = 'bessel_Y1.ll'
source_filename = "bessel_Y1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.cheb_series_struct = type { ptr, i32, double, double, i32 }
%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [13 x i8] c"domain error\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [12 x i8] c"bessel_Y1.c\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [9 x i8] c"overflow\00", align 1, !dbg !12
@_gsl_sf_bessel_amp_phase_bm1_cs = external local_unnamed_addr constant %struct.cheb_series_struct, align 8
@_gsl_sf_bessel_amp_phase_bth1_cs = external local_unnamed_addr constant %struct.cheb_series_struct, align 8
@.str.3 = private unnamed_addr constant [10 x i8] c"underflow\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [31 x i8] c"gsl_sf_bessel_Y1_e(x, &result)\00", align 1, !dbg !22
@by1_data = internal unnamed_addr constant [14 x double] [double 0x3FA06CD9FB9F847D, double 0x3FF4340D323E0B7F, double 0x3F7A9FB43C91106F, double 0xBFB6E067A0080402, double 0x3F8B23472BECCDFB, double 0xBF4D6C2E436D54C7, double 0x3F031F67DD5645CB, double 0xBEB0CCDEC6C211DA, double 0x3E556A8C824FD81B, double 0xBDF4C63BB6371A5C, double 0x3D8FC0B912F66D88, double 0xBD23A1FFF8CFEC76, double 2.783800e-16, double -1.860000e-18], align 16, !dbg !27

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_bessel_Y1_e(double noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !95 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !139
  call void @llvm.dbg.assign(metadata i1 undef, metadata !118, metadata !DIExpression(), metadata !139, metadata ptr %3, metadata !DIExpression()), !dbg !140
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !141
  call void @llvm.dbg.assign(metadata i1 undef, metadata !125, metadata !DIExpression(), metadata !141, metadata ptr %4, metadata !DIExpression()), !dbg !142
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !143
  call void @llvm.dbg.assign(metadata i1 undef, metadata !132, metadata !DIExpression(), metadata !143, metadata ptr %5, metadata !DIExpression()), !dbg !144
  tail call void @llvm.dbg.value(metadata double %0, metadata !107, metadata !DIExpression()), !dbg !145
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !108, metadata !DIExpression()), !dbg !145
  tail call void @llvm.dbg.value(metadata double 0x3FE45F306DC9C883, metadata !109, metadata !DIExpression()), !dbg !145
  tail call void @llvm.dbg.value(metadata double 0x1922D0E5604189, metadata !110, metadata !DIExpression()), !dbg !145
  tail call void @llvm.dbg.value(metadata double 0x3E60000000000000, metadata !111, metadata !DIExpression()), !dbg !145
  tail call void @llvm.dbg.value(metadata double 0x4330000000000000, metadata !112, metadata !DIExpression()), !dbg !145
  %6 = fcmp ugt double %0, 0.000000e+00, !dbg !146
  br i1 %6, label %9, label %7, !dbg !147

7:                                                ; preds = %2
  store double 0x7FF8000000000000, ptr %1, align 8, !dbg !148, !tbaa !151
  %8 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !148
  store double 0x7FF8000000000000, ptr %8, align 8, !dbg !148, !tbaa !156
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 83, i32 noundef 1) #5, !dbg !157
  br label %208, !dbg !157

9:                                                ; preds = %2
  %10 = fcmp olt double %0, 0x1922D0E5604189, !dbg !159
  br i1 %10, label %11, label %13, !dbg !160

11:                                               ; preds = %9
  store double 0x7FF0000000000000, ptr %1, align 8, !dbg !161, !tbaa !151
  %12 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !161
  store double 0x7FF0000000000000, ptr %12, align 8, !dbg !161, !tbaa !156
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 86, i32 noundef 16) #5, !dbg !164
  br label %208, !dbg !164

13:                                               ; preds = %9
  %14 = fcmp olt double %0, 0x3E60000000000000, !dbg !166
  br i1 %14, label %15, label %48, !dbg !167

15:                                               ; preds = %13
  %16 = fmul double %0, 5.000000e-01, !dbg !168
  %handler_result66 = call double @callHandler(i32 12, double %16, double %16), !dbg !169
  tail call void @llvm.dbg.value(metadata double %handler_result66, metadata !113, metadata !DIExpression()), !dbg !140
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #5, !dbg !169
  %17 = call i32 @gsl_sf_bessel_J1_e(double noundef %0, ptr noundef nonnull %3) #5, !dbg !170
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !120, metadata !DIExpression()), !dbg !140
  call void @llvm.dbg.value(metadata !171, metadata !172, metadata !DIExpression()), !dbg !194
  call void @llvm.dbg.value(metadata double -1.000000e+00, metadata !180, metadata !DIExpression()), !dbg !194
  call void @llvm.dbg.value(metadata ptr undef, metadata !181, metadata !DIExpression()), !dbg !194
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !183, metadata !DIExpression()), !dbg !194
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !184, metadata !DIExpression()), !dbg !194
  call void @llvm.dbg.value(metadata double -1.000000e+00, metadata !185, metadata !DIExpression()), !dbg !194
  call void @llvm.dbg.value(metadata double -2.000000e+00, metadata !186, metadata !DIExpression()), !dbg !194
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !187, metadata !DIExpression()), !dbg !194
  call void @llvm.dbg.value(metadata i32 13, metadata !182, metadata !DIExpression()), !dbg !194
  br label %18, !dbg !196

18:                                               ; preds = %18, %15
  %19 = phi i64 [ 13, %15 ], [ %29, %18 ]
  %20 = phi double [ 0.000000e+00, %15 ], [ %handler_result1, %18 ]
  %21 = phi double [ 0.000000e+00, %15 ], [ %handler_result4, %18 ]
  %22 = phi double [ 0.000000e+00, %15 ], [ %20, %18 ]
  call void @llvm.dbg.value(metadata i64 %19, metadata !182, metadata !DIExpression()), !dbg !194
  call void @llvm.dbg.value(metadata double %20, metadata !183, metadata !DIExpression()), !dbg !194
  call void @llvm.dbg.value(metadata double %21, metadata !187, metadata !DIExpression()), !dbg !194
  call void @llvm.dbg.value(metadata double %22, metadata !184, metadata !DIExpression()), !dbg !194
  call void @llvm.dbg.value(metadata double %20, metadata !188, metadata !DIExpression()), !dbg !197
  %23 = fmul double %20, -2.000000e+00, !dbg !198
  %handler_result = call double @fSubHandlerDouble(double %23, double %22), !dbg !199
  %24 = getelementptr inbounds double, ptr @by1_data, i64 %19, !dbg !199
  %25 = load double, ptr %24, align 8, !dbg !199, !tbaa !200
  %handler_result1 = call double @fAddHandlerDouble(double %handler_result, double %25), !dbg !201
  call void @llvm.dbg.value(metadata double %handler_result1, metadata !183, metadata !DIExpression()), !dbg !194
  %26 = call double @llvm.fabs.f64(double %23), !dbg !201
  %27 = call double @llvm.fabs.f64(double %22), !dbg !202
  %handler_result2 = call double @fAddHandlerDouble(double %26, double %27), !dbg !203
  %28 = call double @llvm.fabs.f64(double %25), !dbg !203
  %handler_result3 = call double @fAddHandlerDouble(double %handler_result2, double %28), !dbg !204
  %handler_result4 = call double @fAddHandlerDouble(double %21, double %handler_result3), !dbg !205
  call void @llvm.dbg.value(metadata double %handler_result4, metadata !187, metadata !DIExpression()), !dbg !194
  call void @llvm.dbg.value(metadata double %20, metadata !184, metadata !DIExpression()), !dbg !194
  %29 = add nsw i64 %19, -1, !dbg !205
  call void @llvm.dbg.value(metadata i64 %29, metadata !182, metadata !DIExpression()), !dbg !194
  %30 = icmp ugt i64 %19, 1, !dbg !206
  br i1 %30, label %18, label %31, !dbg !196, !llvm.loop !207

31:                                               ; preds = %18
  %32 = fneg double %handler_result1, !dbg !210
  call void @llvm.dbg.value(metadata double %32, metadata !192, metadata !DIExpression()), !dbg !211
  %handler_result5 = call double @fSubHandlerDouble(double %32, double %20), !dbg !212
  %handler_result6 = call double @fAddHandlerDouble(double %handler_result5, double 0x3F906CD9FB9F847D), !dbg !213
  call void @llvm.dbg.value(metadata double %handler_result6, metadata !183, metadata !DIExpression()), !dbg !194
  %33 = call double @llvm.fabs.f64(double %32), !dbg !213
  %34 = call double @llvm.fabs.f64(double %20), !dbg !214
  %handler_result7 = call double @fAddHandlerDouble(double %34, double %33), !dbg !215
  %handler_result8 = call double @fAddHandlerDouble(double %handler_result7, double 0x3F906CD9FB9F847D), !dbg !216
  %handler_result9 = call double @fAddHandlerDouble(double %handler_result4, double %handler_result8), !dbg !217
  call void @llvm.dbg.value(metadata double %handler_result9, metadata !187, metadata !DIExpression()), !dbg !194
  tail call void @llvm.dbg.value(metadata double %handler_result6, metadata !119, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !140
  %35 = fmul double %handler_result9, 0x3CB0000000000000, !dbg !217
  %handler_result10 = call double @fAddHandlerDouble(double %35, double 1.860000e-18), !dbg !218
  tail call void @llvm.dbg.value(metadata double %handler_result10, metadata !119, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !140
  %36 = fmul double %handler_result66, 0x3FE45F306DC9C883, !dbg !218
  %37 = load double, ptr %3, align 8, !dbg !219, !tbaa !151
  %38 = fmul double %36, %37, !dbg !220
  %handler_result11 = call double @fAddHandlerDouble(double %handler_result6, double 5.000000e-01), !dbg !221
  %39 = fdiv double %handler_result11, %0, !dbg !221
  %handler_result12 = call double @fAddHandlerDouble(double %38, double %39), !dbg !222
  store double %handler_result12, ptr %1, align 8, !dbg !222, !tbaa !151
  %40 = call double @llvm.fabs.f64(double %handler_result66), !dbg !223
  %41 = fmul double %37, 0x3CB0000000000000, !dbg !224
  %42 = call double @llvm.fabs.f64(double %41), !dbg !225
  %43 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !226
  %44 = load double, ptr %43, align 8, !dbg !226, !tbaa !156
  %handler_result13 = call double @fAddHandlerDouble(double %42, double %44), !dbg !227
  %45 = fmul double %40, %handler_result13, !dbg !227
  %46 = fdiv double %handler_result10, %0, !dbg !228
  %handler_result14 = call double @fAddHandlerDouble(double %45, double %46), !dbg !229
  %47 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !229
  store double %handler_result14, ptr %47, align 8, !dbg !230, !tbaa !156
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #5, !dbg !231
  br label %208

48:                                               ; preds = %13
  %49 = fcmp olt double %0, 4.000000e+00, !dbg !232
  br i1 %49, label %50, label %88, !dbg !233

50:                                               ; preds = %48
  %51 = fmul double %0, 5.000000e-01, !dbg !234
  %handler_result67 = call double @callHandler(i32 12, double %51, double %51), !dbg !235
  tail call void @llvm.dbg.value(metadata double %handler_result67, metadata !121, metadata !DIExpression()), !dbg !142
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #5, !dbg !235
  %52 = fmul double %0, 1.250000e-01, !dbg !236
  %53 = fmul double %52, %0, !dbg !237
  %handler_result15 = call double @fAddHandlerDouble(double %53, double -1.000000e+00), !dbg !238
  call void @llvm.dbg.value(metadata !171, metadata !172, metadata !DIExpression()), !dbg !240
  call void @llvm.dbg.value(metadata double %handler_result15, metadata !180, metadata !DIExpression()), !dbg !240
  call void @llvm.dbg.value(metadata ptr undef, metadata !181, metadata !DIExpression()), !dbg !240
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !183, metadata !DIExpression()), !dbg !240
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !184, metadata !DIExpression()), !dbg !240
  %54 = fmul double %handler_result15, 2.000000e+00, !dbg !238
  %handler_result16 = call double @fAddHandlerDouble(double %54, double 1.000000e+00), !dbg !241
  %handler_result17 = call double @fAddHandlerDouble(double %handler_result16, double -1.000000e+00), !dbg !242
  %55 = fmul double %handler_result17, 5.000000e-01, !dbg !242
  call void @llvm.dbg.value(metadata double %55, metadata !185, metadata !DIExpression()), !dbg !240
  %56 = fmul double %55, 2.000000e+00, !dbg !243
  call void @llvm.dbg.value(metadata double %56, metadata !186, metadata !DIExpression()), !dbg !240
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !187, metadata !DIExpression()), !dbg !240
  call void @llvm.dbg.value(metadata i32 13, metadata !182, metadata !DIExpression()), !dbg !240
  br label %57, !dbg !244

57:                                               ; preds = %57, %50
  %58 = phi i64 [ 13, %50 ], [ %68, %57 ]
  %59 = phi double [ 0.000000e+00, %50 ], [ %handler_result19, %57 ]
  %60 = phi double [ 0.000000e+00, %50 ], [ %handler_result22, %57 ]
  %61 = phi double [ 0.000000e+00, %50 ], [ %59, %57 ]
  call void @llvm.dbg.value(metadata i64 %58, metadata !182, metadata !DIExpression()), !dbg !240
  call void @llvm.dbg.value(metadata double %59, metadata !183, metadata !DIExpression()), !dbg !240
  call void @llvm.dbg.value(metadata double %60, metadata !187, metadata !DIExpression()), !dbg !240
  call void @llvm.dbg.value(metadata double %61, metadata !184, metadata !DIExpression()), !dbg !240
  call void @llvm.dbg.value(metadata double %59, metadata !188, metadata !DIExpression()), !dbg !245
  %62 = fmul double %56, %59, !dbg !246
  %handler_result18 = call double @fSubHandlerDouble(double %62, double %61), !dbg !247
  %63 = getelementptr inbounds double, ptr @by1_data, i64 %58, !dbg !247
  %64 = load double, ptr %63, align 8, !dbg !247, !tbaa !200
  %handler_result19 = call double @fAddHandlerDouble(double %handler_result18, double %64), !dbg !248
  call void @llvm.dbg.value(metadata double %handler_result19, metadata !183, metadata !DIExpression()), !dbg !240
  %65 = tail call double @llvm.fabs.f64(double %62), !dbg !248
  %66 = tail call double @llvm.fabs.f64(double %61), !dbg !249
  %handler_result20 = call double @fAddHandlerDouble(double %65, double %66), !dbg !250
  %67 = tail call double @llvm.fabs.f64(double %64), !dbg !250
  %handler_result21 = call double @fAddHandlerDouble(double %handler_result20, double %67), !dbg !251
  %handler_result22 = call double @fAddHandlerDouble(double %60, double %handler_result21), !dbg !252
  call void @llvm.dbg.value(metadata double %handler_result22, metadata !187, metadata !DIExpression()), !dbg !240
  call void @llvm.dbg.value(metadata double %59, metadata !184, metadata !DIExpression()), !dbg !240
  %68 = add nsw i64 %58, -1, !dbg !252
  call void @llvm.dbg.value(metadata i64 %68, metadata !182, metadata !DIExpression()), !dbg !240
  %69 = icmp ugt i64 %58, 1, !dbg !253
  br i1 %69, label %57, label %70, !dbg !244, !llvm.loop !254

70:                                               ; preds = %57
  call void @llvm.dbg.value(metadata double %handler_result19, metadata !192, metadata !DIExpression()), !dbg !256
  %71 = fmul double %55, %handler_result19, !dbg !257
  %handler_result23 = call double @fSubHandlerDouble(double %71, double %59), !dbg !258
  %handler_result24 = call double @fAddHandlerDouble(double %handler_result23, double 0x3F906CD9FB9F847D), !dbg !259
  call void @llvm.dbg.value(metadata double %handler_result24, metadata !183, metadata !DIExpression()), !dbg !240
  %72 = tail call double @llvm.fabs.f64(double %71), !dbg !259
  %73 = tail call double @llvm.fabs.f64(double %59), !dbg !260
  %handler_result25 = call double @fAddHandlerDouble(double %73, double %72), !dbg !261
  %handler_result26 = call double @fAddHandlerDouble(double %handler_result25, double 0x3F906CD9FB9F847D), !dbg !262
  %handler_result27 = call double @fAddHandlerDouble(double %handler_result22, double %handler_result26), !dbg !263
  call void @llvm.dbg.value(metadata double %handler_result27, metadata !187, metadata !DIExpression()), !dbg !240
  tail call void @llvm.dbg.value(metadata double %handler_result24, metadata !126, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !142
  %74 = fmul double %handler_result27, 0x3CB0000000000000, !dbg !263
  %handler_result28 = call double @fAddHandlerDouble(double %74, double 1.860000e-18), !dbg !264
  tail call void @llvm.dbg.value(metadata double %handler_result28, metadata !126, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !142
  %75 = call i32 @gsl_sf_bessel_J1_e(double noundef %0, ptr noundef nonnull %4) #5, !dbg !264
  tail call void @llvm.dbg.value(metadata i32 %75, metadata !124, metadata !DIExpression()), !dbg !142
  %76 = fmul double %handler_result67, 0x3FE45F306DC9C883, !dbg !265
  %77 = load double, ptr %4, align 8, !dbg !266, !tbaa !151
  %78 = fmul double %76, %77, !dbg !267
  %handler_result29 = call double @fAddHandlerDouble(double %handler_result24, double 5.000000e-01), !dbg !268
  %79 = fdiv double %handler_result29, %0, !dbg !268
  %handler_result30 = call double @fAddHandlerDouble(double %78, double %79), !dbg !269
  store double %handler_result30, ptr %1, align 8, !dbg !269, !tbaa !151
  %80 = call double @llvm.fabs.f64(double %handler_result67), !dbg !270
  %81 = fmul double %77, 0x3CB0000000000000, !dbg !271
  %82 = call double @llvm.fabs.f64(double %81), !dbg !272
  %83 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !273
  %84 = load double, ptr %83, align 8, !dbg !273, !tbaa !156
  %handler_result31 = call double @fAddHandlerDouble(double %82, double %84), !dbg !274
  %85 = fmul double %80, %handler_result31, !dbg !274
  %86 = fdiv double %handler_result28, %0, !dbg !275
  %handler_result32 = call double @fAddHandlerDouble(double %85, double %86), !dbg !276
  %87 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !276
  store double %handler_result32, ptr %87, align 8, !dbg !277, !tbaa !156
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #5, !dbg !278
  br label %208

88:                                               ; preds = %48
  %89 = fcmp olt double %0, 0x4330000000000000, !dbg !279
  br i1 %89, label %90, label %206, !dbg !280

90:                                               ; preds = %88
  %91 = fmul double %0, %0, !dbg !281
  %92 = fdiv double 3.200000e+01, %91, !dbg !282
  %handler_result33 = call double @fAddHandlerDouble(double %92, double -1.000000e+00), !dbg !283
  tail call void @llvm.dbg.value(metadata double %handler_result33, metadata !127, metadata !DIExpression()), !dbg !144
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #5, !dbg !283
  call void @llvm.dbg.value(metadata ptr @_gsl_sf_bessel_amp_phase_bm1_cs, metadata !172, metadata !DIExpression()), !dbg !284
  call void @llvm.dbg.value(metadata double %handler_result33, metadata !180, metadata !DIExpression()), !dbg !284
  call void @llvm.dbg.value(metadata ptr undef, metadata !181, metadata !DIExpression()), !dbg !284
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !183, metadata !DIExpression()), !dbg !284
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !184, metadata !DIExpression()), !dbg !284
  %93 = fmul double %handler_result33, 2.000000e+00, !dbg !286
  %94 = load double, ptr getelementptr inbounds (%struct.cheb_series_struct, ptr @_gsl_sf_bessel_amp_phase_bm1_cs, i64 0, i32 2), align 8, !dbg !287, !tbaa !288
  %handler_result34 = call double @fSubHandlerDouble(double %93, double %94), !dbg !292
  %95 = load double, ptr getelementptr inbounds (%struct.cheb_series_struct, ptr @_gsl_sf_bessel_amp_phase_bm1_cs, i64 0, i32 3), align 8, !dbg !292, !tbaa !293
  %handler_result35 = call double @fSubHandlerDouble(double %handler_result34, double %95), !dbg !294
  %handler_result36 = call double @fSubHandlerDouble(double %95, double %94), !dbg !295
  %96 = fdiv double %handler_result35, %handler_result36, !dbg !295
  call void @llvm.dbg.value(metadata double %96, metadata !185, metadata !DIExpression()), !dbg !284
  %97 = fmul double %96, 2.000000e+00, !dbg !296
  call void @llvm.dbg.value(metadata double %97, metadata !186, metadata !DIExpression()), !dbg !284
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !187, metadata !DIExpression()), !dbg !284
  %98 = load i32, ptr getelementptr inbounds (%struct.cheb_series_struct, ptr @_gsl_sf_bessel_amp_phase_bm1_cs, i64 0, i32 1), align 8, !dbg !297, !tbaa !298
  call void @llvm.dbg.value(metadata i32 %98, metadata !182, metadata !DIExpression()), !dbg !284
  %99 = icmp sgt i32 %98, 0, !dbg !299
  %100 = load ptr, ptr @_gsl_sf_bessel_amp_phase_bm1_cs, align 8, !dbg !300, !tbaa !301
  br i1 %99, label %101, label %116, !dbg !302

101:                                              ; preds = %90
  %102 = zext nneg i32 %98 to i64, !dbg !302
  br label %103, !dbg !302

103:                                              ; preds = %103, %101
  %104 = phi i64 [ %102, %101 ], [ %114, %103 ]
  %105 = phi double [ 0.000000e+00, %101 ], [ %handler_result38, %103 ]
  %106 = phi double [ 0.000000e+00, %101 ], [ %handler_result41, %103 ]
  %107 = phi double [ 0.000000e+00, %101 ], [ %105, %103 ]
  call void @llvm.dbg.value(metadata i64 %104, metadata !182, metadata !DIExpression()), !dbg !284
  call void @llvm.dbg.value(metadata double %105, metadata !183, metadata !DIExpression()), !dbg !284
  call void @llvm.dbg.value(metadata double %106, metadata !187, metadata !DIExpression()), !dbg !284
  call void @llvm.dbg.value(metadata double %107, metadata !184, metadata !DIExpression()), !dbg !284
  call void @llvm.dbg.value(metadata double %105, metadata !188, metadata !DIExpression()), !dbg !303
  %108 = fmul double %97, %105, !dbg !304
  %handler_result37 = call double @fSubHandlerDouble(double %108, double %107), !dbg !305
  %109 = getelementptr inbounds double, ptr %100, i64 %104, !dbg !305
  %110 = load double, ptr %109, align 8, !dbg !305, !tbaa !200
  %handler_result38 = call double @fAddHandlerDouble(double %handler_result37, double %110), !dbg !306
  call void @llvm.dbg.value(metadata double %handler_result38, metadata !183, metadata !DIExpression()), !dbg !284
  %111 = tail call double @llvm.fabs.f64(double %108), !dbg !306
  %112 = tail call double @llvm.fabs.f64(double %107), !dbg !307
  %handler_result39 = call double @fAddHandlerDouble(double %111, double %112), !dbg !308
  %113 = tail call double @llvm.fabs.f64(double %110), !dbg !308
  %handler_result40 = call double @fAddHandlerDouble(double %handler_result39, double %113), !dbg !309
  %handler_result41 = call double @fAddHandlerDouble(double %106, double %handler_result40), !dbg !310
  call void @llvm.dbg.value(metadata double %handler_result41, metadata !187, metadata !DIExpression()), !dbg !284
  call void @llvm.dbg.value(metadata double %105, metadata !184, metadata !DIExpression()), !dbg !284
  %114 = add nsw i64 %104, -1, !dbg !310
  call void @llvm.dbg.value(metadata i64 %114, metadata !182, metadata !DIExpression()), !dbg !284
  %115 = icmp ugt i64 %104, 1, !dbg !299
  br i1 %115, label %103, label %116, !dbg !302, !llvm.loop !311

116:                                              ; preds = %103, %90
  %117 = phi double [ 0.000000e+00, %90 ], [ %105, %103 ], !dbg !284
  %118 = phi double [ 0.000000e+00, %90 ], [ %handler_result41, %103 ], !dbg !284
  %119 = phi double [ 0.000000e+00, %90 ], [ %handler_result38, %103 ], !dbg !284
  call void @llvm.dbg.value(metadata double %119, metadata !192, metadata !DIExpression()), !dbg !313
  %120 = fmul double %96, %119, !dbg !314
  %handler_result42 = call double @fSubHandlerDouble(double %120, double %117), !dbg !315
  %121 = load double, ptr %100, align 8, !dbg !315, !tbaa !200
  %122 = fmul double %121, 5.000000e-01, !dbg !316
  %handler_result43 = call double @fAddHandlerDouble(double %handler_result42, double %122), !dbg !317
  call void @llvm.dbg.value(metadata double %handler_result43, metadata !183, metadata !DIExpression()), !dbg !284
  %123 = tail call double @llvm.fabs.f64(double %120), !dbg !317
  %124 = tail call double @llvm.fabs.f64(double %117), !dbg !318
  %handler_result44 = call double @fAddHandlerDouble(double %124, double %123), !dbg !319
  %125 = tail call double @llvm.fabs.f64(double %121), !dbg !319
  %126 = fmul double %125, 5.000000e-01, !dbg !320
  %handler_result45 = call double @fAddHandlerDouble(double %handler_result44, double %126), !dbg !321
  %handler_result46 = call double @fAddHandlerDouble(double %118, double %handler_result45), !dbg !322
  call void @llvm.dbg.value(metadata double %handler_result46, metadata !187, metadata !DIExpression()), !dbg !284
  tail call void @llvm.dbg.value(metadata double %handler_result43, metadata !130, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !144
  %127 = fmul double %handler_result46, 0x3CB0000000000000, !dbg !322
  %128 = sext i32 %98 to i64, !dbg !323
  %129 = getelementptr inbounds double, ptr %100, i64 %128, !dbg !323
  %130 = load double, ptr %129, align 8, !dbg !323, !tbaa !200
  %131 = tail call double @llvm.fabs.f64(double %130), !dbg !324
  %handler_result47 = call double @fAddHandlerDouble(double %131, double %127), !dbg !325
  tail call void @llvm.dbg.value(metadata double %handler_result47, metadata !130, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !144
  tail call void @llvm.dbg.value(metadata i32 0, metadata !133, metadata !DIExpression()), !dbg !144
  call void @llvm.dbg.value(metadata ptr @_gsl_sf_bessel_amp_phase_bth1_cs, metadata !172, metadata !DIExpression()), !dbg !327
  call void @llvm.dbg.value(metadata double %handler_result33, metadata !180, metadata !DIExpression()), !dbg !327
  call void @llvm.dbg.value(metadata ptr undef, metadata !181, metadata !DIExpression()), !dbg !327
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !183, metadata !DIExpression()), !dbg !327
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !184, metadata !DIExpression()), !dbg !327
  %132 = load double, ptr getelementptr inbounds (%struct.cheb_series_struct, ptr @_gsl_sf_bessel_amp_phase_bth1_cs, i64 0, i32 2), align 8, !dbg !325, !tbaa !288
  %handler_result48 = call double @fSubHandlerDouble(double %93, double %132), !dbg !328
  %133 = load double, ptr getelementptr inbounds (%struct.cheb_series_struct, ptr @_gsl_sf_bessel_amp_phase_bth1_cs, i64 0, i32 3), align 8, !dbg !328, !tbaa !293
  %handler_result49 = call double @fSubHandlerDouble(double %handler_result48, double %133), !dbg !329
  %handler_result50 = call double @fSubHandlerDouble(double %133, double %132), !dbg !330
  %134 = fdiv double %handler_result49, %handler_result50, !dbg !330
  call void @llvm.dbg.value(metadata double %134, metadata !185, metadata !DIExpression()), !dbg !327
  %135 = fmul double %134, 2.000000e+00, !dbg !331
  call void @llvm.dbg.value(metadata double %135, metadata !186, metadata !DIExpression()), !dbg !327
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !187, metadata !DIExpression()), !dbg !327
  %136 = load i32, ptr getelementptr inbounds (%struct.cheb_series_struct, ptr @_gsl_sf_bessel_amp_phase_bth1_cs, i64 0, i32 1), align 8, !dbg !332, !tbaa !298
  call void @llvm.dbg.value(metadata i32 %136, metadata !182, metadata !DIExpression()), !dbg !327
  %137 = icmp sgt i32 %136, 0, !dbg !333
  %138 = load ptr, ptr @_gsl_sf_bessel_amp_phase_bth1_cs, align 8, !dbg !334, !tbaa !301
  br i1 %137, label %139, label %183, !dbg !335

139:                                              ; preds = %116
  %140 = zext nneg i32 %136 to i64, !dbg !335
  %141 = and i64 %140, 3, !dbg !335
  %142 = icmp eq i64 %141, 0, !dbg !335
  br i1 %142, label %154, label %143, !dbg !335

143:                                              ; preds = %143, %139
  %144 = phi i64 [ %151, %143 ], [ %140, %139 ]
  %145 = phi double [ %handler_result52, %143 ], [ 0.000000e+00, %139 ]
  %146 = phi double [ %145, %143 ], [ 0.000000e+00, %139 ]
  %147 = phi i64 [ %152, %143 ], [ 0, %139 ]
  call void @llvm.dbg.value(metadata i64 %144, metadata !182, metadata !DIExpression()), !dbg !327
  call void @llvm.dbg.value(metadata double %145, metadata !183, metadata !DIExpression()), !dbg !327
  call void @llvm.dbg.value(metadata double poison, metadata !187, metadata !DIExpression()), !dbg !327
  call void @llvm.dbg.value(metadata double %146, metadata !184, metadata !DIExpression()), !dbg !327
  call void @llvm.dbg.value(metadata double %145, metadata !188, metadata !DIExpression()), !dbg !336
  %148 = fmul double %135, %145, !dbg !337
  %handler_result51 = call double @fSubHandlerDouble(double %148, double %146), !dbg !338
  %149 = getelementptr inbounds double, ptr %138, i64 %144, !dbg !338
  %150 = load double, ptr %149, align 8, !dbg !338, !tbaa !200
  %handler_result52 = call double @fAddHandlerDouble(double %handler_result51, double %150), !dbg !339
  call void @llvm.dbg.value(metadata double %handler_result52, metadata !183, metadata !DIExpression()), !dbg !327
  call void @llvm.dbg.value(metadata double %145, metadata !184, metadata !DIExpression()), !dbg !327
  %151 = add nsw i64 %144, -1, !dbg !339
  call void @llvm.dbg.value(metadata i64 %151, metadata !182, metadata !DIExpression()), !dbg !327
  %152 = add i64 %147, 1, !dbg !335
  %153 = icmp eq i64 %152, %141, !dbg !335
  br i1 %153, label %154, label %143, !dbg !335, !llvm.loop !340

154:                                              ; preds = %143, %139
  %155 = phi i64 [ %140, %139 ], [ %151, %143 ]
  %156 = phi double [ 0.000000e+00, %139 ], [ %handler_result52, %143 ]
  %157 = phi double [ 0.000000e+00, %139 ], [ %145, %143 ]
  %158 = phi double [ undef, %139 ], [ %145, %143 ]
  %159 = phi double [ undef, %139 ], [ %handler_result52, %143 ]
  %160 = icmp ult i32 %136, 4, !dbg !335
  br i1 %160, label %183, label %161, !dbg !335

161:                                              ; preds = %154
  %162 = getelementptr double, ptr %138, i64 -1, !dbg !335
  %163 = getelementptr double, ptr %138, i64 -2, !dbg !335
  br label %164, !dbg !335

164:                                              ; preds = %164, %161
  %165 = phi i64 [ %155, %161 ], [ %181, %164 ]
  %166 = phi double [ %156, %161 ], [ %handler_result60, %164 ]
  %167 = phi double [ %157, %161 ], [ %handler_result58, %164 ]
  call void @llvm.dbg.value(metadata i64 %165, metadata !182, metadata !DIExpression()), !dbg !327
  call void @llvm.dbg.value(metadata double %166, metadata !183, metadata !DIExpression()), !dbg !327
  call void @llvm.dbg.value(metadata double poison, metadata !187, metadata !DIExpression()), !dbg !327
  call void @llvm.dbg.value(metadata double %167, metadata !184, metadata !DIExpression()), !dbg !327
  call void @llvm.dbg.value(metadata double %166, metadata !188, metadata !DIExpression()), !dbg !336
  %168 = fmul double %135, %166, !dbg !337
  %handler_result53 = call double @fSubHandlerDouble(double %168, double %167), !dbg !338
  %169 = getelementptr inbounds double, ptr %138, i64 %165, !dbg !338
  %170 = load double, ptr %169, align 8, !dbg !338, !tbaa !200
  %handler_result54 = call double @fAddHandlerDouble(double %handler_result53, double %170), !dbg !337
  call void @llvm.dbg.value(metadata double %handler_result54, metadata !183, metadata !DIExpression()), !dbg !327
  call void @llvm.dbg.value(metadata double %166, metadata !184, metadata !DIExpression()), !dbg !327
  call void @llvm.dbg.value(metadata i64 %165, metadata !182, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !327
  call void @llvm.dbg.value(metadata i64 %165, metadata !182, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !327
  call void @llvm.dbg.value(metadata double %handler_result54, metadata !183, metadata !DIExpression()), !dbg !327
  call void @llvm.dbg.value(metadata double poison, metadata !187, metadata !DIExpression()), !dbg !327
  call void @llvm.dbg.value(metadata double %166, metadata !184, metadata !DIExpression()), !dbg !327
  call void @llvm.dbg.value(metadata double %handler_result54, metadata !188, metadata !DIExpression()), !dbg !336
  %171 = fmul double %135, %handler_result54, !dbg !337
  %handler_result55 = call double @fSubHandlerDouble(double %171, double %166), !dbg !338
  %172 = getelementptr double, ptr %162, i64 %165, !dbg !338
  %173 = load double, ptr %172, align 8, !dbg !338, !tbaa !200
  %handler_result56 = call double @fAddHandlerDouble(double %handler_result55, double %173), !dbg !337
  call void @llvm.dbg.value(metadata double %handler_result56, metadata !183, metadata !DIExpression()), !dbg !327
  call void @llvm.dbg.value(metadata double %handler_result54, metadata !184, metadata !DIExpression()), !dbg !327
  call void @llvm.dbg.value(metadata i64 %165, metadata !182, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !327
  call void @llvm.dbg.value(metadata i64 %165, metadata !182, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !327
  call void @llvm.dbg.value(metadata double %handler_result56, metadata !183, metadata !DIExpression()), !dbg !327
  call void @llvm.dbg.value(metadata double poison, metadata !187, metadata !DIExpression()), !dbg !327
  call void @llvm.dbg.value(metadata double %handler_result54, metadata !184, metadata !DIExpression()), !dbg !327
  call void @llvm.dbg.value(metadata double %handler_result56, metadata !188, metadata !DIExpression()), !dbg !336
  %174 = fmul double %135, %handler_result56, !dbg !337
  %handler_result57 = call double @fSubHandlerDouble(double %174, double %handler_result54), !dbg !338
  %175 = getelementptr double, ptr %163, i64 %165, !dbg !338
  %176 = load double, ptr %175, align 8, !dbg !338, !tbaa !200
  %handler_result58 = call double @fAddHandlerDouble(double %handler_result57, double %176), !dbg !339
  call void @llvm.dbg.value(metadata double %handler_result58, metadata !183, metadata !DIExpression()), !dbg !327
  call void @llvm.dbg.value(metadata double %handler_result56, metadata !184, metadata !DIExpression()), !dbg !327
  %177 = add nsw i64 %165, -3, !dbg !339
  call void @llvm.dbg.value(metadata i64 %177, metadata !182, metadata !DIExpression()), !dbg !327
  call void @llvm.dbg.value(metadata i64 %177, metadata !182, metadata !DIExpression()), !dbg !327
  call void @llvm.dbg.value(metadata double %handler_result58, metadata !183, metadata !DIExpression()), !dbg !327
  call void @llvm.dbg.value(metadata double poison, metadata !187, metadata !DIExpression()), !dbg !327
  call void @llvm.dbg.value(metadata double %handler_result56, metadata !184, metadata !DIExpression()), !dbg !327
  call void @llvm.dbg.value(metadata double %handler_result58, metadata !188, metadata !DIExpression()), !dbg !336
  %178 = fmul double %135, %handler_result58, !dbg !337
  %handler_result59 = call double @fSubHandlerDouble(double %178, double %handler_result56), !dbg !338
  %179 = getelementptr inbounds double, ptr %138, i64 %177, !dbg !338
  %180 = load double, ptr %179, align 8, !dbg !338, !tbaa !200
  %handler_result60 = call double @fAddHandlerDouble(double %handler_result59, double %180), !dbg !339
  call void @llvm.dbg.value(metadata double %handler_result60, metadata !183, metadata !DIExpression()), !dbg !327
  call void @llvm.dbg.value(metadata double %handler_result58, metadata !184, metadata !DIExpression()), !dbg !327
  %181 = add nsw i64 %165, -4, !dbg !339
  call void @llvm.dbg.value(metadata i64 %181, metadata !182, metadata !DIExpression()), !dbg !327
  %182 = icmp ugt i64 %177, 1, !dbg !333
  br i1 %182, label %164, label %183, !dbg !335, !llvm.loop !342

183:                                              ; preds = %164, %154, %116
  %184 = phi double [ 0.000000e+00, %116 ], [ %158, %154 ], [ %handler_result58, %164 ], !dbg !327
  %185 = phi double [ 0.000000e+00, %116 ], [ %159, %154 ], [ %handler_result60, %164 ], !dbg !327
  call void @llvm.dbg.value(metadata double %185, metadata !192, metadata !DIExpression()), !dbg !344
  %186 = fmul double %134, %185, !dbg !345
  %handler_result61 = call double @fSubHandlerDouble(double %186, double %184), !dbg !346
  %187 = load double, ptr %138, align 8, !dbg !346, !tbaa !200
  %188 = fmul double %187, 5.000000e-01, !dbg !347
  %handler_result62 = call double @fAddHandlerDouble(double %handler_result61, double %188), !dbg !348
  call void @llvm.dbg.value(metadata double %handler_result62, metadata !183, metadata !DIExpression()), !dbg !327
  call void @llvm.dbg.value(metadata double poison, metadata !187, metadata !DIExpression()), !dbg !327
  tail call void @llvm.dbg.value(metadata double %handler_result62, metadata !131, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !144
  tail call void @llvm.dbg.value(metadata double poison, metadata !131, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !144
  tail call void @llvm.dbg.value(metadata i32 0, metadata !135, metadata !DIExpression()), !dbg !144
  %189 = fdiv double %handler_result62, %0, !dbg !348
  %190 = call i32 @gsl_sf_bessel_cos_pi4_e(double noundef %0, double noundef %189, ptr noundef nonnull %5) #5, !dbg !349
  tail call void @llvm.dbg.value(metadata i32 %190, metadata !136, metadata !DIExpression()), !dbg !144
  %191 = call double @sqrt(double noundef %0) #5, !dbg !350
  tail call void @llvm.dbg.value(metadata double %191, metadata !137, metadata !DIExpression()), !dbg !144
  %handler_result63 = call double @fAddHandlerDouble(double %handler_result43, double 7.500000e-01), !dbg !351
  %192 = fdiv double %handler_result63, %191, !dbg !351
  tail call void @llvm.dbg.value(metadata double %192, metadata !138, metadata !DIExpression()), !dbg !144
  %193 = fneg double %192, !dbg !352
  %194 = load double, ptr %5, align 8, !dbg !353, !tbaa !151
  %195 = fmul double %194, %193, !dbg !354
  store double %195, ptr %1, align 8, !dbg !355, !tbaa !151
  %196 = call double @llvm.fabs.f64(double %194), !dbg !356
  %197 = fmul double %handler_result47, %196, !dbg !357
  %198 = fdiv double %197, %191, !dbg !358
  %199 = call double @llvm.fabs.f64(double %192), !dbg !359
  %200 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !360
  %201 = load double, ptr %200, align 8, !dbg !360, !tbaa !156
  %202 = fmul double %199, %201, !dbg !361
  %handler_result64 = call double @fAddHandlerDouble(double %198, double %202), !dbg !362
  %203 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !362
  %204 = call double @llvm.fabs.f64(double %195), !dbg !363
  %205 = fmul double %204, 0x3CB0000000000000, !dbg !364
  %handler_result65 = call double @fAddHandlerDouble(double %205, double %handler_result64), !dbg !365
  store double %handler_result65, ptr %203, align 8, !dbg !365, !tbaa !156
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #5, !dbg !366
  br label %208

206:                                              ; preds = %88
  store double 0.000000e+00, ptr %1, align 8, !dbg !367, !tbaa !151
  %207 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !367
  store double 0x10000000000000, ptr %207, align 8, !dbg !367, !tbaa !156
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 125, i32 noundef 15) #5, !dbg !370
  br label %208, !dbg !370

208:                                              ; preds = %206, %183, %70, %31, %11, %7
  %209 = phi i32 [ 1, %7 ], [ 16, %11 ], [ %17, %31 ], [ %75, %70 ], [ %190, %183 ], [ 15, %206 ], !dbg !372
  ret i32 %209, !dbg !373
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare !dbg !374 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !379 double @log(double noundef) local_unnamed_addr #3

declare !dbg !383 i32 @gsl_sf_bessel_J1_e(double noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare !dbg !385 i32 @gsl_sf_bessel_cos_pi4_e(double noundef, double noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !389 double @sqrt(double noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_bessel_Y1(double noundef %0) local_unnamed_addr #0 !dbg !390 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !397
  call void @llvm.dbg.assign(metadata i1 undef, metadata !395, metadata !DIExpression(), metadata !397, metadata ptr %2, metadata !DIExpression()), !dbg !398
  tail call void @llvm.dbg.value(metadata double %0, metadata !394, metadata !DIExpression()), !dbg !398
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #5, !dbg !399
  %3 = call i32 @gsl_sf_bessel_Y1_e(double noundef %0, ptr noundef nonnull %2), !dbg !399
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !396, metadata !DIExpression()), !dbg !398
  %4 = icmp eq i32 %3, 0, !dbg !400
  br i1 %4, label %6, label %5, !dbg !399

5:                                                ; preds = %1
  tail call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 136, i32 noundef %3) #5, !dbg !402
  br label %6, !dbg !402

6:                                                ; preds = %5, %1
  %7 = load double, ptr %2, align 8, !dbg !399, !tbaa !151
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #5, !dbg !405
  ret double %7, !dbg !405
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #4

declare double @fSubHandlerDouble(double, double)

declare double @fAddHandlerDouble(double, double)

declare double @callHandler(i32, double, double)

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!29}
!llvm.module.flags = !{!87, !88, !89, !90, !91, !92, !93}
!llvm.ident = !{!94}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 83, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "bessel_Y1.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "a1305da76579e8b5dcee92dc16e91a45")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 13)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 83, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 12)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 86, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 9)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 125, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 10)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 136, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 248, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 31)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(name: "by1_data", scope: !29, file: !2, line: 47, type: !84, isLocal: true, isDefinition: true)
!29 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !30, globals: !70, splitDebugInlining: false, nameTableKind: None)
!30 = !{!31}
!31 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !32, line: 39, baseType: !33, size: 32, elements: !34)
!32 = !DIFile(filename: "../gsl/gsl_errno.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "3ff14ff6df19564f3d7caf1e8e622626")
!33 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!34 = !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69}
!35 = !DIEnumerator(name: "GSL_SUCCESS", value: 0)
!36 = !DIEnumerator(name: "GSL_FAILURE", value: -1)
!37 = !DIEnumerator(name: "GSL_CONTINUE", value: -2)
!38 = !DIEnumerator(name: "GSL_EDOM", value: 1)
!39 = !DIEnumerator(name: "GSL_ERANGE", value: 2)
!40 = !DIEnumerator(name: "GSL_EFAULT", value: 3)
!41 = !DIEnumerator(name: "GSL_EINVAL", value: 4)
!42 = !DIEnumerator(name: "GSL_EFAILED", value: 5)
!43 = !DIEnumerator(name: "GSL_EFACTOR", value: 6)
!44 = !DIEnumerator(name: "GSL_ESANITY", value: 7)
!45 = !DIEnumerator(name: "GSL_ENOMEM", value: 8)
!46 = !DIEnumerator(name: "GSL_EBADFUNC", value: 9)
!47 = !DIEnumerator(name: "GSL_ERUNAWAY", value: 10)
!48 = !DIEnumerator(name: "GSL_EMAXITER", value: 11)
!49 = !DIEnumerator(name: "GSL_EZERODIV", value: 12)
!50 = !DIEnumerator(name: "GSL_EBADTOL", value: 13)
!51 = !DIEnumerator(name: "GSL_ETOL", value: 14)
!52 = !DIEnumerator(name: "GSL_EUNDRFLW", value: 15)
!53 = !DIEnumerator(name: "GSL_EOVRFLW", value: 16)
!54 = !DIEnumerator(name: "GSL_ELOSS", value: 17)
!55 = !DIEnumerator(name: "GSL_EROUND", value: 18)
!56 = !DIEnumerator(name: "GSL_EBADLEN", value: 19)
!57 = !DIEnumerator(name: "GSL_ENOTSQR", value: 20)
!58 = !DIEnumerator(name: "GSL_ESING", value: 21)
!59 = !DIEnumerator(name: "GSL_EDIVERGE", value: 22)
!60 = !DIEnumerator(name: "GSL_EUNSUP", value: 23)
!61 = !DIEnumerator(name: "GSL_EUNIMPL", value: 24)
!62 = !DIEnumerator(name: "GSL_ECACHE", value: 25)
!63 = !DIEnumerator(name: "GSL_ETABLE", value: 26)
!64 = !DIEnumerator(name: "GSL_ENOPROG", value: 27)
!65 = !DIEnumerator(name: "GSL_ENOPROGJ", value: 28)
!66 = !DIEnumerator(name: "GSL_ETOLF", value: 29)
!67 = !DIEnumerator(name: "GSL_ETOLX", value: 30)
!68 = !DIEnumerator(name: "GSL_ETOLG", value: 31)
!69 = !DIEnumerator(name: "GSL_EOF", value: 32)
!70 = !{!0, !7, !12, !17, !22, !71, !27}
!71 = !DIGlobalVariableExpression(var: !72, expr: !DIExpression())
!72 = distinct !DIGlobalVariable(name: "by1_cs", scope: !29, file: !2, line: 63, type: !73, isLocal: true, isDefinition: true)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "cheb_series", file: !74, line: 29, baseType: !75)
!74 = !DIFile(filename: "./chebyshev.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "41e3a40b0ef4c15c011f3f1dbb3f3cf6")
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cheb_series_struct", file: !74, line: 22, size: 320, elements: !76)
!76 = !{!77, !80, !81, !82, !83}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !75, file: !74, line: 23, baseType: !78, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "order", scope: !75, file: !74, line: 24, baseType: !33, size: 32, offset: 64)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !75, file: !74, line: 25, baseType: !79, size: 64, offset: 128)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !75, file: !74, line: 26, baseType: !79, size: 64, offset: 192)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "order_sp", scope: !75, file: !74, line: 27, baseType: !33, size: 32, offset: 256)
!84 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 896, elements: !85)
!85 = !{!86}
!86 = !DISubrange(count: 14)
!87 = !{i32 7, !"Dwarf Version", i32 5}
!88 = !{i32 2, !"Debug Info Version", i32 3}
!89 = !{i32 1, !"wchar_size", i32 4}
!90 = !{i32 8, !"PIC Level", i32 2}
!91 = !{i32 7, !"PIE Level", i32 2}
!92 = !{i32 7, !"uwtable", i32 2}
!93 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!94 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!95 = distinct !DISubprogram(name: "gsl_sf_bessel_Y1_e", scope: !2, file: !2, line: 73, type: !96, scopeLine: 74, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !106)
!96 = !DISubroutineType(types: !97)
!97 = !{!33, !98, !99}
!98 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !79)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !101, line: 41, baseType: !102)
!101 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "5b52deed011f1ffd07977b19a388d251")
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !101, line: 37, size: 128, elements: !103)
!103 = !{!104, !105}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !102, file: !101, line: 38, baseType: !79, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !102, file: !101, line: 39, baseType: !79, size: 64, offset: 64)
!106 = !{!107, !108, !109, !110, !111, !112, !113, !118, !119, !120, !121, !124, !125, !126, !127, !130, !131, !132, !133, !135, !136, !137, !138}
!107 = !DILocalVariable(name: "x", arg: 1, scope: !95, file: !2, line: 73, type: !98)
!108 = !DILocalVariable(name: "result", arg: 2, scope: !95, file: !2, line: 73, type: !99)
!109 = !DILocalVariable(name: "two_over_pi", scope: !95, file: !2, line: 75, type: !98)
!110 = !DILocalVariable(name: "xmin", scope: !95, file: !2, line: 76, type: !98)
!111 = !DILocalVariable(name: "x_small", scope: !95, file: !2, line: 77, type: !98)
!112 = !DILocalVariable(name: "xmax", scope: !95, file: !2, line: 78, type: !98)
!113 = !DILocalVariable(name: "lnterm", scope: !114, file: !2, line: 89, type: !98)
!114 = distinct !DILexicalBlock(scope: !115, file: !2, line: 88, column: 24)
!115 = distinct !DILexicalBlock(scope: !116, file: !2, line: 88, column: 11)
!116 = distinct !DILexicalBlock(scope: !117, file: !2, line: 85, column: 11)
!117 = distinct !DILexicalBlock(scope: !95, file: !2, line: 82, column: 6)
!118 = !DILocalVariable(name: "J1", scope: !114, file: !2, line: 90, type: !100)
!119 = !DILocalVariable(name: "c", scope: !114, file: !2, line: 91, type: !100)
!120 = !DILocalVariable(name: "status", scope: !114, file: !2, line: 92, type: !33)
!121 = !DILocalVariable(name: "lnterm", scope: !122, file: !2, line: 99, type: !98)
!122 = distinct !DILexicalBlock(scope: !123, file: !2, line: 98, column: 20)
!123 = distinct !DILexicalBlock(scope: !115, file: !2, line: 98, column: 11)
!124 = !DILocalVariable(name: "status", scope: !122, file: !2, line: 100, type: !33)
!125 = !DILocalVariable(name: "J1", scope: !122, file: !2, line: 101, type: !100)
!126 = !DILocalVariable(name: "c", scope: !122, file: !2, line: 102, type: !100)
!127 = !DILocalVariable(name: "z", scope: !128, file: !2, line: 110, type: !98)
!128 = distinct !DILexicalBlock(scope: !129, file: !2, line: 109, column: 21)
!129 = distinct !DILexicalBlock(scope: !123, file: !2, line: 109, column: 11)
!130 = !DILocalVariable(name: "ca", scope: !128, file: !2, line: 111, type: !100)
!131 = !DILocalVariable(name: "ct", scope: !128, file: !2, line: 112, type: !100)
!132 = !DILocalVariable(name: "cp", scope: !128, file: !2, line: 113, type: !100)
!133 = !DILocalVariable(name: "stat_ca", scope: !128, file: !2, line: 114, type: !134)
!134 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !33)
!135 = !DILocalVariable(name: "stat_ct", scope: !128, file: !2, line: 115, type: !134)
!136 = !DILocalVariable(name: "stat_cp", scope: !128, file: !2, line: 116, type: !134)
!137 = !DILocalVariable(name: "sqrtx", scope: !128, file: !2, line: 117, type: !98)
!138 = !DILocalVariable(name: "ampl", scope: !128, file: !2, line: 118, type: !98)
!139 = distinct !DIAssignID()
!140 = !DILocation(line: 0, scope: !114)
!141 = distinct !DIAssignID()
!142 = !DILocation(line: 0, scope: !122)
!143 = distinct !DIAssignID()
!144 = !DILocation(line: 0, scope: !128)
!145 = !DILocation(line: 0, scope: !95)
!146 = !DILocation(line: 82, column: 8, scope: !117)
!147 = !DILocation(line: 82, column: 6, scope: !95)
!148 = !DILocation(line: 83, column: 5, scope: !149)
!149 = distinct !DILexicalBlock(scope: !150, file: !2, line: 83, column: 5)
!150 = distinct !DILexicalBlock(scope: !117, file: !2, line: 82, column: 16)
!151 = !{!152, !153, i64 0}
!152 = !{!"gsl_sf_result_struct", !153, i64 0, !153, i64 8}
!153 = !{!"double", !154, i64 0}
!154 = !{!"omnipotent char", !155, i64 0}
!155 = !{!"Simple C/C++ TBAA"}
!156 = !{!152, !153, i64 8}
!157 = !DILocation(line: 83, column: 5, scope: !158)
!158 = distinct !DILexicalBlock(scope: !149, file: !2, line: 83, column: 5)
!159 = !DILocation(line: 85, column: 13, scope: !116)
!160 = !DILocation(line: 85, column: 11, scope: !117)
!161 = !DILocation(line: 86, column: 5, scope: !162)
!162 = distinct !DILexicalBlock(scope: !163, file: !2, line: 86, column: 5)
!163 = distinct !DILexicalBlock(scope: !116, file: !2, line: 85, column: 21)
!164 = !DILocation(line: 86, column: 5, scope: !165)
!165 = distinct !DILexicalBlock(scope: !162, file: !2, line: 86, column: 5)
!166 = !DILocation(line: 88, column: 13, scope: !115)
!167 = !DILocation(line: 88, column: 11, scope: !116)
!168 = !DILocation(line: 89, column: 34, scope: !114)
!169 = !DILocation(line: 90, column: 5, scope: !114)
!170 = !DILocation(line: 92, column: 18, scope: !114)
!171 = !{}
!172 = !DILocalVariable(name: "cs", arg: 1, scope: !173, file: !174, line: 3, type: !177)
!173 = distinct !DISubprogram(name: "cheb_eval_e", scope: !174, file: !174, line: 3, type: !175, scopeLine: 6, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !179)
!174 = !DIFile(filename: "./cheb_eval.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "540fdb014588703ccd0b3c3b3ea8a26b")
!175 = !DISubroutineType(types: !176)
!176 = !{!33, !177, !98, !99}
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !73)
!179 = !{!172, !180, !181, !182, !183, !184, !185, !186, !187, !188, !192}
!180 = !DILocalVariable(name: "x", arg: 2, scope: !173, file: !174, line: 4, type: !98)
!181 = !DILocalVariable(name: "result", arg: 3, scope: !173, file: !174, line: 5, type: !99)
!182 = !DILocalVariable(name: "j", scope: !173, file: !174, line: 7, type: !33)
!183 = !DILocalVariable(name: "d", scope: !173, file: !174, line: 8, type: !79)
!184 = !DILocalVariable(name: "dd", scope: !173, file: !174, line: 9, type: !79)
!185 = !DILocalVariable(name: "y", scope: !173, file: !174, line: 11, type: !79)
!186 = !DILocalVariable(name: "y2", scope: !173, file: !174, line: 12, type: !79)
!187 = !DILocalVariable(name: "e", scope: !173, file: !174, line: 14, type: !79)
!188 = !DILocalVariable(name: "temp", scope: !189, file: !174, line: 17, type: !79)
!189 = distinct !DILexicalBlock(scope: !190, file: !174, line: 16, column: 33)
!190 = distinct !DILexicalBlock(scope: !191, file: !174, line: 16, column: 3)
!191 = distinct !DILexicalBlock(scope: !173, file: !174, line: 16, column: 3)
!192 = !DILocalVariable(name: "temp", scope: !193, file: !174, line: 24, type: !79)
!193 = distinct !DILexicalBlock(scope: !173, file: !174, line: 23, column: 3)
!194 = !DILocation(line: 0, scope: !173, inlinedAt: !195)
!195 = distinct !DILocation(line: 93, column: 5, scope: !114)
!196 = !DILocation(line: 16, column: 3, scope: !191, inlinedAt: !195)
!197 = !DILocation(line: 0, scope: !189, inlinedAt: !195)
!198 = !DILocation(line: 18, column: 11, scope: !189, inlinedAt: !195)
!199 = !DILocation(line: 18, column: 21, scope: !189, inlinedAt: !195)
!200 = !{!153, !153, i64 0}
!201 = !DILocation(line: 19, column: 10, scope: !189, inlinedAt: !195)
!202 = !DILocation(line: 19, column: 26, scope: !189, inlinedAt: !195)
!203 = !DILocation(line: 19, column: 37, scope: !189, inlinedAt: !195)
!204 = !DILocation(line: 19, column: 7, scope: !189, inlinedAt: !195)
!205 = !DILocation(line: 16, column: 29, scope: !190, inlinedAt: !195)
!206 = !DILocation(line: 16, column: 23, scope: !190, inlinedAt: !195)
!207 = distinct !{!207, !196, !208, !209}
!208 = !DILocation(line: 21, column: 3, scope: !191, inlinedAt: !195)
!209 = !{!"llvm.loop.mustprogress"}
!210 = !DILocation(line: 25, column: 10, scope: !193, inlinedAt: !195)
!211 = !DILocation(line: 0, scope: !193, inlinedAt: !195)
!212 = !DILocation(line: 25, column: 18, scope: !193, inlinedAt: !195)
!213 = !DILocation(line: 26, column: 10, scope: !193, inlinedAt: !195)
!214 = !DILocation(line: 26, column: 25, scope: !193, inlinedAt: !195)
!215 = !DILocation(line: 26, column: 34, scope: !193, inlinedAt: !195)
!216 = !DILocation(line: 26, column: 7, scope: !193, inlinedAt: !195)
!217 = !DILocation(line: 30, column: 33, scope: !173, inlinedAt: !195)
!218 = !DILocation(line: 94, column: 31, scope: !114)
!219 = !DILocation(line: 94, column: 45, scope: !114)
!220 = !DILocation(line: 94, column: 40, scope: !114)
!221 = !DILocation(line: 94, column: 64, scope: !114)
!222 = !DILocation(line: 94, column: 17, scope: !114)
!223 = !DILocation(line: 95, column: 19, scope: !114)
!224 = !DILocation(line: 95, column: 56, scope: !114)
!225 = !DILocation(line: 95, column: 35, scope: !114)
!226 = !DILocation(line: 95, column: 71, scope: !114)
!227 = !DILocation(line: 95, column: 32, scope: !114)
!228 = !DILocation(line: 95, column: 83, scope: !114)
!229 = !DILocation(line: 95, column: 13, scope: !114)
!230 = !DILocation(line: 95, column: 17, scope: !114)
!231 = !DILocation(line: 97, column: 3, scope: !115)
!232 = !DILocation(line: 98, column: 13, scope: !123)
!233 = !DILocation(line: 98, column: 11, scope: !115)
!234 = !DILocation(line: 99, column: 34, scope: !122)
!235 = !DILocation(line: 101, column: 5, scope: !122)
!236 = !DILocation(line: 103, column: 31, scope: !122)
!237 = !DILocation(line: 103, column: 33, scope: !122)
!238 = !DILocation(line: 11, column: 19, scope: !173, inlinedAt: !239)
!239 = distinct !DILocation(line: 103, column: 5, scope: !122)
!240 = !DILocation(line: 0, scope: !173, inlinedAt: !239)
!241 = !DILocation(line: 11, column: 30, scope: !173, inlinedAt: !239)
!242 = !DILocation(line: 11, column: 39, scope: !173, inlinedAt: !239)
!243 = !DILocation(line: 12, column: 19, scope: !173, inlinedAt: !239)
!244 = !DILocation(line: 16, column: 3, scope: !191, inlinedAt: !239)
!245 = !DILocation(line: 0, scope: !189, inlinedAt: !239)
!246 = !DILocation(line: 18, column: 11, scope: !189, inlinedAt: !239)
!247 = !DILocation(line: 18, column: 21, scope: !189, inlinedAt: !239)
!248 = !DILocation(line: 19, column: 10, scope: !189, inlinedAt: !239)
!249 = !DILocation(line: 19, column: 26, scope: !189, inlinedAt: !239)
!250 = !DILocation(line: 19, column: 37, scope: !189, inlinedAt: !239)
!251 = !DILocation(line: 19, column: 7, scope: !189, inlinedAt: !239)
!252 = !DILocation(line: 16, column: 29, scope: !190, inlinedAt: !239)
!253 = !DILocation(line: 16, column: 23, scope: !190, inlinedAt: !239)
!254 = distinct !{!254, !244, !255, !209}
!255 = !DILocation(line: 21, column: 3, scope: !191, inlinedAt: !239)
!256 = !DILocation(line: 0, scope: !193, inlinedAt: !239)
!257 = !DILocation(line: 25, column: 10, scope: !193, inlinedAt: !239)
!258 = !DILocation(line: 25, column: 18, scope: !193, inlinedAt: !239)
!259 = !DILocation(line: 26, column: 10, scope: !193, inlinedAt: !239)
!260 = !DILocation(line: 26, column: 25, scope: !193, inlinedAt: !239)
!261 = !DILocation(line: 26, column: 34, scope: !193, inlinedAt: !239)
!262 = !DILocation(line: 26, column: 7, scope: !193, inlinedAt: !239)
!263 = !DILocation(line: 30, column: 33, scope: !173, inlinedAt: !239)
!264 = !DILocation(line: 104, column: 14, scope: !122)
!265 = !DILocation(line: 105, column: 31, scope: !122)
!266 = !DILocation(line: 105, column: 45, scope: !122)
!267 = !DILocation(line: 105, column: 40, scope: !122)
!268 = !DILocation(line: 105, column: 64, scope: !122)
!269 = !DILocation(line: 105, column: 17, scope: !122)
!270 = !DILocation(line: 106, column: 19, scope: !122)
!271 = !DILocation(line: 106, column: 56, scope: !122)
!272 = !DILocation(line: 106, column: 35, scope: !122)
!273 = !DILocation(line: 106, column: 71, scope: !122)
!274 = !DILocation(line: 106, column: 32, scope: !122)
!275 = !DILocation(line: 106, column: 83, scope: !122)
!276 = !DILocation(line: 106, column: 13, scope: !122)
!277 = !DILocation(line: 106, column: 17, scope: !122)
!278 = !DILocation(line: 108, column: 3, scope: !123)
!279 = !DILocation(line: 109, column: 13, scope: !129)
!280 = !DILocation(line: 109, column: 11, scope: !123)
!281 = !DILocation(line: 110, column: 29, scope: !128)
!282 = !DILocation(line: 110, column: 26, scope: !128)
!283 = !DILocation(line: 113, column: 5, scope: !128)
!284 = !DILocation(line: 0, scope: !173, inlinedAt: !285)
!285 = distinct !DILocation(line: 114, column: 25, scope: !128)
!286 = !DILocation(line: 11, column: 19, scope: !173, inlinedAt: !285)
!287 = !DILocation(line: 11, column: 28, scope: !173, inlinedAt: !285)
!288 = !{!289, !153, i64 16}
!289 = !{!"cheb_series_struct", !290, i64 0, !291, i64 8, !153, i64 16, !153, i64 24, !291, i64 32}
!290 = !{!"any pointer", !154, i64 0}
!291 = !{!"int", !154, i64 0}
!292 = !DILocation(line: 11, column: 36, scope: !173, inlinedAt: !285)
!293 = !{!289, !153, i64 24}
!294 = !DILocation(line: 11, column: 48, scope: !173, inlinedAt: !285)
!295 = !DILocation(line: 11, column: 39, scope: !173, inlinedAt: !285)
!296 = !DILocation(line: 12, column: 19, scope: !173, inlinedAt: !285)
!297 = !DILocation(line: 16, column: 15, scope: !191, inlinedAt: !285)
!298 = !{!289, !291, i64 8}
!299 = !DILocation(line: 16, column: 23, scope: !190, inlinedAt: !285)
!300 = !DILocation(line: 25, column: 30, scope: !193, inlinedAt: !285)
!301 = !{!289, !290, i64 0}
!302 = !DILocation(line: 16, column: 3, scope: !191, inlinedAt: !285)
!303 = !DILocation(line: 0, scope: !189, inlinedAt: !285)
!304 = !DILocation(line: 18, column: 11, scope: !189, inlinedAt: !285)
!305 = !DILocation(line: 18, column: 21, scope: !189, inlinedAt: !285)
!306 = !DILocation(line: 19, column: 10, scope: !189, inlinedAt: !285)
!307 = !DILocation(line: 19, column: 26, scope: !189, inlinedAt: !285)
!308 = !DILocation(line: 19, column: 37, scope: !189, inlinedAt: !285)
!309 = !DILocation(line: 19, column: 7, scope: !189, inlinedAt: !285)
!310 = !DILocation(line: 16, column: 29, scope: !190, inlinedAt: !285)
!311 = distinct !{!311, !302, !312, !209}
!312 = !DILocation(line: 21, column: 3, scope: !191, inlinedAt: !285)
!313 = !DILocation(line: 0, scope: !193, inlinedAt: !285)
!314 = !DILocation(line: 25, column: 10, scope: !193, inlinedAt: !285)
!315 = !DILocation(line: 25, column: 26, scope: !193, inlinedAt: !285)
!316 = !DILocation(line: 25, column: 24, scope: !193, inlinedAt: !285)
!317 = !DILocation(line: 26, column: 10, scope: !193, inlinedAt: !285)
!318 = !DILocation(line: 26, column: 25, scope: !193, inlinedAt: !285)
!319 = !DILocation(line: 26, column: 42, scope: !193, inlinedAt: !285)
!320 = !DILocation(line: 26, column: 40, scope: !193, inlinedAt: !285)
!321 = !DILocation(line: 26, column: 7, scope: !193, inlinedAt: !285)
!322 = !DILocation(line: 30, column: 33, scope: !173, inlinedAt: !285)
!323 = !DILocation(line: 30, column: 44, scope: !173, inlinedAt: !285)
!324 = !DILocation(line: 30, column: 39, scope: !173, inlinedAt: !285)
!325 = !DILocation(line: 11, column: 28, scope: !173, inlinedAt: !326)
!326 = distinct !DILocation(line: 115, column: 25, scope: !128)
!327 = !DILocation(line: 0, scope: !173, inlinedAt: !326)
!328 = !DILocation(line: 11, column: 36, scope: !173, inlinedAt: !326)
!329 = !DILocation(line: 11, column: 48, scope: !173, inlinedAt: !326)
!330 = !DILocation(line: 11, column: 39, scope: !173, inlinedAt: !326)
!331 = !DILocation(line: 12, column: 19, scope: !173, inlinedAt: !326)
!332 = !DILocation(line: 16, column: 15, scope: !191, inlinedAt: !326)
!333 = !DILocation(line: 16, column: 23, scope: !190, inlinedAt: !326)
!334 = !DILocation(line: 25, column: 30, scope: !193, inlinedAt: !326)
!335 = !DILocation(line: 16, column: 3, scope: !191, inlinedAt: !326)
!336 = !DILocation(line: 0, scope: !189, inlinedAt: !326)
!337 = !DILocation(line: 18, column: 11, scope: !189, inlinedAt: !326)
!338 = !DILocation(line: 18, column: 21, scope: !189, inlinedAt: !326)
!339 = !DILocation(line: 16, column: 29, scope: !190, inlinedAt: !326)
!340 = distinct !{!340, !341}
!341 = !{!"llvm.loop.unroll.disable"}
!342 = distinct !{!342, !335, !343, !209}
!343 = !DILocation(line: 21, column: 3, scope: !191, inlinedAt: !326)
!344 = !DILocation(line: 0, scope: !193, inlinedAt: !326)
!345 = !DILocation(line: 25, column: 10, scope: !193, inlinedAt: !326)
!346 = !DILocation(line: 25, column: 26, scope: !193, inlinedAt: !326)
!347 = !DILocation(line: 25, column: 24, scope: !193, inlinedAt: !326)
!348 = !DILocation(line: 116, column: 58, scope: !128)
!349 = !DILocation(line: 116, column: 25, scope: !128)
!350 = !DILocation(line: 117, column: 26, scope: !128)
!351 = !DILocation(line: 118, column: 42, scope: !128)
!352 = !DILocation(line: 119, column: 20, scope: !128)
!353 = !DILocation(line: 119, column: 31, scope: !128)
!354 = !DILocation(line: 119, column: 26, scope: !128)
!355 = !DILocation(line: 119, column: 18, scope: !128)
!356 = !DILocation(line: 120, column: 20, scope: !128)
!357 = !DILocation(line: 120, column: 33, scope: !128)
!358 = !DILocation(line: 120, column: 41, scope: !128)
!359 = !DILocation(line: 120, column: 50, scope: !128)
!360 = !DILocation(line: 120, column: 66, scope: !128)
!361 = !DILocation(line: 120, column: 61, scope: !128)
!362 = !DILocation(line: 120, column: 13, scope: !128)
!363 = !DILocation(line: 121, column: 38, scope: !128)
!364 = !DILocation(line: 121, column: 36, scope: !128)
!365 = !DILocation(line: 121, column: 17, scope: !128)
!366 = !DILocation(line: 123, column: 3, scope: !129)
!367 = !DILocation(line: 125, column: 5, scope: !368)
!368 = distinct !DILexicalBlock(scope: !369, file: !2, line: 125, column: 5)
!369 = distinct !DILexicalBlock(scope: !129, file: !2, line: 124, column: 8)
!370 = !DILocation(line: 125, column: 5, scope: !371)
!371 = distinct !DILexicalBlock(scope: !368, file: !2, line: 125, column: 5)
!372 = !DILocation(line: 0, scope: !117)
!373 = !DILocation(line: 127, column: 1, scope: !95)
!374 = !DISubprogram(name: "gsl_error", scope: !32, file: !32, line: 77, type: !375, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!375 = !DISubroutineType(types: !376)
!376 = !{null, !377, !377, !33, !33}
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!378 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!379 = !DISubprogram(name: "log", scope: !380, file: !380, line: 104, type: !381, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!380 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!381 = !DISubroutineType(types: !382)
!382 = !{!79, !79}
!383 = !DISubprogram(name: "gsl_sf_bessel_J1_e", scope: !384, file: !384, line: 55, type: !96, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!384 = !DIFile(filename: "../gsl/gsl_sf_bessel.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "45459f63edc3203df6c715a25160d493")
!385 = !DISubprogram(name: "gsl_sf_bessel_cos_pi4_e", scope: !386, file: !386, line: 91, type: !387, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!386 = !DIFile(filename: "./bessel.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "57b96fff5bee18a41e1173dbca5404a0")
!387 = !DISubroutineType(types: !388)
!388 = !{!33, !79, !79, !99}
!389 = !DISubprogram(name: "sqrt", scope: !380, file: !380, line: 143, type: !381, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!390 = distinct !DISubprogram(name: "gsl_sf_bessel_Y1", scope: !2, file: !2, line: 134, type: !391, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !393)
!391 = !DISubroutineType(types: !392)
!392 = !{!79, !98}
!393 = !{!394, !395, !396}
!394 = !DILocalVariable(name: "x", arg: 1, scope: !390, file: !2, line: 134, type: !98)
!395 = !DILocalVariable(name: "result", scope: !390, file: !2, line: 136, type: !100)
!396 = !DILocalVariable(name: "status", scope: !390, file: !2, line: 136, type: !33)
!397 = distinct !DIAssignID()
!398 = !DILocation(line: 0, scope: !390)
!399 = !DILocation(line: 136, column: 3, scope: !390)
!400 = !DILocation(line: 136, column: 3, scope: !401)
!401 = distinct !DILexicalBlock(scope: !390, file: !2, line: 136, column: 3)
!402 = !DILocation(line: 136, column: 3, scope: !403)
!403 = distinct !DILexicalBlock(scope: !404, file: !2, line: 136, column: 3)
!404 = distinct !DILexicalBlock(scope: !401, file: !2, line: 136, column: 3)
!405 = !DILocation(line: 137, column: 1, scope: !390)
