; ModuleID = 'cswap.ll'
source_filename = "cswap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @cblas_cswap(i32 noundef %0, ptr nocapture noundef %1, i32 noundef %2, ptr nocapture noundef %3, i32 noundef %4) local_unnamed_addr #0 !dbg !13 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !20, metadata !DIExpression()), !dbg !37
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !21, metadata !DIExpression()), !dbg !37
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !22, metadata !DIExpression()), !dbg !37
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !23, metadata !DIExpression()), !dbg !37
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !24, metadata !DIExpression()), !dbg !37
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !29, metadata !DIExpression()), !dbg !38
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !30, metadata !DIExpression()), !dbg !38
  tail call void @llvm.dbg.value(metadata i32 0, metadata !25, metadata !DIExpression()), !dbg !38
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !29, metadata !DIExpression()), !dbg !38
  %6 = icmp sgt i32 %0, 0, !dbg !39
  br i1 %6, label %7, label %45, !dbg !40

7:                                                ; preds = %5
  %8 = icmp sgt i32 %4, 0, !dbg !41
  %9 = sub nsw i32 1, %0, !dbg !42
  %10 = mul i32 %9, %4, !dbg !41
  %11 = select i1 %8, i32 0, i32 %10, !dbg !41
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !30, metadata !DIExpression()), !dbg !38
  %12 = icmp sgt i32 %2, 0, !dbg !42
  %13 = mul i32 %9, %2, !dbg !42
  %14 = select i1 %12, i32 0, i32 %13, !dbg !42
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !29, metadata !DIExpression()), !dbg !38
  %15 = zext i32 %14 to i64, !dbg !40
  %16 = zext i32 %2 to i64, !dbg !40
  %17 = zext i32 %11 to i64, !dbg !40
  %18 = zext i32 %4 to i64, !dbg !40
  br label %19, !dbg !40

19:                                               ; preds = %19, %7
  %20 = phi i64 [ %17, %7 ], [ %42, %19 ]
  %21 = phi i64 [ %15, %7 ], [ %41, %19 ]
  %22 = phi i32 [ 0, %7 ], [ %43, %19 ]
  tail call void @llvm.dbg.value(metadata i32 %22, metadata !25, metadata !DIExpression()), !dbg !38
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !29, metadata !DIExpression()), !dbg !38
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !30, metadata !DIExpression()), !dbg !38
  %23 = trunc i64 %21 to i32, !dbg !43
  %24 = shl nsw i32 %23, 1, !dbg !43
  %25 = sext i32 %24 to i64, !dbg !43
  %26 = getelementptr inbounds float, ptr %1, i64 %25, !dbg !43
  %27 = load float, ptr %26, align 4, !dbg !43, !tbaa !44
  tail call void @llvm.dbg.value(metadata float %27, metadata !31, metadata !DIExpression()), !dbg !48
  %28 = or disjoint i32 %24, 1, !dbg !49
  %29 = sext i32 %28 to i64, !dbg !49
  %30 = getelementptr inbounds float, ptr %1, i64 %29, !dbg !49
  %31 = load float, ptr %30, align 4, !dbg !49, !tbaa !44
  tail call void @llvm.dbg.value(metadata float %31, metadata !36, metadata !DIExpression()), !dbg !48
  %32 = trunc i64 %20 to i32, !dbg !50
  %33 = shl nsw i32 %32, 1, !dbg !50
  %34 = sext i32 %33 to i64, !dbg !50
  %35 = getelementptr inbounds float, ptr %3, i64 %34, !dbg !50
  %36 = load float, ptr %35, align 4, !dbg !50, !tbaa !44
  store float %36, ptr %26, align 4, !dbg !51, !tbaa !44
  %37 = or disjoint i32 %33, 1, !dbg !52
  %38 = sext i32 %37 to i64, !dbg !52
  %39 = getelementptr inbounds float, ptr %3, i64 %38, !dbg !52
  %40 = load float, ptr %39, align 4, !dbg !52, !tbaa !44
  store float %40, ptr %30, align 4, !dbg !53, !tbaa !44
  store float %27, ptr %35, align 4, !dbg !54, !tbaa !44
  store float %31, ptr %39, align 4, !dbg !55, !tbaa !44
  %41 = add i64 %21, %16, !dbg !56
  tail call void @llvm.dbg.value(metadata i64 %41, metadata !29, metadata !DIExpression()), !dbg !38
  %42 = add i64 %20, %18, !dbg !57
  tail call void @llvm.dbg.value(metadata i64 %42, metadata !30, metadata !DIExpression()), !dbg !38
  %43 = add nuw nsw i32 %22, 1, !dbg !58
  tail call void @llvm.dbg.value(metadata i32 %43, metadata !25, metadata !DIExpression()), !dbg !38
  %44 = icmp eq i32 %43, %0, !dbg !39
  br i1 %44, label %45, label %19, !dbg !40, !llvm.loop !59

45:                                               ; preds = %19, %5
  ret void, !dbg !62
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "cswap.c", directory: "/PI-detector/external/gsl/gsl-2.5/cblas", checksumkind: CSK_MD5, checksum: "b60f3172dddb0e3c6e6e7e85db526c9a")
!2 = !{!3}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!5 = !{i32 7, !"Dwarf Version", i32 5}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{i32 8, !"PIC Level", i32 2}
!9 = !{i32 7, !"PIE Level", i32 2}
!10 = !{i32 7, !"uwtable", i32 2}
!11 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!12 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!13 = distinct !DISubprogram(name: "cblas_cswap", scope: !1, file: !1, line: 6, type: !14, scopeLine: 7, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !19)
!14 = !DISubroutineType(types: !15)
!15 = !{null, !16, !18, !16, !18, !16}
!16 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!17 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!19 = !{!20, !21, !22, !23, !24, !25, !29, !30, !31, !36}
!20 = !DILocalVariable(name: "N", arg: 1, scope: !13, file: !1, line: 6, type: !16)
!21 = !DILocalVariable(name: "X", arg: 2, scope: !13, file: !1, line: 6, type: !18)
!22 = !DILocalVariable(name: "incX", arg: 3, scope: !13, file: !1, line: 6, type: !16)
!23 = !DILocalVariable(name: "Y", arg: 4, scope: !13, file: !1, line: 6, type: !18)
!24 = !DILocalVariable(name: "incY", arg: 5, scope: !13, file: !1, line: 6, type: !16)
!25 = !DILocalVariable(name: "i", scope: !26, file: !27, line: 21, type: !17)
!26 = distinct !DILexicalBlock(scope: !28, file: !27, line: 20, column: 1)
!27 = !DIFile(filename: "./source_swap_c.h", directory: "/PI-detector/external/gsl/gsl-2.5/cblas", checksumkind: CSK_MD5, checksum: "f7af36c5e7c2f7e1067611338f2b884d")
!28 = !DILexicalBlockFile(scope: !13, file: !27, discriminator: 0)
!29 = !DILocalVariable(name: "ix", scope: !26, file: !27, line: 22, type: !17)
!30 = !DILocalVariable(name: "iy", scope: !26, file: !27, line: 23, type: !17)
!31 = !DILocalVariable(name: "tmp_real", scope: !32, file: !27, line: 26, type: !35)
!32 = distinct !DILexicalBlock(scope: !33, file: !27, line: 25, column: 27)
!33 = distinct !DILexicalBlock(scope: !34, file: !27, line: 25, column: 3)
!34 = distinct !DILexicalBlock(scope: !26, file: !27, line: 25, column: 3)
!35 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!36 = !DILocalVariable(name: "tmp_imag", scope: !32, file: !27, line: 27, type: !35)
!37 = !DILocation(line: 0, scope: !13)
!38 = !DILocation(line: 0, scope: !26)
!39 = !DILocation(line: 25, column: 17, scope: !33)
!40 = !DILocation(line: 25, column: 3, scope: !34)
!41 = !DILocation(line: 23, column: 14, scope: !26)
!42 = !DILocation(line: 22, column: 14, scope: !26)
!43 = !DILocation(line: 26, column: 27, scope: !32)
!44 = !{!45, !45, i64 0}
!45 = !{!"float", !46, i64 0}
!46 = !{!"omnipotent char", !47, i64 0}
!47 = !{!"Simple C/C++ TBAA"}
!48 = !DILocation(line: 0, scope: !32)
!49 = !DILocation(line: 27, column: 27, scope: !32)
!50 = !DILocation(line: 28, column: 19, scope: !32)
!51 = !DILocation(line: 28, column: 17, scope: !32)
!52 = !DILocation(line: 29, column: 19, scope: !32)
!53 = !DILocation(line: 29, column: 17, scope: !32)
!54 = !DILocation(line: 30, column: 17, scope: !32)
!55 = !DILocation(line: 31, column: 17, scope: !32)
!56 = !DILocation(line: 32, column: 8, scope: !32)
!57 = !DILocation(line: 33, column: 8, scope: !32)
!58 = !DILocation(line: 25, column: 23, scope: !33)
!59 = distinct !{!59, !40, !60, !61}
!60 = !DILocation(line: 34, column: 3, scope: !34)
!61 = !{!"llvm.loop.mustprogress"}
!62 = !DILocation(line: 11, column: 1, scope: !63)
!63 = !DILexicalBlockFile(scope: !13, file: !1, discriminator: 0)
