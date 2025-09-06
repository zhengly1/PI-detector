; ModuleID = 'ssyr.ll'
source_filename = "ssyr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"./source_syr.h\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !7
@.str.2 = private unnamed_addr constant [23 x i8] c"unrecognized operation\00", align 1, !dbg !12

; Function Attrs: nounwind uwtable
define dso_local void @cblas_ssyr(i32 noundef %0, i32 noundef %1, i32 noundef %2, float noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5, ptr nocapture noundef %6, i32 noundef %7) local_unnamed_addr #0 !dbg !39 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !51, metadata !DIExpression()), !dbg !81
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !52, metadata !DIExpression()), !dbg !81
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !53, metadata !DIExpression()), !dbg !81
  tail call void @llvm.dbg.value(metadata float %3, metadata !54, metadata !DIExpression()), !dbg !81
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !55, metadata !DIExpression()), !dbg !81
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !56, metadata !DIExpression()), !dbg !81
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !57, metadata !DIExpression()), !dbg !81
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !58, metadata !DIExpression()), !dbg !81
  tail call void @llvm.dbg.value(metadata i32 0, metadata !63, metadata !DIExpression()), !dbg !82
  %9 = add i32 %0, -103, !dbg !83
  %10 = icmp ult i32 %9, -2, !dbg !83
  %11 = zext i1 %10 to i32, !dbg !83
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !63, metadata !DIExpression()), !dbg !82
  %12 = add i32 %1, -123, !dbg !85
  %13 = icmp ult i32 %12, -2, !dbg !85
  %14 = select i1 %13, i32 2, i32 %11, !dbg !85
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !63, metadata !DIExpression()), !dbg !82
  %15 = icmp slt i32 %2, 0, !dbg !87
  %16 = select i1 %15, i32 3, i32 %14, !dbg !89
  tail call void @llvm.dbg.value(metadata i32 %16, metadata !63, metadata !DIExpression()), !dbg !82
  %17 = icmp eq i32 %5, 0, !dbg !90
  %18 = select i1 %17, i32 6, i32 %16, !dbg !89
  tail call void @llvm.dbg.value(metadata i32 %18, metadata !63, metadata !DIExpression()), !dbg !82
  %19 = tail call i32 @llvm.smax.i32(i32 %2, i32 1), !dbg !92
  %20 = icmp sgt i32 %19, %7, !dbg !92
  %21 = select i1 %20, i32 8, i32 %18, !dbg !89
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !63, metadata !DIExpression()), !dbg !82
  %22 = icmp eq i32 %21, 0, !dbg !94
  br i1 %22, label %24, label %23, !dbg !89

23:                                               ; preds = %8
  tail call void (i32, ptr, ptr, ...) @cblas_xerbla(i32 noundef %21, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #3, !dbg !94
  br label %24, !dbg !94

24:                                               ; preds = %23, %8
  %25 = icmp eq i32 %2, 0, !dbg !96
  %26 = fcmp oeq float %3, 0.000000e+00
  %27 = or i1 %25, %26, !dbg !98
  br i1 %27, label %150, label %28, !dbg !98

28:                                               ; preds = %24
  %29 = icmp eq i32 %0, 101, !dbg !99
  %30 = icmp eq i32 %1, 121
  %31 = and i1 %29, %30, !dbg !100
  br i1 %31, label %36, label %32, !dbg !100

32:                                               ; preds = %28
  %33 = icmp eq i32 %0, 102, !dbg !101
  %34 = icmp eq i32 %1, 122
  %35 = and i1 %33, %34, !dbg !102
  br i1 %35, label %36, label %74, !dbg !102

36:                                               ; preds = %32, %28
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !65, metadata !DIExpression()), !dbg !103
  tail call void @llvm.dbg.value(metadata i32 0, metadata !59, metadata !DIExpression()), !dbg !104
  %37 = icmp sgt i32 %2, 0, !dbg !105
  br i1 %37, label %38, label %150, !dbg !106

38:                                               ; preds = %36
  %39 = icmp sgt i32 %5, 0, !dbg !107
  %40 = sub nsw i32 1, %2, !dbg !107
  %41 = mul i32 %40, %5, !dbg !107
  %42 = select i1 %39, i32 0, i32 %41, !dbg !107
  tail call void @llvm.dbg.value(metadata i32 %42, metadata !65, metadata !DIExpression()), !dbg !103
  %43 = sext i32 %42 to i64, !dbg !106
  %44 = sext i32 %5 to i64, !dbg !106
  %45 = sext i32 %7 to i64, !dbg !106
  %46 = zext nneg i32 %2 to i64, !dbg !105
  br label %47, !dbg !106

47:                                               ; preds = %70, %38
  %48 = phi i64 [ 0, %38 ], [ %72, %70 ]
  %49 = phi i64 [ %43, %38 ], [ %71, %70 ]
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !59, metadata !DIExpression()), !dbg !104
  tail call void @llvm.dbg.value(metadata i64 %49, metadata !65, metadata !DIExpression()), !dbg !103
  %50 = getelementptr inbounds float, ptr %4, i64 %49, !dbg !108
  %51 = load float, ptr %50, align 4, !dbg !108, !tbaa !109
  %52 = fmul float %51, %3, !dbg !113
  tail call void @llvm.dbg.value(metadata float %52, metadata !68, metadata !DIExpression()), !dbg !114
  tail call void @llvm.dbg.value(metadata i64 %49, metadata !72, metadata !DIExpression()), !dbg !114
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !62, metadata !DIExpression()), !dbg !104
  %53 = mul nsw i64 %48, %45
  %54 = getelementptr float, ptr %6, i64 %53, !dbg !115
  br label %55, !dbg !115

55:                                               ; preds = %55, %47
  %56 = phi i64 [ %48, %47 ], [ %68, %55 ]
  %57 = phi i64 [ %49, %47 ], [ %67, %55 ]
  tail call void @llvm.dbg.value(metadata i64 %57, metadata !72, metadata !DIExpression()), !dbg !114
  tail call void @llvm.dbg.value(metadata i64 %56, metadata !62, metadata !DIExpression()), !dbg !104
  %58 = getelementptr inbounds float, ptr %4, i64 %57, !dbg !117
  %59 = load float, ptr %58, align 4, !dbg !117, !tbaa !109
  %60 = fmul float %52, %59, !dbg !120
  %61 = getelementptr float, ptr %54, i64 %56, !dbg !121
  %62 = load float, ptr %61, align 4, !dbg !122, !tbaa !109
  %63 = fpext float %62 to double, !dbg !122
  %64 = fpext float %60 to double, !dbg !122
  %65 = fptrunc double %63 to float, !dbg !122
  %66 = fptrunc double %64 to float, !dbg !122
  %handler_result = call float @fAddHandlerFloat(float %65, float %66), !dbg !122
  store float %handler_result, ptr %61, align 4, !dbg !122, !tbaa !109
  %67 = add i64 %57, %44, !dbg !123
  tail call void @llvm.dbg.value(metadata i64 %67, metadata !72, metadata !DIExpression()), !dbg !114
  %68 = add nuw nsw i64 %56, 1, !dbg !124
  tail call void @llvm.dbg.value(metadata i64 %68, metadata !62, metadata !DIExpression()), !dbg !104
  %69 = icmp eq i64 %68, %46, !dbg !125
  br i1 %69, label %70, label %55, !dbg !115, !llvm.loop !126

70:                                               ; preds = %55
  %71 = add i64 %49, %44, !dbg !129
  tail call void @llvm.dbg.value(metadata i64 %71, metadata !65, metadata !DIExpression()), !dbg !103
  %72 = add nuw nsw i64 %48, 1, !dbg !130
  tail call void @llvm.dbg.value(metadata i64 %72, metadata !59, metadata !DIExpression()), !dbg !104
  %73 = icmp eq i64 %72, %46, !dbg !105
  br i1 %73, label %150, label %47, !dbg !106, !llvm.loop !131

74:                                               ; preds = %32
  %75 = and i1 %29, %34, !dbg !133
  %76 = and i1 %33, %30
  %77 = or i1 %75, %76, !dbg !133
  br i1 %77, label %78, label %149, !dbg !133

78:                                               ; preds = %74
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !73, metadata !DIExpression()), !dbg !134
  tail call void @llvm.dbg.value(metadata i32 0, metadata !59, metadata !DIExpression()), !dbg !104
  %79 = icmp sgt i32 %2, 0, !dbg !135
  br i1 %79, label %80, label %150, !dbg !136

80:                                               ; preds = %78
  %81 = icmp sgt i32 %5, 0, !dbg !137
  %82 = sub nsw i32 1, %2, !dbg !137
  %83 = mul i32 %82, %5, !dbg !137
  %84 = select i1 %81, i32 0, i32 %83, !dbg !137
  tail call void @llvm.dbg.value(metadata i32 %84, metadata !73, metadata !DIExpression()), !dbg !134
  %85 = sext i32 %84 to i64, !dbg !136
  %86 = sext i32 %5 to i64, !dbg !136
  %87 = sext i32 %7 to i64, !dbg !136
  %88 = zext nneg i32 %2 to i64, !dbg !135
  br label %89, !dbg !136

89:                                               ; preds = %144, %80
  %90 = phi i64 [ %85, %80 ], [ %145, %144 ]
  %91 = phi i64 [ 0, %80 ], [ %146, %144 ]
  %92 = phi i64 [ 1, %80 ], [ %147, %144 ]
  tail call void @llvm.dbg.value(metadata i64 %91, metadata !59, metadata !DIExpression()), !dbg !104
  tail call void @llvm.dbg.value(metadata i64 %90, metadata !73, metadata !DIExpression()), !dbg !134
  %93 = getelementptr inbounds float, ptr %4, i64 %90, !dbg !138
  %94 = load float, ptr %93, align 4, !dbg !138, !tbaa !109
  %95 = fmul float %94, %3, !dbg !139
  tail call void @llvm.dbg.value(metadata float %95, metadata !76, metadata !DIExpression()), !dbg !140
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !80, metadata !DIExpression()), !dbg !140
  tail call void @llvm.dbg.value(metadata i32 0, metadata !62, metadata !DIExpression()), !dbg !104
  %96 = mul nsw i64 %91, %87
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !80, metadata !DIExpression()), !dbg !140
  tail call void @llvm.dbg.value(metadata i32 0, metadata !62, metadata !DIExpression()), !dbg !104
  %97 = getelementptr float, ptr %6, i64 %96, !dbg !141
  %98 = and i64 %92, 1, !dbg !141
  %99 = icmp eq i64 %91, 0, !dbg !141
  br i1 %99, label %130, label %100, !dbg !141

100:                                              ; preds = %89
  %101 = and i64 %92, 9223372036854775806, !dbg !141
  br label %102, !dbg !141

102:                                              ; preds = %102, %100
  %103 = phi i64 [ 0, %100 ], [ %127, %102 ]
  %104 = phi i64 [ %85, %100 ], [ %126, %102 ]
  %105 = phi i64 [ 0, %100 ], [ %128, %102 ]
  tail call void @llvm.dbg.value(metadata i64 %104, metadata !80, metadata !DIExpression()), !dbg !140
  tail call void @llvm.dbg.value(metadata i64 %103, metadata !62, metadata !DIExpression()), !dbg !104
  %106 = getelementptr inbounds float, ptr %4, i64 %104, !dbg !143
  %107 = load float, ptr %106, align 4, !dbg !143, !tbaa !109
  %108 = fmul float %95, %107, !dbg !146
  %109 = getelementptr float, ptr %97, i64 %103, !dbg !147
  %110 = load float, ptr %109, align 4, !dbg !148, !tbaa !109
  %111 = fpext float %110 to double, !dbg !148
  %112 = fpext float %108 to double, !dbg !148
  %113 = fptrunc double %111 to float, !dbg !148
  %114 = fptrunc double %112 to float, !dbg !148
  %handler_result1 = call float @fAddHandlerFloat(float %113, float %114), !dbg !148
  store float %handler_result1, ptr %109, align 4, !dbg !148, !tbaa !109
  %115 = add i64 %104, %86, !dbg !149
  tail call void @llvm.dbg.value(metadata i64 %115, metadata !80, metadata !DIExpression()), !dbg !140
  %116 = or disjoint i64 %103, 1, !dbg !150
  tail call void @llvm.dbg.value(metadata i64 %116, metadata !62, metadata !DIExpression()), !dbg !104
  tail call void @llvm.dbg.value(metadata i64 %115, metadata !80, metadata !DIExpression()), !dbg !140
  tail call void @llvm.dbg.value(metadata i64 %116, metadata !62, metadata !DIExpression()), !dbg !104
  %117 = getelementptr inbounds float, ptr %4, i64 %115, !dbg !143
  %118 = load float, ptr %117, align 4, !dbg !143, !tbaa !109
  %119 = fmul float %95, %118, !dbg !146
  %120 = getelementptr float, ptr %97, i64 %116, !dbg !147
  %121 = load float, ptr %120, align 4, !dbg !148, !tbaa !109
  %122 = fpext float %121 to double, !dbg !148
  %123 = fpext float %119 to double, !dbg !148
  %124 = fptrunc double %122 to float, !dbg !148
  %125 = fptrunc double %123 to float, !dbg !148
  %handler_result2 = call float @fAddHandlerFloat(float %124, float %125), !dbg !148
  store float %handler_result2, ptr %120, align 4, !dbg !148, !tbaa !109
  %126 = add i64 %115, %86, !dbg !149
  tail call void @llvm.dbg.value(metadata i64 %126, metadata !80, metadata !DIExpression()), !dbg !140
  %127 = add nuw nsw i64 %103, 2, !dbg !150
  tail call void @llvm.dbg.value(metadata i64 %127, metadata !62, metadata !DIExpression()), !dbg !104
  %128 = add i64 %105, 2, !dbg !141
  %129 = icmp eq i64 %128, %101, !dbg !141
  br i1 %129, label %130, label %102, !dbg !141, !llvm.loop !151

130:                                              ; preds = %102, %89
  %131 = phi i64 [ 0, %89 ], [ %127, %102 ]
  %132 = phi i64 [ %85, %89 ], [ %126, %102 ]
  %133 = icmp eq i64 %98, 0, !dbg !141
  br i1 %133, label %144, label %134, !dbg !141

134:                                              ; preds = %130
  tail call void @llvm.dbg.value(metadata i64 %132, metadata !80, metadata !DIExpression()), !dbg !140
  tail call void @llvm.dbg.value(metadata i64 %131, metadata !62, metadata !DIExpression()), !dbg !104
  %135 = getelementptr inbounds float, ptr %4, i64 %132, !dbg !143
  %136 = load float, ptr %135, align 4, !dbg !143, !tbaa !109
  %137 = fmul float %95, %136, !dbg !146
  %138 = getelementptr float, ptr %97, i64 %131, !dbg !147
  %139 = load float, ptr %138, align 4, !dbg !148, !tbaa !109
  %140 = fpext float %139 to double, !dbg !148
  %141 = fpext float %137 to double, !dbg !148
  %142 = fptrunc double %140 to float, !dbg !148
  %143 = fptrunc double %141 to float, !dbg !148
  %handler_result3 = call float @fAddHandlerFloat(float %142, float %143), !dbg !148
  store float %handler_result3, ptr %138, align 4, !dbg !148, !tbaa !109
  tail call void @llvm.dbg.value(metadata !DIArgList(i64 %132, i64 %86), metadata !80, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !140
  tail call void @llvm.dbg.value(metadata i64 %131, metadata !62, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !104
  br label %144, !dbg !153

144:                                              ; preds = %134, %130
  %145 = add i64 %90, %86, !dbg !153
  tail call void @llvm.dbg.value(metadata i64 %145, metadata !73, metadata !DIExpression()), !dbg !134
  %146 = add nuw nsw i64 %91, 1, !dbg !154
  tail call void @llvm.dbg.value(metadata i64 %146, metadata !59, metadata !DIExpression()), !dbg !104
  %147 = add nuw nsw i64 %92, 1, !dbg !136
  %148 = icmp eq i64 %146, %88, !dbg !135
  br i1 %148, label %150, label %89, !dbg !136, !llvm.loop !155

149:                                              ; preds = %74
  tail call void (i32, ptr, ptr, ...) @cblas_xerbla(i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #3, !dbg !157
  br label %150

150:                                              ; preds = %149, %144, %78, %70, %36, %24
  ret void, !dbg !159
}

declare !dbg !161 void @cblas_xerbla(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #2

declare float @fAddHandlerFloat(float, float)

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!17}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 23, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "./source_syr.h", directory: "/PI-detector/external/gsl/gsl-2.5/cblas", checksumkind: CSK_MD5, checksum: "a9d1e785f015402c358a21cc9a7a123c")
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
!18 = !DIFile(filename: "ssyr.c", directory: "/PI-detector/external/gsl/gsl-2.5/cblas", checksumkind: CSK_MD5, checksum: "515289ed16f846825fd36832a45500a1")
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
!39 = distinct !DISubprogram(name: "cblas_ssyr", scope: !18, file: !18, line: 7, type: !40, scopeLine: 10, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !50)
!40 = !DISubroutineType(types: !41)
!41 = !{null, !42, !43, !44, !46, !48, !44, !49, !44}
!42 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!43 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !26)
!44 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!45 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!46 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !47)
!47 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!50 = !{!51, !52, !53, !54, !55, !56, !57, !58, !59, !62, !63, !65, !68, !72, !73, !76, !80}
!51 = !DILocalVariable(name: "order", arg: 1, scope: !39, file: !18, line: 7, type: !42)
!52 = !DILocalVariable(name: "Uplo", arg: 2, scope: !39, file: !18, line: 7, type: !43)
!53 = !DILocalVariable(name: "N", arg: 3, scope: !39, file: !18, line: 8, type: !44)
!54 = !DILocalVariable(name: "alpha", arg: 4, scope: !39, file: !18, line: 8, type: !46)
!55 = !DILocalVariable(name: "X", arg: 5, scope: !39, file: !18, line: 8, type: !48)
!56 = !DILocalVariable(name: "incX", arg: 6, scope: !39, file: !18, line: 8, type: !44)
!57 = !DILocalVariable(name: "A", arg: 7, scope: !39, file: !18, line: 9, type: !49)
!58 = !DILocalVariable(name: "lda", arg: 8, scope: !39, file: !18, line: 9, type: !44)
!59 = !DILocalVariable(name: "i", scope: !60, file: !2, line: 21, type: !45)
!60 = distinct !DILexicalBlock(scope: !61, file: !2, line: 20, column: 1)
!61 = !DILexicalBlockFile(scope: !39, file: !2, discriminator: 0)
!62 = !DILocalVariable(name: "j", scope: !60, file: !2, line: 21, type: !45)
!63 = !DILocalVariable(name: "pos", scope: !64, file: !2, line: 23, type: !45)
!64 = distinct !DILexicalBlock(scope: !60, file: !2, line: 23, column: 3)
!65 = !DILocalVariable(name: "ix", scope: !66, file: !2, line: 33, type: !45)
!66 = distinct !DILexicalBlock(scope: !67, file: !2, line: 32, column: 58)
!67 = distinct !DILexicalBlock(scope: !60, file: !2, line: 31, column: 7)
!68 = !DILocalVariable(name: "tmp", scope: !69, file: !2, line: 35, type: !46)
!69 = distinct !DILexicalBlock(scope: !70, file: !2, line: 34, column: 29)
!70 = distinct !DILexicalBlock(scope: !71, file: !2, line: 34, column: 5)
!71 = distinct !DILexicalBlock(scope: !66, file: !2, line: 34, column: 5)
!72 = !DILocalVariable(name: "jx", scope: !69, file: !2, line: 36, type: !45)
!73 = !DILocalVariable(name: "ix", scope: !74, file: !2, line: 45, type: !45)
!74 = distinct !DILexicalBlock(scope: !75, file: !2, line: 44, column: 65)
!75 = distinct !DILexicalBlock(scope: !67, file: !2, line: 43, column: 14)
!76 = !DILocalVariable(name: "tmp", scope: !77, file: !2, line: 47, type: !46)
!77 = distinct !DILexicalBlock(scope: !78, file: !2, line: 46, column: 29)
!78 = distinct !DILexicalBlock(scope: !79, file: !2, line: 46, column: 5)
!79 = distinct !DILexicalBlock(scope: !74, file: !2, line: 46, column: 5)
!80 = !DILocalVariable(name: "jx", scope: !77, file: !2, line: 48, type: !45)
!81 = !DILocation(line: 0, scope: !39)
!82 = !DILocation(line: 0, scope: !64)
!83 = !DILocation(line: 23, column: 3, scope: !84)
!84 = distinct !DILexicalBlock(scope: !64, file: !2, line: 23, column: 3)
!85 = !DILocation(line: 23, column: 3, scope: !86)
!86 = distinct !DILexicalBlock(scope: !64, file: !2, line: 23, column: 3)
!87 = !DILocation(line: 23, column: 3, scope: !88)
!88 = distinct !DILexicalBlock(scope: !64, file: !2, line: 23, column: 3)
!89 = !DILocation(line: 23, column: 3, scope: !64)
!90 = !DILocation(line: 23, column: 3, scope: !91)
!91 = distinct !DILexicalBlock(scope: !64, file: !2, line: 23, column: 3)
!92 = !DILocation(line: 23, column: 3, scope: !93)
!93 = distinct !DILexicalBlock(scope: !64, file: !2, line: 23, column: 3)
!94 = !DILocation(line: 23, column: 3, scope: !95)
!95 = distinct !DILexicalBlock(scope: !64, file: !2, line: 23, column: 3)
!96 = !DILocation(line: 25, column: 9, scope: !97)
!97 = distinct !DILexicalBlock(scope: !60, file: !2, line: 25, column: 7)
!98 = !DILocation(line: 25, column: 7, scope: !60)
!99 = !DILocation(line: 31, column: 14, scope: !67)
!100 = !DILocation(line: 31, column: 31, scope: !67)
!101 = !DILocation(line: 32, column: 17, scope: !67)
!102 = !DILocation(line: 32, column: 34, scope: !67)
!103 = !DILocation(line: 0, scope: !66)
!104 = !DILocation(line: 0, scope: !60)
!105 = !DILocation(line: 34, column: 19, scope: !70)
!106 = !DILocation(line: 34, column: 5, scope: !71)
!107 = !DILocation(line: 33, column: 16, scope: !66)
!108 = !DILocation(line: 35, column: 32, scope: !69)
!109 = !{!110, !110, i64 0}
!110 = !{!"float", !111, i64 0}
!111 = !{!"omnipotent char", !112, i64 0}
!112 = !{!"Simple C/C++ TBAA"}
!113 = !DILocation(line: 35, column: 30, scope: !69)
!114 = !DILocation(line: 0, scope: !69)
!115 = !DILocation(line: 37, column: 7, scope: !116)
!116 = distinct !DILexicalBlock(scope: !69, file: !2, line: 37, column: 7)
!117 = !DILocation(line: 38, column: 27, scope: !118)
!118 = distinct !DILexicalBlock(scope: !119, file: !2, line: 37, column: 31)
!119 = distinct !DILexicalBlock(scope: !116, file: !2, line: 37, column: 7)
!120 = !DILocation(line: 38, column: 33, scope: !118)
!121 = !DILocation(line: 38, column: 9, scope: !118)
!122 = !DILocation(line: 38, column: 24, scope: !118)
!123 = !DILocation(line: 39, column: 12, scope: !118)
!124 = !DILocation(line: 37, column: 27, scope: !119)
!125 = !DILocation(line: 37, column: 21, scope: !119)
!126 = distinct !{!126, !115, !127, !128}
!127 = !DILocation(line: 40, column: 7, scope: !116)
!128 = !{!"llvm.loop.mustprogress"}
!129 = !DILocation(line: 41, column: 10, scope: !69)
!130 = !DILocation(line: 34, column: 25, scope: !70)
!131 = distinct !{!131, !106, !132, !128}
!132 = !DILocation(line: 42, column: 5, scope: !71)
!133 = !DILocation(line: 43, column: 38, scope: !75)
!134 = !DILocation(line: 0, scope: !74)
!135 = !DILocation(line: 46, column: 19, scope: !78)
!136 = !DILocation(line: 46, column: 5, scope: !79)
!137 = !DILocation(line: 45, column: 16, scope: !74)
!138 = !DILocation(line: 47, column: 32, scope: !77)
!139 = !DILocation(line: 47, column: 30, scope: !77)
!140 = !DILocation(line: 0, scope: !77)
!141 = !DILocation(line: 49, column: 7, scope: !142)
!142 = distinct !DILexicalBlock(scope: !77, file: !2, line: 49, column: 7)
!143 = !DILocation(line: 50, column: 27, scope: !144)
!144 = distinct !DILexicalBlock(scope: !145, file: !2, line: 49, column: 32)
!145 = distinct !DILexicalBlock(scope: !142, file: !2, line: 49, column: 7)
!146 = !DILocation(line: 50, column: 33, scope: !144)
!147 = !DILocation(line: 50, column: 9, scope: !144)
!148 = !DILocation(line: 50, column: 24, scope: !144)
!149 = !DILocation(line: 51, column: 12, scope: !144)
!150 = !DILocation(line: 49, column: 28, scope: !145)
!151 = distinct !{!151, !141, !152, !128}
!152 = !DILocation(line: 52, column: 7, scope: !142)
!153 = !DILocation(line: 53, column: 10, scope: !77)
!154 = !DILocation(line: 46, column: 25, scope: !78)
!155 = distinct !{!155, !136, !156, !128}
!156 = !DILocation(line: 54, column: 5, scope: !79)
!157 = !DILocation(line: 56, column: 5, scope: !158)
!158 = distinct !DILexicalBlock(scope: !75, file: !2, line: 55, column: 10)
!159 = !DILocation(line: 14, column: 1, scope: !160)
!160 = !DILexicalBlockFile(scope: !39, file: !18, discriminator: 0)
!161 = !DISubprogram(name: "cblas_xerbla", scope: !21, file: !21, line: 602, type: !162, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!162 = !DISubroutineType(types: !163)
!163 = !{null, !45, !164, !164, null}
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
