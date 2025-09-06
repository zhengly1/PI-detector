; ModuleID = 'dznrm2.ll'
source_filename = "dznrm2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree nounwind memory(write, argmem: readwrite) uwtable
define dso_local double @cblas_dznrm2(i32 noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 !dbg !14 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !22, metadata !DIExpression()), !dbg !43
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !23, metadata !DIExpression()), !dbg !43
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !24, metadata !DIExpression()), !dbg !43
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !25, metadata !DIExpression()), !dbg !44
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !29, metadata !DIExpression()), !dbg !44
  tail call void @llvm.dbg.value(metadata i32 0, metadata !31, metadata !DIExpression()), !dbg !44
  %4 = icmp eq i32 %0, 0, !dbg !45
  %5 = icmp slt i32 %2, 1
  %6 = or i1 %4, %5, !dbg !47
  br i1 %6, label %61, label %7, !dbg !47

7:                                                ; preds = %3
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !25, metadata !DIExpression()), !dbg !44
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !29, metadata !DIExpression()), !dbg !44
  tail call void @llvm.dbg.value(metadata i32 0, metadata !30, metadata !DIExpression()), !dbg !44
  tail call void @llvm.dbg.value(metadata i32 0, metadata !31, metadata !DIExpression()), !dbg !44
  %8 = icmp sgt i32 %0, 0, !dbg !48
  br i1 %8, label %9, label %56, !dbg !49

9:                                                ; preds = %7
  %10 = zext nneg i32 %2 to i64, !dbg !49
  br label %11, !dbg !49

11:                                               ; preds = %50, %9
  %12 = phi i64 [ 0, %9 ], [ %53, %50 ]
  %13 = phi double [ 0.000000e+00, %9 ], [ %52, %50 ]
  %14 = phi double [ 1.000000e+00, %9 ], [ %51, %50 ]
  %15 = phi i32 [ 0, %9 ], [ %54, %50 ]
  tail call void @llvm.dbg.value(metadata double %13, metadata !25, metadata !DIExpression()), !dbg !44
  tail call void @llvm.dbg.value(metadata double %14, metadata !29, metadata !DIExpression()), !dbg !44
  tail call void @llvm.dbg.value(metadata i32 %15, metadata !30, metadata !DIExpression()), !dbg !44
  tail call void @llvm.dbg.value(metadata i64 %12, metadata !31, metadata !DIExpression()), !dbg !44
  %16 = trunc i64 %12 to i32, !dbg !50
  %17 = shl nsw i32 %16, 1, !dbg !50
  %18 = sext i32 %17 to i64, !dbg !50
  %19 = getelementptr inbounds double, ptr %1, i64 %18, !dbg !50
  %20 = load double, ptr %19, align 8, !dbg !50, !tbaa !51
  tail call void @llvm.dbg.value(metadata double %20, metadata !32, metadata !DIExpression()), !dbg !55
  %21 = or disjoint i32 %17, 1, !dbg !56
  %22 = sext i32 %21 to i64, !dbg !56
  %23 = getelementptr inbounds double, ptr %1, i64 %22, !dbg !56
  %24 = load double, ptr %23, align 8, !dbg !56, !tbaa !51
  tail call void @llvm.dbg.value(metadata double %24, metadata !36, metadata !DIExpression()), !dbg !55
  %25 = fcmp une double %20, 0.000000e+00, !dbg !57
  br i1 %25, label %26, label %36, !dbg !58

26:                                               ; preds = %11
  %27 = tail call double @llvm.fabs.f64(double %20), !dbg !59
  tail call void @llvm.dbg.value(metadata double %27, metadata !37, metadata !DIExpression()), !dbg !60
  %28 = fcmp olt double %13, %27, !dbg !61
  br i1 %28, label %29, label %33, !dbg !63

29:                                               ; preds = %26
  %30 = fdiv double %13, %27, !dbg !64
  %31 = fmul double %14, %30, !dbg !66
  %32 = fmul double %30, %31, !dbg !67
  %handler_result = call double @fAddHandlerDouble(double %32, double 1.000000e+00), !dbg !68
  tail call void @llvm.dbg.value(metadata double %handler_result, metadata !29, metadata !DIExpression()), !dbg !44
  tail call void @llvm.dbg.value(metadata double %27, metadata !25, metadata !DIExpression()), !dbg !44
  br label %36, !dbg !68

33:                                               ; preds = %26
  %34 = fdiv double %27, %13, !dbg !69
  %35 = fmul double %34, %34, !dbg !71
  %handler_result1 = call double @fAddHandlerDouble(double %14, double %35)
  tail call void @llvm.dbg.value(metadata double %handler_result1, metadata !29, metadata !DIExpression()), !dbg !44
  br label %36

36:                                               ; preds = %33, %29, %11
  %37 = phi double [ %14, %11 ], [ %handler_result, %29 ], [ %handler_result1, %33 ], !dbg !44
  %38 = phi double [ %13, %11 ], [ %27, %29 ], [ %13, %33 ], !dbg !44
  tail call void @llvm.dbg.value(metadata double %38, metadata !25, metadata !DIExpression()), !dbg !44
  tail call void @llvm.dbg.value(metadata double %37, metadata !29, metadata !DIExpression()), !dbg !44
  %39 = fcmp une double %24, 0.000000e+00, !dbg !72
  br i1 %39, label %40, label %50, !dbg !73

40:                                               ; preds = %36
  %41 = tail call double @llvm.fabs.f64(double %24), !dbg !74
  tail call void @llvm.dbg.value(metadata double %41, metadata !40, metadata !DIExpression()), !dbg !75
  %42 = fcmp olt double %38, %41, !dbg !76
  br i1 %42, label %43, label %47, !dbg !78

43:                                               ; preds = %40
  %44 = fdiv double %38, %41, !dbg !79
  %45 = fmul double %37, %44, !dbg !81
  %46 = fmul double %44, %45, !dbg !82
  %handler_result2 = call double @fAddHandlerDouble(double %46, double 1.000000e+00), !dbg !83
  tail call void @llvm.dbg.value(metadata double %handler_result2, metadata !29, metadata !DIExpression()), !dbg !44
  tail call void @llvm.dbg.value(metadata double %41, metadata !25, metadata !DIExpression()), !dbg !44
  br label %50, !dbg !83

47:                                               ; preds = %40
  %48 = fdiv double %41, %38, !dbg !84
  %49 = fmul double %48, %48, !dbg !86
  %handler_result3 = call double @fAddHandlerDouble(double %37, double %49)
  tail call void @llvm.dbg.value(metadata double %handler_result3, metadata !29, metadata !DIExpression()), !dbg !44
  br label %50

50:                                               ; preds = %47, %43, %36
  %51 = phi double [ %37, %36 ], [ %handler_result2, %43 ], [ %handler_result3, %47 ], !dbg !55
  %52 = phi double [ %38, %36 ], [ %41, %43 ], [ %38, %47 ], !dbg !55
  tail call void @llvm.dbg.value(metadata double %52, metadata !25, metadata !DIExpression()), !dbg !44
  tail call void @llvm.dbg.value(metadata double %51, metadata !29, metadata !DIExpression()), !dbg !44
  %53 = add i64 %12, %10, !dbg !87
  tail call void @llvm.dbg.value(metadata i64 %53, metadata !31, metadata !DIExpression()), !dbg !44
  %54 = add nuw nsw i32 %15, 1, !dbg !88
  tail call void @llvm.dbg.value(metadata i32 %54, metadata !30, metadata !DIExpression()), !dbg !44
  %55 = icmp eq i32 %54, %0, !dbg !48
  br i1 %55, label %56, label %11, !dbg !49, !llvm.loop !89

56:                                               ; preds = %50, %7
  %57 = phi double [ 1.000000e+00, %7 ], [ %51, %50 ], !dbg !44
  %58 = phi double [ 0.000000e+00, %7 ], [ %52, %50 ], !dbg !44
  %59 = tail call double @sqrt(double noundef %57) #3, !dbg !92
  %60 = fmul double %58, %59, !dbg !93
  br label %61, !dbg !94

61:                                               ; preds = %56, %3
  %62 = phi double [ %60, %56 ], [ 0.000000e+00, %3 ], !dbg !44
  ret double %62, !dbg !95
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !97 double @sqrt(double noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

declare double @fAddHandlerDouble(double, double)

attributes #0 = { nofree nounwind memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "dznrm2.c", directory: "/PI-detector/external/gsl/gsl-2.5/cblas", checksumkind: CSK_MD5, checksum: "fba71b99f94a5607544f19ad6f8f9215")
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
!14 = distinct !DISubprogram(name: "cblas_dznrm2", scope: !1, file: !1, line: 6, type: !15, scopeLine: 7, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !21)
!15 = !DISubroutineType(types: !16)
!16 = !{!5, !17, !19, !17}
!17 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !18)
!18 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!21 = !{!22, !23, !24, !25, !29, !30, !31, !32, !36, !37, !40}
!22 = !DILocalVariable(name: "N", arg: 1, scope: !14, file: !1, line: 6, type: !17)
!23 = !DILocalVariable(name: "X", arg: 2, scope: !14, file: !1, line: 6, type: !19)
!24 = !DILocalVariable(name: "incX", arg: 3, scope: !14, file: !1, line: 6, type: !17)
!25 = !DILocalVariable(name: "scale", scope: !26, file: !27, line: 21, type: !5)
!26 = distinct !DILexicalBlock(scope: !28, file: !27, line: 20, column: 1)
!27 = !DIFile(filename: "./source_nrm2_c.h", directory: "/PI-detector/external/gsl/gsl-2.5/cblas", checksumkind: CSK_MD5, checksum: "52a67d2f1d7efeceb67b24b3bbd9ffc7")
!28 = !DILexicalBlockFile(scope: !14, file: !27, discriminator: 0)
!29 = !DILocalVariable(name: "ssq", scope: !26, file: !27, line: 22, type: !5)
!30 = !DILocalVariable(name: "i", scope: !26, file: !27, line: 23, type: !18)
!31 = !DILocalVariable(name: "ix", scope: !26, file: !27, line: 24, type: !18)
!32 = !DILocalVariable(name: "x", scope: !33, file: !27, line: 31, type: !4)
!33 = distinct !DILexicalBlock(scope: !34, file: !27, line: 30, column: 27)
!34 = distinct !DILexicalBlock(scope: !35, file: !27, line: 30, column: 3)
!35 = distinct !DILexicalBlock(scope: !26, file: !27, line: 30, column: 3)
!36 = !DILocalVariable(name: "y", scope: !33, file: !27, line: 32, type: !4)
!37 = !DILocalVariable(name: "ax", scope: !38, file: !27, line: 35, type: !4)
!38 = distinct !DILexicalBlock(scope: !39, file: !27, line: 34, column: 19)
!39 = distinct !DILexicalBlock(scope: !33, file: !27, line: 34, column: 9)
!40 = !DILocalVariable(name: "ay", scope: !41, file: !27, line: 46, type: !4)
!41 = distinct !DILexicalBlock(scope: !42, file: !27, line: 45, column: 19)
!42 = distinct !DILexicalBlock(scope: !33, file: !27, line: 45, column: 9)
!43 = !DILocation(line: 0, scope: !14)
!44 = !DILocation(line: 0, scope: !26)
!45 = !DILocation(line: 26, column: 9, scope: !46)
!46 = distinct !DILexicalBlock(scope: !26, file: !27, line: 26, column: 7)
!47 = !DILocation(line: 26, column: 14, scope: !46)
!48 = !DILocation(line: 30, column: 17, scope: !34)
!49 = !DILocation(line: 30, column: 3, scope: !35)
!50 = !DILocation(line: 31, column: 20, scope: !33)
!51 = !{!52, !52, i64 0}
!52 = !{!"double", !53, i64 0}
!53 = !{!"omnipotent char", !54, i64 0}
!54 = !{!"Simple C/C++ TBAA"}
!55 = !DILocation(line: 0, scope: !33)
!56 = !DILocation(line: 32, column: 20, scope: !33)
!57 = !DILocation(line: 34, column: 11, scope: !39)
!58 = !DILocation(line: 34, column: 9, scope: !33)
!59 = !DILocation(line: 35, column: 23, scope: !38)
!60 = !DILocation(line: 0, scope: !38)
!61 = !DILocation(line: 37, column: 17, scope: !62)
!62 = distinct !DILexicalBlock(scope: !38, file: !27, line: 37, column: 11)
!63 = !DILocation(line: 37, column: 11, scope: !38)
!64 = !DILocation(line: 38, column: 34, scope: !65)
!65 = distinct !DILexicalBlock(scope: !62, file: !27, line: 37, column: 23)
!66 = !DILocation(line: 38, column: 25, scope: !65)
!67 = !DILocation(line: 38, column: 40, scope: !65)
!68 = !DILocation(line: 40, column: 7, scope: !65)
!69 = !DILocation(line: 41, column: 20, scope: !70)
!70 = distinct !DILexicalBlock(scope: !62, file: !27, line: 40, column: 14)
!71 = !DILocation(line: 41, column: 29, scope: !70)
!72 = !DILocation(line: 45, column: 11, scope: !42)
!73 = !DILocation(line: 45, column: 9, scope: !33)
!74 = !DILocation(line: 46, column: 23, scope: !41)
!75 = !DILocation(line: 0, scope: !41)
!76 = !DILocation(line: 48, column: 17, scope: !77)
!77 = distinct !DILexicalBlock(scope: !41, file: !27, line: 48, column: 11)
!78 = !DILocation(line: 48, column: 11, scope: !41)
!79 = !DILocation(line: 49, column: 34, scope: !80)
!80 = distinct !DILexicalBlock(scope: !77, file: !27, line: 48, column: 23)
!81 = !DILocation(line: 49, column: 25, scope: !80)
!82 = !DILocation(line: 49, column: 40, scope: !80)
!83 = !DILocation(line: 51, column: 7, scope: !80)
!84 = !DILocation(line: 52, column: 20, scope: !85)
!85 = distinct !DILexicalBlock(scope: !77, file: !27, line: 51, column: 14)
!86 = !DILocation(line: 52, column: 29, scope: !85)
!87 = !DILocation(line: 56, column: 8, scope: !33)
!88 = !DILocation(line: 30, column: 23, scope: !34)
!89 = distinct !{!89, !49, !90, !91}
!90 = !DILocation(line: 57, column: 3, scope: !35)
!91 = !{!"llvm.loop.mustprogress"}
!92 = !DILocation(line: 59, column: 18, scope: !26)
!93 = !DILocation(line: 59, column: 16, scope: !26)
!94 = !DILocation(line: 59, column: 3, scope: !26)
!95 = !DILocation(line: 11, column: 1, scope: !96)
!96 = !DILexicalBlockFile(scope: !14, file: !1, discriminator: 0)
!97 = !DISubprogram(name: "sqrt", scope: !98, file: !98, line: 143, type: !99, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!98 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!99 = !DISubroutineType(types: !100)
!100 = !{!5, !5}
