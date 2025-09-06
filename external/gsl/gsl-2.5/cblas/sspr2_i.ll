; ModuleID = 'sspr2.ll'
source_filename = "sspr2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"./source_spr2.h\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !7
@.str.2 = private unnamed_addr constant [23 x i8] c"unrecognized operation\00", align 1, !dbg !12

; Function Attrs: nounwind uwtable
define dso_local void @cblas_sspr2(i32 noundef %0, i32 noundef %1, i32 noundef %2, float noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5, ptr nocapture noundef readonly %6, i32 noundef %7, ptr nocapture noundef %8) local_unnamed_addr #0 !dbg !39 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !51, metadata !DIExpression()), !dbg !90
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !52, metadata !DIExpression()), !dbg !90
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !53, metadata !DIExpression()), !dbg !90
  tail call void @llvm.dbg.value(metadata float %3, metadata !54, metadata !DIExpression()), !dbg !90
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !55, metadata !DIExpression()), !dbg !90
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !56, metadata !DIExpression()), !dbg !90
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !57, metadata !DIExpression()), !dbg !90
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !58, metadata !DIExpression()), !dbg !90
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !59, metadata !DIExpression()), !dbg !90
  tail call void @llvm.dbg.value(metadata i32 0, metadata !64, metadata !DIExpression()), !dbg !91
  %10 = add i32 %0, -103, !dbg !92
  %11 = icmp ult i32 %10, -2, !dbg !92
  %12 = zext i1 %11 to i32, !dbg !92
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !64, metadata !DIExpression()), !dbg !91
  %13 = add i32 %1, -123, !dbg !94
  %14 = icmp ult i32 %13, -2, !dbg !94
  %15 = select i1 %14, i32 2, i32 %12, !dbg !94
  tail call void @llvm.dbg.value(metadata i32 %15, metadata !64, metadata !DIExpression()), !dbg !91
  %16 = icmp slt i32 %2, 0, !dbg !96
  %17 = select i1 %16, i32 3, i32 %15, !dbg !98
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !64, metadata !DIExpression()), !dbg !91
  %18 = icmp eq i32 %5, 0, !dbg !99
  %19 = select i1 %18, i32 6, i32 %17, !dbg !98
  tail call void @llvm.dbg.value(metadata i32 %19, metadata !64, metadata !DIExpression()), !dbg !91
  %20 = icmp eq i32 %7, 0, !dbg !101
  %21 = select i1 %20, i32 8, i32 %19, !dbg !98
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !64, metadata !DIExpression()), !dbg !91
  %22 = icmp eq i32 %21, 0, !dbg !103
  br i1 %22, label %24, label %23, !dbg !98

23:                                               ; preds = %9
  tail call void (i32, ptr, ptr, ...) @cblas_xerbla(i32 noundef %21, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #3, !dbg !103
  br label %24, !dbg !103

24:                                               ; preds = %23, %9
  %25 = icmp eq i32 %2, 0, !dbg !105
  %26 = fcmp oeq float %3, 0.000000e+00
  %27 = or i1 %25, %26, !dbg !107
  br i1 %27, label %162, label %28, !dbg !107

28:                                               ; preds = %24
  %29 = icmp eq i32 %0, 101, !dbg !108
  %30 = icmp eq i32 %1, 121
  %31 = and i1 %29, %30, !dbg !109
  br i1 %31, label %36, label %32, !dbg !109

32:                                               ; preds = %28
  %33 = icmp eq i32 %0, 102, !dbg !110
  %34 = icmp eq i32 %1, 122
  %35 = and i1 %33, %34, !dbg !111
  br i1 %35, label %36, label %100, !dbg !111

36:                                               ; preds = %32, %28
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !66, metadata !DIExpression()), !dbg !112
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !69, metadata !DIExpression()), !dbg !112
  tail call void @llvm.dbg.value(metadata i32 0, metadata !60, metadata !DIExpression()), !dbg !113
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !66, metadata !DIExpression()), !dbg !112
  %37 = icmp sgt i32 %2, 0, !dbg !114
  br i1 %37, label %38, label %162, !dbg !115

38:                                               ; preds = %36
  %39 = icmp sgt i32 %7, 0, !dbg !116
  %40 = sub nsw i32 1, %2, !dbg !117
  %41 = mul i32 %40, %7, !dbg !116
  %42 = select i1 %39, i32 0, i32 %41, !dbg !116
  tail call void @llvm.dbg.value(metadata i32 %42, metadata !69, metadata !DIExpression()), !dbg !112
  %43 = icmp sgt i32 %5, 0, !dbg !117
  %44 = mul i32 %40, %5, !dbg !117
  %45 = select i1 %43, i32 0, i32 %44, !dbg !117
  tail call void @llvm.dbg.value(metadata i32 %45, metadata !66, metadata !DIExpression()), !dbg !112
  %46 = shl nuw nsw i32 %2, 1
  %47 = or disjoint i32 %46, 1
  %48 = sext i32 %42 to i64, !dbg !115
  %49 = sext i32 %7 to i64, !dbg !115
  %50 = sext i32 %45 to i64, !dbg !115
  %51 = sext i32 %5 to i64, !dbg !115
  %52 = zext nneg i32 %2 to i64, !dbg !114
  br label %53, !dbg !115

53:                                               ; preds = %94, %38
  %54 = phi i64 [ %50, %38 ], [ %95, %94 ]
  %55 = phi i64 [ %48, %38 ], [ %96, %94 ]
  %56 = phi i64 [ 0, %38 ], [ %97, %94 ]
  %57 = phi i32 [ 0, %38 ], [ %98, %94 ]
  %58 = trunc i64 %56 to i32
  tail call void @llvm.dbg.value(metadata i32 %58, metadata !60, metadata !DIExpression()), !dbg !113
  tail call void @llvm.dbg.value(metadata i64 %55, metadata !69, metadata !DIExpression()), !dbg !112
  tail call void @llvm.dbg.value(metadata i64 %54, metadata !66, metadata !DIExpression()), !dbg !112
  %59 = getelementptr inbounds float, ptr %4, i64 %54, !dbg !118
  %60 = load float, ptr %59, align 4, !dbg !118, !tbaa !119
  %61 = fmul float %60, %3, !dbg !123
  %62 = fpext float %61 to double, !dbg !124
  tail call void @llvm.dbg.value(metadata double %62, metadata !70, metadata !DIExpression()), !dbg !125
  %63 = getelementptr inbounds float, ptr %6, i64 %55, !dbg !126
  %64 = load float, ptr %63, align 4, !dbg !126, !tbaa !119
  %65 = fmul float %64, %3, !dbg !127
  %66 = fpext float %65 to double, !dbg !128
  tail call void @llvm.dbg.value(metadata double %66, metadata !76, metadata !DIExpression()), !dbg !125
  tail call void @llvm.dbg.value(metadata i64 %54, metadata !77, metadata !DIExpression()), !dbg !125
  tail call void @llvm.dbg.value(metadata i64 %55, metadata !78, metadata !DIExpression()), !dbg !125
  tail call void @llvm.dbg.value(metadata i32 %58, metadata !63, metadata !DIExpression()), !dbg !113
  %67 = add i32 %47, %57
  %68 = mul nsw i32 %67, %58
  %69 = sdiv i32 %68, 2
  %70 = add i32 %69, %57
  br label %71, !dbg !129

71:                                               ; preds = %71, %53
  %72 = phi i64 [ %54, %53 ], [ %90, %71 ]
  %73 = phi i64 [ %55, %53 ], [ %91, %71 ]
  %74 = phi i64 [ %56, %53 ], [ %92, %71 ]
  tail call void @llvm.dbg.value(metadata i64 %74, metadata !63, metadata !DIExpression()), !dbg !113
  tail call void @llvm.dbg.value(metadata i64 %73, metadata !78, metadata !DIExpression()), !dbg !125
  tail call void @llvm.dbg.value(metadata i64 %72, metadata !77, metadata !DIExpression()), !dbg !125
  %75 = getelementptr inbounds float, ptr %6, i64 %73, !dbg !131
  %76 = load float, ptr %75, align 4, !dbg !131, !tbaa !119
  %77 = fpext float %76 to double, !dbg !131
  %78 = fmul double %62, %77, !dbg !134
  %79 = getelementptr inbounds float, ptr %4, i64 %72, !dbg !135
  %80 = load float, ptr %79, align 4, !dbg !135, !tbaa !119
  %81 = fpext float %80 to double, !dbg !135
  %82 = fmul double %66, %81, !dbg !136
  %handler_result = call double @fAddHandlerDouble(double %78, double %82), !dbg !137
  %83 = trunc i64 %74 to i32, !dbg !137
  %84 = add i32 %70, %83, !dbg !137
  %85 = sext i32 %84 to i64, !dbg !138
  %86 = getelementptr inbounds float, ptr %8, i64 %85, !dbg !138
  %87 = load float, ptr %86, align 4, !dbg !139, !tbaa !119
  %88 = fpext float %87 to double, !dbg !139
  %handler_result1 = call double @fAddHandlerDouble(double %handler_result, double %88), !dbg !139
  %89 = fptrunc double %handler_result1 to float, !dbg !139
  store float %89, ptr %86, align 4, !dbg !139, !tbaa !119
  %90 = add i64 %72, %51, !dbg !140
  tail call void @llvm.dbg.value(metadata i64 %90, metadata !77, metadata !DIExpression()), !dbg !125
  %91 = add i64 %73, %49, !dbg !141
  tail call void @llvm.dbg.value(metadata i64 %91, metadata !78, metadata !DIExpression()), !dbg !125
  %92 = add nuw nsw i64 %74, 1, !dbg !142
  tail call void @llvm.dbg.value(metadata i64 %92, metadata !63, metadata !DIExpression()), !dbg !113
  %93 = icmp eq i64 %92, %52, !dbg !143
  br i1 %93, label %94, label %71, !dbg !129, !llvm.loop !144

94:                                               ; preds = %71
  %95 = add i64 %54, %51, !dbg !147
  tail call void @llvm.dbg.value(metadata i64 %95, metadata !66, metadata !DIExpression()), !dbg !112
  %96 = add i64 %55, %49, !dbg !148
  tail call void @llvm.dbg.value(metadata i64 %96, metadata !69, metadata !DIExpression()), !dbg !112
  %97 = add nuw nsw i64 %56, 1, !dbg !115
  tail call void @llvm.dbg.value(metadata i64 %97, metadata !60, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !113
  %98 = xor i32 %58, -1
  %99 = icmp eq i64 %97, %52, !dbg !114
  br i1 %99, label %162, label %53, !dbg !115, !llvm.loop !149

100:                                              ; preds = %32
  %101 = and i1 %29, %34, !dbg !151
  %102 = and i1 %33, %30
  %103 = or i1 %101, %102, !dbg !151
  br i1 %103, label %104, label %161, !dbg !151

104:                                              ; preds = %100
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !79, metadata !DIExpression()), !dbg !152
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !82, metadata !DIExpression()), !dbg !152
  tail call void @llvm.dbg.value(metadata i32 0, metadata !60, metadata !DIExpression()), !dbg !113
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !79, metadata !DIExpression()), !dbg !152
  %105 = icmp sgt i32 %2, 0, !dbg !153
  br i1 %105, label %106, label %162, !dbg !154

106:                                              ; preds = %104
  %107 = icmp sgt i32 %7, 0, !dbg !155
  %108 = sub nsw i32 1, %2, !dbg !156
  %109 = mul i32 %108, %7, !dbg !155
  %110 = select i1 %107, i32 0, i32 %109, !dbg !155
  tail call void @llvm.dbg.value(metadata i32 %110, metadata !82, metadata !DIExpression()), !dbg !152
  %111 = icmp sgt i32 %5, 0, !dbg !156
  %112 = mul i32 %108, %5, !dbg !156
  %113 = select i1 %111, i32 0, i32 %112, !dbg !156
  tail call void @llvm.dbg.value(metadata i32 %113, metadata !79, metadata !DIExpression()), !dbg !152
  %114 = sext i32 %110 to i64, !dbg !154
  %115 = sext i32 %7 to i64, !dbg !154
  %116 = sext i32 %113 to i64, !dbg !154
  %117 = sext i32 %5 to i64, !dbg !154
  br label %118, !dbg !154

118:                                              ; preds = %156, %106
  %119 = phi i64 [ %116, %106 ], [ %157, %156 ]
  %120 = phi i64 [ %114, %106 ], [ %158, %156 ]
  %121 = phi i64 [ 1, %106 ], [ %159, %156 ]
  %122 = phi i32 [ 0, %106 ], [ %131, %156 ]
  tail call void @llvm.dbg.value(metadata i32 %122, metadata !60, metadata !DIExpression()), !dbg !113
  tail call void @llvm.dbg.value(metadata i64 %120, metadata !82, metadata !DIExpression()), !dbg !152
  tail call void @llvm.dbg.value(metadata i64 %119, metadata !79, metadata !DIExpression()), !dbg !152
  %123 = getelementptr inbounds float, ptr %4, i64 %119, !dbg !157
  %124 = load float, ptr %123, align 4, !dbg !157, !tbaa !119
  %125 = fmul float %124, %3, !dbg !158
  %126 = fpext float %125 to double, !dbg !159
  tail call void @llvm.dbg.value(metadata double %126, metadata !83, metadata !DIExpression()), !dbg !160
  %127 = getelementptr inbounds float, ptr %6, i64 %120, !dbg !161
  %128 = load float, ptr %127, align 4, !dbg !161, !tbaa !119
  %129 = fmul float %128, %3, !dbg !162
  %130 = fpext float %129 to double, !dbg !163
  tail call void @llvm.dbg.value(metadata double %130, metadata !87, metadata !DIExpression()), !dbg !160
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !88, metadata !DIExpression()), !dbg !160
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !89, metadata !DIExpression()), !dbg !160
  tail call void @llvm.dbg.value(metadata i32 0, metadata !63, metadata !DIExpression()), !dbg !113
  %131 = add nuw nsw i32 %122, 1
  %132 = mul nsw i32 %131, %122
  %133 = lshr i32 %132, 1
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !89, metadata !DIExpression()), !dbg !160
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !88, metadata !DIExpression()), !dbg !160
  tail call void @llvm.dbg.value(metadata i32 0, metadata !63, metadata !DIExpression()), !dbg !113
  %134 = zext nneg i32 %133 to i64, !dbg !164
  %135 = getelementptr float, ptr %8, i64 %134, !dbg !164
  br label %136, !dbg !164

136:                                              ; preds = %136, %118
  %137 = phi i64 [ 0, %118 ], [ %154, %136 ]
  %138 = phi i64 [ %116, %118 ], [ %152, %136 ]
  %139 = phi i64 [ %114, %118 ], [ %153, %136 ]
  tail call void @llvm.dbg.value(metadata i64 %139, metadata !89, metadata !DIExpression()), !dbg !160
  tail call void @llvm.dbg.value(metadata i64 %138, metadata !88, metadata !DIExpression()), !dbg !160
  tail call void @llvm.dbg.value(metadata i64 %137, metadata !63, metadata !DIExpression()), !dbg !113
  %140 = getelementptr inbounds float, ptr %6, i64 %139, !dbg !166
  %141 = load float, ptr %140, align 4, !dbg !166, !tbaa !119
  %142 = fpext float %141 to double, !dbg !166
  %143 = fmul double %126, %142, !dbg !169
  %144 = getelementptr inbounds float, ptr %4, i64 %138, !dbg !170
  %145 = load float, ptr %144, align 4, !dbg !170, !tbaa !119
  %146 = fpext float %145 to double, !dbg !170
  %147 = fmul double %130, %146, !dbg !171
  %handler_result2 = call double @fAddHandlerDouble(double %143, double %147), !dbg !172
  %148 = getelementptr float, ptr %135, i64 %137, !dbg !172
  %149 = load float, ptr %148, align 4, !dbg !173, !tbaa !119
  %150 = fpext float %149 to double, !dbg !173
  %handler_result3 = call double @fAddHandlerDouble(double %handler_result2, double %150), !dbg !173
  %151 = fptrunc double %handler_result3 to float, !dbg !173
  store float %151, ptr %148, align 4, !dbg !173, !tbaa !119
  %152 = add i64 %138, %117, !dbg !174
  tail call void @llvm.dbg.value(metadata i64 %152, metadata !88, metadata !DIExpression()), !dbg !160
  %153 = add i64 %139, %115, !dbg !175
  tail call void @llvm.dbg.value(metadata i64 %153, metadata !89, metadata !DIExpression()), !dbg !160
  %154 = add nuw nsw i64 %137, 1, !dbg !176
  tail call void @llvm.dbg.value(metadata i64 %154, metadata !63, metadata !DIExpression()), !dbg !113
  %155 = icmp eq i64 %154, %121, !dbg !177
  br i1 %155, label %156, label %136, !dbg !164, !llvm.loop !178

156:                                              ; preds = %136
  %157 = add i64 %119, %117, !dbg !180
  tail call void @llvm.dbg.value(metadata i64 %157, metadata !79, metadata !DIExpression()), !dbg !152
  %158 = add i64 %120, %115, !dbg !181
  tail call void @llvm.dbg.value(metadata i64 %158, metadata !82, metadata !DIExpression()), !dbg !152
  tail call void @llvm.dbg.value(metadata i32 %131, metadata !60, metadata !DIExpression()), !dbg !113
  %159 = add nuw nsw i64 %121, 1, !dbg !154
  %160 = icmp eq i32 %131, %2, !dbg !153
  br i1 %160, label %162, label %118, !dbg !154, !llvm.loop !182

161:                                              ; preds = %100
  tail call void (i32, ptr, ptr, ...) @cblas_xerbla(i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #3, !dbg !184
  br label %162

162:                                              ; preds = %161, %156, %104, %94, %36, %24
  ret void, !dbg !186
}

declare !dbg !188 void @cblas_xerbla(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

declare double @fAddHandlerDouble(double, double)

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!17}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 23, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "./source_spr2.h", directory: "/PI-detector/external/gsl/gsl-2.5/cblas", checksumkind: CSK_MD5, checksum: "e05a98230429f3fda8d2462f667cc40f")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 16)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 23, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 1)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 66, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 23)
!17 = distinct !DICompileUnit(language: DW_LANG_C11, file: !18, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !19, globals: !30, splitDebugInlining: false, nameTableKind: None)
!18 = !DIFile(filename: "sspr2.c", directory: "/PI-detector/external/gsl/gsl-2.5/cblas", checksumkind: CSK_MD5, checksum: "3cdf17970e4165e77601abc6e32b6098")
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
!39 = distinct !DISubprogram(name: "cblas_sspr2", scope: !18, file: !18, line: 7, type: !40, scopeLine: 10, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !50)
!40 = !DISubroutineType(types: !41)
!41 = !{null, !42, !43, !44, !46, !48, !44, !48, !44, !49}
!42 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!43 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !26)
!44 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!45 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!46 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !47)
!47 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!50 = !{!51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !63, !64, !66, !69, !70, !76, !77, !78, !79, !82, !83, !87, !88, !89}
!51 = !DILocalVariable(name: "order", arg: 1, scope: !39, file: !18, line: 7, type: !42)
!52 = !DILocalVariable(name: "Uplo", arg: 2, scope: !39, file: !18, line: 7, type: !43)
!53 = !DILocalVariable(name: "N", arg: 3, scope: !39, file: !18, line: 8, type: !44)
!54 = !DILocalVariable(name: "alpha", arg: 4, scope: !39, file: !18, line: 8, type: !46)
!55 = !DILocalVariable(name: "X", arg: 5, scope: !39, file: !18, line: 8, type: !48)
!56 = !DILocalVariable(name: "incX", arg: 6, scope: !39, file: !18, line: 8, type: !44)
!57 = !DILocalVariable(name: "Y", arg: 7, scope: !39, file: !18, line: 9, type: !48)
!58 = !DILocalVariable(name: "incY", arg: 8, scope: !39, file: !18, line: 9, type: !44)
!59 = !DILocalVariable(name: "Ap", arg: 9, scope: !39, file: !18, line: 9, type: !49)
!60 = !DILocalVariable(name: "i", scope: !61, file: !2, line: 21, type: !45)
!61 = distinct !DILexicalBlock(scope: !62, file: !2, line: 20, column: 1)
!62 = !DILexicalBlockFile(scope: !39, file: !2, discriminator: 0)
!63 = !DILocalVariable(name: "j", scope: !61, file: !2, line: 21, type: !45)
!64 = !DILocalVariable(name: "pos", scope: !65, file: !2, line: 23, type: !45)
!65 = distinct !DILexicalBlock(scope: !61, file: !2, line: 23, column: 3)
!66 = !DILocalVariable(name: "ix", scope: !67, file: !2, line: 33, type: !45)
!67 = distinct !DILexicalBlock(scope: !68, file: !2, line: 32, column: 58)
!68 = distinct !DILexicalBlock(scope: !61, file: !2, line: 31, column: 7)
!69 = !DILocalVariable(name: "iy", scope: !67, file: !2, line: 34, type: !45)
!70 = !DILocalVariable(name: "tmp1", scope: !71, file: !2, line: 36, type: !74)
!71 = distinct !DILexicalBlock(scope: !72, file: !2, line: 35, column: 29)
!72 = distinct !DILexicalBlock(scope: !73, file: !2, line: 35, column: 5)
!73 = distinct !DILexicalBlock(scope: !67, file: !2, line: 35, column: 5)
!74 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !75)
!75 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!76 = !DILocalVariable(name: "tmp2", scope: !71, file: !2, line: 37, type: !74)
!77 = !DILocalVariable(name: "jx", scope: !71, file: !2, line: 38, type: !45)
!78 = !DILocalVariable(name: "jy", scope: !71, file: !2, line: 39, type: !45)
!79 = !DILocalVariable(name: "ix", scope: !80, file: !2, line: 50, type: !45)
!80 = distinct !DILexicalBlock(scope: !81, file: !2, line: 49, column: 65)
!81 = distinct !DILexicalBlock(scope: !68, file: !2, line: 48, column: 14)
!82 = !DILocalVariable(name: "iy", scope: !80, file: !2, line: 51, type: !45)
!83 = !DILocalVariable(name: "tmp1", scope: !84, file: !2, line: 53, type: !74)
!84 = distinct !DILexicalBlock(scope: !85, file: !2, line: 52, column: 29)
!85 = distinct !DILexicalBlock(scope: !86, file: !2, line: 52, column: 5)
!86 = distinct !DILexicalBlock(scope: !80, file: !2, line: 52, column: 5)
!87 = !DILocalVariable(name: "tmp2", scope: !84, file: !2, line: 54, type: !74)
!88 = !DILocalVariable(name: "jx", scope: !84, file: !2, line: 55, type: !45)
!89 = !DILocalVariable(name: "jy", scope: !84, file: !2, line: 56, type: !45)
!90 = !DILocation(line: 0, scope: !39)
!91 = !DILocation(line: 0, scope: !65)
!92 = !DILocation(line: 23, column: 3, scope: !93)
!93 = distinct !DILexicalBlock(scope: !65, file: !2, line: 23, column: 3)
!94 = !DILocation(line: 23, column: 3, scope: !95)
!95 = distinct !DILexicalBlock(scope: !65, file: !2, line: 23, column: 3)
!96 = !DILocation(line: 23, column: 3, scope: !97)
!97 = distinct !DILexicalBlock(scope: !65, file: !2, line: 23, column: 3)
!98 = !DILocation(line: 23, column: 3, scope: !65)
!99 = !DILocation(line: 23, column: 3, scope: !100)
!100 = distinct !DILexicalBlock(scope: !65, file: !2, line: 23, column: 3)
!101 = !DILocation(line: 23, column: 3, scope: !102)
!102 = distinct !DILexicalBlock(scope: !65, file: !2, line: 23, column: 3)
!103 = !DILocation(line: 23, column: 3, scope: !104)
!104 = distinct !DILexicalBlock(scope: !65, file: !2, line: 23, column: 3)
!105 = !DILocation(line: 25, column: 9, scope: !106)
!106 = distinct !DILexicalBlock(scope: !61, file: !2, line: 25, column: 7)
!107 = !DILocation(line: 25, column: 7, scope: !61)
!108 = !DILocation(line: 31, column: 14, scope: !68)
!109 = !DILocation(line: 31, column: 31, scope: !68)
!110 = !DILocation(line: 32, column: 17, scope: !68)
!111 = !DILocation(line: 32, column: 34, scope: !68)
!112 = !DILocation(line: 0, scope: !67)
!113 = !DILocation(line: 0, scope: !61)
!114 = !DILocation(line: 35, column: 19, scope: !72)
!115 = !DILocation(line: 35, column: 5, scope: !73)
!116 = !DILocation(line: 34, column: 16, scope: !67)
!117 = !DILocation(line: 33, column: 16, scope: !67)
!118 = !DILocation(line: 36, column: 33, scope: !71)
!119 = !{!120, !120, i64 0}
!120 = !{!"float", !121, i64 0}
!121 = !{!"omnipotent char", !122, i64 0}
!122 = !{!"Simple C/C++ TBAA"}
!123 = !DILocation(line: 36, column: 31, scope: !71)
!124 = !DILocation(line: 36, column: 25, scope: !71)
!125 = !DILocation(line: 0, scope: !71)
!126 = !DILocation(line: 37, column: 33, scope: !71)
!127 = !DILocation(line: 37, column: 31, scope: !71)
!128 = !DILocation(line: 37, column: 25, scope: !71)
!129 = !DILocation(line: 40, column: 7, scope: !130)
!130 = distinct !DILexicalBlock(scope: !71, file: !2, line: 40, column: 7)
!131 = !DILocation(line: 41, column: 37, scope: !132)
!132 = distinct !DILexicalBlock(scope: !133, file: !2, line: 40, column: 31)
!133 = distinct !DILexicalBlock(scope: !130, file: !2, line: 40, column: 7)
!134 = !DILocation(line: 41, column: 35, scope: !132)
!135 = !DILocation(line: 41, column: 52, scope: !132)
!136 = !DILocation(line: 41, column: 50, scope: !132)
!137 = !DILocation(line: 41, column: 12, scope: !132)
!138 = !DILocation(line: 41, column: 9, scope: !132)
!139 = !DILocation(line: 41, column: 27, scope: !132)
!140 = !DILocation(line: 42, column: 12, scope: !132)
!141 = !DILocation(line: 43, column: 12, scope: !132)
!142 = !DILocation(line: 40, column: 27, scope: !133)
!143 = !DILocation(line: 40, column: 21, scope: !133)
!144 = distinct !{!144, !129, !145, !146}
!145 = !DILocation(line: 44, column: 7, scope: !130)
!146 = !{!"llvm.loop.mustprogress"}
!147 = !DILocation(line: 45, column: 10, scope: !71)
!148 = !DILocation(line: 46, column: 10, scope: !71)
!149 = distinct !{!149, !115, !150, !146}
!150 = !DILocation(line: 47, column: 5, scope: !73)
!151 = !DILocation(line: 48, column: 38, scope: !81)
!152 = !DILocation(line: 0, scope: !80)
!153 = !DILocation(line: 52, column: 19, scope: !85)
!154 = !DILocation(line: 52, column: 5, scope: !86)
!155 = !DILocation(line: 51, column: 16, scope: !80)
!156 = !DILocation(line: 50, column: 16, scope: !80)
!157 = !DILocation(line: 53, column: 33, scope: !84)
!158 = !DILocation(line: 53, column: 31, scope: !84)
!159 = !DILocation(line: 53, column: 25, scope: !84)
!160 = !DILocation(line: 0, scope: !84)
!161 = !DILocation(line: 54, column: 33, scope: !84)
!162 = !DILocation(line: 54, column: 31, scope: !84)
!163 = !DILocation(line: 54, column: 25, scope: !84)
!164 = !DILocation(line: 57, column: 7, scope: !165)
!165 = distinct !DILexicalBlock(scope: !84, file: !2, line: 57, column: 7)
!166 = !DILocation(line: 58, column: 37, scope: !167)
!167 = distinct !DILexicalBlock(scope: !168, file: !2, line: 57, column: 32)
!168 = distinct !DILexicalBlock(scope: !165, file: !2, line: 57, column: 7)
!169 = !DILocation(line: 58, column: 35, scope: !167)
!170 = !DILocation(line: 58, column: 52, scope: !167)
!171 = !DILocation(line: 58, column: 50, scope: !167)
!172 = !DILocation(line: 58, column: 9, scope: !167)
!173 = !DILocation(line: 58, column: 27, scope: !167)
!174 = !DILocation(line: 59, column: 12, scope: !167)
!175 = !DILocation(line: 60, column: 12, scope: !167)
!176 = !DILocation(line: 57, column: 28, scope: !168)
!177 = !DILocation(line: 57, column: 21, scope: !168)
!178 = distinct !{!178, !164, !179, !146}
!179 = !DILocation(line: 61, column: 7, scope: !165)
!180 = !DILocation(line: 62, column: 10, scope: !84)
!181 = !DILocation(line: 63, column: 10, scope: !84)
!182 = distinct !{!182, !154, !183, !146}
!183 = !DILocation(line: 64, column: 5, scope: !86)
!184 = !DILocation(line: 66, column: 5, scope: !185)
!185 = distinct !DILexicalBlock(scope: !81, file: !2, line: 65, column: 10)
!186 = !DILocation(line: 14, column: 1, scope: !187)
!187 = !DILexicalBlockFile(scope: !39, file: !18, discriminator: 0)
!188 = !DISubprogram(name: "cblas_xerbla", scope: !21, file: !21, line: 602, type: !189, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!189 = !DISubroutineType(types: !190)
!190 = !{null, !45, !191, !191, null}
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
