; ModuleID = 'dasum.ll'
source_filename = "dasum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local double @cblas_dasum(i32 noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 !dbg !10 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !19, metadata !DIExpression()), !dbg !28
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !20, metadata !DIExpression()), !dbg !28
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !21, metadata !DIExpression()), !dbg !28
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !22, metadata !DIExpression()), !dbg !29
  tail call void @llvm.dbg.value(metadata i32 0, metadata !27, metadata !DIExpression()), !dbg !29
  %4 = icmp sgt i32 %2, 0, !dbg !30
  tail call void @llvm.dbg.value(metadata i32 0, metadata !27, metadata !DIExpression()), !dbg !29
  tail call void @llvm.dbg.value(metadata i32 0, metadata !26, metadata !DIExpression()), !dbg !29
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !22, metadata !DIExpression()), !dbg !29
  %5 = icmp sgt i32 %0, 0
  %6 = and i1 %4, %5, !dbg !32
  br i1 %6, label %7, label %50, !dbg !32

7:                                                ; preds = %3
  %8 = zext nneg i32 %2 to i64, !dbg !33
  %9 = and i32 %0, 3, !dbg !33
  %10 = icmp ult i32 %0, 4, !dbg !33
  br i1 %10, label %35, label %11, !dbg !33

11:                                               ; preds = %7
  %12 = and i32 %0, -4, !dbg !33
  br label %13, !dbg !33

13:                                               ; preds = %13, %11
  %14 = phi i64 [ 0, %11 ], [ %32, %13 ]
  %15 = phi double [ 0.000000e+00, %11 ], [ %handler_result3, %13 ]
  %16 = phi i32 [ 0, %11 ], [ %33, %13 ]
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !27, metadata !DIExpression()), !dbg !29
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !26, metadata !DIExpression()), !dbg !29
  tail call void @llvm.dbg.value(metadata double %15, metadata !22, metadata !DIExpression()), !dbg !29
  %17 = getelementptr inbounds double, ptr %1, i64 %14, !dbg !35
  %18 = load double, ptr %17, align 8, !dbg !35, !tbaa !38
  %19 = tail call double @llvm.fabs.f64(double %18), !dbg !42
  %handler_result = call double @fAddHandlerDouble(double %15, double %19), !dbg !43
  tail call void @llvm.dbg.value(metadata double %handler_result, metadata !22, metadata !DIExpression()), !dbg !29
  %20 = add nuw nsw i64 %14, %8, !dbg !43
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !27, metadata !DIExpression()), !dbg !29
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !26, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !29
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !27, metadata !DIExpression()), !dbg !29
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !26, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !29
  tail call void @llvm.dbg.value(metadata double %handler_result, metadata !22, metadata !DIExpression()), !dbg !29
  %21 = getelementptr inbounds double, ptr %1, i64 %20, !dbg !35
  %22 = load double, ptr %21, align 8, !dbg !35, !tbaa !38
  %23 = tail call double @llvm.fabs.f64(double %22), !dbg !42
  %handler_result1 = call double @fAddHandlerDouble(double %handler_result, double %23), !dbg !43
  tail call void @llvm.dbg.value(metadata double %handler_result1, metadata !22, metadata !DIExpression()), !dbg !29
  %24 = add nuw nsw i64 %20, %8, !dbg !43
  tail call void @llvm.dbg.value(metadata i64 %24, metadata !27, metadata !DIExpression()), !dbg !29
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !26, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !29
  tail call void @llvm.dbg.value(metadata i64 %24, metadata !27, metadata !DIExpression()), !dbg !29
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !26, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !29
  tail call void @llvm.dbg.value(metadata double %handler_result1, metadata !22, metadata !DIExpression()), !dbg !29
  %25 = getelementptr inbounds double, ptr %1, i64 %24, !dbg !35
  %26 = load double, ptr %25, align 8, !dbg !35, !tbaa !38
  %27 = tail call double @llvm.fabs.f64(double %26), !dbg !42
  %handler_result2 = call double @fAddHandlerDouble(double %handler_result1, double %27), !dbg !43
  tail call void @llvm.dbg.value(metadata double %handler_result2, metadata !22, metadata !DIExpression()), !dbg !29
  %28 = add nuw nsw i64 %24, %8, !dbg !43
  tail call void @llvm.dbg.value(metadata i64 %28, metadata !27, metadata !DIExpression()), !dbg !29
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !26, metadata !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value)), !dbg !29
  tail call void @llvm.dbg.value(metadata i64 %28, metadata !27, metadata !DIExpression()), !dbg !29
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !26, metadata !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value)), !dbg !29
  tail call void @llvm.dbg.value(metadata double %handler_result2, metadata !22, metadata !DIExpression()), !dbg !29
  %29 = getelementptr inbounds double, ptr %1, i64 %28, !dbg !35
  %30 = load double, ptr %29, align 8, !dbg !35, !tbaa !38
  %31 = tail call double @llvm.fabs.f64(double %30), !dbg !42
  %handler_result3 = call double @fAddHandlerDouble(double %handler_result2, double %31), !dbg !43
  tail call void @llvm.dbg.value(metadata double %handler_result3, metadata !22, metadata !DIExpression()), !dbg !29
  %32 = add nuw nsw i64 %28, %8, !dbg !43
  tail call void @llvm.dbg.value(metadata i64 %32, metadata !27, metadata !DIExpression()), !dbg !29
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !26, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !29
  %33 = add i32 %16, 4, !dbg !33
  %34 = icmp eq i32 %33, %12, !dbg !33
  br i1 %34, label %35, label %13, !dbg !33, !llvm.loop !44

35:                                               ; preds = %13, %7
  %36 = phi double [ undef, %7 ], [ %handler_result3, %13 ]
  %37 = phi i64 [ 0, %7 ], [ %32, %13 ]
  %38 = phi double [ 0.000000e+00, %7 ], [ %handler_result3, %13 ]
  %39 = icmp eq i32 %9, 0, !dbg !33
  br i1 %39, label %50, label %40, !dbg !33

40:                                               ; preds = %40, %35
  %41 = phi i64 [ %47, %40 ], [ %37, %35 ]
  %42 = phi double [ %handler_result4, %40 ], [ %38, %35 ]
  %43 = phi i32 [ %48, %40 ], [ 0, %35 ]
  tail call void @llvm.dbg.value(metadata i64 %41, metadata !27, metadata !DIExpression()), !dbg !29
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !26, metadata !DIExpression()), !dbg !29
  tail call void @llvm.dbg.value(metadata double %42, metadata !22, metadata !DIExpression()), !dbg !29
  %44 = getelementptr inbounds double, ptr %1, i64 %41, !dbg !35
  %45 = load double, ptr %44, align 8, !dbg !35, !tbaa !38
  %46 = tail call double @llvm.fabs.f64(double %45), !dbg !42
  %handler_result4 = call double @fAddHandlerDouble(double %42, double %46), !dbg !43
  tail call void @llvm.dbg.value(metadata double %handler_result4, metadata !22, metadata !DIExpression()), !dbg !29
  %47 = add nuw nsw i64 %41, %8, !dbg !43
  tail call void @llvm.dbg.value(metadata i64 %47, metadata !27, metadata !DIExpression()), !dbg !29
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !26, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !29
  %48 = add i32 %43, 1, !dbg !33
  %49 = icmp eq i32 %48, %9, !dbg !33
  br i1 %49, label %50, label %40, !dbg !33, !llvm.loop !47

50:                                               ; preds = %40, %35, %3
  %51 = phi double [ 0.000000e+00, %3 ], [ %36, %35 ], [ %handler_result4, %40 ], !dbg !29
  ret double %51, !dbg !49
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

declare double @fAddHandlerDouble(double, double)

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "dasum.c", directory: "/PI-detector/external/gsl/gsl-2.5/cblas", checksumkind: CSK_MD5, checksum: "eb3fffff86b48e303a80a7d63a5d7dbb")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!9 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!10 = distinct !DISubprogram(name: "cblas_dasum", scope: !1, file: !1, line: 6, type: !11, scopeLine: 7, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !18)
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !14, !16, !14}
!13 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!14 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!18 = !{!19, !20, !21, !22, !26, !27}
!19 = !DILocalVariable(name: "N", arg: 1, scope: !10, file: !1, line: 6, type: !14)
!20 = !DILocalVariable(name: "X", arg: 2, scope: !10, file: !1, line: 6, type: !16)
!21 = !DILocalVariable(name: "incX", arg: 3, scope: !10, file: !1, line: 6, type: !14)
!22 = !DILocalVariable(name: "r", scope: !23, file: !24, line: 21, type: !13)
!23 = distinct !DILexicalBlock(scope: !25, file: !24, line: 20, column: 1)
!24 = !DIFile(filename: "./source_asum_r.h", directory: "/PI-detector/external/gsl/gsl-2.5/cblas", checksumkind: CSK_MD5, checksum: "bb2d829f60bdb17a9c25a7d33b3110bf")
!25 = !DILexicalBlockFile(scope: !10, file: !24, discriminator: 0)
!26 = !DILocalVariable(name: "i", scope: !23, file: !24, line: 22, type: !15)
!27 = !DILocalVariable(name: "ix", scope: !23, file: !24, line: 23, type: !15)
!28 = !DILocation(line: 0, scope: !10)
!29 = !DILocation(line: 0, scope: !23)
!30 = !DILocation(line: 25, column: 12, scope: !31)
!31 = distinct !DILexicalBlock(scope: !23, file: !24, line: 25, column: 7)
!32 = !DILocation(line: 25, column: 7, scope: !23)
!33 = !DILocation(line: 29, column: 3, scope: !34)
!34 = distinct !DILexicalBlock(scope: !23, file: !24, line: 29, column: 3)
!35 = !DILocation(line: 30, column: 15, scope: !36)
!36 = distinct !DILexicalBlock(scope: !37, file: !24, line: 29, column: 27)
!37 = distinct !DILexicalBlock(scope: !34, file: !24, line: 29, column: 3)
!38 = !{!39, !39, i64 0}
!39 = !{!"double", !40, i64 0}
!40 = !{!"omnipotent char", !41, i64 0}
!41 = !{!"Simple C/C++ TBAA"}
!42 = !DILocation(line: 30, column: 10, scope: !36)
!43 = !DILocation(line: 31, column: 8, scope: !36)
!44 = distinct !{!44, !33, !45, !46}
!45 = !DILocation(line: 32, column: 3, scope: !34)
!46 = !{!"llvm.loop.mustprogress"}
!47 = distinct !{!47, !48}
!48 = !{!"llvm.loop.unroll.disable"}
!49 = !DILocation(line: 11, column: 1, scope: !50)
!50 = !DILexicalBlockFile(scope: !10, file: !1, discriminator: 0)
