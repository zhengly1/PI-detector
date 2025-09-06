; ModuleID = 'bessel_Y1.c'
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
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 83, i32 noundef 1) #6, !dbg !157
  br label %276, !dbg !157

9:                                                ; preds = %2
  %10 = fcmp olt double %0, 0x1922D0E5604189, !dbg !159
  br i1 %10, label %11, label %13, !dbg !160

11:                                               ; preds = %9
  store double 0x7FF0000000000000, ptr %1, align 8, !dbg !161, !tbaa !151
  %12 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !161
  store double 0x7FF0000000000000, ptr %12, align 8, !dbg !161, !tbaa !156
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 86, i32 noundef 16) #6, !dbg !164
  br label %276, !dbg !164

13:                                               ; preds = %9
  %14 = fcmp olt double %0, 0x3E60000000000000, !dbg !166
  br i1 %14, label %15, label %64, !dbg !167

15:                                               ; preds = %13
  %16 = fmul double %0, 5.000000e-01, !dbg !168
  %17 = tail call double @log(double noundef %16) #6, !dbg !169
  tail call void @llvm.dbg.value(metadata double %17, metadata !113, metadata !DIExpression()), !dbg !140
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6, !dbg !170
  %18 = call i32 @gsl_sf_bessel_J1_e(double noundef %0, ptr noundef nonnull %3) #6, !dbg !171
  tail call void @llvm.dbg.value(metadata i32 %18, metadata !120, metadata !DIExpression()), !dbg !140
  call void @llvm.dbg.value(metadata !172, metadata !173, metadata !DIExpression()), !dbg !195
  call void @llvm.dbg.value(metadata double -1.000000e+00, metadata !181, metadata !DIExpression()), !dbg !195
  call void @llvm.dbg.value(metadata ptr undef, metadata !182, metadata !DIExpression()), !dbg !195
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !184, metadata !DIExpression()), !dbg !195
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !185, metadata !DIExpression()), !dbg !195
  call void @llvm.dbg.value(metadata double -1.000000e+00, metadata !186, metadata !DIExpression()), !dbg !195
  call void @llvm.dbg.value(metadata double -2.000000e+00, metadata !187, metadata !DIExpression()), !dbg !195
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !188, metadata !DIExpression()), !dbg !195
  call void @llvm.dbg.value(metadata i32 13, metadata !183, metadata !DIExpression()), !dbg !195
  br label %19, !dbg !197

19:                                               ; preds = %19, %15
  %20 = phi i64 [ 13, %15 ], [ %35, %19 ]
  %21 = phi double [ 0.000000e+00, %15 ], [ %28, %19 ]
  %22 = phi double [ 0.000000e+00, %15 ], [ %34, %19 ]
  %23 = phi double [ 0.000000e+00, %15 ], [ %21, %19 ]
  call void @llvm.dbg.value(metadata i64 %20, metadata !183, metadata !DIExpression()), !dbg !195
  call void @llvm.dbg.value(metadata double %21, metadata !184, metadata !DIExpression()), !dbg !195
  call void @llvm.dbg.value(metadata double %22, metadata !188, metadata !DIExpression()), !dbg !195
  call void @llvm.dbg.value(metadata double %23, metadata !185, metadata !DIExpression()), !dbg !195
  call void @llvm.dbg.value(metadata double %21, metadata !189, metadata !DIExpression()), !dbg !198
  %24 = fmul double %21, -2.000000e+00, !dbg !199
  %25 = fsub double %24, %23, !dbg !200
  %26 = getelementptr inbounds double, ptr @by1_data, i64 %20, !dbg !201
  %27 = load double, ptr %26, align 8, !dbg !201, !tbaa !202
  %28 = fadd double %25, %27, !dbg !203
  call void @llvm.dbg.value(metadata double %28, metadata !184, metadata !DIExpression()), !dbg !195
  %29 = call double @llvm.fabs.f64(double %24), !dbg !204
  %30 = call double @llvm.fabs.f64(double %23), !dbg !205
  %31 = fadd double %29, %30, !dbg !206
  %32 = call double @llvm.fabs.f64(double %27), !dbg !207
  %33 = fadd double %31, %32, !dbg !208
  %34 = fadd double %22, %33, !dbg !209
  call void @llvm.dbg.value(metadata double %34, metadata !188, metadata !DIExpression()), !dbg !195
  call void @llvm.dbg.value(metadata double %21, metadata !185, metadata !DIExpression()), !dbg !195
  %35 = add nsw i64 %20, -1, !dbg !210
  call void @llvm.dbg.value(metadata i64 %35, metadata !183, metadata !DIExpression()), !dbg !195
  %36 = icmp ugt i64 %20, 1, !dbg !211
  br i1 %36, label %19, label %37, !dbg !197, !llvm.loop !212

37:                                               ; preds = %19
  %38 = fneg double %28, !dbg !215
  call void @llvm.dbg.value(metadata double %38, metadata !193, metadata !DIExpression()), !dbg !216
  %39 = fsub double %38, %21, !dbg !217
  %40 = fadd double %39, 0x3F906CD9FB9F847D, !dbg !218
  call void @llvm.dbg.value(metadata double %40, metadata !184, metadata !DIExpression()), !dbg !195
  %41 = call double @llvm.fabs.f64(double %38), !dbg !219
  %42 = call double @llvm.fabs.f64(double %21), !dbg !220
  %43 = fadd double %42, %41, !dbg !221
  %44 = fadd double %43, 0x3F906CD9FB9F847D, !dbg !222
  %45 = fadd double %34, %44, !dbg !223
  call void @llvm.dbg.value(metadata double %45, metadata !188, metadata !DIExpression()), !dbg !195
  tail call void @llvm.dbg.value(metadata double %40, metadata !119, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !140
  %46 = fmul double %45, 0x3CB0000000000000, !dbg !224
  %47 = fadd double %46, 1.860000e-18, !dbg !225
  tail call void @llvm.dbg.value(metadata double %47, metadata !119, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !140
  %48 = fmul double %17, 0x3FE45F306DC9C883, !dbg !226
  %49 = load double, ptr %3, align 8, !dbg !227, !tbaa !151
  %50 = fmul double %48, %49, !dbg !228
  %51 = fadd double %40, 5.000000e-01, !dbg !229
  %52 = fdiv double %51, %0, !dbg !230
  %53 = fadd double %50, %52, !dbg !231
  store double %53, ptr %1, align 8, !dbg !232, !tbaa !151
  %54 = call double @llvm.fabs.f64(double %17), !dbg !233
  %55 = fmul double %49, 0x3CB0000000000000, !dbg !234
  %56 = call double @llvm.fabs.f64(double %55), !dbg !235
  %57 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !236
  %58 = load double, ptr %57, align 8, !dbg !236, !tbaa !156
  %59 = fadd double %56, %58, !dbg !237
  %60 = fmul double %54, %59, !dbg !238
  %61 = fdiv double %47, %0, !dbg !239
  %62 = fadd double %60, %61, !dbg !240
  %63 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !241
  store double %62, ptr %63, align 8, !dbg !242, !tbaa !156
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6, !dbg !243
  br label %276

64:                                               ; preds = %13
  %65 = fcmp olt double %0, 4.000000e+00, !dbg !244
  br i1 %65, label %66, label %123, !dbg !245

66:                                               ; preds = %64
  %67 = fmul double %0, 5.000000e-01, !dbg !246
  %68 = tail call double @log(double noundef %67) #6, !dbg !247
  tail call void @llvm.dbg.value(metadata double %68, metadata !121, metadata !DIExpression()), !dbg !142
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #6, !dbg !248
  %69 = fmul double %0, 1.250000e-01, !dbg !249
  %70 = fmul double %69, %0, !dbg !250
  %71 = fadd double %70, -1.000000e+00, !dbg !251
  call void @llvm.dbg.value(metadata !172, metadata !173, metadata !DIExpression()), !dbg !252
  call void @llvm.dbg.value(metadata double %71, metadata !181, metadata !DIExpression()), !dbg !252
  call void @llvm.dbg.value(metadata ptr undef, metadata !182, metadata !DIExpression()), !dbg !252
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !184, metadata !DIExpression()), !dbg !252
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !185, metadata !DIExpression()), !dbg !252
  %72 = fmul double %71, 2.000000e+00, !dbg !254
  %73 = fadd double %72, 1.000000e+00, !dbg !255
  %74 = fadd double %73, -1.000000e+00, !dbg !256
  %75 = fmul double %74, 5.000000e-01, !dbg !257
  call void @llvm.dbg.value(metadata double %75, metadata !186, metadata !DIExpression()), !dbg !252
  %76 = fmul double %75, 2.000000e+00, !dbg !258
  call void @llvm.dbg.value(metadata double %76, metadata !187, metadata !DIExpression()), !dbg !252
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !188, metadata !DIExpression()), !dbg !252
  call void @llvm.dbg.value(metadata i32 13, metadata !183, metadata !DIExpression()), !dbg !252
  br label %77, !dbg !259

77:                                               ; preds = %77, %66
  %78 = phi i64 [ 13, %66 ], [ %93, %77 ]
  %79 = phi double [ 0.000000e+00, %66 ], [ %86, %77 ]
  %80 = phi double [ 0.000000e+00, %66 ], [ %92, %77 ]
  %81 = phi double [ 0.000000e+00, %66 ], [ %79, %77 ]
  call void @llvm.dbg.value(metadata i64 %78, metadata !183, metadata !DIExpression()), !dbg !252
  call void @llvm.dbg.value(metadata double %79, metadata !184, metadata !DIExpression()), !dbg !252
  call void @llvm.dbg.value(metadata double %80, metadata !188, metadata !DIExpression()), !dbg !252
  call void @llvm.dbg.value(metadata double %81, metadata !185, metadata !DIExpression()), !dbg !252
  call void @llvm.dbg.value(metadata double %79, metadata !189, metadata !DIExpression()), !dbg !260
  %82 = fmul double %76, %79, !dbg !261
  %83 = fsub double %82, %81, !dbg !262
  %84 = getelementptr inbounds double, ptr @by1_data, i64 %78, !dbg !263
  %85 = load double, ptr %84, align 8, !dbg !263, !tbaa !202
  %86 = fadd double %83, %85, !dbg !264
  call void @llvm.dbg.value(metadata double %86, metadata !184, metadata !DIExpression()), !dbg !252
  %87 = tail call double @llvm.fabs.f64(double %82), !dbg !265
  %88 = tail call double @llvm.fabs.f64(double %81), !dbg !266
  %89 = fadd double %87, %88, !dbg !267
  %90 = tail call double @llvm.fabs.f64(double %85), !dbg !268
  %91 = fadd double %89, %90, !dbg !269
  %92 = fadd double %80, %91, !dbg !270
  call void @llvm.dbg.value(metadata double %92, metadata !188, metadata !DIExpression()), !dbg !252
  call void @llvm.dbg.value(metadata double %79, metadata !185, metadata !DIExpression()), !dbg !252
  %93 = add nsw i64 %78, -1, !dbg !271
  call void @llvm.dbg.value(metadata i64 %93, metadata !183, metadata !DIExpression()), !dbg !252
  %94 = icmp ugt i64 %78, 1, !dbg !272
  br i1 %94, label %77, label %95, !dbg !259, !llvm.loop !273

95:                                               ; preds = %77
  call void @llvm.dbg.value(metadata double %86, metadata !193, metadata !DIExpression()), !dbg !275
  %96 = fmul double %75, %86, !dbg !276
  %97 = fsub double %96, %79, !dbg !277
  %98 = fadd double %97, 0x3F906CD9FB9F847D, !dbg !278
  call void @llvm.dbg.value(metadata double %98, metadata !184, metadata !DIExpression()), !dbg !252
  %99 = tail call double @llvm.fabs.f64(double %96), !dbg !279
  %100 = tail call double @llvm.fabs.f64(double %79), !dbg !280
  %101 = fadd double %100, %99, !dbg !281
  %102 = fadd double %101, 0x3F906CD9FB9F847D, !dbg !282
  %103 = fadd double %92, %102, !dbg !283
  call void @llvm.dbg.value(metadata double %103, metadata !188, metadata !DIExpression()), !dbg !252
  tail call void @llvm.dbg.value(metadata double %98, metadata !126, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !142
  %104 = fmul double %103, 0x3CB0000000000000, !dbg !284
  %105 = fadd double %104, 1.860000e-18, !dbg !285
  tail call void @llvm.dbg.value(metadata double %105, metadata !126, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !142
  %106 = call i32 @gsl_sf_bessel_J1_e(double noundef %0, ptr noundef nonnull %4) #6, !dbg !286
  tail call void @llvm.dbg.value(metadata i32 %106, metadata !124, metadata !DIExpression()), !dbg !142
  %107 = fmul double %68, 0x3FE45F306DC9C883, !dbg !287
  %108 = load double, ptr %4, align 8, !dbg !288, !tbaa !151
  %109 = fmul double %107, %108, !dbg !289
  %110 = fadd double %98, 5.000000e-01, !dbg !290
  %111 = fdiv double %110, %0, !dbg !291
  %112 = fadd double %109, %111, !dbg !292
  store double %112, ptr %1, align 8, !dbg !293, !tbaa !151
  %113 = call double @llvm.fabs.f64(double %68), !dbg !294
  %114 = fmul double %108, 0x3CB0000000000000, !dbg !295
  %115 = call double @llvm.fabs.f64(double %114), !dbg !296
  %116 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !297
  %117 = load double, ptr %116, align 8, !dbg !297, !tbaa !156
  %118 = fadd double %115, %117, !dbg !298
  %119 = fmul double %113, %118, !dbg !299
  %120 = fdiv double %105, %0, !dbg !300
  %121 = fadd double %119, %120, !dbg !301
  %122 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !302
  store double %121, ptr %122, align 8, !dbg !303, !tbaa !156
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #6, !dbg !304
  br label %276

123:                                              ; preds = %64
  %124 = fcmp olt double %0, 0x4330000000000000, !dbg !305
  br i1 %124, label %125, label %274, !dbg !306

125:                                              ; preds = %123
  %126 = fmul double %0, %0, !dbg !307
  %127 = fdiv double 3.200000e+01, %126, !dbg !308
  %128 = fadd double %127, -1.000000e+00, !dbg !309
  tail call void @llvm.dbg.value(metadata double %128, metadata !127, metadata !DIExpression()), !dbg !144
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #6, !dbg !310
  call void @llvm.dbg.value(metadata ptr @_gsl_sf_bessel_amp_phase_bm1_cs, metadata !173, metadata !DIExpression()), !dbg !311
  call void @llvm.dbg.value(metadata double %128, metadata !181, metadata !DIExpression()), !dbg !311
  call void @llvm.dbg.value(metadata ptr undef, metadata !182, metadata !DIExpression()), !dbg !311
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !184, metadata !DIExpression()), !dbg !311
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !185, metadata !DIExpression()), !dbg !311
  %129 = fmul double %128, 2.000000e+00, !dbg !313
  %130 = load double, ptr getelementptr inbounds (%struct.cheb_series_struct, ptr @_gsl_sf_bessel_amp_phase_bm1_cs, i64 0, i32 2), align 8, !dbg !314, !tbaa !315
  %131 = fsub double %129, %130, !dbg !319
  %132 = load double, ptr getelementptr inbounds (%struct.cheb_series_struct, ptr @_gsl_sf_bessel_amp_phase_bm1_cs, i64 0, i32 3), align 8, !dbg !320, !tbaa !321
  %133 = fsub double %131, %132, !dbg !322
  %134 = fsub double %132, %130, !dbg !323
  %135 = fdiv double %133, %134, !dbg !324
  call void @llvm.dbg.value(metadata double %135, metadata !186, metadata !DIExpression()), !dbg !311
  %136 = fmul double %135, 2.000000e+00, !dbg !325
  call void @llvm.dbg.value(metadata double %136, metadata !187, metadata !DIExpression()), !dbg !311
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !188, metadata !DIExpression()), !dbg !311
  %137 = load i32, ptr getelementptr inbounds (%struct.cheb_series_struct, ptr @_gsl_sf_bessel_amp_phase_bm1_cs, i64 0, i32 1), align 8, !dbg !326, !tbaa !327
  call void @llvm.dbg.value(metadata i32 %137, metadata !183, metadata !DIExpression()), !dbg !311
  %138 = icmp sgt i32 %137, 0, !dbg !328
  %139 = load ptr, ptr @_gsl_sf_bessel_amp_phase_bm1_cs, align 8, !dbg !329, !tbaa !330
  br i1 %138, label %140, label %160, !dbg !331

140:                                              ; preds = %125
  %141 = zext nneg i32 %137 to i64, !dbg !331
  br label %142, !dbg !331

142:                                              ; preds = %142, %140
  %143 = phi i64 [ %141, %140 ], [ %158, %142 ]
  %144 = phi double [ 0.000000e+00, %140 ], [ %151, %142 ]
  %145 = phi double [ 0.000000e+00, %140 ], [ %157, %142 ]
  %146 = phi double [ 0.000000e+00, %140 ], [ %144, %142 ]
  call void @llvm.dbg.value(metadata i64 %143, metadata !183, metadata !DIExpression()), !dbg !311
  call void @llvm.dbg.value(metadata double %144, metadata !184, metadata !DIExpression()), !dbg !311
  call void @llvm.dbg.value(metadata double %145, metadata !188, metadata !DIExpression()), !dbg !311
  call void @llvm.dbg.value(metadata double %146, metadata !185, metadata !DIExpression()), !dbg !311
  call void @llvm.dbg.value(metadata double %144, metadata !189, metadata !DIExpression()), !dbg !332
  %147 = fmul double %136, %144, !dbg !333
  %148 = fsub double %147, %146, !dbg !334
  %149 = getelementptr inbounds double, ptr %139, i64 %143, !dbg !335
  %150 = load double, ptr %149, align 8, !dbg !335, !tbaa !202
  %151 = fadd double %148, %150, !dbg !336
  call void @llvm.dbg.value(metadata double %151, metadata !184, metadata !DIExpression()), !dbg !311
  %152 = tail call double @llvm.fabs.f64(double %147), !dbg !337
  %153 = tail call double @llvm.fabs.f64(double %146), !dbg !338
  %154 = fadd double %152, %153, !dbg !339
  %155 = tail call double @llvm.fabs.f64(double %150), !dbg !340
  %156 = fadd double %154, %155, !dbg !341
  %157 = fadd double %145, %156, !dbg !342
  call void @llvm.dbg.value(metadata double %157, metadata !188, metadata !DIExpression()), !dbg !311
  call void @llvm.dbg.value(metadata double %144, metadata !185, metadata !DIExpression()), !dbg !311
  %158 = add nsw i64 %143, -1, !dbg !343
  call void @llvm.dbg.value(metadata i64 %158, metadata !183, metadata !DIExpression()), !dbg !311
  %159 = icmp ugt i64 %143, 1, !dbg !328
  br i1 %159, label %142, label %160, !dbg !331, !llvm.loop !344

160:                                              ; preds = %142, %125
  %161 = phi double [ 0.000000e+00, %125 ], [ %144, %142 ], !dbg !311
  %162 = phi double [ 0.000000e+00, %125 ], [ %157, %142 ], !dbg !311
  %163 = phi double [ 0.000000e+00, %125 ], [ %151, %142 ], !dbg !311
  call void @llvm.dbg.value(metadata double %163, metadata !193, metadata !DIExpression()), !dbg !346
  %164 = fmul double %135, %163, !dbg !347
  %165 = fsub double %164, %161, !dbg !348
  %166 = load double, ptr %139, align 8, !dbg !349, !tbaa !202
  %167 = fmul double %166, 5.000000e-01, !dbg !350
  %168 = fadd double %165, %167, !dbg !351
  call void @llvm.dbg.value(metadata double %168, metadata !184, metadata !DIExpression()), !dbg !311
  %169 = tail call double @llvm.fabs.f64(double %164), !dbg !352
  %170 = tail call double @llvm.fabs.f64(double %161), !dbg !353
  %171 = fadd double %170, %169, !dbg !354
  %172 = tail call double @llvm.fabs.f64(double %166), !dbg !355
  %173 = fmul double %172, 5.000000e-01, !dbg !356
  %174 = fadd double %171, %173, !dbg !357
  %175 = fadd double %162, %174, !dbg !358
  call void @llvm.dbg.value(metadata double %175, metadata !188, metadata !DIExpression()), !dbg !311
  tail call void @llvm.dbg.value(metadata double %168, metadata !130, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !144
  %176 = fmul double %175, 0x3CB0000000000000, !dbg !359
  %177 = sext i32 %137 to i64, !dbg !360
  %178 = getelementptr inbounds double, ptr %139, i64 %177, !dbg !360
  %179 = load double, ptr %178, align 8, !dbg !360, !tbaa !202
  %180 = tail call double @llvm.fabs.f64(double %179), !dbg !361
  %181 = fadd double %180, %176, !dbg !362
  tail call void @llvm.dbg.value(metadata double %181, metadata !130, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !144
  tail call void @llvm.dbg.value(metadata i32 0, metadata !133, metadata !DIExpression()), !dbg !144
  call void @llvm.dbg.value(metadata ptr @_gsl_sf_bessel_amp_phase_bth1_cs, metadata !173, metadata !DIExpression()), !dbg !363
  call void @llvm.dbg.value(metadata double %128, metadata !181, metadata !DIExpression()), !dbg !363
  call void @llvm.dbg.value(metadata ptr undef, metadata !182, metadata !DIExpression()), !dbg !363
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !184, metadata !DIExpression()), !dbg !363
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !185, metadata !DIExpression()), !dbg !363
  %182 = load double, ptr getelementptr inbounds (%struct.cheb_series_struct, ptr @_gsl_sf_bessel_amp_phase_bth1_cs, i64 0, i32 2), align 8, !dbg !365, !tbaa !315
  %183 = fsub double %129, %182, !dbg !366
  %184 = load double, ptr getelementptr inbounds (%struct.cheb_series_struct, ptr @_gsl_sf_bessel_amp_phase_bth1_cs, i64 0, i32 3), align 8, !dbg !367, !tbaa !321
  %185 = fsub double %183, %184, !dbg !368
  %186 = fsub double %184, %182, !dbg !369
  %187 = fdiv double %185, %186, !dbg !370
  call void @llvm.dbg.value(metadata double %187, metadata !186, metadata !DIExpression()), !dbg !363
  %188 = fmul double %187, 2.000000e+00, !dbg !371
  call void @llvm.dbg.value(metadata double %188, metadata !187, metadata !DIExpression()), !dbg !363
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !188, metadata !DIExpression()), !dbg !363
  %189 = load i32, ptr getelementptr inbounds (%struct.cheb_series_struct, ptr @_gsl_sf_bessel_amp_phase_bth1_cs, i64 0, i32 1), align 8, !dbg !372, !tbaa !327
  call void @llvm.dbg.value(metadata i32 %189, metadata !183, metadata !DIExpression()), !dbg !363
  %190 = icmp sgt i32 %189, 0, !dbg !373
  %191 = load ptr, ptr @_gsl_sf_bessel_amp_phase_bth1_cs, align 8, !dbg !374, !tbaa !330
  br i1 %190, label %192, label %246, !dbg !375

192:                                              ; preds = %160
  %193 = zext nneg i32 %189 to i64, !dbg !375
  %194 = and i64 %193, 3, !dbg !375
  %195 = icmp eq i64 %194, 0, !dbg !375
  br i1 %195, label %209, label %196, !dbg !375

196:                                              ; preds = %192, %196
  %197 = phi i64 [ %206, %196 ], [ %193, %192 ]
  %198 = phi double [ %205, %196 ], [ 0.000000e+00, %192 ]
  %199 = phi double [ %198, %196 ], [ 0.000000e+00, %192 ]
  %200 = phi i64 [ %207, %196 ], [ 0, %192 ]
  call void @llvm.dbg.value(metadata i64 %197, metadata !183, metadata !DIExpression()), !dbg !363
  call void @llvm.dbg.value(metadata double %198, metadata !184, metadata !DIExpression()), !dbg !363
  call void @llvm.dbg.value(metadata double poison, metadata !188, metadata !DIExpression()), !dbg !363
  call void @llvm.dbg.value(metadata double %199, metadata !185, metadata !DIExpression()), !dbg !363
  call void @llvm.dbg.value(metadata double %198, metadata !189, metadata !DIExpression()), !dbg !376
  %201 = fmul double %188, %198, !dbg !377
  %202 = fsub double %201, %199, !dbg !378
  %203 = getelementptr inbounds double, ptr %191, i64 %197, !dbg !379
  %204 = load double, ptr %203, align 8, !dbg !379, !tbaa !202
  %205 = fadd double %202, %204, !dbg !380
  call void @llvm.dbg.value(metadata double %205, metadata !184, metadata !DIExpression()), !dbg !363
  call void @llvm.dbg.value(metadata double %198, metadata !185, metadata !DIExpression()), !dbg !363
  %206 = add nsw i64 %197, -1, !dbg !381
  call void @llvm.dbg.value(metadata i64 %206, metadata !183, metadata !DIExpression()), !dbg !363
  %207 = add i64 %200, 1, !dbg !375
  %208 = icmp eq i64 %207, %194, !dbg !375
  br i1 %208, label %209, label %196, !dbg !375, !llvm.loop !382

209:                                              ; preds = %196, %192
  %210 = phi i64 [ %193, %192 ], [ %206, %196 ]
  %211 = phi double [ 0.000000e+00, %192 ], [ %205, %196 ]
  %212 = phi double [ 0.000000e+00, %192 ], [ %198, %196 ]
  %213 = phi double [ undef, %192 ], [ %198, %196 ]
  %214 = phi double [ undef, %192 ], [ %205, %196 ]
  %215 = icmp ult i32 %189, 4, !dbg !375
  br i1 %215, label %246, label %216, !dbg !375

216:                                              ; preds = %209
  %217 = getelementptr double, ptr %191, i64 -1, !dbg !375
  %218 = getelementptr double, ptr %191, i64 -2, !dbg !375
  br label %219, !dbg !375

219:                                              ; preds = %219, %216
  %220 = phi i64 [ %210, %216 ], [ %244, %219 ]
  %221 = phi double [ %211, %216 ], [ %243, %219 ]
  %222 = phi double [ %212, %216 ], [ %237, %219 ]
  call void @llvm.dbg.value(metadata i64 %220, metadata !183, metadata !DIExpression()), !dbg !363
  call void @llvm.dbg.value(metadata double %221, metadata !184, metadata !DIExpression()), !dbg !363
  call void @llvm.dbg.value(metadata double poison, metadata !188, metadata !DIExpression()), !dbg !363
  call void @llvm.dbg.value(metadata double %222, metadata !185, metadata !DIExpression()), !dbg !363
  call void @llvm.dbg.value(metadata double %221, metadata !189, metadata !DIExpression()), !dbg !376
  %223 = fmul double %188, %221, !dbg !377
  %224 = fsub double %223, %222, !dbg !378
  %225 = getelementptr inbounds double, ptr %191, i64 %220, !dbg !379
  %226 = load double, ptr %225, align 8, !dbg !379, !tbaa !202
  %227 = fadd double %224, %226, !dbg !380
  call void @llvm.dbg.value(metadata double %227, metadata !184, metadata !DIExpression()), !dbg !363
  call void @llvm.dbg.value(metadata double %221, metadata !185, metadata !DIExpression()), !dbg !363
  call void @llvm.dbg.value(metadata i64 %220, metadata !183, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !363
  call void @llvm.dbg.value(metadata i64 %220, metadata !183, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !363
  call void @llvm.dbg.value(metadata double %227, metadata !184, metadata !DIExpression()), !dbg !363
  call void @llvm.dbg.value(metadata double poison, metadata !188, metadata !DIExpression()), !dbg !363
  call void @llvm.dbg.value(metadata double %221, metadata !185, metadata !DIExpression()), !dbg !363
  call void @llvm.dbg.value(metadata double %227, metadata !189, metadata !DIExpression()), !dbg !376
  %228 = fmul double %188, %227, !dbg !377
  %229 = fsub double %228, %221, !dbg !378
  %230 = getelementptr double, ptr %217, i64 %220, !dbg !379
  %231 = load double, ptr %230, align 8, !dbg !379, !tbaa !202
  %232 = fadd double %229, %231, !dbg !380
  call void @llvm.dbg.value(metadata double %232, metadata !184, metadata !DIExpression()), !dbg !363
  call void @llvm.dbg.value(metadata double %227, metadata !185, metadata !DIExpression()), !dbg !363
  call void @llvm.dbg.value(metadata i64 %220, metadata !183, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !363
  call void @llvm.dbg.value(metadata i64 %220, metadata !183, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !363
  call void @llvm.dbg.value(metadata double %232, metadata !184, metadata !DIExpression()), !dbg !363
  call void @llvm.dbg.value(metadata double poison, metadata !188, metadata !DIExpression()), !dbg !363
  call void @llvm.dbg.value(metadata double %227, metadata !185, metadata !DIExpression()), !dbg !363
  call void @llvm.dbg.value(metadata double %232, metadata !189, metadata !DIExpression()), !dbg !376
  %233 = fmul double %188, %232, !dbg !377
  %234 = fsub double %233, %227, !dbg !378
  %235 = getelementptr double, ptr %218, i64 %220, !dbg !379
  %236 = load double, ptr %235, align 8, !dbg !379, !tbaa !202
  %237 = fadd double %234, %236, !dbg !380
  call void @llvm.dbg.value(metadata double %237, metadata !184, metadata !DIExpression()), !dbg !363
  call void @llvm.dbg.value(metadata double %232, metadata !185, metadata !DIExpression()), !dbg !363
  %238 = add nsw i64 %220, -3, !dbg !381
  call void @llvm.dbg.value(metadata i64 %238, metadata !183, metadata !DIExpression()), !dbg !363
  call void @llvm.dbg.value(metadata i64 %238, metadata !183, metadata !DIExpression()), !dbg !363
  call void @llvm.dbg.value(metadata double %237, metadata !184, metadata !DIExpression()), !dbg !363
  call void @llvm.dbg.value(metadata double poison, metadata !188, metadata !DIExpression()), !dbg !363
  call void @llvm.dbg.value(metadata double %232, metadata !185, metadata !DIExpression()), !dbg !363
  call void @llvm.dbg.value(metadata double %237, metadata !189, metadata !DIExpression()), !dbg !376
  %239 = fmul double %188, %237, !dbg !377
  %240 = fsub double %239, %232, !dbg !378
  %241 = getelementptr inbounds double, ptr %191, i64 %238, !dbg !379
  %242 = load double, ptr %241, align 8, !dbg !379, !tbaa !202
  %243 = fadd double %240, %242, !dbg !380
  call void @llvm.dbg.value(metadata double %243, metadata !184, metadata !DIExpression()), !dbg !363
  call void @llvm.dbg.value(metadata double %237, metadata !185, metadata !DIExpression()), !dbg !363
  %244 = add nsw i64 %220, -4, !dbg !381
  call void @llvm.dbg.value(metadata i64 %244, metadata !183, metadata !DIExpression()), !dbg !363
  %245 = icmp ugt i64 %238, 1, !dbg !373
  br i1 %245, label %219, label %246, !dbg !375, !llvm.loop !384

246:                                              ; preds = %209, %219, %160
  %247 = phi double [ 0.000000e+00, %160 ], [ %213, %209 ], [ %237, %219 ], !dbg !363
  %248 = phi double [ 0.000000e+00, %160 ], [ %214, %209 ], [ %243, %219 ], !dbg !363
  call void @llvm.dbg.value(metadata double %248, metadata !193, metadata !DIExpression()), !dbg !386
  %249 = fmul double %187, %248, !dbg !387
  %250 = fsub double %249, %247, !dbg !388
  %251 = load double, ptr %191, align 8, !dbg !389, !tbaa !202
  %252 = fmul double %251, 5.000000e-01, !dbg !390
  %253 = fadd double %250, %252, !dbg !391
  call void @llvm.dbg.value(metadata double %253, metadata !184, metadata !DIExpression()), !dbg !363
  call void @llvm.dbg.value(metadata double poison, metadata !188, metadata !DIExpression()), !dbg !363
  tail call void @llvm.dbg.value(metadata double %253, metadata !131, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !144
  tail call void @llvm.dbg.value(metadata double poison, metadata !131, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !144
  tail call void @llvm.dbg.value(metadata i32 0, metadata !135, metadata !DIExpression()), !dbg !144
  %254 = fdiv double %253, %0, !dbg !392
  %255 = call i32 @gsl_sf_bessel_cos_pi4_e(double noundef %0, double noundef %254, ptr noundef nonnull %5) #6, !dbg !393
  tail call void @llvm.dbg.value(metadata i32 %255, metadata !136, metadata !DIExpression()), !dbg !144
  %256 = call double @sqrt(double noundef %0) #6, !dbg !394
  tail call void @llvm.dbg.value(metadata double %256, metadata !137, metadata !DIExpression()), !dbg !144
  %257 = fadd double %168, 7.500000e-01, !dbg !395
  %258 = fdiv double %257, %256, !dbg !396
  tail call void @llvm.dbg.value(metadata double %258, metadata !138, metadata !DIExpression()), !dbg !144
  %259 = fneg double %258, !dbg !397
  %260 = load double, ptr %5, align 8, !dbg !398, !tbaa !151
  %261 = fmul double %260, %259, !dbg !399
  store double %261, ptr %1, align 8, !dbg !400, !tbaa !151
  %262 = call double @llvm.fabs.f64(double %260), !dbg !401
  %263 = fmul double %181, %262, !dbg !402
  %264 = fdiv double %263, %256, !dbg !403
  %265 = call double @llvm.fabs.f64(double %258), !dbg !404
  %266 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !405
  %267 = load double, ptr %266, align 8, !dbg !405, !tbaa !156
  %268 = fmul double %265, %267, !dbg !406
  %269 = fadd double %264, %268, !dbg !407
  %270 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !408
  %271 = call double @llvm.fabs.f64(double %261), !dbg !409
  %272 = fmul double %271, 0x3CB0000000000000, !dbg !410
  %273 = fadd double %272, %269, !dbg !411
  store double %273, ptr %270, align 8, !dbg !411, !tbaa !156
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #6, !dbg !412
  br label %276

274:                                              ; preds = %123
  store double 0.000000e+00, ptr %1, align 8, !dbg !413, !tbaa !151
  %275 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !413
  store double 0x10000000000000, ptr %275, align 8, !dbg !413, !tbaa !156
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 125, i32 noundef 15) #6, !dbg !416
  br label %276, !dbg !416

276:                                              ; preds = %274, %246, %95, %37, %11, %7
  %277 = phi i32 [ 1, %7 ], [ 16, %11 ], [ %18, %37 ], [ %106, %95 ], [ %255, %246 ], [ 15, %274 ], !dbg !418
  ret i32 %277, !dbg !419
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare !dbg !420 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !425 double @log(double noundef) local_unnamed_addr #3

declare !dbg !429 i32 @gsl_sf_bessel_J1_e(double noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare !dbg !431 i32 @gsl_sf_bessel_cos_pi4_e(double noundef, double noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !435 double @sqrt(double noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_bessel_Y1(double noundef %0) local_unnamed_addr #0 !dbg !436 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !443
  call void @llvm.dbg.assign(metadata i1 undef, metadata !441, metadata !DIExpression(), metadata !443, metadata ptr %2, metadata !DIExpression()), !dbg !444
  tail call void @llvm.dbg.value(metadata double %0, metadata !440, metadata !DIExpression()), !dbg !444
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #6, !dbg !445
  %3 = call i32 @gsl_sf_bessel_Y1_e(double noundef %0, ptr noundef nonnull %2), !dbg !445
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !442, metadata !DIExpression()), !dbg !444
  %4 = icmp eq i32 %3, 0, !dbg !446
  br i1 %4, label %6, label %5, !dbg !445

5:                                                ; preds = %1
  tail call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 136, i32 noundef %3) #6, !dbg !448
  br label %6, !dbg !448

6:                                                ; preds = %1, %5
  %7 = load double, ptr %2, align 8, !dbg !445, !tbaa !151
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #6, !dbg !451
  ret double %7, !dbg !451
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
!169 = !DILocation(line: 89, column: 27, scope: !114)
!170 = !DILocation(line: 90, column: 5, scope: !114)
!171 = !DILocation(line: 92, column: 18, scope: !114)
!172 = !{}
!173 = !DILocalVariable(name: "cs", arg: 1, scope: !174, file: !175, line: 3, type: !178)
!174 = distinct !DISubprogram(name: "cheb_eval_e", scope: !175, file: !175, line: 3, type: !176, scopeLine: 6, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !180)
!175 = !DIFile(filename: "./cheb_eval.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "540fdb014588703ccd0b3c3b3ea8a26b")
!176 = !DISubroutineType(types: !177)
!177 = !{!33, !178, !98, !99}
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !73)
!180 = !{!173, !181, !182, !183, !184, !185, !186, !187, !188, !189, !193}
!181 = !DILocalVariable(name: "x", arg: 2, scope: !174, file: !175, line: 4, type: !98)
!182 = !DILocalVariable(name: "result", arg: 3, scope: !174, file: !175, line: 5, type: !99)
!183 = !DILocalVariable(name: "j", scope: !174, file: !175, line: 7, type: !33)
!184 = !DILocalVariable(name: "d", scope: !174, file: !175, line: 8, type: !79)
!185 = !DILocalVariable(name: "dd", scope: !174, file: !175, line: 9, type: !79)
!186 = !DILocalVariable(name: "y", scope: !174, file: !175, line: 11, type: !79)
!187 = !DILocalVariable(name: "y2", scope: !174, file: !175, line: 12, type: !79)
!188 = !DILocalVariable(name: "e", scope: !174, file: !175, line: 14, type: !79)
!189 = !DILocalVariable(name: "temp", scope: !190, file: !175, line: 17, type: !79)
!190 = distinct !DILexicalBlock(scope: !191, file: !175, line: 16, column: 33)
!191 = distinct !DILexicalBlock(scope: !192, file: !175, line: 16, column: 3)
!192 = distinct !DILexicalBlock(scope: !174, file: !175, line: 16, column: 3)
!193 = !DILocalVariable(name: "temp", scope: !194, file: !175, line: 24, type: !79)
!194 = distinct !DILexicalBlock(scope: !174, file: !175, line: 23, column: 3)
!195 = !DILocation(line: 0, scope: !174, inlinedAt: !196)
!196 = distinct !DILocation(line: 93, column: 5, scope: !114)
!197 = !DILocation(line: 16, column: 3, scope: !192, inlinedAt: !196)
!198 = !DILocation(line: 0, scope: !190, inlinedAt: !196)
!199 = !DILocation(line: 18, column: 11, scope: !190, inlinedAt: !196)
!200 = !DILocation(line: 18, column: 14, scope: !190, inlinedAt: !196)
!201 = !DILocation(line: 18, column: 21, scope: !190, inlinedAt: !196)
!202 = !{!153, !153, i64 0}
!203 = !DILocation(line: 18, column: 19, scope: !190, inlinedAt: !196)
!204 = !DILocation(line: 19, column: 10, scope: !190, inlinedAt: !196)
!205 = !DILocation(line: 19, column: 26, scope: !190, inlinedAt: !196)
!206 = !DILocation(line: 19, column: 24, scope: !190, inlinedAt: !196)
!207 = !DILocation(line: 19, column: 37, scope: !190, inlinedAt: !196)
!208 = !DILocation(line: 19, column: 35, scope: !190, inlinedAt: !196)
!209 = !DILocation(line: 19, column: 7, scope: !190, inlinedAt: !196)
!210 = !DILocation(line: 16, column: 29, scope: !191, inlinedAt: !196)
!211 = !DILocation(line: 16, column: 23, scope: !191, inlinedAt: !196)
!212 = distinct !{!212, !197, !213, !214}
!213 = !DILocation(line: 21, column: 3, scope: !192, inlinedAt: !196)
!214 = !{!"llvm.loop.mustprogress"}
!215 = !DILocation(line: 25, column: 10, scope: !194, inlinedAt: !196)
!216 = !DILocation(line: 0, scope: !194, inlinedAt: !196)
!217 = !DILocation(line: 25, column: 13, scope: !194, inlinedAt: !196)
!218 = !DILocation(line: 25, column: 18, scope: !194, inlinedAt: !196)
!219 = !DILocation(line: 26, column: 10, scope: !194, inlinedAt: !196)
!220 = !DILocation(line: 26, column: 25, scope: !194, inlinedAt: !196)
!221 = !DILocation(line: 26, column: 23, scope: !194, inlinedAt: !196)
!222 = !DILocation(line: 26, column: 34, scope: !194, inlinedAt: !196)
!223 = !DILocation(line: 26, column: 7, scope: !194, inlinedAt: !196)
!224 = !DILocation(line: 30, column: 33, scope: !174, inlinedAt: !196)
!225 = !DILocation(line: 30, column: 37, scope: !174, inlinedAt: !196)
!226 = !DILocation(line: 94, column: 31, scope: !114)
!227 = !DILocation(line: 94, column: 45, scope: !114)
!228 = !DILocation(line: 94, column: 40, scope: !114)
!229 = !DILocation(line: 94, column: 56, scope: !114)
!230 = !DILocation(line: 94, column: 64, scope: !114)
!231 = !DILocation(line: 94, column: 49, scope: !114)
!232 = !DILocation(line: 94, column: 17, scope: !114)
!233 = !DILocation(line: 95, column: 19, scope: !114)
!234 = !DILocation(line: 95, column: 56, scope: !114)
!235 = !DILocation(line: 95, column: 35, scope: !114)
!236 = !DILocation(line: 95, column: 71, scope: !114)
!237 = !DILocation(line: 95, column: 66, scope: !114)
!238 = !DILocation(line: 95, column: 32, scope: !114)
!239 = !DILocation(line: 95, column: 83, scope: !114)
!240 = !DILocation(line: 95, column: 76, scope: !114)
!241 = !DILocation(line: 95, column: 13, scope: !114)
!242 = !DILocation(line: 95, column: 17, scope: !114)
!243 = !DILocation(line: 97, column: 3, scope: !115)
!244 = !DILocation(line: 98, column: 13, scope: !123)
!245 = !DILocation(line: 98, column: 11, scope: !115)
!246 = !DILocation(line: 99, column: 34, scope: !122)
!247 = !DILocation(line: 99, column: 27, scope: !122)
!248 = !DILocation(line: 101, column: 5, scope: !122)
!249 = !DILocation(line: 103, column: 31, scope: !122)
!250 = !DILocation(line: 103, column: 33, scope: !122)
!251 = !DILocation(line: 103, column: 35, scope: !122)
!252 = !DILocation(line: 0, scope: !174, inlinedAt: !253)
!253 = distinct !DILocation(line: 103, column: 5, scope: !122)
!254 = !DILocation(line: 11, column: 19, scope: !174, inlinedAt: !253)
!255 = !DILocation(line: 11, column: 22, scope: !174, inlinedAt: !253)
!256 = !DILocation(line: 11, column: 30, scope: !174, inlinedAt: !253)
!257 = !DILocation(line: 11, column: 39, scope: !174, inlinedAt: !253)
!258 = !DILocation(line: 12, column: 19, scope: !174, inlinedAt: !253)
!259 = !DILocation(line: 16, column: 3, scope: !192, inlinedAt: !253)
!260 = !DILocation(line: 0, scope: !190, inlinedAt: !253)
!261 = !DILocation(line: 18, column: 11, scope: !190, inlinedAt: !253)
!262 = !DILocation(line: 18, column: 14, scope: !190, inlinedAt: !253)
!263 = !DILocation(line: 18, column: 21, scope: !190, inlinedAt: !253)
!264 = !DILocation(line: 18, column: 19, scope: !190, inlinedAt: !253)
!265 = !DILocation(line: 19, column: 10, scope: !190, inlinedAt: !253)
!266 = !DILocation(line: 19, column: 26, scope: !190, inlinedAt: !253)
!267 = !DILocation(line: 19, column: 24, scope: !190, inlinedAt: !253)
!268 = !DILocation(line: 19, column: 37, scope: !190, inlinedAt: !253)
!269 = !DILocation(line: 19, column: 35, scope: !190, inlinedAt: !253)
!270 = !DILocation(line: 19, column: 7, scope: !190, inlinedAt: !253)
!271 = !DILocation(line: 16, column: 29, scope: !191, inlinedAt: !253)
!272 = !DILocation(line: 16, column: 23, scope: !191, inlinedAt: !253)
!273 = distinct !{!273, !259, !274, !214}
!274 = !DILocation(line: 21, column: 3, scope: !192, inlinedAt: !253)
!275 = !DILocation(line: 0, scope: !194, inlinedAt: !253)
!276 = !DILocation(line: 25, column: 10, scope: !194, inlinedAt: !253)
!277 = !DILocation(line: 25, column: 13, scope: !194, inlinedAt: !253)
!278 = !DILocation(line: 25, column: 18, scope: !194, inlinedAt: !253)
!279 = !DILocation(line: 26, column: 10, scope: !194, inlinedAt: !253)
!280 = !DILocation(line: 26, column: 25, scope: !194, inlinedAt: !253)
!281 = !DILocation(line: 26, column: 23, scope: !194, inlinedAt: !253)
!282 = !DILocation(line: 26, column: 34, scope: !194, inlinedAt: !253)
!283 = !DILocation(line: 26, column: 7, scope: !194, inlinedAt: !253)
!284 = !DILocation(line: 30, column: 33, scope: !174, inlinedAt: !253)
!285 = !DILocation(line: 30, column: 37, scope: !174, inlinedAt: !253)
!286 = !DILocation(line: 104, column: 14, scope: !122)
!287 = !DILocation(line: 105, column: 31, scope: !122)
!288 = !DILocation(line: 105, column: 45, scope: !122)
!289 = !DILocation(line: 105, column: 40, scope: !122)
!290 = !DILocation(line: 105, column: 56, scope: !122)
!291 = !DILocation(line: 105, column: 64, scope: !122)
!292 = !DILocation(line: 105, column: 49, scope: !122)
!293 = !DILocation(line: 105, column: 17, scope: !122)
!294 = !DILocation(line: 106, column: 19, scope: !122)
!295 = !DILocation(line: 106, column: 56, scope: !122)
!296 = !DILocation(line: 106, column: 35, scope: !122)
!297 = !DILocation(line: 106, column: 71, scope: !122)
!298 = !DILocation(line: 106, column: 66, scope: !122)
!299 = !DILocation(line: 106, column: 32, scope: !122)
!300 = !DILocation(line: 106, column: 83, scope: !122)
!301 = !DILocation(line: 106, column: 76, scope: !122)
!302 = !DILocation(line: 106, column: 13, scope: !122)
!303 = !DILocation(line: 106, column: 17, scope: !122)
!304 = !DILocation(line: 108, column: 3, scope: !123)
!305 = !DILocation(line: 109, column: 13, scope: !129)
!306 = !DILocation(line: 109, column: 11, scope: !123)
!307 = !DILocation(line: 110, column: 29, scope: !128)
!308 = !DILocation(line: 110, column: 26, scope: !128)
!309 = !DILocation(line: 110, column: 33, scope: !128)
!310 = !DILocation(line: 113, column: 5, scope: !128)
!311 = !DILocation(line: 0, scope: !174, inlinedAt: !312)
!312 = distinct !DILocation(line: 114, column: 25, scope: !128)
!313 = !DILocation(line: 11, column: 19, scope: !174, inlinedAt: !312)
!314 = !DILocation(line: 11, column: 28, scope: !174, inlinedAt: !312)
!315 = !{!316, !153, i64 16}
!316 = !{!"cheb_series_struct", !317, i64 0, !318, i64 8, !153, i64 16, !153, i64 24, !318, i64 32}
!317 = !{!"any pointer", !154, i64 0}
!318 = !{!"int", !154, i64 0}
!319 = !DILocation(line: 11, column: 22, scope: !174, inlinedAt: !312)
!320 = !DILocation(line: 11, column: 36, scope: !174, inlinedAt: !312)
!321 = !{!316, !153, i64 24}
!322 = !DILocation(line: 11, column: 30, scope: !174, inlinedAt: !312)
!323 = !DILocation(line: 11, column: 48, scope: !174, inlinedAt: !312)
!324 = !DILocation(line: 11, column: 39, scope: !174, inlinedAt: !312)
!325 = !DILocation(line: 12, column: 19, scope: !174, inlinedAt: !312)
!326 = !DILocation(line: 16, column: 15, scope: !192, inlinedAt: !312)
!327 = !{!316, !318, i64 8}
!328 = !DILocation(line: 16, column: 23, scope: !191, inlinedAt: !312)
!329 = !DILocation(line: 25, column: 30, scope: !194, inlinedAt: !312)
!330 = !{!316, !317, i64 0}
!331 = !DILocation(line: 16, column: 3, scope: !192, inlinedAt: !312)
!332 = !DILocation(line: 0, scope: !190, inlinedAt: !312)
!333 = !DILocation(line: 18, column: 11, scope: !190, inlinedAt: !312)
!334 = !DILocation(line: 18, column: 14, scope: !190, inlinedAt: !312)
!335 = !DILocation(line: 18, column: 21, scope: !190, inlinedAt: !312)
!336 = !DILocation(line: 18, column: 19, scope: !190, inlinedAt: !312)
!337 = !DILocation(line: 19, column: 10, scope: !190, inlinedAt: !312)
!338 = !DILocation(line: 19, column: 26, scope: !190, inlinedAt: !312)
!339 = !DILocation(line: 19, column: 24, scope: !190, inlinedAt: !312)
!340 = !DILocation(line: 19, column: 37, scope: !190, inlinedAt: !312)
!341 = !DILocation(line: 19, column: 35, scope: !190, inlinedAt: !312)
!342 = !DILocation(line: 19, column: 7, scope: !190, inlinedAt: !312)
!343 = !DILocation(line: 16, column: 29, scope: !191, inlinedAt: !312)
!344 = distinct !{!344, !331, !345, !214}
!345 = !DILocation(line: 21, column: 3, scope: !192, inlinedAt: !312)
!346 = !DILocation(line: 0, scope: !194, inlinedAt: !312)
!347 = !DILocation(line: 25, column: 10, scope: !194, inlinedAt: !312)
!348 = !DILocation(line: 25, column: 13, scope: !194, inlinedAt: !312)
!349 = !DILocation(line: 25, column: 26, scope: !194, inlinedAt: !312)
!350 = !DILocation(line: 25, column: 24, scope: !194, inlinedAt: !312)
!351 = !DILocation(line: 25, column: 18, scope: !194, inlinedAt: !312)
!352 = !DILocation(line: 26, column: 10, scope: !194, inlinedAt: !312)
!353 = !DILocation(line: 26, column: 25, scope: !194, inlinedAt: !312)
!354 = !DILocation(line: 26, column: 23, scope: !194, inlinedAt: !312)
!355 = !DILocation(line: 26, column: 42, scope: !194, inlinedAt: !312)
!356 = !DILocation(line: 26, column: 40, scope: !194, inlinedAt: !312)
!357 = !DILocation(line: 26, column: 34, scope: !194, inlinedAt: !312)
!358 = !DILocation(line: 26, column: 7, scope: !194, inlinedAt: !312)
!359 = !DILocation(line: 30, column: 33, scope: !174, inlinedAt: !312)
!360 = !DILocation(line: 30, column: 44, scope: !174, inlinedAt: !312)
!361 = !DILocation(line: 30, column: 39, scope: !174, inlinedAt: !312)
!362 = !DILocation(line: 30, column: 37, scope: !174, inlinedAt: !312)
!363 = !DILocation(line: 0, scope: !174, inlinedAt: !364)
!364 = distinct !DILocation(line: 115, column: 25, scope: !128)
!365 = !DILocation(line: 11, column: 28, scope: !174, inlinedAt: !364)
!366 = !DILocation(line: 11, column: 22, scope: !174, inlinedAt: !364)
!367 = !DILocation(line: 11, column: 36, scope: !174, inlinedAt: !364)
!368 = !DILocation(line: 11, column: 30, scope: !174, inlinedAt: !364)
!369 = !DILocation(line: 11, column: 48, scope: !174, inlinedAt: !364)
!370 = !DILocation(line: 11, column: 39, scope: !174, inlinedAt: !364)
!371 = !DILocation(line: 12, column: 19, scope: !174, inlinedAt: !364)
!372 = !DILocation(line: 16, column: 15, scope: !192, inlinedAt: !364)
!373 = !DILocation(line: 16, column: 23, scope: !191, inlinedAt: !364)
!374 = !DILocation(line: 25, column: 30, scope: !194, inlinedAt: !364)
!375 = !DILocation(line: 16, column: 3, scope: !192, inlinedAt: !364)
!376 = !DILocation(line: 0, scope: !190, inlinedAt: !364)
!377 = !DILocation(line: 18, column: 11, scope: !190, inlinedAt: !364)
!378 = !DILocation(line: 18, column: 14, scope: !190, inlinedAt: !364)
!379 = !DILocation(line: 18, column: 21, scope: !190, inlinedAt: !364)
!380 = !DILocation(line: 18, column: 19, scope: !190, inlinedAt: !364)
!381 = !DILocation(line: 16, column: 29, scope: !191, inlinedAt: !364)
!382 = distinct !{!382, !383}
!383 = !{!"llvm.loop.unroll.disable"}
!384 = distinct !{!384, !375, !385, !214}
!385 = !DILocation(line: 21, column: 3, scope: !192, inlinedAt: !364)
!386 = !DILocation(line: 0, scope: !194, inlinedAt: !364)
!387 = !DILocation(line: 25, column: 10, scope: !194, inlinedAt: !364)
!388 = !DILocation(line: 25, column: 13, scope: !194, inlinedAt: !364)
!389 = !DILocation(line: 25, column: 26, scope: !194, inlinedAt: !364)
!390 = !DILocation(line: 25, column: 24, scope: !194, inlinedAt: !364)
!391 = !DILocation(line: 25, column: 18, scope: !194, inlinedAt: !364)
!392 = !DILocation(line: 116, column: 58, scope: !128)
!393 = !DILocation(line: 116, column: 25, scope: !128)
!394 = !DILocation(line: 117, column: 26, scope: !128)
!395 = !DILocation(line: 118, column: 32, scope: !128)
!396 = !DILocation(line: 118, column: 42, scope: !128)
!397 = !DILocation(line: 119, column: 20, scope: !128)
!398 = !DILocation(line: 119, column: 31, scope: !128)
!399 = !DILocation(line: 119, column: 26, scope: !128)
!400 = !DILocation(line: 119, column: 18, scope: !128)
!401 = !DILocation(line: 120, column: 20, scope: !128)
!402 = !DILocation(line: 120, column: 33, scope: !128)
!403 = !DILocation(line: 120, column: 41, scope: !128)
!404 = !DILocation(line: 120, column: 50, scope: !128)
!405 = !DILocation(line: 120, column: 66, scope: !128)
!406 = !DILocation(line: 120, column: 61, scope: !128)
!407 = !DILocation(line: 120, column: 48, scope: !128)
!408 = !DILocation(line: 120, column: 13, scope: !128)
!409 = !DILocation(line: 121, column: 38, scope: !128)
!410 = !DILocation(line: 121, column: 36, scope: !128)
!411 = !DILocation(line: 121, column: 17, scope: !128)
!412 = !DILocation(line: 123, column: 3, scope: !129)
!413 = !DILocation(line: 125, column: 5, scope: !414)
!414 = distinct !DILexicalBlock(scope: !415, file: !2, line: 125, column: 5)
!415 = distinct !DILexicalBlock(scope: !129, file: !2, line: 124, column: 8)
!416 = !DILocation(line: 125, column: 5, scope: !417)
!417 = distinct !DILexicalBlock(scope: !414, file: !2, line: 125, column: 5)
!418 = !DILocation(line: 0, scope: !117)
!419 = !DILocation(line: 127, column: 1, scope: !95)
!420 = !DISubprogram(name: "gsl_error", scope: !32, file: !32, line: 77, type: !421, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!421 = !DISubroutineType(types: !422)
!422 = !{null, !423, !423, !33, !33}
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!424 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!425 = !DISubprogram(name: "log", scope: !426, file: !426, line: 104, type: !427, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!426 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!427 = !DISubroutineType(types: !428)
!428 = !{!79, !79}
!429 = !DISubprogram(name: "gsl_sf_bessel_J1_e", scope: !430, file: !430, line: 55, type: !96, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!430 = !DIFile(filename: "../gsl/gsl_sf_bessel.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "45459f63edc3203df6c715a25160d493")
!431 = !DISubprogram(name: "gsl_sf_bessel_cos_pi4_e", scope: !432, file: !432, line: 91, type: !433, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!432 = !DIFile(filename: "./bessel.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "57b96fff5bee18a41e1173dbca5404a0")
!433 = !DISubroutineType(types: !434)
!434 = !{!33, !79, !79, !99}
!435 = !DISubprogram(name: "sqrt", scope: !426, file: !426, line: 143, type: !427, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!436 = distinct !DISubprogram(name: "gsl_sf_bessel_Y1", scope: !2, file: !2, line: 134, type: !437, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !439)
!437 = !DISubroutineType(types: !438)
!438 = !{!79, !98}
!439 = !{!440, !441, !442}
!440 = !DILocalVariable(name: "x", arg: 1, scope: !436, file: !2, line: 134, type: !98)
!441 = !DILocalVariable(name: "result", scope: !436, file: !2, line: 136, type: !100)
!442 = !DILocalVariable(name: "status", scope: !436, file: !2, line: 136, type: !33)
!443 = distinct !DIAssignID()
!444 = !DILocation(line: 0, scope: !436)
!445 = !DILocation(line: 136, column: 3, scope: !436)
!446 = !DILocation(line: 136, column: 3, scope: !447)
!447 = distinct !DILexicalBlock(scope: !436, file: !2, line: 136, column: 3)
!448 = !DILocation(line: 136, column: 3, scope: !449)
!449 = distinct !DILexicalBlock(scope: !450, file: !2, line: 136, column: 3)
!450 = distinct !DILexicalBlock(scope: !447, file: !2, line: 136, column: 3)
!451 = !DILocation(line: 137, column: 1, scope: !436)
