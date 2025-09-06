; ModuleID = 'scasum.c'
source_filename = "scasum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local float @cblas_scasum(i32 noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 !dbg !14 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !22, metadata !DIExpression()), !dbg !31
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !23, metadata !DIExpression()), !dbg !31
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !24, metadata !DIExpression()), !dbg !31
  tail call void @llvm.dbg.value(metadata float 0.000000e+00, metadata !25, metadata !DIExpression()), !dbg !32
  tail call void @llvm.dbg.value(metadata i32 0, metadata !30, metadata !DIExpression()), !dbg !32
  %4 = icmp sgt i32 %2, 0, !dbg !33
  tail call void @llvm.dbg.value(metadata i32 0, metadata !30, metadata !DIExpression()), !dbg !32
  tail call void @llvm.dbg.value(metadata i32 0, metadata !29, metadata !DIExpression()), !dbg !32
  tail call void @llvm.dbg.value(metadata float 0.000000e+00, metadata !25, metadata !DIExpression()), !dbg !32
  %5 = icmp sgt i32 %0, 0
  %6 = and i1 %4, %5, !dbg !35
  br i1 %6, label %7, label %33, !dbg !35

7:                                                ; preds = %3
  %8 = zext nneg i32 %2 to i64, !dbg !36
  br label %9, !dbg !36

9:                                                ; preds = %7, %9
  %10 = phi i64 [ 0, %7 ], [ %30, %9 ]
  %11 = phi i32 [ 0, %7 ], [ %31, %9 ]
  %12 = phi float [ 0.000000e+00, %7 ], [ %29, %9 ]
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !30, metadata !DIExpression()), !dbg !32
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !29, metadata !DIExpression()), !dbg !32
  tail call void @llvm.dbg.value(metadata float %12, metadata !25, metadata !DIExpression()), !dbg !32
  %13 = trunc i64 %10 to i32, !dbg !38
  %14 = shl nuw nsw i32 %13, 1, !dbg !38
  %15 = zext nneg i32 %14 to i64, !dbg !38
  %16 = getelementptr inbounds float, ptr %1, i64 %15, !dbg !38
  %17 = load float, ptr %16, align 4, !dbg !38, !tbaa !41
  %18 = tail call float @llvm.fabs.f32(float %17), !dbg !45
  %19 = fpext float %18 to double, !dbg !45
  %20 = or disjoint i32 %14, 1, !dbg !46
  %21 = zext nneg i32 %20 to i64, !dbg !46
  %22 = getelementptr inbounds float, ptr %1, i64 %21, !dbg !46
  %23 = load float, ptr %22, align 4, !dbg !46, !tbaa !41
  %24 = tail call float @llvm.fabs.f32(float %23), !dbg !47
  %25 = fpext float %24 to double, !dbg !47
  %26 = fadd double %19, %25, !dbg !48
  %27 = fpext float %12 to double, !dbg !49
  %28 = fadd double %26, %27, !dbg !49
  %29 = fptrunc double %28 to float, !dbg !49
  tail call void @llvm.dbg.value(metadata float %29, metadata !25, metadata !DIExpression()), !dbg !32
  %30 = add nuw nsw i64 %10, %8, !dbg !50
  tail call void @llvm.dbg.value(metadata i64 %30, metadata !30, metadata !DIExpression()), !dbg !32
  %31 = add nuw nsw i32 %11, 1, !dbg !51
  tail call void @llvm.dbg.value(metadata i32 %31, metadata !29, metadata !DIExpression()), !dbg !32
  %32 = icmp eq i32 %31, %0, !dbg !52
  br i1 %32, label %33, label %9, !dbg !36, !llvm.loop !53

33:                                               ; preds = %9, %3
  %34 = phi float [ 0.000000e+00, %3 ], [ %29, %9 ], !dbg !32
  ret float %34, !dbg !56
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #1

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "scasum.c", directory: "/PI-detector/external/gsl/gsl-2.5/cblas", checksumkind: CSK_MD5, checksum: "41461eb3cc044e3befa3e4bdcac66ae3")
!2 = !{!3}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!5 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!6 = !{i32 7, !"Dwarf Version", i32 5}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{i32 8, !"PIC Level", i32 2}
!10 = !{i32 7, !"PIE Level", i32 2}
!11 = !{i32 7, !"uwtable", i32 2}
!12 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!13 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!14 = distinct !DISubprogram(name: "cblas_scasum", scope: !1, file: !1, line: 6, type: !15, scopeLine: 7, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !21)
!15 = !DISubroutineType(types: !16)
!16 = !{!5, !17, !19, !17}
!17 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !18)
!18 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!21 = !{!22, !23, !24, !25, !29, !30}
!22 = !DILocalVariable(name: "N", arg: 1, scope: !14, file: !1, line: 6, type: !17)
!23 = !DILocalVariable(name: "X", arg: 2, scope: !14, file: !1, line: 6, type: !19)
!24 = !DILocalVariable(name: "incX", arg: 3, scope: !14, file: !1, line: 6, type: !17)
!25 = !DILocalVariable(name: "r", scope: !26, file: !27, line: 21, type: !5)
!26 = distinct !DILexicalBlock(scope: !28, file: !27, line: 20, column: 1)
!27 = !DIFile(filename: "./source_asum_c.h", directory: "/PI-detector/external/gsl/gsl-2.5/cblas", checksumkind: CSK_MD5, checksum: "dbd58aae4e672b53b12efb134221eec8")
!28 = !DILexicalBlockFile(scope: !14, file: !27, discriminator: 0)
!29 = !DILocalVariable(name: "i", scope: !26, file: !27, line: 22, type: !18)
!30 = !DILocalVariable(name: "ix", scope: !26, file: !27, line: 23, type: !18)
!31 = !DILocation(line: 0, scope: !14)
!32 = !DILocation(line: 0, scope: !26)
!33 = !DILocation(line: 25, column: 12, scope: !34)
!34 = distinct !DILexicalBlock(scope: !26, file: !27, line: 25, column: 7)
!35 = !DILocation(line: 25, column: 7, scope: !26)
!36 = !DILocation(line: 29, column: 3, scope: !37)
!37 = distinct !DILexicalBlock(scope: !26, file: !27, line: 29, column: 3)
!38 = !DILocation(line: 30, column: 15, scope: !39)
!39 = distinct !DILexicalBlock(scope: !40, file: !27, line: 29, column: 27)
!40 = distinct !DILexicalBlock(scope: !37, file: !27, line: 29, column: 3)
!41 = !{!42, !42, i64 0}
!42 = !{!"float", !43, i64 0}
!43 = !{!"omnipotent char", !44, i64 0}
!44 = !{!"Simple C/C++ TBAA"}
!45 = !DILocation(line: 30, column: 10, scope: !39)
!46 = !DILocation(line: 30, column: 41, scope: !39)
!47 = !DILocation(line: 30, column: 36, scope: !39)
!48 = !DILocation(line: 30, column: 34, scope: !39)
!49 = !DILocation(line: 30, column: 7, scope: !39)
!50 = !DILocation(line: 31, column: 8, scope: !39)
!51 = !DILocation(line: 29, column: 23, scope: !40)
!52 = !DILocation(line: 29, column: 17, scope: !40)
!53 = distinct !{!53, !36, !54, !55}
!54 = !DILocation(line: 32, column: 3, scope: !37)
!55 = !{!"llvm.loop.mustprogress"}
!56 = !DILocation(line: 11, column: 1, scope: !57)
!57 = !DILexicalBlockFile(scope: !14, file: !1, discriminator: 0)
