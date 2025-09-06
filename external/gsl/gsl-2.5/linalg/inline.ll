; ModuleID = 'inline.c'
source_filename = "inline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_vector = type { i64, i64, ptr, ptr, i32 }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @gsl_linalg_givens(double noundef %0, double noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 !dbg !10 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !18, metadata !DIExpression()), !dbg !30
  tail call void @llvm.dbg.value(metadata double %1, metadata !19, metadata !DIExpression()), !dbg !30
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !20, metadata !DIExpression()), !dbg !30
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !21, metadata !DIExpression()), !dbg !30
  %5 = fcmp oeq double %1, 0.000000e+00, !dbg !31
  br i1 %5, label %6, label %7, !dbg !32

6:                                                ; preds = %4
  store double 1.000000e+00, ptr %2, align 8, !dbg !33, !tbaa !35
  store double 0.000000e+00, ptr %3, align 8, !dbg !39, !tbaa !35
  br label %27, !dbg !40

7:                                                ; preds = %4
  %8 = tail call double @llvm.fabs.f64(double %1), !dbg !41
  %9 = tail call double @llvm.fabs.f64(double %0), !dbg !42
  %10 = fcmp ogt double %8, %9, !dbg !43
  br i1 %10, label %11, label %19, !dbg !44

11:                                               ; preds = %7
  %12 = fneg double %0, !dbg !45
  %13 = fdiv double %12, %1, !dbg !46
  tail call void @llvm.dbg.value(metadata double %13, metadata !22, metadata !DIExpression()), !dbg !47
  %14 = fmul double %13, %13, !dbg !48
  %15 = fadd double %14, 1.000000e+00, !dbg !49
  %16 = tail call double @llvm.sqrt.f64(double %15), !dbg !50
  %17 = fdiv double 1.000000e+00, %16, !dbg !51
  tail call void @llvm.dbg.value(metadata double %17, metadata !26, metadata !DIExpression()), !dbg !47
  store double %17, ptr %3, align 8, !dbg !52, !tbaa !35
  %18 = fmul double %13, %17, !dbg !53
  store double %18, ptr %2, align 8, !dbg !54, !tbaa !35
  br label %27, !dbg !55

19:                                               ; preds = %7
  %20 = fneg double %1, !dbg !56
  %21 = fdiv double %20, %0, !dbg !57
  tail call void @llvm.dbg.value(metadata double %21, metadata !27, metadata !DIExpression()), !dbg !58
  %22 = fmul double %21, %21, !dbg !59
  %23 = fadd double %22, 1.000000e+00, !dbg !60
  %24 = tail call double @llvm.sqrt.f64(double %23), !dbg !61
  %25 = fdiv double 1.000000e+00, %24, !dbg !62
  tail call void @llvm.dbg.value(metadata double %25, metadata !29, metadata !DIExpression()), !dbg !58
  store double %25, ptr %2, align 8, !dbg !63, !tbaa !35
  %26 = fmul double %21, %25, !dbg !64
  store double %26, ptr %3, align 8, !dbg !65, !tbaa !35
  br label %27

27:                                               ; preds = %11, %19, %6
  ret void, !dbg !66
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @gsl_linalg_givens_gv(ptr nocapture noundef readonly %0, i64 noundef %1, i64 noundef %2, double noundef %3, double noundef %4) local_unnamed_addr #2 !dbg !67 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !93, metadata !DIExpression()), !dbg !100
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !94, metadata !DIExpression()), !dbg !100
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !95, metadata !DIExpression()), !dbg !100
  tail call void @llvm.dbg.value(metadata double %3, metadata !96, metadata !DIExpression()), !dbg !100
  tail call void @llvm.dbg.value(metadata double %4, metadata !97, metadata !DIExpression()), !dbg !100
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !101, metadata !DIExpression()), !dbg !109
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !108, metadata !DIExpression()), !dbg !109
  %6 = getelementptr inbounds %struct.gsl_vector, ptr %0, i64 0, i32 2, !dbg !111
  %7 = load ptr, ptr %6, align 8, !dbg !111, !tbaa !112
  %8 = getelementptr inbounds %struct.gsl_vector, ptr %0, i64 0, i32 1, !dbg !117
  %9 = load i64, ptr %8, align 8, !dbg !117, !tbaa !118
  %10 = mul i64 %9, %1, !dbg !119
  %11 = getelementptr inbounds double, ptr %7, i64 %10, !dbg !120
  %12 = load double, ptr %11, align 8, !dbg !120, !tbaa !35
  tail call void @llvm.dbg.value(metadata double %12, metadata !98, metadata !DIExpression()), !dbg !100
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !101, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !108, metadata !DIExpression()), !dbg !121
  %13 = mul i64 %9, %2, !dbg !123
  %14 = getelementptr inbounds double, ptr %7, i64 %13, !dbg !124
  %15 = load double, ptr %14, align 8, !dbg !124, !tbaa !35
  tail call void @llvm.dbg.value(metadata double %15, metadata !99, metadata !DIExpression()), !dbg !100
  %16 = fmul double %12, %3, !dbg !125
  %17 = fmul double %15, %4, !dbg !126
  %18 = fsub double %16, %17, !dbg !127
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !128, metadata !DIExpression()), !dbg !135
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !133, metadata !DIExpression()), !dbg !135
  tail call void @llvm.dbg.value(metadata double %18, metadata !134, metadata !DIExpression()), !dbg !135
  store double %18, ptr %11, align 8, !dbg !137, !tbaa !35
  %19 = fmul double %12, %4, !dbg !138
  %20 = fmul double %15, %3, !dbg !139
  %21 = fadd double %19, %20, !dbg !140
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !128, metadata !DIExpression()), !dbg !141
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !133, metadata !DIExpression()), !dbg !141
  tail call void @llvm.dbg.value(metadata double %21, metadata !134, metadata !DIExpression()), !dbg !141
  store double %21, ptr %14, align 8, !dbg !143, !tbaa !35
  ret void, !dbg !144
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "inline.c", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "2c635d1c594c72a42b1ce48e466b5023")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!9 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!10 = distinct !DISubprogram(name: "gsl_linalg_givens", scope: !11, file: !11, line: 740, type: !12, scopeLine: 741, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !17)
!11 = !DIFile(filename: "../gsl/gsl_linalg.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "207a08de7165df3c48675386ae708207")
!12 = !DISubroutineType(types: !13)
!13 = !{null, !14, !14, !16, !16}
!14 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!15 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!17 = !{!18, !19, !20, !21, !22, !26, !27, !29}
!18 = !DILocalVariable(name: "a", arg: 1, scope: !10, file: !11, line: 740, type: !14)
!19 = !DILocalVariable(name: "b", arg: 2, scope: !10, file: !11, line: 740, type: !14)
!20 = !DILocalVariable(name: "c", arg: 3, scope: !10, file: !11, line: 740, type: !16)
!21 = !DILocalVariable(name: "s", arg: 4, scope: !10, file: !11, line: 740, type: !16)
!22 = !DILocalVariable(name: "t", scope: !23, file: !11, line: 749, type: !15)
!23 = distinct !DILexicalBlock(scope: !24, file: !11, line: 748, column: 5)
!24 = distinct !DILexicalBlock(scope: !25, file: !11, line: 747, column: 12)
!25 = distinct !DILexicalBlock(scope: !10, file: !11, line: 742, column: 7)
!26 = !DILocalVariable(name: "s1", scope: !23, file: !11, line: 750, type: !15)
!27 = !DILocalVariable(name: "t", scope: !28, file: !11, line: 756, type: !15)
!28 = distinct !DILexicalBlock(scope: !24, file: !11, line: 755, column: 5)
!29 = !DILocalVariable(name: "c1", scope: !28, file: !11, line: 757, type: !15)
!30 = !DILocation(line: 0, scope: !10)
!31 = !DILocation(line: 742, column: 9, scope: !25)
!32 = !DILocation(line: 742, column: 7, scope: !10)
!33 = !DILocation(line: 744, column: 10, scope: !34)
!34 = distinct !DILexicalBlock(scope: !25, file: !11, line: 743, column: 5)
!35 = !{!36, !36, i64 0}
!36 = !{!"double", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !DILocation(line: 745, column: 10, scope: !34)
!40 = !DILocation(line: 746, column: 5, scope: !34)
!41 = !DILocation(line: 747, column: 12, scope: !24)
!42 = !DILocation(line: 747, column: 23, scope: !24)
!43 = !DILocation(line: 747, column: 21, scope: !24)
!44 = !DILocation(line: 747, column: 12, scope: !25)
!45 = !DILocation(line: 749, column: 18, scope: !23)
!46 = !DILocation(line: 749, column: 21, scope: !23)
!47 = !DILocation(line: 0, scope: !23)
!48 = !DILocation(line: 750, column: 37, scope: !23)
!49 = !DILocation(line: 750, column: 33, scope: !23)
!50 = !DILocation(line: 750, column: 25, scope: !23)
!51 = !DILocation(line: 750, column: 23, scope: !23)
!52 = !DILocation(line: 751, column: 10, scope: !23)
!53 = !DILocation(line: 752, column: 15, scope: !23)
!54 = !DILocation(line: 752, column: 10, scope: !23)
!55 = !DILocation(line: 753, column: 5, scope: !23)
!56 = !DILocation(line: 756, column: 18, scope: !28)
!57 = !DILocation(line: 756, column: 21, scope: !28)
!58 = !DILocation(line: 0, scope: !28)
!59 = !DILocation(line: 757, column: 37, scope: !28)
!60 = !DILocation(line: 757, column: 33, scope: !28)
!61 = !DILocation(line: 757, column: 25, scope: !28)
!62 = !DILocation(line: 757, column: 23, scope: !28)
!63 = !DILocation(line: 758, column: 10, scope: !28)
!64 = !DILocation(line: 759, column: 15, scope: !28)
!65 = !DILocation(line: 759, column: 10, scope: !28)
!66 = !DILocation(line: 761, column: 1, scope: !10)
!67 = distinct !DISubprogram(name: "gsl_linalg_givens_gv", scope: !11, file: !11, line: 765, type: !68, scopeLine: 767, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !92)
!68 = !DISubroutineType(types: !69)
!69 = !{null, !70, !91, !91, !14, !14}
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_vector", file: !72, line: 50, baseType: !73)
!72 = !DIFile(filename: "../gsl/gsl_vector_double.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "01ba7cd7de10f3fa64dd78b7b86e4c27")
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !72, line: 42, size: 320, elements: !74)
!74 = !{!75, !79, !80, !81, !89}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !73, file: !72, line: 44, baseType: !76, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !77, line: 18, baseType: !78)
!77 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!78 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "stride", scope: !73, file: !72, line: 45, baseType: !76, size: 64, offset: 64)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !73, file: !72, line: 46, baseType: !16, size: 64, offset: 128)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !73, file: !72, line: 47, baseType: !82, size: 64, offset: 192)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_block", file: !84, line: 44, baseType: !85)
!84 = !DIFile(filename: "../gsl/gsl_block_double.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "5e371590f329ba42fd19fc8c33477a3f")
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_block_struct", file: !84, line: 38, size: 128, elements: !86)
!86 = !{!87, !88}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !85, file: !84, line: 40, baseType: !76, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !85, file: !84, line: 41, baseType: !16, size: 64, offset: 64)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !73, file: !72, line: 48, baseType: !90, size: 32, offset: 256)
!90 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!91 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !76)
!92 = !{!93, !94, !95, !96, !97, !98, !99}
!93 = !DILocalVariable(name: "v", arg: 1, scope: !67, file: !11, line: 765, type: !70)
!94 = !DILocalVariable(name: "i", arg: 2, scope: !67, file: !11, line: 765, type: !91)
!95 = !DILocalVariable(name: "j", arg: 3, scope: !67, file: !11, line: 765, type: !91)
!96 = !DILocalVariable(name: "c", arg: 4, scope: !67, file: !11, line: 766, type: !14)
!97 = !DILocalVariable(name: "s", arg: 5, scope: !67, file: !11, line: 766, type: !14)
!98 = !DILocalVariable(name: "vi", scope: !67, file: !11, line: 770, type: !15)
!99 = !DILocalVariable(name: "vj", scope: !67, file: !11, line: 771, type: !15)
!100 = !DILocation(line: 0, scope: !67)
!101 = !DILocalVariable(name: "v", arg: 1, scope: !102, file: !72, line: 175, type: !105)
!102 = distinct !DISubprogram(name: "gsl_vector_get", scope: !72, file: !72, line: 175, type: !103, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !107)
!103 = !DISubroutineType(types: !104)
!104 = !{!15, !105, !91}
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !71)
!107 = !{!101, !108}
!108 = !DILocalVariable(name: "i", arg: 2, scope: !102, file: !72, line: 175, type: !91)
!109 = !DILocation(line: 0, scope: !102, inlinedAt: !110)
!110 = distinct !DILocation(line: 770, column: 15, scope: !67)
!111 = !DILocation(line: 183, column: 13, scope: !102, inlinedAt: !110)
!112 = !{!113, !115, i64 16}
!113 = !{!"", !114, i64 0, !114, i64 8, !115, i64 16, !115, i64 24, !116, i64 32}
!114 = !{!"long", !37, i64 0}
!115 = !{!"any pointer", !37, i64 0}
!116 = !{!"int", !37, i64 0}
!117 = !DILocation(line: 183, column: 25, scope: !102, inlinedAt: !110)
!118 = !{!113, !114, i64 8}
!119 = !DILocation(line: 183, column: 20, scope: !102, inlinedAt: !110)
!120 = !DILocation(line: 183, column: 10, scope: !102, inlinedAt: !110)
!121 = !DILocation(line: 0, scope: !102, inlinedAt: !122)
!122 = distinct !DILocation(line: 771, column: 15, scope: !67)
!123 = !DILocation(line: 183, column: 20, scope: !102, inlinedAt: !122)
!124 = !DILocation(line: 183, column: 10, scope: !102, inlinedAt: !122)
!125 = !DILocation(line: 772, column: 27, scope: !67)
!126 = !DILocation(line: 772, column: 36, scope: !67)
!127 = !DILocation(line: 772, column: 32, scope: !67)
!128 = !DILocalVariable(name: "v", arg: 1, scope: !129, file: !72, line: 188, type: !70)
!129 = distinct !DISubprogram(name: "gsl_vector_set", scope: !72, file: !72, line: 188, type: !130, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !132)
!130 = !DISubroutineType(types: !131)
!131 = !{null, !70, !91, !15}
!132 = !{!128, !133, !134}
!133 = !DILocalVariable(name: "i", arg: 2, scope: !129, file: !72, line: 188, type: !91)
!134 = !DILocalVariable(name: "x", arg: 3, scope: !129, file: !72, line: 188, type: !15)
!135 = !DILocation(line: 0, scope: !129, inlinedAt: !136)
!136 = distinct !DILocation(line: 772, column: 3, scope: !67)
!137 = !DILocation(line: 196, column: 26, scope: !129, inlinedAt: !136)
!138 = !DILocation(line: 773, column: 27, scope: !67)
!139 = !DILocation(line: 773, column: 36, scope: !67)
!140 = !DILocation(line: 773, column: 32, scope: !67)
!141 = !DILocation(line: 0, scope: !129, inlinedAt: !142)
!142 = distinct !DILocation(line: 773, column: 3, scope: !67)
!143 = !DILocation(line: 196, column: 26, scope: !129, inlinedAt: !142)
!144 = !DILocation(line: 774, column: 1, scope: !67)
