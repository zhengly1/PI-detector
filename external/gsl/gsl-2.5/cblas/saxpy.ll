; ModuleID = 'saxpy.c'
source_filename = "saxpy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @cblas_saxpy(i32 noundef %0, float noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr nocapture noundef %4, i32 noundef %5) local_unnamed_addr #0 !dbg !10 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !20, metadata !DIExpression()), !dbg !36
  tail call void @llvm.dbg.value(metadata float %1, metadata !21, metadata !DIExpression()), !dbg !36
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !22, metadata !DIExpression()), !dbg !36
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !23, metadata !DIExpression()), !dbg !36
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !24, metadata !DIExpression()), !dbg !36
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !25, metadata !DIExpression()), !dbg !36
  %7 = fcmp oeq float %1, 0.000000e+00, !dbg !37
  br i1 %7, label %127, label %8, !dbg !39

8:                                                ; preds = %6
  %9 = icmp eq i32 %3, 1, !dbg !40
  %10 = icmp eq i32 %5, 1
  %11 = and i1 %9, %10, !dbg !41
  br i1 %11, label %12, label %76, !dbg !41

12:                                               ; preds = %8
  %13 = srem i32 %0, 4, !dbg !42
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !30, metadata !DIExpression()), !dbg !43
  tail call void @llvm.dbg.value(metadata i32 0, metadata !26, metadata !DIExpression()), !dbg !44
  %14 = icmp sgt i32 %13, 0, !dbg !45
  br i1 %14, label %21, label %15, !dbg !48

15:                                               ; preds = %21, %27, %35, %12
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !26, metadata !DIExpression()), !dbg !44
  %16 = add nsw i32 %13, 3, !dbg !49
  %17 = icmp slt i32 %16, %0, !dbg !52
  br i1 %17, label %18, label %127, !dbg !53

18:                                               ; preds = %15
  %19 = sext i32 %13 to i64, !dbg !53
  %20 = sext i32 %0 to i64, !dbg !53
  br label %42, !dbg !53

21:                                               ; preds = %12
  tail call void @llvm.dbg.value(metadata i64 0, metadata !26, metadata !DIExpression()), !dbg !44
  %22 = load float, ptr %2, align 4, !dbg !54, !tbaa !56
  %23 = fmul float %22, %1, !dbg !60
  %24 = load float, ptr %4, align 4, !dbg !61, !tbaa !56
  %25 = fadd float %24, %23, !dbg !61
  store float %25, ptr %4, align 4, !dbg !61, !tbaa !56
  tail call void @llvm.dbg.value(metadata i64 1, metadata !26, metadata !DIExpression()), !dbg !44
  %26 = icmp eq i32 %13, 1, !dbg !45
  br i1 %26, label %15, label %27, !dbg !48, !llvm.loop !62

27:                                               ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 1, metadata !26, metadata !DIExpression()), !dbg !44
  %28 = getelementptr inbounds float, ptr %2, i64 1, !dbg !54
  %29 = load float, ptr %28, align 4, !dbg !54, !tbaa !56
  %30 = fmul float %29, %1, !dbg !60
  %31 = getelementptr inbounds float, ptr %4, i64 1, !dbg !65
  %32 = load float, ptr %31, align 4, !dbg !61, !tbaa !56
  %33 = fadd float %32, %30, !dbg !61
  store float %33, ptr %31, align 4, !dbg !61, !tbaa !56
  tail call void @llvm.dbg.value(metadata i64 2, metadata !26, metadata !DIExpression()), !dbg !44
  %34 = icmp eq i32 %13, 2, !dbg !45
  br i1 %34, label %15, label %35, !dbg !48, !llvm.loop !62

35:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i64 2, metadata !26, metadata !DIExpression()), !dbg !44
  %36 = getelementptr inbounds float, ptr %2, i64 2, !dbg !54
  %37 = load float, ptr %36, align 4, !dbg !54, !tbaa !56
  %38 = fmul float %37, %1, !dbg !60
  %39 = getelementptr inbounds float, ptr %4, i64 2, !dbg !65
  %40 = load float, ptr %39, align 4, !dbg !61, !tbaa !56
  %41 = fadd float %40, %38, !dbg !61
  store float %41, ptr %39, align 4, !dbg !61, !tbaa !56
  tail call void @llvm.dbg.value(metadata i64 3, metadata !26, metadata !DIExpression()), !dbg !44
  br label %15

42:                                               ; preds = %18, %42
  %43 = phi i64 [ %19, %18 ], [ %72, %42 ]
  %44 = phi i32 [ %16, %18 ], [ %75, %42 ]
  tail call void @llvm.dbg.value(metadata i64 %43, metadata !26, metadata !DIExpression()), !dbg !44
  %45 = getelementptr inbounds float, ptr %2, i64 %43, !dbg !66
  %46 = load float, ptr %45, align 4, !dbg !66, !tbaa !56
  %47 = fmul float %46, %1, !dbg !68
  %48 = getelementptr inbounds float, ptr %4, i64 %43, !dbg !69
  %49 = load float, ptr %48, align 4, !dbg !70, !tbaa !56
  %50 = fadd float %49, %47, !dbg !70
  store float %50, ptr %48, align 4, !dbg !70, !tbaa !56
  %51 = add nsw i64 %43, 1, !dbg !71
  %52 = getelementptr inbounds float, ptr %2, i64 %51, !dbg !72
  %53 = load float, ptr %52, align 4, !dbg !72, !tbaa !56
  %54 = fmul float %53, %1, !dbg !73
  %55 = getelementptr inbounds float, ptr %4, i64 %51, !dbg !74
  %56 = load float, ptr %55, align 4, !dbg !75, !tbaa !56
  %57 = fadd float %56, %54, !dbg !75
  store float %57, ptr %55, align 4, !dbg !75, !tbaa !56
  %58 = add nsw i64 %43, 2, !dbg !76
  %59 = getelementptr inbounds float, ptr %2, i64 %58, !dbg !77
  %60 = load float, ptr %59, align 4, !dbg !77, !tbaa !56
  %61 = fmul float %60, %1, !dbg !78
  %62 = getelementptr inbounds float, ptr %4, i64 %58, !dbg !79
  %63 = load float, ptr %62, align 4, !dbg !80, !tbaa !56
  %64 = fadd float %63, %61, !dbg !80
  store float %64, ptr %62, align 4, !dbg !80, !tbaa !56
  %65 = sext i32 %44 to i64, !dbg !81
  %66 = getelementptr inbounds float, ptr %2, i64 %65, !dbg !81
  %67 = load float, ptr %66, align 4, !dbg !81, !tbaa !56
  %68 = fmul float %67, %1, !dbg !82
  %69 = getelementptr inbounds float, ptr %4, i64 %65, !dbg !83
  %70 = load float, ptr %69, align 4, !dbg !84, !tbaa !56
  %71 = fadd float %70, %68, !dbg !84
  store float %71, ptr %69, align 4, !dbg !84, !tbaa !56
  %72 = add nsw i64 %43, 4, !dbg !85
  tail call void @llvm.dbg.value(metadata i64 %72, metadata !26, metadata !DIExpression()), !dbg !44
  %73 = add nsw i64 %43, 7, !dbg !49
  %74 = icmp slt i64 %73, %20, !dbg !52
  %75 = trunc i64 %73 to i32, !dbg !53
  br i1 %74, label %42, label %127, !dbg !53, !llvm.loop !86

76:                                               ; preds = %8
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !35, metadata !DIExpression()), !dbg !88
  tail call void @llvm.dbg.value(metadata i32 0, metadata !26, metadata !DIExpression()), !dbg !44
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !33, metadata !DIExpression()), !dbg !88
  %77 = icmp sgt i32 %0, 0, !dbg !89
  br i1 %77, label %78, label %127, !dbg !92

78:                                               ; preds = %76
  %79 = icmp sgt i32 %5, 0, !dbg !93
  %80 = sub nsw i32 1, %0, !dbg !94
  %81 = mul i32 %80, %5, !dbg !93
  %82 = select i1 %79, i32 0, i32 %81, !dbg !93
  tail call void @llvm.dbg.value(metadata i32 %82, metadata !35, metadata !DIExpression()), !dbg !88
  %83 = icmp sgt i32 %3, 0, !dbg !94
  %84 = mul i32 %80, %3, !dbg !94
  %85 = select i1 %83, i32 0, i32 %84, !dbg !94
  tail call void @llvm.dbg.value(metadata i32 %85, metadata !33, metadata !DIExpression()), !dbg !88
  %86 = sext i32 %82 to i64, !dbg !92
  %87 = sext i32 %5 to i64, !dbg !92
  %88 = sext i32 %85 to i64, !dbg !92
  %89 = sext i32 %3 to i64, !dbg !92
  %90 = and i32 %0, 1, !dbg !92
  %91 = icmp eq i32 %0, 1, !dbg !92
  br i1 %91, label %116, label %92, !dbg !92

92:                                               ; preds = %78
  %93 = and i32 %0, 2147483646, !dbg !92
  br label %94, !dbg !92

94:                                               ; preds = %94, %92
  %95 = phi i64 [ %88, %92 ], [ %112, %94 ]
  %96 = phi i64 [ %86, %92 ], [ %113, %94 ]
  %97 = phi i32 [ 0, %92 ], [ %114, %94 ]
  tail call void @llvm.dbg.value(metadata i64 %96, metadata !35, metadata !DIExpression()), !dbg !88
  tail call void @llvm.dbg.value(metadata i64 %95, metadata !33, metadata !DIExpression()), !dbg !88
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !26, metadata !DIExpression()), !dbg !44
  %98 = getelementptr inbounds float, ptr %2, i64 %95, !dbg !95
  %99 = load float, ptr %98, align 4, !dbg !95, !tbaa !56
  %100 = fmul float %99, %1, !dbg !97
  %101 = getelementptr inbounds float, ptr %4, i64 %96, !dbg !98
  %102 = load float, ptr %101, align 4, !dbg !99, !tbaa !56
  %103 = fadd float %102, %100, !dbg !99
  store float %103, ptr %101, align 4, !dbg !99, !tbaa !56
  %104 = add i64 %95, %89, !dbg !100
  tail call void @llvm.dbg.value(metadata i64 %104, metadata !33, metadata !DIExpression()), !dbg !88
  %105 = add i64 %96, %87, !dbg !101
  tail call void @llvm.dbg.value(metadata i64 %105, metadata !35, metadata !DIExpression()), !dbg !88
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !26, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !44
  tail call void @llvm.dbg.value(metadata i64 %105, metadata !35, metadata !DIExpression()), !dbg !88
  tail call void @llvm.dbg.value(metadata i64 %104, metadata !33, metadata !DIExpression()), !dbg !88
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !26, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !44
  %106 = getelementptr inbounds float, ptr %2, i64 %104, !dbg !95
  %107 = load float, ptr %106, align 4, !dbg !95, !tbaa !56
  %108 = fmul float %107, %1, !dbg !97
  %109 = getelementptr inbounds float, ptr %4, i64 %105, !dbg !98
  %110 = load float, ptr %109, align 4, !dbg !99, !tbaa !56
  %111 = fadd float %110, %108, !dbg !99
  store float %111, ptr %109, align 4, !dbg !99, !tbaa !56
  %112 = add i64 %104, %89, !dbg !100
  tail call void @llvm.dbg.value(metadata i64 %112, metadata !33, metadata !DIExpression()), !dbg !88
  %113 = add i64 %105, %87, !dbg !101
  tail call void @llvm.dbg.value(metadata i64 %113, metadata !35, metadata !DIExpression()), !dbg !88
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !26, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !44
  %114 = add i32 %97, 2, !dbg !92
  %115 = icmp eq i32 %114, %93, !dbg !92
  br i1 %115, label %116, label %94, !dbg !92, !llvm.loop !102

116:                                              ; preds = %94, %78
  %117 = phi i64 [ %88, %78 ], [ %112, %94 ]
  %118 = phi i64 [ %86, %78 ], [ %113, %94 ]
  %119 = icmp eq i32 %90, 0, !dbg !92
  br i1 %119, label %127, label %120, !dbg !92

120:                                              ; preds = %116
  tail call void @llvm.dbg.value(metadata i64 %118, metadata !35, metadata !DIExpression()), !dbg !88
  tail call void @llvm.dbg.value(metadata i64 %117, metadata !33, metadata !DIExpression()), !dbg !88
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !26, metadata !DIExpression()), !dbg !44
  %121 = getelementptr inbounds float, ptr %2, i64 %117, !dbg !95
  %122 = load float, ptr %121, align 4, !dbg !95, !tbaa !56
  %123 = fmul float %122, %1, !dbg !97
  %124 = getelementptr inbounds float, ptr %4, i64 %118, !dbg !98
  %125 = load float, ptr %124, align 4, !dbg !99, !tbaa !56
  %126 = fadd float %125, %123, !dbg !99
  store float %126, ptr %124, align 4, !dbg !99, !tbaa !56
  tail call void @llvm.dbg.value(metadata !DIArgList(i64 %117, i64 %89), metadata !33, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !88
  tail call void @llvm.dbg.value(metadata !DIArgList(i64 %118, i64 %87), metadata !35, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !88
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !26, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !44
  br label %127, !dbg !104

127:                                              ; preds = %120, %116, %42, %76, %15, %6
  ret void, !dbg !104
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "saxpy.c", directory: "/PI-detector/external/gsl/gsl-2.5/cblas", checksumkind: CSK_MD5, checksum: "01fed37500a9e3b31b59714f676b3f5e")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!9 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!10 = distinct !DISubprogram(name: "cblas_saxpy", scope: !1, file: !1, line: 6, type: !11, scopeLine: 8, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !19)
!11 = !DISubroutineType(types: !12)
!12 = !{null, !13, !15, !17, !13, !18, !13}
!13 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!16 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!19 = !{!20, !21, !22, !23, !24, !25, !26, !30, !33, !35}
!20 = !DILocalVariable(name: "N", arg: 1, scope: !10, file: !1, line: 6, type: !13)
!21 = !DILocalVariable(name: "alpha", arg: 2, scope: !10, file: !1, line: 6, type: !15)
!22 = !DILocalVariable(name: "X", arg: 3, scope: !10, file: !1, line: 6, type: !17)
!23 = !DILocalVariable(name: "incX", arg: 4, scope: !10, file: !1, line: 6, type: !13)
!24 = !DILocalVariable(name: "Y", arg: 5, scope: !10, file: !1, line: 7, type: !18)
!25 = !DILocalVariable(name: "incY", arg: 6, scope: !10, file: !1, line: 7, type: !13)
!26 = !DILocalVariable(name: "i", scope: !27, file: !28, line: 21, type: !14)
!27 = distinct !DILexicalBlock(scope: !29, file: !28, line: 20, column: 1)
!28 = !DIFile(filename: "./source_axpy_r.h", directory: "/PI-detector/external/gsl/gsl-2.5/cblas", checksumkind: CSK_MD5, checksum: "03748eb23932d4bc4e9025c9f4f1345a")
!29 = !DILexicalBlockFile(scope: !10, file: !28, discriminator: 0)
!30 = !DILocalVariable(name: "m", scope: !31, file: !28, line: 28, type: !13)
!31 = distinct !DILexicalBlock(scope: !32, file: !28, line: 27, column: 31)
!32 = distinct !DILexicalBlock(scope: !27, file: !28, line: 27, column: 7)
!33 = !DILocalVariable(name: "ix", scope: !34, file: !28, line: 41, type: !14)
!34 = distinct !DILexicalBlock(scope: !32, file: !28, line: 40, column: 10)
!35 = !DILocalVariable(name: "iy", scope: !34, file: !28, line: 42, type: !14)
!36 = !DILocation(line: 0, scope: !10)
!37 = !DILocation(line: 23, column: 13, scope: !38)
!38 = distinct !DILexicalBlock(scope: !27, file: !28, line: 23, column: 7)
!39 = !DILocation(line: 23, column: 7, scope: !27)
!40 = !DILocation(line: 27, column: 12, scope: !32)
!41 = !DILocation(line: 27, column: 17, scope: !32)
!42 = !DILocation(line: 28, column: 23, scope: !31)
!43 = !DILocation(line: 0, scope: !31)
!44 = !DILocation(line: 0, scope: !27)
!45 = !DILocation(line: 30, column: 19, scope: !46)
!46 = distinct !DILexicalBlock(scope: !47, file: !28, line: 30, column: 5)
!47 = distinct !DILexicalBlock(scope: !31, file: !28, line: 30, column: 5)
!48 = !DILocation(line: 30, column: 5, scope: !47)
!49 = !DILocation(line: 34, column: 19, scope: !50)
!50 = distinct !DILexicalBlock(scope: !51, file: !28, line: 34, column: 5)
!51 = distinct !DILexicalBlock(scope: !31, file: !28, line: 34, column: 5)
!52 = !DILocation(line: 34, column: 23, scope: !50)
!53 = !DILocation(line: 34, column: 5, scope: !51)
!54 = !DILocation(line: 31, column: 23, scope: !55)
!55 = distinct !DILexicalBlock(scope: !46, file: !28, line: 30, column: 29)
!56 = !{!57, !57, i64 0}
!57 = !{!"float", !58, i64 0}
!58 = !{!"omnipotent char", !59, i64 0}
!59 = !{!"Simple C/C++ TBAA"}
!60 = !DILocation(line: 31, column: 21, scope: !55)
!61 = !DILocation(line: 31, column: 12, scope: !55)
!62 = distinct !{!62, !48, !63, !64}
!63 = !DILocation(line: 32, column: 5, scope: !47)
!64 = !{!"llvm.loop.mustprogress"}
!65 = !DILocation(line: 31, column: 7, scope: !55)
!66 = !DILocation(line: 35, column: 23, scope: !67)
!67 = distinct !DILexicalBlock(scope: !50, file: !28, line: 34, column: 36)
!68 = !DILocation(line: 35, column: 21, scope: !67)
!69 = !DILocation(line: 35, column: 7, scope: !67)
!70 = !DILocation(line: 35, column: 12, scope: !67)
!71 = !DILocation(line: 36, column: 31, scope: !67)
!72 = !DILocation(line: 36, column: 27, scope: !67)
!73 = !DILocation(line: 36, column: 25, scope: !67)
!74 = !DILocation(line: 36, column: 7, scope: !67)
!75 = !DILocation(line: 36, column: 16, scope: !67)
!76 = !DILocation(line: 37, column: 31, scope: !67)
!77 = !DILocation(line: 37, column: 27, scope: !67)
!78 = !DILocation(line: 37, column: 25, scope: !67)
!79 = !DILocation(line: 37, column: 7, scope: !67)
!80 = !DILocation(line: 37, column: 16, scope: !67)
!81 = !DILocation(line: 38, column: 27, scope: !67)
!82 = !DILocation(line: 38, column: 25, scope: !67)
!83 = !DILocation(line: 38, column: 7, scope: !67)
!84 = !DILocation(line: 38, column: 16, scope: !67)
!85 = !DILocation(line: 34, column: 30, scope: !50)
!86 = distinct !{!86, !53, !87, !64}
!87 = !DILocation(line: 39, column: 5, scope: !51)
!88 = !DILocation(line: 0, scope: !34)
!89 = !DILocation(line: 44, column: 19, scope: !90)
!90 = distinct !DILexicalBlock(scope: !91, file: !28, line: 44, column: 5)
!91 = distinct !DILexicalBlock(scope: !34, file: !28, line: 44, column: 5)
!92 = !DILocation(line: 44, column: 5, scope: !91)
!93 = !DILocation(line: 42, column: 16, scope: !34)
!94 = !DILocation(line: 41, column: 16, scope: !34)
!95 = !DILocation(line: 45, column: 24, scope: !96)
!96 = distinct !DILexicalBlock(scope: !90, file: !28, line: 44, column: 29)
!97 = !DILocation(line: 45, column: 22, scope: !96)
!98 = !DILocation(line: 45, column: 7, scope: !96)
!99 = !DILocation(line: 45, column: 13, scope: !96)
!100 = !DILocation(line: 46, column: 10, scope: !96)
!101 = !DILocation(line: 47, column: 10, scope: !96)
!102 = distinct !{!102, !92, !103, !64}
!103 = !DILocation(line: 48, column: 5, scope: !91)
!104 = !DILocation(line: 12, column: 1, scope: !105)
!105 = !DILexicalBlockFile(scope: !10, file: !1, discriminator: 0)
