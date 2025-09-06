; ModuleID = 'dcopy.c'
source_filename = "dcopy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @cblas_dcopy(i32 noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef writeonly %3, i32 noundef %4) local_unnamed_addr #0 !dbg !10 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !20, metadata !DIExpression()), !dbg !31
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !21, metadata !DIExpression()), !dbg !31
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !22, metadata !DIExpression()), !dbg !31
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !23, metadata !DIExpression()), !dbg !31
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !24, metadata !DIExpression()), !dbg !31
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !29, metadata !DIExpression()), !dbg !32
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !30, metadata !DIExpression()), !dbg !32
  tail call void @llvm.dbg.value(metadata i32 0, metadata !25, metadata !DIExpression()), !dbg !32
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !29, metadata !DIExpression()), !dbg !32
  %6 = icmp sgt i32 %0, 0, !dbg !33
  br i1 %6, label %7, label %64, !dbg !36

7:                                                ; preds = %5
  %8 = icmp sgt i32 %4, 0, !dbg !37
  %9 = sub nsw i32 1, %0, !dbg !38
  %10 = mul i32 %9, %4, !dbg !37
  %11 = select i1 %8, i32 0, i32 %10, !dbg !37
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !30, metadata !DIExpression()), !dbg !32
  %12 = icmp sgt i32 %2, 0, !dbg !38
  %13 = mul i32 %9, %2, !dbg !38
  %14 = select i1 %12, i32 0, i32 %13, !dbg !38
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !29, metadata !DIExpression()), !dbg !32
  %15 = sext i32 %11 to i64, !dbg !36
  %16 = sext i32 %4 to i64, !dbg !36
  %17 = sext i32 %14 to i64, !dbg !36
  %18 = sext i32 %2 to i64, !dbg !36
  %19 = and i32 %0, 3, !dbg !36
  %20 = icmp ult i32 %0, 4, !dbg !36
  br i1 %20, label %49, label %21, !dbg !36

21:                                               ; preds = %7
  %22 = and i32 %0, 2147483644, !dbg !36
  br label %23, !dbg !36

23:                                               ; preds = %23, %21
  %24 = phi i64 [ %17, %21 ], [ %45, %23 ]
  %25 = phi i64 [ %15, %21 ], [ %46, %23 ]
  %26 = phi i32 [ 0, %21 ], [ %47, %23 ]
  tail call void @llvm.dbg.value(metadata i64 %25, metadata !30, metadata !DIExpression()), !dbg !32
  tail call void @llvm.dbg.value(metadata i64 %24, metadata !29, metadata !DIExpression()), !dbg !32
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !25, metadata !DIExpression()), !dbg !32
  %27 = getelementptr inbounds double, ptr %1, i64 %24, !dbg !39
  %28 = load double, ptr %27, align 8, !dbg !39, !tbaa !41
  %29 = getelementptr inbounds double, ptr %3, i64 %25, !dbg !45
  store double %28, ptr %29, align 8, !dbg !46, !tbaa !41
  %30 = add i64 %24, %18, !dbg !47
  tail call void @llvm.dbg.value(metadata i64 %30, metadata !29, metadata !DIExpression()), !dbg !32
  %31 = add i64 %25, %16, !dbg !48
  tail call void @llvm.dbg.value(metadata i64 %31, metadata !30, metadata !DIExpression()), !dbg !32
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !25, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !32
  tail call void @llvm.dbg.value(metadata i64 %31, metadata !30, metadata !DIExpression()), !dbg !32
  tail call void @llvm.dbg.value(metadata i64 %30, metadata !29, metadata !DIExpression()), !dbg !32
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !25, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !32
  %32 = getelementptr inbounds double, ptr %1, i64 %30, !dbg !39
  %33 = load double, ptr %32, align 8, !dbg !39, !tbaa !41
  %34 = getelementptr inbounds double, ptr %3, i64 %31, !dbg !45
  store double %33, ptr %34, align 8, !dbg !46, !tbaa !41
  %35 = add i64 %30, %18, !dbg !47
  tail call void @llvm.dbg.value(metadata i64 %35, metadata !29, metadata !DIExpression()), !dbg !32
  %36 = add i64 %31, %16, !dbg !48
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !30, metadata !DIExpression()), !dbg !32
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !25, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !32
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !30, metadata !DIExpression()), !dbg !32
  tail call void @llvm.dbg.value(metadata i64 %35, metadata !29, metadata !DIExpression()), !dbg !32
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !25, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !32
  %37 = getelementptr inbounds double, ptr %1, i64 %35, !dbg !39
  %38 = load double, ptr %37, align 8, !dbg !39, !tbaa !41
  %39 = getelementptr inbounds double, ptr %3, i64 %36, !dbg !45
  store double %38, ptr %39, align 8, !dbg !46, !tbaa !41
  %40 = add i64 %35, %18, !dbg !47
  tail call void @llvm.dbg.value(metadata i64 %40, metadata !29, metadata !DIExpression()), !dbg !32
  %41 = add i64 %36, %16, !dbg !48
  tail call void @llvm.dbg.value(metadata i64 %41, metadata !30, metadata !DIExpression()), !dbg !32
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !25, metadata !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value)), !dbg !32
  tail call void @llvm.dbg.value(metadata i64 %41, metadata !30, metadata !DIExpression()), !dbg !32
  tail call void @llvm.dbg.value(metadata i64 %40, metadata !29, metadata !DIExpression()), !dbg !32
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !25, metadata !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value)), !dbg !32
  %42 = getelementptr inbounds double, ptr %1, i64 %40, !dbg !39
  %43 = load double, ptr %42, align 8, !dbg !39, !tbaa !41
  %44 = getelementptr inbounds double, ptr %3, i64 %41, !dbg !45
  store double %43, ptr %44, align 8, !dbg !46, !tbaa !41
  %45 = add i64 %40, %18, !dbg !47
  tail call void @llvm.dbg.value(metadata i64 %45, metadata !29, metadata !DIExpression()), !dbg !32
  %46 = add i64 %41, %16, !dbg !48
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !30, metadata !DIExpression()), !dbg !32
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !25, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !32
  %47 = add i32 %26, 4, !dbg !36
  %48 = icmp eq i32 %47, %22, !dbg !36
  br i1 %48, label %49, label %23, !dbg !36, !llvm.loop !49

49:                                               ; preds = %23, %7
  %50 = phi i64 [ %17, %7 ], [ %45, %23 ]
  %51 = phi i64 [ %15, %7 ], [ %46, %23 ]
  %52 = icmp eq i32 %19, 0, !dbg !36
  br i1 %52, label %64, label %53, !dbg !36

53:                                               ; preds = %49, %53
  %54 = phi i64 [ %60, %53 ], [ %50, %49 ]
  %55 = phi i64 [ %61, %53 ], [ %51, %49 ]
  %56 = phi i32 [ %62, %53 ], [ 0, %49 ]
  tail call void @llvm.dbg.value(metadata i64 %55, metadata !30, metadata !DIExpression()), !dbg !32
  tail call void @llvm.dbg.value(metadata i64 %54, metadata !29, metadata !DIExpression()), !dbg !32
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !25, metadata !DIExpression()), !dbg !32
  %57 = getelementptr inbounds double, ptr %1, i64 %54, !dbg !39
  %58 = load double, ptr %57, align 8, !dbg !39, !tbaa !41
  %59 = getelementptr inbounds double, ptr %3, i64 %55, !dbg !45
  store double %58, ptr %59, align 8, !dbg !46, !tbaa !41
  %60 = add i64 %54, %18, !dbg !47
  tail call void @llvm.dbg.value(metadata i64 %60, metadata !29, metadata !DIExpression()), !dbg !32
  %61 = add i64 %55, %16, !dbg !48
  tail call void @llvm.dbg.value(metadata i64 %61, metadata !30, metadata !DIExpression()), !dbg !32
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !25, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !32
  %62 = add i32 %56, 1, !dbg !36
  %63 = icmp eq i32 %62, %19, !dbg !36
  br i1 %63, label %64, label %53, !dbg !36, !llvm.loop !52

64:                                               ; preds = %49, %53, %5
  ret void, !dbg !54
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "dcopy.c", directory: "/PI-detector/external/gsl/gsl-2.5/cblas", checksumkind: CSK_MD5, checksum: "18bb244c4dc38753ae95e0219614ba66")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!9 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!10 = distinct !DISubprogram(name: "cblas_dcopy", scope: !1, file: !1, line: 6, type: !11, scopeLine: 8, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !19)
!11 = !DISubroutineType(types: !12)
!12 = !{null, !13, !15, !13, !18, !13}
!13 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!17 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!19 = !{!20, !21, !22, !23, !24, !25, !29, !30}
!20 = !DILocalVariable(name: "N", arg: 1, scope: !10, file: !1, line: 6, type: !13)
!21 = !DILocalVariable(name: "X", arg: 2, scope: !10, file: !1, line: 6, type: !15)
!22 = !DILocalVariable(name: "incX", arg: 3, scope: !10, file: !1, line: 6, type: !13)
!23 = !DILocalVariable(name: "Y", arg: 4, scope: !10, file: !1, line: 6, type: !18)
!24 = !DILocalVariable(name: "incY", arg: 5, scope: !10, file: !1, line: 7, type: !13)
!25 = !DILocalVariable(name: "i", scope: !26, file: !27, line: 21, type: !14)
!26 = distinct !DILexicalBlock(scope: !28, file: !27, line: 20, column: 1)
!27 = !DIFile(filename: "./source_copy_r.h", directory: "/PI-detector/external/gsl/gsl-2.5/cblas", checksumkind: CSK_MD5, checksum: "e8016d72909f4c1d0efb503f104916e0")
!28 = !DILexicalBlockFile(scope: !10, file: !27, discriminator: 0)
!29 = !DILocalVariable(name: "ix", scope: !26, file: !27, line: 22, type: !14)
!30 = !DILocalVariable(name: "iy", scope: !26, file: !27, line: 23, type: !14)
!31 = !DILocation(line: 0, scope: !10)
!32 = !DILocation(line: 0, scope: !26)
!33 = !DILocation(line: 25, column: 17, scope: !34)
!34 = distinct !DILexicalBlock(scope: !35, file: !27, line: 25, column: 3)
!35 = distinct !DILexicalBlock(scope: !26, file: !27, line: 25, column: 3)
!36 = !DILocation(line: 25, column: 3, scope: !35)
!37 = !DILocation(line: 23, column: 14, scope: !26)
!38 = !DILocation(line: 22, column: 14, scope: !26)
!39 = !DILocation(line: 26, column: 13, scope: !40)
!40 = distinct !DILexicalBlock(scope: !34, file: !27, line: 25, column: 27)
!41 = !{!42, !42, i64 0}
!42 = !{!"double", !43, i64 0}
!43 = !{!"omnipotent char", !44, i64 0}
!44 = !{!"Simple C/C++ TBAA"}
!45 = !DILocation(line: 26, column: 5, scope: !40)
!46 = !DILocation(line: 26, column: 11, scope: !40)
!47 = !DILocation(line: 27, column: 8, scope: !40)
!48 = !DILocation(line: 28, column: 8, scope: !40)
!49 = distinct !{!49, !36, !50, !51}
!50 = !DILocation(line: 29, column: 3, scope: !35)
!51 = !{!"llvm.loop.mustprogress"}
!52 = distinct !{!52, !53}
!53 = !{!"llvm.loop.unroll.disable"}
!54 = !DILocation(line: 12, column: 1, scope: !55)
!55 = !DILexicalBlockFile(scope: !10, file: !1, discriminator: 0)
