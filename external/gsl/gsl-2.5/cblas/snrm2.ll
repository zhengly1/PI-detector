; ModuleID = 'snrm2.c'
source_filename = "snrm2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree nounwind memory(write, argmem: readwrite) uwtable
define dso_local float @cblas_snrm2(i32 noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 !dbg !10 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !19, metadata !DIExpression()), !dbg !36
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !20, metadata !DIExpression()), !dbg !36
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !21, metadata !DIExpression()), !dbg !36
  tail call void @llvm.dbg.value(metadata float 0.000000e+00, metadata !22, metadata !DIExpression()), !dbg !37
  tail call void @llvm.dbg.value(metadata float 1.000000e+00, metadata !26, metadata !DIExpression()), !dbg !37
  tail call void @llvm.dbg.value(metadata i32 0, metadata !28, metadata !DIExpression()), !dbg !37
  %4 = icmp slt i32 %0, 1, !dbg !38
  %5 = icmp slt i32 %2, 1
  %6 = or i1 %4, %5, !dbg !40
  br i1 %6, label %46, label %7, !dbg !40

7:                                                ; preds = %3
  %8 = icmp eq i32 %0, 1, !dbg !41
  br i1 %8, label %11, label %9, !dbg !43

9:                                                ; preds = %7
  tail call void @llvm.dbg.value(metadata float 0.000000e+00, metadata !22, metadata !DIExpression()), !dbg !37
  tail call void @llvm.dbg.value(metadata i32 0, metadata !28, metadata !DIExpression()), !dbg !37
  tail call void @llvm.dbg.value(metadata i32 0, metadata !27, metadata !DIExpression()), !dbg !37
  tail call void @llvm.dbg.value(metadata float 1.000000e+00, metadata !26, metadata !DIExpression()), !dbg !37
  %10 = zext nneg i32 %2 to i64, !dbg !44
  br label %14, !dbg !44

11:                                               ; preds = %7
  %12 = load float, ptr %1, align 4, !dbg !45, !tbaa !47
  %13 = tail call float @llvm.fabs.f32(float %12), !dbg !51
  br label %46, !dbg !52

14:                                               ; preds = %9, %34
  %15 = phi i64 [ 0, %9 ], [ %37, %34 ]
  %16 = phi float [ 0.000000e+00, %9 ], [ %36, %34 ]
  %17 = phi i32 [ 0, %9 ], [ %38, %34 ]
  %18 = phi float [ 1.000000e+00, %9 ], [ %35, %34 ]
  tail call void @llvm.dbg.value(metadata float %16, metadata !22, metadata !DIExpression()), !dbg !37
  tail call void @llvm.dbg.value(metadata i64 %15, metadata !28, metadata !DIExpression()), !dbg !37
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !27, metadata !DIExpression()), !dbg !37
  tail call void @llvm.dbg.value(metadata float %18, metadata !26, metadata !DIExpression()), !dbg !37
  %19 = getelementptr inbounds float, ptr %1, i64 %15, !dbg !53
  %20 = load float, ptr %19, align 4, !dbg !53, !tbaa !47
  tail call void @llvm.dbg.value(metadata float %20, metadata !29, metadata !DIExpression()), !dbg !54
  %21 = fcmp une float %20, 0.000000e+00, !dbg !55
  br i1 %21, label %22, label %34, !dbg !56

22:                                               ; preds = %14
  %23 = tail call float @llvm.fabs.f32(float %20), !dbg !57
  tail call void @llvm.dbg.value(metadata float %23, metadata !33, metadata !DIExpression()), !dbg !58
  %24 = fcmp olt float %16, %23, !dbg !59
  br i1 %24, label %25, label %30, !dbg !61

25:                                               ; preds = %22
  %26 = fdiv float %16, %23, !dbg !62
  %27 = fmul float %18, %26, !dbg !64
  %28 = fmul float %26, %27, !dbg !65
  %29 = fadd float %28, 1.000000e+00, !dbg !66
  tail call void @llvm.dbg.value(metadata float %29, metadata !26, metadata !DIExpression()), !dbg !37
  tail call void @llvm.dbg.value(metadata float %23, metadata !22, metadata !DIExpression()), !dbg !37
  br label %34, !dbg !67

30:                                               ; preds = %22
  %31 = fdiv float %23, %16, !dbg !68
  %32 = fmul float %31, %31, !dbg !70
  %33 = fadd float %18, %32, !dbg !71
  tail call void @llvm.dbg.value(metadata float %33, metadata !26, metadata !DIExpression()), !dbg !37
  br label %34

34:                                               ; preds = %25, %30, %14
  %35 = phi float [ %18, %14 ], [ %29, %25 ], [ %33, %30 ], !dbg !37
  %36 = phi float [ %16, %14 ], [ %23, %25 ], [ %16, %30 ], !dbg !37
  tail call void @llvm.dbg.value(metadata float %36, metadata !22, metadata !DIExpression()), !dbg !37
  tail call void @llvm.dbg.value(metadata float %35, metadata !26, metadata !DIExpression()), !dbg !37
  %37 = add i64 %15, %10, !dbg !72
  tail call void @llvm.dbg.value(metadata i64 %37, metadata !28, metadata !DIExpression()), !dbg !37
  %38 = add nuw nsw i32 %17, 1, !dbg !73
  tail call void @llvm.dbg.value(metadata i32 %38, metadata !27, metadata !DIExpression()), !dbg !37
  %39 = icmp eq i32 %38, %0, !dbg !74
  br i1 %39, label %40, label %14, !dbg !44, !llvm.loop !75

40:                                               ; preds = %34
  %41 = fpext float %36 to double, !dbg !78
  %42 = fpext float %35 to double, !dbg !79
  %43 = tail call double @sqrt(double noundef %42) #3, !dbg !80
  %44 = fmul double %43, %41, !dbg !81
  %45 = fptrunc double %44 to float, !dbg !78
  br label %46, !dbg !82

46:                                               ; preds = %3, %40, %11
  %47 = phi float [ %13, %11 ], [ %45, %40 ], [ 0.000000e+00, %3 ], !dbg !37
  ret float %47, !dbg !83
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !85 double @sqrt(double noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #2

attributes #0 = { nofree nounwind memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "snrm2.c", directory: "/PI-detector/external/gsl/gsl-2.5/cblas", checksumkind: CSK_MD5, checksum: "dac600ba7dc57d9b488b2a9eb32868d0")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!9 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!10 = distinct !DISubprogram(name: "cblas_snrm2", scope: !1, file: !1, line: 6, type: !11, scopeLine: 7, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !18)
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !14, !16, !14}
!13 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!14 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!18 = !{!19, !20, !21, !22, !26, !27, !28, !29, !33}
!19 = !DILocalVariable(name: "N", arg: 1, scope: !10, file: !1, line: 6, type: !14)
!20 = !DILocalVariable(name: "X", arg: 2, scope: !10, file: !1, line: 6, type: !16)
!21 = !DILocalVariable(name: "incX", arg: 3, scope: !10, file: !1, line: 6, type: !14)
!22 = !DILocalVariable(name: "scale", scope: !23, file: !24, line: 21, type: !13)
!23 = distinct !DILexicalBlock(scope: !25, file: !24, line: 20, column: 1)
!24 = !DIFile(filename: "./source_nrm2_r.h", directory: "/PI-detector/external/gsl/gsl-2.5/cblas", checksumkind: CSK_MD5, checksum: "182d477df9124cca10c36a28e21a9af5")
!25 = !DILexicalBlockFile(scope: !10, file: !24, discriminator: 0)
!26 = !DILocalVariable(name: "ssq", scope: !23, file: !24, line: 22, type: !13)
!27 = !DILocalVariable(name: "i", scope: !23, file: !24, line: 23, type: !15)
!28 = !DILocalVariable(name: "ix", scope: !23, file: !24, line: 24, type: !15)
!29 = !DILocalVariable(name: "x", scope: !30, file: !24, line: 33, type: !17)
!30 = distinct !DILexicalBlock(scope: !31, file: !24, line: 32, column: 27)
!31 = distinct !DILexicalBlock(scope: !32, file: !24, line: 32, column: 3)
!32 = distinct !DILexicalBlock(scope: !23, file: !24, line: 32, column: 3)
!33 = !DILocalVariable(name: "ax", scope: !34, file: !24, line: 36, type: !17)
!34 = distinct !DILexicalBlock(scope: !35, file: !24, line: 35, column: 19)
!35 = distinct !DILexicalBlock(scope: !30, file: !24, line: 35, column: 9)
!36 = !DILocation(line: 0, scope: !10)
!37 = !DILocation(line: 0, scope: !23)
!38 = !DILocation(line: 26, column: 9, scope: !39)
!39 = distinct !DILexicalBlock(scope: !23, file: !24, line: 26, column: 7)
!40 = !DILocation(line: 26, column: 14, scope: !39)
!41 = !DILocation(line: 28, column: 16, scope: !42)
!42 = distinct !DILexicalBlock(scope: !39, file: !24, line: 28, column: 14)
!43 = !DILocation(line: 28, column: 14, scope: !39)
!44 = !DILocation(line: 32, column: 3, scope: !32)
!45 = !DILocation(line: 29, column: 17, scope: !46)
!46 = distinct !DILexicalBlock(scope: !42, file: !24, line: 28, column: 22)
!47 = !{!48, !48, i64 0}
!48 = !{!"float", !49, i64 0}
!49 = !{!"omnipotent char", !50, i64 0}
!50 = !{!"Simple C/C++ TBAA"}
!51 = !DILocation(line: 29, column: 12, scope: !46)
!52 = !DILocation(line: 29, column: 5, scope: !46)
!53 = !DILocation(line: 33, column: 20, scope: !30)
!54 = !DILocation(line: 0, scope: !30)
!55 = !DILocation(line: 35, column: 11, scope: !35)
!56 = !DILocation(line: 35, column: 9, scope: !30)
!57 = !DILocation(line: 36, column: 23, scope: !34)
!58 = !DILocation(line: 0, scope: !34)
!59 = !DILocation(line: 38, column: 17, scope: !60)
!60 = distinct !DILexicalBlock(scope: !34, file: !24, line: 38, column: 11)
!61 = !DILocation(line: 38, column: 11, scope: !34)
!62 = !DILocation(line: 39, column: 34, scope: !63)
!63 = distinct !DILexicalBlock(scope: !60, file: !24, line: 38, column: 23)
!64 = !DILocation(line: 39, column: 25, scope: !63)
!65 = !DILocation(line: 39, column: 40, scope: !63)
!66 = !DILocation(line: 39, column: 15, scope: !63)
!67 = !DILocation(line: 41, column: 7, scope: !63)
!68 = !DILocation(line: 42, column: 20, scope: !69)
!69 = distinct !DILexicalBlock(scope: !60, file: !24, line: 41, column: 14)
!70 = !DILocation(line: 42, column: 29, scope: !69)
!71 = !DILocation(line: 42, column: 13, scope: !69)
!72 = !DILocation(line: 46, column: 8, scope: !30)
!73 = !DILocation(line: 32, column: 23, scope: !31)
!74 = !DILocation(line: 32, column: 17, scope: !31)
!75 = distinct !{!75, !44, !76, !77}
!76 = !DILocation(line: 47, column: 3, scope: !32)
!77 = !{!"llvm.loop.mustprogress"}
!78 = !DILocation(line: 49, column: 10, scope: !23)
!79 = !DILocation(line: 49, column: 23, scope: !23)
!80 = !DILocation(line: 49, column: 18, scope: !23)
!81 = !DILocation(line: 49, column: 16, scope: !23)
!82 = !DILocation(line: 49, column: 3, scope: !23)
!83 = !DILocation(line: 11, column: 1, scope: !84)
!84 = !DILexicalBlockFile(scope: !10, file: !1, discriminator: 0)
!85 = !DISubprogram(name: "sqrt", scope: !86, file: !86, line: 143, type: !87, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!86 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!87 = !DISubroutineType(types: !88)
!88 = !{!89, !89}
!89 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
