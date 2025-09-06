; ModuleID = 'drotg.c'
source_filename = "drotg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @cblas_drotg(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 !dbg !10 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !16, metadata !DIExpression()), !dbg !32
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !17, metadata !DIExpression()), !dbg !32
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !18, metadata !DIExpression()), !dbg !32
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !19, metadata !DIExpression()), !dbg !32
  %5 = load double, ptr %0, align 8, !dbg !33, !tbaa !34
  %6 = tail call double @llvm.fabs.f64(double %5), !dbg !38
  %7 = load double, ptr %1, align 8, !dbg !39, !tbaa !34
  %8 = tail call double @llvm.fabs.f64(double %7), !dbg !40
  tail call void @llvm.dbg.value(metadata double poison, metadata !20, metadata !DIExpression()), !dbg !41
  %9 = fadd double %6, %8, !dbg !42
  tail call void @llvm.dbg.value(metadata double %9, metadata !25, metadata !DIExpression()), !dbg !41
  %10 = fcmp une double %9, 0.000000e+00, !dbg !43
  br i1 %10, label %11, label %39, !dbg !44

11:                                               ; preds = %4
  %12 = fcmp ogt double %6, %8, !dbg !45
  %13 = select i1 %12, double %5, double %7, !dbg !38
  tail call void @llvm.dbg.value(metadata double %13, metadata !20, metadata !DIExpression()), !dbg !41
  %14 = fdiv double %5, %9, !dbg !46
  tail call void @llvm.dbg.value(metadata double %14, metadata !28, metadata !DIExpression()), !dbg !47
  %15 = fdiv double %7, %9, !dbg !48
  tail call void @llvm.dbg.value(metadata double %15, metadata !31, metadata !DIExpression()), !dbg !47
  %16 = fmul double %14, %14, !dbg !49
  %17 = fmul double %15, %15, !dbg !50
  %18 = fadd double %16, %17, !dbg !51
  %19 = tail call double @llvm.sqrt.f64(double %18), !dbg !52
  %20 = fmul double %9, %19, !dbg !53
  tail call void @llvm.dbg.value(metadata double %20, metadata !26, metadata !DIExpression()), !dbg !41
  %21 = fcmp oge double %13, 0.000000e+00, !dbg !54
  %22 = fneg double %20, !dbg !55
  %23 = select i1 %21, double %20, double %22, !dbg !55
  tail call void @llvm.dbg.value(metadata double %23, metadata !26, metadata !DIExpression()), !dbg !41
  %24 = fdiv double %5, %23, !dbg !56
  store double %24, ptr %2, align 8, !dbg !57, !tbaa !34
  %25 = load double, ptr %1, align 8, !dbg !58, !tbaa !34
  %26 = fdiv double %25, %23, !dbg !59
  store double %26, ptr %3, align 8, !dbg !60, !tbaa !34
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !27, metadata !DIExpression()), !dbg !41
  %27 = load double, ptr %0, align 8, !dbg !61, !tbaa !34
  %28 = tail call double @llvm.fabs.f64(double %27), !dbg !63
  %29 = load double, ptr %1, align 8, !dbg !64, !tbaa !34
  %30 = tail call double @llvm.fabs.f64(double %29), !dbg !65
  %31 = fcmp ogt double %28, %30, !dbg !66
  %32 = select i1 %31, double %26, double 1.000000e+00, !dbg !67
  tail call void @llvm.dbg.value(metadata double %32, metadata !27, metadata !DIExpression()), !dbg !41
  %33 = fcmp ult double %30, %28, !dbg !68
  br i1 %33, label %40, label %34, !dbg !70

34:                                               ; preds = %11
  %35 = load double, ptr %2, align 8, !dbg !71, !tbaa !34
  %36 = fcmp une double %35, 0.000000e+00, !dbg !72
  br i1 %36, label %37, label %40, !dbg !73

37:                                               ; preds = %34
  %38 = fdiv double 1.000000e+00, %35, !dbg !74
  tail call void @llvm.dbg.value(metadata double %38, metadata !27, metadata !DIExpression()), !dbg !41
  br label %40, !dbg !75

39:                                               ; preds = %4
  store double 1.000000e+00, ptr %2, align 8, !dbg !76, !tbaa !34
  store double 0.000000e+00, ptr %3, align 8, !dbg !78, !tbaa !34
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !26, metadata !DIExpression()), !dbg !41
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !27, metadata !DIExpression()), !dbg !41
  br label %40

40:                                               ; preds = %11, %34, %37, %39
  %41 = phi double [ 0.000000e+00, %39 ], [ %38, %37 ], [ %32, %34 ], [ %32, %11 ], !dbg !79
  %42 = phi double [ 0.000000e+00, %39 ], [ %23, %37 ], [ %23, %34 ], [ %23, %11 ], !dbg !79
  tail call void @llvm.dbg.value(metadata double %42, metadata !26, metadata !DIExpression()), !dbg !41
  tail call void @llvm.dbg.value(metadata double %41, metadata !27, metadata !DIExpression()), !dbg !41
  store double %42, ptr %0, align 8, !dbg !80, !tbaa !34
  store double %41, ptr %1, align 8, !dbg !81, !tbaa !34
  ret void, !dbg !82
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "drotg.c", directory: "/PI-detector/external/gsl/gsl-2.5/cblas", checksumkind: CSK_MD5, checksum: "fe2aa29de3abfb0dd4bbe4108fba5a13")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!9 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!10 = distinct !DISubprogram(name: "cblas_drotg", scope: !1, file: !1, line: 6, type: !11, scopeLine: 7, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !15)
!11 = !DISubroutineType(types: !12)
!12 = !{null, !13, !13, !13, !13}
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!15 = !{!16, !17, !18, !19, !20, !25, !26, !27, !28, !31}
!16 = !DILocalVariable(name: "a", arg: 1, scope: !10, file: !1, line: 6, type: !13)
!17 = !DILocalVariable(name: "b", arg: 2, scope: !10, file: !1, line: 6, type: !13)
!18 = !DILocalVariable(name: "c", arg: 3, scope: !10, file: !1, line: 6, type: !13)
!19 = !DILocalVariable(name: "s", arg: 4, scope: !10, file: !1, line: 6, type: !13)
!20 = !DILocalVariable(name: "roe", scope: !21, file: !22, line: 21, type: !24)
!21 = distinct !DILexicalBlock(scope: !23, file: !22, line: 20, column: 1)
!22 = !DIFile(filename: "./source_rotg.h", directory: "/PI-detector/external/gsl/gsl-2.5/cblas", checksumkind: CSK_MD5, checksum: "dc5715ff5a10162e598f26b529f3b61c")
!23 = !DILexicalBlockFile(scope: !10, file: !22, discriminator: 0)
!24 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!25 = !DILocalVariable(name: "scale", scope: !21, file: !22, line: 22, type: !24)
!26 = !DILocalVariable(name: "r", scope: !21, file: !22, line: 23, type: !14)
!27 = !DILocalVariable(name: "z", scope: !21, file: !22, line: 23, type: !14)
!28 = !DILocalVariable(name: "aos", scope: !29, file: !22, line: 26, type: !24)
!29 = distinct !DILexicalBlock(scope: !30, file: !22, line: 25, column: 21)
!30 = distinct !DILexicalBlock(scope: !21, file: !22, line: 25, column: 7)
!31 = !DILocalVariable(name: "bos", scope: !29, file: !22, line: 27, type: !24)
!32 = !DILocation(line: 0, scope: !10)
!33 = !DILocation(line: 21, column: 26, scope: !21)
!34 = !{!35, !35, i64 0}
!35 = !{!"double", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !DILocation(line: 21, column: 21, scope: !21)
!39 = !DILocation(line: 21, column: 37, scope: !21)
!40 = !DILocation(line: 21, column: 32, scope: !21)
!41 = !DILocation(line: 0, scope: !21)
!42 = !DILocation(line: 22, column: 31, scope: !21)
!43 = !DILocation(line: 25, column: 13, scope: !30)
!44 = !DILocation(line: 25, column: 7, scope: !21)
!45 = !DILocation(line: 21, column: 30, scope: !21)
!46 = !DILocation(line: 26, column: 25, scope: !29)
!47 = !DILocation(line: 0, scope: !29)
!48 = !DILocation(line: 27, column: 25, scope: !29)
!49 = !DILocation(line: 28, column: 26, scope: !29)
!50 = !DILocation(line: 28, column: 38, scope: !29)
!51 = !DILocation(line: 28, column: 32, scope: !29)
!52 = !DILocation(line: 28, column: 17, scope: !29)
!53 = !DILocation(line: 28, column: 15, scope: !29)
!54 = !DILocation(line: 29, column: 9, scope: !29)
!55 = !DILocation(line: 29, column: 23, scope: !29)
!56 = !DILocation(line: 30, column: 13, scope: !29)
!57 = !DILocation(line: 30, column: 8, scope: !29)
!58 = !DILocation(line: 31, column: 10, scope: !29)
!59 = !DILocation(line: 31, column: 13, scope: !29)
!60 = !DILocation(line: 31, column: 8, scope: !29)
!61 = !DILocation(line: 33, column: 14, scope: !62)
!62 = distinct !DILexicalBlock(scope: !29, file: !22, line: 33, column: 9)
!63 = !DILocation(line: 33, column: 9, scope: !62)
!64 = !DILocation(line: 33, column: 25, scope: !62)
!65 = !DILocation(line: 33, column: 20, scope: !62)
!66 = !DILocation(line: 33, column: 18, scope: !62)
!67 = !DILocation(line: 33, column: 9, scope: !29)
!68 = !DILocation(line: 35, column: 18, scope: !69)
!69 = distinct !DILexicalBlock(scope: !29, file: !22, line: 35, column: 9)
!70 = !DILocation(line: 35, column: 30, scope: !69)
!71 = !DILocation(line: 35, column: 33, scope: !69)
!72 = !DILocation(line: 35, column: 36, scope: !69)
!73 = !DILocation(line: 35, column: 9, scope: !29)
!74 = !DILocation(line: 36, column: 15, scope: !69)
!75 = !DILocation(line: 36, column: 7, scope: !69)
!76 = !DILocation(line: 38, column: 8, scope: !77)
!77 = distinct !DILexicalBlock(scope: !30, file: !22, line: 37, column: 10)
!78 = !DILocation(line: 39, column: 8, scope: !77)
!79 = !DILocation(line: 0, scope: !30)
!80 = !DILocation(line: 44, column: 6, scope: !21)
!81 = !DILocation(line: 45, column: 6, scope: !21)
!82 = !DILocation(line: 11, column: 1, scope: !83)
!83 = !DILexicalBlockFile(scope: !10, file: !1, discriminator: 0)
