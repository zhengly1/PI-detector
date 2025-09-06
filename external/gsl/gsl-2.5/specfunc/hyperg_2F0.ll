; ModuleID = 'hyperg_2F0.c'
source_filename = "hyperg_2F0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [13 x i8] c"domain error\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [13 x i8] c"hyperg_2F0.c\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [38 x i8] c"gsl_sf_hyperg_2F0_e(a, b, x, &result)\00", align 1, !dbg !9

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_hyperg_2F0_e(double noundef %0, double noundef %1, double noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 !dbg !64 {
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !86
  call void @llvm.dbg.assign(metadata i1 undef, metadata !81, metadata !DIExpression(), metadata !86, metadata ptr %5, metadata !DIExpression()), !dbg !87
  tail call void @llvm.dbg.value(metadata double %0, metadata !77, metadata !DIExpression()), !dbg !88
  tail call void @llvm.dbg.value(metadata double %1, metadata !78, metadata !DIExpression()), !dbg !88
  tail call void @llvm.dbg.value(metadata double %2, metadata !79, metadata !DIExpression()), !dbg !88
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !80, metadata !DIExpression()), !dbg !88
  %6 = fcmp olt double %2, 0.000000e+00, !dbg !89
  br i1 %6, label %7, label %22, !dbg !90

7:                                                ; preds = %4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #6, !dbg !91
  %8 = fdiv double -1.000000e+00, %2, !dbg !92
  %9 = tail call double @pow(double noundef %8, double noundef %0) #6, !dbg !93
  tail call void @llvm.dbg.value(metadata double %9, metadata !84, metadata !DIExpression()), !dbg !87
  %10 = fadd double %0, 1.000000e+00, !dbg !94
  %11 = fsub double %10, %1, !dbg !95
  %12 = call i32 @gsl_sf_hyperg_U_e(double noundef %0, double noundef %11, double noundef %8, ptr noundef nonnull %5) #6, !dbg !96
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !85, metadata !DIExpression()), !dbg !87
  %13 = load double, ptr %5, align 8, !dbg !97, !tbaa !98
  %14 = fmul double %9, %13, !dbg !103
  store double %14, ptr %3, align 8, !dbg !104, !tbaa !98
  %15 = call double @llvm.fabs.f64(double %14), !dbg !105
  %16 = fmul double %15, 0x3CB0000000000000, !dbg !106
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !107
  %18 = load double, ptr %17, align 8, !dbg !107, !tbaa !108
  %19 = fmul double %9, %18, !dbg !109
  %20 = fadd double %16, %19, !dbg !110
  %21 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !111
  store double %20, ptr %21, align 8, !dbg !112, !tbaa !108
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #6, !dbg !113
  br label %27

22:                                               ; preds = %4
  %23 = fcmp oeq double %2, 0.000000e+00, !dbg !114
  %24 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !116
  br i1 %23, label %25, label %26, !dbg !117

25:                                               ; preds = %22
  store double 1.000000e+00, ptr %3, align 8, !dbg !118, !tbaa !98
  store double 0.000000e+00, ptr %24, align 8, !dbg !120, !tbaa !108
  br label %27, !dbg !121

26:                                               ; preds = %22
  store double 0x7FF8000000000000, ptr %3, align 8, !dbg !122, !tbaa !98
  store double 0x7FF8000000000000, ptr %24, align 8, !dbg !122, !tbaa !108
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 52, i32 noundef 1) #6, !dbg !125
  br label %27, !dbg !125

27:                                               ; preds = %7, %25, %26
  %28 = phi i32 [ %12, %7 ], [ 0, %25 ], [ 1, %26 ], !dbg !127
  ret i32 %28, !dbg !128
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !129 double @pow(double noundef, double noundef) local_unnamed_addr #2

declare !dbg !133 i32 @gsl_sf_hyperg_U_e(double noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare !dbg !135 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_hyperg_2F0(double noundef %0, double noundef %1, double noundef %2) local_unnamed_addr #0 !dbg !140 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !149
  tail call void @llvm.dbg.value(metadata double %0, metadata !144, metadata !DIExpression()), !dbg !150
  tail call void @llvm.dbg.value(metadata double %1, metadata !145, metadata !DIExpression()), !dbg !150
  tail call void @llvm.dbg.value(metadata double %2, metadata !146, metadata !DIExpression()), !dbg !150
  call void @llvm.dbg.assign(metadata i1 undef, metadata !81, metadata !DIExpression(), metadata !149, metadata ptr %4, metadata !DIExpression()), !dbg !151
  call void @llvm.dbg.value(metadata double %0, metadata !77, metadata !DIExpression()), !dbg !153
  call void @llvm.dbg.value(metadata double %1, metadata !78, metadata !DIExpression()), !dbg !153
  call void @llvm.dbg.value(metadata double %2, metadata !79, metadata !DIExpression()), !dbg !153
  call void @llvm.dbg.value(metadata ptr undef, metadata !80, metadata !DIExpression()), !dbg !153
  %5 = fcmp olt double %2, 0.000000e+00, !dbg !154
  br i1 %5, label %9, label %6, !dbg !155

6:                                                ; preds = %3
  %7 = fcmp oeq double %2, 0.000000e+00, !dbg !156
  br i1 %7, label %21, label %8, !dbg !157

8:                                                ; preds = %6
  tail call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !147, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !150
  tail call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !147, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !150
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 52, i32 noundef 1) #6, !dbg !158
  tail call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !147, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !150
  tail call void @llvm.dbg.value(metadata i32 1, metadata !148, metadata !DIExpression()), !dbg !150
  br label %18, !dbg !159

9:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #6, !dbg !160
  %10 = fdiv double -1.000000e+00, %2, !dbg !161
  %11 = tail call double @pow(double noundef %10, double noundef %0) #6, !dbg !162
  call void @llvm.dbg.value(metadata double %11, metadata !84, metadata !DIExpression()), !dbg !151
  %12 = fadd double %0, 1.000000e+00, !dbg !163
  %13 = fsub double %12, %1, !dbg !164
  %14 = call i32 @gsl_sf_hyperg_U_e(double noundef %0, double noundef %13, double noundef %10, ptr noundef nonnull %4) #6, !dbg !165
  call void @llvm.dbg.value(metadata i32 %14, metadata !85, metadata !DIExpression()), !dbg !151
  %15 = load double, ptr %4, align 8, !dbg !166, !tbaa !98
  %16 = fmul double %11, %15, !dbg !167
  tail call void @llvm.dbg.value(metadata double %16, metadata !147, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !150
  tail call void @llvm.dbg.value(metadata double poison, metadata !147, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !150
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #6, !dbg !168
  tail call void @llvm.dbg.value(metadata double %16, metadata !147, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !150
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !148, metadata !DIExpression()), !dbg !150
  %17 = icmp eq i32 %14, 0, !dbg !169
  br i1 %17, label %21, label %18, !dbg !159

18:                                               ; preds = %8, %9
  %19 = phi i32 [ 1, %8 ], [ %14, %9 ]
  %20 = phi double [ 0x7FF8000000000000, %8 ], [ %16, %9 ]
  call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 62, i32 noundef %19) #6, !dbg !171
  br label %21, !dbg !171

21:                                               ; preds = %6, %9, %18
  %22 = phi double [ %16, %9 ], [ %20, %18 ], [ 1.000000e+00, %6 ]
  ret double %22, !dbg !174
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!14}
!llvm.module.flags = !{!56, !57, !58, !59, !60, !61, !62}
!llvm.ident = !{!63}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 52, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "hyperg_2F0.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "91d07032dc31eda9cf6d53972e1ecb4d")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 13)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 52, type: !3, isLocal: true, isDefinition: true)
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(scope: null, file: !2, line: 62, type: !11, isLocal: true, isDefinition: true)
!11 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 304, elements: !12)
!12 = !{!13}
!13 = !DISubrange(count: 38)
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
!55 = !{!0, !7, !9}
!56 = !{i32 7, !"Dwarf Version", i32 5}
!57 = !{i32 2, !"Debug Info Version", i32 3}
!58 = !{i32 1, !"wchar_size", i32 4}
!59 = !{i32 8, !"PIC Level", i32 2}
!60 = !{i32 7, !"PIE Level", i32 2}
!61 = !{i32 7, !"uwtable", i32 2}
!62 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!63 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!64 = distinct !DISubprogram(name: "gsl_sf_hyperg_2F0_e", scope: !2, file: !2, line: 31, type: !65, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !76)
!65 = !DISubroutineType(types: !66)
!66 = !{!18, !67, !67, !67, !69}
!67 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !68)
!68 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !71, line: 41, baseType: !72)
!71 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "5b52deed011f1ffd07977b19a388d251")
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !71, line: 37, size: 128, elements: !73)
!73 = !{!74, !75}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !72, file: !71, line: 38, baseType: !68, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !72, file: !71, line: 39, baseType: !68, size: 64, offset: 64)
!76 = !{!77, !78, !79, !80, !81, !84, !85}
!77 = !DILocalVariable(name: "a", arg: 1, scope: !64, file: !2, line: 31, type: !67)
!78 = !DILocalVariable(name: "b", arg: 2, scope: !64, file: !2, line: 31, type: !67)
!79 = !DILocalVariable(name: "x", arg: 3, scope: !64, file: !2, line: 31, type: !67)
!80 = !DILocalVariable(name: "result", arg: 4, scope: !64, file: !2, line: 31, type: !69)
!81 = !DILocalVariable(name: "U", scope: !82, file: !2, line: 36, type: !70)
!82 = distinct !DILexicalBlock(scope: !83, file: !2, line: 33, column: 15)
!83 = distinct !DILexicalBlock(scope: !64, file: !2, line: 33, column: 6)
!84 = !DILocalVariable(name: "pre", scope: !82, file: !2, line: 37, type: !68)
!85 = !DILocalVariable(name: "stat_U", scope: !82, file: !2, line: 38, type: !18)
!86 = distinct !DIAssignID()
!87 = !DILocation(line: 0, scope: !82)
!88 = !DILocation(line: 0, scope: !64)
!89 = !DILocation(line: 33, column: 8, scope: !83)
!90 = !DILocation(line: 33, column: 6, scope: !64)
!91 = !DILocation(line: 36, column: 5, scope: !82)
!92 = !DILocation(line: 37, column: 26, scope: !82)
!93 = !DILocation(line: 37, column: 18, scope: !82)
!94 = !DILocation(line: 38, column: 42, scope: !82)
!95 = !DILocation(line: 38, column: 44, scope: !82)
!96 = !DILocation(line: 38, column: 18, scope: !82)
!97 = !DILocation(line: 39, column: 27, scope: !82)
!98 = !{!99, !100, i64 0}
!99 = !{!"gsl_sf_result_struct", !100, i64 0, !100, i64 8}
!100 = !{!"double", !101, i64 0}
!101 = !{!"omnipotent char", !102, i64 0}
!102 = !{!"Simple C/C++ TBAA"}
!103 = !DILocation(line: 39, column: 23, scope: !82)
!104 = !DILocation(line: 39, column: 17, scope: !82)
!105 = !DILocation(line: 40, column: 37, scope: !82)
!106 = !DILocation(line: 40, column: 35, scope: !82)
!107 = !DILocation(line: 40, column: 65, scope: !82)
!108 = !{!99, !100, i64 8}
!109 = !DILocation(line: 40, column: 61, scope: !82)
!110 = !DILocation(line: 40, column: 55, scope: !82)
!111 = !DILocation(line: 40, column: 13, scope: !82)
!112 = !DILocation(line: 40, column: 17, scope: !82)
!113 = !DILocation(line: 42, column: 3, scope: !83)
!114 = !DILocation(line: 43, column: 13, scope: !115)
!115 = distinct !DILexicalBlock(scope: !83, file: !2, line: 43, column: 11)
!116 = !DILocation(line: 0, scope: !115)
!117 = !DILocation(line: 43, column: 11, scope: !83)
!118 = !DILocation(line: 44, column: 17, scope: !119)
!119 = distinct !DILexicalBlock(scope: !115, file: !2, line: 43, column: 21)
!120 = !DILocation(line: 45, column: 17, scope: !119)
!121 = !DILocation(line: 46, column: 5, scope: !119)
!122 = !DILocation(line: 52, column: 5, scope: !123)
!123 = distinct !DILexicalBlock(scope: !124, file: !2, line: 52, column: 5)
!124 = distinct !DILexicalBlock(scope: !115, file: !2, line: 48, column: 8)
!125 = !DILocation(line: 52, column: 5, scope: !126)
!126 = distinct !DILexicalBlock(scope: !123, file: !2, line: 52, column: 5)
!127 = !DILocation(line: 0, scope: !83)
!128 = !DILocation(line: 54, column: 1, scope: !64)
!129 = !DISubprogram(name: "pow", scope: !130, file: !130, line: 140, type: !131, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!130 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!131 = !DISubroutineType(types: !132)
!132 = !{!68, !68, !68}
!133 = !DISubprogram(name: "gsl_sf_hyperg_U_e", scope: !134, file: !134, line: 91, type: !65, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!134 = !DIFile(filename: "../gsl/gsl_sf_hyperg.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "6a7ad80bd86b12c428cf1476c4b61a8a")
!135 = !DISubprogram(name: "gsl_error", scope: !17, file: !17, line: 77, type: !136, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!136 = !DISubroutineType(types: !137)
!137 = !{null, !138, !138, !18, !18}
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!140 = distinct !DISubprogram(name: "gsl_sf_hyperg_2F0", scope: !2, file: !2, line: 60, type: !141, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !143)
!141 = !DISubroutineType(types: !142)
!142 = !{!68, !67, !67, !67}
!143 = !{!144, !145, !146, !147, !148}
!144 = !DILocalVariable(name: "a", arg: 1, scope: !140, file: !2, line: 60, type: !67)
!145 = !DILocalVariable(name: "b", arg: 2, scope: !140, file: !2, line: 60, type: !67)
!146 = !DILocalVariable(name: "x", arg: 3, scope: !140, file: !2, line: 60, type: !67)
!147 = !DILocalVariable(name: "result", scope: !140, file: !2, line: 62, type: !70)
!148 = !DILocalVariable(name: "status", scope: !140, file: !2, line: 62, type: !18)
!149 = distinct !DIAssignID()
!150 = !DILocation(line: 0, scope: !140)
!151 = !DILocation(line: 0, scope: !82, inlinedAt: !152)
!152 = distinct !DILocation(line: 62, column: 3, scope: !140)
!153 = !DILocation(line: 0, scope: !64, inlinedAt: !152)
!154 = !DILocation(line: 33, column: 8, scope: !83, inlinedAt: !152)
!155 = !DILocation(line: 33, column: 6, scope: !64, inlinedAt: !152)
!156 = !DILocation(line: 43, column: 13, scope: !115, inlinedAt: !152)
!157 = !DILocation(line: 43, column: 11, scope: !83, inlinedAt: !152)
!158 = !DILocation(line: 52, column: 5, scope: !126, inlinedAt: !152)
!159 = !DILocation(line: 62, column: 3, scope: !140)
!160 = !DILocation(line: 36, column: 5, scope: !82, inlinedAt: !152)
!161 = !DILocation(line: 37, column: 26, scope: !82, inlinedAt: !152)
!162 = !DILocation(line: 37, column: 18, scope: !82, inlinedAt: !152)
!163 = !DILocation(line: 38, column: 42, scope: !82, inlinedAt: !152)
!164 = !DILocation(line: 38, column: 44, scope: !82, inlinedAt: !152)
!165 = !DILocation(line: 38, column: 18, scope: !82, inlinedAt: !152)
!166 = !DILocation(line: 39, column: 27, scope: !82, inlinedAt: !152)
!167 = !DILocation(line: 39, column: 23, scope: !82, inlinedAt: !152)
!168 = !DILocation(line: 42, column: 3, scope: !83, inlinedAt: !152)
!169 = !DILocation(line: 62, column: 3, scope: !170)
!170 = distinct !DILexicalBlock(scope: !140, file: !2, line: 62, column: 3)
!171 = !DILocation(line: 62, column: 3, scope: !172)
!172 = distinct !DILexicalBlock(scope: !173, file: !2, line: 62, column: 3)
!173 = distinct !DILexicalBlock(scope: !170, file: !2, line: 62, column: 3)
!174 = !DILocation(line: 63, column: 1, scope: !140)
