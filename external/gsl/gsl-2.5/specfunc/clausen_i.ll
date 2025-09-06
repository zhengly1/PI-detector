; ModuleID = 'clausen.ll'
source_filename = "clausen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [29 x i8] c"gsl_sf_clausen_e(x, &result)\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [10 x i8] c"clausen.c\00", align 1, !dbg !7
@aclaus_data = internal unnamed_addr constant [15 x double] [double 0x4001243CF14D9C94, double 0x3FB28460C5398C8E, double 0x3F50A731C3E77ADA, double 0x3F0103B385B37ED8, double 0x3EB65DD7FD2B2749, double 0x3E70ADB4D822210F, double 0x3E2AE308A2537CDD, double 0x3DE6DD2CB91E71FB, double 0x3DA43938B84274B5, double 0x3D626FD063CB6B46, double 3.058040e-14, double 1.819700e-15, double 1.100000e-16, double 6.800000e-18, double 4.000000e-19], align 16, !dbg !12

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_clausen_e(double noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !80 {
  %3 = alloca double, align 8, !DIAssignID !106
  call void @llvm.dbg.assign(metadata i1 undef, metadata !91, metadata !DIExpression(), metadata !106, metadata ptr %3, metadata !DIExpression()), !dbg !107
  call void @llvm.dbg.assign(metadata double %0, metadata !91, metadata !DIExpression(), metadata !108, metadata ptr %3, metadata !DIExpression()), !dbg !107
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !92, metadata !DIExpression()), !dbg !107
  tail call void @llvm.dbg.value(metadata double 0x3E6921FB54442D18, metadata !93, metadata !DIExpression()), !dbg !107
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !95, metadata !DIExpression()), !dbg !107
  %4 = fcmp olt double %0, 0.000000e+00, !dbg !109
  %5 = fneg double %0, !dbg !111
  %6 = select i1 %4, double %5, double %0, !dbg !111
  %7 = select i1 %4, double -1.000000e+00, double 1.000000e+00, !dbg !111
  store double %6, ptr %3, align 8, !tbaa !112, !DIAssignID !108
  tail call void @llvm.dbg.value(metadata double %7, metadata !95, metadata !DIExpression()), !dbg !107
  %8 = call i32 @gsl_sf_angle_restrict_pos_e(ptr noundef nonnull %3) #5, !dbg !116
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !96, metadata !DIExpression()), !dbg !107
  %9 = load double, ptr %3, align 8, !dbg !117, !tbaa !112
  %10 = fcmp ogt double %9, 0x400921FB54442D18, !dbg !118
  br i1 %10, label %11, label %13, !dbg !119

11:                                               ; preds = %2
  tail call void @llvm.dbg.value(metadata double 6.281250e+00, metadata !97, metadata !DIExpression()), !dbg !120
  tail call void @llvm.dbg.value(metadata double 0x3F5FB54442D1846A, metadata !100, metadata !DIExpression()), !dbg !120
  %handler_result = call double @fSubHandlerDouble(double 6.281250e+00, double %9), !dbg !121
  %handler_result1 = call double @fAddHandlerDouble(double %handler_result, double 0x3F5FB54442D1846A), !dbg !122
  store double %handler_result1, ptr %3, align 8, !dbg !122, !tbaa !112, !DIAssignID !123
  call void @llvm.dbg.assign(metadata double %handler_result1, metadata !91, metadata !DIExpression(), metadata !123, metadata ptr %3, metadata !DIExpression()), !dbg !107
  %12 = fneg double %7, !dbg !124
  tail call void @llvm.dbg.value(metadata double %12, metadata !95, metadata !DIExpression()), !dbg !107
  br label %13, !dbg !125

13:                                               ; preds = %11, %2
  %14 = phi double [ %handler_result1, %11 ], [ %9, %2 ], !dbg !126
  %15 = phi double [ %12, %11 ], [ %7, %2 ], !dbg !107
  tail call void @llvm.dbg.value(metadata double %15, metadata !95, metadata !DIExpression()), !dbg !107
  %16 = fcmp oeq double %14, 0.000000e+00, !dbg !127
  br i1 %16, label %17, label %19, !dbg !128

17:                                               ; preds = %13
  %18 = getelementptr inbounds i8, ptr %1, i64 8, !dbg !129
  store i64 0, ptr %18, align 8, !dbg !129
  br label %55, !dbg !131

19:                                               ; preds = %13
  %20 = fcmp olt double %14, 0x3E6921FB54442D18, !dbg !132
  br i1 %20, label %21, label %26, !dbg !133

21:                                               ; preds = %19
  %handler_result19 = call double @callHandler(i32 12, double %14, double %14), !dbg !134
  %handler_result2 = call double @fSubHandlerDouble(double 1.000000e+00, double %handler_result19), !dbg !134
  %22 = fmul double %14, %handler_result2, !dbg !134
  %23 = load double, ptr %3, align 8, !dbg !136, !tbaa !112
  %24 = fmul double %23, 0x3CB0000000000000, !dbg !137
  %25 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !138
  store double %24, ptr %25, align 8, !dbg !139, !tbaa !140
  br label %55, !dbg !142

26:                                               ; preds = %19
  %27 = fmul double %14, %14, !dbg !143
  %28 = fdiv double %27, 0x4023BD3CC9BE45DE, !dbg !144
  %handler_result3 = call double @fAddHandlerDouble(double %28, double -5.000000e-01), !dbg !145
  %29 = fmul double %handler_result3, 2.000000e+00, !dbg !145
  tail call void @llvm.dbg.value(metadata double %29, metadata !101, metadata !DIExpression()), !dbg !146
  call void @llvm.dbg.value(metadata !147, metadata !148, metadata !DIExpression()), !dbg !170
  call void @llvm.dbg.value(metadata double %29, metadata !156, metadata !DIExpression()), !dbg !170
  call void @llvm.dbg.value(metadata ptr undef, metadata !157, metadata !DIExpression()), !dbg !170
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !159, metadata !DIExpression()), !dbg !170
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !160, metadata !DIExpression()), !dbg !170
  %30 = fmul double %29, 2.000000e+00, !dbg !172
  %handler_result4 = call double @fAddHandlerDouble(double %30, double 1.000000e+00), !dbg !173
  %handler_result5 = call double @fAddHandlerDouble(double %handler_result4, double -1.000000e+00), !dbg !174
  %31 = fmul double %handler_result5, 5.000000e-01, !dbg !174
  call void @llvm.dbg.value(metadata double %31, metadata !161, metadata !DIExpression()), !dbg !170
  %32 = fmul double %31, 2.000000e+00, !dbg !175
  call void @llvm.dbg.value(metadata double %32, metadata !162, metadata !DIExpression()), !dbg !170
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !163, metadata !DIExpression()), !dbg !170
  call void @llvm.dbg.value(metadata i32 14, metadata !158, metadata !DIExpression()), !dbg !170
  br label %33, !dbg !176

33:                                               ; preds = %33, %26
  %34 = phi i64 [ 14, %26 ], [ %44, %33 ]
  %35 = phi double [ 0.000000e+00, %26 ], [ %handler_result7, %33 ]
  %36 = phi double [ 0.000000e+00, %26 ], [ %handler_result10, %33 ]
  %37 = phi double [ 0.000000e+00, %26 ], [ %35, %33 ]
  call void @llvm.dbg.value(metadata i64 %34, metadata !158, metadata !DIExpression()), !dbg !170
  call void @llvm.dbg.value(metadata double %35, metadata !159, metadata !DIExpression()), !dbg !170
  call void @llvm.dbg.value(metadata double %36, metadata !163, metadata !DIExpression()), !dbg !170
  call void @llvm.dbg.value(metadata double %37, metadata !160, metadata !DIExpression()), !dbg !170
  call void @llvm.dbg.value(metadata double %35, metadata !164, metadata !DIExpression()), !dbg !177
  %38 = fmul double %32, %35, !dbg !178
  %handler_result6 = call double @fSubHandlerDouble(double %38, double %37), !dbg !179
  %39 = getelementptr inbounds double, ptr @aclaus_data, i64 %34, !dbg !179
  %40 = load double, ptr %39, align 8, !dbg !179, !tbaa !112
  %handler_result7 = call double @fAddHandlerDouble(double %handler_result6, double %40), !dbg !180
  call void @llvm.dbg.value(metadata double %handler_result7, metadata !159, metadata !DIExpression()), !dbg !170
  %41 = call double @llvm.fabs.f64(double %38), !dbg !180
  %42 = call double @llvm.fabs.f64(double %37), !dbg !181
  %handler_result8 = call double @fAddHandlerDouble(double %41, double %42), !dbg !182
  %43 = call double @llvm.fabs.f64(double %40), !dbg !182
  %handler_result9 = call double @fAddHandlerDouble(double %handler_result8, double %43), !dbg !183
  %handler_result10 = call double @fAddHandlerDouble(double %36, double %handler_result9), !dbg !184
  call void @llvm.dbg.value(metadata double %handler_result10, metadata !163, metadata !DIExpression()), !dbg !170
  call void @llvm.dbg.value(metadata double %35, metadata !160, metadata !DIExpression()), !dbg !170
  %44 = add nsw i64 %34, -1, !dbg !184
  call void @llvm.dbg.value(metadata i64 %44, metadata !158, metadata !DIExpression()), !dbg !170
  %45 = icmp ugt i64 %34, 1, !dbg !185
  br i1 %45, label %33, label %46, !dbg !176, !llvm.loop !186

46:                                               ; preds = %33
  call void @llvm.dbg.value(metadata double %handler_result7, metadata !168, metadata !DIExpression()), !dbg !189
  %47 = fmul double %31, %handler_result7, !dbg !190
  %handler_result11 = call double @fSubHandlerDouble(double %47, double %35), !dbg !191
  %handler_result12 = call double @fAddHandlerDouble(double %handler_result11, double 0x3FF1243CF14D9C94), !dbg !192
  call void @llvm.dbg.value(metadata double %handler_result12, metadata !159, metadata !DIExpression()), !dbg !170
  %48 = call double @llvm.fabs.f64(double %47), !dbg !192
  %49 = call double @llvm.fabs.f64(double %35), !dbg !193
  %handler_result13 = call double @fAddHandlerDouble(double %49, double %48), !dbg !194
  %handler_result14 = call double @fAddHandlerDouble(double %handler_result13, double 0x3FF1243CF14D9C94), !dbg !195
  %handler_result15 = call double @fAddHandlerDouble(double %handler_result10, double %handler_result14), !dbg !196
  call void @llvm.dbg.value(metadata double %handler_result15, metadata !163, metadata !DIExpression()), !dbg !170
  tail call void @llvm.dbg.value(metadata double %handler_result12, metadata !105, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !146
  %50 = fmul double %handler_result15, 0x3CB0000000000000, !dbg !196
  %handler_result16 = call double @fAddHandlerDouble(double %50, double 4.000000e-19), !dbg !197
  tail call void @llvm.dbg.value(metadata double %handler_result16, metadata !105, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !146
  %handler_result20 = call double @callHandler(i32 12, double %14, double %14), !dbg !198
  %handler_result17 = call double @fSubHandlerDouble(double %handler_result12, double %handler_result20), !dbg !198
  %51 = fmul double %14, %handler_result17, !dbg !198
  %52 = load double, ptr %3, align 8, !dbg !199, !tbaa !112
  %handler_result18 = call double @fAddHandlerDouble(double %handler_result16, double 0x3CB0000000000000), !dbg !200
  %53 = fmul double %52, %handler_result18, !dbg !200
  %54 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !201
  store double %53, ptr %54, align 8, !dbg !202, !tbaa !140
  br label %55

55:                                               ; preds = %46, %21, %17
  %56 = phi double [ %22, %21 ], [ %51, %46 ], [ 0.000000e+00, %17 ], !dbg !203
  %57 = fmul double %15, %56, !dbg !203
  store double %57, ptr %1, align 8, !dbg !203, !tbaa !204
  ret i32 %8, !dbg !205
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare !dbg !206 i32 @gsl_sf_angle_restrict_pos_e(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !210 double @log(double noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_clausen(double noundef %0) local_unnamed_addr #0 !dbg !214 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !221
  call void @llvm.dbg.assign(metadata i1 undef, metadata !219, metadata !DIExpression(), metadata !221, metadata ptr %2, metadata !DIExpression()), !dbg !222
  tail call void @llvm.dbg.value(metadata double %0, metadata !218, metadata !DIExpression()), !dbg !222
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #5, !dbg !223
  %3 = call i32 @gsl_sf_clausen_e(double noundef %0, ptr noundef nonnull %2), !dbg !223
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !220, metadata !DIExpression()), !dbg !222
  %4 = icmp eq i32 %3, 0, !dbg !224
  br i1 %4, label %6, label %5, !dbg !223

5:                                                ; preds = %1
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 110, i32 noundef %3) #5, !dbg !226
  br label %6, !dbg !226

6:                                                ; preds = %5, %1
  %7 = load double, ptr %2, align 8, !dbg !223, !tbaa !204
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #5, !dbg !229
  ret double %7, !dbg !229
}

declare !dbg !230 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #4

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

!llvm.dbg.cu = !{!14}
!llvm.module.flags = !{!72, !73, !74, !75, !76, !77, !78}
!llvm.ident = !{!79}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 110, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "clausen.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "2f102f0886910169c9925edb6dd00143")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 29)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 110, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 10)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(name: "aclaus_data", scope: !14, file: !2, line: 31, type: !69, isLocal: true, isDefinition: true)
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
!57 = distinct !DIGlobalVariable(name: "aclaus_cs", scope: !14, file: !2, line: 48, type: !58, isLocal: true, isDefinition: true)
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
!69 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 960, elements: !70)
!70 = !{!71}
!71 = !DISubrange(count: 15)
!72 = !{i32 7, !"Dwarf Version", i32 5}
!73 = !{i32 2, !"Debug Info Version", i32 3}
!74 = !{i32 1, !"wchar_size", i32 4}
!75 = !{i32 8, !"PIC Level", i32 2}
!76 = !{i32 7, !"PIE Level", i32 2}
!77 = !{i32 7, !"uwtable", i32 2}
!78 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!79 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!80 = distinct !DISubprogram(name: "gsl_sf_clausen_e", scope: !2, file: !2, line: 58, type: !81, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !90)
!81 = !DISubroutineType(types: !82)
!82 = !{!18, !64, !83}
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !85, line: 41, baseType: !86)
!85 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "5b52deed011f1ffd07977b19a388d251")
!86 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !85, line: 37, size: 128, elements: !87)
!87 = !{!88, !89}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !86, file: !85, line: 38, baseType: !64, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !86, file: !85, line: 39, baseType: !64, size: 64, offset: 64)
!90 = !{!91, !92, !93, !95, !96, !97, !100, !101, !105}
!91 = !DILocalVariable(name: "x", arg: 1, scope: !80, file: !2, line: 58, type: !64)
!92 = !DILocalVariable(name: "result", arg: 2, scope: !80, file: !2, line: 58, type: !83)
!93 = !DILocalVariable(name: "x_cut", scope: !80, file: !2, line: 60, type: !94)
!94 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !64)
!95 = !DILocalVariable(name: "sgn", scope: !80, file: !2, line: 62, type: !64)
!96 = !DILocalVariable(name: "status_red", scope: !80, file: !2, line: 63, type: !18)
!97 = !DILocalVariable(name: "p0", scope: !98, file: !2, line: 76, type: !94)
!98 = distinct !DILexicalBlock(scope: !99, file: !2, line: 74, column: 16)
!99 = distinct !DILexicalBlock(scope: !80, file: !2, line: 74, column: 6)
!100 = !DILocalVariable(name: "p1", scope: !98, file: !2, line: 77, type: !94)
!101 = !DILocalVariable(name: "t", scope: !102, file: !2, line: 91, type: !94)
!102 = distinct !DILexicalBlock(scope: !103, file: !2, line: 90, column: 8)
!103 = distinct !DILexicalBlock(scope: !104, file: !2, line: 86, column: 11)
!104 = distinct !DILexicalBlock(scope: !80, file: !2, line: 82, column: 6)
!105 = !DILocalVariable(name: "result_c", scope: !102, file: !2, line: 92, type: !84)
!106 = distinct !DIAssignID()
!107 = !DILocation(line: 0, scope: !80)
!108 = distinct !DIAssignID()
!109 = !DILocation(line: 65, column: 8, scope: !110)
!110 = distinct !DILexicalBlock(scope: !80, file: !2, line: 65, column: 6)
!111 = !DILocation(line: 65, column: 6, scope: !80)
!112 = !{!113, !113, i64 0}
!113 = !{!"double", !114, i64 0}
!114 = !{!"omnipotent char", !115, i64 0}
!115 = !{!"Simple C/C++ TBAA"}
!116 = !DILocation(line: 71, column: 16, scope: !80)
!117 = !DILocation(line: 74, column: 6, scope: !99)
!118 = !DILocation(line: 74, column: 8, scope: !99)
!119 = !DILocation(line: 74, column: 6, scope: !80)
!120 = !DILocation(line: 0, scope: !98)
!121 = !DILocation(line: 78, column: 18, scope: !98)
!122 = !DILocation(line: 78, column: 7, scope: !98)
!123 = distinct !DIAssignID()
!124 = !DILocation(line: 79, column: 11, scope: !98)
!125 = !DILocation(line: 80, column: 3, scope: !98)
!126 = !DILocation(line: 82, column: 6, scope: !104)
!127 = !DILocation(line: 82, column: 8, scope: !104)
!128 = !DILocation(line: 82, column: 6, scope: !80)
!129 = !DILocation(line: 84, column: 17, scope: !130)
!130 = distinct !DILexicalBlock(scope: !104, file: !2, line: 82, column: 16)
!131 = !DILocation(line: 85, column: 3, scope: !130)
!132 = !DILocation(line: 86, column: 13, scope: !103)
!133 = !DILocation(line: 86, column: 11, scope: !104)
!134 = !DILocation(line: 87, column: 21, scope: !135)
!135 = distinct !DILexicalBlock(scope: !103, file: !2, line: 86, column: 22)
!136 = !DILocation(line: 88, column: 19, scope: !135)
!137 = !DILocation(line: 88, column: 21, scope: !135)
!138 = !DILocation(line: 88, column: 13, scope: !135)
!139 = !DILocation(line: 88, column: 17, scope: !135)
!140 = !{!141, !113, i64 8}
!141 = !{!"gsl_sf_result_struct", !113, i64 0, !113, i64 8}
!142 = !DILocation(line: 89, column: 3, scope: !135)
!143 = !DILocation(line: 91, column: 28, scope: !102)
!144 = !DILocation(line: 91, column: 31, scope: !102)
!145 = !DILocation(line: 91, column: 25, scope: !102)
!146 = !DILocation(line: 0, scope: !102)
!147 = !{}
!148 = !DILocalVariable(name: "cs", arg: 1, scope: !149, file: !150, line: 3, type: !153)
!149 = distinct !DISubprogram(name: "cheb_eval_e", scope: !150, file: !150, line: 3, type: !151, scopeLine: 6, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !155)
!150 = !DIFile(filename: "./cheb_eval.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "540fdb014588703ccd0b3c3b3ea8a26b")
!151 = !DISubroutineType(types: !152)
!152 = !{!18, !153, !94, !83}
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !58)
!155 = !{!148, !156, !157, !158, !159, !160, !161, !162, !163, !164, !168}
!156 = !DILocalVariable(name: "x", arg: 2, scope: !149, file: !150, line: 4, type: !94)
!157 = !DILocalVariable(name: "result", arg: 3, scope: !149, file: !150, line: 5, type: !83)
!158 = !DILocalVariable(name: "j", scope: !149, file: !150, line: 7, type: !18)
!159 = !DILocalVariable(name: "d", scope: !149, file: !150, line: 8, type: !64)
!160 = !DILocalVariable(name: "dd", scope: !149, file: !150, line: 9, type: !64)
!161 = !DILocalVariable(name: "y", scope: !149, file: !150, line: 11, type: !64)
!162 = !DILocalVariable(name: "y2", scope: !149, file: !150, line: 12, type: !64)
!163 = !DILocalVariable(name: "e", scope: !149, file: !150, line: 14, type: !64)
!164 = !DILocalVariable(name: "temp", scope: !165, file: !150, line: 17, type: !64)
!165 = distinct !DILexicalBlock(scope: !166, file: !150, line: 16, column: 33)
!166 = distinct !DILexicalBlock(scope: !167, file: !150, line: 16, column: 3)
!167 = distinct !DILexicalBlock(scope: !149, file: !150, line: 16, column: 3)
!168 = !DILocalVariable(name: "temp", scope: !169, file: !150, line: 24, type: !64)
!169 = distinct !DILexicalBlock(scope: !149, file: !150, line: 23, column: 3)
!170 = !DILocation(line: 0, scope: !149, inlinedAt: !171)
!171 = distinct !DILocation(line: 93, column: 5, scope: !102)
!172 = !DILocation(line: 11, column: 19, scope: !149, inlinedAt: !171)
!173 = !DILocation(line: 11, column: 30, scope: !149, inlinedAt: !171)
!174 = !DILocation(line: 11, column: 39, scope: !149, inlinedAt: !171)
!175 = !DILocation(line: 12, column: 19, scope: !149, inlinedAt: !171)
!176 = !DILocation(line: 16, column: 3, scope: !167, inlinedAt: !171)
!177 = !DILocation(line: 0, scope: !165, inlinedAt: !171)
!178 = !DILocation(line: 18, column: 11, scope: !165, inlinedAt: !171)
!179 = !DILocation(line: 18, column: 21, scope: !165, inlinedAt: !171)
!180 = !DILocation(line: 19, column: 10, scope: !165, inlinedAt: !171)
!181 = !DILocation(line: 19, column: 26, scope: !165, inlinedAt: !171)
!182 = !DILocation(line: 19, column: 37, scope: !165, inlinedAt: !171)
!183 = !DILocation(line: 19, column: 7, scope: !165, inlinedAt: !171)
!184 = !DILocation(line: 16, column: 29, scope: !166, inlinedAt: !171)
!185 = !DILocation(line: 16, column: 23, scope: !166, inlinedAt: !171)
!186 = distinct !{!186, !176, !187, !188}
!187 = !DILocation(line: 21, column: 3, scope: !167, inlinedAt: !171)
!188 = !{!"llvm.loop.mustprogress"}
!189 = !DILocation(line: 0, scope: !169, inlinedAt: !171)
!190 = !DILocation(line: 25, column: 10, scope: !169, inlinedAt: !171)
!191 = !DILocation(line: 25, column: 18, scope: !169, inlinedAt: !171)
!192 = !DILocation(line: 26, column: 10, scope: !169, inlinedAt: !171)
!193 = !DILocation(line: 26, column: 25, scope: !169, inlinedAt: !171)
!194 = !DILocation(line: 26, column: 34, scope: !169, inlinedAt: !171)
!195 = !DILocation(line: 26, column: 7, scope: !169, inlinedAt: !171)
!196 = !DILocation(line: 30, column: 33, scope: !149, inlinedAt: !171)
!197 = !DILocation(line: 94, column: 39, scope: !102)
!198 = !DILocation(line: 94, column: 21, scope: !102)
!199 = !DILocation(line: 95, column: 19, scope: !102)
!200 = !DILocation(line: 95, column: 21, scope: !102)
!201 = !DILocation(line: 95, column: 13, scope: !102)
!202 = !DILocation(line: 95, column: 17, scope: !102)
!203 = !DILocation(line: 98, column: 15, scope: !80)
!204 = !{!141, !113, i64 0}
!205 = !DILocation(line: 100, column: 3, scope: !80)
!206 = !DISubprogram(name: "gsl_sf_angle_restrict_pos_e", scope: !207, file: !207, line: 141, type: !208, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!207 = !DIFile(filename: "../gsl/gsl_sf_trig.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "f99b323a60a985d2ebefccc97fb97d3a")
!208 = !DISubroutineType(types: !209)
!209 = !{!18, !63}
!210 = !DISubprogram(name: "log", scope: !211, file: !211, line: 104, type: !212, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!211 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!212 = !DISubroutineType(types: !213)
!213 = !{!64, !64}
!214 = distinct !DISubprogram(name: "gsl_sf_clausen", scope: !2, file: !2, line: 108, type: !215, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !217)
!215 = !DISubroutineType(types: !216)
!216 = !{!64, !94}
!217 = !{!218, !219, !220}
!218 = !DILocalVariable(name: "x", arg: 1, scope: !214, file: !2, line: 108, type: !94)
!219 = !DILocalVariable(name: "result", scope: !214, file: !2, line: 110, type: !84)
!220 = !DILocalVariable(name: "status", scope: !214, file: !2, line: 110, type: !18)
!221 = distinct !DIAssignID()
!222 = !DILocation(line: 0, scope: !214)
!223 = !DILocation(line: 110, column: 3, scope: !214)
!224 = !DILocation(line: 110, column: 3, scope: !225)
!225 = distinct !DILexicalBlock(scope: !214, file: !2, line: 110, column: 3)
!226 = !DILocation(line: 110, column: 3, scope: !227)
!227 = distinct !DILexicalBlock(scope: !228, file: !2, line: 110, column: 3)
!228 = distinct !DILexicalBlock(scope: !225, file: !2, line: 110, column: 3)
!229 = !DILocation(line: 111, column: 1, scope: !214)
!230 = !DISubprogram(name: "gsl_error", scope: !17, file: !17, line: 77, type: !231, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!231 = !DISubroutineType(types: !232)
!232 = !{null, !233, !233, !18, !18}
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
