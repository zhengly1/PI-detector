; ModuleID = 'zgeru.ll'
source_filename = "zgeru.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"./source_geru.h\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !7
@.str.2 = private unnamed_addr constant [23 x i8] c"unrecognized operation\00", align 1, !dbg !12

; Function Attrs: nounwind uwtable
define dso_local void @cblas_zgeru(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, i32 noundef %5, ptr nocapture noundef readonly %6, i32 noundef %7, ptr nocapture noundef %8, i32 noundef %9) local_unnamed_addr #0 !dbg !40 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !50, metadata !DIExpression()), !dbg !101
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !51, metadata !DIExpression()), !dbg !101
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !52, metadata !DIExpression()), !dbg !101
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !53, metadata !DIExpression()), !dbg !101
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !54, metadata !DIExpression()), !dbg !101
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !55, metadata !DIExpression()), !dbg !101
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !56, metadata !DIExpression()), !dbg !101
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !57, metadata !DIExpression()), !dbg !101
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !58, metadata !DIExpression()), !dbg !101
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !59, metadata !DIExpression()), !dbg !101
  tail call void @llvm.dbg.value(metadata i32 0, metadata !64, metadata !DIExpression()), !dbg !102
  %11 = add i32 %0, -103, !dbg !103
  %12 = icmp ult i32 %11, -2, !dbg !103
  %13 = zext i1 %12 to i32, !dbg !103
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !64, metadata !DIExpression()), !dbg !102
  %14 = icmp slt i32 %1, 0, !dbg !105
  %15 = select i1 %14, i32 2, i32 %13, !dbg !107
  tail call void @llvm.dbg.value(metadata i32 %15, metadata !64, metadata !DIExpression()), !dbg !102
  %16 = icmp slt i32 %2, 0, !dbg !108
  %17 = select i1 %16, i32 3, i32 %15, !dbg !107
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !64, metadata !DIExpression()), !dbg !102
  %18 = icmp eq i32 %5, 0, !dbg !110
  %19 = select i1 %18, i32 6, i32 %17, !dbg !107
  tail call void @llvm.dbg.value(metadata i32 %19, metadata !64, metadata !DIExpression()), !dbg !102
  %20 = icmp eq i32 %7, 0, !dbg !112
  %21 = select i1 %20, i32 8, i32 %19, !dbg !107
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !64, metadata !DIExpression()), !dbg !102
  %22 = icmp eq i32 %0, 101, !dbg !114
  br i1 %22, label %23, label %26, !dbg !107

23:                                               ; preds = %10
  %24 = tail call i32 @llvm.smax.i32(i32 %2, i32 1), !dbg !116
  %25 = icmp sgt i32 %24, %9, !dbg !116
  br i1 %25, label %33, label %31, !dbg !119

26:                                               ; preds = %10
  %27 = icmp eq i32 %0, 102, !dbg !120
  %28 = tail call i32 @llvm.smax.i32(i32 %1, i32 1)
  %29 = icmp sgt i32 %28, %9
  %30 = and i1 %27, %29, !dbg !114
  br i1 %30, label %33, label %31, !dbg !114

31:                                               ; preds = %26, %23
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !64, metadata !DIExpression()), !dbg !102
  %32 = icmp eq i32 %21, 0, !dbg !122
  br i1 %32, label %35, label %33, !dbg !107

33:                                               ; preds = %31, %26, %23
  %34 = phi i32 [ %21, %31 ], [ 10, %23 ], [ 10, %26 ]
  tail call void (i32, ptr, ptr, ...) @cblas_xerbla(i32 noundef %34, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #3, !dbg !122
  br label %35, !dbg !122

35:                                               ; preds = %33, %31
  %36 = load double, ptr %3, align 8, !dbg !124, !tbaa !125
  tail call void @llvm.dbg.value(metadata double %36, metadata !66, metadata !DIExpression()), !dbg !129
  %37 = getelementptr inbounds double, ptr %3, i64 1, !dbg !130
  %38 = load double, ptr %37, align 8, !dbg !130, !tbaa !125
  tail call void @llvm.dbg.value(metadata double %38, metadata !68, metadata !DIExpression()), !dbg !129
  br i1 %22, label %39, label %109, !dbg !131

39:                                               ; preds = %35
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !69, metadata !DIExpression()), !dbg !132
  tail call void @llvm.dbg.value(metadata i32 0, metadata !60, metadata !DIExpression()), !dbg !133
  %40 = icmp sgt i32 %1, 0, !dbg !134
  br i1 %40, label %41, label %182, !dbg !135

41:                                               ; preds = %39
  %42 = icmp sgt i32 %5, 0, !dbg !136
  %43 = sub nsw i32 1, %1, !dbg !136
  %44 = mul i32 %43, %5, !dbg !136
  %45 = select i1 %42, i32 0, i32 %44, !dbg !136
  tail call void @llvm.dbg.value(metadata i32 %45, metadata !69, metadata !DIExpression()), !dbg !132
  %46 = icmp sgt i32 %7, 0
  %47 = sub i32 1, %2
  %48 = mul i32 %47, %7
  %49 = select i1 %46, i32 0, i32 %48
  %50 = icmp sgt i32 %2, 0
  %51 = zext i32 %49 to i64, !dbg !135
  %52 = zext i32 %7 to i64, !dbg !135
  %53 = zext i32 %9 to i64, !dbg !135
  %54 = zext i32 %45 to i64, !dbg !135
  %55 = zext i32 %5 to i64, !dbg !135
  %56 = zext nneg i32 %1 to i64, !dbg !134
  %57 = zext nneg i32 %2 to i64
  br label %58, !dbg !135

58:                                               ; preds = %105, %41
  %59 = phi i64 [ %54, %41 ], [ %106, %105 ]
  %60 = phi i64 [ 0, %41 ], [ %107, %105 ]
  tail call void @llvm.dbg.value(metadata i64 %60, metadata !60, metadata !DIExpression()), !dbg !133
  tail call void @llvm.dbg.value(metadata i64 %59, metadata !69, metadata !DIExpression()), !dbg !132
  %61 = trunc i64 %59 to i32, !dbg !137
  %62 = shl nsw i32 %61, 1, !dbg !137
  %63 = sext i32 %62 to i64, !dbg !137
  %64 = getelementptr inbounds double, ptr %4, i64 %63, !dbg !137
  %65 = load double, ptr %64, align 8, !dbg !137, !tbaa !125
  tail call void @llvm.dbg.value(metadata double %65, metadata !72, metadata !DIExpression()), !dbg !138
  %66 = or disjoint i32 %62, 1, !dbg !139
  %67 = sext i32 %66 to i64, !dbg !139
  %68 = getelementptr inbounds double, ptr %4, i64 %67, !dbg !139
  %69 = load double, ptr %68, align 8, !dbg !139, !tbaa !125
  tail call void @llvm.dbg.value(metadata double %69, metadata !76, metadata !DIExpression()), !dbg !138
  %70 = fmul double %36, %65, !dbg !140
  %71 = fmul double %38, %69, !dbg !141
  %handler_result = call double @fSubHandlerDouble(double %70, double %71), !dbg !142
  tail call void @llvm.dbg.value(metadata double %handler_result, metadata !77, metadata !DIExpression()), !dbg !138
  %72 = fmul double %38, %65, !dbg !142
  %73 = fmul double %36, %69, !dbg !143
  %handler_result1 = call double @fAddHandlerDouble(double %72, double %73), !dbg !144
  tail call void @llvm.dbg.value(metadata double %handler_result1, metadata !78, metadata !DIExpression()), !dbg !138
  tail call void @llvm.dbg.value(metadata i32 %49, metadata !79, metadata !DIExpression()), !dbg !138
  tail call void @llvm.dbg.value(metadata i32 0, metadata !63, metadata !DIExpression()), !dbg !133
  br i1 %50, label %74, label %105, !dbg !144

74:                                               ; preds = %58
  %75 = mul i64 %60, %53
  br label %76, !dbg !144

76:                                               ; preds = %76, %74
  %77 = phi i64 [ %51, %74 ], [ %102, %76 ]
  %78 = phi i64 [ 0, %74 ], [ %103, %76 ]
  tail call void @llvm.dbg.value(metadata i64 %78, metadata !63, metadata !DIExpression()), !dbg !133
  tail call void @llvm.dbg.value(metadata i64 %77, metadata !79, metadata !DIExpression()), !dbg !138
  %79 = trunc i64 %77 to i32, !dbg !145
  %80 = shl nsw i32 %79, 1, !dbg !145
  %81 = sext i32 %80 to i64, !dbg !145
  %82 = getelementptr inbounds double, ptr %6, i64 %81, !dbg !145
  %83 = load double, ptr %82, align 8, !dbg !145, !tbaa !125
  tail call void @llvm.dbg.value(metadata double %83, metadata !80, metadata !DIExpression()), !dbg !146
  %84 = or disjoint i32 %80, 1, !dbg !147
  %85 = sext i32 %84 to i64, !dbg !147
  %86 = getelementptr inbounds double, ptr %6, i64 %85, !dbg !147
  %87 = load double, ptr %86, align 8, !dbg !147, !tbaa !125
  tail call void @llvm.dbg.value(metadata double %87, metadata !84, metadata !DIExpression()), !dbg !146
  %88 = fmul double %handler_result, %83, !dbg !148
  %89 = fmul double %handler_result1, %87, !dbg !149
  %handler_result2 = call double @fSubHandlerDouble(double %88, double %89), !dbg !150
  %90 = add i64 %78, %75, !dbg !150
  %91 = trunc i64 %90 to i32, !dbg !150
  %92 = shl nsw i32 %91, 1, !dbg !150
  %93 = sext i32 %92 to i64, !dbg !150
  %94 = getelementptr inbounds double, ptr %8, i64 %93, !dbg !150
  %95 = load double, ptr %94, align 8, !dbg !151, !tbaa !125
  %handler_result3 = call double @fAddHandlerDouble(double %95, double %handler_result2), !dbg !151
  store double %handler_result3, ptr %94, align 8, !dbg !151, !tbaa !125
  %96 = fmul double %handler_result, %87, !dbg !152
  %97 = fmul double %handler_result1, %83, !dbg !153
  %handler_result4 = call double @fAddHandlerDouble(double %97, double %96), !dbg !154
  %98 = or disjoint i32 %92, 1, !dbg !154
  %99 = sext i32 %98 to i64, !dbg !154
  %100 = getelementptr inbounds double, ptr %8, i64 %99, !dbg !154
  %101 = load double, ptr %100, align 8, !dbg !155, !tbaa !125
  %handler_result5 = call double @fAddHandlerDouble(double %handler_result4, double %101), !dbg !155
  store double %handler_result5, ptr %100, align 8, !dbg !155, !tbaa !125
  %102 = add i64 %77, %52, !dbg !156
  tail call void @llvm.dbg.value(metadata i64 %102, metadata !79, metadata !DIExpression()), !dbg !138
  %103 = add nuw nsw i64 %78, 1, !dbg !157
  tail call void @llvm.dbg.value(metadata i64 %103, metadata !63, metadata !DIExpression()), !dbg !133
  %104 = icmp eq i64 %103, %57, !dbg !158
  br i1 %104, label %105, label %76, !dbg !144, !llvm.loop !159

105:                                              ; preds = %76, %58
  %106 = add i64 %59, %55, !dbg !162
  tail call void @llvm.dbg.value(metadata i64 %106, metadata !69, metadata !DIExpression()), !dbg !132
  %107 = add nuw nsw i64 %60, 1, !dbg !163
  tail call void @llvm.dbg.value(metadata i64 %107, metadata !60, metadata !DIExpression()), !dbg !133
  %108 = icmp eq i64 %107, %56, !dbg !134
  br i1 %108, label %182, label %58, !dbg !135, !llvm.loop !164

109:                                              ; preds = %35
  %110 = icmp eq i32 %0, 102, !dbg !166
  br i1 %110, label %111, label %181, !dbg !167

111:                                              ; preds = %109
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !85, metadata !DIExpression()), !dbg !168
  tail call void @llvm.dbg.value(metadata i32 0, metadata !63, metadata !DIExpression()), !dbg !133
  %112 = icmp sgt i32 %2, 0, !dbg !169
  br i1 %112, label %113, label %182, !dbg !170

113:                                              ; preds = %111
  %114 = icmp sgt i32 %7, 0, !dbg !171
  %115 = sub nsw i32 1, %2, !dbg !171
  %116 = mul i32 %115, %7, !dbg !171
  %117 = select i1 %114, i32 0, i32 %116, !dbg !171
  tail call void @llvm.dbg.value(metadata i32 %117, metadata !85, metadata !DIExpression()), !dbg !168
  %118 = icmp sgt i32 %5, 0
  %119 = sub i32 1, %1
  %120 = mul i32 %119, %5
  %121 = select i1 %118, i32 0, i32 %120
  %122 = icmp sgt i32 %1, 0
  %123 = zext i32 %121 to i64, !dbg !170
  %124 = zext i32 %5 to i64, !dbg !170
  %125 = zext i32 %9 to i64, !dbg !170
  %126 = zext i32 %117 to i64, !dbg !170
  %127 = zext i32 %7 to i64, !dbg !170
  %128 = zext nneg i32 %2 to i64, !dbg !169
  %129 = zext nneg i32 %1 to i64
  br label %130, !dbg !170

130:                                              ; preds = %177, %113
  %131 = phi i64 [ %126, %113 ], [ %178, %177 ]
  %132 = phi i64 [ 0, %113 ], [ %179, %177 ]
  tail call void @llvm.dbg.value(metadata i64 %132, metadata !63, metadata !DIExpression()), !dbg !133
  tail call void @llvm.dbg.value(metadata i64 %131, metadata !85, metadata !DIExpression()), !dbg !168
  %133 = trunc i64 %131 to i32, !dbg !172
  %134 = shl nsw i32 %133, 1, !dbg !172
  %135 = sext i32 %134 to i64, !dbg !172
  %136 = getelementptr inbounds double, ptr %6, i64 %135, !dbg !172
  %137 = load double, ptr %136, align 8, !dbg !172, !tbaa !125
  tail call void @llvm.dbg.value(metadata double %137, metadata !88, metadata !DIExpression()), !dbg !173
  %138 = or disjoint i32 %134, 1, !dbg !174
  %139 = sext i32 %138 to i64, !dbg !174
  %140 = getelementptr inbounds double, ptr %6, i64 %139, !dbg !174
  %141 = load double, ptr %140, align 8, !dbg !174, !tbaa !125
  tail call void @llvm.dbg.value(metadata double %141, metadata !92, metadata !DIExpression()), !dbg !173
  %142 = fmul double %36, %137, !dbg !175
  %143 = fmul double %38, %141, !dbg !176
  %handler_result6 = call double @fSubHandlerDouble(double %142, double %143), !dbg !177
  tail call void @llvm.dbg.value(metadata double %handler_result6, metadata !93, metadata !DIExpression()), !dbg !173
  %144 = fmul double %38, %137, !dbg !177
  %145 = fmul double %36, %141, !dbg !178
  %handler_result7 = call double @fAddHandlerDouble(double %144, double %145), !dbg !179
  tail call void @llvm.dbg.value(metadata double %handler_result7, metadata !94, metadata !DIExpression()), !dbg !173
  tail call void @llvm.dbg.value(metadata i32 %121, metadata !95, metadata !DIExpression()), !dbg !173
  tail call void @llvm.dbg.value(metadata i32 0, metadata !60, metadata !DIExpression()), !dbg !133
  br i1 %122, label %146, label %177, !dbg !179

146:                                              ; preds = %130
  %147 = mul i64 %132, %125
  br label %148, !dbg !179

148:                                              ; preds = %148, %146
  %149 = phi i64 [ %123, %146 ], [ %174, %148 ]
  %150 = phi i64 [ 0, %146 ], [ %175, %148 ]
  tail call void @llvm.dbg.value(metadata i64 %150, metadata !60, metadata !DIExpression()), !dbg !133
  tail call void @llvm.dbg.value(metadata i64 %149, metadata !95, metadata !DIExpression()), !dbg !173
  %151 = trunc i64 %149 to i32, !dbg !180
  %152 = shl nsw i32 %151, 1, !dbg !180
  %153 = sext i32 %152 to i64, !dbg !180
  %154 = getelementptr inbounds double, ptr %4, i64 %153, !dbg !180
  %155 = load double, ptr %154, align 8, !dbg !180, !tbaa !125
  tail call void @llvm.dbg.value(metadata double %155, metadata !96, metadata !DIExpression()), !dbg !181
  %156 = or disjoint i32 %152, 1, !dbg !182
  %157 = sext i32 %156 to i64, !dbg !182
  %158 = getelementptr inbounds double, ptr %4, i64 %157, !dbg !182
  %159 = load double, ptr %158, align 8, !dbg !182, !tbaa !125
  tail call void @llvm.dbg.value(metadata double %159, metadata !100, metadata !DIExpression()), !dbg !181
  %160 = fmul double %handler_result6, %155, !dbg !183
  %161 = fmul double %handler_result7, %159, !dbg !184
  %handler_result8 = call double @fSubHandlerDouble(double %160, double %161), !dbg !185
  %162 = add i64 %150, %147, !dbg !185
  %163 = trunc i64 %162 to i32, !dbg !185
  %164 = shl nsw i32 %163, 1, !dbg !185
  %165 = sext i32 %164 to i64, !dbg !185
  %166 = getelementptr inbounds double, ptr %8, i64 %165, !dbg !185
  %167 = load double, ptr %166, align 8, !dbg !186, !tbaa !125
  %handler_result9 = call double @fAddHandlerDouble(double %167, double %handler_result8), !dbg !186
  store double %handler_result9, ptr %166, align 8, !dbg !186, !tbaa !125
  %168 = fmul double %handler_result6, %159, !dbg !187
  %169 = fmul double %handler_result7, %155, !dbg !188
  %handler_result10 = call double @fAddHandlerDouble(double %169, double %168), !dbg !189
  %170 = or disjoint i32 %164, 1, !dbg !189
  %171 = sext i32 %170 to i64, !dbg !189
  %172 = getelementptr inbounds double, ptr %8, i64 %171, !dbg !189
  %173 = load double, ptr %172, align 8, !dbg !190, !tbaa !125
  %handler_result11 = call double @fAddHandlerDouble(double %handler_result10, double %173), !dbg !190
  store double %handler_result11, ptr %172, align 8, !dbg !190, !tbaa !125
  %174 = add i64 %149, %124, !dbg !191
  tail call void @llvm.dbg.value(metadata i64 %174, metadata !95, metadata !DIExpression()), !dbg !173
  %175 = add nuw nsw i64 %150, 1, !dbg !192
  tail call void @llvm.dbg.value(metadata i64 %175, metadata !60, metadata !DIExpression()), !dbg !133
  %176 = icmp eq i64 %175, %129, !dbg !193
  br i1 %176, label %177, label %148, !dbg !179, !llvm.loop !194

177:                                              ; preds = %148, %130
  %178 = add i64 %131, %127, !dbg !196
  tail call void @llvm.dbg.value(metadata i64 %178, metadata !85, metadata !DIExpression()), !dbg !168
  %179 = add nuw nsw i64 %132, 1, !dbg !197
  tail call void @llvm.dbg.value(metadata i64 %179, metadata !63, metadata !DIExpression()), !dbg !133
  %180 = icmp eq i64 %179, %128, !dbg !169
  br i1 %180, label %182, label %130, !dbg !170, !llvm.loop !198

181:                                              ; preds = %109
  tail call void (i32, ptr, ptr, ...) @cblas_xerbla(i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #3, !dbg !200
  br label %182

182:                                              ; preds = %181, %177, %111, %105, %39
  ret void, !dbg !202
}

declare !dbg !204 void @cblas_xerbla(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #2

declare double @fSubHandlerDouble(double, double)

declare double @fAddHandlerDouble(double, double)

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!17}
!llvm.module.flags = !{!32, !33, !34, !35, !36, !37, !38}
!llvm.ident = !{!39}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 23, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "./source_geru.h", directory: "/PI-detector/external/gsl/gsl-2.5/cblas", checksumkind: CSK_MD5, checksum: "258236d824c52fc1faf0a2b82776f19e")
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
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 64, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 23)
!17 = distinct !DICompileUnit(language: DW_LANG_C11, file: !18, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !19, retainedTypes: !26, globals: !31, splitDebugInlining: false, nameTableKind: None)
!18 = !DIFile(filename: "zgeru.c", directory: "/PI-detector/external/gsl/gsl-2.5/cblas", checksumkind: CSK_MD5, checksum: "f64dc38d141db22ccdb3153dc7b77e58")
!19 = !{!20}
!20 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "CBLAS_ORDER", file: !21, line: 46, baseType: !22, size: 32, elements: !23)
!21 = !DIFile(filename: "../gsl/gsl_cblas.h", directory: "/PI-detector/external/gsl/gsl-2.5/cblas", checksumkind: CSK_MD5, checksum: "03ac5115536daff0db5f3e2b63839634")
!22 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!23 = !{!24, !25}
!24 = !DIEnumerator(name: "CblasRowMajor", value: 101)
!25 = !DIEnumerator(name: "CblasColMajor", value: 102)
!26 = !{!27, !30}
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !29)
!29 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!31 = !{!0, !7, !12}
!32 = !{i32 7, !"Dwarf Version", i32 5}
!33 = !{i32 2, !"Debug Info Version", i32 3}
!34 = !{i32 1, !"wchar_size", i32 4}
!35 = !{i32 8, !"PIC Level", i32 2}
!36 = !{i32 7, !"PIE Level", i32 2}
!37 = !{i32 7, !"uwtable", i32 2}
!38 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!39 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!40 = distinct !DISubprogram(name: "cblas_zgeru", scope: !18, file: !18, line: 7, type: !41, scopeLine: 10, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !49)
!41 = !DISubroutineType(types: !42)
!42 = !{null, !43, !44, !44, !46, !46, !44, !46, !44, !48, !44}
!43 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!44 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!45 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!49 = !{!50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !63, !64, !66, !68, !69, !72, !76, !77, !78, !79, !80, !84, !85, !88, !92, !93, !94, !95, !96, !100}
!50 = !DILocalVariable(name: "order", arg: 1, scope: !40, file: !18, line: 7, type: !43)
!51 = !DILocalVariable(name: "M", arg: 2, scope: !40, file: !18, line: 7, type: !44)
!52 = !DILocalVariable(name: "N", arg: 3, scope: !40, file: !18, line: 7, type: !44)
!53 = !DILocalVariable(name: "alpha", arg: 4, scope: !40, file: !18, line: 8, type: !46)
!54 = !DILocalVariable(name: "X", arg: 5, scope: !40, file: !18, line: 8, type: !46)
!55 = !DILocalVariable(name: "incX", arg: 6, scope: !40, file: !18, line: 8, type: !44)
!56 = !DILocalVariable(name: "Y", arg: 7, scope: !40, file: !18, line: 8, type: !46)
!57 = !DILocalVariable(name: "incY", arg: 8, scope: !40, file: !18, line: 9, type: !44)
!58 = !DILocalVariable(name: "A", arg: 9, scope: !40, file: !18, line: 9, type: !48)
!59 = !DILocalVariable(name: "lda", arg: 10, scope: !40, file: !18, line: 9, type: !44)
!60 = !DILocalVariable(name: "i", scope: !61, file: !2, line: 21, type: !45)
!61 = distinct !DILexicalBlock(scope: !62, file: !2, line: 20, column: 1)
!62 = !DILexicalBlockFile(scope: !40, file: !2, discriminator: 0)
!63 = !DILocalVariable(name: "j", scope: !61, file: !2, line: 21, type: !45)
!64 = !DILocalVariable(name: "pos", scope: !65, file: !2, line: 23, type: !45)
!65 = distinct !DILexicalBlock(scope: !61, file: !2, line: 23, column: 3)
!66 = !DILocalVariable(name: "alpha_real", scope: !67, file: !2, line: 26, type: !28)
!67 = distinct !DILexicalBlock(scope: !61, file: !2, line: 25, column: 3)
!68 = !DILocalVariable(name: "alpha_imag", scope: !67, file: !2, line: 27, type: !28)
!69 = !DILocalVariable(name: "ix", scope: !70, file: !2, line: 30, type: !45)
!70 = distinct !DILexicalBlock(scope: !71, file: !2, line: 29, column: 33)
!71 = distinct !DILexicalBlock(scope: !67, file: !2, line: 29, column: 9)
!72 = !DILocalVariable(name: "X_real", scope: !73, file: !2, line: 32, type: !28)
!73 = distinct !DILexicalBlock(scope: !74, file: !2, line: 31, column: 31)
!74 = distinct !DILexicalBlock(scope: !75, file: !2, line: 31, column: 7)
!75 = distinct !DILexicalBlock(scope: !70, file: !2, line: 31, column: 7)
!76 = !DILocalVariable(name: "X_imag", scope: !73, file: !2, line: 33, type: !28)
!77 = !DILocalVariable(name: "tmp_real", scope: !73, file: !2, line: 34, type: !28)
!78 = !DILocalVariable(name: "tmp_imag", scope: !73, file: !2, line: 35, type: !28)
!79 = !DILocalVariable(name: "jy", scope: !73, file: !2, line: 36, type: !45)
!80 = !DILocalVariable(name: "Y_real", scope: !81, file: !2, line: 38, type: !28)
!81 = distinct !DILexicalBlock(scope: !82, file: !2, line: 37, column: 33)
!82 = distinct !DILexicalBlock(scope: !83, file: !2, line: 37, column: 9)
!83 = distinct !DILexicalBlock(scope: !73, file: !2, line: 37, column: 9)
!84 = !DILocalVariable(name: "Y_imag", scope: !81, file: !2, line: 39, type: !28)
!85 = !DILocalVariable(name: "jy", scope: !86, file: !2, line: 47, type: !45)
!86 = distinct !DILexicalBlock(scope: !87, file: !2, line: 46, column: 40)
!87 = distinct !DILexicalBlock(scope: !71, file: !2, line: 46, column: 16)
!88 = !DILocalVariable(name: "Y_real", scope: !89, file: !2, line: 49, type: !28)
!89 = distinct !DILexicalBlock(scope: !90, file: !2, line: 48, column: 31)
!90 = distinct !DILexicalBlock(scope: !91, file: !2, line: 48, column: 7)
!91 = distinct !DILexicalBlock(scope: !86, file: !2, line: 48, column: 7)
!92 = !DILocalVariable(name: "Y_imag", scope: !89, file: !2, line: 50, type: !28)
!93 = !DILocalVariable(name: "tmp_real", scope: !89, file: !2, line: 51, type: !28)
!94 = !DILocalVariable(name: "tmp_imag", scope: !89, file: !2, line: 52, type: !28)
!95 = !DILocalVariable(name: "ix", scope: !89, file: !2, line: 53, type: !45)
!96 = !DILocalVariable(name: "X_real", scope: !97, file: !2, line: 55, type: !28)
!97 = distinct !DILexicalBlock(scope: !98, file: !2, line: 54, column: 33)
!98 = distinct !DILexicalBlock(scope: !99, file: !2, line: 54, column: 9)
!99 = distinct !DILexicalBlock(scope: !89, file: !2, line: 54, column: 9)
!100 = !DILocalVariable(name: "X_imag", scope: !97, file: !2, line: 56, type: !28)
!101 = !DILocation(line: 0, scope: !40)
!102 = !DILocation(line: 0, scope: !65)
!103 = !DILocation(line: 23, column: 3, scope: !104)
!104 = distinct !DILexicalBlock(scope: !65, file: !2, line: 23, column: 3)
!105 = !DILocation(line: 23, column: 3, scope: !106)
!106 = distinct !DILexicalBlock(scope: !65, file: !2, line: 23, column: 3)
!107 = !DILocation(line: 23, column: 3, scope: !65)
!108 = !DILocation(line: 23, column: 3, scope: !109)
!109 = distinct !DILexicalBlock(scope: !65, file: !2, line: 23, column: 3)
!110 = !DILocation(line: 23, column: 3, scope: !111)
!111 = distinct !DILexicalBlock(scope: !65, file: !2, line: 23, column: 3)
!112 = !DILocation(line: 23, column: 3, scope: !113)
!113 = distinct !DILexicalBlock(scope: !65, file: !2, line: 23, column: 3)
!114 = !DILocation(line: 23, column: 3, scope: !115)
!115 = distinct !DILexicalBlock(scope: !65, file: !2, line: 23, column: 3)
!116 = !DILocation(line: 23, column: 3, scope: !117)
!117 = distinct !DILexicalBlock(scope: !118, file: !2, line: 23, column: 3)
!118 = distinct !DILexicalBlock(scope: !115, file: !2, line: 23, column: 3)
!119 = !DILocation(line: 23, column: 3, scope: !118)
!120 = !DILocation(line: 23, column: 3, scope: !121)
!121 = distinct !DILexicalBlock(scope: !115, file: !2, line: 23, column: 3)
!122 = !DILocation(line: 23, column: 3, scope: !123)
!123 = distinct !DILexicalBlock(scope: !65, file: !2, line: 23, column: 3)
!124 = !DILocation(line: 26, column: 29, scope: !67)
!125 = !{!126, !126, i64 0}
!126 = !{!"double", !127, i64 0}
!127 = !{!"omnipotent char", !128, i64 0}
!128 = !{!"Simple C/C++ TBAA"}
!129 = !DILocation(line: 0, scope: !67)
!130 = !DILocation(line: 27, column: 29, scope: !67)
!131 = !DILocation(line: 29, column: 9, scope: !67)
!132 = !DILocation(line: 0, scope: !70)
!133 = !DILocation(line: 0, scope: !61)
!134 = !DILocation(line: 31, column: 21, scope: !74)
!135 = !DILocation(line: 31, column: 7, scope: !75)
!136 = !DILocation(line: 30, column: 18, scope: !70)
!137 = !DILocation(line: 32, column: 29, scope: !73)
!138 = !DILocation(line: 0, scope: !73)
!139 = !DILocation(line: 33, column: 29, scope: !73)
!140 = !DILocation(line: 34, column: 42, scope: !73)
!141 = !DILocation(line: 34, column: 64, scope: !73)
!142 = !DILocation(line: 35, column: 42, scope: !73)
!143 = !DILocation(line: 35, column: 64, scope: !73)
!144 = !DILocation(line: 37, column: 9, scope: !83)
!145 = !DILocation(line: 38, column: 31, scope: !81)
!146 = !DILocation(line: 0, scope: !81)
!147 = !DILocation(line: 39, column: 31, scope: !81)
!148 = !DILocation(line: 40, column: 42, scope: !81)
!149 = !DILocation(line: 40, column: 62, scope: !81)
!150 = !DILocation(line: 40, column: 11, scope: !81)
!151 = !DILocation(line: 40, column: 32, scope: !81)
!152 = !DILocation(line: 41, column: 42, scope: !81)
!153 = !DILocation(line: 41, column: 62, scope: !81)
!154 = !DILocation(line: 41, column: 11, scope: !81)
!155 = !DILocation(line: 41, column: 32, scope: !81)
!156 = !DILocation(line: 42, column: 14, scope: !81)
!157 = !DILocation(line: 37, column: 29, scope: !82)
!158 = !DILocation(line: 37, column: 23, scope: !82)
!159 = distinct !{!159, !144, !160, !161}
!160 = !DILocation(line: 43, column: 9, scope: !83)
!161 = !{!"llvm.loop.mustprogress"}
!162 = !DILocation(line: 44, column: 12, scope: !73)
!163 = !DILocation(line: 31, column: 27, scope: !74)
!164 = distinct !{!164, !135, !165, !161}
!165 = !DILocation(line: 45, column: 7, scope: !75)
!166 = !DILocation(line: 46, column: 22, scope: !87)
!167 = !DILocation(line: 46, column: 16, scope: !71)
!168 = !DILocation(line: 0, scope: !86)
!169 = !DILocation(line: 48, column: 21, scope: !90)
!170 = !DILocation(line: 48, column: 7, scope: !91)
!171 = !DILocation(line: 47, column: 18, scope: !86)
!172 = !DILocation(line: 49, column: 29, scope: !89)
!173 = !DILocation(line: 0, scope: !89)
!174 = !DILocation(line: 50, column: 29, scope: !89)
!175 = !DILocation(line: 51, column: 42, scope: !89)
!176 = !DILocation(line: 51, column: 64, scope: !89)
!177 = !DILocation(line: 52, column: 42, scope: !89)
!178 = !DILocation(line: 52, column: 64, scope: !89)
!179 = !DILocation(line: 54, column: 9, scope: !99)
!180 = !DILocation(line: 55, column: 31, scope: !97)
!181 = !DILocation(line: 0, scope: !97)
!182 = !DILocation(line: 56, column: 31, scope: !97)
!183 = !DILocation(line: 57, column: 42, scope: !97)
!184 = !DILocation(line: 57, column: 62, scope: !97)
!185 = !DILocation(line: 57, column: 11, scope: !97)
!186 = !DILocation(line: 57, column: 32, scope: !97)
!187 = !DILocation(line: 58, column: 42, scope: !97)
!188 = !DILocation(line: 58, column: 62, scope: !97)
!189 = !DILocation(line: 58, column: 11, scope: !97)
!190 = !DILocation(line: 58, column: 32, scope: !97)
!191 = !DILocation(line: 59, column: 14, scope: !97)
!192 = !DILocation(line: 54, column: 29, scope: !98)
!193 = !DILocation(line: 54, column: 23, scope: !98)
!194 = distinct !{!194, !179, !195, !161}
!195 = !DILocation(line: 60, column: 9, scope: !99)
!196 = !DILocation(line: 61, column: 12, scope: !89)
!197 = !DILocation(line: 48, column: 27, scope: !90)
!198 = distinct !{!198, !170, !199, !161}
!199 = !DILocation(line: 62, column: 7, scope: !91)
!200 = !DILocation(line: 64, column: 7, scope: !201)
!201 = distinct !DILexicalBlock(scope: !87, file: !2, line: 63, column: 12)
!202 = !DILocation(line: 14, column: 1, scope: !203)
!203 = !DILexicalBlockFile(scope: !40, file: !18, discriminator: 0)
!204 = !DISubprogram(name: "cblas_xerbla", scope: !21, file: !21, line: 602, type: !205, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!205 = !DISubroutineType(types: !206)
!206 = !{null, !45, !207, !207, null}
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
