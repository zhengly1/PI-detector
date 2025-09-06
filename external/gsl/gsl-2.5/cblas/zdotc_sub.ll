; ModuleID = 'zdotc_sub.c'
source_filename = "zdotc_sub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @cblas_zdotc_sub(i32 noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #0 !dbg !15 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !24, metadata !DIExpression()), !dbg !45
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !25, metadata !DIExpression()), !dbg !45
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !26, metadata !DIExpression()), !dbg !45
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !27, metadata !DIExpression()), !dbg !45
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !28, metadata !DIExpression()), !dbg !45
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !29, metadata !DIExpression()), !dbg !45
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !30, metadata !DIExpression()), !dbg !46
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !34, metadata !DIExpression()), !dbg !46
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !36, metadata !DIExpression()), !dbg !46
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !37, metadata !DIExpression()), !dbg !46
  tail call void @llvm.dbg.value(metadata i32 0, metadata !35, metadata !DIExpression()), !dbg !46
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !30, metadata !DIExpression()), !dbg !46
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !34, metadata !DIExpression()), !dbg !46
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !36, metadata !DIExpression()), !dbg !46
  %7 = icmp sgt i32 %0, 0, !dbg !47
  br i1 %7, label %8, label %56, !dbg !48

8:                                                ; preds = %6
  %9 = icmp sgt i32 %4, 0, !dbg !49
  %10 = sub nsw i32 1, %0, !dbg !50
  %11 = mul i32 %10, %4, !dbg !49
  %12 = select i1 %9, i32 0, i32 %11, !dbg !49
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !37, metadata !DIExpression()), !dbg !46
  %13 = icmp sgt i32 %2, 0, !dbg !50
  %14 = mul i32 %10, %2, !dbg !50
  %15 = select i1 %13, i32 0, i32 %14, !dbg !50
  tail call void @llvm.dbg.value(metadata i32 %15, metadata !36, metadata !DIExpression()), !dbg !46
  %16 = zext i32 %15 to i64, !dbg !48
  %17 = zext i32 %2 to i64, !dbg !48
  %18 = zext i32 %12 to i64, !dbg !48
  %19 = zext i32 %4 to i64, !dbg !48
  br label %20, !dbg !48

20:                                               ; preds = %8, %20
  %21 = phi i64 [ %18, %8 ], [ %53, %20 ]
  %22 = phi i64 [ %16, %8 ], [ %52, %20 ]
  %23 = phi double [ 0.000000e+00, %8 ], [ %47, %20 ]
  %24 = phi double [ 0.000000e+00, %8 ], [ %51, %20 ]
  %25 = phi i32 [ 0, %8 ], [ %54, %20 ]
  tail call void @llvm.dbg.value(metadata double %23, metadata !30, metadata !DIExpression()), !dbg !46
  tail call void @llvm.dbg.value(metadata double %24, metadata !34, metadata !DIExpression()), !dbg !46
  tail call void @llvm.dbg.value(metadata i32 %25, metadata !35, metadata !DIExpression()), !dbg !46
  tail call void @llvm.dbg.value(metadata i64 %22, metadata !36, metadata !DIExpression()), !dbg !46
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !37, metadata !DIExpression()), !dbg !46
  %26 = trunc i64 %22 to i32, !dbg !51
  %27 = shl nsw i32 %26, 1, !dbg !51
  %28 = sext i32 %27 to i64, !dbg !51
  %29 = getelementptr inbounds double, ptr %1, i64 %28, !dbg !51
  %30 = load double, ptr %29, align 8, !dbg !51, !tbaa !52
  tail call void @llvm.dbg.value(metadata double %30, metadata !38, metadata !DIExpression()), !dbg !56
  %31 = or disjoint i32 %27, 1, !dbg !57
  %32 = sext i32 %31 to i64, !dbg !57
  %33 = getelementptr inbounds double, ptr %1, i64 %32, !dbg !57
  %34 = load double, ptr %33, align 8, !dbg !57, !tbaa !52
  tail call void @llvm.dbg.value(metadata double %34, metadata !42, metadata !DIExpression()), !dbg !56
  %35 = trunc i64 %21 to i32, !dbg !58
  %36 = shl nsw i32 %35, 1, !dbg !58
  %37 = sext i32 %36 to i64, !dbg !58
  %38 = getelementptr inbounds double, ptr %3, i64 %37, !dbg !58
  %39 = load double, ptr %38, align 8, !dbg !58, !tbaa !52
  tail call void @llvm.dbg.value(metadata double %39, metadata !43, metadata !DIExpression()), !dbg !56
  %40 = or disjoint i32 %36, 1, !dbg !59
  %41 = sext i32 %40 to i64, !dbg !59
  %42 = getelementptr inbounds double, ptr %3, i64 %41, !dbg !59
  %43 = load double, ptr %42, align 8, !dbg !59, !tbaa !52
  tail call void @llvm.dbg.value(metadata double %43, metadata !44, metadata !DIExpression()), !dbg !56
  %44 = fmul double %30, %39, !dbg !60
  %45 = fmul double %34, %43, !dbg !61
  %46 = fadd double %44, %45, !dbg !61
  %47 = fadd double %23, %46, !dbg !62
  tail call void @llvm.dbg.value(metadata double %47, metadata !30, metadata !DIExpression()), !dbg !46
  %48 = fmul double %30, %43, !dbg !63
  %49 = fmul double %34, %39, !dbg !64
  %50 = fsub double %48, %49, !dbg !64
  %51 = fadd double %24, %50, !dbg !65
  tail call void @llvm.dbg.value(metadata double %51, metadata !34, metadata !DIExpression()), !dbg !46
  %52 = add i64 %22, %17, !dbg !66
  tail call void @llvm.dbg.value(metadata i64 %52, metadata !36, metadata !DIExpression()), !dbg !46
  %53 = add i64 %21, %19, !dbg !67
  tail call void @llvm.dbg.value(metadata i64 %53, metadata !37, metadata !DIExpression()), !dbg !46
  %54 = add nuw nsw i32 %25, 1, !dbg !68
  tail call void @llvm.dbg.value(metadata i32 %54, metadata !35, metadata !DIExpression()), !dbg !46
  %55 = icmp eq i32 %54, %0, !dbg !47
  br i1 %55, label %56, label %20, !dbg !48, !llvm.loop !69

56:                                               ; preds = %20, %6
  %57 = phi double [ 0.000000e+00, %6 ], [ %51, %20 ], !dbg !46
  %58 = phi double [ 0.000000e+00, %6 ], [ %47, %20 ], !dbg !46
  store double %58, ptr %5, align 8, !dbg !72, !tbaa !52
  %59 = getelementptr inbounds double, ptr %5, i64 1, !dbg !73
  store double %57, ptr %59, align 8, !dbg !74, !tbaa !52
  ret void, !dbg !75
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "zdotc_sub.c", directory: "/PI-detector/external/gsl/gsl-2.5/cblas", checksumkind: CSK_MD5, checksum: "e04cc196830d80a0a5748f408d9eedf9")
!2 = !{!3, !6}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!5 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!7 = !{i32 7, !"Dwarf Version", i32 5}
!8 = !{i32 2, !"Debug Info Version", i32 3}
!9 = !{i32 1, !"wchar_size", i32 4}
!10 = !{i32 8, !"PIC Level", i32 2}
!11 = !{i32 7, !"PIE Level", i32 2}
!12 = !{i32 7, !"uwtable", i32 2}
!13 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!14 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!15 = distinct !DISubprogram(name: "cblas_zdotc_sub", scope: !1, file: !1, line: 6, type: !16, scopeLine: 8, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !23)
!16 = !DISubroutineType(types: !17)
!17 = !{null, !18, !20, !18, !20, !18, !22}
!18 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!19 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!23 = !{!24, !25, !26, !27, !28, !29, !30, !34, !35, !36, !37, !38, !42, !43, !44}
!24 = !DILocalVariable(name: "N", arg: 1, scope: !15, file: !1, line: 6, type: !18)
!25 = !DILocalVariable(name: "X", arg: 2, scope: !15, file: !1, line: 6, type: !20)
!26 = !DILocalVariable(name: "incX", arg: 3, scope: !15, file: !1, line: 6, type: !18)
!27 = !DILocalVariable(name: "Y", arg: 4, scope: !15, file: !1, line: 6, type: !20)
!28 = !DILocalVariable(name: "incY", arg: 5, scope: !15, file: !1, line: 7, type: !18)
!29 = !DILocalVariable(name: "result", arg: 6, scope: !15, file: !1, line: 7, type: !22)
!30 = !DILocalVariable(name: "r_real", scope: !31, file: !32, line: 21, type: !5)
!31 = distinct !DILexicalBlock(scope: !33, file: !32, line: 20, column: 1)
!32 = !DIFile(filename: "./source_dot_c.h", directory: "/PI-detector/external/gsl/gsl-2.5/cblas", checksumkind: CSK_MD5, checksum: "3c5569712793d6c590d4a98b93395b51")
!33 = !DILexicalBlockFile(scope: !15, file: !32, discriminator: 0)
!34 = !DILocalVariable(name: "r_imag", scope: !31, file: !32, line: 22, type: !5)
!35 = !DILocalVariable(name: "i", scope: !31, file: !32, line: 23, type: !19)
!36 = !DILocalVariable(name: "ix", scope: !31, file: !32, line: 24, type: !19)
!37 = !DILocalVariable(name: "iy", scope: !31, file: !32, line: 25, type: !19)
!38 = !DILocalVariable(name: "x_real", scope: !39, file: !32, line: 27, type: !4)
!39 = distinct !DILexicalBlock(scope: !40, file: !32, line: 26, column: 27)
!40 = distinct !DILexicalBlock(scope: !41, file: !32, line: 26, column: 3)
!41 = distinct !DILexicalBlock(scope: !31, file: !32, line: 26, column: 3)
!42 = !DILocalVariable(name: "x_imag", scope: !39, file: !32, line: 28, type: !4)
!43 = !DILocalVariable(name: "y_real", scope: !39, file: !32, line: 29, type: !4)
!44 = !DILocalVariable(name: "y_imag", scope: !39, file: !32, line: 30, type: !4)
!45 = !DILocation(line: 0, scope: !15)
!46 = !DILocation(line: 0, scope: !31)
!47 = !DILocation(line: 26, column: 17, scope: !40)
!48 = !DILocation(line: 26, column: 3, scope: !41)
!49 = !DILocation(line: 25, column: 14, scope: !31)
!50 = !DILocation(line: 24, column: 14, scope: !31)
!51 = !DILocation(line: 27, column: 25, scope: !39)
!52 = !{!53, !53, i64 0}
!53 = !{!"double", !54, i64 0}
!54 = !{!"omnipotent char", !55, i64 0}
!55 = !{!"Simple C/C++ TBAA"}
!56 = !DILocation(line: 0, scope: !39)
!57 = !DILocation(line: 28, column: 25, scope: !39)
!58 = !DILocation(line: 29, column: 25, scope: !39)
!59 = !DILocation(line: 30, column: 25, scope: !39)
!60 = !DILocation(line: 31, column: 22, scope: !39)
!61 = !DILocation(line: 31, column: 31, scope: !39)
!62 = !DILocation(line: 31, column: 12, scope: !39)
!63 = !DILocation(line: 32, column: 22, scope: !39)
!64 = !DILocation(line: 32, column: 31, scope: !39)
!65 = !DILocation(line: 32, column: 12, scope: !39)
!66 = !DILocation(line: 33, column: 8, scope: !39)
!67 = !DILocation(line: 34, column: 8, scope: !39)
!68 = !DILocation(line: 26, column: 23, scope: !40)
!69 = distinct !{!69, !48, !70, !71}
!70 = !DILocation(line: 35, column: 3, scope: !41)
!71 = !{!"llvm.loop.mustprogress"}
!72 = !DILocation(line: 36, column: 17, scope: !31)
!73 = !DILocation(line: 37, column: 3, scope: !31)
!74 = !DILocation(line: 37, column: 17, scope: !31)
!75 = !DILocation(line: 14, column: 1, scope: !76)
!76 = !DILexicalBlockFile(scope: !15, file: !1, discriminator: 0)
