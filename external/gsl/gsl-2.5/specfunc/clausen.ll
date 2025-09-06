; ModuleID = 'clausen.c'
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
  %8 = call i32 @gsl_sf_angle_restrict_pos_e(ptr noundef nonnull %3) #6, !dbg !116
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !96, metadata !DIExpression()), !dbg !107
  %9 = load double, ptr %3, align 8, !dbg !117, !tbaa !112
  %10 = fcmp ogt double %9, 0x400921FB54442D18, !dbg !118
  br i1 %10, label %11, label %15, !dbg !119

11:                                               ; preds = %2
  tail call void @llvm.dbg.value(metadata double 6.281250e+00, metadata !97, metadata !DIExpression()), !dbg !120
  tail call void @llvm.dbg.value(metadata double 0x3F5FB54442D1846A, metadata !100, metadata !DIExpression()), !dbg !120
  %12 = fsub double 6.281250e+00, %9, !dbg !121
  %13 = fadd double %12, 0x3F5FB54442D1846A, !dbg !122
  store double %13, ptr %3, align 8, !dbg !123, !tbaa !112, !DIAssignID !124
  call void @llvm.dbg.assign(metadata double %13, metadata !91, metadata !DIExpression(), metadata !124, metadata ptr %3, metadata !DIExpression()), !dbg !107
  %14 = fneg double %7, !dbg !125
  tail call void @llvm.dbg.value(metadata double %14, metadata !95, metadata !DIExpression()), !dbg !107
  br label %15, !dbg !126

15:                                               ; preds = %11, %2
  %16 = phi double [ %13, %11 ], [ %9, %2 ], !dbg !127
  %17 = phi double [ %14, %11 ], [ %7, %2 ], !dbg !107
  tail call void @llvm.dbg.value(metadata double %17, metadata !95, metadata !DIExpression()), !dbg !107
  %18 = fcmp oeq double %16, 0.000000e+00, !dbg !128
  br i1 %18, label %19, label %21, !dbg !129

19:                                               ; preds = %15
  %20 = getelementptr inbounds i8, ptr %1, i64 8, !dbg !130
  store i64 0, ptr %20, align 8, !dbg !130
  br label %76, !dbg !132

21:                                               ; preds = %15
  %22 = fcmp olt double %16, 0x3E6921FB54442D18, !dbg !133
  br i1 %22, label %23, label %30, !dbg !134

23:                                               ; preds = %21
  %24 = call double @log(double noundef %16) #6, !dbg !135
  %25 = fsub double 1.000000e+00, %24, !dbg !137
  %26 = fmul double %16, %25, !dbg !138
  %27 = load double, ptr %3, align 8, !dbg !139, !tbaa !112
  %28 = fmul double %27, 0x3CB0000000000000, !dbg !140
  %29 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !141
  store double %28, ptr %29, align 8, !dbg !142, !tbaa !143
  br label %76, !dbg !145

30:                                               ; preds = %21
  %31 = fmul double %16, %16, !dbg !146
  %32 = fdiv double %31, 0x4023BD3CC9BE45DE, !dbg !147
  %33 = fadd double %32, -5.000000e-01, !dbg !148
  %34 = fmul double %33, 2.000000e+00, !dbg !149
  tail call void @llvm.dbg.value(metadata double %34, metadata !101, metadata !DIExpression()), !dbg !150
  call void @llvm.dbg.value(metadata !151, metadata !152, metadata !DIExpression()), !dbg !174
  call void @llvm.dbg.value(metadata double %34, metadata !160, metadata !DIExpression()), !dbg !174
  call void @llvm.dbg.value(metadata ptr undef, metadata !161, metadata !DIExpression()), !dbg !174
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !163, metadata !DIExpression()), !dbg !174
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !164, metadata !DIExpression()), !dbg !174
  %35 = fmul double %34, 2.000000e+00, !dbg !176
  %36 = fadd double %35, 1.000000e+00, !dbg !177
  %37 = fadd double %36, -1.000000e+00, !dbg !178
  %38 = fmul double %37, 5.000000e-01, !dbg !179
  call void @llvm.dbg.value(metadata double %38, metadata !165, metadata !DIExpression()), !dbg !174
  %39 = fmul double %38, 2.000000e+00, !dbg !180
  call void @llvm.dbg.value(metadata double %39, metadata !166, metadata !DIExpression()), !dbg !174
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !167, metadata !DIExpression()), !dbg !174
  call void @llvm.dbg.value(metadata i32 14, metadata !162, metadata !DIExpression()), !dbg !174
  br label %40, !dbg !181

40:                                               ; preds = %40, %30
  %41 = phi i64 [ 14, %30 ], [ %56, %40 ]
  %42 = phi double [ 0.000000e+00, %30 ], [ %49, %40 ]
  %43 = phi double [ 0.000000e+00, %30 ], [ %55, %40 ]
  %44 = phi double [ 0.000000e+00, %30 ], [ %42, %40 ]
  call void @llvm.dbg.value(metadata i64 %41, metadata !162, metadata !DIExpression()), !dbg !174
  call void @llvm.dbg.value(metadata double %42, metadata !163, metadata !DIExpression()), !dbg !174
  call void @llvm.dbg.value(metadata double %43, metadata !167, metadata !DIExpression()), !dbg !174
  call void @llvm.dbg.value(metadata double %44, metadata !164, metadata !DIExpression()), !dbg !174
  call void @llvm.dbg.value(metadata double %42, metadata !168, metadata !DIExpression()), !dbg !182
  %45 = fmul double %39, %42, !dbg !183
  %46 = fsub double %45, %44, !dbg !184
  %47 = getelementptr inbounds double, ptr @aclaus_data, i64 %41, !dbg !185
  %48 = load double, ptr %47, align 8, !dbg !185, !tbaa !112
  %49 = fadd double %46, %48, !dbg !186
  call void @llvm.dbg.value(metadata double %49, metadata !163, metadata !DIExpression()), !dbg !174
  %50 = call double @llvm.fabs.f64(double %45), !dbg !187
  %51 = call double @llvm.fabs.f64(double %44), !dbg !188
  %52 = fadd double %50, %51, !dbg !189
  %53 = call double @llvm.fabs.f64(double %48), !dbg !190
  %54 = fadd double %52, %53, !dbg !191
  %55 = fadd double %43, %54, !dbg !192
  call void @llvm.dbg.value(metadata double %55, metadata !167, metadata !DIExpression()), !dbg !174
  call void @llvm.dbg.value(metadata double %42, metadata !164, metadata !DIExpression()), !dbg !174
  %56 = add nsw i64 %41, -1, !dbg !193
  call void @llvm.dbg.value(metadata i64 %56, metadata !162, metadata !DIExpression()), !dbg !174
  %57 = icmp ugt i64 %41, 1, !dbg !194
  br i1 %57, label %40, label %58, !dbg !181, !llvm.loop !195

58:                                               ; preds = %40
  call void @llvm.dbg.value(metadata double %49, metadata !172, metadata !DIExpression()), !dbg !198
  %59 = fmul double %38, %49, !dbg !199
  %60 = fsub double %59, %42, !dbg !200
  %61 = fadd double %60, 0x3FF1243CF14D9C94, !dbg !201
  call void @llvm.dbg.value(metadata double %61, metadata !163, metadata !DIExpression()), !dbg !174
  %62 = call double @llvm.fabs.f64(double %59), !dbg !202
  %63 = call double @llvm.fabs.f64(double %42), !dbg !203
  %64 = fadd double %63, %62, !dbg !204
  %65 = fadd double %64, 0x3FF1243CF14D9C94, !dbg !205
  %66 = fadd double %55, %65, !dbg !206
  call void @llvm.dbg.value(metadata double %66, metadata !167, metadata !DIExpression()), !dbg !174
  tail call void @llvm.dbg.value(metadata double %61, metadata !105, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !150
  %67 = fmul double %66, 0x3CB0000000000000, !dbg !207
  %68 = fadd double %67, 4.000000e-19, !dbg !208
  tail call void @llvm.dbg.value(metadata double %68, metadata !105, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !150
  %69 = call double @log(double noundef %16) #6, !dbg !209
  %70 = fsub double %61, %69, !dbg !210
  %71 = fmul double %16, %70, !dbg !211
  %72 = load double, ptr %3, align 8, !dbg !212, !tbaa !112
  %73 = fadd double %68, 0x3CB0000000000000, !dbg !213
  %74 = fmul double %72, %73, !dbg !214
  %75 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !215
  store double %74, ptr %75, align 8, !dbg !216, !tbaa !143
  br label %76

76:                                               ; preds = %23, %58, %19
  %77 = phi double [ %26, %23 ], [ %71, %58 ], [ 0.000000e+00, %19 ], !dbg !217
  %78 = fmul double %17, %77, !dbg !217
  store double %78, ptr %1, align 8, !dbg !217, !tbaa !218
  ret i32 %8, !dbg !219
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare !dbg !220 i32 @gsl_sf_angle_restrict_pos_e(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !224 double @log(double noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_clausen(double noundef %0) local_unnamed_addr #0 !dbg !228 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !235
  call void @llvm.dbg.assign(metadata i1 undef, metadata !233, metadata !DIExpression(), metadata !235, metadata ptr %2, metadata !DIExpression()), !dbg !236
  tail call void @llvm.dbg.value(metadata double %0, metadata !232, metadata !DIExpression()), !dbg !236
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #6, !dbg !237
  %3 = call i32 @gsl_sf_clausen_e(double noundef %0, ptr noundef nonnull %2), !dbg !237
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !234, metadata !DIExpression()), !dbg !236
  %4 = icmp eq i32 %3, 0, !dbg !238
  br i1 %4, label %6, label %5, !dbg !237

5:                                                ; preds = %1
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 110, i32 noundef %3) #6, !dbg !240
  br label %6, !dbg !240

6:                                                ; preds = %1, %5
  %7 = load double, ptr %2, align 8, !dbg !237, !tbaa !218
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #6, !dbg !243
  ret double %7, !dbg !243
}

declare !dbg !244 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #4

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
!121 = !DILocation(line: 78, column: 13, scope: !98)
!122 = !DILocation(line: 78, column: 18, scope: !98)
!123 = !DILocation(line: 78, column: 7, scope: !98)
!124 = distinct !DIAssignID()
!125 = !DILocation(line: 79, column: 11, scope: !98)
!126 = !DILocation(line: 80, column: 3, scope: !98)
!127 = !DILocation(line: 82, column: 6, scope: !104)
!128 = !DILocation(line: 82, column: 8, scope: !104)
!129 = !DILocation(line: 82, column: 6, scope: !80)
!130 = !DILocation(line: 84, column: 17, scope: !131)
!131 = distinct !DILexicalBlock(scope: !104, file: !2, line: 82, column: 16)
!132 = !DILocation(line: 85, column: 3, scope: !131)
!133 = !DILocation(line: 86, column: 13, scope: !103)
!134 = !DILocation(line: 86, column: 11, scope: !104)
!135 = !DILocation(line: 87, column: 30, scope: !136)
!136 = distinct !DILexicalBlock(scope: !103, file: !2, line: 86, column: 22)
!137 = !DILocation(line: 87, column: 28, scope: !136)
!138 = !DILocation(line: 87, column: 21, scope: !136)
!139 = !DILocation(line: 88, column: 19, scope: !136)
!140 = !DILocation(line: 88, column: 21, scope: !136)
!141 = !DILocation(line: 88, column: 13, scope: !136)
!142 = !DILocation(line: 88, column: 17, scope: !136)
!143 = !{!144, !113, i64 8}
!144 = !{!"gsl_sf_result_struct", !113, i64 0, !113, i64 8}
!145 = !DILocation(line: 89, column: 3, scope: !136)
!146 = !DILocation(line: 91, column: 28, scope: !102)
!147 = !DILocation(line: 91, column: 31, scope: !102)
!148 = !DILocation(line: 91, column: 45, scope: !102)
!149 = !DILocation(line: 91, column: 25, scope: !102)
!150 = !DILocation(line: 0, scope: !102)
!151 = !{}
!152 = !DILocalVariable(name: "cs", arg: 1, scope: !153, file: !154, line: 3, type: !157)
!153 = distinct !DISubprogram(name: "cheb_eval_e", scope: !154, file: !154, line: 3, type: !155, scopeLine: 6, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !159)
!154 = !DIFile(filename: "./cheb_eval.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "540fdb014588703ccd0b3c3b3ea8a26b")
!155 = !DISubroutineType(types: !156)
!156 = !{!18, !157, !94, !83}
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !58)
!159 = !{!152, !160, !161, !162, !163, !164, !165, !166, !167, !168, !172}
!160 = !DILocalVariable(name: "x", arg: 2, scope: !153, file: !154, line: 4, type: !94)
!161 = !DILocalVariable(name: "result", arg: 3, scope: !153, file: !154, line: 5, type: !83)
!162 = !DILocalVariable(name: "j", scope: !153, file: !154, line: 7, type: !18)
!163 = !DILocalVariable(name: "d", scope: !153, file: !154, line: 8, type: !64)
!164 = !DILocalVariable(name: "dd", scope: !153, file: !154, line: 9, type: !64)
!165 = !DILocalVariable(name: "y", scope: !153, file: !154, line: 11, type: !64)
!166 = !DILocalVariable(name: "y2", scope: !153, file: !154, line: 12, type: !64)
!167 = !DILocalVariable(name: "e", scope: !153, file: !154, line: 14, type: !64)
!168 = !DILocalVariable(name: "temp", scope: !169, file: !154, line: 17, type: !64)
!169 = distinct !DILexicalBlock(scope: !170, file: !154, line: 16, column: 33)
!170 = distinct !DILexicalBlock(scope: !171, file: !154, line: 16, column: 3)
!171 = distinct !DILexicalBlock(scope: !153, file: !154, line: 16, column: 3)
!172 = !DILocalVariable(name: "temp", scope: !173, file: !154, line: 24, type: !64)
!173 = distinct !DILexicalBlock(scope: !153, file: !154, line: 23, column: 3)
!174 = !DILocation(line: 0, scope: !153, inlinedAt: !175)
!175 = distinct !DILocation(line: 93, column: 5, scope: !102)
!176 = !DILocation(line: 11, column: 19, scope: !153, inlinedAt: !175)
!177 = !DILocation(line: 11, column: 22, scope: !153, inlinedAt: !175)
!178 = !DILocation(line: 11, column: 30, scope: !153, inlinedAt: !175)
!179 = !DILocation(line: 11, column: 39, scope: !153, inlinedAt: !175)
!180 = !DILocation(line: 12, column: 19, scope: !153, inlinedAt: !175)
!181 = !DILocation(line: 16, column: 3, scope: !171, inlinedAt: !175)
!182 = !DILocation(line: 0, scope: !169, inlinedAt: !175)
!183 = !DILocation(line: 18, column: 11, scope: !169, inlinedAt: !175)
!184 = !DILocation(line: 18, column: 14, scope: !169, inlinedAt: !175)
!185 = !DILocation(line: 18, column: 21, scope: !169, inlinedAt: !175)
!186 = !DILocation(line: 18, column: 19, scope: !169, inlinedAt: !175)
!187 = !DILocation(line: 19, column: 10, scope: !169, inlinedAt: !175)
!188 = !DILocation(line: 19, column: 26, scope: !169, inlinedAt: !175)
!189 = !DILocation(line: 19, column: 24, scope: !169, inlinedAt: !175)
!190 = !DILocation(line: 19, column: 37, scope: !169, inlinedAt: !175)
!191 = !DILocation(line: 19, column: 35, scope: !169, inlinedAt: !175)
!192 = !DILocation(line: 19, column: 7, scope: !169, inlinedAt: !175)
!193 = !DILocation(line: 16, column: 29, scope: !170, inlinedAt: !175)
!194 = !DILocation(line: 16, column: 23, scope: !170, inlinedAt: !175)
!195 = distinct !{!195, !181, !196, !197}
!196 = !DILocation(line: 21, column: 3, scope: !171, inlinedAt: !175)
!197 = !{!"llvm.loop.mustprogress"}
!198 = !DILocation(line: 0, scope: !173, inlinedAt: !175)
!199 = !DILocation(line: 25, column: 10, scope: !173, inlinedAt: !175)
!200 = !DILocation(line: 25, column: 13, scope: !173, inlinedAt: !175)
!201 = !DILocation(line: 25, column: 18, scope: !173, inlinedAt: !175)
!202 = !DILocation(line: 26, column: 10, scope: !173, inlinedAt: !175)
!203 = !DILocation(line: 26, column: 25, scope: !173, inlinedAt: !175)
!204 = !DILocation(line: 26, column: 23, scope: !173, inlinedAt: !175)
!205 = !DILocation(line: 26, column: 34, scope: !173, inlinedAt: !175)
!206 = !DILocation(line: 26, column: 7, scope: !173, inlinedAt: !175)
!207 = !DILocation(line: 30, column: 33, scope: !153, inlinedAt: !175)
!208 = !DILocation(line: 30, column: 37, scope: !153, inlinedAt: !175)
!209 = !DILocation(line: 94, column: 39, scope: !102)
!210 = !DILocation(line: 94, column: 37, scope: !102)
!211 = !DILocation(line: 94, column: 21, scope: !102)
!212 = !DILocation(line: 95, column: 19, scope: !102)
!213 = !DILocation(line: 95, column: 37, scope: !102)
!214 = !DILocation(line: 95, column: 21, scope: !102)
!215 = !DILocation(line: 95, column: 13, scope: !102)
!216 = !DILocation(line: 95, column: 17, scope: !102)
!217 = !DILocation(line: 98, column: 15, scope: !80)
!218 = !{!144, !113, i64 0}
!219 = !DILocation(line: 100, column: 3, scope: !80)
!220 = !DISubprogram(name: "gsl_sf_angle_restrict_pos_e", scope: !221, file: !221, line: 141, type: !222, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!221 = !DIFile(filename: "../gsl/gsl_sf_trig.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "f99b323a60a985d2ebefccc97fb97d3a")
!222 = !DISubroutineType(types: !223)
!223 = !{!18, !63}
!224 = !DISubprogram(name: "log", scope: !225, file: !225, line: 104, type: !226, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!225 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!226 = !DISubroutineType(types: !227)
!227 = !{!64, !64}
!228 = distinct !DISubprogram(name: "gsl_sf_clausen", scope: !2, file: !2, line: 108, type: !229, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !231)
!229 = !DISubroutineType(types: !230)
!230 = !{!64, !94}
!231 = !{!232, !233, !234}
!232 = !DILocalVariable(name: "x", arg: 1, scope: !228, file: !2, line: 108, type: !94)
!233 = !DILocalVariable(name: "result", scope: !228, file: !2, line: 110, type: !84)
!234 = !DILocalVariable(name: "status", scope: !228, file: !2, line: 110, type: !18)
!235 = distinct !DIAssignID()
!236 = !DILocation(line: 0, scope: !228)
!237 = !DILocation(line: 110, column: 3, scope: !228)
!238 = !DILocation(line: 110, column: 3, scope: !239)
!239 = distinct !DILexicalBlock(scope: !228, file: !2, line: 110, column: 3)
!240 = !DILocation(line: 110, column: 3, scope: !241)
!241 = distinct !DILexicalBlock(scope: !242, file: !2, line: 110, column: 3)
!242 = distinct !DILexicalBlock(scope: !239, file: !2, line: 110, column: 3)
!243 = !DILocation(line: 111, column: 1, scope: !228)
!244 = !DISubprogram(name: "gsl_error", scope: !17, file: !17, line: 77, type: !245, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!245 = !DISubroutineType(types: !246)
!246 = !{null, !247, !247, !18, !18}
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
