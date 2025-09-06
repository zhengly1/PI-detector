; ModuleID = 'sdsdot.c'
source_filename = "sdsdot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local float @cblas_sdsdot(i32 noundef %0, float noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5) local_unnamed_addr #0 !dbg !10 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !19, metadata !DIExpression()), !dbg !33
  tail call void @llvm.dbg.value(metadata float %1, metadata !20, metadata !DIExpression()), !dbg !33
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !21, metadata !DIExpression()), !dbg !33
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !22, metadata !DIExpression()), !dbg !33
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !23, metadata !DIExpression()), !dbg !33
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !24, metadata !DIExpression()), !dbg !33
  tail call void @llvm.dbg.value(metadata double poison, metadata !25, metadata !DIExpression()), !dbg !34
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !31, metadata !DIExpression()), !dbg !34
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !32, metadata !DIExpression()), !dbg !34
  tail call void @llvm.dbg.value(metadata i32 0, metadata !30, metadata !DIExpression()), !dbg !34
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !31, metadata !DIExpression()), !dbg !34
  tail call void @llvm.dbg.value(metadata double poison, metadata !25, metadata !DIExpression()), !dbg !34
  %7 = icmp sgt i32 %0, 0, !dbg !35
  br i1 %7, label %8, label %67, !dbg !38

8:                                                ; preds = %6
  %9 = fpext float %1 to double, !dbg !39
  tail call void @llvm.dbg.value(metadata double %9, metadata !25, metadata !DIExpression()), !dbg !34
  %10 = icmp sgt i32 %5, 0, !dbg !40
  %11 = sub nsw i32 1, %0, !dbg !41
  %12 = mul i32 %11, %5, !dbg !40
  %13 = select i1 %10, i32 0, i32 %12, !dbg !40
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !32, metadata !DIExpression()), !dbg !34
  %14 = icmp sgt i32 %3, 0, !dbg !41
  %15 = mul i32 %11, %3, !dbg !41
  %16 = select i1 %14, i32 0, i32 %15, !dbg !41
  tail call void @llvm.dbg.value(metadata i32 %16, metadata !31, metadata !DIExpression()), !dbg !34
  %17 = sext i32 %13 to i64, !dbg !38
  %18 = sext i32 %5 to i64, !dbg !38
  %19 = sext i32 %16 to i64, !dbg !38
  %20 = sext i32 %3 to i64, !dbg !38
  %21 = and i32 %0, 1, !dbg !38
  %22 = icmp eq i32 %0, 1, !dbg !38
  br i1 %22, label %50, label %23, !dbg !38

23:                                               ; preds = %8
  %24 = and i32 %0, 2147483646, !dbg !38
  br label %25, !dbg !38

25:                                               ; preds = %25, %23
  %26 = phi i64 [ %19, %23 ], [ %46, %25 ]
  %27 = phi i64 [ %17, %23 ], [ %47, %25 ]
  %28 = phi double [ %9, %23 ], [ %45, %25 ]
  %29 = phi i32 [ 0, %23 ], [ %48, %25 ]
  tail call void @llvm.dbg.value(metadata i64 %27, metadata !32, metadata !DIExpression()), !dbg !34
  tail call void @llvm.dbg.value(metadata i64 %26, metadata !31, metadata !DIExpression()), !dbg !34
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !30, metadata !DIExpression()), !dbg !34
  tail call void @llvm.dbg.value(metadata double %28, metadata !25, metadata !DIExpression()), !dbg !34
  %30 = getelementptr inbounds float, ptr %2, i64 %26, !dbg !42
  %31 = load float, ptr %30, align 4, !dbg !42, !tbaa !44
  %32 = getelementptr inbounds float, ptr %4, i64 %27, !dbg !48
  %33 = load float, ptr %32, align 4, !dbg !48, !tbaa !44
  %34 = fmul float %31, %33, !dbg !49
  %35 = fpext float %34 to double, !dbg !42
  %36 = fadd double %28, %35, !dbg !50
  tail call void @llvm.dbg.value(metadata double %36, metadata !25, metadata !DIExpression()), !dbg !34
  %37 = add i64 %26, %20, !dbg !51
  tail call void @llvm.dbg.value(metadata i64 %37, metadata !31, metadata !DIExpression()), !dbg !34
  %38 = add i64 %27, %18, !dbg !52
  tail call void @llvm.dbg.value(metadata i64 %38, metadata !32, metadata !DIExpression()), !dbg !34
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !30, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !34
  tail call void @llvm.dbg.value(metadata i64 %38, metadata !32, metadata !DIExpression()), !dbg !34
  tail call void @llvm.dbg.value(metadata i64 %37, metadata !31, metadata !DIExpression()), !dbg !34
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !30, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !34
  tail call void @llvm.dbg.value(metadata double %36, metadata !25, metadata !DIExpression()), !dbg !34
  %39 = getelementptr inbounds float, ptr %2, i64 %37, !dbg !42
  %40 = load float, ptr %39, align 4, !dbg !42, !tbaa !44
  %41 = getelementptr inbounds float, ptr %4, i64 %38, !dbg !48
  %42 = load float, ptr %41, align 4, !dbg !48, !tbaa !44
  %43 = fmul float %40, %42, !dbg !49
  %44 = fpext float %43 to double, !dbg !42
  %45 = fadd double %36, %44, !dbg !50
  tail call void @llvm.dbg.value(metadata double %45, metadata !25, metadata !DIExpression()), !dbg !34
  %46 = add i64 %37, %20, !dbg !51
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !31, metadata !DIExpression()), !dbg !34
  %47 = add i64 %38, %18, !dbg !52
  tail call void @llvm.dbg.value(metadata i64 %47, metadata !32, metadata !DIExpression()), !dbg !34
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !30, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !34
  %48 = add i32 %29, 2, !dbg !38
  %49 = icmp eq i32 %48, %24, !dbg !38
  br i1 %49, label %50, label %25, !dbg !38, !llvm.loop !53

50:                                               ; preds = %25, %8
  %51 = phi double [ undef, %8 ], [ %45, %25 ]
  %52 = phi i64 [ %19, %8 ], [ %46, %25 ]
  %53 = phi i64 [ %17, %8 ], [ %47, %25 ]
  %54 = phi double [ %9, %8 ], [ %45, %25 ]
  %55 = icmp eq i32 %21, 0, !dbg !38
  br i1 %55, label %64, label %56, !dbg !38

56:                                               ; preds = %50
  tail call void @llvm.dbg.value(metadata i64 %53, metadata !32, metadata !DIExpression()), !dbg !34
  tail call void @llvm.dbg.value(metadata i64 %52, metadata !31, metadata !DIExpression()), !dbg !34
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !30, metadata !DIExpression()), !dbg !34
  tail call void @llvm.dbg.value(metadata double %54, metadata !25, metadata !DIExpression()), !dbg !34
  %57 = getelementptr inbounds float, ptr %2, i64 %52, !dbg !42
  %58 = load float, ptr %57, align 4, !dbg !42, !tbaa !44
  %59 = getelementptr inbounds float, ptr %4, i64 %53, !dbg !48
  %60 = load float, ptr %59, align 4, !dbg !48, !tbaa !44
  %61 = fmul float %58, %60, !dbg !49
  %62 = fpext float %61 to double, !dbg !42
  %63 = fadd double %54, %62, !dbg !50
  tail call void @llvm.dbg.value(metadata double %63, metadata !25, metadata !DIExpression()), !dbg !34
  tail call void @llvm.dbg.value(metadata !DIArgList(i64 %52, i64 %20), metadata !31, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !34
  tail call void @llvm.dbg.value(metadata !DIArgList(i64 %53, i64 %18), metadata !32, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !34
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !30, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !34
  br label %64, !dbg !56

64:                                               ; preds = %50, %56
  %65 = phi double [ %51, %50 ], [ %63, %56 ], !dbg !50
  %66 = fptrunc double %65 to float, !dbg !56
  br label %67, !dbg !56

67:                                               ; preds = %64, %6
  %68 = phi float [ %1, %6 ], [ %66, %64 ], !dbg !34
  ret float %68, !dbg !57
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "sdsdot.c", directory: "/PI-detector/external/gsl/gsl-2.5/cblas", checksumkind: CSK_MD5, checksum: "7b97ccb09dfbeeb786d8465a429c4b0f")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!9 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!10 = distinct !DISubprogram(name: "cblas_sdsdot", scope: !1, file: !1, line: 6, type: !11, scopeLine: 8, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !18)
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !14, !16, !17, !14, !17, !14}
!13 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!14 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!18 = !{!19, !20, !21, !22, !23, !24, !25, !30, !31, !32}
!19 = !DILocalVariable(name: "N", arg: 1, scope: !10, file: !1, line: 6, type: !14)
!20 = !DILocalVariable(name: "alpha", arg: 2, scope: !10, file: !1, line: 6, type: !16)
!21 = !DILocalVariable(name: "X", arg: 3, scope: !10, file: !1, line: 6, type: !17)
!22 = !DILocalVariable(name: "incX", arg: 4, scope: !10, file: !1, line: 6, type: !14)
!23 = !DILocalVariable(name: "Y", arg: 5, scope: !10, file: !1, line: 7, type: !17)
!24 = !DILocalVariable(name: "incY", arg: 6, scope: !10, file: !1, line: 7, type: !14)
!25 = !DILocalVariable(name: "r", scope: !26, file: !27, line: 21, type: !29)
!26 = distinct !DILexicalBlock(scope: !28, file: !27, line: 20, column: 1)
!27 = !DIFile(filename: "./source_dot_r.h", directory: "/PI-detector/external/gsl/gsl-2.5/cblas", checksumkind: CSK_MD5, checksum: "d74193a7e468f4ee0d498d5e34db24a8")
!28 = !DILexicalBlockFile(scope: !10, file: !27, discriminator: 0)
!29 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!30 = !DILocalVariable(name: "i", scope: !26, file: !27, line: 22, type: !15)
!31 = !DILocalVariable(name: "ix", scope: !26, file: !27, line: 23, type: !15)
!32 = !DILocalVariable(name: "iy", scope: !26, file: !27, line: 24, type: !15)
!33 = !DILocation(line: 0, scope: !10)
!34 = !DILocation(line: 0, scope: !26)
!35 = !DILocation(line: 26, column: 17, scope: !36)
!36 = distinct !DILexicalBlock(scope: !37, file: !27, line: 26, column: 3)
!37 = distinct !DILexicalBlock(scope: !26, file: !27, line: 26, column: 3)
!38 = !DILocation(line: 26, column: 3, scope: !37)
!39 = !DILocation(line: 21, column: 16, scope: !26)
!40 = !DILocation(line: 24, column: 14, scope: !26)
!41 = !DILocation(line: 23, column: 14, scope: !26)
!42 = !DILocation(line: 27, column: 10, scope: !43)
!43 = distinct !DILexicalBlock(scope: !36, file: !27, line: 26, column: 27)
!44 = !{!45, !45, i64 0}
!45 = !{!"float", !46, i64 0}
!46 = !{!"omnipotent char", !47, i64 0}
!47 = !{!"Simple C/C++ TBAA"}
!48 = !DILocation(line: 27, column: 18, scope: !43)
!49 = !DILocation(line: 27, column: 16, scope: !43)
!50 = !DILocation(line: 27, column: 7, scope: !43)
!51 = !DILocation(line: 28, column: 8, scope: !43)
!52 = !DILocation(line: 29, column: 8, scope: !43)
!53 = distinct !{!53, !38, !54, !55}
!54 = !DILocation(line: 30, column: 3, scope: !37)
!55 = !{!"llvm.loop.mustprogress"}
!56 = !DILocation(line: 32, column: 10, scope: !26)
!57 = !DILocation(line: 32, column: 3, scope: !26)
