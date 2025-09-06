; ModuleID = 'pow_int.c'
source_filename = "pow_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [9 x i8] c"overflow\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [10 x i8] c"pow_int.c\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [32 x i8] c"gsl_sf_pow_int_e(x, n, &result)\00", align 1, !dbg !12

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_pow_int_e(double noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 !dbg !67 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !79, metadata !DIExpression()), !dbg !89
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !80, metadata !DIExpression()), !dbg !89
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !81, metadata !DIExpression()), !dbg !89
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !82, metadata !DIExpression()), !dbg !89
  tail call void @llvm.dbg.value(metadata i32 0, metadata !83, metadata !DIExpression()), !dbg !89
  %4 = icmp slt i32 %1, 0, !dbg !90
  br i1 %4, label %8, label %5, !dbg !91

5:                                                ; preds = %8, %3
  %6 = phi i32 [ %9, %8 ], [ %1, %3 ]
  %7 = phi double [ %11, %8 ], [ %0, %3 ]
  br label %18, !dbg !92

8:                                                ; preds = %3
  %9 = sub nsw i32 0, %1, !dbg !93
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !80, metadata !DIExpression()), !dbg !89
  %10 = fcmp oeq double %0, 0.000000e+00, !dbg !94
  %11 = fdiv double 1.000000e+00, %0, !dbg !95
  br i1 %10, label %12, label %5, !dbg !96

12:                                               ; preds = %8
  tail call void @llvm.dbg.value(metadata double %11, metadata !84, metadata !DIExpression()), !dbg !97
  %13 = and i32 %9, 1, !dbg !98
  %14 = icmp eq i32 %13, 0, !dbg !98
  %15 = select i1 %14, double %11, double 1.000000e+00, !dbg !99
  %16 = fmul double %11, %15, !dbg !99
  store double %16, ptr %2, align 8, !dbg !100, !tbaa !101
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !106
  store double 0x7FF0000000000000, ptr %17, align 8, !dbg !107, !tbaa !108
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 45, i32 noundef 16) #4, !dbg !109
  br label %38

18:                                               ; preds = %5, %18
  %19 = phi i32 [ %27, %18 ], [ %6, %5 ], !dbg !89
  %20 = phi double [ %28, %18 ], [ %7, %5 ], !dbg !89
  %21 = phi double [ %26, %18 ], [ 1.000000e+00, %5 ], !dbg !89
  %22 = phi i32 [ %29, %18 ], [ 0, %5 ], !dbg !89
  tail call void @llvm.dbg.value(metadata i32 %22, metadata !83, metadata !DIExpression()), !dbg !89
  tail call void @llvm.dbg.value(metadata double %21, metadata !82, metadata !DIExpression()), !dbg !89
  tail call void @llvm.dbg.value(metadata double %20, metadata !79, metadata !DIExpression()), !dbg !89
  tail call void @llvm.dbg.value(metadata i32 %19, metadata !80, metadata !DIExpression()), !dbg !89
  %23 = and i32 %19, 1, !dbg !111
  %24 = icmp eq i32 %23, 0, !dbg !111
  %25 = select i1 %24, double 1.000000e+00, double %20, !dbg !114
  %26 = fmul double %21, %25, !dbg !114
  tail call void @llvm.dbg.value(metadata double %26, metadata !82, metadata !DIExpression()), !dbg !89
  %27 = ashr i32 %19, 1, !dbg !115
  tail call void @llvm.dbg.value(metadata i32 %27, metadata !80, metadata !DIExpression()), !dbg !89
  %28 = fmul double %20, %20, !dbg !116
  tail call void @llvm.dbg.value(metadata double %28, metadata !79, metadata !DIExpression()), !dbg !89
  %29 = add nuw nsw i32 %22, 1, !dbg !117
  tail call void @llvm.dbg.value(metadata i32 %29, metadata !83, metadata !DIExpression()), !dbg !89
  %30 = icmp ult i32 %19, 2, !dbg !118
  br i1 %30, label %31, label %18, !dbg !118, !llvm.loop !119

31:                                               ; preds = %18
  store double %26, ptr %2, align 8, !dbg !122, !tbaa !101
  %32 = sitofp i32 %29 to double, !dbg !123
  %33 = fadd double %32, 1.000000e+00, !dbg !124
  %34 = fmul double %33, 0x3CC0000000000000, !dbg !125
  %35 = tail call double @llvm.fabs.f64(double %26), !dbg !126
  %36 = fmul double %35, %34, !dbg !127
  %37 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !128
  store double %36, ptr %37, align 8, !dbg !129, !tbaa !108
  br label %38, !dbg !130

38:                                               ; preds = %12, %31
  %39 = phi i32 [ 0, %31 ], [ 16, %12 ], !dbg !89
  ret i32 %39, !dbg !131
}

declare !dbg !132 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #2

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_pow_int(double noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !137 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !143, metadata !DIExpression()), !dbg !147
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !144, metadata !DIExpression()), !dbg !147
  call void @llvm.dbg.value(metadata double %0, metadata !79, metadata !DIExpression()), !dbg !148
  call void @llvm.dbg.value(metadata i32 %1, metadata !80, metadata !DIExpression()), !dbg !148
  call void @llvm.dbg.value(metadata ptr undef, metadata !81, metadata !DIExpression()), !dbg !148
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !82, metadata !DIExpression()), !dbg !148
  call void @llvm.dbg.value(metadata i32 0, metadata !83, metadata !DIExpression()), !dbg !148
  %3 = icmp slt i32 %1, 0, !dbg !150
  br i1 %3, label %4, label %8, !dbg !151

4:                                                ; preds = %2
  %5 = sub nsw i32 0, %1, !dbg !152
  call void @llvm.dbg.value(metadata i32 %5, metadata !80, metadata !DIExpression()), !dbg !148
  %6 = fcmp oeq double %0, 0.000000e+00, !dbg !153
  %7 = fdiv double 1.000000e+00, %0, !dbg !154
  br i1 %6, label %22, label %8, !dbg !155

8:                                                ; preds = %4, %2
  %9 = phi i32 [ %5, %4 ], [ %1, %2 ]
  %10 = phi double [ %7, %4 ], [ %0, %2 ]
  br label %11, !dbg !156

11:                                               ; preds = %8, %11
  %12 = phi i32 [ %19, %11 ], [ %9, %8 ], !dbg !148
  %13 = phi double [ %20, %11 ], [ %10, %8 ], !dbg !148
  %14 = phi double [ %18, %11 ], [ 1.000000e+00, %8 ], !dbg !148
  call void @llvm.dbg.value(metadata i32 poison, metadata !83, metadata !DIExpression()), !dbg !148
  call void @llvm.dbg.value(metadata double %14, metadata !82, metadata !DIExpression()), !dbg !148
  call void @llvm.dbg.value(metadata double %13, metadata !79, metadata !DIExpression()), !dbg !148
  call void @llvm.dbg.value(metadata i32 %12, metadata !80, metadata !DIExpression()), !dbg !148
  %15 = and i32 %12, 1, !dbg !157
  %16 = icmp eq i32 %15, 0, !dbg !157
  %17 = select i1 %16, double 1.000000e+00, double %13, !dbg !158
  %18 = fmul double %14, %17, !dbg !158
  call void @llvm.dbg.value(metadata double %18, metadata !82, metadata !DIExpression()), !dbg !148
  %19 = ashr i32 %12, 1, !dbg !159
  call void @llvm.dbg.value(metadata i32 %19, metadata !80, metadata !DIExpression()), !dbg !148
  %20 = fmul double %13, %13, !dbg !160
  call void @llvm.dbg.value(metadata double %20, metadata !79, metadata !DIExpression()), !dbg !148
  call void @llvm.dbg.value(metadata i32 poison, metadata !83, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !148
  %21 = icmp ult i32 %12, 2, !dbg !161
  br i1 %21, label %27, label %11, !dbg !161, !llvm.loop !162

22:                                               ; preds = %4
  call void @llvm.dbg.value(metadata double %7, metadata !84, metadata !DIExpression()), !dbg !164
  %23 = and i32 %5, 1, !dbg !165
  %24 = icmp eq i32 %23, 0, !dbg !165
  %25 = select i1 %24, double %7, double 1.000000e+00, !dbg !166
  %26 = fmul double %7, %25, !dbg !166
  tail call void @llvm.dbg.value(metadata double %26, metadata !145, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !147
  tail call void @llvm.dbg.value(metadata double 0x7FF0000000000000, metadata !145, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !147
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 45, i32 noundef 16) #4, !dbg !167
  tail call void @llvm.dbg.value(metadata double %26, metadata !145, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !147
  tail call void @llvm.dbg.value(metadata i32 16, metadata !146, metadata !DIExpression()), !dbg !147
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 73, i32 noundef 16) #4, !dbg !168
  br label %27, !dbg !168

27:                                               ; preds = %11, %22
  %28 = phi double [ %26, %22 ], [ %18, %11 ]
  ret double %28, !dbg !172
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!17}
!llvm.module.flags = !{!59, !60, !61, !62, !63, !64, !65}
!llvm.ident = !{!66}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 45, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "pow_int.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "8faea9370fff583afd3d6fe0cc0780b8")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 9)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 45, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 10)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 73, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 32)
!17 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !18, globals: !58, splitDebugInlining: false, nameTableKind: None)
!18 = !{!19}
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !20, line: 39, baseType: !21, size: 32, elements: !22)
!20 = !DIFile(filename: "../gsl/gsl_errno.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "3ff14ff6df19564f3d7caf1e8e622626")
!21 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!22 = !{!23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57}
!23 = !DIEnumerator(name: "GSL_SUCCESS", value: 0)
!24 = !DIEnumerator(name: "GSL_FAILURE", value: -1)
!25 = !DIEnumerator(name: "GSL_CONTINUE", value: -2)
!26 = !DIEnumerator(name: "GSL_EDOM", value: 1)
!27 = !DIEnumerator(name: "GSL_ERANGE", value: 2)
!28 = !DIEnumerator(name: "GSL_EFAULT", value: 3)
!29 = !DIEnumerator(name: "GSL_EINVAL", value: 4)
!30 = !DIEnumerator(name: "GSL_EFAILED", value: 5)
!31 = !DIEnumerator(name: "GSL_EFACTOR", value: 6)
!32 = !DIEnumerator(name: "GSL_ESANITY", value: 7)
!33 = !DIEnumerator(name: "GSL_ENOMEM", value: 8)
!34 = !DIEnumerator(name: "GSL_EBADFUNC", value: 9)
!35 = !DIEnumerator(name: "GSL_ERUNAWAY", value: 10)
!36 = !DIEnumerator(name: "GSL_EMAXITER", value: 11)
!37 = !DIEnumerator(name: "GSL_EZERODIV", value: 12)
!38 = !DIEnumerator(name: "GSL_EBADTOL", value: 13)
!39 = !DIEnumerator(name: "GSL_ETOL", value: 14)
!40 = !DIEnumerator(name: "GSL_EUNDRFLW", value: 15)
!41 = !DIEnumerator(name: "GSL_EOVRFLW", value: 16)
!42 = !DIEnumerator(name: "GSL_ELOSS", value: 17)
!43 = !DIEnumerator(name: "GSL_EROUND", value: 18)
!44 = !DIEnumerator(name: "GSL_EBADLEN", value: 19)
!45 = !DIEnumerator(name: "GSL_ENOTSQR", value: 20)
!46 = !DIEnumerator(name: "GSL_ESING", value: 21)
!47 = !DIEnumerator(name: "GSL_EDIVERGE", value: 22)
!48 = !DIEnumerator(name: "GSL_EUNSUP", value: 23)
!49 = !DIEnumerator(name: "GSL_EUNIMPL", value: 24)
!50 = !DIEnumerator(name: "GSL_ECACHE", value: 25)
!51 = !DIEnumerator(name: "GSL_ETABLE", value: 26)
!52 = !DIEnumerator(name: "GSL_ENOPROG", value: 27)
!53 = !DIEnumerator(name: "GSL_ENOPROGJ", value: 28)
!54 = !DIEnumerator(name: "GSL_ETOLF", value: 29)
!55 = !DIEnumerator(name: "GSL_ETOLX", value: 30)
!56 = !DIEnumerator(name: "GSL_ETOLG", value: 31)
!57 = !DIEnumerator(name: "GSL_EOF", value: 32)
!58 = !{!0, !7, !12}
!59 = !{i32 7, !"Dwarf Version", i32 5}
!60 = !{i32 2, !"Debug Info Version", i32 3}
!61 = !{i32 1, !"wchar_size", i32 4}
!62 = !{i32 8, !"PIC Level", i32 2}
!63 = !{i32 7, !"PIE Level", i32 2}
!64 = !{i32 7, !"uwtable", i32 2}
!65 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!66 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!67 = distinct !DISubprogram(name: "gsl_sf_pow_int_e", scope: !2, file: !2, line: 30, type: !68, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !78)
!68 = !DISubroutineType(types: !69)
!69 = !{!21, !70, !21, !71}
!70 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !73, line: 41, baseType: !74)
!73 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "5b52deed011f1ffd07977b19a388d251")
!74 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !73, line: 37, size: 128, elements: !75)
!75 = !{!76, !77}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !74, file: !73, line: 38, baseType: !70, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !74, file: !73, line: 39, baseType: !70, size: 64, offset: 64)
!78 = !{!79, !80, !81, !82, !83, !84}
!79 = !DILocalVariable(name: "x", arg: 1, scope: !67, file: !2, line: 30, type: !70)
!80 = !DILocalVariable(name: "n", arg: 2, scope: !67, file: !2, line: 30, type: !21)
!81 = !DILocalVariable(name: "result", arg: 3, scope: !67, file: !2, line: 30, type: !71)
!82 = !DILocalVariable(name: "value", scope: !67, file: !2, line: 32, type: !70)
!83 = !DILocalVariable(name: "count", scope: !67, file: !2, line: 33, type: !21)
!84 = !DILocalVariable(name: "u", scope: !85, file: !2, line: 42, type: !70)
!85 = distinct !DILexicalBlock(scope: !86, file: !2, line: 41, column: 18)
!86 = distinct !DILexicalBlock(scope: !87, file: !2, line: 41, column: 8)
!87 = distinct !DILexicalBlock(scope: !88, file: !2, line: 38, column: 13)
!88 = distinct !DILexicalBlock(scope: !67, file: !2, line: 38, column: 6)
!89 = !DILocation(line: 0, scope: !67)
!90 = !DILocation(line: 38, column: 8, scope: !88)
!91 = !DILocation(line: 38, column: 6, scope: !67)
!92 = !DILocation(line: 54, column: 3, scope: !67)
!93 = !DILocation(line: 39, column: 9, scope: !87)
!94 = !DILocation(line: 41, column: 10, scope: !86)
!95 = !DILocation(line: 0, scope: !87)
!96 = !DILocation(line: 41, column: 8, scope: !87)
!97 = !DILocation(line: 0, scope: !85)
!98 = !DILocation(line: 43, column: 24, scope: !85)
!99 = !DILocation(line: 43, column: 21, scope: !85)
!100 = !DILocation(line: 43, column: 19, scope: !85)
!101 = !{!102, !103, i64 0}
!102 = !{!"gsl_sf_result_struct", !103, i64 0, !103, i64 8}
!103 = !{!"double", !104, i64 0}
!104 = !{!"omnipotent char", !105, i64 0}
!105 = !{!"Simple C/C++ TBAA"}
!106 = !DILocation(line: 44, column: 15, scope: !85)
!107 = !DILocation(line: 44, column: 19, scope: !85)
!108 = !{!102, !103, i64 8}
!109 = !DILocation(line: 45, column: 7, scope: !110)
!110 = distinct !DILexicalBlock(scope: !85, file: !2, line: 45, column: 7)
!111 = !DILocation(line: 55, column: 9, scope: !112)
!112 = distinct !DILexicalBlock(scope: !113, file: !2, line: 55, column: 9)
!113 = distinct !DILexicalBlock(scope: !67, file: !2, line: 54, column: 6)
!114 = !DILocation(line: 55, column: 9, scope: !113)
!115 = !DILocation(line: 56, column: 8, scope: !113)
!116 = !DILocation(line: 57, column: 8, scope: !113)
!117 = !DILocation(line: 58, column: 6, scope: !113)
!118 = !DILocation(line: 59, column: 3, scope: !113)
!119 = distinct !{!119, !92, !120, !121}
!120 = !DILocation(line: 59, column: 13, scope: !67)
!121 = !{!"llvm.loop.mustprogress"}
!122 = !DILocation(line: 61, column: 15, scope: !67)
!123 = !DILocation(line: 62, column: 42, scope: !67)
!124 = !DILocation(line: 62, column: 48, scope: !67)
!125 = !DILocation(line: 62, column: 39, scope: !67)
!126 = !DILocation(line: 62, column: 57, scope: !67)
!127 = !DILocation(line: 62, column: 55, scope: !67)
!128 = !DILocation(line: 62, column: 11, scope: !67)
!129 = !DILocation(line: 62, column: 15, scope: !67)
!130 = !DILocation(line: 64, column: 3, scope: !67)
!131 = !DILocation(line: 65, column: 1, scope: !67)
!132 = !DISubprogram(name: "gsl_error", scope: !20, file: !20, line: 77, type: !133, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!133 = !DISubroutineType(types: !134)
!134 = !{null, !135, !135, !21, !21}
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!137 = distinct !DISubprogram(name: "gsl_sf_pow_int", scope: !2, file: !2, line: 71, type: !138, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !142)
!138 = !DISubroutineType(types: !139)
!139 = !{!70, !140, !141}
!140 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !70)
!141 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!142 = !{!143, !144, !145, !146}
!143 = !DILocalVariable(name: "x", arg: 1, scope: !137, file: !2, line: 71, type: !140)
!144 = !DILocalVariable(name: "n", arg: 2, scope: !137, file: !2, line: 71, type: !141)
!145 = !DILocalVariable(name: "result", scope: !137, file: !2, line: 73, type: !72)
!146 = !DILocalVariable(name: "status", scope: !137, file: !2, line: 73, type: !21)
!147 = !DILocation(line: 0, scope: !137)
!148 = !DILocation(line: 0, scope: !67, inlinedAt: !149)
!149 = distinct !DILocation(line: 73, column: 3, scope: !137)
!150 = !DILocation(line: 38, column: 8, scope: !88, inlinedAt: !149)
!151 = !DILocation(line: 38, column: 6, scope: !67, inlinedAt: !149)
!152 = !DILocation(line: 39, column: 9, scope: !87, inlinedAt: !149)
!153 = !DILocation(line: 41, column: 10, scope: !86, inlinedAt: !149)
!154 = !DILocation(line: 0, scope: !87, inlinedAt: !149)
!155 = !DILocation(line: 41, column: 8, scope: !87, inlinedAt: !149)
!156 = !DILocation(line: 54, column: 3, scope: !67, inlinedAt: !149)
!157 = !DILocation(line: 55, column: 9, scope: !112, inlinedAt: !149)
!158 = !DILocation(line: 55, column: 9, scope: !113, inlinedAt: !149)
!159 = !DILocation(line: 56, column: 8, scope: !113, inlinedAt: !149)
!160 = !DILocation(line: 57, column: 8, scope: !113, inlinedAt: !149)
!161 = !DILocation(line: 59, column: 3, scope: !113, inlinedAt: !149)
!162 = distinct !{!162, !156, !163, !121}
!163 = !DILocation(line: 59, column: 13, scope: !67, inlinedAt: !149)
!164 = !DILocation(line: 0, scope: !85, inlinedAt: !149)
!165 = !DILocation(line: 43, column: 24, scope: !85, inlinedAt: !149)
!166 = !DILocation(line: 43, column: 21, scope: !85, inlinedAt: !149)
!167 = !DILocation(line: 45, column: 7, scope: !110, inlinedAt: !149)
!168 = !DILocation(line: 73, column: 3, scope: !169)
!169 = distinct !DILexicalBlock(scope: !170, file: !2, line: 73, column: 3)
!170 = distinct !DILexicalBlock(scope: !171, file: !2, line: 73, column: 3)
!171 = distinct !DILexicalBlock(scope: !137, file: !2, line: 73, column: 3)
!172 = !DILocation(line: 74, column: 1, scope: !137)
