; ModuleID = 'bessel_Ynu.ll'
source_filename = "bessel_Ynu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [13 x i8] c"domain error\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [13 x i8] c"bessel_Ynu.c\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [36 x i8] c"gsl_sf_bessel_Ynu_e(nu, x, &result)\00", align 1, !dbg !9

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_bessel_Ynupos_e(double noundef %0, double noundef %1, ptr noundef %2) local_unnamed_addr #0 !dbg !65 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !95
  call void @llvm.dbg.assign(metadata i1 undef, metadata !84, metadata !DIExpression(), metadata !95, metadata ptr %4, metadata !DIExpression()), !dbg !96
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !97
  call void @llvm.dbg.assign(metadata i1 undef, metadata !85, metadata !DIExpression(), metadata !97, metadata ptr %5, metadata !DIExpression()), !dbg !96
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !98
  call void @llvm.dbg.assign(metadata i1 undef, metadata !91, metadata !DIExpression(), metadata !98, metadata ptr %6, metadata !DIExpression()), !dbg !99
  %7 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !100
  call void @llvm.dbg.assign(metadata i1 undef, metadata !94, metadata !DIExpression(), metadata !100, metadata ptr %7, metadata !DIExpression()), !dbg !99
  tail call void @llvm.dbg.value(metadata double %0, metadata !77, metadata !DIExpression()), !dbg !101
  tail call void @llvm.dbg.value(metadata double %1, metadata !78, metadata !DIExpression()), !dbg !101
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !79, metadata !DIExpression()), !dbg !101
  %8 = fcmp ogt double %0, 5.000000e+01, !dbg !102
  br i1 %8, label %9, label %11, !dbg !103

9:                                                ; preds = %3
  %10 = tail call i32 @gsl_sf_bessel_Ynu_asymp_Olver_e(double noundef %0, double noundef %1, ptr noundef %2) #4, !dbg !104
  br label %66, !dbg !106

11:                                               ; preds = %3
  %handler_result = call double @fAddHandlerDouble(double %0, double 5.000000e-01), !dbg !107
  %12 = fptosi double %handler_result to i32, !dbg !107
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !80, metadata !DIExpression()), !dbg !96
  %13 = sitofp i32 %12 to double, !dbg !108
  %handler_result1 = call double @fSubHandlerDouble(double %0, double %13), !dbg !109
  tail call void @llvm.dbg.value(metadata double %handler_result1, metadata !83, metadata !DIExpression()), !dbg !96
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #4, !dbg !109
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #4, !dbg !109
  %14 = fcmp olt double %1, 2.000000e+00, !dbg !110
  br i1 %14, label %15, label %17, !dbg !111

15:                                               ; preds = %11
  %16 = call i32 @gsl_sf_bessel_Y_temme(double noundef %handler_result1, double noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %5) #4, !dbg !112
  tail call void @llvm.dbg.value(metadata i32 %16, metadata !86, metadata !DIExpression()), !dbg !96
  br label %19, !dbg !114

17:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #4, !dbg !115
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #4, !dbg !115
  %18 = call i32 @gsl_sf_bessel_JY_mu_restricted(double noundef %handler_result1, double noundef %1, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %4, ptr noundef nonnull %5) #4, !dbg !116
  tail call void @llvm.dbg.value(metadata i32 %18, metadata !86, metadata !DIExpression()), !dbg !96
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #4, !dbg !117
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #4, !dbg !117
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi i32 [ %16, %15 ], [ %18, %17 ], !dbg !118
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !86, metadata !DIExpression()), !dbg !96
  %21 = load double, ptr %4, align 8, !dbg !119, !tbaa !120
  tail call void @llvm.dbg.value(metadata double %21, metadata !87, metadata !DIExpression()), !dbg !96
  %22 = load double, ptr %5, align 8, !dbg !125, !tbaa !120
  tail call void @llvm.dbg.value(metadata double %22, metadata !88, metadata !DIExpression()), !dbg !96
  tail call void @llvm.dbg.value(metadata i32 1, metadata !90, metadata !DIExpression()), !dbg !96
  tail call void @llvm.dbg.value(metadata double %21, metadata !87, metadata !DIExpression()), !dbg !96
  %23 = icmp slt i32 %12, 1, !dbg !126
  br i1 %23, label %51, label %24, !dbg !129

24:                                               ; preds = %19
  %25 = and i32 %12, 1, !dbg !129
  %26 = icmp eq i32 %12, 1, !dbg !129
  br i1 %26, label %46, label %27, !dbg !129

27:                                               ; preds = %24
  %28 = and i32 %12, 2147483646, !dbg !129
  br label %29, !dbg !129

29:                                               ; preds = %29, %27
  %30 = phi i32 [ 1, %27 ], [ %43, %29 ]
  %31 = phi double [ %22, %27 ], [ %handler_result5, %29 ]
  %32 = phi double [ %21, %27 ], [ %handler_result3, %29 ]
  %33 = phi i32 [ 0, %27 ], [ %44, %29 ]
  tail call void @llvm.dbg.value(metadata i32 %30, metadata !90, metadata !DIExpression()), !dbg !96
  tail call void @llvm.dbg.value(metadata double %31, metadata !88, metadata !DIExpression()), !dbg !96
  tail call void @llvm.dbg.value(metadata double %32, metadata !87, metadata !DIExpression()), !dbg !96
  %34 = sitofp i32 %30 to double, !dbg !130
  %handler_result2 = call double @fAddHandlerDouble(double %handler_result1, double %34), !dbg !132
  %35 = fmul double %handler_result2, 2.000000e+00, !dbg !132
  %36 = fdiv double %35, %1, !dbg !133
  %37 = fmul double %31, %36, !dbg !134
  %handler_result3 = call double @fSubHandlerDouble(double %37, double %32), !dbg !135
  tail call void @llvm.dbg.value(metadata double %handler_result3, metadata !89, metadata !DIExpression()), !dbg !96
  tail call void @llvm.dbg.value(metadata double %31, metadata !87, metadata !DIExpression()), !dbg !96
  tail call void @llvm.dbg.value(metadata double %handler_result3, metadata !88, metadata !DIExpression()), !dbg !96
  %38 = add nuw i32 %30, 1, !dbg !135
  tail call void @llvm.dbg.value(metadata i32 %38, metadata !90, metadata !DIExpression()), !dbg !96
  tail call void @llvm.dbg.value(metadata i32 %38, metadata !90, metadata !DIExpression()), !dbg !96
  tail call void @llvm.dbg.value(metadata double %handler_result3, metadata !88, metadata !DIExpression()), !dbg !96
  tail call void @llvm.dbg.value(metadata double %31, metadata !87, metadata !DIExpression()), !dbg !96
  %39 = sitofp i32 %38 to double, !dbg !130
  %handler_result4 = call double @fAddHandlerDouble(double %handler_result1, double %39), !dbg !132
  %40 = fmul double %handler_result4, 2.000000e+00, !dbg !132
  %41 = fdiv double %40, %1, !dbg !133
  %42 = fmul double %handler_result3, %41, !dbg !134
  %handler_result5 = call double @fSubHandlerDouble(double %42, double %31), !dbg !135
  tail call void @llvm.dbg.value(metadata double %handler_result5, metadata !89, metadata !DIExpression()), !dbg !96
  tail call void @llvm.dbg.value(metadata double %handler_result3, metadata !87, metadata !DIExpression()), !dbg !96
  tail call void @llvm.dbg.value(metadata double %handler_result5, metadata !88, metadata !DIExpression()), !dbg !96
  %43 = add nuw i32 %30, 2, !dbg !135
  tail call void @llvm.dbg.value(metadata i32 %43, metadata !90, metadata !DIExpression()), !dbg !96
  %44 = add i32 %33, 2, !dbg !129
  %45 = icmp eq i32 %44, %28, !dbg !129
  br i1 %45, label %46, label %29, !dbg !129, !llvm.loop !136

46:                                               ; preds = %29, %24
  %47 = phi double [ undef, %24 ], [ %handler_result3, %29 ]
  %48 = phi double [ %22, %24 ], [ %handler_result5, %29 ]
  %49 = icmp eq i32 %25, 0, !dbg !129
  %50 = select i1 %49, double %47, double %48, !dbg !129
  br label %51, !dbg !139

51:                                               ; preds = %46, %19
  %52 = phi double [ %21, %19 ], [ %50, %46 ], !dbg !96
  store double %52, ptr %2, align 8, !dbg !139, !tbaa !120
  %handler_result6 = call double @fAddHandlerDouble(double %13, double 1.000000e+00), !dbg !140
  %53 = call double @llvm.fabs.f64(double %52), !dbg !140
  %54 = fmul double %handler_result6, %53, !dbg !141
  %55 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !142
  %56 = load double, ptr %55, align 8, !dbg !142, !tbaa !143
  %57 = fdiv double %56, %21, !dbg !144
  %58 = call double @llvm.fabs.f64(double %57), !dbg !145
  %59 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !146
  %60 = load double, ptr %59, align 8, !dbg !146, !tbaa !143
  %61 = fdiv double %60, %22, !dbg !147
  %62 = call double @llvm.fabs.f64(double %61), !dbg !148
  %handler_result7 = call double @fAddHandlerDouble(double %58, double %62), !dbg !149
  %63 = fmul double %54, %handler_result7, !dbg !149
  %64 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !150
  %65 = fmul double %53, 0x3CC0000000000000, !dbg !151
  %handler_result8 = call double @fAddHandlerDouble(double %65, double %63), !dbg !152
  store double %handler_result8, ptr %64, align 8, !dbg !152, !tbaa !143
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #4, !dbg !153
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #4, !dbg !153
  br label %66

66:                                               ; preds = %51, %9
  %67 = phi i32 [ %10, %9 ], [ %20, %51 ], !dbg !154
  ret i32 %67, !dbg !155
}

declare !dbg !156 i32 @gsl_sf_bessel_Ynu_asymp_Olver_e(double noundef, double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare !dbg !158 i32 @gsl_sf_bessel_Y_temme(double noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !163 i32 @gsl_sf_bessel_JY_mu_restricted(double noundef, double noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #3

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_bessel_Ynu_e(double noundef %0, double noundef %1, ptr noundef %2) local_unnamed_addr #0 !dbg !167 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !169, metadata !DIExpression()), !dbg !187
  tail call void @llvm.dbg.value(metadata double %1, metadata !170, metadata !DIExpression()), !dbg !187
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !171, metadata !DIExpression()), !dbg !187
  %4 = fcmp ugt double %1, 0.000000e+00, !dbg !188
  br i1 %4, label %7, label %5, !dbg !189

5:                                                ; preds = %3
  store double 0x7FF8000000000000, ptr %2, align 8, !dbg !190, !tbaa !120
  %6 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !190
  store double 0x7FF8000000000000, ptr %6, align 8, !dbg !190, !tbaa !143
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 126, i32 noundef 1) #4, !dbg !193
  br label %42, !dbg !193

7:                                                ; preds = %3
  %8 = fcmp olt double %0, 0.000000e+00, !dbg !195
  br i1 %8, label %9, label %40, !dbg !196

9:                                                ; preds = %7
  %10 = fneg double %0, !dbg !197
  %11 = tail call i32 @gsl_sf_bessel_Jnupos_e(double noundef %10, double noundef %1, ptr noundef %2) #4, !dbg !198
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !172, metadata !DIExpression()), !dbg !199
  %12 = load double, ptr %2, align 8, !dbg !200, !tbaa !120
  tail call void @llvm.dbg.value(metadata double %12, metadata !176, metadata !DIExpression()), !dbg !199
  %13 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !201
  %14 = load double, ptr %13, align 8, !dbg !201, !tbaa !143
  tail call void @llvm.dbg.value(metadata double %14, metadata !177, metadata !DIExpression()), !dbg !199
  %15 = tail call i32 @gsl_sf_bessel_Ynupos_e(double noundef %10, double noundef %1, ptr noundef nonnull %2), !dbg !202
  tail call void @llvm.dbg.value(metadata i32 %15, metadata !178, metadata !DIExpression()), !dbg !199
  %16 = load double, ptr %2, align 8, !dbg !203, !tbaa !120
  tail call void @llvm.dbg.value(metadata double %16, metadata !179, metadata !DIExpression()), !dbg !199
  %17 = load double, ptr %13, align 8, !dbg !204, !tbaa !143
  tail call void @llvm.dbg.value(metadata double %17, metadata !180, metadata !DIExpression()), !dbg !199
  %18 = tail call i32 @gsl_sf_sin_pi_e(double noundef %0, ptr noundef nonnull %2) #4, !dbg !205
  tail call void @llvm.dbg.value(metadata i32 %18, metadata !181, metadata !DIExpression()), !dbg !199
  %19 = load double, ptr %2, align 8, !dbg !206, !tbaa !120
  tail call void @llvm.dbg.value(metadata double %19, metadata !182, metadata !DIExpression()), !dbg !199
  %20 = load double, ptr %13, align 8, !dbg !207, !tbaa !143
  tail call void @llvm.dbg.value(metadata double %20, metadata !183, metadata !DIExpression()), !dbg !199
  %21 = tail call i32 @gsl_sf_cos_pi_e(double noundef %0, ptr noundef nonnull %2) #4, !dbg !208
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !184, metadata !DIExpression()), !dbg !199
  %22 = load double, ptr %2, align 8, !dbg !209, !tbaa !120
  tail call void @llvm.dbg.value(metadata double %22, metadata !185, metadata !DIExpression()), !dbg !199
  %23 = load double, ptr %13, align 8, !dbg !210, !tbaa !143
  tail call void @llvm.dbg.value(metadata double %23, metadata !186, metadata !DIExpression()), !dbg !199
  %24 = fmul double %16, %22, !dbg !211
  %25 = fmul double %12, %19, !dbg !212
  %handler_result = call double @fSubHandlerDouble(double %24, double %25), !dbg !213
  store double %handler_result, ptr %2, align 8, !dbg !213, !tbaa !120
  %26 = fmul double %17, %22, !dbg !214
  %27 = tail call double @llvm.fabs.f64(double %26), !dbg !215
  %28 = fmul double %14, %19, !dbg !216
  %29 = tail call double @llvm.fabs.f64(double %28), !dbg !217
  %handler_result1 = call double @fAddHandlerDouble(double %29, double %27), !dbg !218
  %30 = fmul double %16, %23, !dbg !218
  %31 = tail call double @llvm.fabs.f64(double %30), !dbg !219
  %handler_result2 = call double @fAddHandlerDouble(double %handler_result1, double %31), !dbg !220
  %32 = fmul double %12, %20, !dbg !220
  %33 = tail call double @llvm.fabs.f64(double %32), !dbg !221
  %handler_result3 = call double @fAddHandlerDouble(double %33, double %handler_result2), !dbg !222
  store double %handler_result3, ptr %13, align 8, !dbg !222, !tbaa !143
  %34 = icmp eq i32 %11, 0, !dbg !223
  br i1 %34, label %35, label %42, !dbg !223

35:                                               ; preds = %9
  %36 = icmp eq i32 %15, 0, !dbg !223
  br i1 %36, label %37, label %42, !dbg !223

37:                                               ; preds = %35
  %38 = icmp eq i32 %18, 0, !dbg !223
  %39 = select i1 %38, i32 %21, i32 %18, !dbg !223
  br label %42, !dbg !223

40:                                               ; preds = %7
  %41 = tail call i32 @gsl_sf_bessel_Ynupos_e(double noundef %0, double noundef %1, ptr noundef %2), !dbg !224
  br label %42, !dbg !225

42:                                               ; preds = %40, %37, %35, %9, %5
  %43 = phi i32 [ 1, %5 ], [ %41, %40 ], [ %11, %9 ], [ %15, %35 ], [ %39, %37 ], !dbg !226
  ret i32 %43, !dbg !227
}

declare !dbg !228 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare !dbg !233 i32 @gsl_sf_bessel_Jnupos_e(double noundef, double noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !236 i32 @gsl_sf_sin_pi_e(double noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !240 i32 @gsl_sf_cos_pi_e(double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_bessel_Ynu(double noundef %0, double noundef %1) local_unnamed_addr #0 !dbg !241 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !249
  call void @llvm.dbg.assign(metadata i1 undef, metadata !247, metadata !DIExpression(), metadata !249, metadata ptr %3, metadata !DIExpression()), !dbg !250
  tail call void @llvm.dbg.value(metadata double %0, metadata !245, metadata !DIExpression()), !dbg !250
  tail call void @llvm.dbg.value(metadata double %1, metadata !246, metadata !DIExpression()), !dbg !250
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #4, !dbg !251
  %4 = call i32 @gsl_sf_bessel_Ynu_e(double noundef %0, double noundef %1, ptr noundef nonnull %3), !dbg !251
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !248, metadata !DIExpression()), !dbg !250
  %5 = icmp eq i32 %4, 0, !dbg !252
  br i1 %5, label %7, label %6, !dbg !251

6:                                                ; preds = %2
  call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 155, i32 noundef %4) #4, !dbg !254
  br label %7, !dbg !254

7:                                                ; preds = %6, %2
  %8 = load double, ptr %3, align 8, !dbg !251, !tbaa !120
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #4, !dbg !257
  ret double %8, !dbg !257
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #3

declare double @fAddHandlerDouble(double, double)

declare double @fSubHandlerDouble(double, double)

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!14}
!llvm.module.flags = !{!57, !58, !59, !60, !61, !62, !63}
!llvm.ident = !{!64}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 126, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "bessel_Ynu.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "c67f8c99b3517c192685d17c94cec616")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 13)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 126, type: !3, isLocal: true, isDefinition: true)
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(scope: null, file: !2, line: 155, type: !11, isLocal: true, isDefinition: true)
!11 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !12)
!12 = !{!13}
!13 = !DISubrange(count: 36)
!14 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !15, retainedTypes: !55, globals: !56, splitDebugInlining: false, nameTableKind: None)
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
!55 = !{!18}
!56 = !{!0, !7, !9}
!57 = !{i32 7, !"Dwarf Version", i32 5}
!58 = !{i32 2, !"Debug Info Version", i32 3}
!59 = !{i32 1, !"wchar_size", i32 4}
!60 = !{i32 8, !"PIC Level", i32 2}
!61 = !{i32 7, !"PIE Level", i32 2}
!62 = !{i32 7, !"uwtable", i32 2}
!63 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!64 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!65 = distinct !DISubprogram(name: "gsl_sf_bessel_Ynupos_e", scope: !2, file: !2, line: 69, type: !66, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !76)
!66 = !DISubroutineType(types: !67)
!67 = !{!18, !68, !68, !69}
!68 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !71, line: 41, baseType: !72)
!71 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "5b52deed011f1ffd07977b19a388d251")
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !71, line: 37, size: 128, elements: !73)
!73 = !{!74, !75}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !72, file: !71, line: 38, baseType: !68, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !72, file: !71, line: 39, baseType: !68, size: 64, offset: 64)
!76 = !{!77, !78, !79, !80, !83, !84, !85, !86, !87, !88, !89, !90, !91, !94}
!77 = !DILocalVariable(name: "nu", arg: 1, scope: !65, file: !2, line: 69, type: !68)
!78 = !DILocalVariable(name: "x", arg: 2, scope: !65, file: !2, line: 69, type: !68)
!79 = !DILocalVariable(name: "result", arg: 3, scope: !65, file: !2, line: 69, type: !69)
!80 = !DILocalVariable(name: "N", scope: !81, file: !2, line: 77, type: !18)
!81 = distinct !DILexicalBlock(scope: !82, file: !2, line: 75, column: 8)
!82 = distinct !DILexicalBlock(scope: !65, file: !2, line: 72, column: 6)
!83 = !DILocalVariable(name: "mu", scope: !81, file: !2, line: 78, type: !68)
!84 = !DILocalVariable(name: "Y_mu", scope: !81, file: !2, line: 80, type: !70)
!85 = !DILocalVariable(name: "Y_mup1", scope: !81, file: !2, line: 80, type: !70)
!86 = !DILocalVariable(name: "stat_mu", scope: !81, file: !2, line: 81, type: !18)
!87 = !DILocalVariable(name: "Ynm1", scope: !81, file: !2, line: 82, type: !68)
!88 = !DILocalVariable(name: "Yn", scope: !81, file: !2, line: 83, type: !68)
!89 = !DILocalVariable(name: "Ynp1", scope: !81, file: !2, line: 84, type: !68)
!90 = !DILocalVariable(name: "n", scope: !81, file: !2, line: 85, type: !18)
!91 = !DILocalVariable(name: "J_mu", scope: !92, file: !2, line: 98, type: !70)
!92 = distinct !DILexicalBlock(scope: !93, file: !2, line: 95, column: 10)
!93 = distinct !DILexicalBlock(scope: !81, file: !2, line: 87, column: 8)
!94 = !DILocalVariable(name: "J_mup1", scope: !92, file: !2, line: 98, type: !70)
!95 = distinct !DIAssignID()
!96 = !DILocation(line: 0, scope: !81)
!97 = distinct !DIAssignID()
!98 = distinct !DIAssignID()
!99 = !DILocation(line: 0, scope: !92)
!100 = distinct !DIAssignID()
!101 = !DILocation(line: 0, scope: !65)
!102 = !DILocation(line: 72, column: 9, scope: !82)
!103 = !DILocation(line: 72, column: 6, scope: !65)
!104 = !DILocation(line: 73, column: 12, scope: !105)
!105 = distinct !DILexicalBlock(scope: !82, file: !2, line: 72, column: 17)
!106 = !DILocation(line: 73, column: 5, scope: !105)
!107 = !DILocation(line: 77, column: 13, scope: !81)
!108 = !DILocation(line: 78, column: 22, scope: !81)
!109 = !DILocation(line: 80, column: 5, scope: !81)
!110 = !DILocation(line: 87, column: 10, scope: !93)
!111 = !DILocation(line: 87, column: 8, scope: !81)
!112 = !DILocation(line: 93, column: 17, scope: !113)
!113 = distinct !DILexicalBlock(scope: !93, file: !2, line: 87, column: 17)
!114 = !DILocation(line: 94, column: 5, scope: !113)
!115 = !DILocation(line: 98, column: 7, scope: !92)
!116 = !DILocation(line: 99, column: 17, scope: !92)
!117 = !DILocation(line: 100, column: 5, scope: !93)
!118 = !DILocation(line: 0, scope: !93)
!119 = !DILocation(line: 104, column: 17, scope: !81)
!120 = !{!121, !122, i64 0}
!121 = !{!"gsl_sf_result_struct", !122, i64 0, !122, i64 8}
!122 = !{!"double", !123, i64 0}
!123 = !{!"omnipotent char", !124, i64 0}
!124 = !{!"Simple C/C++ TBAA"}
!125 = !DILocation(line: 105, column: 19, scope: !81)
!126 = !DILocation(line: 106, column: 15, scope: !127)
!127 = distinct !DILexicalBlock(scope: !128, file: !2, line: 106, column: 5)
!128 = distinct !DILexicalBlock(scope: !81, file: !2, line: 106, column: 5)
!129 = !DILocation(line: 106, column: 5, scope: !128)
!130 = !DILocation(line: 107, column: 22, scope: !131)
!131 = distinct !DILexicalBlock(scope: !127, file: !2, line: 106, column: 25)
!132 = !DILocation(line: 107, column: 17, scope: !131)
!133 = !DILocation(line: 107, column: 24, scope: !131)
!134 = !DILocation(line: 107, column: 27, scope: !131)
!135 = !DILocation(line: 106, column: 21, scope: !127)
!136 = distinct !{!136, !129, !137, !138}
!137 = !DILocation(line: 110, column: 5, scope: !128)
!138 = !{!"llvm.loop.mustprogress"}
!139 = !DILocation(line: 112, column: 18, scope: !81)
!140 = !DILocation(line: 113, column: 32, scope: !81)
!141 = !DILocation(line: 113, column: 30, scope: !81)
!142 = !DILocation(line: 113, column: 56, scope: !81)
!143 = !{!121, !122, i64 8}
!144 = !DILocation(line: 113, column: 59, scope: !81)
!145 = !DILocation(line: 113, column: 46, scope: !81)
!146 = !DILocation(line: 113, column: 84, scope: !81)
!147 = !DILocation(line: 113, column: 87, scope: !81)
!148 = !DILocation(line: 113, column: 72, scope: !81)
!149 = !DILocation(line: 113, column: 43, scope: !81)
!150 = !DILocation(line: 113, column: 13, scope: !81)
!151 = !DILocation(line: 114, column: 42, scope: !81)
!152 = !DILocation(line: 114, column: 17, scope: !81)
!153 = !DILocation(line: 117, column: 3, scope: !82)
!154 = !DILocation(line: 0, scope: !82)
!155 = !DILocation(line: 118, column: 1, scope: !65)
!156 = !DISubprogram(name: "gsl_sf_bessel_Ynu_asymp_Olver_e", scope: !157, file: !157, line: 28, type: !66, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!157 = !DIFile(filename: "./bessel_olver.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "ec509d1b6cab5ef68906304c5e69a8d7")
!158 = !DISubprogram(name: "gsl_sf_bessel_Y_temme", scope: !159, file: !159, line: 29, type: !160, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!159 = !DIFile(filename: "./bessel_temme.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "896353903515c0fd2eba1477c11cb66c")
!160 = !DISubroutineType(types: !161)
!161 = !{!18, !162, !162, !69, !69}
!162 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !68)
!163 = !DISubprogram(name: "gsl_sf_bessel_JY_mu_restricted", scope: !164, file: !164, line: 75, type: !165, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!164 = !DIFile(filename: "./bessel.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "57b96fff5bee18a41e1173dbca5404a0")
!165 = !DISubroutineType(types: !166)
!166 = !{!18, !162, !162, !69, !69, !69, !69}
!167 = distinct !DISubprogram(name: "gsl_sf_bessel_Ynu_e", scope: !2, file: !2, line: 121, type: !66, scopeLine: 122, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !168)
!168 = !{!169, !170, !171, !172, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186}
!169 = !DILocalVariable(name: "nu", arg: 1, scope: !167, file: !2, line: 121, type: !68)
!170 = !DILocalVariable(name: "x", arg: 2, scope: !167, file: !2, line: 121, type: !68)
!171 = !DILocalVariable(name: "result", arg: 3, scope: !167, file: !2, line: 121, type: !69)
!172 = !DILocalVariable(name: "Jstatus", scope: !173, file: !2, line: 129, type: !18)
!173 = distinct !DILexicalBlock(scope: !174, file: !2, line: 128, column: 22)
!174 = distinct !DILexicalBlock(scope: !175, file: !2, line: 128, column: 12)
!175 = distinct !DILexicalBlock(scope: !167, file: !2, line: 125, column: 6)
!176 = !DILocalVariable(name: "Jval", scope: !173, file: !2, line: 130, type: !68)
!177 = !DILocalVariable(name: "Jerr", scope: !173, file: !2, line: 131, type: !68)
!178 = !DILocalVariable(name: "Ystatus", scope: !173, file: !2, line: 132, type: !18)
!179 = !DILocalVariable(name: "Yval", scope: !173, file: !2, line: 133, type: !68)
!180 = !DILocalVariable(name: "Yerr", scope: !173, file: !2, line: 134, type: !68)
!181 = !DILocalVariable(name: "sinstatus", scope: !173, file: !2, line: 136, type: !18)
!182 = !DILocalVariable(name: "s", scope: !173, file: !2, line: 137, type: !68)
!183 = !DILocalVariable(name: "serr", scope: !173, file: !2, line: 138, type: !68)
!184 = !DILocalVariable(name: "cosstatus", scope: !173, file: !2, line: 139, type: !18)
!185 = !DILocalVariable(name: "c", scope: !173, file: !2, line: 140, type: !68)
!186 = !DILocalVariable(name: "cerr", scope: !173, file: !2, line: 141, type: !68)
!187 = !DILocation(line: 0, scope: !167)
!188 = !DILocation(line: 125, column: 8, scope: !175)
!189 = !DILocation(line: 125, column: 6, scope: !167)
!190 = !DILocation(line: 126, column: 5, scope: !191)
!191 = distinct !DILexicalBlock(scope: !192, file: !2, line: 126, column: 5)
!192 = distinct !DILexicalBlock(scope: !175, file: !2, line: 125, column: 16)
!193 = !DILocation(line: 126, column: 5, scope: !194)
!194 = distinct !DILexicalBlock(scope: !191, file: !2, line: 126, column: 5)
!195 = !DILocation(line: 128, column: 15, scope: !174)
!196 = !DILocation(line: 128, column: 12, scope: !175)
!197 = !DILocation(line: 129, column: 42, scope: !173)
!198 = !DILocation(line: 129, column: 19, scope: !173)
!199 = !DILocation(line: 0, scope: !173)
!200 = !DILocation(line: 130, column: 27, scope: !173)
!201 = !DILocation(line: 131, column: 27, scope: !173)
!202 = !DILocation(line: 132, column: 19, scope: !173)
!203 = !DILocation(line: 133, column: 27, scope: !173)
!204 = !DILocation(line: 134, column: 27, scope: !173)
!205 = !DILocation(line: 136, column: 21, scope: !173)
!206 = !DILocation(line: 137, column: 24, scope: !173)
!207 = !DILocation(line: 138, column: 27, scope: !173)
!208 = !DILocation(line: 139, column: 21, scope: !173)
!209 = !DILocation(line: 140, column: 24, scope: !173)
!210 = !DILocation(line: 141, column: 27, scope: !173)
!211 = !DILocation(line: 142, column: 20, scope: !173)
!212 = !DILocation(line: 142, column: 29, scope: !173)
!213 = !DILocation(line: 142, column: 17, scope: !173)
!214 = !DILocation(line: 143, column: 25, scope: !173)
!215 = !DILocation(line: 143, column: 19, scope: !173)
!216 = !DILocation(line: 143, column: 40, scope: !173)
!217 = !DILocation(line: 143, column: 34, scope: !173)
!218 = !DILocation(line: 143, column: 58, scope: !173)
!219 = !DILocation(line: 143, column: 49, scope: !173)
!220 = !DILocation(line: 143, column: 76, scope: !173)
!221 = !DILocation(line: 143, column: 67, scope: !173)
!222 = !DILocation(line: 143, column: 17, scope: !173)
!223 = !DILocation(line: 144, column: 12, scope: !173)
!224 = !DILocation(line: 146, column: 15, scope: !174)
!225 = !DILocation(line: 146, column: 8, scope: !174)
!226 = !DILocation(line: 0, scope: !175)
!227 = !DILocation(line: 147, column: 1, scope: !167)
!228 = !DISubprogram(name: "gsl_error", scope: !17, file: !17, line: 77, type: !229, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!229 = !DISubroutineType(types: !230)
!230 = !{null, !231, !231, !18, !18}
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!233 = !DISubprogram(name: "gsl_sf_bessel_Jnupos_e", scope: !164, file: !164, line: 42, type: !234, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!234 = !DISubroutineType(types: !235)
!235 = !{!18, !162, !162, !69}
!236 = !DISubprogram(name: "gsl_sf_sin_pi_e", scope: !237, file: !237, line: 45, type: !238, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!237 = !DIFile(filename: "../gsl/gsl_sf_sincos_pi.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "7936c4bdc248114844397cef74e4f1a9")
!238 = !DISubroutineType(types: !239)
!239 = !{!18, !68, !69}
!240 = !DISubprogram(name: "gsl_sf_cos_pi_e", scope: !237, file: !237, line: 51, type: !238, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!241 = distinct !DISubprogram(name: "gsl_sf_bessel_Ynu", scope: !2, file: !2, line: 153, type: !242, scopeLine: 154, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !244)
!242 = !DISubroutineType(types: !243)
!243 = !{!68, !162, !162}
!244 = !{!245, !246, !247, !248}
!245 = !DILocalVariable(name: "nu", arg: 1, scope: !241, file: !2, line: 153, type: !162)
!246 = !DILocalVariable(name: "x", arg: 2, scope: !241, file: !2, line: 153, type: !162)
!247 = !DILocalVariable(name: "result", scope: !241, file: !2, line: 155, type: !70)
!248 = !DILocalVariable(name: "status", scope: !241, file: !2, line: 155, type: !18)
!249 = distinct !DIAssignID()
!250 = !DILocation(line: 0, scope: !241)
!251 = !DILocation(line: 155, column: 3, scope: !241)
!252 = !DILocation(line: 155, column: 3, scope: !253)
!253 = distinct !DILexicalBlock(scope: !241, file: !2, line: 155, column: 3)
!254 = !DILocation(line: 155, column: 3, scope: !255)
!255 = distinct !DILexicalBlock(scope: !256, file: !2, line: 155, column: 3)
!256 = distinct !DILexicalBlock(scope: !253, file: !2, line: 155, column: 3)
!257 = !DILocation(line: 156, column: 1, scope: !241)
