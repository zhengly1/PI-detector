; ModuleID = 'dsdot.c'
source_filename = "dsdot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local double @cblas_dsdot(i32 noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4) local_unnamed_addr #0 !dbg !10 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !20, metadata !DIExpression()), !dbg !32
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !21, metadata !DIExpression()), !dbg !32
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !22, metadata !DIExpression()), !dbg !32
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !23, metadata !DIExpression()), !dbg !32
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !24, metadata !DIExpression()), !dbg !32
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !25, metadata !DIExpression()), !dbg !33
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !30, metadata !DIExpression()), !dbg !33
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !31, metadata !DIExpression()), !dbg !33
  tail call void @llvm.dbg.value(metadata i32 0, metadata !29, metadata !DIExpression()), !dbg !33
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !30, metadata !DIExpression()), !dbg !33
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !25, metadata !DIExpression()), !dbg !33
  %6 = icmp sgt i32 %0, 0, !dbg !34
  br i1 %6, label %7, label %62, !dbg !37

7:                                                ; preds = %5
  %8 = icmp sgt i32 %4, 0, !dbg !38
  %9 = sub nsw i32 1, %0, !dbg !39
  %10 = mul i32 %9, %4, !dbg !38
  %11 = select i1 %8, i32 0, i32 %10, !dbg !38
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !31, metadata !DIExpression()), !dbg !33
  %12 = icmp sgt i32 %2, 0, !dbg !39
  %13 = mul i32 %9, %2, !dbg !39
  %14 = select i1 %12, i32 0, i32 %13, !dbg !39
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !30, metadata !DIExpression()), !dbg !33
  %15 = sext i32 %11 to i64, !dbg !37
  %16 = sext i32 %4 to i64, !dbg !37
  %17 = sext i32 %14 to i64, !dbg !37
  %18 = sext i32 %2 to i64, !dbg !37
  %19 = and i32 %0, 1, !dbg !37
  %20 = icmp eq i32 %0, 1, !dbg !37
  br i1 %20, label %48, label %21, !dbg !37

21:                                               ; preds = %7
  %22 = and i32 %0, 2147483646, !dbg !37
  br label %23, !dbg !37

23:                                               ; preds = %23, %21
  %24 = phi i64 [ %17, %21 ], [ %44, %23 ]
  %25 = phi i64 [ %15, %21 ], [ %45, %23 ]
  %26 = phi double [ 0.000000e+00, %21 ], [ %43, %23 ]
  %27 = phi i32 [ 0, %21 ], [ %46, %23 ]
  tail call void @llvm.dbg.value(metadata i64 %25, metadata !31, metadata !DIExpression()), !dbg !33
  tail call void @llvm.dbg.value(metadata i64 %24, metadata !30, metadata !DIExpression()), !dbg !33
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !29, metadata !DIExpression()), !dbg !33
  tail call void @llvm.dbg.value(metadata double %26, metadata !25, metadata !DIExpression()), !dbg !33
  %28 = getelementptr inbounds float, ptr %1, i64 %24, !dbg !40
  %29 = load float, ptr %28, align 4, !dbg !40, !tbaa !42
  %30 = getelementptr inbounds float, ptr %3, i64 %25, !dbg !46
  %31 = load float, ptr %30, align 4, !dbg !46, !tbaa !42
  %32 = fmul float %29, %31, !dbg !47
  %33 = fpext float %32 to double, !dbg !40
  %34 = fadd double %26, %33, !dbg !48
  tail call void @llvm.dbg.value(metadata double %34, metadata !25, metadata !DIExpression()), !dbg !33
  %35 = add i64 %24, %18, !dbg !49
  tail call void @llvm.dbg.value(metadata i64 %35, metadata !30, metadata !DIExpression()), !dbg !33
  %36 = add i64 %25, %16, !dbg !50
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !31, metadata !DIExpression()), !dbg !33
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !29, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !33
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !31, metadata !DIExpression()), !dbg !33
  tail call void @llvm.dbg.value(metadata i64 %35, metadata !30, metadata !DIExpression()), !dbg !33
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !29, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !33
  tail call void @llvm.dbg.value(metadata double %34, metadata !25, metadata !DIExpression()), !dbg !33
  %37 = getelementptr inbounds float, ptr %1, i64 %35, !dbg !40
  %38 = load float, ptr %37, align 4, !dbg !40, !tbaa !42
  %39 = getelementptr inbounds float, ptr %3, i64 %36, !dbg !46
  %40 = load float, ptr %39, align 4, !dbg !46, !tbaa !42
  %41 = fmul float %38, %40, !dbg !47
  %42 = fpext float %41 to double, !dbg !40
  %43 = fadd double %34, %42, !dbg !48
  tail call void @llvm.dbg.value(metadata double %43, metadata !25, metadata !DIExpression()), !dbg !33
  %44 = add i64 %35, %18, !dbg !49
  tail call void @llvm.dbg.value(metadata i64 %44, metadata !30, metadata !DIExpression()), !dbg !33
  %45 = add i64 %36, %16, !dbg !50
  tail call void @llvm.dbg.value(metadata i64 %45, metadata !31, metadata !DIExpression()), !dbg !33
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !29, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !33
  %46 = add i32 %27, 2, !dbg !37
  %47 = icmp eq i32 %46, %22, !dbg !37
  br i1 %47, label %48, label %23, !dbg !37, !llvm.loop !51

48:                                               ; preds = %23, %7
  %49 = phi double [ undef, %7 ], [ %43, %23 ]
  %50 = phi i64 [ %17, %7 ], [ %44, %23 ]
  %51 = phi i64 [ %15, %7 ], [ %45, %23 ]
  %52 = phi double [ 0.000000e+00, %7 ], [ %43, %23 ]
  %53 = icmp eq i32 %19, 0, !dbg !37
  br i1 %53, label %62, label %54, !dbg !37

54:                                               ; preds = %48
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !31, metadata !DIExpression()), !dbg !33
  tail call void @llvm.dbg.value(metadata i64 %50, metadata !30, metadata !DIExpression()), !dbg !33
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !29, metadata !DIExpression()), !dbg !33
  tail call void @llvm.dbg.value(metadata double %52, metadata !25, metadata !DIExpression()), !dbg !33
  %55 = getelementptr inbounds float, ptr %1, i64 %50, !dbg !40
  %56 = load float, ptr %55, align 4, !dbg !40, !tbaa !42
  %57 = getelementptr inbounds float, ptr %3, i64 %51, !dbg !46
  %58 = load float, ptr %57, align 4, !dbg !46, !tbaa !42
  %59 = fmul float %56, %58, !dbg !47
  %60 = fpext float %59 to double, !dbg !40
  %61 = fadd double %52, %60, !dbg !48
  tail call void @llvm.dbg.value(metadata double %61, metadata !25, metadata !DIExpression()), !dbg !33
  tail call void @llvm.dbg.value(metadata !DIArgList(i64 %50, i64 %18), metadata !30, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !33
  tail call void @llvm.dbg.value(metadata !DIArgList(i64 %51, i64 %16), metadata !31, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !33
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !29, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !33
  br label %62, !dbg !54

62:                                               ; preds = %54, %48, %5
  %63 = phi double [ 0.000000e+00, %5 ], [ %49, %48 ], [ %61, %54 ], !dbg !33
  ret double %63, !dbg !54
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "dsdot.c", directory: "/PI-detector/external/gsl/gsl-2.5/cblas", checksumkind: CSK_MD5, checksum: "852cda0178fb1c11d1d817ab74f3a01a")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!9 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!10 = distinct !DISubprogram(name: "cblas_dsdot", scope: !1, file: !1, line: 6, type: !11, scopeLine: 8, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !19)
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !14, !16, !14, !16, !14}
!13 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!14 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !18)
!18 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!19 = !{!20, !21, !22, !23, !24, !25, !29, !30, !31}
!20 = !DILocalVariable(name: "N", arg: 1, scope: !10, file: !1, line: 6, type: !14)
!21 = !DILocalVariable(name: "X", arg: 2, scope: !10, file: !1, line: 6, type: !16)
!22 = !DILocalVariable(name: "incX", arg: 3, scope: !10, file: !1, line: 6, type: !14)
!23 = !DILocalVariable(name: "Y", arg: 4, scope: !10, file: !1, line: 6, type: !16)
!24 = !DILocalVariable(name: "incY", arg: 5, scope: !10, file: !1, line: 7, type: !14)
!25 = !DILocalVariable(name: "r", scope: !26, file: !27, line: 21, type: !13)
!26 = distinct !DILexicalBlock(scope: !28, file: !27, line: 20, column: 1)
!27 = !DIFile(filename: "./source_dot_r.h", directory: "/PI-detector/external/gsl/gsl-2.5/cblas", checksumkind: CSK_MD5, checksum: "d74193a7e468f4ee0d498d5e34db24a8")
!28 = !DILexicalBlockFile(scope: !10, file: !27, discriminator: 0)
!29 = !DILocalVariable(name: "i", scope: !26, file: !27, line: 22, type: !15)
!30 = !DILocalVariable(name: "ix", scope: !26, file: !27, line: 23, type: !15)
!31 = !DILocalVariable(name: "iy", scope: !26, file: !27, line: 24, type: !15)
!32 = !DILocation(line: 0, scope: !10)
!33 = !DILocation(line: 0, scope: !26)
!34 = !DILocation(line: 26, column: 17, scope: !35)
!35 = distinct !DILexicalBlock(scope: !36, file: !27, line: 26, column: 3)
!36 = distinct !DILexicalBlock(scope: !26, file: !27, line: 26, column: 3)
!37 = !DILocation(line: 26, column: 3, scope: !36)
!38 = !DILocation(line: 24, column: 14, scope: !26)
!39 = !DILocation(line: 23, column: 14, scope: !26)
!40 = !DILocation(line: 27, column: 10, scope: !41)
!41 = distinct !DILexicalBlock(scope: !35, file: !27, line: 26, column: 27)
!42 = !{!43, !43, i64 0}
!43 = !{!"float", !44, i64 0}
!44 = !{!"omnipotent char", !45, i64 0}
!45 = !{!"Simple C/C++ TBAA"}
!46 = !DILocation(line: 27, column: 18, scope: !41)
!47 = !DILocation(line: 27, column: 16, scope: !41)
!48 = !DILocation(line: 27, column: 7, scope: !41)
!49 = !DILocation(line: 28, column: 8, scope: !41)
!50 = !DILocation(line: 29, column: 8, scope: !41)
!51 = distinct !{!51, !37, !52, !53}
!52 = !DILocation(line: 30, column: 3, scope: !36)
!53 = !{!"llvm.loop.mustprogress"}
!54 = !DILocation(line: 32, column: 3, scope: !26)
