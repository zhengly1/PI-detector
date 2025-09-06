; ModuleID = 'hyperg_0F1.ll'
source_filename = "hyperg_0F1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [13 x i8] c"domain error\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [13 x i8] c"hyperg_0F1.c\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [35 x i8] c"gsl_sf_hyperg_0F1_e(c, x, &result)\00", align 1, !dbg !9
@.str.3 = private unnamed_addr constant [9 x i8] c"overflow\00", align 1, !dbg !14

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_hyperg_0F1_e(double noundef %0, double noundef %1, ptr noundef %2) local_unnamed_addr #0 !dbg !69 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !115
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !116
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !117
  %7 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !118
  %8 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !119
  %9 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !120
  call void @llvm.dbg.assign(metadata i1 undef, metadata !88, metadata !DIExpression(), metadata !120, metadata ptr %9, metadata !DIExpression()), !dbg !121
  %10 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !122
  call void @llvm.dbg.assign(metadata i1 undef, metadata !92, metadata !DIExpression(), metadata !122, metadata ptr %10, metadata !DIExpression()), !dbg !121
  %11 = alloca double, align 8, !DIAssignID !123
  call void @llvm.dbg.assign(metadata i1 undef, metadata !93, metadata !DIExpression(), metadata !123, metadata ptr %11, metadata !DIExpression()), !dbg !121
  %12 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !124
  call void @llvm.dbg.assign(metadata i1 undef, metadata !105, metadata !DIExpression(), metadata !124, metadata ptr %12, metadata !DIExpression()), !dbg !125
  %13 = alloca double, align 8, !DIAssignID !126
  call void @llvm.dbg.assign(metadata i1 undef, metadata !106, metadata !DIExpression(), metadata !126, metadata ptr %13, metadata !DIExpression()), !dbg !125
  tail call void @llvm.dbg.value(metadata double %0, metadata !81, metadata !DIExpression()), !dbg !127
  tail call void @llvm.dbg.value(metadata double %1, metadata !82, metadata !DIExpression()), !dbg !127
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !83, metadata !DIExpression()), !dbg !127
  tail call void @llvm.dbg.value(metadata double poison, metadata !84, metadata !DIExpression()), !dbg !127
  %14 = fcmp olt double %0, 0.000000e+00, !dbg !128
  br i1 %14, label %15, label %19, !dbg !129

15:                                               ; preds = %3
  %handler_result = call double @fAddHandlerDouble(double %0, double 5.000000e-01), !dbg !130
  %16 = tail call double @llvm.floor.f64(double %handler_result), !dbg !130
  tail call void @llvm.dbg.value(metadata double %16, metadata !84, metadata !DIExpression()), !dbg !127
  %handler_result1 = call double @fSubHandlerDouble(double %0, double %16), !dbg !131
  %17 = tail call double @llvm.fabs.f64(double %handler_result1), !dbg !131
  %18 = fcmp olt double %17, 0x3D4F400000000000, !dbg !132
  br label %19

19:                                               ; preds = %15, %3
  %20 = phi i1 [ false, %3 ], [ %18, %15 ], !dbg !127
  tail call void @llvm.dbg.value(metadata i1 %20, metadata !86, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !127
  %21 = fcmp oeq double %0, 0.000000e+00, !dbg !133
  %22 = or i1 %21, %20, !dbg !134
  br i1 %22, label %23, label %25, !dbg !134

23:                                               ; preds = %19
  store double 0x7FF8000000000000, ptr %2, align 8, !dbg !135, !tbaa !138
  %24 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !135
  store double 0x7FF8000000000000, ptr %24, align 8, !dbg !135, !tbaa !143
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 111, i32 noundef 1) #6, !dbg !144
  br label %156, !dbg !144

25:                                               ; preds = %19
  %26 = fcmp olt double %1, 0.000000e+00, !dbg !146
  br i1 %26, label %27, label %83, !dbg !147

27:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #6, !dbg !148
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #6, !dbg !149
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #6, !dbg !150
  %28 = call i32 @gsl_sf_lngamma_sgn_e(double noundef %0, ptr noundef nonnull %10, ptr noundef nonnull %11) #6, !dbg !151
  tail call void @llvm.dbg.value(metadata i32 %28, metadata !94, metadata !DIExpression()), !dbg !121
  %handler_result2 = call double @fAddHandlerDouble(double %0, double -1.000000e+00), !dbg !152
  %29 = fneg double %1, !dbg !152
  %30 = call double @sqrt(double noundef %29) #6, !dbg !153
  %31 = fmul double %30, 2.000000e+00, !dbg !154
  call void @llvm.dbg.assign(metadata i1 undef, metadata !155, metadata !DIExpression(), metadata !118, metadata ptr %7, metadata !DIExpression()), !dbg !171
  call void @llvm.dbg.assign(metadata i1 undef, metadata !168, metadata !DIExpression(), metadata !119, metadata ptr %8, metadata !DIExpression()), !dbg !171
  call void @llvm.dbg.value(metadata double %handler_result2, metadata !162, metadata !DIExpression()), !dbg !173
  call void @llvm.dbg.value(metadata double %31, metadata !163, metadata !DIExpression()), !dbg !173
  call void @llvm.dbg.value(metadata ptr %9, metadata !164, metadata !DIExpression()), !dbg !173
  %32 = fcmp olt double %handler_result2, 0.000000e+00, !dbg !174
  br i1 %32, label %33, label %57, !dbg !175

33:                                               ; preds = %27
  %34 = fneg double %handler_result2, !dbg !176
  call void @llvm.dbg.value(metadata double %34, metadata !165, metadata !DIExpression()), !dbg !171
  %35 = fmul double %handler_result2, 0xC00921FB54442D18, !dbg !177
  %handler_result18 = call double @callHandler(i32 1, double %35, double %35), !dbg !178
  call void @llvm.dbg.value(metadata double %handler_result18, metadata !166, metadata !DIExpression()), !dbg !171
  %handler_result19 = call double @callHandler(i32 2, double %35, double %35), !dbg !179
  call void @llvm.dbg.value(metadata double %handler_result19, metadata !167, metadata !DIExpression()), !dbg !171
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #6, !dbg !179
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #6, !dbg !180
  %36 = call i32 @gsl_sf_bessel_Jnu_e(double noundef %34, double noundef %31, ptr noundef nonnull %7) #6, !dbg !181
  call void @llvm.dbg.value(metadata i32 %36, metadata !169, metadata !DIExpression()), !dbg !171
  %37 = call i32 @gsl_sf_bessel_Ynu_e(double noundef %34, double noundef %31, ptr noundef nonnull %8) #6, !dbg !182
  call void @llvm.dbg.value(metadata i32 %37, metadata !170, metadata !DIExpression()), !dbg !171
  %38 = load double, ptr %7, align 8, !dbg !183, !tbaa !138
  %39 = fmul double %handler_result19, %38, !dbg !184
  %40 = load double, ptr %8, align 8, !dbg !185, !tbaa !138
  %41 = fmul double %handler_result18, %40, !dbg !186
  %handler_result3 = call double @fSubHandlerDouble(double %39, double %41), !dbg !187
  store double %handler_result3, ptr %9, align 8, !dbg !187, !tbaa !138, !DIAssignID !188
  call void @llvm.dbg.assign(metadata double %handler_result3, metadata !88, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !188, metadata ptr %9, metadata !DIExpression()), !dbg !121
  %42 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %7, i64 0, i32 1, !dbg !189
  %43 = load double, ptr %42, align 8, !dbg !189, !tbaa !143
  %44 = fmul double %handler_result19, %43, !dbg !190
  %45 = call double @llvm.fabs.f64(double %44), !dbg !191
  %46 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %8, i64 0, i32 1, !dbg !192
  %47 = load double, ptr %46, align 8, !dbg !192, !tbaa !143
  %48 = fmul double %handler_result18, %47, !dbg !193
  %49 = call double @llvm.fabs.f64(double %48), !dbg !194
  %handler_result4 = call double @fAddHandlerDouble(double %45, double %49), !dbg !195
  %50 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %9, i64 0, i32 1, !dbg !195
  %51 = call double @llvm.fabs.f64(double %35), !dbg !196
  %52 = fmul double %51, 0x3CB0000000000000, !dbg !197
  %handler_result5 = call double @fAddHandlerDouble(double %38, double %40), !dbg !198
  %53 = call double @llvm.fabs.f64(double %handler_result5), !dbg !198
  %54 = fmul double %52, %53, !dbg !199
  %handler_result6 = call double @fAddHandlerDouble(double %54, double %handler_result4), !dbg !200
  store double %handler_result6, ptr %50, align 8, !dbg !200, !tbaa !143, !DIAssignID !201
  call void @llvm.dbg.assign(metadata double %handler_result6, metadata !88, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64), metadata !201, metadata ptr %50, metadata !DIExpression()), !dbg !121
  %55 = icmp eq i32 %37, 0, !dbg !202
  %56 = select i1 %55, i32 %36, i32 %37, !dbg !202
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #6, !dbg !203
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #6, !dbg !203
  br label %59

57:                                               ; preds = %27
  %58 = call i32 @gsl_sf_bessel_Jnu_e(double noundef %handler_result2, double noundef %31, ptr noundef nonnull %9) #6, !dbg !204
  br label %59, !dbg !206

59:                                               ; preds = %57, %33
  %60 = phi i32 [ %56, %33 ], [ %58, %57 ], !dbg !207
  tail call void @llvm.dbg.value(metadata i32 %60, metadata !95, metadata !DIExpression()), !dbg !121
  %61 = icmp eq i32 %28, 0, !dbg !208
  br i1 %61, label %63, label %62, !dbg !209

62:                                               ; preds = %59
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !dbg !210
  br label %81, !dbg !212

63:                                               ; preds = %59
  %64 = load double, ptr %9, align 8, !dbg !213, !tbaa !138
  %65 = fcmp oeq double %64, 0.000000e+00, !dbg !214
  br i1 %65, label %66, label %67, !dbg !215

66:                                               ; preds = %63
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !dbg !216
  br label %81, !dbg !218

67:                                               ; preds = %63
  %handler_result20 = call double @callHandler(i32 12, double %29, double %29), !dbg !219
  %68 = fmul double %handler_result20, 5.000000e-01, !dbg !219
  %handler_result7 = call double @fSubHandlerDouble(double 1.000000e+00, double %0), !dbg !220
  %69 = fmul double %handler_result7, %68, !dbg !220
  tail call void @llvm.dbg.value(metadata double %69, metadata !96, metadata !DIExpression()), !dbg !221
  %70 = load double, ptr %10, align 8, !dbg !222, !tbaa !138
  %handler_result8 = call double @fAddHandlerDouble(double %70, double %69), !dbg !223
  tail call void @llvm.dbg.value(metadata double %handler_result8, metadata !100, metadata !DIExpression()), !dbg !221
  %71 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %10, i64 0, i32 1, !dbg !223
  %72 = load double, ptr %71, align 8, !dbg !223, !tbaa !143
  %73 = call double @llvm.fabs.f64(double %69), !dbg !224
  %74 = fmul double %73, 0x3CC0000000000000, !dbg !225
  %handler_result9 = call double @fAddHandlerDouble(double %72, double %74), !dbg !226
  tail call void @llvm.dbg.value(metadata double %handler_result9, metadata !101, metadata !DIExpression()), !dbg !221
  %75 = load double, ptr %11, align 8, !dbg !226, !tbaa !227
  %76 = load double, ptr %9, align 8, !dbg !228, !tbaa !138
  %77 = fmul double %75, %76, !dbg !229
  %78 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %9, i64 0, i32 1, !dbg !230
  %79 = load double, ptr %78, align 8, !dbg !230, !tbaa !143
  %80 = call i32 @gsl_sf_exp_mult_err_e(double noundef %handler_result8, double noundef %handler_result9, double noundef %77, double noundef %79, ptr noundef %2) #6, !dbg !231
  br label %81

81:                                               ; preds = %67, %66, %62
  %82 = phi i32 [ %28, %62 ], [ %60, %66 ], [ %80, %67 ], !dbg !232
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #6, !dbg !233
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #6, !dbg !233
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #6, !dbg !233
  br label %156

83:                                               ; preds = %25
  %84 = fcmp oeq double %1, 0.000000e+00, !dbg !234
  br i1 %84, label %85, label %87, !dbg !235

85:                                               ; preds = %83
  store double 1.000000e+00, ptr %2, align 8, !dbg !236, !tbaa !138
  %86 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !238
  store double 1.000000e+00, ptr %86, align 8, !dbg !239, !tbaa !143
  br label %156, !dbg !240

87:                                               ; preds = %83
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #6, !dbg !241
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #6, !dbg !242
  %88 = call i32 @gsl_sf_lngamma_sgn_e(double noundef %0, ptr noundef nonnull %12, ptr noundef nonnull %13) #6, !dbg !243
  tail call void @llvm.dbg.value(metadata i32 %88, metadata !107, metadata !DIExpression()), !dbg !125
  %handler_result10 = call double @fAddHandlerDouble(double %0, double -1.000000e+00), !dbg !244
  %89 = call double @sqrt(double noundef %1) #6, !dbg !244
  %90 = fmul double %89, 2.000000e+00, !dbg !245
  call void @llvm.dbg.assign(metadata i1 undef, metadata !246, metadata !DIExpression(), metadata !115, metadata ptr %4, metadata !DIExpression()), !dbg !264
  call void @llvm.dbg.assign(metadata i1 undef, metadata !257, metadata !DIExpression(), metadata !116, metadata ptr %5, metadata !DIExpression()), !dbg !264
  call void @llvm.dbg.assign(metadata i1 undef, metadata !262, metadata !DIExpression(), metadata !117, metadata ptr %6, metadata !DIExpression()), !dbg !266
  call void @llvm.dbg.value(metadata double %handler_result10, metadata !251, metadata !DIExpression()), !dbg !267
  call void @llvm.dbg.value(metadata double %90, metadata !252, metadata !DIExpression()), !dbg !267
  call void @llvm.dbg.value(metadata ptr undef, metadata !253, metadata !DIExpression()), !dbg !267
  %91 = fcmp ogt double %90, 0x40862E42FEFA39EF, !dbg !268
  br i1 %91, label %135, label %92, !dbg !270

92:                                               ; preds = %87
  %93 = fcmp olt double %handler_result10, 0.000000e+00, !dbg !271
  br i1 %93, label %94, label %120, !dbg !272

94:                                               ; preds = %92
  %95 = fneg double %handler_result10, !dbg !273
  call void @llvm.dbg.value(metadata double %95, metadata !254, metadata !DIExpression()), !dbg !264
  %96 = fmul double %handler_result10, 0xC00921FB54442D18, !dbg !274
  %handler_result21 = call double @callHandler(i32 1, double %96, double %96), !dbg !275
  %97 = fmul double %handler_result21, 0x3FE45F306DC9C883, !dbg !275
  call void @llvm.dbg.value(metadata double %97, metadata !255, metadata !DIExpression()), !dbg !264
  %98 = call double @exp(double noundef %90) #6, !dbg !276
  call void @llvm.dbg.value(metadata double %98, metadata !256, metadata !DIExpression()), !dbg !264
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #6, !dbg !277
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #6, !dbg !278
  %99 = call i32 @gsl_sf_bessel_Inu_scaled_e(double noundef %95, double noundef %90, ptr noundef nonnull %4) #6, !dbg !279
  call void @llvm.dbg.value(metadata i32 %99, metadata !258, metadata !DIExpression()), !dbg !264
  %100 = call i32 @gsl_sf_bessel_Knu_scaled_e(double noundef %95, double noundef %90, ptr noundef nonnull %5) #6, !dbg !280
  call void @llvm.dbg.value(metadata i32 %100, metadata !259, metadata !DIExpression()), !dbg !264
  %101 = load double, ptr %4, align 8, !dbg !281, !tbaa !138
  %102 = fmul double %98, %101, !dbg !282
  %103 = load double, ptr %5, align 8, !dbg !283, !tbaa !138
  %104 = fdiv double %103, %98, !dbg !284
  %105 = fmul double %97, %104, !dbg !285
  %handler_result11 = call double @fAddHandlerDouble(double %102, double %105), !dbg !286
  tail call void @llvm.dbg.value(metadata double %handler_result11, metadata !102, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !125
  %106 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !286
  %107 = load double, ptr %106, align 8, !dbg !286, !tbaa !143
  %108 = fmul double %98, %107, !dbg !287
  %109 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !288
  %110 = load double, ptr %109, align 8, !dbg !288, !tbaa !143
  %111 = fmul double %97, %110, !dbg !289
  %112 = fdiv double %111, %98, !dbg !290
  %113 = call double @llvm.fabs.f64(double %112), !dbg !291
  %handler_result12 = call double @fAddHandlerDouble(double %108, double %113), !dbg !292
  %114 = call double @llvm.fabs.f64(double %105), !dbg !292
  %115 = fmul double %114, 0x3CB0000000000000, !dbg !293
  %116 = fmul double %115, %95, !dbg !294
  %117 = fmul double %116, 0x400921FB54442D18, !dbg !295
  %handler_result13 = call double @fAddHandlerDouble(double %117, double %handler_result12), !dbg !296
  tail call void @llvm.dbg.value(metadata double %handler_result13, metadata !102, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !125
  %118 = icmp eq i32 %100, 0, !dbg !296
  %119 = select i1 %118, i32 %99, i32 %100, !dbg !296
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #6, !dbg !297
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #6, !dbg !297
  br label %130

120:                                              ; preds = %92
  %121 = call double @exp(double noundef %90) #6, !dbg !298
  call void @llvm.dbg.value(metadata double %121, metadata !260, metadata !DIExpression()), !dbg !266
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #6, !dbg !299
  %122 = call i32 @gsl_sf_bessel_Inu_scaled_e(double noundef %handler_result10, double noundef %90, ptr noundef nonnull %6) #6, !dbg !300
  call void @llvm.dbg.value(metadata i32 %122, metadata !263, metadata !DIExpression()), !dbg !266
  %123 = load double, ptr %6, align 8, !dbg !301, !tbaa !138
  %124 = fmul double %121, %123, !dbg !302
  tail call void @llvm.dbg.value(metadata double %124, metadata !102, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !125
  %125 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !303
  %126 = load double, ptr %125, align 8, !dbg !303, !tbaa !143
  %127 = fmul double %121, %126, !dbg !304
  %128 = call double @llvm.fabs.f64(double %124), !dbg !305
  %129 = fmul double %128, 0x3CB0000000000000, !dbg !306
  %handler_result14 = call double @fAddHandlerDouble(double %127, double %129), !dbg !307
  tail call void @llvm.dbg.value(metadata double %handler_result14, metadata !102, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !125
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #6, !dbg !307
  br label %130

130:                                              ; preds = %120, %94
  %131 = phi double [ %handler_result13, %94 ], [ %handler_result14, %120 ], !dbg !267
  %132 = phi double [ %handler_result11, %94 ], [ %124, %120 ], !dbg !267
  %133 = phi i32 [ %119, %94 ], [ %122, %120 ], !dbg !267
  tail call void @llvm.dbg.value(metadata double %132, metadata !102, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !125
  tail call void @llvm.dbg.value(metadata double %131, metadata !102, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !125
  tail call void @llvm.dbg.value(metadata i32 %133, metadata !108, metadata !DIExpression()), !dbg !125
  %134 = icmp eq i32 %88, 0, !dbg !308
  br i1 %134, label %138, label %137, !dbg !309

135:                                              ; preds = %87
  tail call void @llvm.dbg.value(metadata double 0x7FF0000000000000, metadata !102, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !125
  tail call void @llvm.dbg.value(metadata double 0x7FF0000000000000, metadata !102, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !125
  call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 45, i32 noundef 16) #6, !dbg !310
  tail call void @llvm.dbg.value(metadata double 0x7FF0000000000000, metadata !102, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !125
  tail call void @llvm.dbg.value(metadata double 0x7FF0000000000000, metadata !102, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !125
  tail call void @llvm.dbg.value(metadata i32 16, metadata !108, metadata !DIExpression()), !dbg !125
  %136 = icmp eq i32 %88, 0, !dbg !308
  br i1 %136, label %141, label %137, !dbg !309

137:                                              ; preds = %135, %130
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !dbg !314
  br label %154, !dbg !316

138:                                              ; preds = %130
  %139 = fcmp oeq double %132, 0.000000e+00, !dbg !317
  br i1 %139, label %140, label %141, !dbg !318

140:                                              ; preds = %138
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !dbg !319
  br label %154, !dbg !321

141:                                              ; preds = %138, %135
  %142 = phi double [ %131, %138 ], [ 0x7FF0000000000000, %135 ]
  %143 = phi double [ %132, %138 ], [ 0x7FF0000000000000, %135 ]
  %handler_result22 = call double @callHandler(i32 12, double %1, double %1), !dbg !322
  %144 = fmul double %handler_result22, 5.000000e-01, !dbg !322
  %handler_result15 = call double @fSubHandlerDouble(double 1.000000e+00, double %0), !dbg !323
  %145 = fmul double %handler_result15, %144, !dbg !323
  tail call void @llvm.dbg.value(metadata double %145, metadata !109, metadata !DIExpression()), !dbg !324
  %146 = load double, ptr %12, align 8, !dbg !325, !tbaa !138
  %handler_result16 = call double @fAddHandlerDouble(double %146, double %145), !dbg !326
  tail call void @llvm.dbg.value(metadata double %handler_result16, metadata !113, metadata !DIExpression()), !dbg !324
  %147 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %12, i64 0, i32 1, !dbg !326
  %148 = load double, ptr %147, align 8, !dbg !326, !tbaa !143
  %149 = call double @llvm.fabs.f64(double %145), !dbg !327
  %150 = fmul double %149, 0x3CC0000000000000, !dbg !328
  %handler_result17 = call double @fAddHandlerDouble(double %148, double %150), !dbg !329
  tail call void @llvm.dbg.value(metadata double %handler_result17, metadata !114, metadata !DIExpression()), !dbg !324
  %151 = load double, ptr %13, align 8, !dbg !329, !tbaa !227
  %152 = fmul double %143, %151, !dbg !330
  %153 = call i32 @gsl_sf_exp_mult_err_e(double noundef %handler_result16, double noundef %handler_result17, double noundef %152, double noundef %142, ptr noundef %2) #6, !dbg !331
  br label %154

154:                                              ; preds = %141, %140, %137
  %155 = phi i32 [ %88, %137 ], [ %133, %140 ], [ %153, %141 ], !dbg !332
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #6, !dbg !333
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #6, !dbg !333
  br label %156

156:                                              ; preds = %154, %85, %81, %23
  %157 = phi i32 [ 1, %23 ], [ %82, %81 ], [ 0, %85 ], [ %155, %154 ], !dbg !334
  ret i32 %157, !dbg !335
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #2

declare !dbg !336 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !341 i32 @gsl_sf_lngamma_sgn_e(double noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !346 double @sqrt(double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !350 double @log(double noundef) local_unnamed_addr #4

declare !dbg !351 i32 @gsl_sf_exp_mult_err_e(double noundef, double noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_hyperg_0F1(double noundef %0, double noundef %1) local_unnamed_addr #0 !dbg !355 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !363
  call void @llvm.dbg.assign(metadata i1 undef, metadata !361, metadata !DIExpression(), metadata !363, metadata ptr %3, metadata !DIExpression()), !dbg !364
  tail call void @llvm.dbg.value(metadata double %0, metadata !359, metadata !DIExpression()), !dbg !364
  tail call void @llvm.dbg.value(metadata double %1, metadata !360, metadata !DIExpression()), !dbg !364
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6, !dbg !365
  %4 = call i32 @gsl_sf_hyperg_0F1_e(double noundef %0, double noundef %1, ptr noundef nonnull %3), !dbg !365
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !362, metadata !DIExpression()), !dbg !364
  %5 = icmp eq i32 %4, 0, !dbg !366
  br i1 %5, label %7, label %6, !dbg !365

6:                                                ; preds = %2
  call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 177, i32 noundef %4) #6, !dbg !368
  br label %7, !dbg !368

7:                                                ; preds = %6, %2
  %8 = load double, ptr %3, align 8, !dbg !365, !tbaa !138
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6, !dbg !371
  ret double %8, !dbg !371
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !372 double @sin(double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !373 double @cos(double noundef) local_unnamed_addr #4

declare !dbg !374 i32 @gsl_sf_bessel_Jnu_e(double noundef, double noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !376 i32 @gsl_sf_bessel_Ynu_e(double noundef, double noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !377 double @exp(double noundef) local_unnamed_addr #4

declare !dbg !378 i32 @gsl_sf_bessel_Inu_scaled_e(double noundef, double noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !379 i32 @gsl_sf_bessel_Knu_scaled_e(double noundef, double noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

declare double @fAddHandlerDouble(double, double)

declare double @fSubHandlerDouble(double, double)

declare double @callHandler(i32, double, double)

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!19}
!llvm.module.flags = !{!61, !62, !63, !64, !65, !66, !67}
!llvm.ident = !{!68}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 111, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "hyperg_0F1.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "e0f1a9326dbdf99a3aa1cec232930cef")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 13)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 111, type: !3, isLocal: true, isDefinition: true)
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(scope: null, file: !2, line: 177, type: !11, isLocal: true, isDefinition: true)
!11 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 280, elements: !12)
!12 = !{!13}
!13 = !DISubrange(count: 35)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(scope: null, file: !2, line: 45, type: !16, isLocal: true, isDefinition: true)
!16 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !17)
!17 = !{!18}
!18 = !DISubrange(count: 9)
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
!60 = !{!0, !7, !9, !14}
!61 = !{i32 7, !"Dwarf Version", i32 5}
!62 = !{i32 2, !"Debug Info Version", i32 3}
!63 = !{i32 1, !"wchar_size", i32 4}
!64 = !{i32 8, !"PIC Level", i32 2}
!65 = !{i32 7, !"PIE Level", i32 2}
!66 = !{i32 7, !"uwtable", i32 2}
!67 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!68 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!69 = distinct !DISubprogram(name: "gsl_sf_hyperg_0F1_e", scope: !2, file: !2, line: 103, type: !70, scopeLine: 104, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !80)
!70 = !DISubroutineType(types: !71)
!71 = !{!23, !72, !72, !73}
!72 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !75, line: 41, baseType: !76)
!75 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "5b52deed011f1ffd07977b19a388d251")
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !75, line: 37, size: 128, elements: !77)
!77 = !{!78, !79}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !76, file: !75, line: 38, baseType: !72, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !76, file: !75, line: 39, baseType: !72, size: 64, offset: 64)
!80 = !{!81, !82, !83, !84, !86, !88, !92, !93, !94, !95, !96, !100, !101, !102, !105, !106, !107, !108, !109, !113, !114}
!81 = !DILocalVariable(name: "c", arg: 1, scope: !69, file: !2, line: 103, type: !72)
!82 = !DILocalVariable(name: "x", arg: 2, scope: !69, file: !2, line: 103, type: !72)
!83 = !DILocalVariable(name: "result", arg: 3, scope: !69, file: !2, line: 103, type: !73)
!84 = !DILocalVariable(name: "rintc", scope: !69, file: !2, line: 105, type: !85)
!85 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !72)
!86 = !DILocalVariable(name: "c_neg_integer", scope: !69, file: !2, line: 106, type: !87)
!87 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !23)
!88 = !DILocalVariable(name: "Jcm1", scope: !89, file: !2, line: 114, type: !74)
!89 = distinct !DILexicalBlock(scope: !90, file: !2, line: 113, column: 20)
!90 = distinct !DILexicalBlock(scope: !91, file: !2, line: 113, column: 11)
!91 = distinct !DILexicalBlock(scope: !69, file: !2, line: 110, column: 6)
!92 = !DILocalVariable(name: "lg_c", scope: !89, file: !2, line: 115, type: !74)
!93 = !DILocalVariable(name: "sgn", scope: !89, file: !2, line: 116, type: !72)
!94 = !DILocalVariable(name: "stat_g", scope: !89, file: !2, line: 117, type: !23)
!95 = !DILocalVariable(name: "stat_J", scope: !89, file: !2, line: 118, type: !23)
!96 = !DILocalVariable(name: "tl", scope: !97, file: !2, line: 130, type: !85)
!97 = distinct !DILexicalBlock(scope: !98, file: !2, line: 129, column: 10)
!98 = distinct !DILexicalBlock(scope: !99, file: !2, line: 124, column: 13)
!99 = distinct !DILexicalBlock(scope: !89, file: !2, line: 119, column: 8)
!100 = !DILocalVariable(name: "ln_pre_val", scope: !97, file: !2, line: 131, type: !72)
!101 = !DILocalVariable(name: "ln_pre_err", scope: !97, file: !2, line: 132, type: !72)
!102 = !DILocalVariable(name: "Icm1", scope: !103, file: !2, line: 144, type: !74)
!103 = distinct !DILexicalBlock(scope: !104, file: !2, line: 143, column: 8)
!104 = distinct !DILexicalBlock(scope: !90, file: !2, line: 138, column: 11)
!105 = !DILocalVariable(name: "lg_c", scope: !103, file: !2, line: 145, type: !74)
!106 = !DILocalVariable(name: "sgn", scope: !103, file: !2, line: 146, type: !72)
!107 = !DILocalVariable(name: "stat_g", scope: !103, file: !2, line: 147, type: !23)
!108 = !DILocalVariable(name: "stat_I", scope: !103, file: !2, line: 148, type: !23)
!109 = !DILocalVariable(name: "tl", scope: !110, file: !2, line: 160, type: !85)
!110 = distinct !DILexicalBlock(scope: !111, file: !2, line: 159, column: 10)
!111 = distinct !DILexicalBlock(scope: !112, file: !2, line: 154, column: 13)
!112 = distinct !DILexicalBlock(scope: !103, file: !2, line: 149, column: 8)
!113 = !DILocalVariable(name: "ln_pre_val", scope: !110, file: !2, line: 161, type: !85)
!114 = !DILocalVariable(name: "ln_pre_err", scope: !110, file: !2, line: 162, type: !85)
!115 = distinct !DIAssignID()
!116 = distinct !DIAssignID()
!117 = distinct !DIAssignID()
!118 = distinct !DIAssignID()
!119 = distinct !DIAssignID()
!120 = distinct !DIAssignID()
!121 = !DILocation(line: 0, scope: !89)
!122 = distinct !DIAssignID()
!123 = distinct !DIAssignID()
!124 = distinct !DIAssignID()
!125 = !DILocation(line: 0, scope: !103)
!126 = distinct !DIAssignID()
!127 = !DILocation(line: 0, scope: !69)
!128 = !DILocation(line: 106, column: 32, scope: !69)
!129 = !DILocation(line: 106, column: 38, scope: !69)
!130 = !DILocation(line: 105, column: 24, scope: !69)
!131 = !DILocation(line: 106, column: 41, scope: !69)
!132 = !DILocation(line: 106, column: 57, scope: !69)
!133 = !DILocation(line: 110, column: 8, scope: !91)
!134 = !DILocation(line: 110, column: 15, scope: !91)
!135 = !DILocation(line: 111, column: 5, scope: !136)
!136 = distinct !DILexicalBlock(scope: !137, file: !2, line: 111, column: 5)
!137 = distinct !DILexicalBlock(scope: !91, file: !2, line: 110, column: 33)
!138 = !{!139, !140, i64 0}
!139 = !{!"gsl_sf_result_struct", !140, i64 0, !140, i64 8}
!140 = !{!"double", !141, i64 0}
!141 = !{!"omnipotent char", !142, i64 0}
!142 = !{!"Simple C/C++ TBAA"}
!143 = !{!139, !140, i64 8}
!144 = !DILocation(line: 111, column: 5, scope: !145)
!145 = distinct !DILexicalBlock(scope: !136, file: !2, line: 111, column: 5)
!146 = !DILocation(line: 113, column: 13, scope: !90)
!147 = !DILocation(line: 113, column: 11, scope: !91)
!148 = !DILocation(line: 114, column: 5, scope: !89)
!149 = !DILocation(line: 115, column: 5, scope: !89)
!150 = !DILocation(line: 116, column: 5, scope: !89)
!151 = !DILocation(line: 117, column: 18, scope: !89)
!152 = !DILocation(line: 118, column: 54, scope: !89)
!153 = !DILocation(line: 118, column: 49, scope: !89)
!154 = !DILocation(line: 118, column: 48, scope: !89)
!155 = !DILocalVariable(name: "J", scope: !156, file: !2, line: 85, type: !74)
!156 = distinct !DILexicalBlock(scope: !157, file: !2, line: 81, column: 16)
!157 = distinct !DILexicalBlock(scope: !158, file: !2, line: 81, column: 6)
!158 = distinct !DISubprogram(name: "hyperg_0F1_bessel_J", scope: !2, file: !2, line: 79, type: !159, scopeLine: 80, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !161)
!159 = !DISubroutineType(types: !160)
!160 = !{!23, !85, !85, !73}
!161 = !{!162, !163, !164, !165, !166, !167, !155, !168, !169, !170}
!162 = !DILocalVariable(name: "nu", arg: 1, scope: !158, file: !2, line: 79, type: !85)
!163 = !DILocalVariable(name: "x", arg: 2, scope: !158, file: !2, line: 79, type: !85)
!164 = !DILocalVariable(name: "result", arg: 3, scope: !158, file: !2, line: 79, type: !73)
!165 = !DILocalVariable(name: "anu", scope: !156, file: !2, line: 82, type: !85)
!166 = !DILocalVariable(name: "s", scope: !156, file: !2, line: 83, type: !85)
!167 = !DILocalVariable(name: "c", scope: !156, file: !2, line: 84, type: !85)
!168 = !DILocalVariable(name: "Y", scope: !156, file: !2, line: 86, type: !74)
!169 = !DILocalVariable(name: "stat_J", scope: !156, file: !2, line: 87, type: !23)
!170 = !DILocalVariable(name: "stat_Y", scope: !156, file: !2, line: 88, type: !23)
!171 = !DILocation(line: 0, scope: !156, inlinedAt: !172)
!172 = distinct !DILocation(line: 118, column: 18, scope: !89)
!173 = !DILocation(line: 0, scope: !158, inlinedAt: !172)
!174 = !DILocation(line: 81, column: 9, scope: !157, inlinedAt: !172)
!175 = !DILocation(line: 81, column: 6, scope: !158, inlinedAt: !172)
!176 = !DILocation(line: 82, column: 24, scope: !156, inlinedAt: !172)
!177 = !DILocation(line: 83, column: 31, scope: !156, inlinedAt: !172)
!178 = !DILocation(line: 84, column: 24, scope: !156, inlinedAt: !172)
!179 = !DILocation(line: 85, column: 5, scope: !156, inlinedAt: !172)
!180 = !DILocation(line: 86, column: 5, scope: !156, inlinedAt: !172)
!181 = !DILocation(line: 87, column: 18, scope: !156, inlinedAt: !172)
!182 = !DILocation(line: 88, column: 18, scope: !156, inlinedAt: !172)
!183 = !DILocation(line: 89, column: 26, scope: !156, inlinedAt: !172)
!184 = !DILocation(line: 89, column: 22, scope: !156, inlinedAt: !172)
!185 = !DILocation(line: 89, column: 38, scope: !156, inlinedAt: !172)
!186 = !DILocation(line: 89, column: 34, scope: !156, inlinedAt: !172)
!187 = !DILocation(line: 89, column: 18, scope: !156, inlinedAt: !172)
!188 = distinct !DIAssignID()
!189 = !DILocation(line: 90, column: 31, scope: !156, inlinedAt: !172)
!190 = !DILocation(line: 90, column: 27, scope: !156, inlinedAt: !172)
!191 = !DILocation(line: 90, column: 20, scope: !156, inlinedAt: !172)
!192 = !DILocation(line: 90, column: 49, scope: !156, inlinedAt: !172)
!193 = !DILocation(line: 90, column: 45, scope: !156, inlinedAt: !172)
!194 = !DILocation(line: 90, column: 38, scope: !156, inlinedAt: !172)
!195 = !DILocation(line: 90, column: 13, scope: !156, inlinedAt: !172)
!196 = !DILocation(line: 91, column: 20, scope: !156, inlinedAt: !172)
!197 = !DILocation(line: 91, column: 37, scope: !156, inlinedAt: !172)
!198 = !DILocation(line: 91, column: 57, scope: !156, inlinedAt: !172)
!199 = !DILocation(line: 91, column: 55, scope: !156, inlinedAt: !172)
!200 = !DILocation(line: 91, column: 17, scope: !156, inlinedAt: !172)
!201 = distinct !DIAssignID()
!202 = !DILocation(line: 92, column: 12, scope: !156, inlinedAt: !172)
!203 = !DILocation(line: 93, column: 3, scope: !157, inlinedAt: !172)
!204 = !DILocation(line: 95, column: 12, scope: !205, inlinedAt: !172)
!205 = distinct !DILexicalBlock(scope: !157, file: !2, line: 94, column: 8)
!206 = !DILocation(line: 95, column: 5, scope: !205, inlinedAt: !172)
!207 = !DILocation(line: 0, scope: !157, inlinedAt: !172)
!208 = !DILocation(line: 119, column: 15, scope: !99)
!209 = !DILocation(line: 119, column: 8, scope: !89)
!210 = !DILocation(line: 121, column: 19, scope: !211)
!211 = distinct !DILexicalBlock(scope: !99, file: !2, line: 119, column: 31)
!212 = !DILocation(line: 122, column: 7, scope: !211)
!213 = !DILocation(line: 124, column: 18, scope: !98)
!214 = !DILocation(line: 124, column: 22, scope: !98)
!215 = !DILocation(line: 124, column: 13, scope: !99)
!216 = !DILocation(line: 126, column: 19, scope: !217)
!217 = distinct !DILexicalBlock(scope: !98, file: !2, line: 124, column: 30)
!218 = !DILocation(line: 127, column: 7, scope: !217)
!219 = !DILocation(line: 130, column: 32, scope: !97)
!220 = !DILocation(line: 130, column: 36, scope: !97)
!221 = !DILocation(line: 0, scope: !97)
!222 = !DILocation(line: 131, column: 32, scope: !97)
!223 = !DILocation(line: 132, column: 32, scope: !97)
!224 = !DILocation(line: 132, column: 62, scope: !97)
!225 = !DILocation(line: 132, column: 60, scope: !97)
!226 = !DILocation(line: 134, column: 39, scope: !97)
!227 = !{!140, !140, i64 0}
!228 = !DILocation(line: 134, column: 48, scope: !97)
!229 = !DILocation(line: 134, column: 42, scope: !97)
!230 = !DILocation(line: 134, column: 58, scope: !97)
!231 = !DILocation(line: 133, column: 14, scope: !97)
!232 = !DILocation(line: 0, scope: !99)
!233 = !DILocation(line: 137, column: 3, scope: !90)
!234 = !DILocation(line: 138, column: 13, scope: !104)
!235 = !DILocation(line: 138, column: 11, scope: !90)
!236 = !DILocation(line: 139, column: 17, scope: !237)
!237 = distinct !DILexicalBlock(scope: !104, file: !2, line: 138, column: 21)
!238 = !DILocation(line: 140, column: 13, scope: !237)
!239 = !DILocation(line: 140, column: 17, scope: !237)
!240 = !DILocation(line: 141, column: 5, scope: !237)
!241 = !DILocation(line: 145, column: 5, scope: !103)
!242 = !DILocation(line: 146, column: 5, scope: !103)
!243 = !DILocation(line: 147, column: 18, scope: !103)
!244 = !DILocation(line: 148, column: 49, scope: !103)
!245 = !DILocation(line: 148, column: 48, scope: !103)
!246 = !DILocalVariable(name: "I", scope: !247, file: !2, line: 52, type: !74)
!247 = distinct !DILexicalBlock(scope: !248, file: !2, line: 48, column: 16)
!248 = distinct !DILexicalBlock(scope: !249, file: !2, line: 48, column: 6)
!249 = distinct !DISubprogram(name: "hyperg_0F1_bessel_I", scope: !2, file: !2, line: 42, type: !159, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !250)
!250 = !{!251, !252, !253, !254, !255, !256, !246, !257, !258, !259, !260, !262, !263}
!251 = !DILocalVariable(name: "nu", arg: 1, scope: !249, file: !2, line: 42, type: !85)
!252 = !DILocalVariable(name: "x", arg: 2, scope: !249, file: !2, line: 42, type: !85)
!253 = !DILocalVariable(name: "result", arg: 3, scope: !249, file: !2, line: 42, type: !73)
!254 = !DILocalVariable(name: "anu", scope: !247, file: !2, line: 49, type: !85)
!255 = !DILocalVariable(name: "s", scope: !247, file: !2, line: 50, type: !85)
!256 = !DILocalVariable(name: "ex", scope: !247, file: !2, line: 51, type: !85)
!257 = !DILocalVariable(name: "K", scope: !247, file: !2, line: 53, type: !74)
!258 = !DILocalVariable(name: "stat_I", scope: !247, file: !2, line: 54, type: !23)
!259 = !DILocalVariable(name: "stat_K", scope: !247, file: !2, line: 55, type: !23)
!260 = !DILocalVariable(name: "ex", scope: !261, file: !2, line: 62, type: !85)
!261 = distinct !DILexicalBlock(scope: !248, file: !2, line: 61, column: 8)
!262 = !DILocalVariable(name: "I", scope: !261, file: !2, line: 63, type: !74)
!263 = !DILocalVariable(name: "stat_I", scope: !261, file: !2, line: 64, type: !23)
!264 = !DILocation(line: 0, scope: !247, inlinedAt: !265)
!265 = distinct !DILocation(line: 148, column: 18, scope: !103)
!266 = !DILocation(line: 0, scope: !261, inlinedAt: !265)
!267 = !DILocation(line: 0, scope: !249, inlinedAt: !265)
!268 = !DILocation(line: 44, column: 8, scope: !269, inlinedAt: !265)
!269 = distinct !DILexicalBlock(scope: !249, file: !2, line: 44, column: 6)
!270 = !DILocation(line: 44, column: 6, scope: !249, inlinedAt: !265)
!271 = !DILocation(line: 48, column: 9, scope: !248, inlinedAt: !265)
!272 = !DILocation(line: 48, column: 6, scope: !249, inlinedAt: !265)
!273 = !DILocation(line: 49, column: 24, scope: !247, inlinedAt: !265)
!274 = !DILocation(line: 50, column: 42, scope: !247, inlinedAt: !265)
!275 = !DILocation(line: 50, column: 33, scope: !247, inlinedAt: !265)
!276 = !DILocation(line: 51, column: 24, scope: !247, inlinedAt: !265)
!277 = !DILocation(line: 52, column: 5, scope: !247, inlinedAt: !265)
!278 = !DILocation(line: 53, column: 5, scope: !247, inlinedAt: !265)
!279 = !DILocation(line: 54, column: 18, scope: !247, inlinedAt: !265)
!280 = !DILocation(line: 55, column: 18, scope: !247, inlinedAt: !265)
!281 = !DILocation(line: 56, column: 27, scope: !247, inlinedAt: !265)
!282 = !DILocation(line: 56, column: 23, scope: !247, inlinedAt: !265)
!283 = !DILocation(line: 56, column: 40, scope: !247, inlinedAt: !265)
!284 = !DILocation(line: 56, column: 44, scope: !247, inlinedAt: !265)
!285 = !DILocation(line: 56, column: 35, scope: !247, inlinedAt: !265)
!286 = !DILocation(line: 57, column: 27, scope: !247, inlinedAt: !265)
!287 = !DILocation(line: 57, column: 23, scope: !247, inlinedAt: !265)
!288 = !DILocation(line: 57, column: 44, scope: !247, inlinedAt: !265)
!289 = !DILocation(line: 57, column: 40, scope: !247, inlinedAt: !265)
!290 = !DILocation(line: 57, column: 47, scope: !247, inlinedAt: !265)
!291 = !DILocation(line: 57, column: 33, scope: !247, inlinedAt: !265)
!292 = !DILocation(line: 58, column: 20, scope: !247, inlinedAt: !265)
!293 = !DILocation(line: 58, column: 41, scope: !247, inlinedAt: !265)
!294 = !DILocation(line: 58, column: 59, scope: !247, inlinedAt: !265)
!295 = !DILocation(line: 58, column: 65, scope: !247, inlinedAt: !265)
!296 = !DILocation(line: 59, column: 12, scope: !247, inlinedAt: !265)
!297 = !DILocation(line: 60, column: 3, scope: !248, inlinedAt: !265)
!298 = !DILocation(line: 62, column: 24, scope: !261, inlinedAt: !265)
!299 = !DILocation(line: 63, column: 5, scope: !261, inlinedAt: !265)
!300 = !DILocation(line: 64, column: 18, scope: !261, inlinedAt: !265)
!301 = !DILocation(line: 65, column: 26, scope: !261, inlinedAt: !265)
!302 = !DILocation(line: 65, column: 22, scope: !261, inlinedAt: !265)
!303 = !DILocation(line: 66, column: 26, scope: !261, inlinedAt: !265)
!304 = !DILocation(line: 66, column: 22, scope: !261, inlinedAt: !265)
!305 = !DILocation(line: 66, column: 50, scope: !261, inlinedAt: !265)
!306 = !DILocation(line: 66, column: 48, scope: !261, inlinedAt: !265)
!307 = !DILocation(line: 68, column: 3, scope: !248, inlinedAt: !265)
!308 = !DILocation(line: 149, column: 15, scope: !112)
!309 = !DILocation(line: 149, column: 8, scope: !103)
!310 = !DILocation(line: 45, column: 5, scope: !311, inlinedAt: !265)
!311 = distinct !DILexicalBlock(scope: !312, file: !2, line: 45, column: 5)
!312 = distinct !DILexicalBlock(scope: !313, file: !2, line: 45, column: 5)
!313 = distinct !DILexicalBlock(scope: !269, file: !2, line: 44, column: 27)
!314 = !DILocation(line: 151, column: 19, scope: !315)
!315 = distinct !DILexicalBlock(scope: !112, file: !2, line: 149, column: 31)
!316 = !DILocation(line: 152, column: 7, scope: !315)
!317 = !DILocation(line: 154, column: 22, scope: !111)
!318 = !DILocation(line: 154, column: 13, scope: !112)
!319 = !DILocation(line: 156, column: 19, scope: !320)
!320 = distinct !DILexicalBlock(scope: !111, file: !2, line: 154, column: 30)
!321 = !DILocation(line: 157, column: 7, scope: !320)
!322 = !DILocation(line: 160, column: 31, scope: !110)
!323 = !DILocation(line: 160, column: 35, scope: !110)
!324 = !DILocation(line: 0, scope: !110)
!325 = !DILocation(line: 161, column: 38, scope: !110)
!326 = !DILocation(line: 162, column: 38, scope: !110)
!327 = !DILocation(line: 162, column: 68, scope: !110)
!328 = !DILocation(line: 162, column: 66, scope: !110)
!329 = !DILocation(line: 164, column: 39, scope: !110)
!330 = !DILocation(line: 164, column: 42, scope: !110)
!331 = !DILocation(line: 163, column: 14, scope: !110)
!332 = !DILocation(line: 0, scope: !112)
!333 = !DILocation(line: 167, column: 3, scope: !104)
!334 = !DILocation(line: 0, scope: !91)
!335 = !DILocation(line: 168, column: 1, scope: !69)
!336 = !DISubprogram(name: "gsl_error", scope: !22, file: !22, line: 77, type: !337, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!337 = !DISubroutineType(types: !338)
!338 = !{null, !339, !339, !23, !23}
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!341 = !DISubprogram(name: "gsl_sf_lngamma_sgn_e", scope: !342, file: !342, line: 58, type: !343, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!342 = !DIFile(filename: "../gsl/gsl_sf_gamma.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "88cc3c2b19ea790e1c6889b01cfd3137")
!343 = !DISubroutineType(types: !344)
!344 = !{!23, !72, !73, !345}
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!346 = !DISubprogram(name: "sqrt", scope: !347, file: !347, line: 143, type: !348, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!347 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!348 = !DISubroutineType(types: !349)
!349 = !{!72, !72}
!350 = !DISubprogram(name: "log", scope: !347, file: !347, line: 104, type: !348, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!351 = !DISubprogram(name: "gsl_sf_exp_mult_err_e", scope: !352, file: !352, line: 122, type: !353, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!352 = !DIFile(filename: "../gsl/gsl_sf_exp.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "c512f91507e79efdd09661b0faef2cde")
!353 = !DISubroutineType(types: !354)
!354 = !{!23, !85, !85, !85, !85, !73}
!355 = distinct !DISubprogram(name: "gsl_sf_hyperg_0F1", scope: !2, file: !2, line: 175, type: !356, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !358)
!356 = !DISubroutineType(types: !357)
!357 = !{!72, !85, !85}
!358 = !{!359, !360, !361, !362}
!359 = !DILocalVariable(name: "c", arg: 1, scope: !355, file: !2, line: 175, type: !85)
!360 = !DILocalVariable(name: "x", arg: 2, scope: !355, file: !2, line: 175, type: !85)
!361 = !DILocalVariable(name: "result", scope: !355, file: !2, line: 177, type: !74)
!362 = !DILocalVariable(name: "status", scope: !355, file: !2, line: 177, type: !23)
!363 = distinct !DIAssignID()
!364 = !DILocation(line: 0, scope: !355)
!365 = !DILocation(line: 177, column: 3, scope: !355)
!366 = !DILocation(line: 177, column: 3, scope: !367)
!367 = distinct !DILexicalBlock(scope: !355, file: !2, line: 177, column: 3)
!368 = !DILocation(line: 177, column: 3, scope: !369)
!369 = distinct !DILexicalBlock(scope: !370, file: !2, line: 177, column: 3)
!370 = distinct !DILexicalBlock(scope: !367, file: !2, line: 177, column: 3)
!371 = !DILocation(line: 178, column: 1, scope: !355)
!372 = !DISubprogram(name: "sin", scope: !347, file: !347, line: 64, type: !348, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!373 = !DISubprogram(name: "cos", scope: !347, file: !347, line: 62, type: !348, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!374 = !DISubprogram(name: "gsl_sf_bessel_Jnu_e", scope: !375, file: !375, line: 444, type: !159, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!375 = !DIFile(filename: "../gsl/gsl_sf_bessel.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "45459f63edc3203df6c715a25160d493")
!376 = !DISubprogram(name: "gsl_sf_bessel_Ynu_e", scope: !375, file: !375, line: 452, type: !70, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!377 = !DISubprogram(name: "exp", scope: !347, file: !347, line: 95, type: !348, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!378 = !DISubprogram(name: "gsl_sf_bessel_Inu_scaled_e", scope: !375, file: !375, line: 474, type: !70, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!379 = !DISubprogram(name: "gsl_sf_bessel_Knu_scaled_e", scope: !375, file: !375, line: 496, type: !159, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
