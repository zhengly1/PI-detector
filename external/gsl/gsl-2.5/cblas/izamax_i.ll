; ModuleID = 'izamax.ll'
source_filename = "izamax.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i64 @cblas_izamax(i32 noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 !dbg !14 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !25, metadata !DIExpression()), !dbg !39
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !26, metadata !DIExpression()), !dbg !39
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !27, metadata !DIExpression()), !dbg !39
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !28, metadata !DIExpression()), !dbg !40
  tail call void @llvm.dbg.value(metadata i32 0, metadata !32, metadata !DIExpression()), !dbg !40
  tail call void @llvm.dbg.value(metadata i64 0, metadata !34, metadata !DIExpression()), !dbg !40
  %4 = icmp sgt i32 %2, 0, !dbg !41
  tail call void @llvm.dbg.value(metadata i64 0, metadata !34, metadata !DIExpression()), !dbg !40
  tail call void @llvm.dbg.value(metadata i32 0, metadata !33, metadata !DIExpression()), !dbg !40
  tail call void @llvm.dbg.value(metadata i32 0, metadata !32, metadata !DIExpression()), !dbg !40
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !28, metadata !DIExpression()), !dbg !40
  %5 = icmp sgt i32 %0, 0
  %6 = and i1 %4, %5, !dbg !43
  br i1 %6, label %7, label %32, !dbg !43

7:                                                ; preds = %3
  %8 = zext nneg i32 %2 to i64, !dbg !44
  %9 = zext nneg i32 %0 to i64, !dbg !45
  br label %10, !dbg !44

10:                                               ; preds = %10, %7
  %11 = phi i64 [ 0, %7 ], [ %29, %10 ]
  %12 = phi i64 [ 0, %7 ], [ %30, %10 ]
  %13 = phi i64 [ 0, %7 ], [ %28, %10 ]
  %14 = phi double [ 0.000000e+00, %7 ], [ %27, %10 ]
  tail call void @llvm.dbg.value(metadata i64 %13, metadata !34, metadata !DIExpression()), !dbg !40
  tail call void @llvm.dbg.value(metadata i64 %12, metadata !33, metadata !DIExpression()), !dbg !40
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !32, metadata !DIExpression()), !dbg !40
  tail call void @llvm.dbg.value(metadata double %14, metadata !28, metadata !DIExpression()), !dbg !40
  %15 = trunc i64 %11 to i32, !dbg !46
  %16 = shl nuw nsw i32 %15, 1, !dbg !46
  %17 = zext nneg i32 %16 to i64, !dbg !46
  %18 = getelementptr inbounds double, ptr %1, i64 %17, !dbg !46
  %19 = load double, ptr %18, align 8, !dbg !46, !tbaa !47
  %20 = tail call double @llvm.fabs.f64(double %19), !dbg !51
  %21 = or disjoint i32 %16, 1, !dbg !52
  %22 = zext nneg i32 %21 to i64, !dbg !52
  %23 = getelementptr inbounds double, ptr %1, i64 %22, !dbg !52
  %24 = load double, ptr %23, align 8, !dbg !52, !tbaa !47
  %25 = tail call double @llvm.fabs.f64(double %24), !dbg !53
  %handler_result = call double @fAddHandlerDouble(double %20, double %25), !dbg !54
  tail call void @llvm.dbg.value(metadata double %handler_result, metadata !35, metadata !DIExpression()), !dbg !56
  %26 = fcmp ogt double %handler_result, %14, !dbg !54
  %27 = select i1 %26, double %handler_result, double %14, !dbg !57
  %28 = select i1 %26, i64 %12, i64 %13, !dbg !57
  tail call void @llvm.dbg.value(metadata i64 %28, metadata !34, metadata !DIExpression()), !dbg !40
  tail call void @llvm.dbg.value(metadata double %27, metadata !28, metadata !DIExpression()), !dbg !40
  %29 = add nuw nsw i64 %11, %8, !dbg !58
  tail call void @llvm.dbg.value(metadata i64 %29, metadata !32, metadata !DIExpression()), !dbg !40
  %30 = add nuw nsw i64 %12, 1, !dbg !59
  tail call void @llvm.dbg.value(metadata i64 %30, metadata !33, metadata !DIExpression()), !dbg !40
  %31 = icmp eq i64 %30, %9, !dbg !45
  br i1 %31, label %32, label %10, !dbg !44, !llvm.loop !60

32:                                               ; preds = %10, %3
  %33 = phi i64 [ 0, %3 ], [ %28, %10 ], !dbg !40
  ret i64 %33, !dbg !63
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

declare double @fAddHandlerDouble(double, double)

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "izamax.c", directory: "/PI-detector/external/gsl/gsl-2.5/cblas", checksumkind: CSK_MD5, checksum: "374eb52583190ffaed3a8b2520e870fa")
!2 = !{!3}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!5 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!6 = !{i32 7, !"Dwarf Version", i32 5}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{i32 8, !"PIC Level", i32 2}
!10 = !{i32 7, !"PIE Level", i32 2}
!11 = !{i32 7, !"uwtable", i32 2}
!12 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!13 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!14 = distinct !DISubprogram(name: "cblas_izamax", scope: !1, file: !1, line: 6, type: !15, scopeLine: 7, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !24)
!15 = !DISubroutineType(types: !16)
!16 = !{!17, !20, !22, !20}
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !18, line: 18, baseType: !19)
!18 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!19 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!20 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!21 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!24 = !{!25, !26, !27, !28, !32, !33, !34, !35}
!25 = !DILocalVariable(name: "N", arg: 1, scope: !14, file: !1, line: 6, type: !20)
!26 = !DILocalVariable(name: "X", arg: 2, scope: !14, file: !1, line: 6, type: !22)
!27 = !DILocalVariable(name: "incX", arg: 3, scope: !14, file: !1, line: 6, type: !20)
!28 = !DILocalVariable(name: "max", scope: !29, file: !30, line: 21, type: !5)
!29 = distinct !DILexicalBlock(scope: !31, file: !30, line: 20, column: 1)
!30 = !DIFile(filename: "./source_iamax_c.h", directory: "/PI-detector/external/gsl/gsl-2.5/cblas", checksumkind: CSK_MD5, checksum: "5e37fa40c99519b9ed8734497f8f8021")
!31 = !DILexicalBlockFile(scope: !14, file: !30, discriminator: 0)
!32 = !DILocalVariable(name: "ix", scope: !29, file: !30, line: 22, type: !21)
!33 = !DILocalVariable(name: "i", scope: !29, file: !30, line: 23, type: !21)
!34 = !DILocalVariable(name: "result", scope: !29, file: !30, line: 24, type: !17)
!35 = !DILocalVariable(name: "a", scope: !36, file: !30, line: 31, type: !4)
!36 = distinct !DILexicalBlock(scope: !37, file: !30, line: 30, column: 27)
!37 = distinct !DILexicalBlock(scope: !38, file: !30, line: 30, column: 3)
!38 = distinct !DILexicalBlock(scope: !29, file: !30, line: 30, column: 3)
!39 = !DILocation(line: 0, scope: !14)
!40 = !DILocation(line: 0, scope: !29)
!41 = !DILocation(line: 26, column: 12, scope: !42)
!42 = distinct !DILexicalBlock(scope: !29, file: !30, line: 26, column: 7)
!43 = !DILocation(line: 26, column: 7, scope: !29)
!44 = !DILocation(line: 30, column: 3, scope: !38)
!45 = !DILocation(line: 30, column: 17, scope: !37)
!46 = !DILocation(line: 31, column: 25, scope: !36)
!47 = !{!48, !48, i64 0}
!48 = !{!"double", !49, i64 0}
!49 = !{!"omnipotent char", !50, i64 0}
!50 = !{!"Simple C/C++ TBAA"}
!51 = !DILocation(line: 31, column: 20, scope: !36)
!52 = !DILocation(line: 31, column: 51, scope: !36)
!53 = !DILocation(line: 31, column: 46, scope: !36)
!54 = !DILocation(line: 33, column: 11, scope: !55)
!55 = distinct !DILexicalBlock(scope: !36, file: !30, line: 33, column: 9)
!56 = !DILocation(line: 0, scope: !36)
!57 = !DILocation(line: 33, column: 9, scope: !36)
!58 = !DILocation(line: 37, column: 8, scope: !36)
!59 = !DILocation(line: 30, column: 23, scope: !37)
!60 = distinct !{!60, !44, !61, !62}
!61 = !DILocation(line: 38, column: 3, scope: !38)
!62 = !{!"llvm.loop.mustprogress"}
!63 = !DILocation(line: 11, column: 1, scope: !64)
!64 = !DILexicalBlockFile(scope: !14, file: !1, discriminator: 0)
