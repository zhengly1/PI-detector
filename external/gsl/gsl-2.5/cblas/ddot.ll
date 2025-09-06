; ModuleID = 'ddot.c'
source_filename = "ddot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local double @cblas_ddot(i32 noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4) local_unnamed_addr #0 !dbg !10 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !19, metadata !DIExpression()), !dbg !31
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !20, metadata !DIExpression()), !dbg !31
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !21, metadata !DIExpression()), !dbg !31
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !22, metadata !DIExpression()), !dbg !31
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !23, metadata !DIExpression()), !dbg !31
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !24, metadata !DIExpression()), !dbg !32
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !29, metadata !DIExpression()), !dbg !32
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !30, metadata !DIExpression()), !dbg !32
  tail call void @llvm.dbg.value(metadata i32 0, metadata !28, metadata !DIExpression()), !dbg !32
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !29, metadata !DIExpression()), !dbg !32
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !24, metadata !DIExpression()), !dbg !32
  %6 = icmp sgt i32 %0, 0, !dbg !33
  br i1 %6, label %7, label %59, !dbg !36

7:                                                ; preds = %5
  %8 = icmp sgt i32 %4, 0, !dbg !37
  %9 = sub nsw i32 1, %0, !dbg !38
  %10 = mul i32 %9, %4, !dbg !37
  %11 = select i1 %8, i32 0, i32 %10, !dbg !37
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !30, metadata !DIExpression()), !dbg !32
  %12 = icmp sgt i32 %2, 0, !dbg !38
  %13 = mul i32 %9, %2, !dbg !38
  %14 = select i1 %12, i32 0, i32 %13, !dbg !38
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !29, metadata !DIExpression()), !dbg !32
  %15 = sext i32 %11 to i64, !dbg !36
  %16 = sext i32 %4 to i64, !dbg !36
  %17 = sext i32 %14 to i64, !dbg !36
  %18 = sext i32 %2 to i64, !dbg !36
  %19 = and i32 %0, 1, !dbg !36
  %20 = icmp eq i32 %0, 1, !dbg !36
  br i1 %20, label %46, label %21, !dbg !36

21:                                               ; preds = %7
  %22 = and i32 %0, 2147483646, !dbg !36
  br label %23, !dbg !36

23:                                               ; preds = %23, %21
  %24 = phi i64 [ %17, %21 ], [ %42, %23 ]
  %25 = phi i64 [ %15, %21 ], [ %43, %23 ]
  %26 = phi double [ 0.000000e+00, %21 ], [ %41, %23 ]
  %27 = phi i32 [ 0, %21 ], [ %44, %23 ]
  tail call void @llvm.dbg.value(metadata i64 %25, metadata !30, metadata !DIExpression()), !dbg !32
  tail call void @llvm.dbg.value(metadata i64 %24, metadata !29, metadata !DIExpression()), !dbg !32
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !28, metadata !DIExpression()), !dbg !32
  tail call void @llvm.dbg.value(metadata double %26, metadata !24, metadata !DIExpression()), !dbg !32
  %28 = getelementptr inbounds double, ptr %1, i64 %24, !dbg !39
  %29 = load double, ptr %28, align 8, !dbg !39, !tbaa !41
  %30 = getelementptr inbounds double, ptr %3, i64 %25, !dbg !45
  %31 = load double, ptr %30, align 8, !dbg !45, !tbaa !41
  %32 = fmul double %29, %31, !dbg !46
  %33 = fadd double %26, %32, !dbg !47
  tail call void @llvm.dbg.value(metadata double %33, metadata !24, metadata !DIExpression()), !dbg !32
  %34 = add i64 %24, %18, !dbg !48
  tail call void @llvm.dbg.value(metadata i64 %34, metadata !29, metadata !DIExpression()), !dbg !32
  %35 = add i64 %25, %16, !dbg !49
  tail call void @llvm.dbg.value(metadata i64 %35, metadata !30, metadata !DIExpression()), !dbg !32
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !28, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !32
  tail call void @llvm.dbg.value(metadata i64 %35, metadata !30, metadata !DIExpression()), !dbg !32
  tail call void @llvm.dbg.value(metadata i64 %34, metadata !29, metadata !DIExpression()), !dbg !32
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !28, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !32
  tail call void @llvm.dbg.value(metadata double %33, metadata !24, metadata !DIExpression()), !dbg !32
  %36 = getelementptr inbounds double, ptr %1, i64 %34, !dbg !39
  %37 = load double, ptr %36, align 8, !dbg !39, !tbaa !41
  %38 = getelementptr inbounds double, ptr %3, i64 %35, !dbg !45
  %39 = load double, ptr %38, align 8, !dbg !45, !tbaa !41
  %40 = fmul double %37, %39, !dbg !46
  %41 = fadd double %33, %40, !dbg !47
  tail call void @llvm.dbg.value(metadata double %41, metadata !24, metadata !DIExpression()), !dbg !32
  %42 = add i64 %34, %18, !dbg !48
  tail call void @llvm.dbg.value(metadata i64 %42, metadata !29, metadata !DIExpression()), !dbg !32
  %43 = add i64 %35, %16, !dbg !49
  tail call void @llvm.dbg.value(metadata i64 %43, metadata !30, metadata !DIExpression()), !dbg !32
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !28, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !32
  %44 = add i32 %27, 2, !dbg !36
  %45 = icmp eq i32 %44, %22, !dbg !36
  br i1 %45, label %46, label %23, !dbg !36, !llvm.loop !50

46:                                               ; preds = %23, %7
  %47 = phi double [ undef, %7 ], [ %41, %23 ]
  %48 = phi i64 [ %17, %7 ], [ %42, %23 ]
  %49 = phi i64 [ %15, %7 ], [ %43, %23 ]
  %50 = phi double [ 0.000000e+00, %7 ], [ %41, %23 ]
  %51 = icmp eq i32 %19, 0, !dbg !36
  br i1 %51, label %59, label %52, !dbg !36

52:                                               ; preds = %46
  tail call void @llvm.dbg.value(metadata i64 %49, metadata !30, metadata !DIExpression()), !dbg !32
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !29, metadata !DIExpression()), !dbg !32
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !28, metadata !DIExpression()), !dbg !32
  tail call void @llvm.dbg.value(metadata double %50, metadata !24, metadata !DIExpression()), !dbg !32
  %53 = getelementptr inbounds double, ptr %1, i64 %48, !dbg !39
  %54 = load double, ptr %53, align 8, !dbg !39, !tbaa !41
  %55 = getelementptr inbounds double, ptr %3, i64 %49, !dbg !45
  %56 = load double, ptr %55, align 8, !dbg !45, !tbaa !41
  %57 = fmul double %54, %56, !dbg !46
  %58 = fadd double %50, %57, !dbg !47
  tail call void @llvm.dbg.value(metadata double %58, metadata !24, metadata !DIExpression()), !dbg !32
  tail call void @llvm.dbg.value(metadata !DIArgList(i64 %48, i64 %18), metadata !29, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !32
  tail call void @llvm.dbg.value(metadata !DIArgList(i64 %49, i64 %16), metadata !30, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !32
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !28, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !32
  br label %59, !dbg !53

59:                                               ; preds = %52, %46, %5
  %60 = phi double [ 0.000000e+00, %5 ], [ %47, %46 ], [ %58, %52 ], !dbg !32
  ret double %60, !dbg !53
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "ddot.c", directory: "/PI-detector/external/gsl/gsl-2.5/cblas", checksumkind: CSK_MD5, checksum: "efd184229d4e9b26434610fda03eb845")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!9 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!10 = distinct !DISubprogram(name: "cblas_ddot", scope: !1, file: !1, line: 6, type: !11, scopeLine: 8, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !18)
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !14, !16, !14, !16, !14}
!13 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!14 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!18 = !{!19, !20, !21, !22, !23, !24, !28, !29, !30}
!19 = !DILocalVariable(name: "N", arg: 1, scope: !10, file: !1, line: 6, type: !14)
!20 = !DILocalVariable(name: "X", arg: 2, scope: !10, file: !1, line: 6, type: !16)
!21 = !DILocalVariable(name: "incX", arg: 3, scope: !10, file: !1, line: 6, type: !14)
!22 = !DILocalVariable(name: "Y", arg: 4, scope: !10, file: !1, line: 6, type: !16)
!23 = !DILocalVariable(name: "incY", arg: 5, scope: !10, file: !1, line: 7, type: !14)
!24 = !DILocalVariable(name: "r", scope: !25, file: !26, line: 21, type: !13)
!25 = distinct !DILexicalBlock(scope: !27, file: !26, line: 20, column: 1)
!26 = !DIFile(filename: "./source_dot_r.h", directory: "/PI-detector/external/gsl/gsl-2.5/cblas", checksumkind: CSK_MD5, checksum: "d74193a7e468f4ee0d498d5e34db24a8")
!27 = !DILexicalBlockFile(scope: !10, file: !26, discriminator: 0)
!28 = !DILocalVariable(name: "i", scope: !25, file: !26, line: 22, type: !15)
!29 = !DILocalVariable(name: "ix", scope: !25, file: !26, line: 23, type: !15)
!30 = !DILocalVariable(name: "iy", scope: !25, file: !26, line: 24, type: !15)
!31 = !DILocation(line: 0, scope: !10)
!32 = !DILocation(line: 0, scope: !25)
!33 = !DILocation(line: 26, column: 17, scope: !34)
!34 = distinct !DILexicalBlock(scope: !35, file: !26, line: 26, column: 3)
!35 = distinct !DILexicalBlock(scope: !25, file: !26, line: 26, column: 3)
!36 = !DILocation(line: 26, column: 3, scope: !35)
!37 = !DILocation(line: 24, column: 14, scope: !25)
!38 = !DILocation(line: 23, column: 14, scope: !25)
!39 = !DILocation(line: 27, column: 10, scope: !40)
!40 = distinct !DILexicalBlock(scope: !34, file: !26, line: 26, column: 27)
!41 = !{!42, !42, i64 0}
!42 = !{!"double", !43, i64 0}
!43 = !{!"omnipotent char", !44, i64 0}
!44 = !{!"Simple C/C++ TBAA"}
!45 = !DILocation(line: 27, column: 18, scope: !40)
!46 = !DILocation(line: 27, column: 16, scope: !40)
!47 = !DILocation(line: 27, column: 7, scope: !40)
!48 = !DILocation(line: 28, column: 8, scope: !40)
!49 = !DILocation(line: 29, column: 8, scope: !40)
!50 = distinct !{!50, !36, !51, !52}
!51 = !DILocation(line: 30, column: 3, scope: !35)
!52 = !{!"llvm.loop.mustprogress"}
!53 = !DILocation(line: 32, column: 3, scope: !25)
