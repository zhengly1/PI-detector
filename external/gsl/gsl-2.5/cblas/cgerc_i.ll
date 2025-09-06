; ModuleID = 'cgerc.ll'
source_filename = "cgerc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"./source_gerc.h\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !7
@.str.2 = private unnamed_addr constant [23 x i8] c"unrecognized operation\00", align 1, !dbg !12

; Function Attrs: nounwind uwtable
define dso_local void @cblas_cgerc(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, i32 noundef %5, ptr nocapture noundef readonly %6, i32 noundef %7, ptr nocapture noundef %8, i32 noundef %9) local_unnamed_addr #0 !dbg !40 {
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
  %36 = load float, ptr %3, align 4, !dbg !124, !tbaa !125
  tail call void @llvm.dbg.value(metadata float %36, metadata !66, metadata !DIExpression()), !dbg !129
  %37 = getelementptr inbounds float, ptr %3, i64 1, !dbg !130
  %38 = load float, ptr %37, align 4, !dbg !130, !tbaa !125
  tail call void @llvm.dbg.value(metadata float %38, metadata !68, metadata !DIExpression()), !dbg !129
  br i1 %22, label %39, label %133, !dbg !131

39:                                               ; preds = %35
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !69, metadata !DIExpression()), !dbg !132
  tail call void @llvm.dbg.value(metadata i32 0, metadata !60, metadata !DIExpression()), !dbg !133
  %40 = icmp sgt i32 %1, 0, !dbg !134
  br i1 %40, label %41, label %230, !dbg !135

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

58:                                               ; preds = %129, %41
  %59 = phi i64 [ %54, %41 ], [ %130, %129 ]
  %60 = phi i64 [ 0, %41 ], [ %131, %129 ]
  tail call void @llvm.dbg.value(metadata i64 %60, metadata !60, metadata !DIExpression()), !dbg !133
  tail call void @llvm.dbg.value(metadata i64 %59, metadata !69, metadata !DIExpression()), !dbg !132
  %61 = trunc i64 %59 to i32, !dbg !137
  %62 = shl nsw i32 %61, 1, !dbg !137
  %63 = sext i32 %62 to i64, !dbg !137
  %64 = getelementptr inbounds float, ptr %4, i64 %63, !dbg !137
  %65 = load float, ptr %64, align 4, !dbg !137, !tbaa !125
  tail call void @llvm.dbg.value(metadata float %65, metadata !72, metadata !DIExpression()), !dbg !138
  %66 = or disjoint i32 %62, 1, !dbg !139
  %67 = sext i32 %66 to i64, !dbg !139
  %68 = getelementptr inbounds float, ptr %4, i64 %67, !dbg !139
  %69 = load float, ptr %68, align 4, !dbg !139, !tbaa !125
  tail call void @llvm.dbg.value(metadata float %69, metadata !76, metadata !DIExpression()), !dbg !138
  %70 = fmul float %36, %65, !dbg !140
  %71 = fmul float %38, %69, !dbg !141
  %72 = fpext float %70 to double, !dbg !142
  %73 = fpext float %71 to double, !dbg !142
  %74 = fptrunc double %72 to float, !dbg !142
  %75 = fptrunc double %73 to float, !dbg !142
  %handler_result = call float @fSubHandlerFloat(float %74, float %75), !dbg !142
  tail call void @llvm.dbg.value(metadata float %handler_result, metadata !77, metadata !DIExpression()), !dbg !138
  %76 = fmul float %38, %65, !dbg !142
  %77 = fmul float %36, %69, !dbg !143
  %78 = fpext float %76 to double, !dbg !144
  %79 = fpext float %77 to double, !dbg !144
  %80 = fptrunc double %78 to float, !dbg !144
  %81 = fptrunc double %79 to float, !dbg !144
  %handler_result1 = call float @fAddHandlerFloat(float %80, float %81), !dbg !144
  tail call void @llvm.dbg.value(metadata float %handler_result1, metadata !78, metadata !DIExpression()), !dbg !138
  tail call void @llvm.dbg.value(metadata i32 %49, metadata !79, metadata !DIExpression()), !dbg !138
  tail call void @llvm.dbg.value(metadata i32 0, metadata !63, metadata !DIExpression()), !dbg !133
  br i1 %50, label %82, label %129, !dbg !144

82:                                               ; preds = %58
  %83 = mul i64 %60, %53
  br label %84, !dbg !144

84:                                               ; preds = %84, %82
  %85 = phi i64 [ %51, %82 ], [ %126, %84 ]
  %86 = phi i64 [ 0, %82 ], [ %127, %84 ]
  tail call void @llvm.dbg.value(metadata i64 %86, metadata !63, metadata !DIExpression()), !dbg !133
  tail call void @llvm.dbg.value(metadata i64 %85, metadata !79, metadata !DIExpression()), !dbg !138
  %87 = trunc i64 %85 to i32, !dbg !145
  %88 = shl nsw i32 %87, 1, !dbg !145
  %89 = sext i32 %88 to i64, !dbg !145
  %90 = getelementptr inbounds float, ptr %6, i64 %89, !dbg !145
  %91 = load float, ptr %90, align 4, !dbg !145, !tbaa !125
  tail call void @llvm.dbg.value(metadata float %91, metadata !80, metadata !DIExpression()), !dbg !146
  %92 = or disjoint i32 %88, 1, !dbg !147
  %93 = sext i32 %92 to i64, !dbg !147
  %94 = getelementptr inbounds float, ptr %6, i64 %93, !dbg !147
  %95 = load float, ptr %94, align 4, !dbg !147, !tbaa !125
  tail call void @llvm.dbg.value(metadata float poison, metadata !84, metadata !DIExpression()), !dbg !146
  %96 = fmul float %handler_result, %91, !dbg !148
  %97 = fmul float %handler_result1, %95, !dbg !149
  %98 = fpext float %96 to double, !dbg !150
  %99 = fpext float %97 to double, !dbg !150
  %100 = fptrunc double %98 to float, !dbg !150
  %101 = fptrunc double %99 to float, !dbg !150
  %handler_result2 = call float @fAddHandlerFloat(float %100, float %101), !dbg !150
  %102 = add i64 %86, %83, !dbg !150
  %103 = trunc i64 %102 to i32, !dbg !150
  %104 = shl nsw i32 %103, 1, !dbg !150
  %105 = sext i32 %104 to i64, !dbg !150
  %106 = getelementptr inbounds float, ptr %8, i64 %105, !dbg !150
  %107 = load float, ptr %106, align 4, !dbg !151, !tbaa !125
  %108 = fpext float %107 to double, !dbg !151
  %109 = fpext float %handler_result2 to double, !dbg !151
  %110 = fptrunc double %108 to float, !dbg !151
  %111 = fptrunc double %109 to float, !dbg !151
  %handler_result3 = call float @fAddHandlerFloat(float %110, float %111), !dbg !151
  store float %handler_result3, ptr %106, align 4, !dbg !151, !tbaa !125
  %112 = fmul float %handler_result1, %91, !dbg !152
  %113 = fmul float %handler_result, %95, !dbg !153
  %114 = fpext float %112 to double, !dbg !154
  %115 = fpext float %113 to double, !dbg !154
  %116 = fptrunc double %114 to float, !dbg !154
  %117 = fptrunc double %115 to float, !dbg !154
  %handler_result4 = call float @fSubHandlerFloat(float %116, float %117), !dbg !154
  %118 = or disjoint i32 %104, 1, !dbg !154
  %119 = sext i32 %118 to i64, !dbg !154
  %120 = getelementptr inbounds float, ptr %8, i64 %119, !dbg !154
  %121 = load float, ptr %120, align 4, !dbg !155, !tbaa !125
  %122 = fpext float %handler_result4 to double, !dbg !155
  %123 = fpext float %121 to double, !dbg !155
  %124 = fptrunc double %122 to float, !dbg !155
  %125 = fptrunc double %123 to float, !dbg !155
  %handler_result5 = call float @fAddHandlerFloat(float %124, float %125), !dbg !155
  store float %handler_result5, ptr %120, align 4, !dbg !155, !tbaa !125
  %126 = add i64 %85, %52, !dbg !156
  tail call void @llvm.dbg.value(metadata i64 %126, metadata !79, metadata !DIExpression()), !dbg !138
  %127 = add nuw nsw i64 %86, 1, !dbg !157
  tail call void @llvm.dbg.value(metadata i64 %127, metadata !63, metadata !DIExpression()), !dbg !133
  %128 = icmp eq i64 %127, %57, !dbg !158
  br i1 %128, label %129, label %84, !dbg !144, !llvm.loop !159

129:                                              ; preds = %84, %58
  %130 = add i64 %59, %55, !dbg !162
  tail call void @llvm.dbg.value(metadata i64 %130, metadata !69, metadata !DIExpression()), !dbg !132
  %131 = add nuw nsw i64 %60, 1, !dbg !163
  tail call void @llvm.dbg.value(metadata i64 %131, metadata !60, metadata !DIExpression()), !dbg !133
  %132 = icmp eq i64 %131, %56, !dbg !134
  br i1 %132, label %230, label %58, !dbg !135, !llvm.loop !164

133:                                              ; preds = %35
  %134 = icmp eq i32 %0, 102, !dbg !166
  br i1 %134, label %135, label %229, !dbg !167

135:                                              ; preds = %133
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !85, metadata !DIExpression()), !dbg !168
  tail call void @llvm.dbg.value(metadata i32 0, metadata !63, metadata !DIExpression()), !dbg !133
  %136 = icmp sgt i32 %2, 0, !dbg !169
  br i1 %136, label %137, label %230, !dbg !170

137:                                              ; preds = %135
  %138 = icmp sgt i32 %7, 0, !dbg !171
  %139 = sub nsw i32 1, %2, !dbg !171
  %140 = mul i32 %139, %7, !dbg !171
  %141 = select i1 %138, i32 0, i32 %140, !dbg !171
  tail call void @llvm.dbg.value(metadata i32 %141, metadata !85, metadata !DIExpression()), !dbg !168
  %142 = icmp sgt i32 %5, 0
  %143 = sub i32 1, %1
  %144 = mul i32 %143, %5
  %145 = select i1 %142, i32 0, i32 %144
  %146 = icmp sgt i32 %1, 0
  %147 = zext i32 %145 to i64, !dbg !170
  %148 = zext i32 %5 to i64, !dbg !170
  %149 = zext i32 %9 to i64, !dbg !170
  %150 = zext i32 %141 to i64, !dbg !170
  %151 = zext i32 %7 to i64, !dbg !170
  %152 = zext nneg i32 %2 to i64, !dbg !169
  %153 = zext nneg i32 %1 to i64
  br label %154, !dbg !170

154:                                              ; preds = %225, %137
  %155 = phi i64 [ %150, %137 ], [ %226, %225 ]
  %156 = phi i64 [ 0, %137 ], [ %227, %225 ]
  tail call void @llvm.dbg.value(metadata i64 %156, metadata !63, metadata !DIExpression()), !dbg !133
  tail call void @llvm.dbg.value(metadata i64 %155, metadata !85, metadata !DIExpression()), !dbg !168
  %157 = trunc i64 %155 to i32, !dbg !172
  %158 = shl nsw i32 %157, 1, !dbg !172
  %159 = sext i32 %158 to i64, !dbg !172
  %160 = getelementptr inbounds float, ptr %6, i64 %159, !dbg !172
  %161 = load float, ptr %160, align 4, !dbg !172, !tbaa !125
  tail call void @llvm.dbg.value(metadata float %161, metadata !88, metadata !DIExpression()), !dbg !173
  %162 = or disjoint i32 %158, 1, !dbg !174
  %163 = sext i32 %162 to i64, !dbg !174
  %164 = getelementptr inbounds float, ptr %6, i64 %163, !dbg !174
  %165 = load float, ptr %164, align 4, !dbg !174, !tbaa !125
  tail call void @llvm.dbg.value(metadata float poison, metadata !92, metadata !DIExpression()), !dbg !173
  %166 = fmul float %36, %161, !dbg !175
  %167 = fmul float %38, %165, !dbg !176
  %168 = fpext float %166 to double, !dbg !177
  %169 = fpext float %167 to double, !dbg !177
  %170 = fptrunc double %168 to float, !dbg !177
  %171 = fptrunc double %169 to float, !dbg !177
  %handler_result6 = call float @fAddHandlerFloat(float %170, float %171), !dbg !177
  tail call void @llvm.dbg.value(metadata float %handler_result6, metadata !93, metadata !DIExpression()), !dbg !173
  %172 = fmul float %38, %161, !dbg !177
  %173 = fmul float %36, %165, !dbg !178
  %174 = fpext float %172 to double, !dbg !179
  %175 = fpext float %173 to double, !dbg !179
  %176 = fptrunc double %174 to float, !dbg !179
  %177 = fptrunc double %175 to float, !dbg !179
  %handler_result7 = call float @fSubHandlerFloat(float %176, float %177), !dbg !179
  tail call void @llvm.dbg.value(metadata float %handler_result7, metadata !94, metadata !DIExpression()), !dbg !173
  tail call void @llvm.dbg.value(metadata i32 %145, metadata !95, metadata !DIExpression()), !dbg !173
  tail call void @llvm.dbg.value(metadata i32 0, metadata !60, metadata !DIExpression()), !dbg !133
  br i1 %146, label %178, label %225, !dbg !179

178:                                              ; preds = %154
  %179 = mul i64 %156, %149
  br label %180, !dbg !179

180:                                              ; preds = %180, %178
  %181 = phi i64 [ %147, %178 ], [ %222, %180 ]
  %182 = phi i64 [ 0, %178 ], [ %223, %180 ]
  tail call void @llvm.dbg.value(metadata i64 %182, metadata !60, metadata !DIExpression()), !dbg !133
  tail call void @llvm.dbg.value(metadata i64 %181, metadata !95, metadata !DIExpression()), !dbg !173
  %183 = trunc i64 %181 to i32, !dbg !180
  %184 = shl nsw i32 %183, 1, !dbg !180
  %185 = sext i32 %184 to i64, !dbg !180
  %186 = getelementptr inbounds float, ptr %4, i64 %185, !dbg !180
  %187 = load float, ptr %186, align 4, !dbg !180, !tbaa !125
  tail call void @llvm.dbg.value(metadata float %187, metadata !96, metadata !DIExpression()), !dbg !181
  %188 = or disjoint i32 %184, 1, !dbg !182
  %189 = sext i32 %188 to i64, !dbg !182
  %190 = getelementptr inbounds float, ptr %4, i64 %189, !dbg !182
  %191 = load float, ptr %190, align 4, !dbg !182, !tbaa !125
  tail call void @llvm.dbg.value(metadata float %191, metadata !100, metadata !DIExpression()), !dbg !181
  %192 = fmul float %handler_result6, %187, !dbg !183
  %193 = fmul float %handler_result7, %191, !dbg !184
  %194 = fpext float %192 to double, !dbg !185
  %195 = fpext float %193 to double, !dbg !185
  %196 = fptrunc double %194 to float, !dbg !185
  %197 = fptrunc double %195 to float, !dbg !185
  %handler_result8 = call float @fSubHandlerFloat(float %196, float %197), !dbg !185
  %198 = add i64 %182, %179, !dbg !185
  %199 = trunc i64 %198 to i32, !dbg !185
  %200 = shl nsw i32 %199, 1, !dbg !185
  %201 = sext i32 %200 to i64, !dbg !185
  %202 = getelementptr inbounds float, ptr %8, i64 %201, !dbg !185
  %203 = load float, ptr %202, align 4, !dbg !186, !tbaa !125
  %204 = fpext float %203 to double, !dbg !186
  %205 = fpext float %handler_result8 to double, !dbg !186
  %206 = fptrunc double %204 to float, !dbg !186
  %207 = fptrunc double %205 to float, !dbg !186
  %handler_result9 = call float @fAddHandlerFloat(float %206, float %207), !dbg !186
  store float %handler_result9, ptr %202, align 4, !dbg !186, !tbaa !125
  %208 = fmul float %handler_result6, %191, !dbg !187
  %209 = fmul float %handler_result7, %187, !dbg !188
  %210 = fpext float %209 to double, !dbg !189
  %211 = fpext float %208 to double, !dbg !189
  %212 = fptrunc double %210 to float, !dbg !189
  %213 = fptrunc double %211 to float, !dbg !189
  %handler_result10 = call float @fAddHandlerFloat(float %212, float %213), !dbg !189
  %214 = or disjoint i32 %200, 1, !dbg !189
  %215 = sext i32 %214 to i64, !dbg !189
  %216 = getelementptr inbounds float, ptr %8, i64 %215, !dbg !189
  %217 = load float, ptr %216, align 4, !dbg !190, !tbaa !125
  %218 = fpext float %handler_result10 to double, !dbg !190
  %219 = fpext float %217 to double, !dbg !190
  %220 = fptrunc double %218 to float, !dbg !190
  %221 = fptrunc double %219 to float, !dbg !190
  %handler_result11 = call float @fAddHandlerFloat(float %220, float %221), !dbg !190
  store float %handler_result11, ptr %216, align 4, !dbg !190, !tbaa !125
  %222 = add i64 %181, %148, !dbg !191
  tail call void @llvm.dbg.value(metadata i64 %222, metadata !95, metadata !DIExpression()), !dbg !173
  %223 = add nuw nsw i64 %182, 1, !dbg !192
  tail call void @llvm.dbg.value(metadata i64 %223, metadata !60, metadata !DIExpression()), !dbg !133
  %224 = icmp eq i64 %223, %153, !dbg !193
  br i1 %224, label %225, label %180, !dbg !179, !llvm.loop !194

225:                                              ; preds = %180, %154
  %226 = add i64 %155, %151, !dbg !196
  tail call void @llvm.dbg.value(metadata i64 %226, metadata !85, metadata !DIExpression()), !dbg !168
  %227 = add nuw nsw i64 %156, 1, !dbg !197
  tail call void @llvm.dbg.value(metadata i64 %227, metadata !63, metadata !DIExpression()), !dbg !133
  %228 = icmp eq i64 %227, %152, !dbg !169
  br i1 %228, label %230, label %154, !dbg !170, !llvm.loop !198

229:                                              ; preds = %133
  tail call void (i32, ptr, ptr, ...) @cblas_xerbla(i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #3, !dbg !200
  br label %230

230:                                              ; preds = %229, %225, %135, %129, %39
  ret void, !dbg !202
}

declare !dbg !204 void @cblas_xerbla(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #2

declare float @fSubHandlerFloat(float, float)

declare float @fAddHandlerFloat(float, float)

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!17}
!llvm.module.flags = !{!32, !33, !34, !35, !36, !37, !38}
!llvm.ident = !{!39}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 23, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "./source_gerc.h", directory: "/PI-detector/external/gsl/gsl-2.5/cblas", checksumkind: CSK_MD5, checksum: "dfd71ef1682438b7101aacf65aa825a7")
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
!18 = !DIFile(filename: "cgerc.c", directory: "/PI-detector/external/gsl/gsl-2.5/cblas", checksumkind: CSK_MD5, checksum: "0e8a803b37e7c1c8a2ffe97c74ea2d3b")
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
!29 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
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
!40 = distinct !DISubprogram(name: "cblas_cgerc", scope: !18, file: !18, line: 7, type: !41, scopeLine: 10, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !49)
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
!126 = !{!"float", !127, i64 0}
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
!147 = !DILocation(line: 39, column: 32, scope: !81)
!148 = !DILocation(line: 40, column: 42, scope: !81)
!149 = !DILocation(line: 40, column: 53, scope: !81)
!150 = !DILocation(line: 40, column: 11, scope: !81)
!151 = !DILocation(line: 40, column: 32, scope: !81)
!152 = !DILocation(line: 41, column: 62, scope: !81)
!153 = !DILocation(line: 41, column: 53, scope: !81)
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
!174 = !DILocation(line: 50, column: 30, scope: !89)
!175 = !DILocation(line: 51, column: 42, scope: !89)
!176 = !DILocation(line: 51, column: 51, scope: !89)
!177 = !DILocation(line: 52, column: 42, scope: !89)
!178 = !DILocation(line: 52, column: 51, scope: !89)
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
