; ModuleID = 'sasum.c'
source_filename = "sasum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local float @cblas_sasum(i32 noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 !dbg !10 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !19, metadata !DIExpression()), !dbg !28
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !20, metadata !DIExpression()), !dbg !28
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !21, metadata !DIExpression()), !dbg !28
  tail call void @llvm.dbg.value(metadata float 0.000000e+00, metadata !22, metadata !DIExpression()), !dbg !29
  tail call void @llvm.dbg.value(metadata i32 0, metadata !27, metadata !DIExpression()), !dbg !29
  %4 = icmp sgt i32 %2, 0, !dbg !30
  tail call void @llvm.dbg.value(metadata i32 0, metadata !27, metadata !DIExpression()), !dbg !29
  tail call void @llvm.dbg.value(metadata i32 0, metadata !26, metadata !DIExpression()), !dbg !29
  tail call void @llvm.dbg.value(metadata float 0.000000e+00, metadata !22, metadata !DIExpression()), !dbg !29
  %5 = icmp sgt i32 %0, 0
  %6 = and i1 %4, %5, !dbg !32
  br i1 %6, label %7, label %55, !dbg !32

7:                                                ; preds = %3
  %8 = zext nneg i32 %2 to i64, !dbg !33
  %9 = and i32 %0, 3, !dbg !33
  %10 = icmp ult i32 %0, 4, !dbg !33
  br i1 %10, label %39, label %11, !dbg !33

11:                                               ; preds = %7
  %12 = and i32 %0, -4, !dbg !33
  br label %13, !dbg !33

13:                                               ; preds = %13, %11
  %14 = phi i64 [ 0, %11 ], [ %36, %13 ]
  %15 = phi float [ 0.000000e+00, %11 ], [ %35, %13 ]
  %16 = phi i32 [ 0, %11 ], [ %37, %13 ]
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !27, metadata !DIExpression()), !dbg !29
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !26, metadata !DIExpression()), !dbg !29
  tail call void @llvm.dbg.value(metadata float %15, metadata !22, metadata !DIExpression()), !dbg !29
  %17 = getelementptr inbounds float, ptr %1, i64 %14, !dbg !35
  %18 = load float, ptr %17, align 4, !dbg !35, !tbaa !38
  %19 = tail call float @llvm.fabs.f32(float %18), !dbg !42
  %20 = fadd float %15, %19, !dbg !43
  tail call void @llvm.dbg.value(metadata float %20, metadata !22, metadata !DIExpression()), !dbg !29
  %21 = add nuw nsw i64 %14, %8, !dbg !44
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !27, metadata !DIExpression()), !dbg !29
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !26, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !29
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !27, metadata !DIExpression()), !dbg !29
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !26, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !29
  tail call void @llvm.dbg.value(metadata float %20, metadata !22, metadata !DIExpression()), !dbg !29
  %22 = getelementptr inbounds float, ptr %1, i64 %21, !dbg !35
  %23 = load float, ptr %22, align 4, !dbg !35, !tbaa !38
  %24 = tail call float @llvm.fabs.f32(float %23), !dbg !42
  %25 = fadd float %20, %24, !dbg !43
  tail call void @llvm.dbg.value(metadata float %25, metadata !22, metadata !DIExpression()), !dbg !29
  %26 = add nuw nsw i64 %21, %8, !dbg !44
  tail call void @llvm.dbg.value(metadata i64 %26, metadata !27, metadata !DIExpression()), !dbg !29
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !26, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !29
  tail call void @llvm.dbg.value(metadata i64 %26, metadata !27, metadata !DIExpression()), !dbg !29
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !26, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !29
  tail call void @llvm.dbg.value(metadata float %25, metadata !22, metadata !DIExpression()), !dbg !29
  %27 = getelementptr inbounds float, ptr %1, i64 %26, !dbg !35
  %28 = load float, ptr %27, align 4, !dbg !35, !tbaa !38
  %29 = tail call float @llvm.fabs.f32(float %28), !dbg !42
  %30 = fadd float %25, %29, !dbg !43
  tail call void @llvm.dbg.value(metadata float %30, metadata !22, metadata !DIExpression()), !dbg !29
  %31 = add nuw nsw i64 %26, %8, !dbg !44
  tail call void @llvm.dbg.value(metadata i64 %31, metadata !27, metadata !DIExpression()), !dbg !29
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !26, metadata !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value)), !dbg !29
  tail call void @llvm.dbg.value(metadata i64 %31, metadata !27, metadata !DIExpression()), !dbg !29
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !26, metadata !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value)), !dbg !29
  tail call void @llvm.dbg.value(metadata float %30, metadata !22, metadata !DIExpression()), !dbg !29
  %32 = getelementptr inbounds float, ptr %1, i64 %31, !dbg !35
  %33 = load float, ptr %32, align 4, !dbg !35, !tbaa !38
  %34 = tail call float @llvm.fabs.f32(float %33), !dbg !42
  %35 = fadd float %30, %34, !dbg !43
  tail call void @llvm.dbg.value(metadata float %35, metadata !22, metadata !DIExpression()), !dbg !29
  %36 = add nuw nsw i64 %31, %8, !dbg !44
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !27, metadata !DIExpression()), !dbg !29
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !26, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !29
  %37 = add i32 %16, 4, !dbg !33
  %38 = icmp eq i32 %37, %12, !dbg !33
  br i1 %38, label %39, label %13, !dbg !33, !llvm.loop !45

39:                                               ; preds = %13, %7
  %40 = phi float [ undef, %7 ], [ %35, %13 ]
  %41 = phi i64 [ 0, %7 ], [ %36, %13 ]
  %42 = phi float [ 0.000000e+00, %7 ], [ %35, %13 ]
  %43 = icmp eq i32 %9, 0, !dbg !33
  br i1 %43, label %55, label %44, !dbg !33

44:                                               ; preds = %39, %44
  %45 = phi i64 [ %52, %44 ], [ %41, %39 ]
  %46 = phi float [ %51, %44 ], [ %42, %39 ]
  %47 = phi i32 [ %53, %44 ], [ 0, %39 ]
  tail call void @llvm.dbg.value(metadata i64 %45, metadata !27, metadata !DIExpression()), !dbg !29
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !26, metadata !DIExpression()), !dbg !29
  tail call void @llvm.dbg.value(metadata float %46, metadata !22, metadata !DIExpression()), !dbg !29
  %48 = getelementptr inbounds float, ptr %1, i64 %45, !dbg !35
  %49 = load float, ptr %48, align 4, !dbg !35, !tbaa !38
  %50 = tail call float @llvm.fabs.f32(float %49), !dbg !42
  %51 = fadd float %46, %50, !dbg !43
  tail call void @llvm.dbg.value(metadata float %51, metadata !22, metadata !DIExpression()), !dbg !29
  %52 = add nuw nsw i64 %45, %8, !dbg !44
  tail call void @llvm.dbg.value(metadata i64 %52, metadata !27, metadata !DIExpression()), !dbg !29
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !26, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !29
  %53 = add i32 %47, 1, !dbg !33
  %54 = icmp eq i32 %53, %9, !dbg !33
  br i1 %54, label %55, label %44, !dbg !33, !llvm.loop !48

55:                                               ; preds = %39, %44, %3
  %56 = phi float [ 0.000000e+00, %3 ], [ %40, %39 ], [ %51, %44 ], !dbg !29
  ret float %56, !dbg !50
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #1

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "sasum.c", directory: "/PI-detector/external/gsl/gsl-2.5/cblas", checksumkind: CSK_MD5, checksum: "ba0f2b577206f31f0f357eb08de14d60")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!9 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!10 = distinct !DISubprogram(name: "cblas_sasum", scope: !1, file: !1, line: 6, type: !11, scopeLine: 7, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !18)
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !14, !16, !14}
!13 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
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
!39 = !{!"float", !40, i64 0}
!40 = !{!"omnipotent char", !41, i64 0}
!41 = !{!"Simple C/C++ TBAA"}
!42 = !DILocation(line: 30, column: 10, scope: !36)
!43 = !DILocation(line: 30, column: 7, scope: !36)
!44 = !DILocation(line: 31, column: 8, scope: !36)
!45 = distinct !{!45, !33, !46, !47}
!46 = !DILocation(line: 32, column: 3, scope: !34)
!47 = !{!"llvm.loop.mustprogress"}
!48 = distinct !{!48, !49}
!49 = !{!"llvm.loop.unroll.disable"}
!50 = !DILocation(line: 11, column: 1, scope: !51)
!51 = !DILexicalBlockFile(scope: !10, file: !1, discriminator: 0)
