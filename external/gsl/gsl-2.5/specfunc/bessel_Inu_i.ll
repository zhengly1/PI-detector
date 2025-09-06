; ModuleID = 'bessel_Inu.ll'
source_filename = "bessel_Inu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [13 x i8] c"domain error\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [13 x i8] c"bessel_Inu.c\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [43 x i8] c"gsl_sf_bessel_Inu_scaled_e(nu, x, &result)\00", align 1, !dbg !9
@.str.3 = private unnamed_addr constant [36 x i8] c"gsl_sf_bessel_Inu_e(nu, x, &result)\00", align 1, !dbg !14

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_bessel_Inu_scaled_e(double noundef %0, double noundef %1, ptr noundef %2) local_unnamed_addr #0 !dbg !70 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !105
  call void @llvm.dbg.assign(metadata i1 undef, metadata !85, metadata !DIExpression(), metadata !105, metadata ptr %4, metadata !DIExpression()), !dbg !106
  %5 = alloca double, align 8, !DIAssignID !107
  call void @llvm.dbg.assign(metadata i1 undef, metadata !95, metadata !DIExpression(), metadata !107, metadata ptr %5, metadata !DIExpression()), !dbg !108
  %6 = alloca double, align 8, !DIAssignID !109
  call void @llvm.dbg.assign(metadata i1 undef, metadata !96, metadata !DIExpression(), metadata !109, metadata ptr %6, metadata !DIExpression()), !dbg !108
  %7 = alloca double, align 8, !DIAssignID !110
  call void @llvm.dbg.assign(metadata i1 undef, metadata !97, metadata !DIExpression(), metadata !110, metadata ptr %7, metadata !DIExpression()), !dbg !108
  %8 = alloca double, align 8, !DIAssignID !111
  call void @llvm.dbg.assign(metadata i1 undef, metadata !101, metadata !DIExpression(), metadata !111, metadata ptr %8, metadata !DIExpression()), !dbg !108
  tail call void @llvm.dbg.value(metadata double %0, metadata !82, metadata !DIExpression()), !dbg !112
  tail call void @llvm.dbg.value(metadata double %1, metadata !83, metadata !DIExpression()), !dbg !112
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !84, metadata !DIExpression()), !dbg !112
  %9 = fcmp olt double %1, 0.000000e+00, !dbg !113
  %10 = fcmp olt double %0, 0.000000e+00
  %11 = or i1 %10, %9, !dbg !114
  br i1 %11, label %12, label %14, !dbg !114

12:                                               ; preds = %3
  store double 0x7FF8000000000000, ptr %2, align 8, !dbg !115, !tbaa !118
  %13 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !115
  store double 0x7FF8000000000000, ptr %13, align 8, !dbg !115, !tbaa !123
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 43, i32 noundef 1) #5, !dbg !124
  br label %99, !dbg !124

14:                                               ; preds = %3
  %15 = fmul double %1, %1, !dbg !126
  %handler_result = call double @fAddHandlerDouble(double %0, double 1.000000e+00), !dbg !127
  %16 = fmul double %handler_result, 1.000000e+01, !dbg !127
  %17 = fcmp olt double %15, %16, !dbg !128
  br i1 %17, label %18, label %30, !dbg !129

18:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #5, !dbg !130
  %19 = fneg double %1, !dbg !131
  %20 = tail call double @exp(double noundef %19) #5, !dbg !132
  tail call void @llvm.dbg.value(metadata double %20, metadata !89, metadata !DIExpression()), !dbg !106
  %21 = call i32 @gsl_sf_bessel_IJ_taylor_e(double noundef %0, double noundef %1, i32 noundef 1, i32 noundef 100, double noundef 0x3CB0000000000000, ptr noundef nonnull %4) #5, !dbg !133
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !90, metadata !DIExpression()), !dbg !106
  %22 = load double, ptr %4, align 8, !dbg !134, !tbaa !118
  %23 = fmul double %20, %22, !dbg !135
  store double %23, ptr %2, align 8, !dbg !136, !tbaa !118
  %24 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !137
  %25 = load double, ptr %24, align 8, !dbg !137, !tbaa !123
  %26 = fmul double %20, %25, !dbg !138
  %27 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !139
  %28 = call double @llvm.fabs.f64(double %23), !dbg !140
  %29 = fmul double %28, 0x3CC0000000000000, !dbg !141
  %handler_result1 = call double @fAddHandlerDouble(double %26, double %29), !dbg !142
  store double %handler_result1, ptr %27, align 8, !dbg !142, !tbaa !123
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #5, !dbg !143
  br label %99

30:                                               ; preds = %14
  %31 = fmul double %0, %0, !dbg !144
  %handler_result2 = call double @fAddHandlerDouble(double %31, double %15), !dbg !145
  %32 = fdiv double 5.000000e-01, %handler_result2, !dbg !145
  %33 = fcmp olt double %32, 0x3ED965FEA53D6E41, !dbg !146
  br i1 %33, label %34, label %36, !dbg !147

34:                                               ; preds = %30
  %35 = tail call i32 @gsl_sf_bessel_Inu_scaled_asymp_unif_e(double noundef %0, double noundef %1, ptr noundef %2) #5, !dbg !148
  br label %99, !dbg !150

36:                                               ; preds = %30
  %handler_result3 = call double @fAddHandlerDouble(double %0, double 5.000000e-01), !dbg !151
  %37 = fptosi double %handler_result3 to i32, !dbg !151
  tail call void @llvm.dbg.value(metadata i32 %37, metadata !91, metadata !DIExpression()), !dbg !108
  %38 = sitofp i32 %37 to double, !dbg !152
  %handler_result4 = call double @fSubHandlerDouble(double %0, double %38), !dbg !153
  tail call void @llvm.dbg.value(metadata double %handler_result4, metadata !94, metadata !DIExpression()), !dbg !108
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #5, !dbg !153
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #5, !dbg !153
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #5, !dbg !153
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #5, !dbg !154
  %39 = fcmp olt double %1, 2.000000e+00, !dbg !155
  br i1 %39, label %40, label %42, !dbg !157

40:                                               ; preds = %36
  %41 = call i32 @gsl_sf_bessel_K_scaled_temme(double noundef %handler_result4, double noundef %1, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7) #5, !dbg !158
  tail call void @llvm.dbg.value(metadata i32 %41, metadata !103, metadata !DIExpression()), !dbg !108
  br label %44, !dbg !160

42:                                               ; preds = %36
  %43 = call i32 @gsl_sf_bessel_K_scaled_steed_temme_CF2(double noundef %handler_result4, double noundef %1, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7) #5, !dbg !161
  tail call void @llvm.dbg.value(metadata i32 %43, metadata !103, metadata !DIExpression()), !dbg !108
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi i32 [ %41, %40 ], [ %43, %42 ], !dbg !163
  tail call void @llvm.dbg.value(metadata i32 %45, metadata !103, metadata !DIExpression()), !dbg !108
  %46 = load double, ptr %5, align 8, !dbg !164, !tbaa !165
  tail call void @llvm.dbg.value(metadata double %46, metadata !98, metadata !DIExpression()), !dbg !108
  %47 = load double, ptr %6, align 8, !dbg !166, !tbaa !165
  tail call void @llvm.dbg.value(metadata double %47, metadata !99, metadata !DIExpression()), !dbg !108
  tail call void @llvm.dbg.value(metadata i32 0, metadata !104, metadata !DIExpression()), !dbg !108
  tail call void @llvm.dbg.value(metadata double %46, metadata !98, metadata !DIExpression()), !dbg !108
  %48 = icmp sgt i32 %37, 0, !dbg !167
  br i1 %48, label %49, label %84, !dbg !170

49:                                               ; preds = %44
  %50 = and i32 %37, 1, !dbg !170
  %51 = icmp eq i32 %37, 1, !dbg !170
  br i1 %51, label %73, label %52, !dbg !170

52:                                               ; preds = %49
  %53 = and i32 %37, 2147483646, !dbg !170
  br label %54, !dbg !170

54:                                               ; preds = %54, %52
  %55 = phi i32 [ 0, %52 ], [ %68, %54 ]
  %56 = phi double [ %46, %52 ], [ %handler_result7, %54 ]
  %57 = phi double [ %47, %52 ], [ %handler_result10, %54 ]
  %58 = phi i32 [ 0, %52 ], [ %69, %54 ]
  tail call void @llvm.dbg.value(metadata i32 %55, metadata !104, metadata !DIExpression()), !dbg !108
  tail call void @llvm.dbg.value(metadata double %57, metadata !99, metadata !DIExpression()), !dbg !108
  tail call void @llvm.dbg.value(metadata double %56, metadata !100, metadata !DIExpression()), !dbg !108
  tail call void @llvm.dbg.value(metadata double %57, metadata !98, metadata !DIExpression()), !dbg !108
  %59 = sitofp i32 %55 to double, !dbg !171
  %handler_result5 = call double @fAddHandlerDouble(double %handler_result4, double %59), !dbg !173
  %handler_result6 = call double @fAddHandlerDouble(double %handler_result5, double 1.000000e+00), !dbg !174
  %60 = fmul double %handler_result6, 2.000000e+00, !dbg !174
  %61 = fdiv double %60, %1, !dbg !175
  %62 = fmul double %57, %61, !dbg !176
  %handler_result7 = call double @fAddHandlerDouble(double %56, double %62), !dbg !177
  tail call void @llvm.dbg.value(metadata double %handler_result7, metadata !99, metadata !DIExpression()), !dbg !108
  %63 = or disjoint i32 %55, 1, !dbg !177
  tail call void @llvm.dbg.value(metadata i32 %63, metadata !104, metadata !DIExpression()), !dbg !108
  tail call void @llvm.dbg.value(metadata i32 %63, metadata !104, metadata !DIExpression()), !dbg !108
  tail call void @llvm.dbg.value(metadata double %handler_result7, metadata !99, metadata !DIExpression()), !dbg !108
  tail call void @llvm.dbg.value(metadata double %57, metadata !100, metadata !DIExpression()), !dbg !108
  tail call void @llvm.dbg.value(metadata double %handler_result7, metadata !98, metadata !DIExpression()), !dbg !108
  %64 = sitofp i32 %63 to double, !dbg !171
  %handler_result8 = call double @fAddHandlerDouble(double %handler_result4, double %64), !dbg !173
  %handler_result9 = call double @fAddHandlerDouble(double %handler_result8, double 1.000000e+00), !dbg !174
  %65 = fmul double %handler_result9, 2.000000e+00, !dbg !174
  %66 = fdiv double %65, %1, !dbg !175
  %67 = fmul double %handler_result7, %66, !dbg !176
  %handler_result10 = call double @fAddHandlerDouble(double %57, double %67), !dbg !177
  tail call void @llvm.dbg.value(metadata double %handler_result10, metadata !99, metadata !DIExpression()), !dbg !108
  %68 = add nuw nsw i32 %55, 2, !dbg !177
  tail call void @llvm.dbg.value(metadata i32 %68, metadata !104, metadata !DIExpression()), !dbg !108
  %69 = add i32 %58, 2, !dbg !170
  %70 = icmp eq i32 %69, %53, !dbg !170
  br i1 %70, label %71, label %54, !dbg !170, !llvm.loop !178

71:                                               ; preds = %54
  %72 = sitofp i32 %68 to double, !dbg !171
  br label %73, !dbg !170

73:                                               ; preds = %71, %49
  %74 = phi double [ undef, %49 ], [ %handler_result7, %71 ]
  %75 = phi double [ undef, %49 ], [ %handler_result10, %71 ]
  %76 = phi double [ 0.000000e+00, %49 ], [ %72, %71 ]
  %77 = phi double [ %46, %49 ], [ %handler_result7, %71 ]
  %78 = phi double [ %47, %49 ], [ %handler_result10, %71 ]
  %79 = icmp eq i32 %50, 0, !dbg !170
  br i1 %79, label %84, label %80, !dbg !170

80:                                               ; preds = %73
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !104, metadata !DIExpression()), !dbg !108
  tail call void @llvm.dbg.value(metadata double %78, metadata !99, metadata !DIExpression()), !dbg !108
  tail call void @llvm.dbg.value(metadata double %77, metadata !100, metadata !DIExpression()), !dbg !108
  tail call void @llvm.dbg.value(metadata double %78, metadata !98, metadata !DIExpression()), !dbg !108
  %handler_result11 = call double @fAddHandlerDouble(double %handler_result4, double %76), !dbg !173
  %handler_result12 = call double @fAddHandlerDouble(double %handler_result11, double 1.000000e+00), !dbg !174
  %81 = fmul double %handler_result12, 2.000000e+00, !dbg !174
  %82 = fdiv double %81, %1, !dbg !175
  %83 = fmul double %78, %82, !dbg !176
  %handler_result13 = call double @fAddHandlerDouble(double %77, double %83), !dbg !181
  tail call void @llvm.dbg.value(metadata double %handler_result13, metadata !99, metadata !DIExpression()), !dbg !108
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !104, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !108
  br label %84, !dbg !181

84:                                               ; preds = %80, %73, %44
  %85 = phi double [ %47, %44 ], [ %75, %73 ], [ %handler_result13, %80 ], !dbg !108
  %86 = phi double [ %46, %44 ], [ %74, %73 ], [ %78, %80 ], !dbg !108
  %87 = call i32 @gsl_sf_bessel_I_CF1_ser(double noundef %0, double noundef %1, ptr noundef nonnull %8) #5, !dbg !181
  tail call void @llvm.dbg.value(metadata i32 %87, metadata !102, metadata !DIExpression()), !dbg !108
  %88 = load double, ptr %8, align 8, !dbg !182, !tbaa !165
  %89 = fmul double %86, %88, !dbg !183
  %handler_result14 = call double @fAddHandlerDouble(double %85, double %89), !dbg !184
  %90 = fmul double %handler_result14, %1, !dbg !184
  %91 = fdiv double 1.000000e+00, %90, !dbg !185
  store double %91, ptr %2, align 8, !dbg !186, !tbaa !118
  %92 = fmul double %38, 5.000000e-01, !dbg !187
  %handler_result15 = call double @fAddHandlerDouble(double %92, double 2.000000e+00), !dbg !188
  %93 = fmul double %handler_result15, 0x3CB0000000000000, !dbg !188
  %94 = call double @llvm.fabs.f64(double %91), !dbg !189
  %95 = fmul double %93, %94, !dbg !190
  %96 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !191
  store double %95, ptr %96, align 8, !dbg !192, !tbaa !123
  %97 = icmp eq i32 %45, 0, !dbg !193
  %98 = select i1 %97, i32 %87, i32 %45, !dbg !193
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #5, !dbg !194
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #5, !dbg !194
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #5, !dbg !194
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #5, !dbg !194
  br label %99

99:                                               ; preds = %84, %34, %18, %12
  %100 = phi i32 [ 1, %12 ], [ %21, %18 ], [ %35, %34 ], [ %98, %84 ], !dbg !195
  ret i32 %100, !dbg !196
}

declare !dbg !197 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !202 double @exp(double noundef) local_unnamed_addr #3

declare !dbg !206 i32 @gsl_sf_bessel_IJ_taylor_e(double noundef, double noundef, i32 noundef, i32 noundef, double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

declare !dbg !212 i32 @gsl_sf_bessel_Inu_scaled_asymp_unif_e(double noundef, double noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !215 i32 @gsl_sf_bessel_K_scaled_temme(double noundef, double noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !220 i32 @gsl_sf_bessel_K_scaled_steed_temme_CF2(double noundef, double noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !221 i32 @gsl_sf_bessel_I_CF1_ser(double noundef, double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_bessel_Inu_e(double noundef %0, double noundef %1, ptr noundef %2) local_unnamed_addr #0 !dbg !224 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !232
  call void @llvm.dbg.assign(metadata i1 undef, metadata !229, metadata !DIExpression(), metadata !232, metadata ptr %4, metadata !DIExpression()), !dbg !233
  tail call void @llvm.dbg.value(metadata double %0, metadata !226, metadata !DIExpression()), !dbg !233
  tail call void @llvm.dbg.value(metadata double %1, metadata !227, metadata !DIExpression()), !dbg !233
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !228, metadata !DIExpression()), !dbg !233
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #5, !dbg !234
  %5 = call i32 @gsl_sf_bessel_Inu_scaled_e(double noundef %0, double noundef %1, ptr noundef nonnull %4), !dbg !235
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !230, metadata !DIExpression()), !dbg !233
  %6 = fmul double %1, 0x3CB0000000000000, !dbg !236
  %7 = call double @llvm.fabs.f64(double %6), !dbg !237
  %8 = load double, ptr %4, align 8, !dbg !238, !tbaa !118
  %9 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !239
  %10 = load double, ptr %9, align 8, !dbg !239, !tbaa !123
  %11 = call i32 @gsl_sf_exp_mult_err_e(double noundef %1, double noundef %7, double noundef %8, double noundef %10, ptr noundef %2) #5, !dbg !240
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !231, metadata !DIExpression()), !dbg !233
  %12 = icmp eq i32 %11, 0, !dbg !241
  %13 = select i1 %12, i32 %5, i32 %11, !dbg !241
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #5, !dbg !242
  ret i32 %13, !dbg !243
}

declare !dbg !244 i32 @gsl_sf_exp_mult_err_e(double noundef, double noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_bessel_Inu_scaled(double noundef %0, double noundef %1) local_unnamed_addr #0 !dbg !248 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !256
  call void @llvm.dbg.assign(metadata i1 undef, metadata !254, metadata !DIExpression(), metadata !256, metadata ptr %3, metadata !DIExpression()), !dbg !257
  tail call void @llvm.dbg.value(metadata double %0, metadata !252, metadata !DIExpression()), !dbg !257
  tail call void @llvm.dbg.value(metadata double %1, metadata !253, metadata !DIExpression()), !dbg !257
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #5, !dbg !258
  %4 = call i32 @gsl_sf_bessel_Inu_scaled_e(double noundef %0, double noundef %1, ptr noundef nonnull %3), !dbg !258
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !255, metadata !DIExpression()), !dbg !257
  %5 = icmp eq i32 %4, 0, !dbg !259
  br i1 %5, label %7, label %6, !dbg !258

6:                                                ; preds = %2
  call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 115, i32 noundef %4) #5, !dbg !261
  br label %7, !dbg !261

7:                                                ; preds = %6, %2
  %8 = load double, ptr %3, align 8, !dbg !258, !tbaa !118
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #5, !dbg !264
  ret double %8, !dbg !264
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_bessel_Inu(double noundef %0, double noundef %1) local_unnamed_addr #0 !dbg !265 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !271
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !272
  call void @llvm.dbg.assign(metadata i1 undef, metadata !269, metadata !DIExpression(), metadata !272, metadata ptr %4, metadata !DIExpression()), !dbg !273
  tail call void @llvm.dbg.value(metadata double %0, metadata !267, metadata !DIExpression()), !dbg !273
  tail call void @llvm.dbg.value(metadata double %1, metadata !268, metadata !DIExpression()), !dbg !273
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #5, !dbg !274
  call void @llvm.dbg.assign(metadata i1 undef, metadata !229, metadata !DIExpression(), metadata !271, metadata ptr %3, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata double %0, metadata !226, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata double %1, metadata !227, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata ptr %4, metadata !228, metadata !DIExpression()), !dbg !275
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #5, !dbg !277
  %5 = call i32 @gsl_sf_bessel_Inu_scaled_e(double noundef %0, double noundef %1, ptr noundef nonnull %3), !dbg !278
  call void @llvm.dbg.value(metadata i32 %5, metadata !230, metadata !DIExpression()), !dbg !275
  %6 = fmul double %1, 0x3CB0000000000000, !dbg !279
  %7 = call double @llvm.fabs.f64(double %6), !dbg !280
  %8 = load double, ptr %3, align 8, !dbg !281, !tbaa !118
  %9 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !282
  %10 = load double, ptr %9, align 8, !dbg !282, !tbaa !123
  %11 = call i32 @gsl_sf_exp_mult_err_e(double noundef %1, double noundef %7, double noundef %8, double noundef %10, ptr noundef nonnull %4) #5, !dbg !283
  call void @llvm.dbg.value(metadata i32 %11, metadata !231, metadata !DIExpression()), !dbg !275
  %12 = icmp eq i32 %11, 0, !dbg !284
  %13 = select i1 %12, i32 %5, i32 %11, !dbg !284
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #5, !dbg !285
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !270, metadata !DIExpression()), !dbg !273
  %14 = icmp eq i32 %13, 0, !dbg !286
  br i1 %14, label %16, label %15, !dbg !274

15:                                               ; preds = %2
  call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 121, i32 noundef %13) #5, !dbg !288
  br label %16, !dbg !288

16:                                               ; preds = %15, %2
  %17 = load double, ptr %4, align 8, !dbg !274, !tbaa !118
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #5, !dbg !291
  ret double %17, !dbg !291
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #4

declare double @fAddHandlerDouble(double, double)

declare double @fSubHandlerDouble(double, double)

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!19}
!llvm.module.flags = !{!62, !63, !64, !65, !66, !67, !68}
!llvm.ident = !{!69}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 43, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "bessel_Inu.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "98b2670e9c1e8700638b3b11195fc777")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 13)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 43, type: !3, isLocal: true, isDefinition: true)
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(scope: null, file: !2, line: 115, type: !11, isLocal: true, isDefinition: true)
!11 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 344, elements: !12)
!12 = !{!13}
!13 = !DISubrange(count: 43)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(scope: null, file: !2, line: 121, type: !16, isLocal: true, isDefinition: true)
!16 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !17)
!17 = !{!18}
!18 = !DISubrange(count: 36)
!19 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !20, retainedTypes: !60, globals: !61, splitDebugInlining: false, nameTableKind: None)
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
!60 = !{!23}
!61 = !{!0, !7, !9, !14}
!62 = !{i32 7, !"Dwarf Version", i32 5}
!63 = !{i32 2, !"Debug Info Version", i32 3}
!64 = !{i32 1, !"wchar_size", i32 4}
!65 = !{i32 8, !"PIC Level", i32 2}
!66 = !{i32 7, !"PIE Level", i32 2}
!67 = !{i32 7, !"uwtable", i32 2}
!68 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!69 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!70 = distinct !DISubprogram(name: "gsl_sf_bessel_Inu_scaled_e", scope: !2, file: !2, line: 38, type: !71, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !81)
!71 = !DISubroutineType(types: !72)
!72 = !{!23, !73, !73, !74}
!73 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !76, line: 41, baseType: !77)
!76 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "5b52deed011f1ffd07977b19a388d251")
!77 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !76, line: 37, size: 128, elements: !78)
!78 = !{!79, !80}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !77, file: !76, line: 38, baseType: !73, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !77, file: !76, line: 39, baseType: !73, size: 64, offset: 64)
!81 = !{!82, !83, !84, !85, !89, !90, !91, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104}
!82 = !DILocalVariable(name: "nu", arg: 1, scope: !70, file: !2, line: 38, type: !73)
!83 = !DILocalVariable(name: "x", arg: 2, scope: !70, file: !2, line: 38, type: !73)
!84 = !DILocalVariable(name: "result", arg: 3, scope: !70, file: !2, line: 38, type: !74)
!85 = !DILocalVariable(name: "b", scope: !86, file: !2, line: 46, type: !75)
!86 = distinct !DILexicalBlock(scope: !87, file: !2, line: 45, column: 32)
!87 = distinct !DILexicalBlock(scope: !88, file: !2, line: 45, column: 11)
!88 = distinct !DILexicalBlock(scope: !70, file: !2, line: 42, column: 6)
!89 = !DILocalVariable(name: "ex", scope: !86, file: !2, line: 47, type: !73)
!90 = !DILocalVariable(name: "stat", scope: !86, file: !2, line: 48, type: !23)
!91 = !DILocalVariable(name: "N", scope: !92, file: !2, line: 58, type: !23)
!92 = distinct !DILexicalBlock(scope: !93, file: !2, line: 57, column: 8)
!93 = distinct !DILexicalBlock(scope: !87, file: !2, line: 54, column: 11)
!94 = !DILocalVariable(name: "mu", scope: !92, file: !2, line: 59, type: !73)
!95 = !DILocalVariable(name: "K_mu", scope: !92, file: !2, line: 60, type: !73)
!96 = !DILocalVariable(name: "K_mup1", scope: !92, file: !2, line: 60, type: !73)
!97 = !DILocalVariable(name: "Kp_mu", scope: !92, file: !2, line: 60, type: !73)
!98 = !DILocalVariable(name: "K_nu", scope: !92, file: !2, line: 61, type: !73)
!99 = !DILocalVariable(name: "K_nup1", scope: !92, file: !2, line: 61, type: !73)
!100 = !DILocalVariable(name: "K_num1", scope: !92, file: !2, line: 61, type: !73)
!101 = !DILocalVariable(name: "I_nu_ratio", scope: !92, file: !2, line: 62, type: !73)
!102 = !DILocalVariable(name: "stat_Irat", scope: !92, file: !2, line: 63, type: !23)
!103 = !DILocalVariable(name: "stat_Kmu", scope: !92, file: !2, line: 64, type: !23)
!104 = !DILocalVariable(name: "n", scope: !92, file: !2, line: 65, type: !23)
!105 = distinct !DIAssignID()
!106 = !DILocation(line: 0, scope: !86)
!107 = distinct !DIAssignID()
!108 = !DILocation(line: 0, scope: !92)
!109 = distinct !DIAssignID()
!110 = distinct !DIAssignID()
!111 = distinct !DIAssignID()
!112 = !DILocation(line: 0, scope: !70)
!113 = !DILocation(line: 42, column: 8, scope: !88)
!114 = !DILocation(line: 42, column: 14, scope: !88)
!115 = !DILocation(line: 43, column: 5, scope: !116)
!116 = distinct !DILexicalBlock(scope: !117, file: !2, line: 43, column: 5)
!117 = distinct !DILexicalBlock(scope: !88, file: !2, line: 42, column: 27)
!118 = !{!119, !120, i64 0}
!119 = !{!"gsl_sf_result_struct", !120, i64 0, !120, i64 8}
!120 = !{!"double", !121, i64 0}
!121 = !{!"omnipotent char", !122, i64 0}
!122 = !{!"Simple C/C++ TBAA"}
!123 = !{!119, !120, i64 8}
!124 = !DILocation(line: 43, column: 5, scope: !125)
!125 = distinct !DILexicalBlock(scope: !116, file: !2, line: 43, column: 5)
!126 = !DILocation(line: 45, column: 12, scope: !87)
!127 = !DILocation(line: 45, column: 21, scope: !87)
!128 = !DILocation(line: 45, column: 15, scope: !87)
!129 = !DILocation(line: 45, column: 11, scope: !88)
!130 = !DILocation(line: 46, column: 5, scope: !86)
!131 = !DILocation(line: 47, column: 21, scope: !86)
!132 = !DILocation(line: 47, column: 17, scope: !86)
!133 = !DILocation(line: 48, column: 16, scope: !86)
!134 = !DILocation(line: 49, column: 22, scope: !86)
!135 = !DILocation(line: 49, column: 26, scope: !86)
!136 = !DILocation(line: 49, column: 18, scope: !86)
!137 = !DILocation(line: 50, column: 22, scope: !86)
!138 = !DILocation(line: 50, column: 26, scope: !86)
!139 = !DILocation(line: 50, column: 13, scope: !86)
!140 = !DILocation(line: 51, column: 44, scope: !86)
!141 = !DILocation(line: 51, column: 42, scope: !86)
!142 = !DILocation(line: 51, column: 17, scope: !86)
!143 = !DILocation(line: 53, column: 3, scope: !87)
!144 = !DILocation(line: 54, column: 18, scope: !93)
!145 = !DILocation(line: 54, column: 14, scope: !93)
!146 = !DILocation(line: 54, column: 29, scope: !93)
!147 = !DILocation(line: 54, column: 11, scope: !87)
!148 = !DILocation(line: 55, column: 12, scope: !149)
!149 = distinct !DILexicalBlock(scope: !93, file: !2, line: 54, column: 54)
!150 = !DILocation(line: 55, column: 5, scope: !149)
!151 = !DILocation(line: 58, column: 13, scope: !92)
!152 = !DILocation(line: 59, column: 22, scope: !92)
!153 = !DILocation(line: 60, column: 5, scope: !92)
!154 = !DILocation(line: 62, column: 5, scope: !92)
!155 = !DILocation(line: 68, column: 10, scope: !156)
!156 = distinct !DILexicalBlock(scope: !92, file: !2, line: 68, column: 8)
!157 = !DILocation(line: 68, column: 8, scope: !92)
!158 = !DILocation(line: 69, column: 18, scope: !159)
!159 = distinct !DILexicalBlock(scope: !156, file: !2, line: 68, column: 17)
!160 = !DILocation(line: 70, column: 5, scope: !159)
!161 = !DILocation(line: 72, column: 18, scope: !162)
!162 = distinct !DILexicalBlock(scope: !156, file: !2, line: 71, column: 10)
!163 = !DILocation(line: 0, scope: !156)
!164 = !DILocation(line: 76, column: 14, scope: !92)
!165 = !{!120, !120, i64 0}
!166 = !DILocation(line: 77, column: 14, scope: !92)
!167 = !DILocation(line: 79, column: 15, scope: !168)
!168 = distinct !DILexicalBlock(scope: !169, file: !2, line: 79, column: 5)
!169 = distinct !DILexicalBlock(scope: !92, file: !2, line: 79, column: 5)
!170 = !DILocation(line: 79, column: 5, scope: !169)
!171 = !DILocation(line: 82, column: 24, scope: !172)
!172 = distinct !DILexicalBlock(scope: !168, file: !2, line: 79, column: 24)
!173 = !DILocation(line: 82, column: 25, scope: !172)
!174 = !DILocation(line: 82, column: 19, scope: !172)
!175 = !DILocation(line: 82, column: 28, scope: !172)
!176 = !DILocation(line: 82, column: 31, scope: !172)
!177 = !DILocation(line: 79, column: 20, scope: !168)
!178 = distinct !{!178, !170, !179, !180}
!179 = !DILocation(line: 83, column: 5, scope: !169)
!180 = !{!"llvm.loop.mustprogress"}
!181 = !DILocation(line: 86, column: 17, scope: !92)
!182 = !DILocation(line: 89, column: 38, scope: !92)
!183 = !DILocation(line: 89, column: 49, scope: !92)
!184 = !DILocation(line: 89, column: 26, scope: !92)
!185 = !DILocation(line: 89, column: 22, scope: !92)
!186 = !DILocation(line: 89, column: 17, scope: !92)
!187 = !DILocation(line: 90, column: 41, scope: !92)
!188 = !DILocation(line: 90, column: 35, scope: !92)
!189 = !DILocation(line: 90, column: 53, scope: !92)
!190 = !DILocation(line: 90, column: 51, scope: !92)
!191 = !DILocation(line: 90, column: 13, scope: !92)
!192 = !DILocation(line: 90, column: 17, scope: !92)
!193 = !DILocation(line: 92, column: 12, scope: !92)
!194 = !DILocation(line: 93, column: 3, scope: !93)
!195 = !DILocation(line: 0, scope: !88)
!196 = !DILocation(line: 94, column: 1, scope: !70)
!197 = !DISubprogram(name: "gsl_error", scope: !22, file: !22, line: 77, type: !198, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!198 = !DISubroutineType(types: !199)
!199 = !{null, !200, !200, !23, !23}
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!202 = !DISubprogram(name: "exp", scope: !203, file: !203, line: 95, type: !204, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!203 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!204 = !DISubroutineType(types: !205)
!205 = !{!73, !73}
!206 = !DISubprogram(name: "gsl_sf_bessel_IJ_taylor_e", scope: !207, file: !207, line: 32, type: !208, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!207 = !DIFile(filename: "./bessel.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "57b96fff5bee18a41e1173dbca5404a0")
!208 = !DISubroutineType(types: !209)
!209 = !{!23, !210, !210, !211, !211, !210, !74}
!210 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !73)
!211 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !23)
!212 = !DISubprogram(name: "gsl_sf_bessel_Inu_scaled_asymp_unif_e", scope: !207, file: !207, line: 48, type: !213, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!213 = !DISubroutineType(types: !214)
!214 = !{!23, !210, !210, !74}
!215 = !DISubprogram(name: "gsl_sf_bessel_K_scaled_temme", scope: !216, file: !216, line: 34, type: !217, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!216 = !DIFile(filename: "./bessel_temme.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "896353903515c0fd2eba1477c11cb66c")
!217 = !DISubroutineType(types: !218)
!218 = !{!23, !210, !210, !219, !219, !219}
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!220 = !DISubprogram(name: "gsl_sf_bessel_K_scaled_steed_temme_CF2", scope: !207, file: !207, line: 81, type: !217, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!221 = !DISubprogram(name: "gsl_sf_bessel_I_CF1_ser", scope: !207, file: !207, line: 62, type: !222, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!222 = !DISubroutineType(types: !223)
!223 = !{!23, !210, !210, !219}
!224 = distinct !DISubprogram(name: "gsl_sf_bessel_Inu_e", scope: !2, file: !2, line: 98, type: !71, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !225)
!225 = !{!226, !227, !228, !229, !230, !231}
!226 = !DILocalVariable(name: "nu", arg: 1, scope: !224, file: !2, line: 98, type: !73)
!227 = !DILocalVariable(name: "x", arg: 2, scope: !224, file: !2, line: 98, type: !73)
!228 = !DILocalVariable(name: "result", arg: 3, scope: !224, file: !2, line: 98, type: !74)
!229 = !DILocalVariable(name: "b", scope: !224, file: !2, line: 100, type: !75)
!230 = !DILocalVariable(name: "stat_I", scope: !224, file: !2, line: 101, type: !23)
!231 = !DILocalVariable(name: "stat_e", scope: !224, file: !2, line: 102, type: !23)
!232 = distinct !DIAssignID()
!233 = !DILocation(line: 0, scope: !224)
!234 = !DILocation(line: 100, column: 3, scope: !224)
!235 = !DILocation(line: 101, column: 16, scope: !224)
!236 = !DILocation(line: 102, column: 47, scope: !224)
!237 = !DILocation(line: 102, column: 41, scope: !224)
!238 = !DILocation(line: 103, column: 43, scope: !224)
!239 = !DILocation(line: 103, column: 50, scope: !224)
!240 = !DILocation(line: 102, column: 16, scope: !224)
!241 = !DILocation(line: 105, column: 10, scope: !224)
!242 = !DILocation(line: 106, column: 1, scope: !224)
!243 = !DILocation(line: 105, column: 3, scope: !224)
!244 = !DISubprogram(name: "gsl_sf_exp_mult_err_e", scope: !245, file: !245, line: 122, type: !246, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!245 = !DIFile(filename: "../gsl/gsl_sf_exp.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "c512f91507e79efdd09661b0faef2cde")
!246 = !DISubroutineType(types: !247)
!247 = !{!23, !210, !210, !210, !210, !74}
!248 = distinct !DISubprogram(name: "gsl_sf_bessel_Inu_scaled", scope: !2, file: !2, line: 113, type: !249, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !251)
!249 = !DISubroutineType(types: !250)
!250 = !{!73, !73, !73}
!251 = !{!252, !253, !254, !255}
!252 = !DILocalVariable(name: "nu", arg: 1, scope: !248, file: !2, line: 113, type: !73)
!253 = !DILocalVariable(name: "x", arg: 2, scope: !248, file: !2, line: 113, type: !73)
!254 = !DILocalVariable(name: "result", scope: !248, file: !2, line: 115, type: !75)
!255 = !DILocalVariable(name: "status", scope: !248, file: !2, line: 115, type: !23)
!256 = distinct !DIAssignID()
!257 = !DILocation(line: 0, scope: !248)
!258 = !DILocation(line: 115, column: 3, scope: !248)
!259 = !DILocation(line: 115, column: 3, scope: !260)
!260 = distinct !DILexicalBlock(scope: !248, file: !2, line: 115, column: 3)
!261 = !DILocation(line: 115, column: 3, scope: !262)
!262 = distinct !DILexicalBlock(scope: !263, file: !2, line: 115, column: 3)
!263 = distinct !DILexicalBlock(scope: !260, file: !2, line: 115, column: 3)
!264 = !DILocation(line: 116, column: 1, scope: !248)
!265 = distinct !DISubprogram(name: "gsl_sf_bessel_Inu", scope: !2, file: !2, line: 119, type: !249, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !266)
!266 = !{!267, !268, !269, !270}
!267 = !DILocalVariable(name: "nu", arg: 1, scope: !265, file: !2, line: 119, type: !73)
!268 = !DILocalVariable(name: "x", arg: 2, scope: !265, file: !2, line: 119, type: !73)
!269 = !DILocalVariable(name: "result", scope: !265, file: !2, line: 121, type: !75)
!270 = !DILocalVariable(name: "status", scope: !265, file: !2, line: 121, type: !23)
!271 = distinct !DIAssignID()
!272 = distinct !DIAssignID()
!273 = !DILocation(line: 0, scope: !265)
!274 = !DILocation(line: 121, column: 3, scope: !265)
!275 = !DILocation(line: 0, scope: !224, inlinedAt: !276)
!276 = distinct !DILocation(line: 121, column: 3, scope: !265)
!277 = !DILocation(line: 100, column: 3, scope: !224, inlinedAt: !276)
!278 = !DILocation(line: 101, column: 16, scope: !224, inlinedAt: !276)
!279 = !DILocation(line: 102, column: 47, scope: !224, inlinedAt: !276)
!280 = !DILocation(line: 102, column: 41, scope: !224, inlinedAt: !276)
!281 = !DILocation(line: 103, column: 43, scope: !224, inlinedAt: !276)
!282 = !DILocation(line: 103, column: 50, scope: !224, inlinedAt: !276)
!283 = !DILocation(line: 102, column: 16, scope: !224, inlinedAt: !276)
!284 = !DILocation(line: 105, column: 10, scope: !224, inlinedAt: !276)
!285 = !DILocation(line: 106, column: 1, scope: !224, inlinedAt: !276)
!286 = !DILocation(line: 121, column: 3, scope: !287)
!287 = distinct !DILexicalBlock(scope: !265, file: !2, line: 121, column: 3)
!288 = !DILocation(line: 121, column: 3, scope: !289)
!289 = distinct !DILexicalBlock(scope: !290, file: !2, line: 121, column: 3)
!290 = distinct !DILexicalBlock(scope: !287, file: !2, line: 121, column: 3)
!291 = !DILocation(line: 122, column: 1, scope: !265)
