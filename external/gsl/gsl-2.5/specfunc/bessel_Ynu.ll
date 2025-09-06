; ModuleID = 'bessel_Ynu.c'
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
  %10 = tail call i32 @gsl_sf_bessel_Ynu_asymp_Olver_e(double noundef %0, double noundef %1, ptr noundef %2) #5, !dbg !104
  br label %75, !dbg !106

11:                                               ; preds = %3
  %12 = fadd double %0, 5.000000e-01, !dbg !107
  %13 = fptosi double %12 to i32, !dbg !108
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !80, metadata !DIExpression()), !dbg !96
  %14 = sitofp i32 %13 to double, !dbg !109
  %15 = fsub double %0, %14, !dbg !110
  tail call void @llvm.dbg.value(metadata double %15, metadata !83, metadata !DIExpression()), !dbg !96
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #5, !dbg !111
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #5, !dbg !111
  %16 = fcmp olt double %1, 2.000000e+00, !dbg !112
  br i1 %16, label %17, label %19, !dbg !113

17:                                               ; preds = %11
  %18 = call i32 @gsl_sf_bessel_Y_temme(double noundef %15, double noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %5) #5, !dbg !114
  tail call void @llvm.dbg.value(metadata i32 %18, metadata !86, metadata !DIExpression()), !dbg !96
  br label %21, !dbg !116

19:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #5, !dbg !117
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #5, !dbg !117
  %20 = call i32 @gsl_sf_bessel_JY_mu_restricted(double noundef %15, double noundef %1, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %4, ptr noundef nonnull %5) #5, !dbg !118
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !86, metadata !DIExpression()), !dbg !96
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #5, !dbg !119
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #5, !dbg !119
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi i32 [ %18, %17 ], [ %20, %19 ], !dbg !120
  tail call void @llvm.dbg.value(metadata i32 %22, metadata !86, metadata !DIExpression()), !dbg !96
  %23 = load double, ptr %4, align 8, !dbg !121, !tbaa !122
  tail call void @llvm.dbg.value(metadata double %23, metadata !87, metadata !DIExpression()), !dbg !96
  %24 = load double, ptr %5, align 8, !dbg !127, !tbaa !122
  tail call void @llvm.dbg.value(metadata double %24, metadata !88, metadata !DIExpression()), !dbg !96
  tail call void @llvm.dbg.value(metadata i32 1, metadata !90, metadata !DIExpression()), !dbg !96
  tail call void @llvm.dbg.value(metadata double %23, metadata !87, metadata !DIExpression()), !dbg !96
  %25 = icmp slt i32 %13, 1, !dbg !128
  br i1 %25, label %57, label %26, !dbg !131

26:                                               ; preds = %21
  %27 = and i32 %13, 1, !dbg !131
  %28 = icmp eq i32 %13, 1, !dbg !131
  br i1 %28, label %52, label %29, !dbg !131

29:                                               ; preds = %26
  %30 = and i32 %13, 2147483646, !dbg !131
  br label %31, !dbg !131

31:                                               ; preds = %31, %29
  %32 = phi i32 [ 1, %29 ], [ %49, %31 ]
  %33 = phi double [ %24, %29 ], [ %48, %31 ]
  %34 = phi double [ %23, %29 ], [ %41, %31 ]
  %35 = phi i32 [ 0, %29 ], [ %50, %31 ]
  tail call void @llvm.dbg.value(metadata i32 %32, metadata !90, metadata !DIExpression()), !dbg !96
  tail call void @llvm.dbg.value(metadata double %33, metadata !88, metadata !DIExpression()), !dbg !96
  tail call void @llvm.dbg.value(metadata double %34, metadata !87, metadata !DIExpression()), !dbg !96
  %36 = sitofp i32 %32 to double, !dbg !132
  %37 = fadd double %15, %36, !dbg !134
  %38 = fmul double %37, 2.000000e+00, !dbg !135
  %39 = fdiv double %38, %1, !dbg !136
  %40 = fmul double %33, %39, !dbg !137
  %41 = fsub double %40, %34, !dbg !138
  tail call void @llvm.dbg.value(metadata double %41, metadata !89, metadata !DIExpression()), !dbg !96
  tail call void @llvm.dbg.value(metadata double %33, metadata !87, metadata !DIExpression()), !dbg !96
  tail call void @llvm.dbg.value(metadata double %41, metadata !88, metadata !DIExpression()), !dbg !96
  %42 = add nuw i32 %32, 1, !dbg !139
  tail call void @llvm.dbg.value(metadata i32 %42, metadata !90, metadata !DIExpression()), !dbg !96
  tail call void @llvm.dbg.value(metadata i32 %42, metadata !90, metadata !DIExpression()), !dbg !96
  tail call void @llvm.dbg.value(metadata double %41, metadata !88, metadata !DIExpression()), !dbg !96
  tail call void @llvm.dbg.value(metadata double %33, metadata !87, metadata !DIExpression()), !dbg !96
  %43 = sitofp i32 %42 to double, !dbg !132
  %44 = fadd double %15, %43, !dbg !134
  %45 = fmul double %44, 2.000000e+00, !dbg !135
  %46 = fdiv double %45, %1, !dbg !136
  %47 = fmul double %41, %46, !dbg !137
  %48 = fsub double %47, %33, !dbg !138
  tail call void @llvm.dbg.value(metadata double %48, metadata !89, metadata !DIExpression()), !dbg !96
  tail call void @llvm.dbg.value(metadata double %41, metadata !87, metadata !DIExpression()), !dbg !96
  tail call void @llvm.dbg.value(metadata double %48, metadata !88, metadata !DIExpression()), !dbg !96
  %49 = add nuw i32 %32, 2, !dbg !139
  tail call void @llvm.dbg.value(metadata i32 %49, metadata !90, metadata !DIExpression()), !dbg !96
  %50 = add i32 %35, 2, !dbg !131
  %51 = icmp eq i32 %50, %30, !dbg !131
  br i1 %51, label %52, label %31, !dbg !131, !llvm.loop !140

52:                                               ; preds = %31, %26
  %53 = phi double [ undef, %26 ], [ %41, %31 ]
  %54 = phi double [ %24, %26 ], [ %48, %31 ]
  %55 = icmp eq i32 %27, 0, !dbg !131
  %56 = select i1 %55, double %53, double %54, !dbg !131
  br label %57, !dbg !143

57:                                               ; preds = %52, %21
  %58 = phi double [ %23, %21 ], [ %56, %52 ], !dbg !96
  store double %58, ptr %2, align 8, !dbg !143, !tbaa !122
  %59 = fadd double %14, 1.000000e+00, !dbg !144
  %60 = call double @llvm.fabs.f64(double %58), !dbg !145
  %61 = fmul double %59, %60, !dbg !146
  %62 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !147
  %63 = load double, ptr %62, align 8, !dbg !147, !tbaa !148
  %64 = fdiv double %63, %23, !dbg !149
  %65 = call double @llvm.fabs.f64(double %64), !dbg !150
  %66 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !151
  %67 = load double, ptr %66, align 8, !dbg !151, !tbaa !148
  %68 = fdiv double %67, %24, !dbg !152
  %69 = call double @llvm.fabs.f64(double %68), !dbg !153
  %70 = fadd double %65, %69, !dbg !154
  %71 = fmul double %61, %70, !dbg !155
  %72 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !156
  %73 = fmul double %60, 0x3CC0000000000000, !dbg !157
  %74 = fadd double %73, %71, !dbg !158
  store double %74, ptr %72, align 8, !dbg !158, !tbaa !148
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #5, !dbg !159
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #5, !dbg !159
  br label %75

75:                                               ; preds = %57, %9
  %76 = phi i32 [ %10, %9 ], [ %22, %57 ], !dbg !160
  ret i32 %76, !dbg !161
}

declare !dbg !162 i32 @gsl_sf_bessel_Ynu_asymp_Olver_e(double noundef, double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare !dbg !164 i32 @gsl_sf_bessel_Y_temme(double noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !169 i32 @gsl_sf_bessel_JY_mu_restricted(double noundef, double noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #3

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_bessel_Ynu_e(double noundef %0, double noundef %1, ptr noundef %2) local_unnamed_addr #0 !dbg !173 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !175, metadata !DIExpression()), !dbg !193
  tail call void @llvm.dbg.value(metadata double %1, metadata !176, metadata !DIExpression()), !dbg !193
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !177, metadata !DIExpression()), !dbg !193
  %4 = fcmp ugt double %1, 0.000000e+00, !dbg !194
  br i1 %4, label %7, label %5, !dbg !195

5:                                                ; preds = %3
  store double 0x7FF8000000000000, ptr %2, align 8, !dbg !196, !tbaa !122
  %6 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !196
  store double 0x7FF8000000000000, ptr %6, align 8, !dbg !196, !tbaa !148
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 126, i32 noundef 1) #5, !dbg !199
  br label %46, !dbg !199

7:                                                ; preds = %3
  %8 = fcmp olt double %0, 0.000000e+00, !dbg !201
  br i1 %8, label %9, label %44, !dbg !202

9:                                                ; preds = %7
  %10 = fneg double %0, !dbg !203
  %11 = tail call i32 @gsl_sf_bessel_Jnupos_e(double noundef %10, double noundef %1, ptr noundef %2) #5, !dbg !204
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !178, metadata !DIExpression()), !dbg !205
  %12 = load double, ptr %2, align 8, !dbg !206, !tbaa !122
  tail call void @llvm.dbg.value(metadata double %12, metadata !182, metadata !DIExpression()), !dbg !205
  %13 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !207
  %14 = load double, ptr %13, align 8, !dbg !207, !tbaa !148
  tail call void @llvm.dbg.value(metadata double %14, metadata !183, metadata !DIExpression()), !dbg !205
  %15 = tail call i32 @gsl_sf_bessel_Ynupos_e(double noundef %10, double noundef %1, ptr noundef nonnull %2), !dbg !208
  tail call void @llvm.dbg.value(metadata i32 %15, metadata !184, metadata !DIExpression()), !dbg !205
  %16 = load double, ptr %2, align 8, !dbg !209, !tbaa !122
  tail call void @llvm.dbg.value(metadata double %16, metadata !185, metadata !DIExpression()), !dbg !205
  %17 = load double, ptr %13, align 8, !dbg !210, !tbaa !148
  tail call void @llvm.dbg.value(metadata double %17, metadata !186, metadata !DIExpression()), !dbg !205
  %18 = tail call i32 @gsl_sf_sin_pi_e(double noundef %0, ptr noundef nonnull %2) #5, !dbg !211
  tail call void @llvm.dbg.value(metadata i32 %18, metadata !187, metadata !DIExpression()), !dbg !205
  %19 = load double, ptr %2, align 8, !dbg !212, !tbaa !122
  tail call void @llvm.dbg.value(metadata double %19, metadata !188, metadata !DIExpression()), !dbg !205
  %20 = load double, ptr %13, align 8, !dbg !213, !tbaa !148
  tail call void @llvm.dbg.value(metadata double %20, metadata !189, metadata !DIExpression()), !dbg !205
  %21 = tail call i32 @gsl_sf_cos_pi_e(double noundef %0, ptr noundef nonnull %2) #5, !dbg !214
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !190, metadata !DIExpression()), !dbg !205
  %22 = load double, ptr %2, align 8, !dbg !215, !tbaa !122
  tail call void @llvm.dbg.value(metadata double %22, metadata !191, metadata !DIExpression()), !dbg !205
  %23 = load double, ptr %13, align 8, !dbg !216, !tbaa !148
  tail call void @llvm.dbg.value(metadata double %23, metadata !192, metadata !DIExpression()), !dbg !205
  %24 = fmul double %16, %22, !dbg !217
  %25 = fmul double %12, %19, !dbg !218
  %26 = fsub double %24, %25, !dbg !219
  store double %26, ptr %2, align 8, !dbg !220, !tbaa !122
  %27 = fmul double %17, %22, !dbg !221
  %28 = tail call double @llvm.fabs.f64(double %27), !dbg !222
  %29 = fmul double %14, %19, !dbg !223
  %30 = tail call double @llvm.fabs.f64(double %29), !dbg !224
  %31 = fadd double %30, %28, !dbg !225
  %32 = fmul double %16, %23, !dbg !226
  %33 = tail call double @llvm.fabs.f64(double %32), !dbg !227
  %34 = fadd double %31, %33, !dbg !228
  %35 = fmul double %12, %20, !dbg !229
  %36 = tail call double @llvm.fabs.f64(double %35), !dbg !230
  %37 = fadd double %36, %34, !dbg !231
  store double %37, ptr %13, align 8, !dbg !232, !tbaa !148
  %38 = icmp eq i32 %11, 0, !dbg !233
  br i1 %38, label %39, label %46, !dbg !233

39:                                               ; preds = %9
  %40 = icmp eq i32 %15, 0, !dbg !233
  br i1 %40, label %41, label %46, !dbg !233

41:                                               ; preds = %39
  %42 = icmp eq i32 %18, 0, !dbg !233
  %43 = select i1 %42, i32 %21, i32 %18, !dbg !233
  br label %46, !dbg !233

44:                                               ; preds = %7
  %45 = tail call i32 @gsl_sf_bessel_Ynupos_e(double noundef %0, double noundef %1, ptr noundef %2), !dbg !234
  br label %46, !dbg !235

46:                                               ; preds = %9, %39, %41, %5, %44
  %47 = phi i32 [ 1, %5 ], [ %45, %44 ], [ %11, %9 ], [ %15, %39 ], [ %43, %41 ], !dbg !236
  ret i32 %47, !dbg !237
}

declare !dbg !238 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare !dbg !243 i32 @gsl_sf_bessel_Jnupos_e(double noundef, double noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !246 i32 @gsl_sf_sin_pi_e(double noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !250 i32 @gsl_sf_cos_pi_e(double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_bessel_Ynu(double noundef %0, double noundef %1) local_unnamed_addr #0 !dbg !251 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !259
  call void @llvm.dbg.assign(metadata i1 undef, metadata !257, metadata !DIExpression(), metadata !259, metadata ptr %3, metadata !DIExpression()), !dbg !260
  tail call void @llvm.dbg.value(metadata double %0, metadata !255, metadata !DIExpression()), !dbg !260
  tail call void @llvm.dbg.value(metadata double %1, metadata !256, metadata !DIExpression()), !dbg !260
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #5, !dbg !261
  %4 = call i32 @gsl_sf_bessel_Ynu_e(double noundef %0, double noundef %1, ptr noundef nonnull %3), !dbg !261
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !258, metadata !DIExpression()), !dbg !260
  %5 = icmp eq i32 %4, 0, !dbg !262
  br i1 %5, label %7, label %6, !dbg !261

6:                                                ; preds = %2
  call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 155, i32 noundef %4) #5, !dbg !264
  br label %7, !dbg !264

7:                                                ; preds = %2, %6
  %8 = load double, ptr %3, align 8, !dbg !261, !tbaa !122
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #5, !dbg !267
  ret double %8, !dbg !267
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

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
!107 = !DILocation(line: 77, column: 22, scope: !81)
!108 = !DILocation(line: 77, column: 13, scope: !81)
!109 = !DILocation(line: 78, column: 22, scope: !81)
!110 = !DILocation(line: 78, column: 20, scope: !81)
!111 = !DILocation(line: 80, column: 5, scope: !81)
!112 = !DILocation(line: 87, column: 10, scope: !93)
!113 = !DILocation(line: 87, column: 8, scope: !81)
!114 = !DILocation(line: 93, column: 17, scope: !115)
!115 = distinct !DILexicalBlock(scope: !93, file: !2, line: 87, column: 17)
!116 = !DILocation(line: 94, column: 5, scope: !115)
!117 = !DILocation(line: 98, column: 7, scope: !92)
!118 = !DILocation(line: 99, column: 17, scope: !92)
!119 = !DILocation(line: 100, column: 5, scope: !93)
!120 = !DILocation(line: 0, scope: !93)
!121 = !DILocation(line: 104, column: 17, scope: !81)
!122 = !{!123, !124, i64 0}
!123 = !{!"gsl_sf_result_struct", !124, i64 0, !124, i64 8}
!124 = !{!"double", !125, i64 0}
!125 = !{!"omnipotent char", !126, i64 0}
!126 = !{!"Simple C/C++ TBAA"}
!127 = !DILocation(line: 105, column: 19, scope: !81)
!128 = !DILocation(line: 106, column: 15, scope: !129)
!129 = distinct !DILexicalBlock(scope: !130, file: !2, line: 106, column: 5)
!130 = distinct !DILexicalBlock(scope: !81, file: !2, line: 106, column: 5)
!131 = !DILocation(line: 106, column: 5, scope: !130)
!132 = !DILocation(line: 107, column: 22, scope: !133)
!133 = distinct !DILexicalBlock(scope: !129, file: !2, line: 106, column: 25)
!134 = !DILocation(line: 107, column: 21, scope: !133)
!135 = !DILocation(line: 107, column: 17, scope: !133)
!136 = !DILocation(line: 107, column: 24, scope: !133)
!137 = !DILocation(line: 107, column: 27, scope: !133)
!138 = !DILocation(line: 107, column: 32, scope: !133)
!139 = !DILocation(line: 106, column: 21, scope: !129)
!140 = distinct !{!140, !131, !141, !142}
!141 = !DILocation(line: 110, column: 5, scope: !130)
!142 = !{!"llvm.loop.mustprogress"}
!143 = !DILocation(line: 112, column: 18, scope: !81)
!144 = !DILocation(line: 113, column: 23, scope: !81)
!145 = !DILocation(line: 113, column: 32, scope: !81)
!146 = !DILocation(line: 113, column: 30, scope: !81)
!147 = !DILocation(line: 113, column: 56, scope: !81)
!148 = !{!123, !124, i64 8}
!149 = !DILocation(line: 113, column: 59, scope: !81)
!150 = !DILocation(line: 113, column: 46, scope: !81)
!151 = !DILocation(line: 113, column: 84, scope: !81)
!152 = !DILocation(line: 113, column: 87, scope: !81)
!153 = !DILocation(line: 113, column: 72, scope: !81)
!154 = !DILocation(line: 113, column: 70, scope: !81)
!155 = !DILocation(line: 113, column: 43, scope: !81)
!156 = !DILocation(line: 113, column: 13, scope: !81)
!157 = !DILocation(line: 114, column: 42, scope: !81)
!158 = !DILocation(line: 114, column: 17, scope: !81)
!159 = !DILocation(line: 117, column: 3, scope: !82)
!160 = !DILocation(line: 0, scope: !82)
!161 = !DILocation(line: 118, column: 1, scope: !65)
!162 = !DISubprogram(name: "gsl_sf_bessel_Ynu_asymp_Olver_e", scope: !163, file: !163, line: 28, type: !66, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!163 = !DIFile(filename: "./bessel_olver.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "ec509d1b6cab5ef68906304c5e69a8d7")
!164 = !DISubprogram(name: "gsl_sf_bessel_Y_temme", scope: !165, file: !165, line: 29, type: !166, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!165 = !DIFile(filename: "./bessel_temme.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "896353903515c0fd2eba1477c11cb66c")
!166 = !DISubroutineType(types: !167)
!167 = !{!18, !168, !168, !69, !69}
!168 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !68)
!169 = !DISubprogram(name: "gsl_sf_bessel_JY_mu_restricted", scope: !170, file: !170, line: 75, type: !171, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!170 = !DIFile(filename: "./bessel.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "57b96fff5bee18a41e1173dbca5404a0")
!171 = !DISubroutineType(types: !172)
!172 = !{!18, !168, !168, !69, !69, !69, !69}
!173 = distinct !DISubprogram(name: "gsl_sf_bessel_Ynu_e", scope: !2, file: !2, line: 121, type: !66, scopeLine: 122, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !174)
!174 = !{!175, !176, !177, !178, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192}
!175 = !DILocalVariable(name: "nu", arg: 1, scope: !173, file: !2, line: 121, type: !68)
!176 = !DILocalVariable(name: "x", arg: 2, scope: !173, file: !2, line: 121, type: !68)
!177 = !DILocalVariable(name: "result", arg: 3, scope: !173, file: !2, line: 121, type: !69)
!178 = !DILocalVariable(name: "Jstatus", scope: !179, file: !2, line: 129, type: !18)
!179 = distinct !DILexicalBlock(scope: !180, file: !2, line: 128, column: 22)
!180 = distinct !DILexicalBlock(scope: !181, file: !2, line: 128, column: 12)
!181 = distinct !DILexicalBlock(scope: !173, file: !2, line: 125, column: 6)
!182 = !DILocalVariable(name: "Jval", scope: !179, file: !2, line: 130, type: !68)
!183 = !DILocalVariable(name: "Jerr", scope: !179, file: !2, line: 131, type: !68)
!184 = !DILocalVariable(name: "Ystatus", scope: !179, file: !2, line: 132, type: !18)
!185 = !DILocalVariable(name: "Yval", scope: !179, file: !2, line: 133, type: !68)
!186 = !DILocalVariable(name: "Yerr", scope: !179, file: !2, line: 134, type: !68)
!187 = !DILocalVariable(name: "sinstatus", scope: !179, file: !2, line: 136, type: !18)
!188 = !DILocalVariable(name: "s", scope: !179, file: !2, line: 137, type: !68)
!189 = !DILocalVariable(name: "serr", scope: !179, file: !2, line: 138, type: !68)
!190 = !DILocalVariable(name: "cosstatus", scope: !179, file: !2, line: 139, type: !18)
!191 = !DILocalVariable(name: "c", scope: !179, file: !2, line: 140, type: !68)
!192 = !DILocalVariable(name: "cerr", scope: !179, file: !2, line: 141, type: !68)
!193 = !DILocation(line: 0, scope: !173)
!194 = !DILocation(line: 125, column: 8, scope: !181)
!195 = !DILocation(line: 125, column: 6, scope: !173)
!196 = !DILocation(line: 126, column: 5, scope: !197)
!197 = distinct !DILexicalBlock(scope: !198, file: !2, line: 126, column: 5)
!198 = distinct !DILexicalBlock(scope: !181, file: !2, line: 125, column: 16)
!199 = !DILocation(line: 126, column: 5, scope: !200)
!200 = distinct !DILexicalBlock(scope: !197, file: !2, line: 126, column: 5)
!201 = !DILocation(line: 128, column: 15, scope: !180)
!202 = !DILocation(line: 128, column: 12, scope: !181)
!203 = !DILocation(line: 129, column: 42, scope: !179)
!204 = !DILocation(line: 129, column: 19, scope: !179)
!205 = !DILocation(line: 0, scope: !179)
!206 = !DILocation(line: 130, column: 27, scope: !179)
!207 = !DILocation(line: 131, column: 27, scope: !179)
!208 = !DILocation(line: 132, column: 19, scope: !179)
!209 = !DILocation(line: 133, column: 27, scope: !179)
!210 = !DILocation(line: 134, column: 27, scope: !179)
!211 = !DILocation(line: 136, column: 21, scope: !179)
!212 = !DILocation(line: 137, column: 24, scope: !179)
!213 = !DILocation(line: 138, column: 27, scope: !179)
!214 = !DILocation(line: 139, column: 21, scope: !179)
!215 = !DILocation(line: 140, column: 24, scope: !179)
!216 = !DILocation(line: 141, column: 27, scope: !179)
!217 = !DILocation(line: 142, column: 20, scope: !179)
!218 = !DILocation(line: 142, column: 29, scope: !179)
!219 = !DILocation(line: 142, column: 26, scope: !179)
!220 = !DILocation(line: 142, column: 17, scope: !179)
!221 = !DILocation(line: 143, column: 25, scope: !179)
!222 = !DILocation(line: 143, column: 19, scope: !179)
!223 = !DILocation(line: 143, column: 40, scope: !179)
!224 = !DILocation(line: 143, column: 34, scope: !179)
!225 = !DILocation(line: 143, column: 32, scope: !179)
!226 = !DILocation(line: 143, column: 58, scope: !179)
!227 = !DILocation(line: 143, column: 49, scope: !179)
!228 = !DILocation(line: 143, column: 47, scope: !179)
!229 = !DILocation(line: 143, column: 76, scope: !179)
!230 = !DILocation(line: 143, column: 67, scope: !179)
!231 = !DILocation(line: 143, column: 65, scope: !179)
!232 = !DILocation(line: 143, column: 17, scope: !179)
!233 = !DILocation(line: 144, column: 12, scope: !179)
!234 = !DILocation(line: 146, column: 15, scope: !180)
!235 = !DILocation(line: 146, column: 8, scope: !180)
!236 = !DILocation(line: 0, scope: !181)
!237 = !DILocation(line: 147, column: 1, scope: !173)
!238 = !DISubprogram(name: "gsl_error", scope: !17, file: !17, line: 77, type: !239, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!239 = !DISubroutineType(types: !240)
!240 = !{null, !241, !241, !18, !18}
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!243 = !DISubprogram(name: "gsl_sf_bessel_Jnupos_e", scope: !170, file: !170, line: 42, type: !244, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!244 = !DISubroutineType(types: !245)
!245 = !{!18, !168, !168, !69}
!246 = !DISubprogram(name: "gsl_sf_sin_pi_e", scope: !247, file: !247, line: 45, type: !248, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!247 = !DIFile(filename: "../gsl/gsl_sf_sincos_pi.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "7936c4bdc248114844397cef74e4f1a9")
!248 = !DISubroutineType(types: !249)
!249 = !{!18, !68, !69}
!250 = !DISubprogram(name: "gsl_sf_cos_pi_e", scope: !247, file: !247, line: 51, type: !248, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!251 = distinct !DISubprogram(name: "gsl_sf_bessel_Ynu", scope: !2, file: !2, line: 153, type: !252, scopeLine: 154, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !254)
!252 = !DISubroutineType(types: !253)
!253 = !{!68, !168, !168}
!254 = !{!255, !256, !257, !258}
!255 = !DILocalVariable(name: "nu", arg: 1, scope: !251, file: !2, line: 153, type: !168)
!256 = !DILocalVariable(name: "x", arg: 2, scope: !251, file: !2, line: 153, type: !168)
!257 = !DILocalVariable(name: "result", scope: !251, file: !2, line: 155, type: !70)
!258 = !DILocalVariable(name: "status", scope: !251, file: !2, line: 155, type: !18)
!259 = distinct !DIAssignID()
!260 = !DILocation(line: 0, scope: !251)
!261 = !DILocation(line: 155, column: 3, scope: !251)
!262 = !DILocation(line: 155, column: 3, scope: !263)
!263 = distinct !DILexicalBlock(scope: !251, file: !2, line: 155, column: 3)
!264 = !DILocation(line: 155, column: 3, scope: !265)
!265 = distinct !DILexicalBlock(scope: !266, file: !2, line: 155, column: 3)
!266 = distinct !DILexicalBlock(scope: !263, file: !2, line: 155, column: 3)
!267 = !DILocation(line: 156, column: 1, scope: !251)
