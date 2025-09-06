; ModuleID = 'dswap.c'
source_filename = "dswap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @cblas_dswap(i32 noundef %0, ptr nocapture noundef %1, i32 noundef %2, ptr nocapture noundef %3, i32 noundef %4) local_unnamed_addr #0 !dbg !10 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !18, metadata !DIExpression()), !dbg !34
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !19, metadata !DIExpression()), !dbg !34
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !20, metadata !DIExpression()), !dbg !34
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !21, metadata !DIExpression()), !dbg !34
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !22, metadata !DIExpression()), !dbg !34
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !27, metadata !DIExpression()), !dbg !35
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !28, metadata !DIExpression()), !dbg !35
  tail call void @llvm.dbg.value(metadata i32 0, metadata !23, metadata !DIExpression()), !dbg !35
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !27, metadata !DIExpression()), !dbg !35
  %6 = icmp sgt i32 %0, 0, !dbg !36
  br i1 %6, label %7, label %50, !dbg !37

7:                                                ; preds = %5
  %8 = icmp sgt i32 %4, 0, !dbg !38
  %9 = sub nsw i32 1, %0, !dbg !39
  %10 = mul i32 %9, %4, !dbg !38
  %11 = select i1 %8, i32 0, i32 %10, !dbg !38
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !28, metadata !DIExpression()), !dbg !35
  %12 = icmp sgt i32 %2, 0, !dbg !39
  %13 = mul i32 %9, %2, !dbg !39
  %14 = select i1 %12, i32 0, i32 %13, !dbg !39
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !27, metadata !DIExpression()), !dbg !35
  %15 = sext i32 %11 to i64, !dbg !37
  %16 = sext i32 %4 to i64, !dbg !37
  %17 = sext i32 %14 to i64, !dbg !37
  %18 = sext i32 %2 to i64, !dbg !37
  %19 = and i32 %0, 1, !dbg !37
  %20 = icmp eq i32 %0, 1, !dbg !37
  br i1 %20, label %41, label %21, !dbg !37

21:                                               ; preds = %7
  %22 = and i32 %0, 2147483646, !dbg !37
  br label %23, !dbg !37

23:                                               ; preds = %23, %21
  %24 = phi i64 [ %17, %21 ], [ %37, %23 ]
  %25 = phi i64 [ %15, %21 ], [ %38, %23 ]
  %26 = phi i32 [ 0, %21 ], [ %39, %23 ]
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !23, metadata !DIExpression()), !dbg !35
  tail call void @llvm.dbg.value(metadata i64 %25, metadata !28, metadata !DIExpression()), !dbg !35
  tail call void @llvm.dbg.value(metadata i64 %24, metadata !27, metadata !DIExpression()), !dbg !35
  %27 = getelementptr inbounds double, ptr %1, i64 %24, !dbg !40
  %28 = load double, ptr %27, align 8, !dbg !40, !tbaa !41
  tail call void @llvm.dbg.value(metadata double %28, metadata !29, metadata !DIExpression()), !dbg !45
  %29 = getelementptr inbounds double, ptr %3, i64 %25, !dbg !46
  %30 = load double, ptr %29, align 8, !dbg !46, !tbaa !41
  store double %30, ptr %27, align 8, !dbg !47, !tbaa !41
  store double %28, ptr %29, align 8, !dbg !48, !tbaa !41
  %31 = add i64 %24, %18, !dbg !49
  tail call void @llvm.dbg.value(metadata i64 %31, metadata !27, metadata !DIExpression()), !dbg !35
  %32 = add i64 %25, %16, !dbg !50
  tail call void @llvm.dbg.value(metadata i64 %32, metadata !28, metadata !DIExpression()), !dbg !35
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !23, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !35
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !23, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !35
  tail call void @llvm.dbg.value(metadata i64 %32, metadata !28, metadata !DIExpression()), !dbg !35
  tail call void @llvm.dbg.value(metadata i64 %31, metadata !27, metadata !DIExpression()), !dbg !35
  %33 = getelementptr inbounds double, ptr %1, i64 %31, !dbg !40
  %34 = load double, ptr %33, align 8, !dbg !40, !tbaa !41
  tail call void @llvm.dbg.value(metadata double %34, metadata !29, metadata !DIExpression()), !dbg !45
  %35 = getelementptr inbounds double, ptr %3, i64 %32, !dbg !46
  %36 = load double, ptr %35, align 8, !dbg !46, !tbaa !41
  store double %36, ptr %33, align 8, !dbg !47, !tbaa !41
  store double %34, ptr %35, align 8, !dbg !48, !tbaa !41
  %37 = add i64 %31, %18, !dbg !49
  tail call void @llvm.dbg.value(metadata i64 %37, metadata !27, metadata !DIExpression()), !dbg !35
  %38 = add i64 %32, %16, !dbg !50
  tail call void @llvm.dbg.value(metadata i64 %38, metadata !28, metadata !DIExpression()), !dbg !35
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !23, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !35
  %39 = add i32 %26, 2, !dbg !37
  %40 = icmp eq i32 %39, %22, !dbg !37
  br i1 %40, label %41, label %23, !dbg !37, !llvm.loop !51

41:                                               ; preds = %23, %7
  %42 = phi i64 [ %17, %7 ], [ %37, %23 ]
  %43 = phi i64 [ %15, %7 ], [ %38, %23 ]
  %44 = icmp eq i32 %19, 0, !dbg !37
  br i1 %44, label %50, label %45, !dbg !37

45:                                               ; preds = %41
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !23, metadata !DIExpression()), !dbg !35
  tail call void @llvm.dbg.value(metadata i64 %43, metadata !28, metadata !DIExpression()), !dbg !35
  tail call void @llvm.dbg.value(metadata i64 %42, metadata !27, metadata !DIExpression()), !dbg !35
  %46 = getelementptr inbounds double, ptr %1, i64 %42, !dbg !40
  %47 = load double, ptr %46, align 8, !dbg !40, !tbaa !41
  tail call void @llvm.dbg.value(metadata double %47, metadata !29, metadata !DIExpression()), !dbg !45
  %48 = getelementptr inbounds double, ptr %3, i64 %43, !dbg !46
  %49 = load double, ptr %48, align 8, !dbg !46, !tbaa !41
  store double %49, ptr %46, align 8, !dbg !47, !tbaa !41
  store double %47, ptr %48, align 8, !dbg !48, !tbaa !41
  tail call void @llvm.dbg.value(metadata !DIArgList(i64 %42, i64 %18), metadata !27, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !35
  tail call void @llvm.dbg.value(metadata !DIArgList(i64 %43, i64 %16), metadata !28, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !35
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !23, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !35
  br label %50, !dbg !54

50:                                               ; preds = %45, %41, %5
  ret void, !dbg !54
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "dswap.c", directory: "/PI-detector/external/gsl/gsl-2.5/cblas", checksumkind: CSK_MD5, checksum: "6610cb6fc0fc32da663a7ff75e49007c")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!9 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!10 = distinct !DISubprogram(name: "cblas_dswap", scope: !1, file: !1, line: 6, type: !11, scopeLine: 8, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !17)
!11 = !DISubroutineType(types: !12)
!12 = !{null, !13, !15, !13, !15, !13}
!13 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!17 = !{!18, !19, !20, !21, !22, !23, !27, !28, !29}
!18 = !DILocalVariable(name: "N", arg: 1, scope: !10, file: !1, line: 6, type: !13)
!19 = !DILocalVariable(name: "X", arg: 2, scope: !10, file: !1, line: 6, type: !15)
!20 = !DILocalVariable(name: "incX", arg: 3, scope: !10, file: !1, line: 6, type: !13)
!21 = !DILocalVariable(name: "Y", arg: 4, scope: !10, file: !1, line: 6, type: !15)
!22 = !DILocalVariable(name: "incY", arg: 5, scope: !10, file: !1, line: 7, type: !13)
!23 = !DILocalVariable(name: "i", scope: !24, file: !25, line: 21, type: !14)
!24 = distinct !DILexicalBlock(scope: !26, file: !25, line: 20, column: 1)
!25 = !DIFile(filename: "./source_swap_r.h", directory: "/PI-detector/external/gsl/gsl-2.5/cblas", checksumkind: CSK_MD5, checksum: "f2addc47b7a29677bbd975e5a4c4b58d")
!26 = !DILexicalBlockFile(scope: !10, file: !25, discriminator: 0)
!27 = !DILocalVariable(name: "ix", scope: !24, file: !25, line: 22, type: !14)
!28 = !DILocalVariable(name: "iy", scope: !24, file: !25, line: 23, type: !14)
!29 = !DILocalVariable(name: "tmp", scope: !30, file: !25, line: 25, type: !33)
!30 = distinct !DILexicalBlock(scope: !31, file: !25, line: 24, column: 27)
!31 = distinct !DILexicalBlock(scope: !32, file: !25, line: 24, column: 3)
!32 = distinct !DILexicalBlock(scope: !24, file: !25, line: 24, column: 3)
!33 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!34 = !DILocation(line: 0, scope: !10)
!35 = !DILocation(line: 0, scope: !24)
!36 = !DILocation(line: 24, column: 17, scope: !31)
!37 = !DILocation(line: 24, column: 3, scope: !32)
!38 = !DILocation(line: 23, column: 14, scope: !24)
!39 = !DILocation(line: 22, column: 14, scope: !24)
!40 = !DILocation(line: 25, column: 22, scope: !30)
!41 = !{!42, !42, i64 0}
!42 = !{!"double", !43, i64 0}
!43 = !{!"omnipotent char", !44, i64 0}
!44 = !{!"Simple C/C++ TBAA"}
!45 = !DILocation(line: 0, scope: !30)
!46 = !DILocation(line: 26, column: 13, scope: !30)
!47 = !DILocation(line: 26, column: 11, scope: !30)
!48 = !DILocation(line: 27, column: 11, scope: !30)
!49 = !DILocation(line: 28, column: 8, scope: !30)
!50 = !DILocation(line: 29, column: 8, scope: !30)
!51 = distinct !{!51, !37, !52, !53}
!52 = !DILocation(line: 30, column: 3, scope: !32)
!53 = !{!"llvm.loop.mustprogress"}
!54 = !DILocation(line: 12, column: 1, scope: !55)
!55 = !DILexicalBlockFile(scope: !10, file: !1, discriminator: 0)
