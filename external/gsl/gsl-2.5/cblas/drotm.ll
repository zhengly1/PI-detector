; ModuleID = 'drotm.c'
source_filename = "drotm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"./source_rotm.h\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [27 x i8] c"unrecognized value of P[0]\00", align 1, !dbg !7

; Function Attrs: nounwind uwtable
define dso_local void @cblas_drotm(i32 noundef %0, ptr nocapture noundef %1, i32 noundef %2, ptr nocapture noundef %3, i32 noundef %4, ptr nocapture noundef readonly %5) local_unnamed_addr #0 !dbg !23 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !33, metadata !DIExpression()), !dbg !53
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !34, metadata !DIExpression()), !dbg !53
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !35, metadata !DIExpression()), !dbg !53
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !36, metadata !DIExpression()), !dbg !53
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !37, metadata !DIExpression()), !dbg !53
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !38, metadata !DIExpression()), !dbg !53
  %7 = icmp sgt i32 %2, 0, !dbg !54
  %8 = sub i32 1, %0, !dbg !54
  %9 = mul i32 %8, %2, !dbg !54
  %10 = select i1 %7, i32 0, i32 %9, !dbg !54
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !42, metadata !DIExpression()), !dbg !55
  %11 = icmp sgt i32 %4, 0, !dbg !56
  %12 = mul i32 %8, %4, !dbg !56
  %13 = select i1 %11, i32 0, i32 %12, !dbg !56
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !43, metadata !DIExpression()), !dbg !55
  %14 = load double, ptr %5, align 8, !dbg !57, !tbaa !59
  %15 = fcmp oeq double %14, -1.000000e+00, !dbg !63
  br i1 %15, label %16, label %25, !dbg !64

16:                                               ; preds = %6
  %17 = getelementptr inbounds double, ptr %5, i64 1, !dbg !65
  %18 = load double, ptr %17, align 8, !dbg !65, !tbaa !59
  tail call void @llvm.dbg.value(metadata double %18, metadata !44, metadata !DIExpression()), !dbg !55
  %19 = getelementptr inbounds double, ptr %5, i64 2, !dbg !67
  %20 = load double, ptr %19, align 8, !dbg !67, !tbaa !59
  tail call void @llvm.dbg.value(metadata double %20, metadata !45, metadata !DIExpression()), !dbg !55
  %21 = getelementptr inbounds double, ptr %5, i64 3, !dbg !68
  %22 = load double, ptr %21, align 8, !dbg !68, !tbaa !59
  tail call void @llvm.dbg.value(metadata double %22, metadata !46, metadata !DIExpression()), !dbg !55
  %23 = getelementptr inbounds double, ptr %5, i64 4, !dbg !69
  %24 = load double, ptr %23, align 8, !dbg !69, !tbaa !59
  tail call void @llvm.dbg.value(metadata double %24, metadata !47, metadata !DIExpression()), !dbg !55
  br label %42, !dbg !70

25:                                               ; preds = %6
  %26 = fcmp oeq double %14, 0.000000e+00, !dbg !71
  br i1 %26, label %27, label %32, !dbg !73

27:                                               ; preds = %25
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !44, metadata !DIExpression()), !dbg !55
  %28 = getelementptr inbounds double, ptr %5, i64 2, !dbg !74
  %29 = load double, ptr %28, align 8, !dbg !74, !tbaa !59
  tail call void @llvm.dbg.value(metadata double %29, metadata !45, metadata !DIExpression()), !dbg !55
  %30 = getelementptr inbounds double, ptr %5, i64 3, !dbg !76
  %31 = load double, ptr %30, align 8, !dbg !76, !tbaa !59
  tail call void @llvm.dbg.value(metadata double %31, metadata !46, metadata !DIExpression()), !dbg !55
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !47, metadata !DIExpression()), !dbg !55
  br label %42, !dbg !77

32:                                               ; preds = %25
  %33 = fcmp oeq double %14, 1.000000e+00, !dbg !78
  br i1 %33, label %34, label %39, !dbg !80

34:                                               ; preds = %32
  %35 = getelementptr inbounds double, ptr %5, i64 1, !dbg !81
  %36 = load double, ptr %35, align 8, !dbg !81, !tbaa !59
  tail call void @llvm.dbg.value(metadata double %36, metadata !44, metadata !DIExpression()), !dbg !55
  tail call void @llvm.dbg.value(metadata double -1.000000e+00, metadata !45, metadata !DIExpression()), !dbg !55
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !46, metadata !DIExpression()), !dbg !55
  %37 = getelementptr inbounds double, ptr %5, i64 4, !dbg !83
  %38 = load double, ptr %37, align 8, !dbg !83, !tbaa !59
  tail call void @llvm.dbg.value(metadata double %38, metadata !47, metadata !DIExpression()), !dbg !55
  br label %42

39:                                               ; preds = %32
  %40 = fcmp oeq double %14, -2.000000e+00, !dbg !84
  br i1 %40, label %71, label %41, !dbg !86

41:                                               ; preds = %39
  tail call void (i32, ptr, ptr, ...) @cblas_xerbla(i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #3, !dbg !87
  br label %71, !dbg !89

42:                                               ; preds = %27, %34, %16
  %43 = phi double [ %18, %16 ], [ 1.000000e+00, %27 ], [ %36, %34 ], !dbg !90
  %44 = phi double [ %20, %16 ], [ %29, %27 ], [ -1.000000e+00, %34 ], !dbg !90
  %45 = phi double [ %22, %16 ], [ %31, %27 ], [ 1.000000e+00, %34 ], !dbg !90
  %46 = phi double [ %24, %16 ], [ 1.000000e+00, %27 ], [ %38, %34 ], !dbg !90
  tail call void @llvm.dbg.value(metadata double %46, metadata !47, metadata !DIExpression()), !dbg !55
  tail call void @llvm.dbg.value(metadata double %45, metadata !46, metadata !DIExpression()), !dbg !55
  tail call void @llvm.dbg.value(metadata double %44, metadata !45, metadata !DIExpression()), !dbg !55
  tail call void @llvm.dbg.value(metadata double %43, metadata !44, metadata !DIExpression()), !dbg !55
  tail call void @llvm.dbg.value(metadata i32 0, metadata !39, metadata !DIExpression()), !dbg !55
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !42, metadata !DIExpression()), !dbg !55
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !43, metadata !DIExpression()), !dbg !55
  %47 = icmp sgt i32 %0, 0, !dbg !91
  br i1 %47, label %48, label %71, !dbg !92

48:                                               ; preds = %42
  %49 = sext i32 %10 to i64, !dbg !92
  %50 = sext i32 %2 to i64, !dbg !92
  %51 = sext i32 %13 to i64, !dbg !92
  %52 = sext i32 %4 to i64, !dbg !92
  br label %53, !dbg !92

53:                                               ; preds = %48, %53
  %54 = phi i64 [ %51, %48 ], [ %68, %53 ]
  %55 = phi i64 [ %49, %48 ], [ %67, %53 ]
  %56 = phi i32 [ 0, %48 ], [ %69, %53 ]
  tail call void @llvm.dbg.value(metadata i32 %56, metadata !39, metadata !DIExpression()), !dbg !55
  tail call void @llvm.dbg.value(metadata i64 %55, metadata !42, metadata !DIExpression()), !dbg !55
  tail call void @llvm.dbg.value(metadata i64 %54, metadata !43, metadata !DIExpression()), !dbg !55
  %57 = getelementptr inbounds double, ptr %1, i64 %55, !dbg !93
  %58 = load double, ptr %57, align 8, !dbg !93, !tbaa !59
  tail call void @llvm.dbg.value(metadata double %58, metadata !48, metadata !DIExpression()), !dbg !94
  %59 = getelementptr inbounds double, ptr %3, i64 %54, !dbg !95
  %60 = load double, ptr %59, align 8, !dbg !95, !tbaa !59
  tail call void @llvm.dbg.value(metadata double %60, metadata !52, metadata !DIExpression()), !dbg !94
  %61 = fmul double %43, %58, !dbg !96
  %62 = fmul double %45, %60, !dbg !97
  %63 = fadd double %61, %62, !dbg !98
  store double %63, ptr %57, align 8, !dbg !99, !tbaa !59
  %64 = fmul double %44, %58, !dbg !100
  %65 = fmul double %46, %60, !dbg !101
  %66 = fadd double %64, %65, !dbg !102
  store double %66, ptr %59, align 8, !dbg !103, !tbaa !59
  %67 = add i64 %55, %50, !dbg !104
  tail call void @llvm.dbg.value(metadata i64 %67, metadata !42, metadata !DIExpression()), !dbg !55
  %68 = add i64 %54, %52, !dbg !105
  tail call void @llvm.dbg.value(metadata i64 %68, metadata !43, metadata !DIExpression()), !dbg !55
  %69 = add nuw nsw i32 %56, 1, !dbg !106
  tail call void @llvm.dbg.value(metadata i32 %69, metadata !39, metadata !DIExpression()), !dbg !55
  %70 = icmp eq i32 %69, %0, !dbg !91
  br i1 %70, label %71, label %53, !dbg !92, !llvm.loop !107

71:                                               ; preds = %53, %42, %39, %41
  ret void, !dbg !110
}

declare !dbg !112 void @cblas_xerbla(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!12}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 45, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "./source_rotm.h", directory: "/PI-detector/external/gsl/gsl-2.5/cblas", checksumkind: CSK_MD5, checksum: "13798dc8e5a07f3b8963558c94c09c98")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 16)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 45, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 27)
!12 = distinct !DICompileUnit(language: DW_LANG_C11, file: !13, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !14, splitDebugInlining: false, nameTableKind: None)
!13 = !DIFile(filename: "drotm.c", directory: "/PI-detector/external/gsl/gsl-2.5/cblas", checksumkind: CSK_MD5, checksum: "c5ca07a36dad1925b6d98917e14d5ed6")
!14 = !{!0, !7}
!15 = !{i32 7, !"Dwarf Version", i32 5}
!16 = !{i32 2, !"Debug Info Version", i32 3}
!17 = !{i32 1, !"wchar_size", i32 4}
!18 = !{i32 8, !"PIC Level", i32 2}
!19 = !{i32 7, !"PIE Level", i32 2}
!20 = !{i32 7, !"uwtable", i32 2}
!21 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!22 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!23 = distinct !DISubprogram(name: "cblas_drotm", scope: !13, file: !13, line: 6, type: !24, scopeLine: 8, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !12, retainedNodes: !32)
!24 = !DISubroutineType(types: !25)
!25 = !{null, !26, !28, !26, !28, !26, !30}
!26 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!27 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !29)
!32 = !{!33, !34, !35, !36, !37, !38, !39, !42, !43, !44, !45, !46, !47, !48, !52}
!33 = !DILocalVariable(name: "N", arg: 1, scope: !23, file: !13, line: 6, type: !26)
!34 = !DILocalVariable(name: "X", arg: 2, scope: !23, file: !13, line: 6, type: !28)
!35 = !DILocalVariable(name: "incX", arg: 3, scope: !23, file: !13, line: 6, type: !26)
!36 = !DILocalVariable(name: "Y", arg: 4, scope: !23, file: !13, line: 6, type: !28)
!37 = !DILocalVariable(name: "incY", arg: 5, scope: !23, file: !13, line: 7, type: !26)
!38 = !DILocalVariable(name: "P", arg: 6, scope: !23, file: !13, line: 7, type: !30)
!39 = !DILocalVariable(name: "n", scope: !40, file: !2, line: 21, type: !27)
!40 = distinct !DILexicalBlock(scope: !41, file: !2, line: 20, column: 1)
!41 = !DILexicalBlockFile(scope: !23, file: !2, discriminator: 0)
!42 = !DILocalVariable(name: "i", scope: !40, file: !2, line: 22, type: !27)
!43 = !DILocalVariable(name: "j", scope: !40, file: !2, line: 23, type: !27)
!44 = !DILocalVariable(name: "h11", scope: !40, file: !2, line: 25, type: !29)
!45 = !DILocalVariable(name: "h21", scope: !40, file: !2, line: 25, type: !29)
!46 = !DILocalVariable(name: "h12", scope: !40, file: !2, line: 25, type: !29)
!47 = !DILocalVariable(name: "h22", scope: !40, file: !2, line: 25, type: !29)
!48 = !DILocalVariable(name: "w", scope: !49, file: !2, line: 50, type: !31)
!49 = distinct !DILexicalBlock(scope: !50, file: !2, line: 49, column: 27)
!50 = distinct !DILexicalBlock(scope: !51, file: !2, line: 49, column: 3)
!51 = distinct !DILexicalBlock(scope: !40, file: !2, line: 49, column: 3)
!52 = !DILocalVariable(name: "z", scope: !49, file: !2, line: 51, type: !31)
!53 = !DILocation(line: 0, scope: !23)
!54 = !DILocation(line: 22, column: 13, scope: !40)
!55 = !DILocation(line: 0, scope: !40)
!56 = !DILocation(line: 23, column: 13, scope: !40)
!57 = !DILocation(line: 27, column: 7, scope: !58)
!58 = distinct !DILexicalBlock(scope: !40, file: !2, line: 27, column: 7)
!59 = !{!60, !60, i64 0}
!60 = !{!"double", !61, i64 0}
!61 = !{!"omnipotent char", !62, i64 0}
!62 = !{!"Simple C/C++ TBAA"}
!63 = !DILocation(line: 27, column: 12, scope: !58)
!64 = !DILocation(line: 27, column: 7, scope: !40)
!65 = !DILocation(line: 28, column: 11, scope: !66)
!66 = distinct !DILexicalBlock(scope: !58, file: !2, line: 27, column: 21)
!67 = !DILocation(line: 29, column: 11, scope: !66)
!68 = !DILocation(line: 30, column: 11, scope: !66)
!69 = !DILocation(line: 31, column: 11, scope: !66)
!70 = !DILocation(line: 32, column: 3, scope: !66)
!71 = !DILocation(line: 32, column: 19, scope: !72)
!72 = distinct !DILexicalBlock(scope: !58, file: !2, line: 32, column: 14)
!73 = !DILocation(line: 32, column: 14, scope: !58)
!74 = !DILocation(line: 34, column: 11, scope: !75)
!75 = distinct !DILexicalBlock(scope: !72, file: !2, line: 32, column: 27)
!76 = !DILocation(line: 35, column: 11, scope: !75)
!77 = !DILocation(line: 37, column: 3, scope: !75)
!78 = !DILocation(line: 37, column: 19, scope: !79)
!79 = distinct !DILexicalBlock(scope: !72, file: !2, line: 37, column: 14)
!80 = !DILocation(line: 37, column: 14, scope: !72)
!81 = !DILocation(line: 38, column: 11, scope: !82)
!82 = distinct !DILexicalBlock(scope: !79, file: !2, line: 37, column: 27)
!83 = !DILocation(line: 41, column: 11, scope: !82)
!84 = !DILocation(line: 42, column: 19, scope: !85)
!85 = distinct !DILexicalBlock(scope: !79, file: !2, line: 42, column: 14)
!86 = !DILocation(line: 42, column: 14, scope: !79)
!87 = !DILocation(line: 45, column: 5, scope: !88)
!88 = distinct !DILexicalBlock(scope: !85, file: !2, line: 44, column: 10)
!89 = !DILocation(line: 46, column: 5, scope: !88)
!90 = !DILocation(line: 0, scope: !58)
!91 = !DILocation(line: 49, column: 17, scope: !50)
!92 = !DILocation(line: 49, column: 3, scope: !51)
!93 = !DILocation(line: 50, column: 20, scope: !49)
!94 = !DILocation(line: 0, scope: !49)
!95 = !DILocation(line: 51, column: 20, scope: !49)
!96 = !DILocation(line: 52, column: 16, scope: !49)
!97 = !DILocation(line: 52, column: 26, scope: !49)
!98 = !DILocation(line: 52, column: 20, scope: !49)
!99 = !DILocation(line: 52, column: 10, scope: !49)
!100 = !DILocation(line: 53, column: 16, scope: !49)
!101 = !DILocation(line: 53, column: 26, scope: !49)
!102 = !DILocation(line: 53, column: 20, scope: !49)
!103 = !DILocation(line: 53, column: 10, scope: !49)
!104 = !DILocation(line: 54, column: 7, scope: !49)
!105 = !DILocation(line: 55, column: 7, scope: !49)
!106 = !DILocation(line: 49, column: 23, scope: !50)
!107 = distinct !{!107, !92, !108, !109}
!108 = !DILocation(line: 56, column: 3, scope: !51)
!109 = !{!"llvm.loop.mustprogress"}
!110 = !DILocation(line: 12, column: 1, scope: !111)
!111 = !DILexicalBlockFile(scope: !23, file: !13, discriminator: 0)
!112 = !DISubprogram(name: "cblas_xerbla", scope: !113, file: !113, line: 602, type: !114, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!113 = !DIFile(filename: "../gsl/gsl_cblas.h", directory: "/PI-detector/external/gsl/gsl-2.5/cblas", checksumkind: CSK_MD5, checksum: "03ac5115536daff0db5f3e2b63839634")
!114 = !DISubroutineType(types: !115)
!115 = !{null, !27, !116, !116, null}
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
