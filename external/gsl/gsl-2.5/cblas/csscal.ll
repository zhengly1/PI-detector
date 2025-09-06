; ModuleID = 'csscal.c'
source_filename = "csscal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @cblas_csscal(i32 noundef %0, float noundef %1, ptr nocapture noundef %2, i32 noundef %3) local_unnamed_addr #0 !dbg !13 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !21, metadata !DIExpression()), !dbg !30
  tail call void @llvm.dbg.value(metadata float %1, metadata !22, metadata !DIExpression()), !dbg !30
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !23, metadata !DIExpression()), !dbg !30
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !24, metadata !DIExpression()), !dbg !30
  tail call void @llvm.dbg.value(metadata i32 0, metadata !29, metadata !DIExpression()), !dbg !31
  %5 = icmp sgt i32 %3, 0, !dbg !32
  tail call void @llvm.dbg.value(metadata i32 0, metadata !29, metadata !DIExpression()), !dbg !31
  tail call void @llvm.dbg.value(metadata i32 0, metadata !25, metadata !DIExpression()), !dbg !31
  %6 = icmp sgt i32 %0, 0
  %7 = and i1 %5, %6, !dbg !34
  br i1 %7, label %8, label %59, !dbg !34

8:                                                ; preds = %4
  %9 = zext nneg i32 %3 to i64, !dbg !35
  %10 = and i32 %0, 1, !dbg !35
  %11 = icmp eq i32 %0, 1, !dbg !35
  br i1 %11, label %46, label %12, !dbg !35

12:                                               ; preds = %8
  %13 = and i32 %0, -2, !dbg !35
  br label %14, !dbg !35

14:                                               ; preds = %14, %12
  %15 = phi i64 [ 0, %12 ], [ %40, %14 ]
  %16 = phi i32 [ 0, %12 ], [ %41, %14 ]
  tail call void @llvm.dbg.value(metadata i64 %15, metadata !29, metadata !DIExpression()), !dbg !31
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !25, metadata !DIExpression()), !dbg !31
  %17 = trunc i64 %15 to i32, !dbg !37
  %18 = shl nuw nsw i32 %17, 1, !dbg !37
  %19 = zext nneg i32 %18 to i64, !dbg !37
  %20 = getelementptr inbounds float, ptr %2, i64 %19, !dbg !37
  %21 = load float, ptr %20, align 4, !dbg !40, !tbaa !41
  %22 = fmul float %21, %1, !dbg !40
  store float %22, ptr %20, align 4, !dbg !40, !tbaa !41
  %23 = or disjoint i32 %18, 1, !dbg !45
  %24 = zext nneg i32 %23 to i64, !dbg !45
  %25 = getelementptr inbounds float, ptr %2, i64 %24, !dbg !45
  %26 = load float, ptr %25, align 4, !dbg !46, !tbaa !41
  %27 = fmul float %26, %1, !dbg !46
  store float %27, ptr %25, align 4, !dbg !46, !tbaa !41
  %28 = add nuw nsw i64 %15, %9, !dbg !47
  tail call void @llvm.dbg.value(metadata i64 %28, metadata !29, metadata !DIExpression()), !dbg !31
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !25, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !31
  tail call void @llvm.dbg.value(metadata i64 %28, metadata !29, metadata !DIExpression()), !dbg !31
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !25, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !31
  %29 = trunc i64 %28 to i32, !dbg !37
  %30 = shl nuw nsw i32 %29, 1, !dbg !37
  %31 = zext nneg i32 %30 to i64, !dbg !37
  %32 = getelementptr inbounds float, ptr %2, i64 %31, !dbg !37
  %33 = load float, ptr %32, align 4, !dbg !40, !tbaa !41
  %34 = fmul float %33, %1, !dbg !40
  store float %34, ptr %32, align 4, !dbg !40, !tbaa !41
  %35 = or disjoint i32 %30, 1, !dbg !45
  %36 = zext nneg i32 %35 to i64, !dbg !45
  %37 = getelementptr inbounds float, ptr %2, i64 %36, !dbg !45
  %38 = load float, ptr %37, align 4, !dbg !46, !tbaa !41
  %39 = fmul float %38, %1, !dbg !46
  store float %39, ptr %37, align 4, !dbg !46, !tbaa !41
  %40 = add nuw nsw i64 %28, %9, !dbg !47
  tail call void @llvm.dbg.value(metadata i64 %40, metadata !29, metadata !DIExpression()), !dbg !31
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !25, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !31
  %41 = add i32 %16, 2, !dbg !35
  %42 = icmp eq i32 %41, %13, !dbg !35
  br i1 %42, label %43, label %14, !dbg !35, !llvm.loop !48

43:                                               ; preds = %14
  %44 = trunc i64 %40 to i32, !dbg !37
  %45 = shl nuw nsw i32 %44, 1, !dbg !37
  br label %46, !dbg !35

46:                                               ; preds = %43, %8
  %47 = phi i32 [ 0, %8 ], [ %45, %43 ]
  %48 = icmp eq i32 %10, 0, !dbg !35
  br i1 %48, label %59, label %49, !dbg !35

49:                                               ; preds = %46
  tail call void @llvm.dbg.value(metadata i32 %47, metadata !29, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)), !dbg !31
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !25, metadata !DIExpression()), !dbg !31
  %50 = zext nneg i32 %47 to i64, !dbg !37
  %51 = getelementptr inbounds float, ptr %2, i64 %50, !dbg !37
  %52 = load float, ptr %51, align 4, !dbg !40, !tbaa !41
  %53 = fmul float %52, %1, !dbg !40
  store float %53, ptr %51, align 4, !dbg !40, !tbaa !41
  %54 = or disjoint i32 %47, 1, !dbg !45
  %55 = zext nneg i32 %54 to i64, !dbg !45
  %56 = getelementptr inbounds float, ptr %2, i64 %55, !dbg !45
  %57 = load float, ptr %56, align 4, !dbg !46, !tbaa !41
  %58 = fmul float %57, %1, !dbg !46
  store float %58, ptr %56, align 4, !dbg !46, !tbaa !41
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 %47, i64 %9), metadata !29, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)), !dbg !31
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !25, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !31
  br label %59, !dbg !51

59:                                               ; preds = %49, %46, %4
  ret void, !dbg !51
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "csscal.c", directory: "/PI-detector/external/gsl/gsl-2.5/cblas", checksumkind: CSK_MD5, checksum: "193e83e576061518d3506b75eac2610e")
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
!13 = distinct !DISubprogram(name: "cblas_csscal", scope: !1, file: !1, line: 6, type: !14, scopeLine: 7, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !20)
!14 = !DISubroutineType(types: !15)
!15 = !{null, !16, !18, !19, !16}
!16 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!17 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!18 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!20 = !{!21, !22, !23, !24, !25, !29}
!21 = !DILocalVariable(name: "N", arg: 1, scope: !13, file: !1, line: 6, type: !16)
!22 = !DILocalVariable(name: "alpha", arg: 2, scope: !13, file: !1, line: 6, type: !18)
!23 = !DILocalVariable(name: "X", arg: 3, scope: !13, file: !1, line: 6, type: !19)
!24 = !DILocalVariable(name: "incX", arg: 4, scope: !13, file: !1, line: 6, type: !16)
!25 = !DILocalVariable(name: "i", scope: !26, file: !27, line: 21, type: !17)
!26 = distinct !DILexicalBlock(scope: !28, file: !27, line: 20, column: 1)
!27 = !DIFile(filename: "./source_scal_c_s.h", directory: "/PI-detector/external/gsl/gsl-2.5/cblas", checksumkind: CSK_MD5, checksum: "0aeed8001e499b53ba4684522b76c474")
!28 = !DILexicalBlockFile(scope: !13, file: !27, discriminator: 0)
!29 = !DILocalVariable(name: "ix", scope: !26, file: !27, line: 22, type: !17)
!30 = !DILocation(line: 0, scope: !13)
!31 = !DILocation(line: 0, scope: !26)
!32 = !DILocation(line: 24, column: 12, scope: !33)
!33 = distinct !DILexicalBlock(scope: !26, file: !27, line: 24, column: 7)
!34 = !DILocation(line: 24, column: 7, scope: !26)
!35 = !DILocation(line: 28, column: 3, scope: !36)
!36 = distinct !DILexicalBlock(scope: !26, file: !27, line: 28, column: 3)
!37 = !DILocation(line: 29, column: 5, scope: !38)
!38 = distinct !DILexicalBlock(scope: !39, file: !27, line: 28, column: 27)
!39 = distinct !DILexicalBlock(scope: !36, file: !27, line: 28, column: 3)
!40 = !DILocation(line: 29, column: 17, scope: !38)
!41 = !{!42, !42, i64 0}
!42 = !{!"float", !43, i64 0}
!43 = !{!"omnipotent char", !44, i64 0}
!44 = !{!"Simple C/C++ TBAA"}
!45 = !DILocation(line: 30, column: 5, scope: !38)
!46 = !DILocation(line: 30, column: 17, scope: !38)
!47 = !DILocation(line: 31, column: 8, scope: !38)
!48 = distinct !{!48, !35, !49, !50}
!49 = !DILocation(line: 32, column: 3, scope: !36)
!50 = !{!"llvm.loop.mustprogress"}
!51 = !DILocation(line: 11, column: 1, scope: !52)
!52 = !DILexicalBlockFile(scope: !13, file: !1, discriminator: 0)
