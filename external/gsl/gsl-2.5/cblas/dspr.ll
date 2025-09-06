; ModuleID = 'dspr.c'
source_filename = "dspr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"./source_spr.h\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !7
@.str.2 = private unnamed_addr constant [23 x i8] c"unrecognized operation\00", align 1, !dbg !12

; Function Attrs: nounwind uwtable
define dso_local void @cblas_dspr(i32 noundef %0, i32 noundef %1, i32 noundef %2, double noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5, ptr nocapture noundef %6) local_unnamed_addr #0 !dbg !39 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !51, metadata !DIExpression()), !dbg !80
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !52, metadata !DIExpression()), !dbg !80
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !53, metadata !DIExpression()), !dbg !80
  tail call void @llvm.dbg.value(metadata double %3, metadata !54, metadata !DIExpression()), !dbg !80
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !55, metadata !DIExpression()), !dbg !80
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !56, metadata !DIExpression()), !dbg !80
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !57, metadata !DIExpression()), !dbg !80
  tail call void @llvm.dbg.value(metadata i32 0, metadata !62, metadata !DIExpression()), !dbg !81
  %8 = add i32 %0, -103, !dbg !82
  %9 = icmp ult i32 %8, -2, !dbg !82
  %10 = zext i1 %9 to i32, !dbg !82
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !62, metadata !DIExpression()), !dbg !81
  %11 = add i32 %1, -123, !dbg !84
  %12 = icmp ult i32 %11, -2, !dbg !84
  %13 = select i1 %12, i32 2, i32 %10, !dbg !84
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !62, metadata !DIExpression()), !dbg !81
  %14 = icmp slt i32 %2, 0, !dbg !86
  %15 = select i1 %14, i32 3, i32 %13, !dbg !88
  tail call void @llvm.dbg.value(metadata i32 %15, metadata !62, metadata !DIExpression()), !dbg !81
  %16 = icmp eq i32 %5, 0, !dbg !89
  %17 = select i1 %16, i32 6, i32 %15, !dbg !88
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !62, metadata !DIExpression()), !dbg !81
  %18 = icmp eq i32 %17, 0, !dbg !91
  br i1 %18, label %20, label %19, !dbg !88

19:                                               ; preds = %7
  tail call void (i32, ptr, ptr, ...) @cblas_xerbla(i32 noundef %17, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #3, !dbg !91
  br label %20, !dbg !91

20:                                               ; preds = %19, %7
  %21 = icmp eq i32 %2, 0, !dbg !93
  %22 = fcmp oeq double %3, 0.000000e+00
  %23 = or i1 %21, %22, !dbg !95
  br i1 %23, label %145, label %24, !dbg !95

24:                                               ; preds = %20
  %25 = icmp eq i32 %0, 101, !dbg !96
  %26 = icmp eq i32 %1, 121
  %27 = and i1 %25, %26, !dbg !97
  br i1 %27, label %32, label %28, !dbg !97

28:                                               ; preds = %24
  %29 = icmp eq i32 %0, 102, !dbg !98
  %30 = icmp eq i32 %1, 122
  %31 = and i1 %29, %30, !dbg !99
  br i1 %31, label %32, label %76, !dbg !99

32:                                               ; preds = %28, %24
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !64, metadata !DIExpression()), !dbg !100
  tail call void @llvm.dbg.value(metadata i32 0, metadata !58, metadata !DIExpression()), !dbg !101
  %33 = icmp sgt i32 %2, 0, !dbg !102
  br i1 %33, label %34, label %145, !dbg !103

34:                                               ; preds = %32
  %35 = icmp sgt i32 %5, 0, !dbg !104
  %36 = sub nsw i32 1, %2, !dbg !104
  %37 = mul i32 %36, %5, !dbg !104
  %38 = select i1 %35, i32 0, i32 %37, !dbg !104
  tail call void @llvm.dbg.value(metadata i32 %38, metadata !64, metadata !DIExpression()), !dbg !100
  %39 = shl nuw nsw i32 %2, 1
  %40 = or disjoint i32 %39, 1
  %41 = sext i32 %38 to i64, !dbg !103
  %42 = sext i32 %5 to i64, !dbg !103
  %43 = zext nneg i32 %2 to i64, !dbg !102
  br label %44, !dbg !103

44:                                               ; preds = %34, %71
  %45 = phi i64 [ 0, %34 ], [ %73, %71 ]
  %46 = phi i64 [ %41, %34 ], [ %72, %71 ]
  %47 = phi i32 [ 0, %34 ], [ %74, %71 ]
  %48 = trunc i64 %45 to i32
  tail call void @llvm.dbg.value(metadata i32 %48, metadata !58, metadata !DIExpression()), !dbg !101
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !64, metadata !DIExpression()), !dbg !100
  %49 = getelementptr inbounds double, ptr %4, i64 %46, !dbg !105
  %50 = load double, ptr %49, align 8, !dbg !105, !tbaa !106
  %51 = fmul double %50, %3, !dbg !110
  tail call void @llvm.dbg.value(metadata double %51, metadata !67, metadata !DIExpression()), !dbg !111
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !71, metadata !DIExpression()), !dbg !111
  tail call void @llvm.dbg.value(metadata i32 %48, metadata !61, metadata !DIExpression()), !dbg !101
  %52 = add i32 %40, %47
  %53 = mul nsw i32 %52, %48
  %54 = sdiv i32 %53, 2
  %55 = add i32 %54, %47
  br label %56, !dbg !112

56:                                               ; preds = %44, %56
  %57 = phi i64 [ %45, %44 ], [ %69, %56 ]
  %58 = phi i64 [ %46, %44 ], [ %68, %56 ]
  tail call void @llvm.dbg.value(metadata i64 %58, metadata !71, metadata !DIExpression()), !dbg !111
  tail call void @llvm.dbg.value(metadata i64 %57, metadata !61, metadata !DIExpression()), !dbg !101
  %59 = getelementptr inbounds double, ptr %4, i64 %58, !dbg !114
  %60 = load double, ptr %59, align 8, !dbg !114, !tbaa !106
  %61 = fmul double %51, %60, !dbg !117
  %62 = trunc i64 %57 to i32, !dbg !118
  %63 = add i32 %55, %62, !dbg !118
  %64 = sext i32 %63 to i64, !dbg !119
  %65 = getelementptr inbounds double, ptr %6, i64 %64, !dbg !119
  %66 = load double, ptr %65, align 8, !dbg !120, !tbaa !106
  %67 = fadd double %66, %61, !dbg !120
  store double %67, ptr %65, align 8, !dbg !120, !tbaa !106
  %68 = add i64 %58, %42, !dbg !121
  tail call void @llvm.dbg.value(metadata i64 %68, metadata !71, metadata !DIExpression()), !dbg !111
  %69 = add nuw nsw i64 %57, 1, !dbg !122
  tail call void @llvm.dbg.value(metadata i64 %69, metadata !61, metadata !DIExpression()), !dbg !101
  %70 = icmp eq i64 %69, %43, !dbg !123
  br i1 %70, label %71, label %56, !dbg !112, !llvm.loop !124

71:                                               ; preds = %56
  %72 = add i64 %46, %42, !dbg !127
  tail call void @llvm.dbg.value(metadata i64 %72, metadata !64, metadata !DIExpression()), !dbg !100
  %73 = add nuw nsw i64 %45, 1, !dbg !103
  tail call void @llvm.dbg.value(metadata i64 %73, metadata !58, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !101
  %74 = xor i32 %48, -1
  %75 = icmp eq i64 %73, %43, !dbg !102
  br i1 %75, label %145, label %44, !dbg !103, !llvm.loop !128

76:                                               ; preds = %28
  %77 = and i1 %25, %30, !dbg !130
  %78 = and i1 %29, %26
  %79 = or i1 %77, %78, !dbg !130
  br i1 %79, label %80, label %144, !dbg !130

80:                                               ; preds = %76
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !72, metadata !DIExpression()), !dbg !131
  tail call void @llvm.dbg.value(metadata i32 0, metadata !58, metadata !DIExpression()), !dbg !101
  %81 = icmp sgt i32 %2, 0, !dbg !132
  br i1 %81, label %82, label %145, !dbg !133

82:                                               ; preds = %80
  %83 = icmp sgt i32 %5, 0, !dbg !134
  %84 = sub nsw i32 1, %2, !dbg !134
  %85 = mul i32 %84, %5, !dbg !134
  %86 = select i1 %83, i32 0, i32 %85, !dbg !134
  tail call void @llvm.dbg.value(metadata i32 %86, metadata !72, metadata !DIExpression()), !dbg !131
  %87 = sext i32 %86 to i64, !dbg !133
  %88 = sext i32 %5 to i64, !dbg !133
  br label %89, !dbg !133

89:                                               ; preds = %82, %139
  %90 = phi i64 [ 0, %82 ], [ %143, %139 ]
  %91 = phi i64 [ %87, %82 ], [ %140, %139 ]
  %92 = phi i64 [ 1, %82 ], [ %141, %139 ]
  %93 = phi i32 [ 0, %82 ], [ %97, %139 ]
  tail call void @llvm.dbg.value(metadata i32 %93, metadata !58, metadata !DIExpression()), !dbg !101
  tail call void @llvm.dbg.value(metadata i64 %91, metadata !72, metadata !DIExpression()), !dbg !131
  %94 = getelementptr inbounds double, ptr %4, i64 %91, !dbg !135
  %95 = load double, ptr %94, align 8, !dbg !135, !tbaa !106
  %96 = fmul double %95, %3, !dbg !136
  tail call void @llvm.dbg.value(metadata double %96, metadata !75, metadata !DIExpression()), !dbg !137
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !79, metadata !DIExpression()), !dbg !137
  tail call void @llvm.dbg.value(metadata i32 0, metadata !61, metadata !DIExpression()), !dbg !101
  %97 = add nuw nsw i32 %93, 1
  %98 = mul nsw i32 %97, %93
  %99 = lshr i32 %98, 1
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !79, metadata !DIExpression()), !dbg !137
  tail call void @llvm.dbg.value(metadata i32 0, metadata !61, metadata !DIExpression()), !dbg !101
  %100 = zext nneg i32 %99 to i64, !dbg !138
  %101 = getelementptr double, ptr %6, i64 %100, !dbg !138
  %102 = and i64 %92, 1, !dbg !138
  %103 = icmp eq i64 %90, 0, !dbg !138
  br i1 %103, label %128, label %104, !dbg !138

104:                                              ; preds = %89
  %105 = and i64 %92, 9223372036854775806, !dbg !138
  br label %106, !dbg !138

106:                                              ; preds = %106, %104
  %107 = phi i64 [ 0, %104 ], [ %125, %106 ]
  %108 = phi i64 [ %87, %104 ], [ %124, %106 ]
  %109 = phi i64 [ 0, %104 ], [ %126, %106 ]
  tail call void @llvm.dbg.value(metadata i64 %108, metadata !79, metadata !DIExpression()), !dbg !137
  tail call void @llvm.dbg.value(metadata i64 %107, metadata !61, metadata !DIExpression()), !dbg !101
  %110 = getelementptr inbounds double, ptr %4, i64 %108, !dbg !140
  %111 = load double, ptr %110, align 8, !dbg !140, !tbaa !106
  %112 = fmul double %96, %111, !dbg !143
  %113 = getelementptr double, ptr %101, i64 %107, !dbg !144
  %114 = load double, ptr %113, align 8, !dbg !145, !tbaa !106
  %115 = fadd double %114, %112, !dbg !145
  store double %115, ptr %113, align 8, !dbg !145, !tbaa !106
  %116 = add i64 %108, %88, !dbg !146
  tail call void @llvm.dbg.value(metadata i64 %116, metadata !79, metadata !DIExpression()), !dbg !137
  %117 = or disjoint i64 %107, 1, !dbg !147
  tail call void @llvm.dbg.value(metadata i64 %117, metadata !61, metadata !DIExpression()), !dbg !101
  tail call void @llvm.dbg.value(metadata i64 %116, metadata !79, metadata !DIExpression()), !dbg !137
  tail call void @llvm.dbg.value(metadata i64 %117, metadata !61, metadata !DIExpression()), !dbg !101
  %118 = getelementptr inbounds double, ptr %4, i64 %116, !dbg !140
  %119 = load double, ptr %118, align 8, !dbg !140, !tbaa !106
  %120 = fmul double %96, %119, !dbg !143
  %121 = getelementptr double, ptr %101, i64 %117, !dbg !144
  %122 = load double, ptr %121, align 8, !dbg !145, !tbaa !106
  %123 = fadd double %122, %120, !dbg !145
  store double %123, ptr %121, align 8, !dbg !145, !tbaa !106
  %124 = add i64 %116, %88, !dbg !146
  tail call void @llvm.dbg.value(metadata i64 %124, metadata !79, metadata !DIExpression()), !dbg !137
  %125 = add nuw nsw i64 %107, 2, !dbg !147
  tail call void @llvm.dbg.value(metadata i64 %125, metadata !61, metadata !DIExpression()), !dbg !101
  %126 = add i64 %109, 2, !dbg !138
  %127 = icmp eq i64 %126, %105, !dbg !138
  br i1 %127, label %128, label %106, !dbg !138, !llvm.loop !148

128:                                              ; preds = %106, %89
  %129 = phi i64 [ 0, %89 ], [ %125, %106 ]
  %130 = phi i64 [ %87, %89 ], [ %124, %106 ]
  %131 = icmp eq i64 %102, 0, !dbg !138
  br i1 %131, label %139, label %132, !dbg !138

132:                                              ; preds = %128
  tail call void @llvm.dbg.value(metadata i64 %130, metadata !79, metadata !DIExpression()), !dbg !137
  tail call void @llvm.dbg.value(metadata i64 %129, metadata !61, metadata !DIExpression()), !dbg !101
  %133 = getelementptr inbounds double, ptr %4, i64 %130, !dbg !140
  %134 = load double, ptr %133, align 8, !dbg !140, !tbaa !106
  %135 = fmul double %96, %134, !dbg !143
  %136 = getelementptr double, ptr %101, i64 %129, !dbg !144
  %137 = load double, ptr %136, align 8, !dbg !145, !tbaa !106
  %138 = fadd double %137, %135, !dbg !145
  store double %138, ptr %136, align 8, !dbg !145, !tbaa !106
  tail call void @llvm.dbg.value(metadata !DIArgList(i64 %130, i64 %88), metadata !79, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !137
  tail call void @llvm.dbg.value(metadata i64 %129, metadata !61, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !101
  br label %139, !dbg !150

139:                                              ; preds = %128, %132
  %140 = add i64 %91, %88, !dbg !150
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !72, metadata !DIExpression()), !dbg !131
  tail call void @llvm.dbg.value(metadata i32 %97, metadata !58, metadata !DIExpression()), !dbg !101
  %141 = add nuw nsw i64 %92, 1, !dbg !133
  %142 = icmp eq i32 %97, %2, !dbg !132
  %143 = add i64 %90, 1, !dbg !133
  br i1 %142, label %145, label %89, !dbg !133, !llvm.loop !151

144:                                              ; preds = %76
  tail call void (i32, ptr, ptr, ...) @cblas_xerbla(i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #3, !dbg !153
  br label %145

145:                                              ; preds = %139, %71, %80, %32, %144, %20
  ret void, !dbg !155
}

declare !dbg !157 void @cblas_xerbla(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!17}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 23, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "./source_spr.h", directory: "/PI-detector/external/gsl/gsl-2.5/cblas", checksumkind: CSK_MD5, checksum: "eef2171ad3d444be06cf85d252f42e56")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 15)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 23, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 1)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 56, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 23)
!17 = distinct !DICompileUnit(language: DW_LANG_C11, file: !18, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !19, globals: !30, splitDebugInlining: false, nameTableKind: None)
!18 = !DIFile(filename: "dspr.c", directory: "/PI-detector/external/gsl/gsl-2.5/cblas", checksumkind: CSK_MD5, checksum: "8f3a3511e8f18df3a4cc5efef7ef8bb3")
!19 = !{!20, !26}
!20 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "CBLAS_ORDER", file: !21, line: 46, baseType: !22, size: 32, elements: !23)
!21 = !DIFile(filename: "../gsl/gsl_cblas.h", directory: "/PI-detector/external/gsl/gsl-2.5/cblas", checksumkind: CSK_MD5, checksum: "03ac5115536daff0db5f3e2b63839634")
!22 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!23 = !{!24, !25}
!24 = !DIEnumerator(name: "CblasRowMajor", value: 101)
!25 = !DIEnumerator(name: "CblasColMajor", value: 102)
!26 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "CBLAS_UPLO", file: !21, line: 48, baseType: !22, size: 32, elements: !27)
!27 = !{!28, !29}
!28 = !DIEnumerator(name: "CblasUpper", value: 121)
!29 = !DIEnumerator(name: "CblasLower", value: 122)
!30 = !{!0, !7, !12}
!31 = !{i32 7, !"Dwarf Version", i32 5}
!32 = !{i32 2, !"Debug Info Version", i32 3}
!33 = !{i32 1, !"wchar_size", i32 4}
!34 = !{i32 8, !"PIC Level", i32 2}
!35 = !{i32 7, !"PIE Level", i32 2}
!36 = !{i32 7, !"uwtable", i32 2}
!37 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!38 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!39 = distinct !DISubprogram(name: "cblas_dspr", scope: !18, file: !18, line: 7, type: !40, scopeLine: 10, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !50)
!40 = !DISubroutineType(types: !41)
!41 = !{null, !42, !43, !44, !46, !48, !44, !49}
!42 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!43 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !26)
!44 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!45 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!46 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !47)
!47 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!50 = !{!51, !52, !53, !54, !55, !56, !57, !58, !61, !62, !64, !67, !71, !72, !75, !79}
!51 = !DILocalVariable(name: "order", arg: 1, scope: !39, file: !18, line: 7, type: !42)
!52 = !DILocalVariable(name: "Uplo", arg: 2, scope: !39, file: !18, line: 7, type: !43)
!53 = !DILocalVariable(name: "N", arg: 3, scope: !39, file: !18, line: 8, type: !44)
!54 = !DILocalVariable(name: "alpha", arg: 4, scope: !39, file: !18, line: 8, type: !46)
!55 = !DILocalVariable(name: "X", arg: 5, scope: !39, file: !18, line: 8, type: !48)
!56 = !DILocalVariable(name: "incX", arg: 6, scope: !39, file: !18, line: 8, type: !44)
!57 = !DILocalVariable(name: "Ap", arg: 7, scope: !39, file: !18, line: 9, type: !49)
!58 = !DILocalVariable(name: "i", scope: !59, file: !2, line: 21, type: !45)
!59 = distinct !DILexicalBlock(scope: !60, file: !2, line: 20, column: 1)
!60 = !DILexicalBlockFile(scope: !39, file: !2, discriminator: 0)
!61 = !DILocalVariable(name: "j", scope: !59, file: !2, line: 21, type: !45)
!62 = !DILocalVariable(name: "pos", scope: !63, file: !2, line: 23, type: !45)
!63 = distinct !DILexicalBlock(scope: !59, file: !2, line: 23, column: 3)
!64 = !DILocalVariable(name: "ix", scope: !65, file: !2, line: 33, type: !45)
!65 = distinct !DILexicalBlock(scope: !66, file: !2, line: 32, column: 58)
!66 = distinct !DILexicalBlock(scope: !59, file: !2, line: 31, column: 7)
!67 = !DILocalVariable(name: "tmp", scope: !68, file: !2, line: 35, type: !46)
!68 = distinct !DILexicalBlock(scope: !69, file: !2, line: 34, column: 29)
!69 = distinct !DILexicalBlock(scope: !70, file: !2, line: 34, column: 5)
!70 = distinct !DILexicalBlock(scope: !65, file: !2, line: 34, column: 5)
!71 = !DILocalVariable(name: "jx", scope: !68, file: !2, line: 36, type: !45)
!72 = !DILocalVariable(name: "ix", scope: !73, file: !2, line: 45, type: !45)
!73 = distinct !DILexicalBlock(scope: !74, file: !2, line: 44, column: 65)
!74 = distinct !DILexicalBlock(scope: !66, file: !2, line: 43, column: 14)
!75 = !DILocalVariable(name: "tmp", scope: !76, file: !2, line: 47, type: !46)
!76 = distinct !DILexicalBlock(scope: !77, file: !2, line: 46, column: 29)
!77 = distinct !DILexicalBlock(scope: !78, file: !2, line: 46, column: 5)
!78 = distinct !DILexicalBlock(scope: !73, file: !2, line: 46, column: 5)
!79 = !DILocalVariable(name: "jx", scope: !76, file: !2, line: 48, type: !45)
!80 = !DILocation(line: 0, scope: !39)
!81 = !DILocation(line: 0, scope: !63)
!82 = !DILocation(line: 23, column: 3, scope: !83)
!83 = distinct !DILexicalBlock(scope: !63, file: !2, line: 23, column: 3)
!84 = !DILocation(line: 23, column: 3, scope: !85)
!85 = distinct !DILexicalBlock(scope: !63, file: !2, line: 23, column: 3)
!86 = !DILocation(line: 23, column: 3, scope: !87)
!87 = distinct !DILexicalBlock(scope: !63, file: !2, line: 23, column: 3)
!88 = !DILocation(line: 23, column: 3, scope: !63)
!89 = !DILocation(line: 23, column: 3, scope: !90)
!90 = distinct !DILexicalBlock(scope: !63, file: !2, line: 23, column: 3)
!91 = !DILocation(line: 23, column: 3, scope: !92)
!92 = distinct !DILexicalBlock(scope: !63, file: !2, line: 23, column: 3)
!93 = !DILocation(line: 25, column: 9, scope: !94)
!94 = distinct !DILexicalBlock(scope: !59, file: !2, line: 25, column: 7)
!95 = !DILocation(line: 25, column: 7, scope: !59)
!96 = !DILocation(line: 31, column: 14, scope: !66)
!97 = !DILocation(line: 31, column: 31, scope: !66)
!98 = !DILocation(line: 32, column: 17, scope: !66)
!99 = !DILocation(line: 32, column: 34, scope: !66)
!100 = !DILocation(line: 0, scope: !65)
!101 = !DILocation(line: 0, scope: !59)
!102 = !DILocation(line: 34, column: 19, scope: !69)
!103 = !DILocation(line: 34, column: 5, scope: !70)
!104 = !DILocation(line: 33, column: 16, scope: !65)
!105 = !DILocation(line: 35, column: 32, scope: !68)
!106 = !{!107, !107, i64 0}
!107 = !{!"double", !108, i64 0}
!108 = !{!"omnipotent char", !109, i64 0}
!109 = !{!"Simple C/C++ TBAA"}
!110 = !DILocation(line: 35, column: 30, scope: !68)
!111 = !DILocation(line: 0, scope: !68)
!112 = !DILocation(line: 37, column: 7, scope: !113)
!113 = distinct !DILexicalBlock(scope: !68, file: !2, line: 37, column: 7)
!114 = !DILocation(line: 38, column: 30, scope: !115)
!115 = distinct !DILexicalBlock(scope: !116, file: !2, line: 37, column: 31)
!116 = distinct !DILexicalBlock(scope: !113, file: !2, line: 37, column: 7)
!117 = !DILocation(line: 38, column: 36, scope: !115)
!118 = !DILocation(line: 38, column: 12, scope: !115)
!119 = !DILocation(line: 38, column: 9, scope: !115)
!120 = !DILocation(line: 38, column: 27, scope: !115)
!121 = !DILocation(line: 39, column: 12, scope: !115)
!122 = !DILocation(line: 37, column: 27, scope: !116)
!123 = !DILocation(line: 37, column: 21, scope: !116)
!124 = distinct !{!124, !112, !125, !126}
!125 = !DILocation(line: 40, column: 7, scope: !113)
!126 = !{!"llvm.loop.mustprogress"}
!127 = !DILocation(line: 41, column: 10, scope: !68)
!128 = distinct !{!128, !103, !129, !126}
!129 = !DILocation(line: 42, column: 5, scope: !70)
!130 = !DILocation(line: 43, column: 38, scope: !74)
!131 = !DILocation(line: 0, scope: !73)
!132 = !DILocation(line: 46, column: 19, scope: !77)
!133 = !DILocation(line: 46, column: 5, scope: !78)
!134 = !DILocation(line: 45, column: 16, scope: !73)
!135 = !DILocation(line: 47, column: 32, scope: !76)
!136 = !DILocation(line: 47, column: 30, scope: !76)
!137 = !DILocation(line: 0, scope: !76)
!138 = !DILocation(line: 49, column: 7, scope: !139)
!139 = distinct !DILexicalBlock(scope: !76, file: !2, line: 49, column: 7)
!140 = !DILocation(line: 50, column: 30, scope: !141)
!141 = distinct !DILexicalBlock(scope: !142, file: !2, line: 49, column: 32)
!142 = distinct !DILexicalBlock(scope: !139, file: !2, line: 49, column: 7)
!143 = !DILocation(line: 50, column: 36, scope: !141)
!144 = !DILocation(line: 50, column: 9, scope: !141)
!145 = !DILocation(line: 50, column: 27, scope: !141)
!146 = !DILocation(line: 51, column: 12, scope: !141)
!147 = !DILocation(line: 49, column: 28, scope: !142)
!148 = distinct !{!148, !138, !149, !126}
!149 = !DILocation(line: 52, column: 7, scope: !139)
!150 = !DILocation(line: 53, column: 10, scope: !76)
!151 = distinct !{!151, !133, !152, !126}
!152 = !DILocation(line: 54, column: 5, scope: !78)
!153 = !DILocation(line: 56, column: 5, scope: !154)
!154 = distinct !DILexicalBlock(scope: !74, file: !2, line: 55, column: 10)
!155 = !DILocation(line: 14, column: 1, scope: !156)
!156 = !DILexicalBlockFile(scope: !39, file: !18, discriminator: 0)
!157 = !DISubprogram(name: "cblas_xerbla", scope: !21, file: !21, line: 602, type: !158, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!158 = !DISubroutineType(types: !159)
!159 = !{null, !45, !160, !160, null}
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
