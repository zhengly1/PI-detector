; ModuleID = 'cscal.ll'
source_filename = "cscal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @cblas_cscal(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, i32 noundef %3) local_unnamed_addr #0 !dbg !15 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !24, metadata !DIExpression()), !dbg !40
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !25, metadata !DIExpression()), !dbg !40
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !26, metadata !DIExpression()), !dbg !40
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !27, metadata !DIExpression()), !dbg !40
  tail call void @llvm.dbg.value(metadata i32 0, metadata !32, metadata !DIExpression()), !dbg !41
  %5 = load float, ptr %1, align 4, !dbg !42, !tbaa !43
  tail call void @llvm.dbg.value(metadata float %5, metadata !33, metadata !DIExpression()), !dbg !41
  %6 = getelementptr inbounds float, ptr %1, i64 1, !dbg !47
  %7 = load float, ptr %6, align 4, !dbg !47, !tbaa !43
  tail call void @llvm.dbg.value(metadata float %7, metadata !34, metadata !DIExpression()), !dbg !41
  %8 = icmp sgt i32 %3, 0, !dbg !48
  tail call void @llvm.dbg.value(metadata i32 0, metadata !28, metadata !DIExpression()), !dbg !41
  tail call void @llvm.dbg.value(metadata i32 0, metadata !32, metadata !DIExpression()), !dbg !41
  %9 = icmp sgt i32 %0, 0
  %10 = and i1 %8, %9, !dbg !50
  br i1 %10, label %11, label %40, !dbg !50

11:                                               ; preds = %4
  %12 = zext nneg i32 %3 to i64, !dbg !51
  br label %13, !dbg !51

13:                                               ; preds = %13, %11
  %14 = phi i64 [ 0, %11 ], [ %37, %13 ]
  %15 = phi i32 [ 0, %11 ], [ %38, %13 ]
  tail call void @llvm.dbg.value(metadata i32 %15, metadata !28, metadata !DIExpression()), !dbg !41
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !32, metadata !DIExpression()), !dbg !41
  %16 = trunc i64 %14 to i32, !dbg !52
  %17 = shl nuw nsw i32 %16, 1, !dbg !52
  %18 = zext nneg i32 %17 to i64, !dbg !52
  %19 = getelementptr inbounds float, ptr %2, i64 %18, !dbg !52
  %20 = load float, ptr %19, align 4, !dbg !52, !tbaa !43
  tail call void @llvm.dbg.value(metadata float %20, metadata !35, metadata !DIExpression()), !dbg !53
  %21 = or disjoint i32 %17, 1, !dbg !54
  %22 = zext nneg i32 %21 to i64, !dbg !54
  %23 = getelementptr inbounds float, ptr %2, i64 %22, !dbg !54
  %24 = load float, ptr %23, align 4, !dbg !54, !tbaa !43
  tail call void @llvm.dbg.value(metadata float %24, metadata !39, metadata !DIExpression()), !dbg !53
  %25 = fmul float %5, %20, !dbg !55
  %26 = fmul float %7, %24, !dbg !56
  %27 = fpext float %25 to double, !dbg !57
  %28 = fpext float %26 to double, !dbg !57
  %29 = fptrunc double %27 to float, !dbg !57
  %30 = fptrunc double %28 to float, !dbg !57
  %handler_result = call float @fSubHandlerFloat(float %29, float %30), !dbg !57
  store float %handler_result, ptr %19, align 4, !dbg !57, !tbaa !43
  %31 = fmul float %7, %20, !dbg !58
  %32 = fmul float %5, %24, !dbg !59
  %33 = fpext float %31 to double, !dbg !60
  %34 = fpext float %32 to double, !dbg !60
  %35 = fptrunc double %33 to float, !dbg !60
  %36 = fptrunc double %34 to float, !dbg !60
  %handler_result1 = call float @fAddHandlerFloat(float %35, float %36), !dbg !60
  store float %handler_result1, ptr %23, align 4, !dbg !60, !tbaa !43
  %37 = add nuw nsw i64 %14, %12, !dbg !61
  tail call void @llvm.dbg.value(metadata i64 %37, metadata !32, metadata !DIExpression()), !dbg !41
  %38 = add nuw nsw i32 %15, 1, !dbg !62
  tail call void @llvm.dbg.value(metadata i32 %38, metadata !28, metadata !DIExpression()), !dbg !41
  %39 = icmp eq i32 %38, %0, !dbg !63
  br i1 %39, label %40, label %13, !dbg !51, !llvm.loop !64

40:                                               ; preds = %13, %4
  ret void, !dbg !67
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

declare float @fSubHandlerFloat(float, float)

declare float @fAddHandlerFloat(float, float)

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "cscal.c", directory: "/PI-detector/external/gsl/gsl-2.5/cblas", checksumkind: CSK_MD5, checksum: "c77a4a81955d69b2f43f39eb96d5f3e3")
!2 = !{!3, !6}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!5 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!7 = !{i32 7, !"Dwarf Version", i32 5}
!8 = !{i32 2, !"Debug Info Version", i32 3}
!9 = !{i32 1, !"wchar_size", i32 4}
!10 = !{i32 8, !"PIC Level", i32 2}
!11 = !{i32 7, !"PIE Level", i32 2}
!12 = !{i32 7, !"uwtable", i32 2}
!13 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!14 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!15 = distinct !DISubprogram(name: "cblas_cscal", scope: !1, file: !1, line: 6, type: !16, scopeLine: 7, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !23)
!16 = !DISubroutineType(types: !17)
!17 = !{null, !18, !20, !22, !18}
!18 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!19 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!23 = !{!24, !25, !26, !27, !28, !32, !33, !34, !35, !39}
!24 = !DILocalVariable(name: "N", arg: 1, scope: !15, file: !1, line: 6, type: !18)
!25 = !DILocalVariable(name: "alpha", arg: 2, scope: !15, file: !1, line: 6, type: !20)
!26 = !DILocalVariable(name: "X", arg: 3, scope: !15, file: !1, line: 6, type: !22)
!27 = !DILocalVariable(name: "incX", arg: 4, scope: !15, file: !1, line: 6, type: !18)
!28 = !DILocalVariable(name: "i", scope: !29, file: !30, line: 21, type: !19)
!29 = distinct !DILexicalBlock(scope: !31, file: !30, line: 20, column: 1)
!30 = !DIFile(filename: "./source_scal_c.h", directory: "/PI-detector/external/gsl/gsl-2.5/cblas", checksumkind: CSK_MD5, checksum: "7763a931cc2ab2a81ee81b700d448459")
!31 = !DILexicalBlockFile(scope: !15, file: !30, discriminator: 0)
!32 = !DILocalVariable(name: "ix", scope: !29, file: !30, line: 22, type: !19)
!33 = !DILocalVariable(name: "alpha_real", scope: !29, file: !30, line: 23, type: !4)
!34 = !DILocalVariable(name: "alpha_imag", scope: !29, file: !30, line: 24, type: !4)
!35 = !DILocalVariable(name: "x_real", scope: !36, file: !30, line: 31, type: !4)
!36 = distinct !DILexicalBlock(scope: !37, file: !30, line: 30, column: 27)
!37 = distinct !DILexicalBlock(scope: !38, file: !30, line: 30, column: 3)
!38 = distinct !DILexicalBlock(scope: !29, file: !30, line: 30, column: 3)
!39 = !DILocalVariable(name: "x_imag", scope: !36, file: !30, line: 32, type: !4)
!40 = !DILocation(line: 0, scope: !15)
!41 = !DILocation(line: 0, scope: !29)
!42 = !DILocation(line: 23, column: 27, scope: !29)
!43 = !{!44, !44, i64 0}
!44 = !{!"float", !45, i64 0}
!45 = !{!"omnipotent char", !46, i64 0}
!46 = !{!"Simple C/C++ TBAA"}
!47 = !DILocation(line: 24, column: 27, scope: !29)
!48 = !DILocation(line: 26, column: 12, scope: !49)
!49 = distinct !DILexicalBlock(scope: !29, file: !30, line: 26, column: 7)
!50 = !DILocation(line: 26, column: 7, scope: !29)
!51 = !DILocation(line: 30, column: 3, scope: !38)
!52 = !DILocation(line: 31, column: 25, scope: !36)
!53 = !DILocation(line: 0, scope: !36)
!54 = !DILocation(line: 32, column: 25, scope: !36)
!55 = !DILocation(line: 33, column: 26, scope: !36)
!56 = !DILocation(line: 33, column: 48, scope: !36)
!57 = !DILocation(line: 33, column: 17, scope: !36)
!58 = !DILocation(line: 34, column: 26, scope: !36)
!59 = !DILocation(line: 34, column: 48, scope: !36)
!60 = !DILocation(line: 34, column: 17, scope: !36)
!61 = !DILocation(line: 35, column: 8, scope: !36)
!62 = !DILocation(line: 30, column: 23, scope: !37)
!63 = !DILocation(line: 30, column: 17, scope: !37)
!64 = distinct !{!64, !51, !65, !66}
!65 = !DILocation(line: 36, column: 3, scope: !38)
!66 = !{!"llvm.loop.mustprogress"}
!67 = !DILocation(line: 11, column: 1, scope: !68)
!68 = !DILexicalBlockFile(scope: !15, file: !1, discriminator: 0)
