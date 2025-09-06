; ModuleID = 'hyperg_2F0.ll'
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
  br i1 %6, label %7, label %19, !dbg !90

7:                                                ; preds = %4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #5, !dbg !91
  %8 = fdiv double -1.000000e+00, %2, !dbg !92
  %9 = tail call double @pow(double noundef %8, double noundef %0) #5, !dbg !93
  tail call void @llvm.dbg.value(metadata double %9, metadata !84, metadata !DIExpression()), !dbg !87
  %handler_result = call double @fAddHandlerDouble(double %0, double 1.000000e+00), !dbg !94
  %handler_result1 = call double @fSubHandlerDouble(double %handler_result, double %1), !dbg !95
  %10 = call i32 @gsl_sf_hyperg_U_e(double noundef %0, double noundef %handler_result1, double noundef %8, ptr noundef nonnull %5) #5, !dbg !95
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !85, metadata !DIExpression()), !dbg !87
  %11 = load double, ptr %5, align 8, !dbg !96, !tbaa !97
  %12 = fmul double %9, %11, !dbg !102
  store double %12, ptr %3, align 8, !dbg !103, !tbaa !97
  %13 = call double @llvm.fabs.f64(double %12), !dbg !104
  %14 = fmul double %13, 0x3CB0000000000000, !dbg !105
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !106
  %16 = load double, ptr %15, align 8, !dbg !106, !tbaa !107
  %17 = fmul double %9, %16, !dbg !108
  %handler_result2 = call double @fAddHandlerDouble(double %14, double %17), !dbg !109
  %18 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !109
  store double %handler_result2, ptr %18, align 8, !dbg !110, !tbaa !107
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #5, !dbg !111
  br label %24

19:                                               ; preds = %4
  %20 = fcmp oeq double %2, 0.000000e+00, !dbg !112
  %21 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !114
  br i1 %20, label %22, label %23, !dbg !115

22:                                               ; preds = %19
  store double 1.000000e+00, ptr %3, align 8, !dbg !116, !tbaa !97
  store double 0.000000e+00, ptr %21, align 8, !dbg !118, !tbaa !107
  br label %24, !dbg !119

23:                                               ; preds = %19
  store double 0x7FF8000000000000, ptr %3, align 8, !dbg !120, !tbaa !97
  store double 0x7FF8000000000000, ptr %21, align 8, !dbg !120, !tbaa !107
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 52, i32 noundef 1) #5, !dbg !123
  br label %24, !dbg !123

24:                                               ; preds = %23, %22, %7
  %25 = phi i32 [ %10, %7 ], [ 0, %22 ], [ 1, %23 ], !dbg !125
  ret i32 %25, !dbg !126
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !127 double @pow(double noundef, double noundef) local_unnamed_addr #2

declare !dbg !131 i32 @gsl_sf_hyperg_U_e(double noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare !dbg !133 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_hyperg_2F0(double noundef %0, double noundef %1, double noundef %2) local_unnamed_addr #0 !dbg !138 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !147
  tail call void @llvm.dbg.value(metadata double %0, metadata !142, metadata !DIExpression()), !dbg !148
  tail call void @llvm.dbg.value(metadata double %1, metadata !143, metadata !DIExpression()), !dbg !148
  tail call void @llvm.dbg.value(metadata double %2, metadata !144, metadata !DIExpression()), !dbg !148
  call void @llvm.dbg.assign(metadata i1 undef, metadata !81, metadata !DIExpression(), metadata !147, metadata ptr %4, metadata !DIExpression()), !dbg !149
  call void @llvm.dbg.value(metadata double %0, metadata !77, metadata !DIExpression()), !dbg !151
  call void @llvm.dbg.value(metadata double %1, metadata !78, metadata !DIExpression()), !dbg !151
  call void @llvm.dbg.value(metadata double %2, metadata !79, metadata !DIExpression()), !dbg !151
  call void @llvm.dbg.value(metadata ptr undef, metadata !80, metadata !DIExpression()), !dbg !151
  %5 = fcmp olt double %2, 0.000000e+00, !dbg !152
  br i1 %5, label %9, label %6, !dbg !153

6:                                                ; preds = %3
  %7 = fcmp oeq double %2, 0.000000e+00, !dbg !154
  br i1 %7, label %19, label %8, !dbg !155

8:                                                ; preds = %6
  tail call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !145, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !148
  tail call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !145, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !148
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 52, i32 noundef 1) #5, !dbg !156
  tail call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !145, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !148
  tail call void @llvm.dbg.value(metadata i32 1, metadata !146, metadata !DIExpression()), !dbg !148
  br label %16, !dbg !157

9:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #5, !dbg !158
  %10 = fdiv double -1.000000e+00, %2, !dbg !159
  %11 = tail call double @pow(double noundef %10, double noundef %0) #5, !dbg !160
  call void @llvm.dbg.value(metadata double %11, metadata !84, metadata !DIExpression()), !dbg !149
  %handler_result = call double @fAddHandlerDouble(double %0, double 1.000000e+00), !dbg !161
  %handler_result1 = call double @fSubHandlerDouble(double %handler_result, double %1), !dbg !162
  %12 = call i32 @gsl_sf_hyperg_U_e(double noundef %0, double noundef %handler_result1, double noundef %10, ptr noundef nonnull %4) #5, !dbg !162
  call void @llvm.dbg.value(metadata i32 %12, metadata !85, metadata !DIExpression()), !dbg !149
  %13 = load double, ptr %4, align 8, !dbg !163, !tbaa !97
  %14 = fmul double %11, %13, !dbg !164
  tail call void @llvm.dbg.value(metadata double %14, metadata !145, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !148
  tail call void @llvm.dbg.value(metadata double poison, metadata !145, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !148
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #5, !dbg !165
  tail call void @llvm.dbg.value(metadata double %14, metadata !145, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !148
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !146, metadata !DIExpression()), !dbg !148
  %15 = icmp eq i32 %12, 0, !dbg !166
  br i1 %15, label %19, label %16, !dbg !157

16:                                               ; preds = %9, %8
  %17 = phi i32 [ 1, %8 ], [ %12, %9 ]
  %18 = phi double [ 0x7FF8000000000000, %8 ], [ %14, %9 ]
  call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 62, i32 noundef %17) #5, !dbg !168
  br label %19, !dbg !168

19:                                               ; preds = %16, %9, %6
  %20 = phi double [ %14, %9 ], [ %18, %16 ], [ 1.000000e+00, %6 ]
  ret double %20, !dbg !171
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #4

declare double @fAddHandlerDouble(double, double)

declare double @fSubHandlerDouble(double, double)

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

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
!94 = !DILocation(line: 38, column: 44, scope: !82)
!95 = !DILocation(line: 38, column: 18, scope: !82)
!96 = !DILocation(line: 39, column: 27, scope: !82)
!97 = !{!98, !99, i64 0}
!98 = !{!"gsl_sf_result_struct", !99, i64 0, !99, i64 8}
!99 = !{!"double", !100, i64 0}
!100 = !{!"omnipotent char", !101, i64 0}
!101 = !{!"Simple C/C++ TBAA"}
!102 = !DILocation(line: 39, column: 23, scope: !82)
!103 = !DILocation(line: 39, column: 17, scope: !82)
!104 = !DILocation(line: 40, column: 37, scope: !82)
!105 = !DILocation(line: 40, column: 35, scope: !82)
!106 = !DILocation(line: 40, column: 65, scope: !82)
!107 = !{!98, !99, i64 8}
!108 = !DILocation(line: 40, column: 61, scope: !82)
!109 = !DILocation(line: 40, column: 13, scope: !82)
!110 = !DILocation(line: 40, column: 17, scope: !82)
!111 = !DILocation(line: 42, column: 3, scope: !83)
!112 = !DILocation(line: 43, column: 13, scope: !113)
!113 = distinct !DILexicalBlock(scope: !83, file: !2, line: 43, column: 11)
!114 = !DILocation(line: 0, scope: !113)
!115 = !DILocation(line: 43, column: 11, scope: !83)
!116 = !DILocation(line: 44, column: 17, scope: !117)
!117 = distinct !DILexicalBlock(scope: !113, file: !2, line: 43, column: 21)
!118 = !DILocation(line: 45, column: 17, scope: !117)
!119 = !DILocation(line: 46, column: 5, scope: !117)
!120 = !DILocation(line: 52, column: 5, scope: !121)
!121 = distinct !DILexicalBlock(scope: !122, file: !2, line: 52, column: 5)
!122 = distinct !DILexicalBlock(scope: !113, file: !2, line: 48, column: 8)
!123 = !DILocation(line: 52, column: 5, scope: !124)
!124 = distinct !DILexicalBlock(scope: !121, file: !2, line: 52, column: 5)
!125 = !DILocation(line: 0, scope: !83)
!126 = !DILocation(line: 54, column: 1, scope: !64)
!127 = !DISubprogram(name: "pow", scope: !128, file: !128, line: 140, type: !129, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!128 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!129 = !DISubroutineType(types: !130)
!130 = !{!68, !68, !68}
!131 = !DISubprogram(name: "gsl_sf_hyperg_U_e", scope: !132, file: !132, line: 91, type: !65, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!132 = !DIFile(filename: "../gsl/gsl_sf_hyperg.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "6a7ad80bd86b12c428cf1476c4b61a8a")
!133 = !DISubprogram(name: "gsl_error", scope: !17, file: !17, line: 77, type: !134, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!134 = !DISubroutineType(types: !135)
!135 = !{null, !136, !136, !18, !18}
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!138 = distinct !DISubprogram(name: "gsl_sf_hyperg_2F0", scope: !2, file: !2, line: 60, type: !139, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !141)
!139 = !DISubroutineType(types: !140)
!140 = !{!68, !67, !67, !67}
!141 = !{!142, !143, !144, !145, !146}
!142 = !DILocalVariable(name: "a", arg: 1, scope: !138, file: !2, line: 60, type: !67)
!143 = !DILocalVariable(name: "b", arg: 2, scope: !138, file: !2, line: 60, type: !67)
!144 = !DILocalVariable(name: "x", arg: 3, scope: !138, file: !2, line: 60, type: !67)
!145 = !DILocalVariable(name: "result", scope: !138, file: !2, line: 62, type: !70)
!146 = !DILocalVariable(name: "status", scope: !138, file: !2, line: 62, type: !18)
!147 = distinct !DIAssignID()
!148 = !DILocation(line: 0, scope: !138)
!149 = !DILocation(line: 0, scope: !82, inlinedAt: !150)
!150 = distinct !DILocation(line: 62, column: 3, scope: !138)
!151 = !DILocation(line: 0, scope: !64, inlinedAt: !150)
!152 = !DILocation(line: 33, column: 8, scope: !83, inlinedAt: !150)
!153 = !DILocation(line: 33, column: 6, scope: !64, inlinedAt: !150)
!154 = !DILocation(line: 43, column: 13, scope: !113, inlinedAt: !150)
!155 = !DILocation(line: 43, column: 11, scope: !83, inlinedAt: !150)
!156 = !DILocation(line: 52, column: 5, scope: !124, inlinedAt: !150)
!157 = !DILocation(line: 62, column: 3, scope: !138)
!158 = !DILocation(line: 36, column: 5, scope: !82, inlinedAt: !150)
!159 = !DILocation(line: 37, column: 26, scope: !82, inlinedAt: !150)
!160 = !DILocation(line: 37, column: 18, scope: !82, inlinedAt: !150)
!161 = !DILocation(line: 38, column: 44, scope: !82, inlinedAt: !150)
!162 = !DILocation(line: 38, column: 18, scope: !82, inlinedAt: !150)
!163 = !DILocation(line: 39, column: 27, scope: !82, inlinedAt: !150)
!164 = !DILocation(line: 39, column: 23, scope: !82, inlinedAt: !150)
!165 = !DILocation(line: 42, column: 3, scope: !83, inlinedAt: !150)
!166 = !DILocation(line: 62, column: 3, scope: !167)
!167 = distinct !DILexicalBlock(scope: !138, file: !2, line: 62, column: 3)
!168 = !DILocation(line: 62, column: 3, scope: !169)
!169 = distinct !DILexicalBlock(scope: !170, file: !2, line: 62, column: 3)
!170 = distinct !DILexicalBlock(scope: !167, file: !2, line: 62, column: 3)
!171 = !DILocation(line: 63, column: 1, scope: !138)
