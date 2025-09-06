; ModuleID = 'bessel_J0.ll'
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
  br label %151, !dbg !125

9:                                                ; preds = %2
  %10 = fcmp ugt double %4, 4.000000e+00, !dbg !126
  br i1 %10, label %36, label %11, !dbg !127

11:                                               ; preds = %9
  %12 = fmul double %4, 1.250000e-01, !dbg !128
  %13 = fmul double %4, %12, !dbg !130
  %handler_result = call double @fAddHandlerDouble(double %13, double -1.000000e+00), !dbg !131
  call void @llvm.dbg.value(metadata !155, metadata !139, metadata !DIExpression()), !dbg !156
  call void @llvm.dbg.value(metadata double %handler_result, metadata !140, metadata !DIExpression()), !dbg !156
  call void @llvm.dbg.value(metadata ptr %1, metadata !141, metadata !DIExpression()), !dbg !156
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !143, metadata !DIExpression()), !dbg !156
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !144, metadata !DIExpression()), !dbg !156
  %14 = fmul double %handler_result, 2.000000e+00, !dbg !131
  %handler_result1 = call double @fAddHandlerDouble(double %14, double 1.000000e+00), !dbg !157
  %handler_result2 = call double @fAddHandlerDouble(double %handler_result1, double -1.000000e+00), !dbg !158
  %15 = fmul double %handler_result2, 5.000000e-01, !dbg !158
  call void @llvm.dbg.value(metadata double %15, metadata !145, metadata !DIExpression()), !dbg !156
  %16 = fmul double %15, 2.000000e+00, !dbg !159
  call void @llvm.dbg.value(metadata double %16, metadata !146, metadata !DIExpression()), !dbg !156
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !147, metadata !DIExpression()), !dbg !156
  call void @llvm.dbg.value(metadata i32 12, metadata !142, metadata !DIExpression()), !dbg !156
  br label %17, !dbg !160

17:                                               ; preds = %17, %11
  %18 = phi i64 [ 12, %11 ], [ %28, %17 ]
  %19 = phi double [ 0.000000e+00, %11 ], [ %handler_result4, %17 ]
  %20 = phi double [ 0.000000e+00, %11 ], [ %handler_result7, %17 ]
  %21 = phi double [ 0.000000e+00, %11 ], [ %19, %17 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !142, metadata !DIExpression()), !dbg !156
  call void @llvm.dbg.value(metadata double %19, metadata !143, metadata !DIExpression()), !dbg !156
  call void @llvm.dbg.value(metadata double %20, metadata !147, metadata !DIExpression()), !dbg !156
  call void @llvm.dbg.value(metadata double %21, metadata !144, metadata !DIExpression()), !dbg !156
  call void @llvm.dbg.value(metadata double %19, metadata !148, metadata !DIExpression()), !dbg !161
  %22 = fmul double %16, %19, !dbg !162
  %handler_result3 = call double @fSubHandlerDouble(double %22, double %21), !dbg !163
  %23 = getelementptr inbounds double, ptr @bj0_data, i64 %18, !dbg !163
  %24 = load double, ptr %23, align 8, !dbg !163, !tbaa !164
  %handler_result4 = call double @fAddHandlerDouble(double %handler_result3, double %24), !dbg !165
  call void @llvm.dbg.value(metadata double %handler_result4, metadata !143, metadata !DIExpression()), !dbg !156
  %25 = tail call double @llvm.fabs.f64(double %22), !dbg !165
  %26 = tail call double @llvm.fabs.f64(double %21), !dbg !166
  %handler_result5 = call double @fAddHandlerDouble(double %25, double %26), !dbg !167
  %27 = tail call double @llvm.fabs.f64(double %24), !dbg !167
  %handler_result6 = call double @fAddHandlerDouble(double %handler_result5, double %27), !dbg !168
  %handler_result7 = call double @fAddHandlerDouble(double %20, double %handler_result6), !dbg !169
  call void @llvm.dbg.value(metadata double %handler_result7, metadata !147, metadata !DIExpression()), !dbg !156
  call void @llvm.dbg.value(metadata double %19, metadata !144, metadata !DIExpression()), !dbg !156
  %28 = add nsw i64 %18, -1, !dbg !169
  call void @llvm.dbg.value(metadata i64 %28, metadata !142, metadata !DIExpression()), !dbg !156
  %29 = icmp ugt i64 %18, 1, !dbg !170
  br i1 %29, label %17, label %30, !dbg !160, !llvm.loop !171

30:                                               ; preds = %17
  call void @llvm.dbg.value(metadata double %handler_result4, metadata !152, metadata !DIExpression()), !dbg !174
  %31 = fmul double %15, %handler_result4, !dbg !175
  %handler_result8 = call double @fSubHandlerDouble(double %31, double %19), !dbg !176
  %handler_result9 = call double @fAddHandlerDouble(double %handler_result8, double 0x3FA9AA41BAF1C97A), !dbg !177
  call void @llvm.dbg.value(metadata double %handler_result9, metadata !143, metadata !DIExpression()), !dbg !156
  %32 = tail call double @llvm.fabs.f64(double %31), !dbg !177
  %33 = tail call double @llvm.fabs.f64(double %19), !dbg !178
  %handler_result10 = call double @fAddHandlerDouble(double %33, double %32), !dbg !179
  %handler_result11 = call double @fAddHandlerDouble(double %handler_result10, double 0x3FA9AA41BAF1C97A), !dbg !180
  %handler_result12 = call double @fAddHandlerDouble(double %handler_result7, double %handler_result11), !dbg !181
  call void @llvm.dbg.value(metadata double %handler_result12, metadata !147, metadata !DIExpression()), !dbg !156
  store double %handler_result9, ptr %1, align 8, !dbg !181, !tbaa !116
  %34 = fmul double %handler_result12, 0x3CB0000000000000, !dbg !182
  %handler_result13 = call double @fAddHandlerDouble(double %34, double 7.400000e-18), !dbg !183
  %35 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !183
  store double %handler_result13, ptr %35, align 8, !dbg !184, !tbaa !124
  br label %151, !dbg !185

36:                                               ; preds = %9
  %37 = fmul double %0, %0, !dbg !186
  %38 = fdiv double 3.200000e+01, %37, !dbg !187
  %handler_result14 = call double @fAddHandlerDouble(double %38, double -1.000000e+00), !dbg !188
  tail call void @llvm.dbg.value(metadata double %handler_result14, metadata !95, metadata !DIExpression()), !dbg !109
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #4, !dbg !188
  call void @llvm.dbg.value(metadata ptr @_gsl_sf_bessel_amp_phase_bm0_cs, metadata !139, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata double %handler_result14, metadata !140, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata ptr undef, metadata !141, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !143, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !144, metadata !DIExpression()), !dbg !189
  %39 = fmul double %handler_result14, 2.000000e+00, !dbg !191
  %40 = load double, ptr getelementptr inbounds (%struct.cheb_series_struct, ptr @_gsl_sf_bessel_amp_phase_bm0_cs, i64 0, i32 2), align 8, !dbg !192, !tbaa !193
  %handler_result15 = call double @fSubHandlerDouble(double %39, double %40), !dbg !197
  %41 = load double, ptr getelementptr inbounds (%struct.cheb_series_struct, ptr @_gsl_sf_bessel_amp_phase_bm0_cs, i64 0, i32 3), align 8, !dbg !197, !tbaa !198
  %handler_result16 = call double @fSubHandlerDouble(double %handler_result15, double %41), !dbg !199
  %handler_result17 = call double @fSubHandlerDouble(double %41, double %40), !dbg !200
  %42 = fdiv double %handler_result16, %handler_result17, !dbg !200
  call void @llvm.dbg.value(metadata double %42, metadata !145, metadata !DIExpression()), !dbg !189
  %43 = fmul double %42, 2.000000e+00, !dbg !201
  call void @llvm.dbg.value(metadata double %43, metadata !146, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !147, metadata !DIExpression()), !dbg !189
  %44 = load i32, ptr getelementptr inbounds (%struct.cheb_series_struct, ptr @_gsl_sf_bessel_amp_phase_bm0_cs, i64 0, i32 1), align 8, !dbg !202, !tbaa !203
  call void @llvm.dbg.value(metadata i32 %44, metadata !142, metadata !DIExpression()), !dbg !189
  %45 = icmp sgt i32 %44, 0, !dbg !204
  %46 = load ptr, ptr @_gsl_sf_bessel_amp_phase_bm0_cs, align 8, !dbg !205, !tbaa !206
  br i1 %45, label %47, label %62, !dbg !207

47:                                               ; preds = %36
  %48 = zext nneg i32 %44 to i64, !dbg !207
  br label %49, !dbg !207

49:                                               ; preds = %49, %47
  %50 = phi i64 [ %48, %47 ], [ %60, %49 ]
  %51 = phi double [ 0.000000e+00, %47 ], [ %handler_result19, %49 ]
  %52 = phi double [ 0.000000e+00, %47 ], [ %handler_result22, %49 ]
  %53 = phi double [ 0.000000e+00, %47 ], [ %51, %49 ]
  call void @llvm.dbg.value(metadata i64 %50, metadata !142, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata double %51, metadata !143, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata double %52, metadata !147, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata double %53, metadata !144, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata double %51, metadata !148, metadata !DIExpression()), !dbg !208
  %54 = fmul double %43, %51, !dbg !209
  %handler_result18 = call double @fSubHandlerDouble(double %54, double %53), !dbg !210
  %55 = getelementptr inbounds double, ptr %46, i64 %50, !dbg !210
  %56 = load double, ptr %55, align 8, !dbg !210, !tbaa !164
  %handler_result19 = call double @fAddHandlerDouble(double %handler_result18, double %56), !dbg !211
  call void @llvm.dbg.value(metadata double %handler_result19, metadata !143, metadata !DIExpression()), !dbg !189
  %57 = tail call double @llvm.fabs.f64(double %54), !dbg !211
  %58 = tail call double @llvm.fabs.f64(double %53), !dbg !212
  %handler_result20 = call double @fAddHandlerDouble(double %57, double %58), !dbg !213
  %59 = tail call double @llvm.fabs.f64(double %56), !dbg !213
  %handler_result21 = call double @fAddHandlerDouble(double %handler_result20, double %59), !dbg !214
  %handler_result22 = call double @fAddHandlerDouble(double %52, double %handler_result21), !dbg !215
  call void @llvm.dbg.value(metadata double %handler_result22, metadata !147, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata double %51, metadata !144, metadata !DIExpression()), !dbg !189
  %60 = add nsw i64 %50, -1, !dbg !215
  call void @llvm.dbg.value(metadata i64 %60, metadata !142, metadata !DIExpression()), !dbg !189
  %61 = icmp ugt i64 %50, 1, !dbg !204
  br i1 %61, label %49, label %62, !dbg !207, !llvm.loop !216

62:                                               ; preds = %49, %36
  %63 = phi double [ 0.000000e+00, %36 ], [ %51, %49 ], !dbg !189
  %64 = phi double [ 0.000000e+00, %36 ], [ %handler_result22, %49 ], !dbg !189
  %65 = phi double [ 0.000000e+00, %36 ], [ %handler_result19, %49 ], !dbg !189
  call void @llvm.dbg.value(metadata double %65, metadata !152, metadata !DIExpression()), !dbg !218
  %66 = fmul double %42, %65, !dbg !219
  %handler_result23 = call double @fSubHandlerDouble(double %66, double %63), !dbg !220
  %67 = load double, ptr %46, align 8, !dbg !220, !tbaa !164
  %68 = fmul double %67, 5.000000e-01, !dbg !221
  %handler_result24 = call double @fAddHandlerDouble(double %handler_result23, double %68), !dbg !222
  call void @llvm.dbg.value(metadata double %handler_result24, metadata !143, metadata !DIExpression()), !dbg !189
  %69 = tail call double @llvm.fabs.f64(double %66), !dbg !222
  %70 = tail call double @llvm.fabs.f64(double %63), !dbg !223
  %handler_result25 = call double @fAddHandlerDouble(double %70, double %69), !dbg !224
  %71 = tail call double @llvm.fabs.f64(double %67), !dbg !224
  %72 = fmul double %71, 5.000000e-01, !dbg !225
  %handler_result26 = call double @fAddHandlerDouble(double %handler_result25, double %72), !dbg !226
  %handler_result27 = call double @fAddHandlerDouble(double %64, double %handler_result26), !dbg !227
  call void @llvm.dbg.value(metadata double %handler_result27, metadata !147, metadata !DIExpression()), !dbg !189
  tail call void @llvm.dbg.value(metadata double %handler_result24, metadata !99, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !109
  %73 = fmul double %handler_result27, 0x3CB0000000000000, !dbg !227
  %74 = sext i32 %44 to i64, !dbg !228
  %75 = getelementptr inbounds double, ptr %46, i64 %74, !dbg !228
  %76 = load double, ptr %75, align 8, !dbg !228, !tbaa !164
  %77 = tail call double @llvm.fabs.f64(double %76), !dbg !229
  %handler_result28 = call double @fAddHandlerDouble(double %77, double %73), !dbg !230
  tail call void @llvm.dbg.value(metadata double %handler_result28, metadata !99, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !109
  tail call void @llvm.dbg.value(metadata i32 0, metadata !102, metadata !DIExpression()), !dbg !109
  call void @llvm.dbg.value(metadata ptr @_gsl_sf_bessel_amp_phase_bth0_cs, metadata !139, metadata !DIExpression()), !dbg !232
  call void @llvm.dbg.value(metadata double %handler_result14, metadata !140, metadata !DIExpression()), !dbg !232
  call void @llvm.dbg.value(metadata ptr undef, metadata !141, metadata !DIExpression()), !dbg !232
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !143, metadata !DIExpression()), !dbg !232
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !144, metadata !DIExpression()), !dbg !232
  %78 = load double, ptr getelementptr inbounds (%struct.cheb_series_struct, ptr @_gsl_sf_bessel_amp_phase_bth0_cs, i64 0, i32 2), align 8, !dbg !230, !tbaa !193
  %handler_result29 = call double @fSubHandlerDouble(double %39, double %78), !dbg !233
  %79 = load double, ptr getelementptr inbounds (%struct.cheb_series_struct, ptr @_gsl_sf_bessel_amp_phase_bth0_cs, i64 0, i32 3), align 8, !dbg !233, !tbaa !198
  %handler_result30 = call double @fSubHandlerDouble(double %handler_result29, double %79), !dbg !234
  %handler_result31 = call double @fSubHandlerDouble(double %79, double %78), !dbg !235
  %80 = fdiv double %handler_result30, %handler_result31, !dbg !235
  call void @llvm.dbg.value(metadata double %80, metadata !145, metadata !DIExpression()), !dbg !232
  %81 = fmul double %80, 2.000000e+00, !dbg !236
  call void @llvm.dbg.value(metadata double %81, metadata !146, metadata !DIExpression()), !dbg !232
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !147, metadata !DIExpression()), !dbg !232
  %82 = load i32, ptr getelementptr inbounds (%struct.cheb_series_struct, ptr @_gsl_sf_bessel_amp_phase_bth0_cs, i64 0, i32 1), align 8, !dbg !237, !tbaa !203
  call void @llvm.dbg.value(metadata i32 %82, metadata !142, metadata !DIExpression()), !dbg !232
  %83 = icmp sgt i32 %82, 0, !dbg !238
  %84 = load ptr, ptr @_gsl_sf_bessel_amp_phase_bth0_cs, align 8, !dbg !239, !tbaa !206
  br i1 %83, label %85, label %129, !dbg !240

85:                                               ; preds = %62
  %86 = zext nneg i32 %82 to i64, !dbg !240
  %87 = and i64 %86, 3, !dbg !240
  %88 = icmp eq i64 %87, 0, !dbg !240
  br i1 %88, label %100, label %89, !dbg !240

89:                                               ; preds = %89, %85
  %90 = phi i64 [ %97, %89 ], [ %86, %85 ]
  %91 = phi double [ %handler_result33, %89 ], [ 0.000000e+00, %85 ]
  %92 = phi double [ %91, %89 ], [ 0.000000e+00, %85 ]
  %93 = phi i64 [ %98, %89 ], [ 0, %85 ]
  call void @llvm.dbg.value(metadata i64 %90, metadata !142, metadata !DIExpression()), !dbg !232
  call void @llvm.dbg.value(metadata double %91, metadata !143, metadata !DIExpression()), !dbg !232
  call void @llvm.dbg.value(metadata double poison, metadata !147, metadata !DIExpression()), !dbg !232
  call void @llvm.dbg.value(metadata double %92, metadata !144, metadata !DIExpression()), !dbg !232
  call void @llvm.dbg.value(metadata double %91, metadata !148, metadata !DIExpression()), !dbg !241
  %94 = fmul double %81, %91, !dbg !242
  %handler_result32 = call double @fSubHandlerDouble(double %94, double %92), !dbg !243
  %95 = getelementptr inbounds double, ptr %84, i64 %90, !dbg !243
  %96 = load double, ptr %95, align 8, !dbg !243, !tbaa !164
  %handler_result33 = call double @fAddHandlerDouble(double %handler_result32, double %96), !dbg !244
  call void @llvm.dbg.value(metadata double %handler_result33, metadata !143, metadata !DIExpression()), !dbg !232
  call void @llvm.dbg.value(metadata double %91, metadata !144, metadata !DIExpression()), !dbg !232
  %97 = add nsw i64 %90, -1, !dbg !244
  call void @llvm.dbg.value(metadata i64 %97, metadata !142, metadata !DIExpression()), !dbg !232
  %98 = add i64 %93, 1, !dbg !240
  %99 = icmp eq i64 %98, %87, !dbg !240
  br i1 %99, label %100, label %89, !dbg !240, !llvm.loop !245

100:                                              ; preds = %89, %85
  %101 = phi i64 [ %86, %85 ], [ %97, %89 ]
  %102 = phi double [ 0.000000e+00, %85 ], [ %handler_result33, %89 ]
  %103 = phi double [ 0.000000e+00, %85 ], [ %91, %89 ]
  %104 = phi double [ undef, %85 ], [ %91, %89 ]
  %105 = phi double [ undef, %85 ], [ %handler_result33, %89 ]
  %106 = icmp ult i32 %82, 4, !dbg !240
  br i1 %106, label %129, label %107, !dbg !240

107:                                              ; preds = %100
  %108 = getelementptr double, ptr %84, i64 -1, !dbg !240
  %109 = getelementptr double, ptr %84, i64 -2, !dbg !240
  br label %110, !dbg !240

110:                                              ; preds = %110, %107
  %111 = phi i64 [ %101, %107 ], [ %127, %110 ]
  %112 = phi double [ %102, %107 ], [ %handler_result41, %110 ]
  %113 = phi double [ %103, %107 ], [ %handler_result39, %110 ]
  call void @llvm.dbg.value(metadata i64 %111, metadata !142, metadata !DIExpression()), !dbg !232
  call void @llvm.dbg.value(metadata double %112, metadata !143, metadata !DIExpression()), !dbg !232
  call void @llvm.dbg.value(metadata double poison, metadata !147, metadata !DIExpression()), !dbg !232
  call void @llvm.dbg.value(metadata double %113, metadata !144, metadata !DIExpression()), !dbg !232
  call void @llvm.dbg.value(metadata double %112, metadata !148, metadata !DIExpression()), !dbg !241
  %114 = fmul double %81, %112, !dbg !242
  %handler_result34 = call double @fSubHandlerDouble(double %114, double %113), !dbg !243
  %115 = getelementptr inbounds double, ptr %84, i64 %111, !dbg !243
  %116 = load double, ptr %115, align 8, !dbg !243, !tbaa !164
  %handler_result35 = call double @fAddHandlerDouble(double %handler_result34, double %116), !dbg !242
  call void @llvm.dbg.value(metadata double %handler_result35, metadata !143, metadata !DIExpression()), !dbg !232
  call void @llvm.dbg.value(metadata double %112, metadata !144, metadata !DIExpression()), !dbg !232
  call void @llvm.dbg.value(metadata i64 %111, metadata !142, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !232
  call void @llvm.dbg.value(metadata i64 %111, metadata !142, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !232
  call void @llvm.dbg.value(metadata double %handler_result35, metadata !143, metadata !DIExpression()), !dbg !232
  call void @llvm.dbg.value(metadata double poison, metadata !147, metadata !DIExpression()), !dbg !232
  call void @llvm.dbg.value(metadata double %112, metadata !144, metadata !DIExpression()), !dbg !232
  call void @llvm.dbg.value(metadata double %handler_result35, metadata !148, metadata !DIExpression()), !dbg !241
  %117 = fmul double %81, %handler_result35, !dbg !242
  %handler_result36 = call double @fSubHandlerDouble(double %117, double %112), !dbg !243
  %118 = getelementptr double, ptr %108, i64 %111, !dbg !243
  %119 = load double, ptr %118, align 8, !dbg !243, !tbaa !164
  %handler_result37 = call double @fAddHandlerDouble(double %handler_result36, double %119), !dbg !242
  call void @llvm.dbg.value(metadata double %handler_result37, metadata !143, metadata !DIExpression()), !dbg !232
  call void @llvm.dbg.value(metadata double %handler_result35, metadata !144, metadata !DIExpression()), !dbg !232
  call void @llvm.dbg.value(metadata i64 %111, metadata !142, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !232
  call void @llvm.dbg.value(metadata i64 %111, metadata !142, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !232
  call void @llvm.dbg.value(metadata double %handler_result37, metadata !143, metadata !DIExpression()), !dbg !232
  call void @llvm.dbg.value(metadata double poison, metadata !147, metadata !DIExpression()), !dbg !232
  call void @llvm.dbg.value(metadata double %handler_result35, metadata !144, metadata !DIExpression()), !dbg !232
  call void @llvm.dbg.value(metadata double %handler_result37, metadata !148, metadata !DIExpression()), !dbg !241
  %120 = fmul double %81, %handler_result37, !dbg !242
  %handler_result38 = call double @fSubHandlerDouble(double %120, double %handler_result35), !dbg !243
  %121 = getelementptr double, ptr %109, i64 %111, !dbg !243
  %122 = load double, ptr %121, align 8, !dbg !243, !tbaa !164
  %handler_result39 = call double @fAddHandlerDouble(double %handler_result38, double %122), !dbg !244
  call void @llvm.dbg.value(metadata double %handler_result39, metadata !143, metadata !DIExpression()), !dbg !232
  call void @llvm.dbg.value(metadata double %handler_result37, metadata !144, metadata !DIExpression()), !dbg !232
  %123 = add nsw i64 %111, -3, !dbg !244
  call void @llvm.dbg.value(metadata i64 %123, metadata !142, metadata !DIExpression()), !dbg !232
  call void @llvm.dbg.value(metadata i64 %123, metadata !142, metadata !DIExpression()), !dbg !232
  call void @llvm.dbg.value(metadata double %handler_result39, metadata !143, metadata !DIExpression()), !dbg !232
  call void @llvm.dbg.value(metadata double poison, metadata !147, metadata !DIExpression()), !dbg !232
  call void @llvm.dbg.value(metadata double %handler_result37, metadata !144, metadata !DIExpression()), !dbg !232
  call void @llvm.dbg.value(metadata double %handler_result39, metadata !148, metadata !DIExpression()), !dbg !241
  %124 = fmul double %81, %handler_result39, !dbg !242
  %handler_result40 = call double @fSubHandlerDouble(double %124, double %handler_result37), !dbg !243
  %125 = getelementptr inbounds double, ptr %84, i64 %123, !dbg !243
  %126 = load double, ptr %125, align 8, !dbg !243, !tbaa !164
  %handler_result41 = call double @fAddHandlerDouble(double %handler_result40, double %126), !dbg !244
  call void @llvm.dbg.value(metadata double %handler_result41, metadata !143, metadata !DIExpression()), !dbg !232
  call void @llvm.dbg.value(metadata double %handler_result39, metadata !144, metadata !DIExpression()), !dbg !232
  %127 = add nsw i64 %111, -4, !dbg !244
  call void @llvm.dbg.value(metadata i64 %127, metadata !142, metadata !DIExpression()), !dbg !232
  %128 = icmp ugt i64 %123, 1, !dbg !238
  br i1 %128, label %110, label %129, !dbg !240, !llvm.loop !247

129:                                              ; preds = %110, %100, %62
  %130 = phi double [ 0.000000e+00, %62 ], [ %104, %100 ], [ %handler_result39, %110 ], !dbg !232
  %131 = phi double [ 0.000000e+00, %62 ], [ %105, %100 ], [ %handler_result41, %110 ], !dbg !232
  call void @llvm.dbg.value(metadata double %131, metadata !152, metadata !DIExpression()), !dbg !249
  %132 = fmul double %80, %131, !dbg !250
  %handler_result42 = call double @fSubHandlerDouble(double %132, double %130), !dbg !251
  %133 = load double, ptr %84, align 8, !dbg !251, !tbaa !164
  %134 = fmul double %133, 5.000000e-01, !dbg !252
  %handler_result43 = call double @fAddHandlerDouble(double %handler_result42, double %134), !dbg !253
  call void @llvm.dbg.value(metadata double %handler_result43, metadata !143, metadata !DIExpression()), !dbg !232
  call void @llvm.dbg.value(metadata double poison, metadata !147, metadata !DIExpression()), !dbg !232
  tail call void @llvm.dbg.value(metadata double %handler_result43, metadata !100, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !109
  tail call void @llvm.dbg.value(metadata double poison, metadata !100, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !109
  tail call void @llvm.dbg.value(metadata i32 0, metadata !104, metadata !DIExpression()), !dbg !109
  %135 = fdiv double %handler_result43, %4, !dbg !253
  %136 = call i32 @gsl_sf_bessel_cos_pi4_e(double noundef %4, double noundef %135, ptr noundef nonnull %3) #4, !dbg !254
  tail call void @llvm.dbg.value(metadata i32 %136, metadata !105, metadata !DIExpression()), !dbg !109
  %137 = call double @llvm.sqrt.f64(double %4), !dbg !255
  tail call void @llvm.dbg.value(metadata double %137, metadata !106, metadata !DIExpression()), !dbg !109
  %handler_result44 = call double @fAddHandlerDouble(double %handler_result24, double 7.500000e-01), !dbg !256
  %138 = fdiv double %handler_result44, %137, !dbg !256
  tail call void @llvm.dbg.value(metadata double %138, metadata !107, metadata !DIExpression()), !dbg !109
  %139 = load double, ptr %3, align 8, !dbg !257, !tbaa !116
  %140 = fmul double %138, %139, !dbg !258
  store double %140, ptr %1, align 8, !dbg !259, !tbaa !116
  %141 = call double @llvm.fabs.f64(double %139), !dbg !260
  %142 = fmul double %handler_result28, %141, !dbg !261
  %143 = fdiv double %142, %137, !dbg !262
  %144 = call double @llvm.fabs.f64(double %138), !dbg !263
  %145 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !264
  %146 = load double, ptr %145, align 8, !dbg !264, !tbaa !124
  %147 = fmul double %144, %146, !dbg !265
  %handler_result45 = call double @fAddHandlerDouble(double %143, double %147), !dbg !266
  %148 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !266
  %149 = call double @llvm.fabs.f64(double %140), !dbg !267
  %150 = fmul double %149, 0x3CB0000000000000, !dbg !268
  %handler_result46 = call double @fAddHandlerDouble(double %150, double %handler_result45), !dbg !269
  store double %handler_result46, ptr %148, align 8, !dbg !269, !tbaa !124
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #4, !dbg !270
  br label %151

151:                                              ; preds = %129, %30, %6
  %152 = phi i32 [ 0, %6 ], [ 0, %30 ], [ %136, %129 ], !dbg !271
  ret i32 %152, !dbg !272
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #2

declare !dbg !273 i32 @gsl_sf_bessel_cos_pi4_e(double noundef, double noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_bessel_J0(double noundef %0) local_unnamed_addr #0 !dbg !277 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !284
  call void @llvm.dbg.assign(metadata i1 undef, metadata !282, metadata !DIExpression(), metadata !284, metadata ptr %2, metadata !DIExpression()), !dbg !285
  tail call void @llvm.dbg.value(metadata double %0, metadata !281, metadata !DIExpression()), !dbg !285
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #4, !dbg !286
  %3 = call i32 @gsl_sf_bessel_J0_e(double noundef %0, ptr noundef nonnull %2), !dbg !286
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !283, metadata !DIExpression()), !dbg !285
  %4 = icmp eq i32 %3, 0, !dbg !287
  br i1 %4, label %6, label %5, !dbg !286

5:                                                ; preds = %1
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 110, i32 noundef %3) #4, !dbg !289
  br label %6, !dbg !289

6:                                                ; preds = %5, %1
  %7 = load double, ptr %2, align 8, !dbg !286, !tbaa !116
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #4, !dbg !292
  ret double %7, !dbg !292
}

declare !dbg !293 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #2

declare double @fAddHandlerDouble(double, double)

declare double @fSubHandlerDouble(double, double)

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

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
!131 = !DILocation(line: 11, column: 19, scope: !132, inlinedAt: !154)
!132 = distinct !DISubprogram(name: "cheb_eval_e", scope: !133, file: !133, line: 3, type: !134, scopeLine: 6, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !138)
!133 = !DIFile(filename: "./cheb_eval.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "540fdb014588703ccd0b3c3b3ea8a26b")
!134 = !DISubroutineType(types: !135)
!135 = !{!18, !136, !83, !84}
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !58)
!138 = !{!139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !152}
!139 = !DILocalVariable(name: "cs", arg: 1, scope: !132, file: !133, line: 3, type: !136)
!140 = !DILocalVariable(name: "x", arg: 2, scope: !132, file: !133, line: 4, type: !83)
!141 = !DILocalVariable(name: "result", arg: 3, scope: !132, file: !133, line: 5, type: !84)
!142 = !DILocalVariable(name: "j", scope: !132, file: !133, line: 7, type: !18)
!143 = !DILocalVariable(name: "d", scope: !132, file: !133, line: 8, type: !64)
!144 = !DILocalVariable(name: "dd", scope: !132, file: !133, line: 9, type: !64)
!145 = !DILocalVariable(name: "y", scope: !132, file: !133, line: 11, type: !64)
!146 = !DILocalVariable(name: "y2", scope: !132, file: !133, line: 12, type: !64)
!147 = !DILocalVariable(name: "e", scope: !132, file: !133, line: 14, type: !64)
!148 = !DILocalVariable(name: "temp", scope: !149, file: !133, line: 17, type: !64)
!149 = distinct !DILexicalBlock(scope: !150, file: !133, line: 16, column: 33)
!150 = distinct !DILexicalBlock(scope: !151, file: !133, line: 16, column: 3)
!151 = distinct !DILexicalBlock(scope: !132, file: !133, line: 16, column: 3)
!152 = !DILocalVariable(name: "temp", scope: !153, file: !133, line: 24, type: !64)
!153 = distinct !DILexicalBlock(scope: !132, file: !133, line: 23, column: 3)
!154 = distinct !DILocation(line: 85, column: 12, scope: !129)
!155 = !{}
!156 = !DILocation(line: 0, scope: !132, inlinedAt: !154)
!157 = !DILocation(line: 11, column: 30, scope: !132, inlinedAt: !154)
!158 = !DILocation(line: 11, column: 39, scope: !132, inlinedAt: !154)
!159 = !DILocation(line: 12, column: 19, scope: !132, inlinedAt: !154)
!160 = !DILocation(line: 16, column: 3, scope: !151, inlinedAt: !154)
!161 = !DILocation(line: 0, scope: !149, inlinedAt: !154)
!162 = !DILocation(line: 18, column: 11, scope: !149, inlinedAt: !154)
!163 = !DILocation(line: 18, column: 21, scope: !149, inlinedAt: !154)
!164 = !{!118, !118, i64 0}
!165 = !DILocation(line: 19, column: 10, scope: !149, inlinedAt: !154)
!166 = !DILocation(line: 19, column: 26, scope: !149, inlinedAt: !154)
!167 = !DILocation(line: 19, column: 37, scope: !149, inlinedAt: !154)
!168 = !DILocation(line: 19, column: 7, scope: !149, inlinedAt: !154)
!169 = !DILocation(line: 16, column: 29, scope: !150, inlinedAt: !154)
!170 = !DILocation(line: 16, column: 23, scope: !150, inlinedAt: !154)
!171 = distinct !{!171, !160, !172, !173}
!172 = !DILocation(line: 21, column: 3, scope: !151, inlinedAt: !154)
!173 = !{!"llvm.loop.mustprogress"}
!174 = !DILocation(line: 0, scope: !153, inlinedAt: !154)
!175 = !DILocation(line: 25, column: 10, scope: !153, inlinedAt: !154)
!176 = !DILocation(line: 25, column: 18, scope: !153, inlinedAt: !154)
!177 = !DILocation(line: 26, column: 10, scope: !153, inlinedAt: !154)
!178 = !DILocation(line: 26, column: 25, scope: !153, inlinedAt: !154)
!179 = !DILocation(line: 26, column: 34, scope: !153, inlinedAt: !154)
!180 = !DILocation(line: 26, column: 7, scope: !153, inlinedAt: !154)
!181 = !DILocation(line: 29, column: 15, scope: !132, inlinedAt: !154)
!182 = !DILocation(line: 30, column: 33, scope: !132, inlinedAt: !154)
!183 = !DILocation(line: 30, column: 11, scope: !132, inlinedAt: !154)
!184 = !DILocation(line: 30, column: 15, scope: !132, inlinedAt: !154)
!185 = !DILocation(line: 85, column: 5, scope: !129)
!186 = !DILocation(line: 88, column: 29, scope: !96)
!187 = !DILocation(line: 88, column: 26, scope: !96)
!188 = !DILocation(line: 91, column: 5, scope: !96)
!189 = !DILocation(line: 0, scope: !132, inlinedAt: !190)
!190 = distinct !DILocation(line: 92, column: 25, scope: !96)
!191 = !DILocation(line: 11, column: 19, scope: !132, inlinedAt: !190)
!192 = !DILocation(line: 11, column: 28, scope: !132, inlinedAt: !190)
!193 = !{!194, !118, i64 16}
!194 = !{!"cheb_series_struct", !195, i64 0, !196, i64 8, !118, i64 16, !118, i64 24, !196, i64 32}
!195 = !{!"any pointer", !119, i64 0}
!196 = !{!"int", !119, i64 0}
!197 = !DILocation(line: 11, column: 36, scope: !132, inlinedAt: !190)
!198 = !{!194, !118, i64 24}
!199 = !DILocation(line: 11, column: 48, scope: !132, inlinedAt: !190)
!200 = !DILocation(line: 11, column: 39, scope: !132, inlinedAt: !190)
!201 = !DILocation(line: 12, column: 19, scope: !132, inlinedAt: !190)
!202 = !DILocation(line: 16, column: 15, scope: !151, inlinedAt: !190)
!203 = !{!194, !196, i64 8}
!204 = !DILocation(line: 16, column: 23, scope: !150, inlinedAt: !190)
!205 = !DILocation(line: 25, column: 30, scope: !153, inlinedAt: !190)
!206 = !{!194, !195, i64 0}
!207 = !DILocation(line: 16, column: 3, scope: !151, inlinedAt: !190)
!208 = !DILocation(line: 0, scope: !149, inlinedAt: !190)
!209 = !DILocation(line: 18, column: 11, scope: !149, inlinedAt: !190)
!210 = !DILocation(line: 18, column: 21, scope: !149, inlinedAt: !190)
!211 = !DILocation(line: 19, column: 10, scope: !149, inlinedAt: !190)
!212 = !DILocation(line: 19, column: 26, scope: !149, inlinedAt: !190)
!213 = !DILocation(line: 19, column: 37, scope: !149, inlinedAt: !190)
!214 = !DILocation(line: 19, column: 7, scope: !149, inlinedAt: !190)
!215 = !DILocation(line: 16, column: 29, scope: !150, inlinedAt: !190)
!216 = distinct !{!216, !207, !217, !173}
!217 = !DILocation(line: 21, column: 3, scope: !151, inlinedAt: !190)
!218 = !DILocation(line: 0, scope: !153, inlinedAt: !190)
!219 = !DILocation(line: 25, column: 10, scope: !153, inlinedAt: !190)
!220 = !DILocation(line: 25, column: 26, scope: !153, inlinedAt: !190)
!221 = !DILocation(line: 25, column: 24, scope: !153, inlinedAt: !190)
!222 = !DILocation(line: 26, column: 10, scope: !153, inlinedAt: !190)
!223 = !DILocation(line: 26, column: 25, scope: !153, inlinedAt: !190)
!224 = !DILocation(line: 26, column: 42, scope: !153, inlinedAt: !190)
!225 = !DILocation(line: 26, column: 40, scope: !153, inlinedAt: !190)
!226 = !DILocation(line: 26, column: 7, scope: !153, inlinedAt: !190)
!227 = !DILocation(line: 30, column: 33, scope: !132, inlinedAt: !190)
!228 = !DILocation(line: 30, column: 44, scope: !132, inlinedAt: !190)
!229 = !DILocation(line: 30, column: 39, scope: !132, inlinedAt: !190)
!230 = !DILocation(line: 11, column: 28, scope: !132, inlinedAt: !231)
!231 = distinct !DILocation(line: 93, column: 25, scope: !96)
!232 = !DILocation(line: 0, scope: !132, inlinedAt: !231)
!233 = !DILocation(line: 11, column: 36, scope: !132, inlinedAt: !231)
!234 = !DILocation(line: 11, column: 48, scope: !132, inlinedAt: !231)
!235 = !DILocation(line: 11, column: 39, scope: !132, inlinedAt: !231)
!236 = !DILocation(line: 12, column: 19, scope: !132, inlinedAt: !231)
!237 = !DILocation(line: 16, column: 15, scope: !151, inlinedAt: !231)
!238 = !DILocation(line: 16, column: 23, scope: !150, inlinedAt: !231)
!239 = !DILocation(line: 25, column: 30, scope: !153, inlinedAt: !231)
!240 = !DILocation(line: 16, column: 3, scope: !151, inlinedAt: !231)
!241 = !DILocation(line: 0, scope: !149, inlinedAt: !231)
!242 = !DILocation(line: 18, column: 11, scope: !149, inlinedAt: !231)
!243 = !DILocation(line: 18, column: 21, scope: !149, inlinedAt: !231)
!244 = !DILocation(line: 16, column: 29, scope: !150, inlinedAt: !231)
!245 = distinct !{!245, !246}
!246 = !{!"llvm.loop.unroll.disable"}
!247 = distinct !{!247, !240, !248, !173}
!248 = !DILocation(line: 21, column: 3, scope: !151, inlinedAt: !231)
!249 = !DILocation(line: 0, scope: !153, inlinedAt: !231)
!250 = !DILocation(line: 25, column: 10, scope: !153, inlinedAt: !231)
!251 = !DILocation(line: 25, column: 26, scope: !153, inlinedAt: !231)
!252 = !DILocation(line: 25, column: 24, scope: !153, inlinedAt: !231)
!253 = !DILocation(line: 94, column: 58, scope: !96)
!254 = !DILocation(line: 94, column: 25, scope: !96)
!255 = !DILocation(line: 95, column: 26, scope: !96)
!256 = !DILocation(line: 96, column: 42, scope: !96)
!257 = !DILocation(line: 97, column: 30, scope: !96)
!258 = !DILocation(line: 97, column: 25, scope: !96)
!259 = !DILocation(line: 97, column: 18, scope: !96)
!260 = !DILocation(line: 98, column: 20, scope: !96)
!261 = !DILocation(line: 98, column: 33, scope: !96)
!262 = !DILocation(line: 98, column: 41, scope: !96)
!263 = !DILocation(line: 98, column: 50, scope: !96)
!264 = !DILocation(line: 98, column: 66, scope: !96)
!265 = !DILocation(line: 98, column: 61, scope: !96)
!266 = !DILocation(line: 98, column: 13, scope: !96)
!267 = !DILocation(line: 99, column: 38, scope: !96)
!268 = !DILocation(line: 99, column: 36, scope: !96)
!269 = !DILocation(line: 99, column: 17, scope: !96)
!270 = !DILocation(line: 101, column: 3, scope: !97)
!271 = !DILocation(line: 0, scope: !98)
!272 = !DILocation(line: 102, column: 1, scope: !80)
!273 = !DISubprogram(name: "gsl_sf_bessel_cos_pi4_e", scope: !274, file: !274, line: 91, type: !275, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!274 = !DIFile(filename: "./bessel.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "57b96fff5bee18a41e1173dbca5404a0")
!275 = !DISubroutineType(types: !276)
!276 = !{!18, !64, !64, !84}
!277 = distinct !DISubprogram(name: "gsl_sf_bessel_J0", scope: !2, file: !2, line: 108, type: !278, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !280)
!278 = !DISubroutineType(types: !279)
!279 = !{!64, !83}
!280 = !{!281, !282, !283}
!281 = !DILocalVariable(name: "x", arg: 1, scope: !277, file: !2, line: 108, type: !83)
!282 = !DILocalVariable(name: "result", scope: !277, file: !2, line: 110, type: !85)
!283 = !DILocalVariable(name: "status", scope: !277, file: !2, line: 110, type: !18)
!284 = distinct !DIAssignID()
!285 = !DILocation(line: 0, scope: !277)
!286 = !DILocation(line: 110, column: 3, scope: !277)
!287 = !DILocation(line: 110, column: 3, scope: !288)
!288 = distinct !DILexicalBlock(scope: !277, file: !2, line: 110, column: 3)
!289 = !DILocation(line: 110, column: 3, scope: !290)
!290 = distinct !DILexicalBlock(scope: !291, file: !2, line: 110, column: 3)
!291 = distinct !DILexicalBlock(scope: !288, file: !2, line: 110, column: 3)
!292 = !DILocation(line: 111, column: 1, scope: !277)
!293 = !DISubprogram(name: "gsl_error", scope: !17, file: !17, line: 77, type: !294, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!294 = !DISubroutineType(types: !295)
!295 = !{null, !296, !296, !18, !18}
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
