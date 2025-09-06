; ModuleID = 'sspr2.c'
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
  br i1 %27, label %166, label %28, !dbg !107

28:                                               ; preds = %24
  %29 = icmp eq i32 %0, 101, !dbg !108
  %30 = icmp eq i32 %1, 121
  %31 = and i1 %29, %30, !dbg !109
  br i1 %31, label %36, label %32, !dbg !109

32:                                               ; preds = %28
  %33 = icmp eq i32 %0, 102, !dbg !110
  %34 = icmp eq i32 %1, 122
  %35 = and i1 %33, %34, !dbg !111
  br i1 %35, label %36, label %102, !dbg !111

36:                                               ; preds = %32, %28
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !66, metadata !DIExpression()), !dbg !112
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !69, metadata !DIExpression()), !dbg !112
  tail call void @llvm.dbg.value(metadata i32 0, metadata !60, metadata !DIExpression()), !dbg !113
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !66, metadata !DIExpression()), !dbg !112
  %37 = icmp sgt i32 %2, 0, !dbg !114
  br i1 %37, label %38, label %166, !dbg !115

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

53:                                               ; preds = %38, %96
  %54 = phi i64 [ %50, %38 ], [ %97, %96 ]
  %55 = phi i64 [ %48, %38 ], [ %98, %96 ]
  %56 = phi i64 [ 0, %38 ], [ %99, %96 ]
  %57 = phi i32 [ 0, %38 ], [ %100, %96 ]
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

71:                                               ; preds = %53, %71
  %72 = phi i64 [ %54, %53 ], [ %92, %71 ]
  %73 = phi i64 [ %55, %53 ], [ %93, %71 ]
  %74 = phi i64 [ %56, %53 ], [ %94, %71 ]
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
  %83 = fadd double %78, %82, !dbg !137
  %84 = trunc i64 %74 to i32, !dbg !138
  %85 = add i32 %70, %84, !dbg !138
  %86 = sext i32 %85 to i64, !dbg !139
  %87 = getelementptr inbounds float, ptr %8, i64 %86, !dbg !139
  %88 = load float, ptr %87, align 4, !dbg !140, !tbaa !119
  %89 = fpext float %88 to double, !dbg !140
  %90 = fadd double %83, %89, !dbg !140
  %91 = fptrunc double %90 to float, !dbg !140
  store float %91, ptr %87, align 4, !dbg !140, !tbaa !119
  %92 = add i64 %72, %51, !dbg !141
  tail call void @llvm.dbg.value(metadata i64 %92, metadata !77, metadata !DIExpression()), !dbg !125
  %93 = add i64 %73, %49, !dbg !142
  tail call void @llvm.dbg.value(metadata i64 %93, metadata !78, metadata !DIExpression()), !dbg !125
  %94 = add nuw nsw i64 %74, 1, !dbg !143
  tail call void @llvm.dbg.value(metadata i64 %94, metadata !63, metadata !DIExpression()), !dbg !113
  %95 = icmp eq i64 %94, %52, !dbg !144
  br i1 %95, label %96, label %71, !dbg !129, !llvm.loop !145

96:                                               ; preds = %71
  %97 = add i64 %54, %51, !dbg !148
  tail call void @llvm.dbg.value(metadata i64 %97, metadata !66, metadata !DIExpression()), !dbg !112
  %98 = add i64 %55, %49, !dbg !149
  tail call void @llvm.dbg.value(metadata i64 %98, metadata !69, metadata !DIExpression()), !dbg !112
  %99 = add nuw nsw i64 %56, 1, !dbg !115
  tail call void @llvm.dbg.value(metadata i64 %99, metadata !60, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !113
  %100 = xor i32 %58, -1
  %101 = icmp eq i64 %99, %52, !dbg !114
  br i1 %101, label %166, label %53, !dbg !115, !llvm.loop !150

102:                                              ; preds = %32
  %103 = and i1 %29, %34, !dbg !152
  %104 = and i1 %33, %30
  %105 = or i1 %103, %104, !dbg !152
  br i1 %105, label %106, label %165, !dbg !152

106:                                              ; preds = %102
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !79, metadata !DIExpression()), !dbg !153
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !82, metadata !DIExpression()), !dbg !153
  tail call void @llvm.dbg.value(metadata i32 0, metadata !60, metadata !DIExpression()), !dbg !113
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !79, metadata !DIExpression()), !dbg !153
  %107 = icmp sgt i32 %2, 0, !dbg !154
  br i1 %107, label %108, label %166, !dbg !155

108:                                              ; preds = %106
  %109 = icmp sgt i32 %7, 0, !dbg !156
  %110 = sub nsw i32 1, %2, !dbg !157
  %111 = mul i32 %110, %7, !dbg !156
  %112 = select i1 %109, i32 0, i32 %111, !dbg !156
  tail call void @llvm.dbg.value(metadata i32 %112, metadata !82, metadata !DIExpression()), !dbg !153
  %113 = icmp sgt i32 %5, 0, !dbg !157
  %114 = mul i32 %110, %5, !dbg !157
  %115 = select i1 %113, i32 0, i32 %114, !dbg !157
  tail call void @llvm.dbg.value(metadata i32 %115, metadata !79, metadata !DIExpression()), !dbg !153
  %116 = sext i32 %112 to i64, !dbg !155
  %117 = sext i32 %7 to i64, !dbg !155
  %118 = sext i32 %115 to i64, !dbg !155
  %119 = sext i32 %5 to i64, !dbg !155
  br label %120, !dbg !155

120:                                              ; preds = %108, %160
  %121 = phi i64 [ %118, %108 ], [ %161, %160 ]
  %122 = phi i64 [ %116, %108 ], [ %162, %160 ]
  %123 = phi i64 [ 1, %108 ], [ %163, %160 ]
  %124 = phi i32 [ 0, %108 ], [ %133, %160 ]
  tail call void @llvm.dbg.value(metadata i32 %124, metadata !60, metadata !DIExpression()), !dbg !113
  tail call void @llvm.dbg.value(metadata i64 %122, metadata !82, metadata !DIExpression()), !dbg !153
  tail call void @llvm.dbg.value(metadata i64 %121, metadata !79, metadata !DIExpression()), !dbg !153
  %125 = getelementptr inbounds float, ptr %4, i64 %121, !dbg !158
  %126 = load float, ptr %125, align 4, !dbg !158, !tbaa !119
  %127 = fmul float %126, %3, !dbg !159
  %128 = fpext float %127 to double, !dbg !160
  tail call void @llvm.dbg.value(metadata double %128, metadata !83, metadata !DIExpression()), !dbg !161
  %129 = getelementptr inbounds float, ptr %6, i64 %122, !dbg !162
  %130 = load float, ptr %129, align 4, !dbg !162, !tbaa !119
  %131 = fmul float %130, %3, !dbg !163
  %132 = fpext float %131 to double, !dbg !164
  tail call void @llvm.dbg.value(metadata double %132, metadata !87, metadata !DIExpression()), !dbg !161
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !88, metadata !DIExpression()), !dbg !161
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !89, metadata !DIExpression()), !dbg !161
  tail call void @llvm.dbg.value(metadata i32 0, metadata !63, metadata !DIExpression()), !dbg !113
  %133 = add nuw nsw i32 %124, 1
  %134 = mul nsw i32 %133, %124
  %135 = lshr i32 %134, 1
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !89, metadata !DIExpression()), !dbg !161
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !88, metadata !DIExpression()), !dbg !161
  tail call void @llvm.dbg.value(metadata i32 0, metadata !63, metadata !DIExpression()), !dbg !113
  %136 = zext nneg i32 %135 to i64, !dbg !165
  %137 = getelementptr float, ptr %8, i64 %136, !dbg !165
  br label %138, !dbg !165

138:                                              ; preds = %120, %138
  %139 = phi i64 [ 0, %120 ], [ %158, %138 ]
  %140 = phi i64 [ %118, %120 ], [ %156, %138 ]
  %141 = phi i64 [ %116, %120 ], [ %157, %138 ]
  tail call void @llvm.dbg.value(metadata i64 %141, metadata !89, metadata !DIExpression()), !dbg !161
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !88, metadata !DIExpression()), !dbg !161
  tail call void @llvm.dbg.value(metadata i64 %139, metadata !63, metadata !DIExpression()), !dbg !113
  %142 = getelementptr inbounds float, ptr %6, i64 %141, !dbg !167
  %143 = load float, ptr %142, align 4, !dbg !167, !tbaa !119
  %144 = fpext float %143 to double, !dbg !167
  %145 = fmul double %128, %144, !dbg !170
  %146 = getelementptr inbounds float, ptr %4, i64 %140, !dbg !171
  %147 = load float, ptr %146, align 4, !dbg !171, !tbaa !119
  %148 = fpext float %147 to double, !dbg !171
  %149 = fmul double %132, %148, !dbg !172
  %150 = fadd double %145, %149, !dbg !173
  %151 = getelementptr float, ptr %137, i64 %139, !dbg !174
  %152 = load float, ptr %151, align 4, !dbg !175, !tbaa !119
  %153 = fpext float %152 to double, !dbg !175
  %154 = fadd double %150, %153, !dbg !175
  %155 = fptrunc double %154 to float, !dbg !175
  store float %155, ptr %151, align 4, !dbg !175, !tbaa !119
  %156 = add i64 %140, %119, !dbg !176
  tail call void @llvm.dbg.value(metadata i64 %156, metadata !88, metadata !DIExpression()), !dbg !161
  %157 = add i64 %141, %117, !dbg !177
  tail call void @llvm.dbg.value(metadata i64 %157, metadata !89, metadata !DIExpression()), !dbg !161
  %158 = add nuw nsw i64 %139, 1, !dbg !178
  tail call void @llvm.dbg.value(metadata i64 %158, metadata !63, metadata !DIExpression()), !dbg !113
  %159 = icmp eq i64 %158, %123, !dbg !179
  br i1 %159, label %160, label %138, !dbg !165, !llvm.loop !180

160:                                              ; preds = %138
  %161 = add i64 %121, %119, !dbg !182
  tail call void @llvm.dbg.value(metadata i64 %161, metadata !79, metadata !DIExpression()), !dbg !153
  %162 = add i64 %122, %117, !dbg !183
  tail call void @llvm.dbg.value(metadata i64 %162, metadata !82, metadata !DIExpression()), !dbg !153
  tail call void @llvm.dbg.value(metadata i32 %133, metadata !60, metadata !DIExpression()), !dbg !113
  %163 = add nuw nsw i64 %123, 1, !dbg !155
  %164 = icmp eq i32 %133, %2, !dbg !154
  br i1 %164, label %166, label %120, !dbg !155, !llvm.loop !184

165:                                              ; preds = %102
  tail call void (i32, ptr, ptr, ...) @cblas_xerbla(i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #3, !dbg !186
  br label %166

166:                                              ; preds = %160, %96, %106, %36, %165, %24
  ret void, !dbg !188
}

declare !dbg !190 void @cblas_xerbla(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

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
!137 = !DILocation(line: 41, column: 43, scope: !132)
!138 = !DILocation(line: 41, column: 12, scope: !132)
!139 = !DILocation(line: 41, column: 9, scope: !132)
!140 = !DILocation(line: 41, column: 27, scope: !132)
!141 = !DILocation(line: 42, column: 12, scope: !132)
!142 = !DILocation(line: 43, column: 12, scope: !132)
!143 = !DILocation(line: 40, column: 27, scope: !133)
!144 = !DILocation(line: 40, column: 21, scope: !133)
!145 = distinct !{!145, !129, !146, !147}
!146 = !DILocation(line: 44, column: 7, scope: !130)
!147 = !{!"llvm.loop.mustprogress"}
!148 = !DILocation(line: 45, column: 10, scope: !71)
!149 = !DILocation(line: 46, column: 10, scope: !71)
!150 = distinct !{!150, !115, !151, !147}
!151 = !DILocation(line: 47, column: 5, scope: !73)
!152 = !DILocation(line: 48, column: 38, scope: !81)
!153 = !DILocation(line: 0, scope: !80)
!154 = !DILocation(line: 52, column: 19, scope: !85)
!155 = !DILocation(line: 52, column: 5, scope: !86)
!156 = !DILocation(line: 51, column: 16, scope: !80)
!157 = !DILocation(line: 50, column: 16, scope: !80)
!158 = !DILocation(line: 53, column: 33, scope: !84)
!159 = !DILocation(line: 53, column: 31, scope: !84)
!160 = !DILocation(line: 53, column: 25, scope: !84)
!161 = !DILocation(line: 0, scope: !84)
!162 = !DILocation(line: 54, column: 33, scope: !84)
!163 = !DILocation(line: 54, column: 31, scope: !84)
!164 = !DILocation(line: 54, column: 25, scope: !84)
!165 = !DILocation(line: 57, column: 7, scope: !166)
!166 = distinct !DILexicalBlock(scope: !84, file: !2, line: 57, column: 7)
!167 = !DILocation(line: 58, column: 37, scope: !168)
!168 = distinct !DILexicalBlock(scope: !169, file: !2, line: 57, column: 32)
!169 = distinct !DILexicalBlock(scope: !166, file: !2, line: 57, column: 7)
!170 = !DILocation(line: 58, column: 35, scope: !168)
!171 = !DILocation(line: 58, column: 52, scope: !168)
!172 = !DILocation(line: 58, column: 50, scope: !168)
!173 = !DILocation(line: 58, column: 43, scope: !168)
!174 = !DILocation(line: 58, column: 9, scope: !168)
!175 = !DILocation(line: 58, column: 27, scope: !168)
!176 = !DILocation(line: 59, column: 12, scope: !168)
!177 = !DILocation(line: 60, column: 12, scope: !168)
!178 = !DILocation(line: 57, column: 28, scope: !169)
!179 = !DILocation(line: 57, column: 21, scope: !169)
!180 = distinct !{!180, !165, !181, !147}
!181 = !DILocation(line: 61, column: 7, scope: !166)
!182 = !DILocation(line: 62, column: 10, scope: !84)
!183 = !DILocation(line: 63, column: 10, scope: !84)
!184 = distinct !{!184, !155, !185, !147}
!185 = !DILocation(line: 64, column: 5, scope: !86)
!186 = !DILocation(line: 66, column: 5, scope: !187)
!187 = distinct !DILexicalBlock(scope: !81, file: !2, line: 65, column: 10)
!188 = !DILocation(line: 14, column: 1, scope: !189)
!189 = !DILexicalBlockFile(scope: !39, file: !18, discriminator: 0)
!190 = !DISubprogram(name: "cblas_xerbla", scope: !21, file: !21, line: 602, type: !191, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!191 = !DISubroutineType(types: !192)
!192 = !{null, !45, !193, !193, null}
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
