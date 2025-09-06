; ModuleID = 'dscal.c'
source_filename = "dscal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @cblas_dscal(i32 noundef %0, double noundef %1, ptr nocapture noundef %2, i32 noundef %3) local_unnamed_addr #0 !dbg !10 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !19, metadata !DIExpression()), !dbg !28
  tail call void @llvm.dbg.value(metadata double %1, metadata !20, metadata !DIExpression()), !dbg !28
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !21, metadata !DIExpression()), !dbg !28
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !22, metadata !DIExpression()), !dbg !28
  tail call void @llvm.dbg.value(metadata i32 0, metadata !27, metadata !DIExpression()), !dbg !29
  %5 = icmp sgt i32 %3, 0, !dbg !30
  tail call void @llvm.dbg.value(metadata i32 0, metadata !27, metadata !DIExpression()), !dbg !29
  tail call void @llvm.dbg.value(metadata i32 0, metadata !23, metadata !DIExpression()), !dbg !29
  %6 = icmp sgt i32 %0, 0
  %7 = and i1 %5, %6, !dbg !32
  br i1 %7, label %8, label %47, !dbg !32

8:                                                ; preds = %4
  %9 = zext nneg i32 %3 to i64, !dbg !33
  %10 = and i32 %0, 3, !dbg !33
  %11 = icmp ult i32 %0, 4, !dbg !33
  br i1 %11, label %35, label %12, !dbg !33

12:                                               ; preds = %8
  %13 = and i32 %0, -4, !dbg !33
  br label %14, !dbg !33

14:                                               ; preds = %14, %12
  %15 = phi i64 [ 0, %12 ], [ %32, %14 ]
  %16 = phi i32 [ 0, %12 ], [ %33, %14 ]
  tail call void @llvm.dbg.value(metadata i64 %15, metadata !27, metadata !DIExpression()), !dbg !29
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !23, metadata !DIExpression()), !dbg !29
  %17 = getelementptr inbounds double, ptr %2, i64 %15, !dbg !35
  %18 = load double, ptr %17, align 8, !dbg !38, !tbaa !39
  %19 = fmul double %18, %1, !dbg !38
  store double %19, ptr %17, align 8, !dbg !38, !tbaa !39
  %20 = add nuw nsw i64 %15, %9, !dbg !43
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !27, metadata !DIExpression()), !dbg !29
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !23, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !29
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !27, metadata !DIExpression()), !dbg !29
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !23, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !29
  %21 = getelementptr inbounds double, ptr %2, i64 %20, !dbg !35
  %22 = load double, ptr %21, align 8, !dbg !38, !tbaa !39
  %23 = fmul double %22, %1, !dbg !38
  store double %23, ptr %21, align 8, !dbg !38, !tbaa !39
  %24 = add nuw nsw i64 %20, %9, !dbg !43
  tail call void @llvm.dbg.value(metadata i64 %24, metadata !27, metadata !DIExpression()), !dbg !29
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !23, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !29
  tail call void @llvm.dbg.value(metadata i64 %24, metadata !27, metadata !DIExpression()), !dbg !29
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !23, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !29
  %25 = getelementptr inbounds double, ptr %2, i64 %24, !dbg !35
  %26 = load double, ptr %25, align 8, !dbg !38, !tbaa !39
  %27 = fmul double %26, %1, !dbg !38
  store double %27, ptr %25, align 8, !dbg !38, !tbaa !39
  %28 = add nuw nsw i64 %24, %9, !dbg !43
  tail call void @llvm.dbg.value(metadata i64 %28, metadata !27, metadata !DIExpression()), !dbg !29
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !23, metadata !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value)), !dbg !29
  tail call void @llvm.dbg.value(metadata i64 %28, metadata !27, metadata !DIExpression()), !dbg !29
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !23, metadata !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value)), !dbg !29
  %29 = getelementptr inbounds double, ptr %2, i64 %28, !dbg !35
  %30 = load double, ptr %29, align 8, !dbg !38, !tbaa !39
  %31 = fmul double %30, %1, !dbg !38
  store double %31, ptr %29, align 8, !dbg !38, !tbaa !39
  %32 = add nuw nsw i64 %28, %9, !dbg !43
  tail call void @llvm.dbg.value(metadata i64 %32, metadata !27, metadata !DIExpression()), !dbg !29
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !23, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !29
  %33 = add i32 %16, 4, !dbg !33
  %34 = icmp eq i32 %33, %13, !dbg !33
  br i1 %34, label %35, label %14, !dbg !33, !llvm.loop !44

35:                                               ; preds = %14, %8
  %36 = phi i64 [ 0, %8 ], [ %32, %14 ]
  %37 = icmp eq i32 %10, 0, !dbg !33
  br i1 %37, label %47, label %38, !dbg !33

38:                                               ; preds = %35, %38
  %39 = phi i64 [ %44, %38 ], [ %36, %35 ]
  %40 = phi i32 [ %45, %38 ], [ 0, %35 ]
  tail call void @llvm.dbg.value(metadata i64 %39, metadata !27, metadata !DIExpression()), !dbg !29
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !23, metadata !DIExpression()), !dbg !29
  %41 = getelementptr inbounds double, ptr %2, i64 %39, !dbg !35
  %42 = load double, ptr %41, align 8, !dbg !38, !tbaa !39
  %43 = fmul double %42, %1, !dbg !38
  store double %43, ptr %41, align 8, !dbg !38, !tbaa !39
  %44 = add nuw nsw i64 %39, %9, !dbg !43
  tail call void @llvm.dbg.value(metadata i64 %44, metadata !27, metadata !DIExpression()), !dbg !29
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !23, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !29
  %45 = add i32 %40, 1, !dbg !33
  %46 = icmp eq i32 %45, %10, !dbg !33
  br i1 %46, label %47, label %38, !dbg !33, !llvm.loop !47

47:                                               ; preds = %35, %38, %4
  ret void, !dbg !49
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "dscal.c", directory: "/PI-detector/external/gsl/gsl-2.5/cblas", checksumkind: CSK_MD5, checksum: "f78d8e77dac71688dfe0a731324871f5")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!9 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!10 = distinct !DISubprogram(name: "cblas_dscal", scope: !1, file: !1, line: 6, type: !11, scopeLine: 7, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !18)
!11 = !DISubroutineType(types: !12)
!12 = !{null, !13, !15, !17, !13}
!13 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!16 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!18 = !{!19, !20, !21, !22, !23, !27}
!19 = !DILocalVariable(name: "N", arg: 1, scope: !10, file: !1, line: 6, type: !13)
!20 = !DILocalVariable(name: "alpha", arg: 2, scope: !10, file: !1, line: 6, type: !15)
!21 = !DILocalVariable(name: "X", arg: 3, scope: !10, file: !1, line: 6, type: !17)
!22 = !DILocalVariable(name: "incX", arg: 4, scope: !10, file: !1, line: 6, type: !13)
!23 = !DILocalVariable(name: "i", scope: !24, file: !25, line: 21, type: !14)
!24 = distinct !DILexicalBlock(scope: !26, file: !25, line: 20, column: 1)
!25 = !DIFile(filename: "./source_scal_r.h", directory: "/PI-detector/external/gsl/gsl-2.5/cblas", checksumkind: CSK_MD5, checksum: "d7dce139a310cc2813411cafce63a4a2")
!26 = !DILexicalBlockFile(scope: !10, file: !25, discriminator: 0)
!27 = !DILocalVariable(name: "ix", scope: !24, file: !25, line: 22, type: !14)
!28 = !DILocation(line: 0, scope: !10)
!29 = !DILocation(line: 0, scope: !24)
!30 = !DILocation(line: 24, column: 12, scope: !31)
!31 = distinct !DILexicalBlock(scope: !24, file: !25, line: 24, column: 7)
!32 = !DILocation(line: 24, column: 7, scope: !24)
!33 = !DILocation(line: 28, column: 3, scope: !34)
!34 = distinct !DILexicalBlock(scope: !24, file: !25, line: 28, column: 3)
!35 = !DILocation(line: 29, column: 5, scope: !36)
!36 = distinct !DILexicalBlock(scope: !37, file: !25, line: 28, column: 27)
!37 = distinct !DILexicalBlock(scope: !34, file: !25, line: 28, column: 3)
!38 = !DILocation(line: 29, column: 11, scope: !36)
!39 = !{!40, !40, i64 0}
!40 = !{!"double", !41, i64 0}
!41 = !{!"omnipotent char", !42, i64 0}
!42 = !{!"Simple C/C++ TBAA"}
!43 = !DILocation(line: 30, column: 8, scope: !36)
!44 = distinct !{!44, !33, !45, !46}
!45 = !DILocation(line: 31, column: 3, scope: !34)
!46 = !{!"llvm.loop.mustprogress"}
!47 = distinct !{!47, !48}
!48 = !{!"llvm.loop.unroll.disable"}
!49 = !DILocation(line: 11, column: 1, scope: !50)
!50 = !DILexicalBlockFile(scope: !10, file: !1, discriminator: 0)
