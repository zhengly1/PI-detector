; ModuleID = 'dzasum.ll'
source_filename = "dzasum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local double @cblas_dzasum(i32 noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 !dbg !14 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !22, metadata !DIExpression()), !dbg !31
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !23, metadata !DIExpression()), !dbg !31
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !24, metadata !DIExpression()), !dbg !31
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !25, metadata !DIExpression()), !dbg !32
  tail call void @llvm.dbg.value(metadata i32 0, metadata !30, metadata !DIExpression()), !dbg !32
  %4 = icmp sgt i32 %2, 0, !dbg !33
  tail call void @llvm.dbg.value(metadata i32 0, metadata !30, metadata !DIExpression()), !dbg !32
  tail call void @llvm.dbg.value(metadata i32 0, metadata !29, metadata !DIExpression()), !dbg !32
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !25, metadata !DIExpression()), !dbg !32
  %5 = icmp sgt i32 %0, 0
  %6 = and i1 %4, %5, !dbg !35
  br i1 %6, label %7, label %61, !dbg !35

7:                                                ; preds = %3
  %8 = zext nneg i32 %2 to i64, !dbg !36
  %9 = and i32 %0, 1, !dbg !36
  %10 = icmp eq i32 %0, 1, !dbg !36
  br i1 %10, label %46, label %11, !dbg !36

11:                                               ; preds = %7
  %12 = and i32 %0, -2, !dbg !36
  br label %13, !dbg !36

13:                                               ; preds = %13, %11
  %14 = phi i64 [ 0, %11 ], [ %40, %13 ]
  %15 = phi double [ 0.000000e+00, %11 ], [ %handler_result3, %13 ]
  %16 = phi i32 [ 0, %11 ], [ %41, %13 ]
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !30, metadata !DIExpression()), !dbg !32
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !29, metadata !DIExpression()), !dbg !32
  tail call void @llvm.dbg.value(metadata double %15, metadata !25, metadata !DIExpression()), !dbg !32
  %17 = trunc i64 %14 to i32, !dbg !38
  %18 = shl nuw nsw i32 %17, 1, !dbg !38
  %19 = zext nneg i32 %18 to i64, !dbg !38
  %20 = getelementptr inbounds double, ptr %1, i64 %19, !dbg !38
  %21 = load double, ptr %20, align 8, !dbg !38, !tbaa !41
  %22 = tail call double @llvm.fabs.f64(double %21), !dbg !45
  %23 = or disjoint i32 %18, 1, !dbg !46
  %24 = zext nneg i32 %23 to i64, !dbg !46
  %25 = getelementptr inbounds double, ptr %1, i64 %24, !dbg !46
  %26 = load double, ptr %25, align 8, !dbg !46, !tbaa !41
  %27 = tail call double @llvm.fabs.f64(double %26), !dbg !47
  %handler_result = call double @fAddHandlerDouble(double %22, double %27), !dbg !48
  %handler_result1 = call double @fAddHandlerDouble(double %15, double %handler_result), !dbg !49
  tail call void @llvm.dbg.value(metadata double %handler_result1, metadata !25, metadata !DIExpression()), !dbg !32
  %28 = add nuw nsw i64 %14, %8, !dbg !49
  tail call void @llvm.dbg.value(metadata i64 %28, metadata !30, metadata !DIExpression()), !dbg !32
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !29, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !32
  tail call void @llvm.dbg.value(metadata i64 %28, metadata !30, metadata !DIExpression()), !dbg !32
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !29, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !32
  tail call void @llvm.dbg.value(metadata double %handler_result1, metadata !25, metadata !DIExpression()), !dbg !32
  %29 = trunc i64 %28 to i32, !dbg !38
  %30 = shl nuw nsw i32 %29, 1, !dbg !38
  %31 = zext nneg i32 %30 to i64, !dbg !38
  %32 = getelementptr inbounds double, ptr %1, i64 %31, !dbg !38
  %33 = load double, ptr %32, align 8, !dbg !38, !tbaa !41
  %34 = tail call double @llvm.fabs.f64(double %33), !dbg !45
  %35 = or disjoint i32 %30, 1, !dbg !46
  %36 = zext nneg i32 %35 to i64, !dbg !46
  %37 = getelementptr inbounds double, ptr %1, i64 %36, !dbg !46
  %38 = load double, ptr %37, align 8, !dbg !46, !tbaa !41
  %39 = tail call double @llvm.fabs.f64(double %38), !dbg !47
  %handler_result2 = call double @fAddHandlerDouble(double %34, double %39), !dbg !48
  %handler_result3 = call double @fAddHandlerDouble(double %handler_result1, double %handler_result2), !dbg !49
  tail call void @llvm.dbg.value(metadata double %handler_result3, metadata !25, metadata !DIExpression()), !dbg !32
  %40 = add nuw nsw i64 %28, %8, !dbg !49
  tail call void @llvm.dbg.value(metadata i64 %40, metadata !30, metadata !DIExpression()), !dbg !32
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !29, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !32
  %41 = add i32 %16, 2, !dbg !36
  %42 = icmp eq i32 %41, %12, !dbg !36
  br i1 %42, label %43, label %13, !dbg !36, !llvm.loop !50

43:                                               ; preds = %13
  %44 = trunc i64 %40 to i32, !dbg !38
  %45 = shl nuw nsw i32 %44, 1, !dbg !38
  br label %46, !dbg !36

46:                                               ; preds = %43, %7
  %47 = phi double [ undef, %7 ], [ %handler_result3, %43 ]
  %48 = phi i32 [ 0, %7 ], [ %45, %43 ]
  %49 = phi double [ 0.000000e+00, %7 ], [ %handler_result3, %43 ]
  %50 = icmp eq i32 %9, 0, !dbg !36
  br i1 %50, label %61, label %51, !dbg !36

51:                                               ; preds = %46
  tail call void @llvm.dbg.value(metadata i32 %48, metadata !30, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)), !dbg !32
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !29, metadata !DIExpression()), !dbg !32
  tail call void @llvm.dbg.value(metadata double %49, metadata !25, metadata !DIExpression()), !dbg !32
  %52 = zext nneg i32 %48 to i64, !dbg !38
  %53 = getelementptr inbounds double, ptr %1, i64 %52, !dbg !38
  %54 = load double, ptr %53, align 8, !dbg !38, !tbaa !41
  %55 = tail call double @llvm.fabs.f64(double %54), !dbg !45
  %56 = or disjoint i32 %48, 1, !dbg !46
  %57 = zext nneg i32 %56 to i64, !dbg !46
  %58 = getelementptr inbounds double, ptr %1, i64 %57, !dbg !46
  %59 = load double, ptr %58, align 8, !dbg !46, !tbaa !41
  %60 = tail call double @llvm.fabs.f64(double %59), !dbg !47
  %handler_result4 = call double @fAddHandlerDouble(double %55, double %60), !dbg !48
  %handler_result5 = call double @fAddHandlerDouble(double %49, double %handler_result4), !dbg !53
  tail call void @llvm.dbg.value(metadata double %handler_result5, metadata !25, metadata !DIExpression()), !dbg !32
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 %48, i64 %8), metadata !30, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)), !dbg !32
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !29, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !32
  br label %61, !dbg !53

61:                                               ; preds = %51, %46, %3
  %62 = phi double [ 0.000000e+00, %3 ], [ %47, %46 ], [ %handler_result5, %51 ], !dbg !32
  ret double %62, !dbg !53
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
!1 = !DIFile(filename: "dzasum.c", directory: "/PI-detector/external/gsl/gsl-2.5/cblas", checksumkind: CSK_MD5, checksum: "e74e79568895b46a8830c081059f55d5")
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
!14 = distinct !DISubprogram(name: "cblas_dzasum", scope: !1, file: !1, line: 6, type: !15, scopeLine: 7, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !21)
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
!42 = !{!"double", !43, i64 0}
!43 = !{!"omnipotent char", !44, i64 0}
!44 = !{!"Simple C/C++ TBAA"}
!45 = !DILocation(line: 30, column: 10, scope: !39)
!46 = !DILocation(line: 30, column: 41, scope: !39)
!47 = !DILocation(line: 30, column: 36, scope: !39)
!48 = !DILocation(line: 30, column: 7, scope: !39)
!49 = !DILocation(line: 31, column: 8, scope: !39)
!50 = distinct !{!50, !36, !51, !52}
!51 = !DILocation(line: 32, column: 3, scope: !37)
!52 = !{!"llvm.loop.mustprogress"}
!53 = !DILocation(line: 11, column: 1, scope: !54)
!54 = !DILexicalBlockFile(scope: !14, file: !1, discriminator: 0)
