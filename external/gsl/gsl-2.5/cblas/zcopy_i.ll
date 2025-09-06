; ModuleID = 'zcopy.ll'
source_filename = "zcopy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @cblas_zcopy(i32 noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef writeonly %3, i32 noundef %4) local_unnamed_addr #0 !dbg !15 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !24, metadata !DIExpression()), !dbg !35
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !25, metadata !DIExpression()), !dbg !35
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !26, metadata !DIExpression()), !dbg !35
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !27, metadata !DIExpression()), !dbg !35
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !28, metadata !DIExpression()), !dbg !35
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !33, metadata !DIExpression()), !dbg !36
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !34, metadata !DIExpression()), !dbg !36
  tail call void @llvm.dbg.value(metadata i32 0, metadata !29, metadata !DIExpression()), !dbg !36
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !33, metadata !DIExpression()), !dbg !36
  %6 = icmp sgt i32 %0, 0, !dbg !37
  br i1 %6, label %7, label %43, !dbg !40

7:                                                ; preds = %5
  %8 = icmp sgt i32 %4, 0, !dbg !41
  %9 = sub nsw i32 1, %0, !dbg !42
  %10 = mul i32 %9, %4, !dbg !41
  %11 = select i1 %8, i32 0, i32 %10, !dbg !41
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !34, metadata !DIExpression()), !dbg !36
  %12 = icmp sgt i32 %2, 0, !dbg !42
  %13 = mul i32 %9, %2, !dbg !42
  %14 = select i1 %12, i32 0, i32 %13, !dbg !42
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !33, metadata !DIExpression()), !dbg !36
  %15 = zext i32 %11 to i64, !dbg !40
  %16 = zext i32 %4 to i64, !dbg !40
  %17 = zext i32 %14 to i64, !dbg !40
  %18 = zext i32 %2 to i64, !dbg !40
  br label %19, !dbg !40

19:                                               ; preds = %19, %7
  %20 = phi i64 [ %17, %7 ], [ %39, %19 ]
  %21 = phi i64 [ %15, %7 ], [ %40, %19 ]
  %22 = phi i32 [ 0, %7 ], [ %41, %19 ]
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !34, metadata !DIExpression()), !dbg !36
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !33, metadata !DIExpression()), !dbg !36
  tail call void @llvm.dbg.value(metadata i32 %22, metadata !29, metadata !DIExpression()), !dbg !36
  %23 = trunc i64 %20 to i32, !dbg !43
  %24 = shl nsw i32 %23, 1, !dbg !43
  %25 = sext i32 %24 to i64, !dbg !43
  %26 = getelementptr inbounds double, ptr %1, i64 %25, !dbg !43
  %27 = load double, ptr %26, align 8, !dbg !43, !tbaa !45
  %28 = trunc i64 %21 to i32, !dbg !49
  %29 = shl nsw i32 %28, 1, !dbg !49
  %30 = sext i32 %29 to i64, !dbg !49
  %31 = getelementptr inbounds double, ptr %3, i64 %30, !dbg !49
  store double %27, ptr %31, align 8, !dbg !50, !tbaa !45
  %32 = or disjoint i32 %24, 1, !dbg !51
  %33 = sext i32 %32 to i64, !dbg !51
  %34 = getelementptr inbounds double, ptr %1, i64 %33, !dbg !51
  %35 = load double, ptr %34, align 8, !dbg !51, !tbaa !45
  %36 = or disjoint i32 %29, 1, !dbg !52
  %37 = sext i32 %36 to i64, !dbg !52
  %38 = getelementptr inbounds double, ptr %3, i64 %37, !dbg !52
  store double %35, ptr %38, align 8, !dbg !53, !tbaa !45
  %39 = add i64 %20, %18, !dbg !54
  tail call void @llvm.dbg.value(metadata i64 %39, metadata !33, metadata !DIExpression()), !dbg !36
  %40 = add i64 %21, %16, !dbg !55
  tail call void @llvm.dbg.value(metadata i64 %40, metadata !34, metadata !DIExpression()), !dbg !36
  %41 = add nuw nsw i32 %22, 1, !dbg !56
  tail call void @llvm.dbg.value(metadata i32 %41, metadata !29, metadata !DIExpression()), !dbg !36
  %42 = icmp eq i32 %41, %0, !dbg !37
  br i1 %42, label %43, label %19, !dbg !40, !llvm.loop !57

43:                                               ; preds = %19, %5
  ret void, !dbg !60
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "zcopy.c", directory: "/PI-detector/external/gsl/gsl-2.5/cblas", checksumkind: CSK_MD5, checksum: "c772da9f3edab04f5f6cce25532b1551")
!2 = !{!3, !6}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!5 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!7 = !{i32 7, !"Dwarf Version", i32 5}
!8 = !{i32 2, !"Debug Info Version", i32 3}
!9 = !{i32 1, !"wchar_size", i32 4}
!10 = !{i32 8, !"PIC Level", i32 2}
!11 = !{i32 7, !"PIE Level", i32 2}
!12 = !{i32 7, !"uwtable", i32 2}
!13 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!14 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!15 = distinct !DISubprogram(name: "cblas_zcopy", scope: !1, file: !1, line: 6, type: !16, scopeLine: 8, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !23)
!16 = !DISubroutineType(types: !17)
!17 = !{null, !18, !20, !18, !22, !18}
!18 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!19 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!23 = !{!24, !25, !26, !27, !28, !29, !33, !34}
!24 = !DILocalVariable(name: "N", arg: 1, scope: !15, file: !1, line: 6, type: !18)
!25 = !DILocalVariable(name: "X", arg: 2, scope: !15, file: !1, line: 6, type: !20)
!26 = !DILocalVariable(name: "incX", arg: 3, scope: !15, file: !1, line: 6, type: !18)
!27 = !DILocalVariable(name: "Y", arg: 4, scope: !15, file: !1, line: 6, type: !22)
!28 = !DILocalVariable(name: "incY", arg: 5, scope: !15, file: !1, line: 7, type: !18)
!29 = !DILocalVariable(name: "i", scope: !30, file: !31, line: 21, type: !19)
!30 = distinct !DILexicalBlock(scope: !32, file: !31, line: 20, column: 1)
!31 = !DIFile(filename: "./source_copy_c.h", directory: "/PI-detector/external/gsl/gsl-2.5/cblas", checksumkind: CSK_MD5, checksum: "a78512f10c5b25935d95f7462298d7ec")
!32 = !DILexicalBlockFile(scope: !15, file: !31, discriminator: 0)
!33 = !DILocalVariable(name: "ix", scope: !30, file: !31, line: 22, type: !19)
!34 = !DILocalVariable(name: "iy", scope: !30, file: !31, line: 23, type: !19)
!35 = !DILocation(line: 0, scope: !15)
!36 = !DILocation(line: 0, scope: !30)
!37 = !DILocation(line: 25, column: 17, scope: !38)
!38 = distinct !DILexicalBlock(scope: !39, file: !31, line: 25, column: 3)
!39 = distinct !DILexicalBlock(scope: !30, file: !31, line: 25, column: 3)
!40 = !DILocation(line: 25, column: 3, scope: !39)
!41 = !DILocation(line: 23, column: 14, scope: !30)
!42 = !DILocation(line: 22, column: 14, scope: !30)
!43 = !DILocation(line: 26, column: 19, scope: !44)
!44 = distinct !DILexicalBlock(scope: !38, file: !31, line: 25, column: 27)
!45 = !{!46, !46, i64 0}
!46 = !{!"double", !47, i64 0}
!47 = !{!"omnipotent char", !48, i64 0}
!48 = !{!"Simple C/C++ TBAA"}
!49 = !DILocation(line: 26, column: 5, scope: !44)
!50 = !DILocation(line: 26, column: 17, scope: !44)
!51 = !DILocation(line: 27, column: 19, scope: !44)
!52 = !DILocation(line: 27, column: 5, scope: !44)
!53 = !DILocation(line: 27, column: 17, scope: !44)
!54 = !DILocation(line: 28, column: 8, scope: !44)
!55 = !DILocation(line: 29, column: 8, scope: !44)
!56 = !DILocation(line: 25, column: 23, scope: !38)
!57 = distinct !{!57, !40, !58, !59}
!58 = !DILocation(line: 30, column: 3, scope: !39)
!59 = !{!"llvm.loop.mustprogress"}
!60 = !DILocation(line: 12, column: 1, scope: !61)
!61 = !DILexicalBlockFile(scope: !15, file: !1, discriminator: 0)
