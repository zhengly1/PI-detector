; ModuleID = 'drot.ll'
source_filename = "drot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @cblas_drot(i32 noundef %0, ptr nocapture noundef %1, i32 noundef %2, ptr nocapture noundef %3, i32 noundef %4, double noundef %5, double noundef %6) local_unnamed_addr #0 !dbg !10 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !19, metadata !DIExpression()), !dbg !37
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !20, metadata !DIExpression()), !dbg !37
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !21, metadata !DIExpression()), !dbg !37
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !22, metadata !DIExpression()), !dbg !37
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !23, metadata !DIExpression()), !dbg !37
  tail call void @llvm.dbg.value(metadata double %5, metadata !24, metadata !DIExpression()), !dbg !37
  tail call void @llvm.dbg.value(metadata double %6, metadata !25, metadata !DIExpression()), !dbg !37
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !30, metadata !DIExpression()), !dbg !38
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !31, metadata !DIExpression()), !dbg !38
  tail call void @llvm.dbg.value(metadata i32 0, metadata !26, metadata !DIExpression()), !dbg !38
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !30, metadata !DIExpression()), !dbg !38
  %8 = icmp sgt i32 %0, 0, !dbg !39
  br i1 %8, label %9, label %37, !dbg !40

9:                                                ; preds = %7
  %10 = icmp sgt i32 %4, 0, !dbg !41
  %11 = sub nsw i32 1, %0, !dbg !42
  %12 = mul i32 %11, %4, !dbg !41
  %13 = select i1 %10, i32 0, i32 %12, !dbg !41
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !31, metadata !DIExpression()), !dbg !38
  %14 = icmp sgt i32 %2, 0, !dbg !42
  %15 = mul i32 %11, %2, !dbg !42
  %16 = select i1 %14, i32 0, i32 %15, !dbg !42
  tail call void @llvm.dbg.value(metadata i32 %16, metadata !30, metadata !DIExpression()), !dbg !38
  %17 = sext i32 %16 to i64, !dbg !40
  %18 = sext i32 %2 to i64, !dbg !40
  %19 = sext i32 %13 to i64, !dbg !40
  %20 = sext i32 %4 to i64, !dbg !40
  br label %21, !dbg !40

21:                                               ; preds = %21, %9
  %22 = phi i64 [ %19, %9 ], [ %34, %21 ]
  %23 = phi i64 [ %17, %9 ], [ %33, %21 ]
  %24 = phi i32 [ 0, %9 ], [ %35, %21 ]
  tail call void @llvm.dbg.value(metadata i32 %24, metadata !26, metadata !DIExpression()), !dbg !38
  tail call void @llvm.dbg.value(metadata i64 %23, metadata !30, metadata !DIExpression()), !dbg !38
  tail call void @llvm.dbg.value(metadata i64 %22, metadata !31, metadata !DIExpression()), !dbg !38
  %25 = getelementptr inbounds double, ptr %1, i64 %23, !dbg !43
  %26 = load double, ptr %25, align 8, !dbg !43, !tbaa !44
  tail call void @llvm.dbg.value(metadata double %26, metadata !32, metadata !DIExpression()), !dbg !48
  %27 = getelementptr inbounds double, ptr %3, i64 %22, !dbg !49
  %28 = load double, ptr %27, align 8, !dbg !49, !tbaa !44
  tail call void @llvm.dbg.value(metadata double %28, metadata !36, metadata !DIExpression()), !dbg !48
  %29 = fmul double %26, %5, !dbg !50
  %30 = fmul double %28, %6, !dbg !51
  %handler_result = call double @fAddHandlerDouble(double %29, double %30), !dbg !52
  store double %handler_result, ptr %25, align 8, !dbg !52, !tbaa !44
  %31 = fmul double %28, %5, !dbg !53
  %32 = fmul double %26, %6, !dbg !54
  %handler_result1 = call double @fSubHandlerDouble(double %31, double %32), !dbg !55
  store double %handler_result1, ptr %27, align 8, !dbg !55, !tbaa !44
  %33 = add i64 %23, %18, !dbg !56
  tail call void @llvm.dbg.value(metadata i64 %33, metadata !30, metadata !DIExpression()), !dbg !38
  %34 = add i64 %22, %20, !dbg !57
  tail call void @llvm.dbg.value(metadata i64 %34, metadata !31, metadata !DIExpression()), !dbg !38
  %35 = add nuw nsw i32 %24, 1, !dbg !58
  tail call void @llvm.dbg.value(metadata i32 %35, metadata !26, metadata !DIExpression()), !dbg !38
  %36 = icmp eq i32 %35, %0, !dbg !39
  br i1 %36, label %37, label %21, !dbg !40, !llvm.loop !59

37:                                               ; preds = %21, %7
  ret void, !dbg !62
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

declare double @fAddHandlerDouble(double, double)

declare double @fSubHandlerDouble(double, double)

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "drot.c", directory: "/PI-detector/external/gsl/gsl-2.5/cblas", checksumkind: CSK_MD5, checksum: "e67b50d46c4c7c58650d7f3b7701f05c")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!9 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!10 = distinct !DISubprogram(name: "cblas_drot", scope: !1, file: !1, line: 6, type: !11, scopeLine: 8, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !18)
!11 = !DISubroutineType(types: !12)
!12 = !{null, !13, !15, !13, !15, !13, !17, !17}
!13 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!17 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!18 = !{!19, !20, !21, !22, !23, !24, !25, !26, !30, !31, !32, !36}
!19 = !DILocalVariable(name: "N", arg: 1, scope: !10, file: !1, line: 6, type: !13)
!20 = !DILocalVariable(name: "X", arg: 2, scope: !10, file: !1, line: 6, type: !15)
!21 = !DILocalVariable(name: "incX", arg: 3, scope: !10, file: !1, line: 6, type: !13)
!22 = !DILocalVariable(name: "Y", arg: 4, scope: !10, file: !1, line: 6, type: !15)
!23 = !DILocalVariable(name: "incY", arg: 5, scope: !10, file: !1, line: 6, type: !13)
!24 = !DILocalVariable(name: "c", arg: 6, scope: !10, file: !1, line: 7, type: !17)
!25 = !DILocalVariable(name: "s", arg: 7, scope: !10, file: !1, line: 7, type: !17)
!26 = !DILocalVariable(name: "i", scope: !27, file: !28, line: 21, type: !14)
!27 = distinct !DILexicalBlock(scope: !29, file: !28, line: 20, column: 1)
!28 = !DIFile(filename: "./source_rot.h", directory: "/PI-detector/external/gsl/gsl-2.5/cblas", checksumkind: CSK_MD5, checksum: "9db4b3cb35920ce1f05fc8dfb0f9638e")
!29 = !DILexicalBlockFile(scope: !10, file: !28, discriminator: 0)
!30 = !DILocalVariable(name: "ix", scope: !27, file: !28, line: 22, type: !14)
!31 = !DILocalVariable(name: "iy", scope: !27, file: !28, line: 23, type: !14)
!32 = !DILocalVariable(name: "x", scope: !33, file: !28, line: 25, type: !17)
!33 = distinct !DILexicalBlock(scope: !34, file: !28, line: 24, column: 27)
!34 = distinct !DILexicalBlock(scope: !35, file: !28, line: 24, column: 3)
!35 = distinct !DILexicalBlock(scope: !27, file: !28, line: 24, column: 3)
!36 = !DILocalVariable(name: "y", scope: !33, file: !28, line: 26, type: !17)
!37 = !DILocation(line: 0, scope: !10)
!38 = !DILocation(line: 0, scope: !27)
!39 = !DILocation(line: 24, column: 17, scope: !34)
!40 = !DILocation(line: 24, column: 3, scope: !35)
!41 = !DILocation(line: 23, column: 14, scope: !27)
!42 = !DILocation(line: 22, column: 14, scope: !27)
!43 = !DILocation(line: 25, column: 20, scope: !33)
!44 = !{!45, !45, i64 0}
!45 = !{!"double", !46, i64 0}
!46 = !{!"omnipotent char", !47, i64 0}
!47 = !{!"Simple C/C++ TBAA"}
!48 = !DILocation(line: 0, scope: !33)
!49 = !DILocation(line: 26, column: 20, scope: !33)
!50 = !DILocation(line: 27, column: 15, scope: !33)
!51 = !DILocation(line: 27, column: 23, scope: !33)
!52 = !DILocation(line: 27, column: 11, scope: !33)
!53 = !DILocation(line: 28, column: 24, scope: !33)
!54 = !DILocation(line: 28, column: 20, scope: !33)
!55 = !DILocation(line: 28, column: 11, scope: !33)
!56 = !DILocation(line: 29, column: 8, scope: !33)
!57 = !DILocation(line: 30, column: 8, scope: !33)
!58 = !DILocation(line: 24, column: 23, scope: !34)
!59 = distinct !{!59, !40, !60, !61}
!60 = !DILocation(line: 31, column: 3, scope: !35)
!61 = !{!"llvm.loop.mustprogress"}
!62 = !DILocation(line: 12, column: 1, scope: !63)
!63 = !DILexicalBlockFile(scope: !10, file: !1, discriminator: 0)
