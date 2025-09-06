; ModuleID = 'srotg.ll'
source_filename = "srotg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @cblas_srotg(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 !dbg !10 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !16, metadata !DIExpression()), !dbg !32
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !17, metadata !DIExpression()), !dbg !32
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !18, metadata !DIExpression()), !dbg !32
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !19, metadata !DIExpression()), !dbg !32
  %5 = load float, ptr %0, align 4, !dbg !33, !tbaa !34
  %6 = tail call float @llvm.fabs.f32(float %5), !dbg !38
  %7 = load float, ptr %1, align 4, !dbg !39, !tbaa !34
  %8 = tail call float @llvm.fabs.f32(float %7), !dbg !40
  tail call void @llvm.dbg.value(metadata float poison, metadata !20, metadata !DIExpression()), !dbg !41
  %9 = fpext float %6 to double, !dbg !42
  %10 = fpext float %8 to double, !dbg !42
  %11 = fptrunc double %9 to float, !dbg !42
  %12 = fptrunc double %10 to float, !dbg !42
  %handler_result = call float @fAddHandlerFloat(float %11, float %12), !dbg !42
  tail call void @llvm.dbg.value(metadata float %handler_result, metadata !25, metadata !DIExpression()), !dbg !41
  %13 = fcmp une float %handler_result, 0.000000e+00, !dbg !42
  br i1 %13, label %14, label %48, !dbg !43

14:                                               ; preds = %4
  %15 = fcmp ogt float %6, %8, !dbg !44
  %16 = select i1 %15, float %5, float %7, !dbg !38
  tail call void @llvm.dbg.value(metadata float %16, metadata !20, metadata !DIExpression()), !dbg !41
  %17 = fpext float %handler_result to double, !dbg !45
  %18 = fdiv float %5, %handler_result, !dbg !46
  tail call void @llvm.dbg.value(metadata float %18, metadata !28, metadata !DIExpression()), !dbg !47
  %19 = fdiv float %7, %handler_result, !dbg !48
  tail call void @llvm.dbg.value(metadata float %19, metadata !31, metadata !DIExpression()), !dbg !47
  %20 = fmul float %18, %18, !dbg !49
  %21 = fmul float %19, %19, !dbg !50
  %22 = fpext float %20 to double, !dbg !51
  %23 = fpext float %21 to double, !dbg !51
  %24 = fptrunc double %22 to float, !dbg !51
  %25 = fptrunc double %23 to float, !dbg !51
  %handler_result1 = call float @fAddHandlerFloat(float %24, float %25), !dbg !51
  %26 = fpext float %handler_result1 to double, !dbg !51
  %27 = tail call double @llvm.sqrt.f64(double %26), !dbg !52
  %28 = fmul double %27, %17, !dbg !53
  %29 = fptrunc double %28 to float, !dbg !54
  tail call void @llvm.dbg.value(metadata float %29, metadata !26, metadata !DIExpression()), !dbg !41
  %30 = fcmp oge float %16, 0.000000e+00, !dbg !55
  %31 = fneg float %29, !dbg !56
  %32 = select i1 %30, float %29, float %31, !dbg !56
  tail call void @llvm.dbg.value(metadata float %32, metadata !26, metadata !DIExpression()), !dbg !41
  %33 = fdiv float %5, %32, !dbg !57
  store float %33, ptr %2, align 4, !dbg !58, !tbaa !34
  %34 = load float, ptr %1, align 4, !dbg !59, !tbaa !34
  %35 = fdiv float %34, %32, !dbg !60
  store float %35, ptr %3, align 4, !dbg !61, !tbaa !34
  tail call void @llvm.dbg.value(metadata float 1.000000e+00, metadata !27, metadata !DIExpression()), !dbg !41
  %36 = load float, ptr %0, align 4, !dbg !62, !tbaa !34
  %37 = tail call float @llvm.fabs.f32(float %36), !dbg !64
  %38 = load float, ptr %1, align 4, !dbg !65, !tbaa !34
  %39 = tail call float @llvm.fabs.f32(float %38), !dbg !66
  %40 = fcmp ogt float %37, %39, !dbg !67
  %41 = select i1 %40, float %35, float 1.000000e+00, !dbg !68
  tail call void @llvm.dbg.value(metadata float %41, metadata !27, metadata !DIExpression()), !dbg !41
  %42 = fcmp ult float %39, %37, !dbg !69
  br i1 %42, label %49, label %43, !dbg !71

43:                                               ; preds = %14
  %44 = load float, ptr %2, align 4, !dbg !72, !tbaa !34
  %45 = fcmp une float %44, 0.000000e+00, !dbg !73
  br i1 %45, label %46, label %49, !dbg !74

46:                                               ; preds = %43
  %47 = fdiv float 1.000000e+00, %44, !dbg !75
  tail call void @llvm.dbg.value(metadata float %47, metadata !27, metadata !DIExpression()), !dbg !41
  br label %49, !dbg !76

48:                                               ; preds = %4
  store float 1.000000e+00, ptr %2, align 4, !dbg !77, !tbaa !34
  store float 0.000000e+00, ptr %3, align 4, !dbg !79, !tbaa !34
  tail call void @llvm.dbg.value(metadata float 0.000000e+00, metadata !26, metadata !DIExpression()), !dbg !41
  tail call void @llvm.dbg.value(metadata float 0.000000e+00, metadata !27, metadata !DIExpression()), !dbg !41
  br label %49

49:                                               ; preds = %48, %46, %43, %14
  %50 = phi float [ 0.000000e+00, %48 ], [ %47, %46 ], [ %41, %43 ], [ %41, %14 ], !dbg !80
  %51 = phi float [ 0.000000e+00, %48 ], [ %32, %46 ], [ %32, %43 ], [ %32, %14 ], !dbg !80
  tail call void @llvm.dbg.value(metadata float %51, metadata !26, metadata !DIExpression()), !dbg !41
  tail call void @llvm.dbg.value(metadata float %50, metadata !27, metadata !DIExpression()), !dbg !41
  store float %51, ptr %0, align 4, !dbg !81, !tbaa !34
  store float %50, ptr %1, align 4, !dbg !82, !tbaa !34
  ret void, !dbg !83
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #1

declare float @fAddHandlerFloat(float, float)

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "srotg.c", directory: "/PI-detector/external/gsl/gsl-2.5/cblas", checksumkind: CSK_MD5, checksum: "8455437a1160359516067a90ea72dfdf")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!9 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!10 = distinct !DISubprogram(name: "cblas_srotg", scope: !1, file: !1, line: 6, type: !11, scopeLine: 7, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !15)
!11 = !DISubroutineType(types: !12)
!12 = !{null, !13, !13, !13, !13}
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
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
!35 = !{!"float", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !DILocation(line: 21, column: 21, scope: !21)
!39 = !DILocation(line: 21, column: 37, scope: !21)
!40 = !DILocation(line: 21, column: 32, scope: !21)
!41 = !DILocation(line: 0, scope: !21)
!42 = !DILocation(line: 25, column: 13, scope: !30)
!43 = !DILocation(line: 25, column: 7, scope: !21)
!44 = !DILocation(line: 21, column: 30, scope: !21)
!45 = !DILocation(line: 25, column: 7, scope: !30)
!46 = !DILocation(line: 26, column: 25, scope: !29)
!47 = !DILocation(line: 0, scope: !29)
!48 = !DILocation(line: 27, column: 25, scope: !29)
!49 = !DILocation(line: 28, column: 26, scope: !29)
!50 = !DILocation(line: 28, column: 38, scope: !29)
!51 = !DILocation(line: 28, column: 22, scope: !29)
!52 = !DILocation(line: 28, column: 17, scope: !29)
!53 = !DILocation(line: 28, column: 15, scope: !29)
!54 = !DILocation(line: 28, column: 9, scope: !29)
!55 = !DILocation(line: 29, column: 9, scope: !29)
!56 = !DILocation(line: 29, column: 23, scope: !29)
!57 = !DILocation(line: 30, column: 13, scope: !29)
!58 = !DILocation(line: 30, column: 8, scope: !29)
!59 = !DILocation(line: 31, column: 10, scope: !29)
!60 = !DILocation(line: 31, column: 13, scope: !29)
!61 = !DILocation(line: 31, column: 8, scope: !29)
!62 = !DILocation(line: 33, column: 14, scope: !63)
!63 = distinct !DILexicalBlock(scope: !29, file: !22, line: 33, column: 9)
!64 = !DILocation(line: 33, column: 9, scope: !63)
!65 = !DILocation(line: 33, column: 25, scope: !63)
!66 = !DILocation(line: 33, column: 20, scope: !63)
!67 = !DILocation(line: 33, column: 18, scope: !63)
!68 = !DILocation(line: 33, column: 9, scope: !29)
!69 = !DILocation(line: 35, column: 18, scope: !70)
!70 = distinct !DILexicalBlock(scope: !29, file: !22, line: 35, column: 9)
!71 = !DILocation(line: 35, column: 30, scope: !70)
!72 = !DILocation(line: 35, column: 33, scope: !70)
!73 = !DILocation(line: 35, column: 36, scope: !70)
!74 = !DILocation(line: 35, column: 9, scope: !29)
!75 = !DILocation(line: 36, column: 11, scope: !70)
!76 = !DILocation(line: 36, column: 7, scope: !70)
!77 = !DILocation(line: 38, column: 8, scope: !78)
!78 = distinct !DILexicalBlock(scope: !30, file: !22, line: 37, column: 10)
!79 = !DILocation(line: 39, column: 8, scope: !78)
!80 = !DILocation(line: 0, scope: !30)
!81 = !DILocation(line: 44, column: 6, scope: !21)
!82 = !DILocation(line: 45, column: 6, scope: !21)
!83 = !DILocation(line: 11, column: 1, scope: !84)
!84 = !DILexicalBlockFile(scope: !10, file: !1, discriminator: 0)
