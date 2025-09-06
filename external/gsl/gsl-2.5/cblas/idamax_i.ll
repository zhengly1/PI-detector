; ModuleID = 'idamax.ll'
source_filename = "idamax.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i64 @cblas_idamax(i32 noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 !dbg !10 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !22, metadata !DIExpression()), !dbg !32
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !23, metadata !DIExpression()), !dbg !32
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !24, metadata !DIExpression()), !dbg !32
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !25, metadata !DIExpression()), !dbg !33
  tail call void @llvm.dbg.value(metadata i32 0, metadata !29, metadata !DIExpression()), !dbg !33
  tail call void @llvm.dbg.value(metadata i64 0, metadata !31, metadata !DIExpression()), !dbg !33
  %4 = icmp sgt i32 %2, 0, !dbg !34
  tail call void @llvm.dbg.value(metadata i64 0, metadata !31, metadata !DIExpression()), !dbg !33
  tail call void @llvm.dbg.value(metadata i32 0, metadata !30, metadata !DIExpression()), !dbg !33
  tail call void @llvm.dbg.value(metadata i32 0, metadata !29, metadata !DIExpression()), !dbg !33
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !25, metadata !DIExpression()), !dbg !33
  %5 = icmp sgt i32 %0, 0
  %6 = and i1 %4, %5, !dbg !36
  br i1 %6, label %7, label %51, !dbg !36

7:                                                ; preds = %3
  %8 = zext nneg i32 %2 to i64, !dbg !37
  %9 = zext nneg i32 %0 to i64, !dbg !39
  %10 = and i64 %9, 1, !dbg !37
  %11 = icmp eq i32 %0, 1, !dbg !37
  br i1 %11, label %38, label %12, !dbg !37

12:                                               ; preds = %7
  %13 = and i64 %9, 2147483646, !dbg !37
  br label %14, !dbg !37

14:                                               ; preds = %14, %12
  %15 = phi i64 [ 0, %12 ], [ %34, %14 ]
  %16 = phi i64 [ 0, %12 ], [ %35, %14 ]
  %17 = phi i64 [ 0, %12 ], [ %33, %14 ]
  %18 = phi double [ 0.000000e+00, %12 ], [ %32, %14 ]
  %19 = phi i64 [ 0, %12 ], [ %36, %14 ]
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !31, metadata !DIExpression()), !dbg !33
  tail call void @llvm.dbg.value(metadata i64 %16, metadata !30, metadata !DIExpression()), !dbg !33
  tail call void @llvm.dbg.value(metadata i64 %15, metadata !29, metadata !DIExpression()), !dbg !33
  tail call void @llvm.dbg.value(metadata double %18, metadata !25, metadata !DIExpression()), !dbg !33
  %20 = getelementptr inbounds double, ptr %1, i64 %15, !dbg !41
  %21 = load double, ptr %20, align 8, !dbg !41, !tbaa !44
  %22 = tail call double @llvm.fabs.f64(double %21), !dbg !48
  %23 = fcmp ogt double %22, %18, !dbg !49
  %24 = select i1 %23, double %22, double %18, !dbg !50
  %25 = select i1 %23, i64 %16, i64 %17, !dbg !50
  tail call void @llvm.dbg.value(metadata i64 %25, metadata !31, metadata !DIExpression()), !dbg !33
  tail call void @llvm.dbg.value(metadata double %24, metadata !25, metadata !DIExpression()), !dbg !33
  %26 = add nuw nsw i64 %15, %8, !dbg !51
  tail call void @llvm.dbg.value(metadata i64 %26, metadata !29, metadata !DIExpression()), !dbg !33
  %27 = or disjoint i64 %16, 1, !dbg !52
  tail call void @llvm.dbg.value(metadata i64 %27, metadata !30, metadata !DIExpression()), !dbg !33
  tail call void @llvm.dbg.value(metadata i64 %25, metadata !31, metadata !DIExpression()), !dbg !33
  tail call void @llvm.dbg.value(metadata i64 %27, metadata !30, metadata !DIExpression()), !dbg !33
  tail call void @llvm.dbg.value(metadata i64 %26, metadata !29, metadata !DIExpression()), !dbg !33
  tail call void @llvm.dbg.value(metadata double %24, metadata !25, metadata !DIExpression()), !dbg !33
  %28 = getelementptr inbounds double, ptr %1, i64 %26, !dbg !41
  %29 = load double, ptr %28, align 8, !dbg !41, !tbaa !44
  %30 = tail call double @llvm.fabs.f64(double %29), !dbg !48
  %31 = fcmp ogt double %30, %24, !dbg !49
  %32 = select i1 %31, double %30, double %24, !dbg !50
  %33 = select i1 %31, i64 %27, i64 %25, !dbg !50
  tail call void @llvm.dbg.value(metadata i64 %33, metadata !31, metadata !DIExpression()), !dbg !33
  tail call void @llvm.dbg.value(metadata double %32, metadata !25, metadata !DIExpression()), !dbg !33
  %34 = add nuw nsw i64 %26, %8, !dbg !51
  tail call void @llvm.dbg.value(metadata i64 %34, metadata !29, metadata !DIExpression()), !dbg !33
  %35 = add nuw nsw i64 %16, 2, !dbg !52
  tail call void @llvm.dbg.value(metadata i64 %35, metadata !30, metadata !DIExpression()), !dbg !33
  %36 = add i64 %19, 2, !dbg !37
  %37 = icmp eq i64 %36, %13, !dbg !37
  br i1 %37, label %38, label %14, !dbg !37, !llvm.loop !53

38:                                               ; preds = %14, %7
  %39 = phi i64 [ undef, %7 ], [ %33, %14 ]
  %40 = phi i64 [ 0, %7 ], [ %34, %14 ]
  %41 = phi i64 [ 0, %7 ], [ %35, %14 ]
  %42 = phi i64 [ 0, %7 ], [ %33, %14 ]
  %43 = phi double [ 0.000000e+00, %7 ], [ %32, %14 ]
  %44 = icmp eq i64 %10, 0, !dbg !37
  br i1 %44, label %51, label %45, !dbg !37

45:                                               ; preds = %38
  tail call void @llvm.dbg.value(metadata i64 %42, metadata !31, metadata !DIExpression()), !dbg !33
  tail call void @llvm.dbg.value(metadata i64 %41, metadata !30, metadata !DIExpression()), !dbg !33
  tail call void @llvm.dbg.value(metadata i64 %40, metadata !29, metadata !DIExpression()), !dbg !33
  tail call void @llvm.dbg.value(metadata double %43, metadata !25, metadata !DIExpression()), !dbg !33
  %46 = getelementptr inbounds double, ptr %1, i64 %40, !dbg !41
  %47 = load double, ptr %46, align 8, !dbg !41, !tbaa !44
  %48 = tail call double @llvm.fabs.f64(double %47), !dbg !48
  %49 = fcmp ogt double %48, %43, !dbg !49
  %50 = select i1 %49, i64 %41, i64 %42, !dbg !50
  tail call void @llvm.dbg.value(metadata i64 %50, metadata !31, metadata !DIExpression()), !dbg !33
  tail call void @llvm.dbg.value(metadata double poison, metadata !25, metadata !DIExpression()), !dbg !33
  tail call void @llvm.dbg.value(metadata !DIArgList(i64 %40, i64 %8), metadata !29, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !33
  tail call void @llvm.dbg.value(metadata i64 %41, metadata !30, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !33
  br label %51, !dbg !56

51:                                               ; preds = %45, %38, %3
  %52 = phi i64 [ 0, %3 ], [ %39, %38 ], [ %50, %45 ], !dbg !33
  ret i64 %52, !dbg !56
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "idamax.c", directory: "/PI-detector/external/gsl/gsl-2.5/cblas", checksumkind: CSK_MD5, checksum: "cf23566f8237edbc4ccb0bb7d40ecb59")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!9 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!10 = distinct !DISubprogram(name: "cblas_idamax", scope: !1, file: !1, line: 6, type: !11, scopeLine: 7, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !21)
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !16, !18, !16}
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !14, line: 18, baseType: !15)
!14 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!15 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!16 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!17 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!20 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!21 = !{!22, !23, !24, !25, !29, !30, !31}
!22 = !DILocalVariable(name: "N", arg: 1, scope: !10, file: !1, line: 6, type: !16)
!23 = !DILocalVariable(name: "X", arg: 2, scope: !10, file: !1, line: 6, type: !18)
!24 = !DILocalVariable(name: "incX", arg: 3, scope: !10, file: !1, line: 6, type: !16)
!25 = !DILocalVariable(name: "max", scope: !26, file: !27, line: 21, type: !20)
!26 = distinct !DILexicalBlock(scope: !28, file: !27, line: 20, column: 1)
!27 = !DIFile(filename: "./source_iamax_r.h", directory: "/PI-detector/external/gsl/gsl-2.5/cblas", checksumkind: CSK_MD5, checksum: "a482abf6beb845d59e5a21ea36260c3f")
!28 = !DILexicalBlockFile(scope: !10, file: !27, discriminator: 0)
!29 = !DILocalVariable(name: "ix", scope: !26, file: !27, line: 22, type: !17)
!30 = !DILocalVariable(name: "i", scope: !26, file: !27, line: 23, type: !17)
!31 = !DILocalVariable(name: "result", scope: !26, file: !27, line: 24, type: !13)
!32 = !DILocation(line: 0, scope: !10)
!33 = !DILocation(line: 0, scope: !26)
!34 = !DILocation(line: 26, column: 12, scope: !35)
!35 = distinct !DILexicalBlock(scope: !26, file: !27, line: 26, column: 7)
!36 = !DILocation(line: 26, column: 7, scope: !26)
!37 = !DILocation(line: 30, column: 3, scope: !38)
!38 = distinct !DILexicalBlock(scope: !26, file: !27, line: 30, column: 3)
!39 = !DILocation(line: 30, column: 17, scope: !40)
!40 = distinct !DILexicalBlock(scope: !38, file: !27, line: 30, column: 3)
!41 = !DILocation(line: 31, column: 14, scope: !42)
!42 = distinct !DILexicalBlock(scope: !43, file: !27, line: 31, column: 9)
!43 = distinct !DILexicalBlock(scope: !40, file: !27, line: 30, column: 27)
!44 = !{!45, !45, i64 0}
!45 = !{!"double", !46, i64 0}
!46 = !{!"omnipotent char", !47, i64 0}
!47 = !{!"Simple C/C++ TBAA"}
!48 = !DILocation(line: 31, column: 9, scope: !42)
!49 = !DILocation(line: 31, column: 21, scope: !42)
!50 = !DILocation(line: 31, column: 9, scope: !43)
!51 = !DILocation(line: 35, column: 8, scope: !43)
!52 = !DILocation(line: 30, column: 23, scope: !40)
!53 = distinct !{!53, !37, !54, !55}
!54 = !DILocation(line: 36, column: 3, scope: !38)
!55 = !{!"llvm.loop.mustprogress"}
!56 = !DILocation(line: 11, column: 1, scope: !57)
!57 = !DILexicalBlockFile(scope: !10, file: !1, discriminator: 0)
