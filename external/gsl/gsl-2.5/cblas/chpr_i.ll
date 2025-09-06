; ModuleID = 'chpr.ll'
source_filename = "chpr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"./source_hpr.h\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !7
@.str.2 = private unnamed_addr constant [23 x i8] c"unrecognized operation\00", align 1, !dbg !12

; Function Attrs: nounwind uwtable
define dso_local void @cblas_chpr(i32 noundef %0, i32 noundef %1, i32 noundef %2, float noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5, ptr nocapture noundef %6) local_unnamed_addr #0 !dbg !44 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !55, metadata !DIExpression()), !dbg !103
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !56, metadata !DIExpression()), !dbg !103
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !57, metadata !DIExpression()), !dbg !103
  tail call void @llvm.dbg.value(metadata float %3, metadata !58, metadata !DIExpression()), !dbg !103
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !59, metadata !DIExpression()), !dbg !103
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !60, metadata !DIExpression()), !dbg !103
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !61, metadata !DIExpression()), !dbg !103
  %8 = icmp eq i32 %0, 102, !dbg !104
  %9 = select i1 %8, i32 1, i32 -1, !dbg !105
  %10 = select i1 %8, i32 -1, i32 1, !dbg !105
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !66, metadata !DIExpression()), !dbg !106
  tail call void @llvm.dbg.value(metadata i32 0, metadata !67, metadata !DIExpression()), !dbg !107
  %11 = add i32 %0, -103, !dbg !108
  %12 = icmp ult i32 %11, -2, !dbg !108
  %13 = zext i1 %12 to i32, !dbg !108
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !67, metadata !DIExpression()), !dbg !107
  %14 = add i32 %1, -123, !dbg !110
  %15 = icmp ult i32 %14, -2, !dbg !110
  %16 = select i1 %15, i32 2, i32 %13, !dbg !110
  tail call void @llvm.dbg.value(metadata i32 %16, metadata !67, metadata !DIExpression()), !dbg !107
  %17 = icmp slt i32 %2, 0, !dbg !112
  %18 = select i1 %17, i32 3, i32 %16, !dbg !114
  tail call void @llvm.dbg.value(metadata i32 %18, metadata !67, metadata !DIExpression()), !dbg !107
  %19 = icmp eq i32 %5, 0, !dbg !115
  %20 = select i1 %19, i32 6, i32 %18, !dbg !114
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !67, metadata !DIExpression()), !dbg !107
  %21 = icmp eq i32 %20, 0, !dbg !117
  br i1 %21, label %23, label %22, !dbg !114

22:                                               ; preds = %7
  tail call void (i32, ptr, ptr, ...) @cblas_xerbla(i32 noundef %20, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #3, !dbg !117
  br label %23, !dbg !117

23:                                               ; preds = %22, %7
  %24 = fcmp oeq float %3, 0.000000e+00, !dbg !119
  br i1 %24, label %258, label %25, !dbg !121

25:                                               ; preds = %23
  %26 = icmp eq i32 %0, 101, !dbg !122
  %27 = icmp eq i32 %1, 121
  %28 = and i1 %26, %27, !dbg !123
  br i1 %28, label %32, label %29, !dbg !123

29:                                               ; preds = %25
  %30 = icmp eq i32 %1, 122
  %31 = and i1 %8, %30, !dbg !124
  br i1 %31, label %32, label %142, !dbg !124

32:                                               ; preds = %29, %25
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !69, metadata !DIExpression()), !dbg !125
  tail call void @llvm.dbg.value(metadata i32 0, metadata !62, metadata !DIExpression()), !dbg !106
  %33 = icmp sgt i32 %2, 0, !dbg !126
  br i1 %33, label %34, label %258, !dbg !127

34:                                               ; preds = %32
  %35 = icmp sgt i32 %5, 0, !dbg !128
  %36 = sub nsw i32 1, %2, !dbg !128
  %37 = mul i32 %36, %5, !dbg !128
  %38 = select i1 %35, i32 0, i32 %37, !dbg !128
  tail call void @llvm.dbg.value(metadata i32 %38, metadata !69, metadata !DIExpression()), !dbg !125
  %39 = sitofp i32 %10 to float
  %40 = fmul float %39, %3
  %41 = sitofp i32 %9 to float
  %42 = shl nuw nsw i32 %2, 1
  %43 = or disjoint i32 %42, 1
  %44 = zext i32 %5 to i64, !dbg !127
  %45 = zext i32 %38 to i64, !dbg !127
  %46 = zext nneg i32 %2 to i64
  br label %51, !dbg !127

47:                                               ; preds = %96, %51
  %48 = xor i32 %56, -1
  tail call void @llvm.dbg.value(metadata i32 %91, metadata !62, metadata !DIExpression()), !dbg !106
  tail call void @llvm.dbg.value(metadata i64 %90, metadata !69, metadata !DIExpression()), !dbg !125
  %49 = add nuw nsw i64 %54, 1, !dbg !127
  %50 = icmp eq i32 %91, %2, !dbg !126
  br i1 %50, label %258, label %51, !dbg !127, !llvm.loop !129

51:                                               ; preds = %47, %34
  %52 = phi i64 [ %45, %34 ], [ %90, %47 ]
  %53 = phi i32 [ %38, %34 ], [ %57, %47 ]
  %54 = phi i64 [ 1, %34 ], [ %49, %47 ]
  %55 = phi i32 [ 0, %34 ], [ %48, %47 ]
  %56 = phi i32 [ 0, %34 ], [ %91, %47 ]
  %57 = add i32 %53, %5, !dbg !127
  tail call void @llvm.dbg.value(metadata i32 %56, metadata !62, metadata !DIExpression()), !dbg !106
  tail call void @llvm.dbg.value(metadata i64 %52, metadata !69, metadata !DIExpression()), !dbg !125
  %58 = trunc i64 %52 to i32, !dbg !132
  %59 = shl nsw i32 %58, 1, !dbg !132
  %60 = sext i32 %59 to i64, !dbg !132
  %61 = getelementptr inbounds float, ptr %4, i64 %60, !dbg !132
  %62 = load float, ptr %61, align 4, !dbg !132, !tbaa !133
  %63 = fmul float %62, %3, !dbg !137
  tail call void @llvm.dbg.value(metadata float %63, metadata !72, metadata !DIExpression()), !dbg !138
  %64 = or disjoint i32 %59, 1, !dbg !139
  %65 = sext i32 %64 to i64, !dbg !139
  %66 = getelementptr inbounds float, ptr %4, i64 %65, !dbg !139
  %67 = load float, ptr %66, align 4, !dbg !139, !tbaa !133
  %68 = fmul float %40, %67, !dbg !140
  tail call void @llvm.dbg.value(metadata float %68, metadata !76, metadata !DIExpression()), !dbg !138
  tail call void @llvm.dbg.value(metadata i64 %52, metadata !77, metadata !DIExpression()), !dbg !138
  tail call void @llvm.dbg.value(metadata float %62, metadata !78, metadata !DIExpression()), !dbg !141
  %69 = fmul float %67, %41, !dbg !142
  tail call void @llvm.dbg.value(metadata float %69, metadata !80, metadata !DIExpression()), !dbg !141
  %70 = fmul float %62, %63, !dbg !143
  %71 = fmul float %69, %68, !dbg !144
  %72 = fpext float %70 to double, !dbg !145
  %73 = fpext float %71 to double, !dbg !145
  %74 = fptrunc double %72 to float, !dbg !145
  %75 = fptrunc double %73 to float, !dbg !145
  %handler_result = call float @fSubHandlerFloat(float %74, float %75), !dbg !145
  %76 = add i32 %43, %55, !dbg !145
  %77 = mul nsw i32 %76, %56, !dbg !145
  %78 = sdiv i32 %77, 2, !dbg !145
  %79 = shl nsw i32 %78, 1, !dbg !145
  %80 = sext i32 %79 to i64, !dbg !145
  %81 = getelementptr inbounds float, ptr %6, i64 %80, !dbg !145
  %82 = load float, ptr %81, align 4, !dbg !146, !tbaa !133
  %83 = fpext float %82 to double, !dbg !146
  %84 = fpext float %handler_result to double, !dbg !146
  %85 = fptrunc double %83 to float, !dbg !146
  %86 = fptrunc double %84 to float, !dbg !146
  %handler_result1 = call float @fAddHandlerFloat(float %85, float %86), !dbg !146
  store float %handler_result1, ptr %81, align 4, !dbg !146, !tbaa !133
  %87 = or disjoint i32 %79, 1, !dbg !147
  %88 = sext i32 %87 to i64, !dbg !147
  %89 = getelementptr inbounds float, ptr %6, i64 %88, !dbg !147
  store float 0.000000e+00, ptr %89, align 4, !dbg !148, !tbaa !133
  %90 = add i64 %52, %44, !dbg !149
  tail call void @llvm.dbg.value(metadata i64 %90, metadata !77, metadata !DIExpression()), !dbg !138
  %91 = add nuw nsw i32 %56, 1, !dbg !150
  tail call void @llvm.dbg.value(metadata i32 %91, metadata !65, metadata !DIExpression()), !dbg !106
  %92 = icmp slt i32 %91, %2, !dbg !151
  br i1 %92, label %93, label %47, !dbg !152

93:                                               ; preds = %51
  %94 = zext i32 %57 to i64, !dbg !132
  %95 = add i32 %78, %55
  br label %96, !dbg !152

96:                                               ; preds = %96, %93
  %97 = phi i64 [ %94, %93 ], [ %139, %96 ]
  %98 = phi i64 [ %54, %93 ], [ %140, %96 ]
  tail call void @llvm.dbg.value(metadata i64 %98, metadata !65, metadata !DIExpression()), !dbg !106
  tail call void @llvm.dbg.value(metadata i64 %97, metadata !77, metadata !DIExpression()), !dbg !138
  %99 = trunc i64 %97 to i32, !dbg !153
  %100 = shl nsw i32 %99, 1, !dbg !153
  %101 = sext i32 %100 to i64, !dbg !153
  %102 = getelementptr inbounds float, ptr %4, i64 %101, !dbg !153
  %103 = load float, ptr %102, align 4, !dbg !153, !tbaa !133
  tail call void @llvm.dbg.value(metadata float %103, metadata !81, metadata !DIExpression()), !dbg !154
  %104 = or disjoint i32 %100, 1, !dbg !155
  %105 = sext i32 %104 to i64, !dbg !155
  %106 = getelementptr inbounds float, ptr %4, i64 %105, !dbg !155
  %107 = load float, ptr %106, align 4, !dbg !155, !tbaa !133
  %108 = fmul float %107, %41, !dbg !156
  tail call void @llvm.dbg.value(metadata float %108, metadata !85, metadata !DIExpression()), !dbg !154
  %109 = fmul float %63, %103, !dbg !157
  %110 = fmul float %68, %108, !dbg !158
  %111 = fpext float %109 to double, !dbg !159
  %112 = fpext float %110 to double, !dbg !159
  %113 = fptrunc double %111 to float, !dbg !159
  %114 = fptrunc double %112 to float, !dbg !159
  %handler_result2 = call float @fSubHandlerFloat(float %113, float %114), !dbg !159
  %115 = trunc i64 %98 to i32, !dbg !159
  %116 = add i32 %95, %115, !dbg !159
  %117 = shl nsw i32 %116, 1, !dbg !159
  %118 = sext i32 %117 to i64, !dbg !159
  %119 = getelementptr inbounds float, ptr %6, i64 %118, !dbg !159
  %120 = load float, ptr %119, align 4, !dbg !160, !tbaa !133
  %121 = fpext float %120 to double, !dbg !160
  %122 = fpext float %handler_result2 to double, !dbg !160
  %123 = fptrunc double %121 to float, !dbg !160
  %124 = fptrunc double %122 to float, !dbg !160
  %handler_result3 = call float @fAddHandlerFloat(float %123, float %124), !dbg !160
  store float %handler_result3, ptr %119, align 4, !dbg !160, !tbaa !133
  %125 = fmul float %63, %108, !dbg !161
  %126 = fmul float %68, %103, !dbg !162
  %127 = fpext float %126 to double, !dbg !163
  %128 = fpext float %125 to double, !dbg !163
  %129 = fptrunc double %127 to float, !dbg !163
  %130 = fptrunc double %128 to float, !dbg !163
  %handler_result4 = call float @fAddHandlerFloat(float %129, float %130), !dbg !163
  %131 = or disjoint i32 %117, 1, !dbg !163
  %132 = sext i32 %131 to i64, !dbg !163
  %133 = getelementptr inbounds float, ptr %6, i64 %132, !dbg !163
  %134 = load float, ptr %133, align 4, !dbg !164, !tbaa !133
  %135 = fpext float %134 to double, !dbg !164
  %136 = fpext float %handler_result4 to double, !dbg !164
  %137 = fptrunc double %135 to float, !dbg !164
  %138 = fptrunc double %136 to float, !dbg !164
  %handler_result5 = call float @fAddHandlerFloat(float %137, float %138), !dbg !164
  store float %handler_result5, ptr %133, align 4, !dbg !164, !tbaa !133
  %139 = add i64 %97, %44, !dbg !165
  tail call void @llvm.dbg.value(metadata i64 %139, metadata !77, metadata !DIExpression()), !dbg !138
  %140 = add nuw nsw i64 %98, 1, !dbg !166
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !65, metadata !DIExpression()), !dbg !106
  %141 = icmp eq i64 %140, %46, !dbg !151
  br i1 %141, label %47, label %96, !dbg !152, !llvm.loop !167

142:                                              ; preds = %29
  %143 = and i1 %26, %30, !dbg !169
  %144 = and i1 %8, %27
  %145 = or i1 %143, %144, !dbg !169
  br i1 %145, label %146, label %257, !dbg !169

146:                                              ; preds = %142
  %147 = icmp sgt i32 %5, 0, !dbg !170
  %148 = sub i32 1, %2, !dbg !170
  %149 = mul i32 %148, %5, !dbg !170
  %150 = select i1 %147, i32 0, i32 %149, !dbg !170
  tail call void @llvm.dbg.value(metadata i32 %150, metadata !86, metadata !DIExpression()), !dbg !171
  tail call void @llvm.dbg.value(metadata i32 0, metadata !62, metadata !DIExpression()), !dbg !106
  %151 = icmp sgt i32 %2, 0, !dbg !172
  br i1 %151, label %152, label %258, !dbg !173

152:                                              ; preds = %146
  %153 = sitofp i32 %10 to float
  %154 = fmul float %153, %3
  %155 = sitofp i32 %9 to float
  %156 = zext i32 %150 to i64, !dbg !173
  %157 = zext i32 %5 to i64, !dbg !173
  br label %158, !dbg !173

158:                                              ; preds = %224, %152
  %159 = phi i64 [ %156, %152 ], [ %255, %224 ]
  %160 = phi i32 [ 0, %152 ], [ %225, %224 ]
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !62, metadata !DIExpression()), !dbg !106
  tail call void @llvm.dbg.value(metadata i64 %159, metadata !86, metadata !DIExpression()), !dbg !171
  %161 = trunc i64 %159 to i32, !dbg !174
  %162 = shl nsw i32 %161, 1, !dbg !174
  %163 = sext i32 %162 to i64, !dbg !174
  %164 = getelementptr inbounds float, ptr %4, i64 %163, !dbg !174
  %165 = load float, ptr %164, align 4, !dbg !174, !tbaa !133
  %166 = fmul float %165, %3, !dbg !175
  tail call void @llvm.dbg.value(metadata float %166, metadata !89, metadata !DIExpression()), !dbg !176
  %167 = or disjoint i32 %162, 1, !dbg !177
  %168 = sext i32 %167 to i64, !dbg !177
  %169 = getelementptr inbounds float, ptr %4, i64 %168, !dbg !177
  %170 = load float, ptr %169, align 4, !dbg !177, !tbaa !133
  %171 = fmul float %154, %170, !dbg !178
  tail call void @llvm.dbg.value(metadata float %171, metadata !93, metadata !DIExpression()), !dbg !176
  tail call void @llvm.dbg.value(metadata i32 %150, metadata !94, metadata !DIExpression()), !dbg !176
  tail call void @llvm.dbg.value(metadata i32 0, metadata !65, metadata !DIExpression()), !dbg !106
  %172 = icmp eq i32 %160, 0, !dbg !179
  br i1 %172, label %224, label %173, !dbg !180

173:                                              ; preds = %158
  %174 = add nuw nsw i32 %160, 1
  %175 = mul nsw i32 %174, %160
  br label %176, !dbg !180

176:                                              ; preds = %176, %173
  %177 = phi i64 [ %156, %173 ], [ %219, %176 ]
  %178 = phi i32 [ 0, %173 ], [ %220, %176 ]
  tail call void @llvm.dbg.value(metadata i32 %178, metadata !65, metadata !DIExpression()), !dbg !106
  tail call void @llvm.dbg.value(metadata i64 %177, metadata !94, metadata !DIExpression()), !dbg !176
  %179 = trunc i64 %177 to i32, !dbg !181
  %180 = shl nsw i32 %179, 1, !dbg !181
  %181 = sext i32 %180 to i64, !dbg !181
  %182 = getelementptr inbounds float, ptr %4, i64 %181, !dbg !181
  %183 = load float, ptr %182, align 4, !dbg !181, !tbaa !133
  tail call void @llvm.dbg.value(metadata float %183, metadata !95, metadata !DIExpression()), !dbg !182
  %184 = or disjoint i32 %180, 1, !dbg !183
  %185 = sext i32 %184 to i64, !dbg !183
  %186 = getelementptr inbounds float, ptr %4, i64 %185, !dbg !183
  %187 = load float, ptr %186, align 4, !dbg !183, !tbaa !133
  %188 = fmul float %187, %155, !dbg !184
  tail call void @llvm.dbg.value(metadata float %188, metadata !99, metadata !DIExpression()), !dbg !182
  %189 = fmul float %166, %183, !dbg !185
  %190 = fmul float %171, %188, !dbg !186
  %191 = fpext float %189 to double, !dbg !187
  %192 = fpext float %190 to double, !dbg !187
  %193 = fptrunc double %191 to float, !dbg !187
  %194 = fptrunc double %192 to float, !dbg !187
  %handler_result6 = call float @fSubHandlerFloat(float %193, float %194), !dbg !187
  %195 = shl nuw i32 %178, 1, !dbg !187
  %196 = add i32 %195, %175, !dbg !187
  %197 = and i32 %196, -2, !dbg !187
  %198 = sext i32 %197 to i64, !dbg !187
  %199 = getelementptr inbounds float, ptr %6, i64 %198, !dbg !187
  %200 = load float, ptr %199, align 4, !dbg !188, !tbaa !133
  %201 = fpext float %200 to double, !dbg !188
  %202 = fpext float %handler_result6 to double, !dbg !188
  %203 = fptrunc double %201 to float, !dbg !188
  %204 = fptrunc double %202 to float, !dbg !188
  %handler_result7 = call float @fAddHandlerFloat(float %203, float %204), !dbg !188
  store float %handler_result7, ptr %199, align 4, !dbg !188, !tbaa !133
  %205 = fmul float %166, %188, !dbg !189
  %206 = fmul float %171, %183, !dbg !190
  %207 = fpext float %206 to double, !dbg !191
  %208 = fpext float %205 to double, !dbg !191
  %209 = fptrunc double %207 to float, !dbg !191
  %210 = fptrunc double %208 to float, !dbg !191
  %handler_result8 = call float @fAddHandlerFloat(float %209, float %210), !dbg !191
  %211 = or i32 %196, 1, !dbg !191
  %212 = sext i32 %211 to i64, !dbg !191
  %213 = getelementptr inbounds float, ptr %6, i64 %212, !dbg !191
  %214 = load float, ptr %213, align 4, !dbg !192, !tbaa !133
  %215 = fpext float %214 to double, !dbg !192
  %216 = fpext float %handler_result8 to double, !dbg !192
  %217 = fptrunc double %215 to float, !dbg !192
  %218 = fptrunc double %216 to float, !dbg !192
  %handler_result9 = call float @fAddHandlerFloat(float %217, float %218), !dbg !192
  store float %handler_result9, ptr %213, align 4, !dbg !192, !tbaa !133
  %219 = add i64 %177, %157, !dbg !193
  tail call void @llvm.dbg.value(metadata i64 %219, metadata !94, metadata !DIExpression()), !dbg !176
  %220 = add nuw nsw i32 %178, 1, !dbg !194
  tail call void @llvm.dbg.value(metadata i32 %220, metadata !65, metadata !DIExpression()), !dbg !106
  %221 = icmp eq i32 %220, %160, !dbg !179
  br i1 %221, label %222, label %176, !dbg !180, !llvm.loop !195

222:                                              ; preds = %176
  %223 = trunc i64 %219 to i32, !dbg !197
  br label %224, !dbg !197

224:                                              ; preds = %222, %158
  %225 = phi i32 [ %174, %222 ], [ 1, %158 ], !dbg !198
  %226 = phi i32 [ %223, %222 ], [ %150, %158 ], !dbg !176
  %227 = shl nsw i32 %226, 1, !dbg !197
  %228 = sext i32 %227 to i64, !dbg !197
  %229 = getelementptr inbounds float, ptr %4, i64 %228, !dbg !197
  %230 = load float, ptr %229, align 4, !dbg !197, !tbaa !133
  tail call void @llvm.dbg.value(metadata float %230, metadata !100, metadata !DIExpression()), !dbg !199
  %231 = or disjoint i32 %227, 1, !dbg !200
  %232 = sext i32 %231 to i64, !dbg !200
  %233 = getelementptr inbounds float, ptr %4, i64 %232, !dbg !200
  %234 = load float, ptr %233, align 4, !dbg !200, !tbaa !133
  %235 = fmul float %234, %155, !dbg !201
  tail call void @llvm.dbg.value(metadata float %235, metadata !102, metadata !DIExpression()), !dbg !199
  %236 = fmul float %166, %230, !dbg !202
  %237 = fmul float %171, %235, !dbg !203
  %238 = fpext float %236 to double, !dbg !198
  %239 = fpext float %237 to double, !dbg !198
  %240 = fptrunc double %238 to float, !dbg !198
  %241 = fptrunc double %239 to float, !dbg !198
  %handler_result10 = call float @fSubHandlerFloat(float %240, float %241), !dbg !198
  %242 = add nuw i32 %160, 3, !dbg !198
  %243 = mul i32 %242, %160, !dbg !198
  %244 = and i32 %243, -2, !dbg !198
  %245 = sext i32 %244 to i64, !dbg !198
  %246 = getelementptr inbounds float, ptr %6, i64 %245, !dbg !198
  %247 = load float, ptr %246, align 4, !dbg !204, !tbaa !133
  %248 = fpext float %247 to double, !dbg !204
  %249 = fpext float %handler_result10 to double, !dbg !204
  %250 = fptrunc double %248 to float, !dbg !204
  %251 = fptrunc double %249 to float, !dbg !204
  %handler_result11 = call float @fAddHandlerFloat(float %250, float %251), !dbg !204
  store float %handler_result11, ptr %246, align 4, !dbg !204, !tbaa !133
  %252 = or i32 %243, 1, !dbg !205
  %253 = sext i32 %252 to i64, !dbg !205
  %254 = getelementptr inbounds float, ptr %6, i64 %253, !dbg !205
  store float 0.000000e+00, ptr %254, align 4, !dbg !206, !tbaa !133
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 %226, i32 %5), metadata !94, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !176
  %255 = add i64 %159, %157, !dbg !207
  tail call void @llvm.dbg.value(metadata i32 %225, metadata !62, metadata !DIExpression()), !dbg !106
  tail call void @llvm.dbg.value(metadata i64 %255, metadata !86, metadata !DIExpression()), !dbg !171
  %256 = icmp eq i32 %225, %2, !dbg !172
  br i1 %256, label %258, label %158, !dbg !173, !llvm.loop !208

257:                                              ; preds = %142
  tail call void (i32, ptr, ptr, ...) @cblas_xerbla(i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #3, !dbg !210
  br label %258

258:                                              ; preds = %257, %224, %146, %47, %32, %23
  ret void, !dbg !212
}

declare !dbg !214 void @cblas_xerbla(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

declare float @fSubHandlerFloat(float, float)

declare float @fAddHandlerFloat(float, float)

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!17}
!llvm.module.flags = !{!36, !37, !38, !39, !40, !41, !42}
!llvm.ident = !{!43}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 24, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "./source_hpr.h", directory: "/PI-detector/external/gsl/gsl-2.5/cblas", checksumkind: CSK_MD5, checksum: "7d16427fc585df7ba8cef88db3116572")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 15)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 24, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 1)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 80, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 23)
!17 = distinct !DICompileUnit(language: DW_LANG_C11, file: !18, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !19, retainedTypes: !30, globals: !35, splitDebugInlining: false, nameTableKind: None)
!18 = !DIFile(filename: "chpr.c", directory: "/PI-detector/external/gsl/gsl-2.5/cblas", checksumkind: CSK_MD5, checksum: "0a42ad66a7ae34ff96d99fb6bbbbb5c7")
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
!30 = !{!31, !34}
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !33)
!33 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!35 = !{!0, !7, !12}
!36 = !{i32 7, !"Dwarf Version", i32 5}
!37 = !{i32 2, !"Debug Info Version", i32 3}
!38 = !{i32 1, !"wchar_size", i32 4}
!39 = !{i32 8, !"PIC Level", i32 2}
!40 = !{i32 7, !"PIE Level", i32 2}
!41 = !{i32 7, !"uwtable", i32 2}
!42 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!43 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!44 = distinct !DISubprogram(name: "cblas_chpr", scope: !18, file: !18, line: 7, type: !45, scopeLine: 10, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !54)
!45 = !DISubroutineType(types: !46)
!46 = !{null, !47, !48, !49, !32, !51, !49, !53}
!47 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!48 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !26)
!49 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!50 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!54 = !{!55, !56, !57, !58, !59, !60, !61, !62, !65, !66, !67, !69, !72, !76, !77, !78, !80, !81, !85, !86, !89, !93, !94, !95, !99, !100, !102}
!55 = !DILocalVariable(name: "order", arg: 1, scope: !44, file: !18, line: 7, type: !47)
!56 = !DILocalVariable(name: "Uplo", arg: 2, scope: !44, file: !18, line: 7, type: !48)
!57 = !DILocalVariable(name: "N", arg: 3, scope: !44, file: !18, line: 8, type: !49)
!58 = !DILocalVariable(name: "alpha", arg: 4, scope: !44, file: !18, line: 8, type: !32)
!59 = !DILocalVariable(name: "X", arg: 5, scope: !44, file: !18, line: 8, type: !51)
!60 = !DILocalVariable(name: "incX", arg: 6, scope: !44, file: !18, line: 8, type: !49)
!61 = !DILocalVariable(name: "Ap", arg: 7, scope: !44, file: !18, line: 9, type: !53)
!62 = !DILocalVariable(name: "i", scope: !63, file: !2, line: 21, type: !50)
!63 = distinct !DILexicalBlock(scope: !64, file: !2, line: 20, column: 1)
!64 = !DILexicalBlockFile(scope: !44, file: !2, discriminator: 0)
!65 = !DILocalVariable(name: "j", scope: !63, file: !2, line: 21, type: !50)
!66 = !DILocalVariable(name: "conj", scope: !63, file: !2, line: 22, type: !49)
!67 = !DILocalVariable(name: "pos", scope: !68, file: !2, line: 24, type: !50)
!68 = distinct !DILexicalBlock(scope: !63, file: !2, line: 24, column: 3)
!69 = !DILocalVariable(name: "ix", scope: !70, file: !2, line: 31, type: !50)
!70 = distinct !DILexicalBlock(scope: !71, file: !2, line: 30, column: 58)
!71 = distinct !DILexicalBlock(scope: !63, file: !2, line: 29, column: 7)
!72 = !DILocalVariable(name: "tmp_real", scope: !73, file: !2, line: 33, type: !32)
!73 = distinct !DILexicalBlock(scope: !74, file: !2, line: 32, column: 29)
!74 = distinct !DILexicalBlock(scope: !75, file: !2, line: 32, column: 5)
!75 = distinct !DILexicalBlock(scope: !70, file: !2, line: 32, column: 5)
!76 = !DILocalVariable(name: "tmp_imag", scope: !73, file: !2, line: 34, type: !32)
!77 = !DILocalVariable(name: "jx", scope: !73, file: !2, line: 35, type: !50)
!78 = !DILocalVariable(name: "X_real", scope: !79, file: !2, line: 38, type: !32)
!79 = distinct !DILexicalBlock(scope: !73, file: !2, line: 37, column: 7)
!80 = !DILocalVariable(name: "X_imag", scope: !79, file: !2, line: 39, type: !32)
!81 = !DILocalVariable(name: "X_real", scope: !82, file: !2, line: 46, type: !32)
!82 = distinct !DILexicalBlock(scope: !83, file: !2, line: 45, column: 35)
!83 = distinct !DILexicalBlock(scope: !84, file: !2, line: 45, column: 7)
!84 = distinct !DILexicalBlock(scope: !73, file: !2, line: 45, column: 7)
!85 = !DILocalVariable(name: "X_imag", scope: !82, file: !2, line: 47, type: !32)
!86 = !DILocalVariable(name: "ix", scope: !87, file: !2, line: 56, type: !50)
!87 = distinct !DILexicalBlock(scope: !88, file: !2, line: 55, column: 65)
!88 = distinct !DILexicalBlock(scope: !71, file: !2, line: 54, column: 14)
!89 = !DILocalVariable(name: "tmp_real", scope: !90, file: !2, line: 58, type: !32)
!90 = distinct !DILexicalBlock(scope: !91, file: !2, line: 57, column: 29)
!91 = distinct !DILexicalBlock(scope: !92, file: !2, line: 57, column: 5)
!92 = distinct !DILexicalBlock(scope: !87, file: !2, line: 57, column: 5)
!93 = !DILocalVariable(name: "tmp_imag", scope: !90, file: !2, line: 59, type: !32)
!94 = !DILocalVariable(name: "jx", scope: !90, file: !2, line: 60, type: !50)
!95 = !DILocalVariable(name: "X_real", scope: !96, file: !2, line: 62, type: !32)
!96 = distinct !DILexicalBlock(scope: !97, file: !2, line: 61, column: 31)
!97 = distinct !DILexicalBlock(scope: !98, file: !2, line: 61, column: 7)
!98 = distinct !DILexicalBlock(scope: !90, file: !2, line: 61, column: 7)
!99 = !DILocalVariable(name: "X_imag", scope: !96, file: !2, line: 63, type: !32)
!100 = !DILocalVariable(name: "X_real", scope: !101, file: !2, line: 70, type: !32)
!101 = distinct !DILexicalBlock(scope: !90, file: !2, line: 69, column: 7)
!102 = !DILocalVariable(name: "X_imag", scope: !101, file: !2, line: 71, type: !32)
!103 = !DILocation(line: 0, scope: !44)
!104 = !DILocation(line: 22, column: 27, scope: !63)
!105 = !DILocation(line: 22, column: 20, scope: !63)
!106 = !DILocation(line: 0, scope: !63)
!107 = !DILocation(line: 0, scope: !68)
!108 = !DILocation(line: 24, column: 3, scope: !109)
!109 = distinct !DILexicalBlock(scope: !68, file: !2, line: 24, column: 3)
!110 = !DILocation(line: 24, column: 3, scope: !111)
!111 = distinct !DILexicalBlock(scope: !68, file: !2, line: 24, column: 3)
!112 = !DILocation(line: 24, column: 3, scope: !113)
!113 = distinct !DILexicalBlock(scope: !68, file: !2, line: 24, column: 3)
!114 = !DILocation(line: 24, column: 3, scope: !68)
!115 = !DILocation(line: 24, column: 3, scope: !116)
!116 = distinct !DILexicalBlock(scope: !68, file: !2, line: 24, column: 3)
!117 = !DILocation(line: 24, column: 3, scope: !118)
!118 = distinct !DILexicalBlock(scope: !68, file: !2, line: 24, column: 3)
!119 = !DILocation(line: 26, column: 13, scope: !120)
!120 = distinct !DILexicalBlock(scope: !63, file: !2, line: 26, column: 7)
!121 = !DILocation(line: 26, column: 7, scope: !63)
!122 = !DILocation(line: 29, column: 14, scope: !71)
!123 = !DILocation(line: 29, column: 31, scope: !71)
!124 = !DILocation(line: 30, column: 34, scope: !71)
!125 = !DILocation(line: 0, scope: !70)
!126 = !DILocation(line: 32, column: 19, scope: !74)
!127 = !DILocation(line: 32, column: 5, scope: !75)
!128 = !DILocation(line: 31, column: 16, scope: !70)
!129 = distinct !{!129, !127, !130, !131}
!130 = !DILocation(line: 53, column: 5, scope: !75)
!131 = !{!"llvm.loop.mustprogress"}
!132 = !DILocation(line: 33, column: 37, scope: !73)
!133 = !{!134, !134, i64 0}
!134 = !{!"float", !135, i64 0}
!135 = !{!"omnipotent char", !136, i64 0}
!136 = !{!"Simple C/C++ TBAA"}
!137 = !DILocation(line: 33, column: 35, scope: !73)
!138 = !DILocation(line: 0, scope: !73)
!139 = !DILocation(line: 34, column: 44, scope: !73)
!140 = !DILocation(line: 34, column: 42, scope: !73)
!141 = !DILocation(line: 0, scope: !79)
!142 = !DILocation(line: 39, column: 35, scope: !79)
!143 = !DILocation(line: 40, column: 43, scope: !79)
!144 = !DILocation(line: 40, column: 63, scope: !79)
!145 = !DILocation(line: 40, column: 9, scope: !79)
!146 = !DILocation(line: 40, column: 33, scope: !79)
!147 = !DILocation(line: 41, column: 9, scope: !79)
!148 = !DILocation(line: 41, column: 33, scope: !79)
!149 = !DILocation(line: 42, column: 12, scope: !79)
!150 = !DILocation(line: 45, column: 18, scope: !84)
!151 = !DILocation(line: 45, column: 25, scope: !83)
!152 = !DILocation(line: 45, column: 7, scope: !84)
!153 = !DILocation(line: 46, column: 29, scope: !82)
!154 = !DILocation(line: 0, scope: !82)
!155 = !DILocation(line: 47, column: 37, scope: !82)
!156 = !DILocation(line: 47, column: 35, scope: !82)
!157 = !DILocation(line: 48, column: 43, scope: !82)
!158 = !DILocation(line: 48, column: 63, scope: !82)
!159 = !DILocation(line: 48, column: 9, scope: !82)
!160 = !DILocation(line: 48, column: 33, scope: !82)
!161 = !DILocation(line: 49, column: 43, scope: !82)
!162 = !DILocation(line: 49, column: 63, scope: !82)
!163 = !DILocation(line: 49, column: 9, scope: !82)
!164 = !DILocation(line: 49, column: 33, scope: !82)
!165 = !DILocation(line: 50, column: 12, scope: !82)
!166 = !DILocation(line: 45, column: 31, scope: !83)
!167 = distinct !{!167, !152, !168, !131}
!168 = !DILocation(line: 51, column: 7, scope: !84)
!169 = !DILocation(line: 54, column: 38, scope: !88)
!170 = !DILocation(line: 56, column: 16, scope: !87)
!171 = !DILocation(line: 0, scope: !87)
!172 = !DILocation(line: 57, column: 19, scope: !91)
!173 = !DILocation(line: 57, column: 5, scope: !92)
!174 = !DILocation(line: 58, column: 37, scope: !90)
!175 = !DILocation(line: 58, column: 35, scope: !90)
!176 = !DILocation(line: 0, scope: !90)
!177 = !DILocation(line: 59, column: 44, scope: !90)
!178 = !DILocation(line: 59, column: 42, scope: !90)
!179 = !DILocation(line: 61, column: 21, scope: !97)
!180 = !DILocation(line: 61, column: 7, scope: !98)
!181 = !DILocation(line: 62, column: 29, scope: !96)
!182 = !DILocation(line: 0, scope: !96)
!183 = !DILocation(line: 63, column: 37, scope: !96)
!184 = !DILocation(line: 63, column: 35, scope: !96)
!185 = !DILocation(line: 64, column: 43, scope: !96)
!186 = !DILocation(line: 64, column: 63, scope: !96)
!187 = !DILocation(line: 64, column: 9, scope: !96)
!188 = !DILocation(line: 64, column: 33, scope: !96)
!189 = !DILocation(line: 65, column: 43, scope: !96)
!190 = !DILocation(line: 65, column: 63, scope: !96)
!191 = !DILocation(line: 65, column: 9, scope: !96)
!192 = !DILocation(line: 65, column: 33, scope: !96)
!193 = !DILocation(line: 66, column: 12, scope: !96)
!194 = !DILocation(line: 61, column: 27, scope: !97)
!195 = distinct !{!195, !180, !196, !131}
!196 = !DILocation(line: 67, column: 7, scope: !98)
!197 = !DILocation(line: 70, column: 29, scope: !101)
!198 = !DILocation(line: 72, column: 9, scope: !101)
!199 = !DILocation(line: 0, scope: !101)
!200 = !DILocation(line: 71, column: 37, scope: !101)
!201 = !DILocation(line: 71, column: 35, scope: !101)
!202 = !DILocation(line: 72, column: 43, scope: !101)
!203 = !DILocation(line: 72, column: 63, scope: !101)
!204 = !DILocation(line: 72, column: 33, scope: !101)
!205 = !DILocation(line: 73, column: 9, scope: !101)
!206 = !DILocation(line: 73, column: 33, scope: !101)
!207 = !DILocation(line: 77, column: 10, scope: !90)
!208 = distinct !{!208, !173, !209, !131}
!209 = !DILocation(line: 78, column: 5, scope: !92)
!210 = !DILocation(line: 80, column: 5, scope: !211)
!211 = distinct !DILexicalBlock(scope: !88, file: !2, line: 79, column: 10)
!212 = !DILocation(line: 14, column: 1, scope: !213)
!213 = !DILexicalBlockFile(scope: !44, file: !18, discriminator: 0)
!214 = !DISubprogram(name: "cblas_xerbla", scope: !21, file: !21, line: 602, type: !215, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!215 = !DISubroutineType(types: !216)
!216 = !{null, !50, !217, !217, null}
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
