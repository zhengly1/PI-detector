; ModuleID = 'caxpy.ll'
source_filename = "caxpy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @cblas_caxpy(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr nocapture noundef %4, i32 noundef %5) local_unnamed_addr #0 !dbg !15 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !24, metadata !DIExpression()), !dbg !43
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !25, metadata !DIExpression()), !dbg !43
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !26, metadata !DIExpression()), !dbg !43
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !27, metadata !DIExpression()), !dbg !43
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !28, metadata !DIExpression()), !dbg !43
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !29, metadata !DIExpression()), !dbg !43
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !34, metadata !DIExpression()), !dbg !44
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !35, metadata !DIExpression()), !dbg !44
  %7 = load float, ptr %1, align 4, !dbg !45, !tbaa !46
  tail call void @llvm.dbg.value(metadata float %7, metadata !36, metadata !DIExpression()), !dbg !44
  %8 = getelementptr inbounds float, ptr %1, i64 1, !dbg !50
  %9 = load float, ptr %8, align 4, !dbg !50, !tbaa !46
  tail call void @llvm.dbg.value(metadata float %9, metadata !37, metadata !DIExpression()), !dbg !44
  %10 = fcmp une float %7, 0.000000e+00, !dbg !51
  %11 = fcmp une float %9, 0.000000e+00
  %12 = select i1 %10, i1 true, i1 %11, !dbg !53
  tail call void @llvm.dbg.value(metadata i32 0, metadata !30, metadata !DIExpression()), !dbg !44
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !34, metadata !DIExpression()), !dbg !44
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !35, metadata !DIExpression()), !dbg !44
  %13 = icmp sgt i32 %0, 0
  %14 = and i1 %12, %13, !dbg !53
  br i1 %14, label %15, label %73, !dbg !53

15:                                               ; preds = %6
  %16 = icmp sgt i32 %5, 0, !dbg !54
  %17 = sub nsw i32 1, %0, !dbg !55
  %18 = mul i32 %17, %5, !dbg !54
  %19 = select i1 %16, i32 0, i32 %18, !dbg !54
  tail call void @llvm.dbg.value(metadata i32 %19, metadata !35, metadata !DIExpression()), !dbg !44
  %20 = icmp sgt i32 %3, 0, !dbg !55
  %21 = mul i32 %17, %3, !dbg !55
  %22 = select i1 %20, i32 0, i32 %21, !dbg !55
  tail call void @llvm.dbg.value(metadata i32 %22, metadata !34, metadata !DIExpression()), !dbg !44
  %23 = zext i32 %22 to i64, !dbg !56
  %24 = zext i32 %3 to i64, !dbg !56
  %25 = zext i32 %19 to i64, !dbg !56
  %26 = zext i32 %5 to i64, !dbg !56
  br label %27, !dbg !56

27:                                               ; preds = %27, %15
  %28 = phi i64 [ %25, %15 ], [ %70, %27 ]
  %29 = phi i64 [ %23, %15 ], [ %69, %27 ]
  %30 = phi i32 [ 0, %15 ], [ %71, %27 ]
  tail call void @llvm.dbg.value(metadata i32 %30, metadata !30, metadata !DIExpression()), !dbg !44
  tail call void @llvm.dbg.value(metadata i64 %29, metadata !34, metadata !DIExpression()), !dbg !44
  tail call void @llvm.dbg.value(metadata i64 %28, metadata !35, metadata !DIExpression()), !dbg !44
  %31 = trunc i64 %29 to i32, !dbg !57
  %32 = shl nsw i32 %31, 1, !dbg !57
  %33 = sext i32 %32 to i64, !dbg !57
  %34 = getelementptr inbounds float, ptr %2, i64 %33, !dbg !57
  %35 = load float, ptr %34, align 4, !dbg !57, !tbaa !46
  tail call void @llvm.dbg.value(metadata float %35, metadata !38, metadata !DIExpression()), !dbg !58
  %36 = or disjoint i32 %32, 1, !dbg !59
  %37 = sext i32 %36 to i64, !dbg !59
  %38 = getelementptr inbounds float, ptr %2, i64 %37, !dbg !59
  %39 = load float, ptr %38, align 4, !dbg !59, !tbaa !46
  tail call void @llvm.dbg.value(metadata float %39, metadata !42, metadata !DIExpression()), !dbg !58
  %40 = fmul float %7, %35, !dbg !60
  %41 = fmul float %9, %39, !dbg !61
  %42 = fpext float %40 to double, !dbg !62
  %43 = fpext float %41 to double, !dbg !62
  %44 = fptrunc double %42 to float, !dbg !62
  %45 = fptrunc double %43 to float, !dbg !62
  %handler_result = call float @fSubHandlerFloat(float %44, float %45), !dbg !62
  %46 = trunc i64 %28 to i32, !dbg !62
  %47 = shl nsw i32 %46, 1, !dbg !62
  %48 = sext i32 %47 to i64, !dbg !62
  %49 = getelementptr inbounds float, ptr %4, i64 %48, !dbg !62
  %50 = load float, ptr %49, align 4, !dbg !63, !tbaa !46
  %51 = fpext float %50 to double, !dbg !63
  %52 = fpext float %handler_result to double, !dbg !63
  %53 = fptrunc double %51 to float, !dbg !63
  %54 = fptrunc double %52 to float, !dbg !63
  %handler_result1 = call float @fAddHandlerFloat(float %53, float %54), !dbg !63
  store float %handler_result1, ptr %49, align 4, !dbg !63, !tbaa !46
  %55 = fmul float %7, %39, !dbg !64
  %56 = fmul float %9, %35, !dbg !65
  %57 = fpext float %56 to double, !dbg !66
  %58 = fpext float %55 to double, !dbg !66
  %59 = fptrunc double %57 to float, !dbg !66
  %60 = fptrunc double %58 to float, !dbg !66
  %handler_result2 = call float @fAddHandlerFloat(float %59, float %60), !dbg !66
  %61 = or disjoint i32 %47, 1, !dbg !66
  %62 = sext i32 %61 to i64, !dbg !66
  %63 = getelementptr inbounds float, ptr %4, i64 %62, !dbg !66
  %64 = load float, ptr %63, align 4, !dbg !67, !tbaa !46
  %65 = fpext float %handler_result2 to double, !dbg !67
  %66 = fpext float %64 to double, !dbg !67
  %67 = fptrunc double %65 to float, !dbg !67
  %68 = fptrunc double %66 to float, !dbg !67
  %handler_result3 = call float @fAddHandlerFloat(float %67, float %68), !dbg !67
  store float %handler_result3, ptr %63, align 4, !dbg !67, !tbaa !46
  %69 = add i64 %29, %24, !dbg !68
  tail call void @llvm.dbg.value(metadata i64 %69, metadata !34, metadata !DIExpression()), !dbg !44
  %70 = add i64 %28, %26, !dbg !69
  tail call void @llvm.dbg.value(metadata i64 %70, metadata !35, metadata !DIExpression()), !dbg !44
  %71 = add nuw nsw i32 %30, 1, !dbg !70
  tail call void @llvm.dbg.value(metadata i32 %71, metadata !30, metadata !DIExpression()), !dbg !44
  %72 = icmp eq i32 %71, %0, !dbg !71
  br i1 %72, label %73, label %27, !dbg !56, !llvm.loop !72

73:                                               ; preds = %27, %6
  ret void, !dbg !75
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
!1 = !DIFile(filename: "caxpy.c", directory: "/PI-detector/external/gsl/gsl-2.5/cblas", checksumkind: CSK_MD5, checksum: "c15ee822ca00ea543a9604cd95a53fac")
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
!15 = distinct !DISubprogram(name: "cblas_caxpy", scope: !1, file: !1, line: 6, type: !16, scopeLine: 8, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !23)
!16 = !DISubroutineType(types: !17)
!17 = !{null, !18, !20, !20, !18, !22, !18}
!18 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!19 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!23 = !{!24, !25, !26, !27, !28, !29, !30, !34, !35, !36, !37, !38, !42}
!24 = !DILocalVariable(name: "N", arg: 1, scope: !15, file: !1, line: 6, type: !18)
!25 = !DILocalVariable(name: "alpha", arg: 2, scope: !15, file: !1, line: 6, type: !20)
!26 = !DILocalVariable(name: "X", arg: 3, scope: !15, file: !1, line: 6, type: !20)
!27 = !DILocalVariable(name: "incX", arg: 4, scope: !15, file: !1, line: 6, type: !18)
!28 = !DILocalVariable(name: "Y", arg: 5, scope: !15, file: !1, line: 7, type: !22)
!29 = !DILocalVariable(name: "incY", arg: 6, scope: !15, file: !1, line: 7, type: !18)
!30 = !DILocalVariable(name: "i", scope: !31, file: !32, line: 21, type: !19)
!31 = distinct !DILexicalBlock(scope: !33, file: !32, line: 20, column: 1)
!32 = !DIFile(filename: "./source_axpy_c.h", directory: "/PI-detector/external/gsl/gsl-2.5/cblas", checksumkind: CSK_MD5, checksum: "4c27bcaa31b7c65af4c4a13885713778")
!33 = !DILexicalBlockFile(scope: !15, file: !32, discriminator: 0)
!34 = !DILocalVariable(name: "ix", scope: !31, file: !32, line: 22, type: !19)
!35 = !DILocalVariable(name: "iy", scope: !31, file: !32, line: 23, type: !19)
!36 = !DILocalVariable(name: "alpha_real", scope: !31, file: !32, line: 25, type: !4)
!37 = !DILocalVariable(name: "alpha_imag", scope: !31, file: !32, line: 26, type: !4)
!38 = !DILocalVariable(name: "x_real", scope: !39, file: !32, line: 33, type: !4)
!39 = distinct !DILexicalBlock(scope: !40, file: !32, line: 32, column: 27)
!40 = distinct !DILexicalBlock(scope: !41, file: !32, line: 32, column: 3)
!41 = distinct !DILexicalBlock(scope: !31, file: !32, line: 32, column: 3)
!42 = !DILocalVariable(name: "x_imag", scope: !39, file: !32, line: 34, type: !4)
!43 = !DILocation(line: 0, scope: !15)
!44 = !DILocation(line: 0, scope: !31)
!45 = !DILocation(line: 25, column: 27, scope: !31)
!46 = !{!47, !47, i64 0}
!47 = !{!"float", !48, i64 0}
!48 = !{!"omnipotent char", !49, i64 0}
!49 = !{!"Simple C/C++ TBAA"}
!50 = !DILocation(line: 26, column: 27, scope: !31)
!51 = !DILocation(line: 28, column: 24, scope: !52)
!52 = distinct !DILexicalBlock(scope: !31, file: !32, line: 28, column: 7)
!53 = !DILocation(line: 28, column: 29, scope: !52)
!54 = !DILocation(line: 23, column: 14, scope: !31)
!55 = !DILocation(line: 22, column: 14, scope: !31)
!56 = !DILocation(line: 32, column: 3, scope: !41)
!57 = !DILocation(line: 33, column: 25, scope: !39)
!58 = !DILocation(line: 0, scope: !39)
!59 = !DILocation(line: 34, column: 25, scope: !39)
!60 = !DILocation(line: 35, column: 32, scope: !39)
!61 = !DILocation(line: 35, column: 54, scope: !39)
!62 = !DILocation(line: 35, column: 5, scope: !39)
!63 = !DILocation(line: 35, column: 17, scope: !39)
!64 = !DILocation(line: 36, column: 32, scope: !39)
!65 = !DILocation(line: 36, column: 54, scope: !39)
!66 = !DILocation(line: 36, column: 5, scope: !39)
!67 = !DILocation(line: 36, column: 17, scope: !39)
!68 = !DILocation(line: 37, column: 8, scope: !39)
!69 = !DILocation(line: 38, column: 8, scope: !39)
!70 = !DILocation(line: 32, column: 23, scope: !40)
!71 = !DILocation(line: 32, column: 17, scope: !40)
!72 = distinct !{!72, !56, !73, !74}
!73 = !DILocation(line: 39, column: 3, scope: !41)
!74 = !{!"llvm.loop.mustprogress"}
!75 = !DILocation(line: 12, column: 1, scope: !76)
!76 = !DILexicalBlockFile(scope: !15, file: !1, discriminator: 0)
