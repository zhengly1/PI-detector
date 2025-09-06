; ModuleID = 'chpr2.ll'
source_filename = "chpr2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"./source_hpr2.h\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !7
@.str.2 = private unnamed_addr constant [23 x i8] c"unrecognized operation\00", align 1, !dbg !12

; Function Attrs: nounwind uwtable
define dso_local void @cblas_chpr2(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, i32 noundef %5, ptr nocapture noundef readonly %6, i32 noundef %7, ptr nocapture noundef %8) local_unnamed_addr #0 !dbg !44 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !55, metadata !DIExpression()), !dbg !122
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !56, metadata !DIExpression()), !dbg !122
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !57, metadata !DIExpression()), !dbg !122
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !58, metadata !DIExpression()), !dbg !122
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !59, metadata !DIExpression()), !dbg !122
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !60, metadata !DIExpression()), !dbg !122
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !61, metadata !DIExpression()), !dbg !122
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !62, metadata !DIExpression()), !dbg !122
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !63, metadata !DIExpression()), !dbg !122
  %10 = icmp eq i32 %0, 102, !dbg !123
  %11 = select i1 %10, i32 -1, i32 1, !dbg !124
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !68, metadata !DIExpression()), !dbg !125
  tail call void @llvm.dbg.value(metadata i32 0, metadata !69, metadata !DIExpression()), !dbg !126
  %12 = add i32 %0, -103, !dbg !127
  %13 = icmp ult i32 %12, -2, !dbg !127
  %14 = zext i1 %13 to i32, !dbg !127
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !69, metadata !DIExpression()), !dbg !126
  %15 = add i32 %1, -123, !dbg !129
  %16 = icmp ult i32 %15, -2, !dbg !129
  %17 = select i1 %16, i32 2, i32 %14, !dbg !129
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !69, metadata !DIExpression()), !dbg !126
  %18 = icmp slt i32 %2, 0, !dbg !131
  %19 = select i1 %18, i32 3, i32 %17, !dbg !133
  tail call void @llvm.dbg.value(metadata i32 %19, metadata !69, metadata !DIExpression()), !dbg !126
  %20 = icmp eq i32 %5, 0, !dbg !134
  %21 = select i1 %20, i32 6, i32 %19, !dbg !133
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !69, metadata !DIExpression()), !dbg !126
  %22 = icmp eq i32 %7, 0, !dbg !136
  %23 = select i1 %22, i32 8, i32 %21, !dbg !133
  tail call void @llvm.dbg.value(metadata i32 %23, metadata !69, metadata !DIExpression()), !dbg !126
  %24 = icmp eq i32 %23, 0, !dbg !138
  br i1 %24, label %26, label %25, !dbg !133

25:                                               ; preds = %9
  tail call void (i32, ptr, ptr, ...) @cblas_xerbla(i32 noundef %23, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #3, !dbg !138
  br label %26, !dbg !138

26:                                               ; preds = %25, %9
  %27 = load float, ptr %3, align 4, !dbg !140, !tbaa !141
  tail call void @llvm.dbg.value(metadata float %27, metadata !71, metadata !DIExpression()), !dbg !145
  %28 = getelementptr inbounds float, ptr %3, i64 1, !dbg !146
  %29 = load float, ptr %28, align 4, !dbg !146, !tbaa !141
  tail call void @llvm.dbg.value(metadata float %29, metadata !73, metadata !DIExpression()), !dbg !145
  %30 = fcmp oeq float %27, 0.000000e+00, !dbg !147
  %31 = fcmp oeq float %29, 0.000000e+00
  %32 = select i1 %30, i1 %31, i1 false, !dbg !149
  br i1 %32, label %392, label %33, !dbg !149

33:                                               ; preds = %26
  %34 = icmp eq i32 %0, 101, !dbg !150
  %35 = icmp eq i32 %1, 121
  %36 = and i1 %34, %35, !dbg !151
  br i1 %36, label %40, label %37, !dbg !151

37:                                               ; preds = %33
  %38 = icmp eq i32 %1, 122
  %39 = and i1 %10, %38, !dbg !152
  br i1 %39, label %40, label %220, !dbg !152

40:                                               ; preds = %37, %33
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !74, metadata !DIExpression()), !dbg !153
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !77, metadata !DIExpression()), !dbg !153
  tail call void @llvm.dbg.value(metadata i32 0, metadata !64, metadata !DIExpression()), !dbg !125
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !74, metadata !DIExpression()), !dbg !153
  %41 = icmp sgt i32 %2, 0, !dbg !154
  br i1 %41, label %42, label %392, !dbg !155

42:                                               ; preds = %40
  %43 = icmp sgt i32 %7, 0, !dbg !156
  %44 = sub nsw i32 1, %2, !dbg !157
  %45 = mul i32 %44, %7, !dbg !156
  %46 = select i1 %43, i32 0, i32 %45, !dbg !156
  tail call void @llvm.dbg.value(metadata i32 %46, metadata !77, metadata !DIExpression()), !dbg !153
  %47 = icmp sgt i32 %5, 0, !dbg !157
  %48 = mul i32 %44, %5, !dbg !157
  %49 = select i1 %47, i32 0, i32 %48, !dbg !157
  tail call void @llvm.dbg.value(metadata i32 %49, metadata !74, metadata !DIExpression()), !dbg !153
  %50 = shl nuw nsw i32 %2, 1
  %51 = or disjoint i32 %50, 1
  %52 = sitofp i32 %11 to float
  %53 = zext i32 %5 to i64, !dbg !155
  %54 = zext i32 %7 to i64, !dbg !155
  %55 = zext i32 %49 to i64, !dbg !155
  %56 = zext i32 %46 to i64, !dbg !155
  %57 = zext nneg i32 %2 to i64
  br label %62, !dbg !155

58:                                               ; preds = %143, %62
  %59 = xor i32 %69, -1
  tail call void @llvm.dbg.value(metadata i32 %137, metadata !64, metadata !DIExpression()), !dbg !125
  tail call void @llvm.dbg.value(metadata i64 %114, metadata !74, metadata !DIExpression()), !dbg !153
  tail call void @llvm.dbg.value(metadata i64 %115, metadata !77, metadata !DIExpression()), !dbg !153
  %60 = add nuw nsw i64 %67, 1, !dbg !155
  %61 = icmp eq i32 %137, %2, !dbg !154
  br i1 %61, label %392, label %62, !dbg !155, !llvm.loop !158

62:                                               ; preds = %58, %42
  %63 = phi i64 [ %56, %42 ], [ %115, %58 ]
  %64 = phi i64 [ %55, %42 ], [ %114, %58 ]
  %65 = phi i32 [ %46, %42 ], [ %71, %58 ]
  %66 = phi i32 [ %49, %42 ], [ %70, %58 ]
  %67 = phi i64 [ 1, %42 ], [ %60, %58 ]
  %68 = phi i32 [ 0, %42 ], [ %59, %58 ]
  %69 = phi i32 [ 0, %42 ], [ %137, %58 ]
  %70 = add i32 %66, %5, !dbg !155
  %71 = add i32 %65, %7, !dbg !155
  tail call void @llvm.dbg.value(metadata i32 %69, metadata !64, metadata !DIExpression()), !dbg !125
  tail call void @llvm.dbg.value(metadata i64 %64, metadata !74, metadata !DIExpression()), !dbg !153
  tail call void @llvm.dbg.value(metadata i64 %63, metadata !77, metadata !DIExpression()), !dbg !153
  %72 = trunc i64 %64 to i32, !dbg !161
  %73 = shl nsw i32 %72, 1, !dbg !161
  %74 = sext i32 %73 to i64, !dbg !161
  %75 = getelementptr inbounds float, ptr %4, i64 %74, !dbg !161
  %76 = load float, ptr %75, align 4, !dbg !161, !tbaa !141
  tail call void @llvm.dbg.value(metadata float %76, metadata !78, metadata !DIExpression()), !dbg !162
  %77 = or disjoint i32 %73, 1, !dbg !163
  %78 = sext i32 %77 to i64, !dbg !163
  %79 = getelementptr inbounds float, ptr %4, i64 %78, !dbg !163
  %80 = load float, ptr %79, align 4, !dbg !163, !tbaa !141
  tail call void @llvm.dbg.value(metadata float %80, metadata !82, metadata !DIExpression()), !dbg !162
  %81 = fmul float %27, %76, !dbg !164
  %82 = fmul float %29, %80, !dbg !165
  %83 = fpext float %81 to double, !dbg !166
  %84 = fpext float %82 to double, !dbg !166
  %85 = fptrunc double %83 to float, !dbg !166
  %86 = fptrunc double %84 to float, !dbg !166
  %handler_result = call float @fSubHandlerFloat(float %85, float %86), !dbg !166
  tail call void @llvm.dbg.value(metadata float %handler_result, metadata !83, metadata !DIExpression()), !dbg !162
  %87 = fmul float %29, %76, !dbg !166
  %88 = fmul float %27, %80, !dbg !167
  %89 = fpext float %87 to double, !dbg !168
  %90 = fpext float %88 to double, !dbg !168
  %91 = fptrunc double %89 to float, !dbg !168
  %92 = fptrunc double %90 to float, !dbg !168
  %handler_result1 = call float @fAddHandlerFloat(float %91, float %92), !dbg !168
  tail call void @llvm.dbg.value(metadata float %handler_result1, metadata !84, metadata !DIExpression()), !dbg !162
  %93 = trunc i64 %63 to i32, !dbg !168
  %94 = shl nsw i32 %93, 1, !dbg !168
  %95 = sext i32 %94 to i64, !dbg !168
  %96 = getelementptr inbounds float, ptr %6, i64 %95, !dbg !168
  %97 = load float, ptr %96, align 4, !dbg !168, !tbaa !141
  tail call void @llvm.dbg.value(metadata float %97, metadata !85, metadata !DIExpression()), !dbg !162
  %98 = or disjoint i32 %94, 1, !dbg !169
  %99 = sext i32 %98 to i64, !dbg !169
  %100 = getelementptr inbounds float, ptr %6, i64 %99, !dbg !169
  %101 = load float, ptr %100, align 4, !dbg !169, !tbaa !141
  tail call void @llvm.dbg.value(metadata float %101, metadata !86, metadata !DIExpression()), !dbg !162
  %102 = fmul float %27, %97, !dbg !170
  %103 = fmul float %29, %101, !dbg !171
  %104 = fpext float %102 to double, !dbg !172
  %105 = fpext float %103 to double, !dbg !172
  %106 = fptrunc double %104 to float, !dbg !172
  %107 = fptrunc double %105 to float, !dbg !172
  %handler_result2 = call float @fAddHandlerFloat(float %106, float %107), !dbg !172
  tail call void @llvm.dbg.value(metadata float %handler_result2, metadata !87, metadata !DIExpression()), !dbg !162
  %108 = fmul float %27, %101, !dbg !172
  %109 = fmul float %29, %97, !dbg !173
  %110 = fpext float %108 to double, !dbg !174
  %111 = fpext float %109 to double, !dbg !174
  %112 = fptrunc double %110 to float, !dbg !174
  %113 = fptrunc double %111 to float, !dbg !174
  %handler_result3 = call float @fSubHandlerFloat(float %112, float %113), !dbg !174
  tail call void @llvm.dbg.value(metadata float %handler_result3, metadata !88, metadata !DIExpression()), !dbg !162
  %114 = add i64 %64, %53, !dbg !174
  tail call void @llvm.dbg.value(metadata i64 %114, metadata !89, metadata !DIExpression()), !dbg !162
  %115 = add i64 %63, %54, !dbg !175
  tail call void @llvm.dbg.value(metadata i64 %115, metadata !90, metadata !DIExpression()), !dbg !162
  %116 = fmul float %97, %handler_result, !dbg !176
  %117 = fmul float %handler_result1, %101, !dbg !177
  %118 = fpext float %116 to double, !dbg !178
  %119 = fpext float %117 to double, !dbg !178
  %120 = fptrunc double %118 to float, !dbg !178
  %121 = fptrunc double %119 to float, !dbg !178
  %handler_result4 = call float @fAddHandlerFloat(float %120, float %121), !dbg !178
  %122 = fmul float %handler_result4, 2.000000e+00, !dbg !178
  %123 = add i32 %51, %68, !dbg !179
  %124 = mul nsw i32 %123, %69, !dbg !179
  %125 = sdiv i32 %124, 2, !dbg !179
  %126 = shl nsw i32 %125, 1, !dbg !179
  %127 = sext i32 %126 to i64, !dbg !179
  %128 = getelementptr inbounds float, ptr %8, i64 %127, !dbg !179
  %129 = load float, ptr %128, align 4, !dbg !180, !tbaa !141
  %130 = fpext float %129 to double, !dbg !180
  %131 = fpext float %122 to double, !dbg !180
  %132 = fptrunc double %130 to float, !dbg !180
  %133 = fptrunc double %131 to float, !dbg !180
  %handler_result5 = call float @fAddHandlerFloat(float %132, float %133), !dbg !180
  store float %handler_result5, ptr %128, align 4, !dbg !180, !tbaa !141
  %134 = or disjoint i32 %126, 1, !dbg !181
  %135 = sext i32 %134 to i64, !dbg !181
  %136 = getelementptr inbounds float, ptr %8, i64 %135, !dbg !181
  store float 0.000000e+00, ptr %136, align 4, !dbg !182, !tbaa !141
  %137 = add nuw nsw i32 %69, 1, !dbg !183
  tail call void @llvm.dbg.value(metadata i32 %137, metadata !67, metadata !DIExpression()), !dbg !125
  %138 = icmp slt i32 %137, %2, !dbg !184
  br i1 %138, label %139, label %58, !dbg !185

139:                                              ; preds = %62
  %140 = zext i32 %71 to i64, !dbg !161
  %141 = zext i32 %70 to i64, !dbg !161
  %142 = add i32 %125, %68
  br label %143, !dbg !185

143:                                              ; preds = %143, %139
  %144 = phi i64 [ %140, %139 ], [ %217, %143 ]
  %145 = phi i64 [ %141, %139 ], [ %216, %143 ]
  %146 = phi i64 [ %67, %139 ], [ %218, %143 ]
  tail call void @llvm.dbg.value(metadata i64 %146, metadata !67, metadata !DIExpression()), !dbg !125
  tail call void @llvm.dbg.value(metadata i64 %145, metadata !89, metadata !DIExpression()), !dbg !162
  tail call void @llvm.dbg.value(metadata i64 %144, metadata !90, metadata !DIExpression()), !dbg !162
  %147 = trunc i64 %145 to i32, !dbg !186
  %148 = shl nsw i32 %147, 1, !dbg !186
  %149 = sext i32 %148 to i64, !dbg !186
  %150 = getelementptr inbounds float, ptr %4, i64 %149, !dbg !186
  %151 = load float, ptr %150, align 4, !dbg !186, !tbaa !141
  tail call void @llvm.dbg.value(metadata float %151, metadata !91, metadata !DIExpression()), !dbg !187
  %152 = or disjoint i32 %148, 1, !dbg !188
  %153 = sext i32 %152 to i64, !dbg !188
  %154 = getelementptr inbounds float, ptr %4, i64 %153, !dbg !188
  %155 = load float, ptr %154, align 4, !dbg !188, !tbaa !141
  tail call void @llvm.dbg.value(metadata float %155, metadata !95, metadata !DIExpression()), !dbg !187
  %156 = trunc i64 %144 to i32, !dbg !189
  %157 = shl nsw i32 %156, 1, !dbg !189
  %158 = sext i32 %157 to i64, !dbg !189
  %159 = getelementptr inbounds float, ptr %6, i64 %158, !dbg !189
  %160 = load float, ptr %159, align 4, !dbg !189, !tbaa !141
  tail call void @llvm.dbg.value(metadata float %160, metadata !96, metadata !DIExpression()), !dbg !187
  %161 = or disjoint i32 %157, 1, !dbg !190
  %162 = sext i32 %161 to i64, !dbg !190
  %163 = getelementptr inbounds float, ptr %6, i64 %162, !dbg !190
  %164 = load float, ptr %163, align 4, !dbg !190, !tbaa !141
  tail call void @llvm.dbg.value(metadata float %164, metadata !97, metadata !DIExpression()), !dbg !187
  %165 = fmul float %handler_result, %160, !dbg !191
  %166 = fmul float %handler_result1, %164, !dbg !192
  %167 = fpext float %165 to double, !dbg !193
  %168 = fpext float %166 to double, !dbg !193
  %169 = fptrunc double %167 to float, !dbg !193
  %170 = fptrunc double %168 to float, !dbg !193
  %handler_result6 = call float @fAddHandlerFloat(float %169, float %170), !dbg !193
  %171 = fmul float %handler_result2, %151, !dbg !193
  %172 = fmul float %handler_result3, %155, !dbg !194
  %173 = fpext float %171 to double, !dbg !195
  %174 = fpext float %172 to double, !dbg !195
  %175 = fptrunc double %173 to float, !dbg !195
  %176 = fptrunc double %174 to float, !dbg !195
  %handler_result7 = call float @fAddHandlerFloat(float %175, float %176), !dbg !195
  %177 = fpext float %handler_result7 to double, !dbg !196
  %178 = fpext float %handler_result6 to double, !dbg !196
  %179 = fptrunc double %177 to float, !dbg !196
  %180 = fptrunc double %178 to float, !dbg !196
  %handler_result8 = call float @fAddHandlerFloat(float %179, float %180), !dbg !196
  %181 = trunc i64 %146 to i32, !dbg !196
  %182 = add i32 %142, %181, !dbg !196
  %183 = shl nsw i32 %182, 1, !dbg !196
  %184 = sext i32 %183 to i64, !dbg !196
  %185 = getelementptr inbounds float, ptr %8, i64 %184, !dbg !196
  %186 = load float, ptr %185, align 4, !dbg !197, !tbaa !141
  %187 = fpext float %186 to double, !dbg !197
  %188 = fpext float %handler_result8 to double, !dbg !197
  %189 = fptrunc double %187 to float, !dbg !197
  %190 = fptrunc double %188 to float, !dbg !197
  %handler_result9 = call float @fAddHandlerFloat(float %189, float %190), !dbg !197
  store float %handler_result9, ptr %185, align 4, !dbg !197, !tbaa !141
  %191 = fmul float %handler_result1, %160, !dbg !198
  %192 = fmul float %handler_result, %164, !dbg !199
  %193 = fpext float %191 to double, !dbg !200
  %194 = fpext float %192 to double, !dbg !200
  %195 = fptrunc double %193 to float, !dbg !200
  %196 = fptrunc double %194 to float, !dbg !200
  %handler_result10 = call float @fSubHandlerFloat(float %195, float %196), !dbg !200
  %197 = fmul float %handler_result3, %151, !dbg !200
  %198 = fmul float %handler_result2, %155, !dbg !201
  %199 = fpext float %197 to double, !dbg !202
  %200 = fpext float %198 to double, !dbg !202
  %201 = fptrunc double %199 to float, !dbg !202
  %202 = fptrunc double %200 to float, !dbg !202
  %handler_result11 = call float @fSubHandlerFloat(float %201, float %202), !dbg !202
  %203 = fpext float %handler_result11 to double, !dbg !203
  %204 = fpext float %handler_result10 to double, !dbg !203
  %205 = fptrunc double %203 to float, !dbg !203
  %206 = fptrunc double %204 to float, !dbg !203
  %handler_result12 = call float @fAddHandlerFloat(float %205, float %206), !dbg !203
  %207 = fmul float %handler_result12, %52, !dbg !203
  %208 = or disjoint i32 %183, 1, !dbg !204
  %209 = sext i32 %208 to i64, !dbg !204
  %210 = getelementptr inbounds float, ptr %8, i64 %209, !dbg !204
  %211 = load float, ptr %210, align 4, !dbg !205, !tbaa !141
  %212 = fpext float %211 to double, !dbg !205
  %213 = fpext float %207 to double, !dbg !205
  %214 = fptrunc double %212 to float, !dbg !205
  %215 = fptrunc double %213 to float, !dbg !205
  %handler_result13 = call float @fAddHandlerFloat(float %214, float %215), !dbg !205
  store float %handler_result13, ptr %210, align 4, !dbg !205, !tbaa !141
  %216 = add i64 %145, %53, !dbg !206
  tail call void @llvm.dbg.value(metadata i64 %216, metadata !89, metadata !DIExpression()), !dbg !162
  %217 = add i64 %144, %54, !dbg !207
  tail call void @llvm.dbg.value(metadata i64 %217, metadata !90, metadata !DIExpression()), !dbg !162
  %218 = add nuw nsw i64 %146, 1, !dbg !208
  tail call void @llvm.dbg.value(metadata i64 %218, metadata !67, metadata !DIExpression()), !dbg !125
  %219 = icmp eq i64 %218, %57, !dbg !184
  br i1 %219, label %58, label %143, !dbg !185, !llvm.loop !209

220:                                              ; preds = %37
  %221 = and i1 %34, %38, !dbg !211
  %222 = and i1 %10, %35
  %223 = or i1 %221, %222, !dbg !211
  br i1 %223, label %224, label %391, !dbg !211

224:                                              ; preds = %220
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !101, metadata !DIExpression()), !dbg !212
  tail call void @llvm.dbg.value(metadata i32 0, metadata !64, metadata !DIExpression()), !dbg !125
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !98, metadata !DIExpression()), !dbg !212
  %225 = icmp sgt i32 %2, 0, !dbg !213
  br i1 %225, label %226, label %392, !dbg !214

226:                                              ; preds = %224
  %227 = icmp sgt i32 %7, 0, !dbg !215
  %228 = sub nsw i32 1, %2, !dbg !216
  %229 = mul i32 %228, %7, !dbg !215
  %230 = select i1 %227, i32 0, i32 %229, !dbg !215
  tail call void @llvm.dbg.value(metadata i32 %230, metadata !101, metadata !DIExpression()), !dbg !212
  %231 = icmp sgt i32 %5, 0, !dbg !216
  %232 = mul i32 %228, %5, !dbg !216
  %233 = select i1 %231, i32 0, i32 %232, !dbg !216
  tail call void @llvm.dbg.value(metadata i32 %233, metadata !98, metadata !DIExpression()), !dbg !212
  %234 = sitofp i32 %11 to float
  %235 = zext i32 %230 to i64, !dbg !214
  %236 = zext i32 %7 to i64, !dbg !214
  %237 = zext i32 %233 to i64, !dbg !214
  %238 = zext i32 %5 to i64, !dbg !214
  br label %239, !dbg !214

239:                                              ; preds = %366, %226
  %240 = phi i64 [ %235, %226 ], [ %389, %366 ]
  %241 = phi i64 [ %237, %226 ], [ %388, %366 ]
  %242 = phi i32 [ 0, %226 ], [ %367, %366 ]
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !64, metadata !DIExpression()), !dbg !125
  tail call void @llvm.dbg.value(metadata i64 %241, metadata !98, metadata !DIExpression()), !dbg !212
  tail call void @llvm.dbg.value(metadata i64 %240, metadata !101, metadata !DIExpression()), !dbg !212
  %243 = trunc i64 %241 to i32, !dbg !217
  %244 = shl nsw i32 %243, 1, !dbg !217
  %245 = sext i32 %244 to i64, !dbg !217
  %246 = getelementptr inbounds float, ptr %4, i64 %245, !dbg !217
  %247 = load float, ptr %246, align 4, !dbg !217, !tbaa !141
  tail call void @llvm.dbg.value(metadata float %247, metadata !102, metadata !DIExpression()), !dbg !218
  %248 = or disjoint i32 %244, 1, !dbg !219
  %249 = sext i32 %248 to i64, !dbg !219
  %250 = getelementptr inbounds float, ptr %4, i64 %249, !dbg !219
  %251 = load float, ptr %250, align 4, !dbg !219, !tbaa !141
  tail call void @llvm.dbg.value(metadata float %251, metadata !106, metadata !DIExpression()), !dbg !218
  %252 = fmul float %27, %247, !dbg !220
  %253 = fmul float %29, %251, !dbg !221
  %254 = fpext float %252 to double, !dbg !222
  %255 = fpext float %253 to double, !dbg !222
  %256 = fptrunc double %254 to float, !dbg !222
  %257 = fptrunc double %255 to float, !dbg !222
  %handler_result14 = call float @fSubHandlerFloat(float %256, float %257), !dbg !222
  tail call void @llvm.dbg.value(metadata float %handler_result14, metadata !107, metadata !DIExpression()), !dbg !218
  %258 = fmul float %29, %247, !dbg !222
  %259 = fmul float %27, %251, !dbg !223
  %260 = fpext float %258 to double, !dbg !224
  %261 = fpext float %259 to double, !dbg !224
  %262 = fptrunc double %260 to float, !dbg !224
  %263 = fptrunc double %261 to float, !dbg !224
  %handler_result15 = call float @fAddHandlerFloat(float %262, float %263), !dbg !224
  tail call void @llvm.dbg.value(metadata float %handler_result15, metadata !108, metadata !DIExpression()), !dbg !218
  %264 = trunc i64 %240 to i32, !dbg !224
  %265 = shl nsw i32 %264, 1, !dbg !224
  %266 = sext i32 %265 to i64, !dbg !224
  %267 = getelementptr inbounds float, ptr %6, i64 %266, !dbg !224
  %268 = load float, ptr %267, align 4, !dbg !224, !tbaa !141
  tail call void @llvm.dbg.value(metadata float %268, metadata !109, metadata !DIExpression()), !dbg !218
  %269 = or disjoint i32 %265, 1, !dbg !225
  %270 = sext i32 %269 to i64, !dbg !225
  %271 = getelementptr inbounds float, ptr %6, i64 %270, !dbg !225
  %272 = load float, ptr %271, align 4, !dbg !225, !tbaa !141
  tail call void @llvm.dbg.value(metadata float %272, metadata !110, metadata !DIExpression()), !dbg !218
  %273 = fmul float %27, %268, !dbg !226
  %274 = fmul float %29, %272, !dbg !227
  %275 = fpext float %273 to double, !dbg !228
  %276 = fpext float %274 to double, !dbg !228
  %277 = fptrunc double %275 to float, !dbg !228
  %278 = fptrunc double %276 to float, !dbg !228
  %handler_result16 = call float @fAddHandlerFloat(float %277, float %278), !dbg !228
  tail call void @llvm.dbg.value(metadata float %handler_result16, metadata !111, metadata !DIExpression()), !dbg !218
  %279 = fmul float %27, %272, !dbg !228
  %280 = fmul float %29, %268, !dbg !229
  %281 = fpext float %279 to double, !dbg !230
  %282 = fpext float %280 to double, !dbg !230
  %283 = fptrunc double %281 to float, !dbg !230
  %284 = fptrunc double %282 to float, !dbg !230
  %handler_result17 = call float @fSubHandlerFloat(float %283, float %284), !dbg !230
  tail call void @llvm.dbg.value(metadata float %handler_result17, metadata !112, metadata !DIExpression()), !dbg !218
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !113, metadata !DIExpression()), !dbg !218
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !114, metadata !DIExpression()), !dbg !218
  tail call void @llvm.dbg.value(metadata i32 0, metadata !67, metadata !DIExpression()), !dbg !125
  %285 = icmp eq i32 %242, 0, !dbg !230
  br i1 %285, label %366, label %286, !dbg !231

286:                                              ; preds = %239
  %287 = add nuw nsw i32 %242, 1
  %288 = mul nsw i32 %287, %242
  br label %289, !dbg !231

289:                                              ; preds = %289, %286
  %290 = phi i64 [ %237, %286 ], [ %362, %289 ]
  %291 = phi i64 [ %235, %286 ], [ %363, %289 ]
  %292 = phi i32 [ 0, %286 ], [ %364, %289 ]
  tail call void @llvm.dbg.value(metadata i32 %292, metadata !67, metadata !DIExpression()), !dbg !125
  tail call void @llvm.dbg.value(metadata i64 %291, metadata !114, metadata !DIExpression()), !dbg !218
  tail call void @llvm.dbg.value(metadata i64 %290, metadata !113, metadata !DIExpression()), !dbg !218
  %293 = trunc i64 %290 to i32, !dbg !232
  %294 = shl nsw i32 %293, 1, !dbg !232
  %295 = sext i32 %294 to i64, !dbg !232
  %296 = getelementptr inbounds float, ptr %4, i64 %295, !dbg !232
  %297 = load float, ptr %296, align 4, !dbg !232, !tbaa !141
  tail call void @llvm.dbg.value(metadata float %297, metadata !115, metadata !DIExpression()), !dbg !233
  %298 = or disjoint i32 %294, 1, !dbg !234
  %299 = sext i32 %298 to i64, !dbg !234
  %300 = getelementptr inbounds float, ptr %4, i64 %299, !dbg !234
  %301 = load float, ptr %300, align 4, !dbg !234, !tbaa !141
  tail call void @llvm.dbg.value(metadata float %301, metadata !119, metadata !DIExpression()), !dbg !233
  %302 = trunc i64 %291 to i32, !dbg !235
  %303 = shl nsw i32 %302, 1, !dbg !235
  %304 = sext i32 %303 to i64, !dbg !235
  %305 = getelementptr inbounds float, ptr %6, i64 %304, !dbg !235
  %306 = load float, ptr %305, align 4, !dbg !235, !tbaa !141
  tail call void @llvm.dbg.value(metadata float %306, metadata !120, metadata !DIExpression()), !dbg !233
  %307 = or disjoint i32 %303, 1, !dbg !236
  %308 = sext i32 %307 to i64, !dbg !236
  %309 = getelementptr inbounds float, ptr %6, i64 %308, !dbg !236
  %310 = load float, ptr %309, align 4, !dbg !236, !tbaa !141
  tail call void @llvm.dbg.value(metadata float %310, metadata !121, metadata !DIExpression()), !dbg !233
  %311 = fmul float %handler_result14, %306, !dbg !237
  %312 = fmul float %handler_result15, %310, !dbg !238
  %313 = fpext float %311 to double, !dbg !239
  %314 = fpext float %312 to double, !dbg !239
  %315 = fptrunc double %313 to float, !dbg !239
  %316 = fptrunc double %314 to float, !dbg !239
  %handler_result18 = call float @fAddHandlerFloat(float %315, float %316), !dbg !239
  %317 = fmul float %handler_result16, %297, !dbg !239
  %318 = fmul float %handler_result17, %301, !dbg !240
  %319 = fpext float %317 to double, !dbg !241
  %320 = fpext float %318 to double, !dbg !241
  %321 = fptrunc double %319 to float, !dbg !241
  %322 = fptrunc double %320 to float, !dbg !241
  %handler_result19 = call float @fAddHandlerFloat(float %321, float %322), !dbg !241
  %323 = fpext float %handler_result19 to double, !dbg !242
  %324 = fpext float %handler_result18 to double, !dbg !242
  %325 = fptrunc double %323 to float, !dbg !242
  %326 = fptrunc double %324 to float, !dbg !242
  %handler_result20 = call float @fAddHandlerFloat(float %325, float %326), !dbg !242
  %327 = shl nuw i32 %292, 1, !dbg !242
  %328 = add i32 %327, %288, !dbg !242
  %329 = and i32 %328, -2, !dbg !242
  %330 = sext i32 %329 to i64, !dbg !242
  %331 = getelementptr inbounds float, ptr %8, i64 %330, !dbg !242
  %332 = load float, ptr %331, align 4, !dbg !243, !tbaa !141
  %333 = fpext float %332 to double, !dbg !243
  %334 = fpext float %handler_result20 to double, !dbg !243
  %335 = fptrunc double %333 to float, !dbg !243
  %336 = fptrunc double %334 to float, !dbg !243
  %handler_result21 = call float @fAddHandlerFloat(float %335, float %336), !dbg !243
  store float %handler_result21, ptr %331, align 4, !dbg !243, !tbaa !141
  %337 = fmul float %handler_result15, %306, !dbg !244
  %338 = fmul float %handler_result14, %310, !dbg !245
  %339 = fpext float %337 to double, !dbg !246
  %340 = fpext float %338 to double, !dbg !246
  %341 = fptrunc double %339 to float, !dbg !246
  %342 = fptrunc double %340 to float, !dbg !246
  %handler_result22 = call float @fSubHandlerFloat(float %341, float %342), !dbg !246
  %343 = fmul float %handler_result17, %297, !dbg !246
  %344 = fmul float %handler_result16, %301, !dbg !247
  %345 = fpext float %343 to double, !dbg !248
  %346 = fpext float %344 to double, !dbg !248
  %347 = fptrunc double %345 to float, !dbg !248
  %348 = fptrunc double %346 to float, !dbg !248
  %handler_result23 = call float @fSubHandlerFloat(float %347, float %348), !dbg !248
  %349 = fpext float %handler_result23 to double, !dbg !249
  %350 = fpext float %handler_result22 to double, !dbg !249
  %351 = fptrunc double %349 to float, !dbg !249
  %352 = fptrunc double %350 to float, !dbg !249
  %handler_result24 = call float @fAddHandlerFloat(float %351, float %352), !dbg !249
  %353 = fmul float %handler_result24, %234, !dbg !249
  %354 = or i32 %328, 1, !dbg !250
  %355 = sext i32 %354 to i64, !dbg !250
  %356 = getelementptr inbounds float, ptr %8, i64 %355, !dbg !250
  %357 = load float, ptr %356, align 4, !dbg !251, !tbaa !141
  %358 = fpext float %357 to double, !dbg !251
  %359 = fpext float %353 to double, !dbg !251
  %360 = fptrunc double %358 to float, !dbg !251
  %361 = fptrunc double %359 to float, !dbg !251
  %handler_result25 = call float @fAddHandlerFloat(float %360, float %361), !dbg !251
  store float %handler_result25, ptr %356, align 4, !dbg !251, !tbaa !141
  %362 = add i64 %290, %238, !dbg !252
  tail call void @llvm.dbg.value(metadata i64 %362, metadata !113, metadata !DIExpression()), !dbg !218
  %363 = add i64 %291, %236, !dbg !253
  tail call void @llvm.dbg.value(metadata i64 %363, metadata !114, metadata !DIExpression()), !dbg !218
  %364 = add nuw nsw i32 %292, 1, !dbg !254
  tail call void @llvm.dbg.value(metadata i32 %364, metadata !67, metadata !DIExpression()), !dbg !125
  %365 = icmp eq i32 %364, %242, !dbg !230
  br i1 %365, label %366, label %289, !dbg !231, !llvm.loop !255

366:                                              ; preds = %289, %239
  %367 = phi i32 [ 1, %239 ], [ %287, %289 ], !dbg !257
  %368 = fmul float %268, %handler_result14, !dbg !258
  %369 = fmul float %handler_result15, %272, !dbg !259
  %370 = fpext float %368 to double, !dbg !260
  %371 = fpext float %369 to double, !dbg !260
  %372 = fptrunc double %370 to float, !dbg !260
  %373 = fptrunc double %371 to float, !dbg !260
  %handler_result26 = call float @fAddHandlerFloat(float %372, float %373), !dbg !260
  %374 = fmul float %handler_result26, 2.000000e+00, !dbg !260
  %375 = add nuw i32 %242, 3, !dbg !257
  %376 = mul i32 %375, %242, !dbg !257
  %377 = and i32 %376, -2, !dbg !257
  %378 = sext i32 %377 to i64, !dbg !257
  %379 = getelementptr inbounds float, ptr %8, i64 %378, !dbg !257
  %380 = load float, ptr %379, align 4, !dbg !261, !tbaa !141
  %381 = fpext float %374 to double, !dbg !261
  %382 = fpext float %380 to double, !dbg !261
  %383 = fptrunc double %381 to float, !dbg !261
  %384 = fptrunc double %382 to float, !dbg !261
  %handler_result27 = call float @fAddHandlerFloat(float %383, float %384), !dbg !261
  store float %handler_result27, ptr %379, align 4, !dbg !261, !tbaa !141
  %385 = or i32 %376, 1, !dbg !262
  %386 = sext i32 %385 to i64, !dbg !262
  %387 = getelementptr inbounds float, ptr %8, i64 %386, !dbg !262
  store float 0.000000e+00, ptr %387, align 4, !dbg !263, !tbaa !141
  %388 = add i64 %241, %238, !dbg !264
  tail call void @llvm.dbg.value(metadata i64 %388, metadata !98, metadata !DIExpression()), !dbg !212
  %389 = add i64 %240, %236, !dbg !265
  tail call void @llvm.dbg.value(metadata i32 %367, metadata !64, metadata !DIExpression()), !dbg !125
  tail call void @llvm.dbg.value(metadata i64 %389, metadata !101, metadata !DIExpression()), !dbg !212
  %390 = icmp eq i32 %367, %2, !dbg !213
  br i1 %390, label %392, label %239, !dbg !214, !llvm.loop !266

391:                                              ; preds = %220
  tail call void (i32, ptr, ptr, ...) @cblas_xerbla(i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #3, !dbg !268
  br label %392

392:                                              ; preds = %391, %366, %224, %58, %40, %26
  ret void, !dbg !270
}

declare !dbg !272 void @cblas_xerbla(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

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
!2 = !DIFile(filename: "./source_hpr2.h", directory: "/PI-detector/external/gsl/gsl-2.5/cblas", checksumkind: CSK_MD5, checksum: "e992fc2ac6832e81a962dc3f1becb6f6")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 16)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 24, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 1)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 116, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 23)
!17 = distinct !DICompileUnit(language: DW_LANG_C11, file: !18, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !19, retainedTypes: !30, globals: !35, splitDebugInlining: false, nameTableKind: None)
!18 = !DIFile(filename: "chpr2.c", directory: "/PI-detector/external/gsl/gsl-2.5/cblas", checksumkind: CSK_MD5, checksum: "ab31ffd928f7211c39789b6b83940114")
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
!44 = distinct !DISubprogram(name: "cblas_chpr2", scope: !18, file: !18, line: 7, type: !45, scopeLine: 10, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !54)
!45 = !DISubroutineType(types: !46)
!46 = !{null, !47, !48, !49, !51, !51, !49, !51, !49, !53}
!47 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!48 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !26)
!49 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!50 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!54 = !{!55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !67, !68, !69, !71, !73, !74, !77, !78, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !95, !96, !97, !98, !101, !102, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !119, !120, !121}
!55 = !DILocalVariable(name: "order", arg: 1, scope: !44, file: !18, line: 7, type: !47)
!56 = !DILocalVariable(name: "Uplo", arg: 2, scope: !44, file: !18, line: 7, type: !48)
!57 = !DILocalVariable(name: "N", arg: 3, scope: !44, file: !18, line: 8, type: !49)
!58 = !DILocalVariable(name: "alpha", arg: 4, scope: !44, file: !18, line: 8, type: !51)
!59 = !DILocalVariable(name: "X", arg: 5, scope: !44, file: !18, line: 8, type: !51)
!60 = !DILocalVariable(name: "incX", arg: 6, scope: !44, file: !18, line: 8, type: !49)
!61 = !DILocalVariable(name: "Y", arg: 7, scope: !44, file: !18, line: 9, type: !51)
!62 = !DILocalVariable(name: "incY", arg: 8, scope: !44, file: !18, line: 9, type: !49)
!63 = !DILocalVariable(name: "Ap", arg: 9, scope: !44, file: !18, line: 9, type: !53)
!64 = !DILocalVariable(name: "i", scope: !65, file: !2, line: 21, type: !50)
!65 = distinct !DILexicalBlock(scope: !66, file: !2, line: 20, column: 1)
!66 = !DILexicalBlockFile(scope: !44, file: !2, discriminator: 0)
!67 = !DILocalVariable(name: "j", scope: !65, file: !2, line: 21, type: !50)
!68 = !DILocalVariable(name: "conj", scope: !65, file: !2, line: 22, type: !49)
!69 = !DILocalVariable(name: "pos", scope: !70, file: !2, line: 24, type: !50)
!70 = distinct !DILexicalBlock(scope: !65, file: !2, line: 24, column: 3)
!71 = !DILocalVariable(name: "alpha_real", scope: !72, file: !2, line: 27, type: !32)
!72 = distinct !DILexicalBlock(scope: !65, file: !2, line: 26, column: 3)
!73 = !DILocalVariable(name: "alpha_imag", scope: !72, file: !2, line: 28, type: !32)
!74 = !DILocalVariable(name: "ix", scope: !75, file: !2, line: 35, type: !50)
!75 = distinct !DILexicalBlock(scope: !76, file: !2, line: 34, column: 60)
!76 = distinct !DILexicalBlock(scope: !72, file: !2, line: 33, column: 9)
!77 = !DILocalVariable(name: "iy", scope: !75, file: !2, line: 36, type: !50)
!78 = !DILocalVariable(name: "Xi_real", scope: !79, file: !2, line: 38, type: !32)
!79 = distinct !DILexicalBlock(scope: !80, file: !2, line: 37, column: 31)
!80 = distinct !DILexicalBlock(scope: !81, file: !2, line: 37, column: 7)
!81 = distinct !DILexicalBlock(scope: !75, file: !2, line: 37, column: 7)
!82 = !DILocalVariable(name: "Xi_imag", scope: !79, file: !2, line: 39, type: !32)
!83 = !DILocalVariable(name: "tmp1_real", scope: !79, file: !2, line: 41, type: !32)
!84 = !DILocalVariable(name: "tmp1_imag", scope: !79, file: !2, line: 42, type: !32)
!85 = !DILocalVariable(name: "Yi_real", scope: !79, file: !2, line: 44, type: !32)
!86 = !DILocalVariable(name: "Yi_imag", scope: !79, file: !2, line: 45, type: !32)
!87 = !DILocalVariable(name: "tmp2_real", scope: !79, file: !2, line: 47, type: !32)
!88 = !DILocalVariable(name: "tmp2_imag", scope: !79, file: !2, line: 48, type: !32)
!89 = !DILocalVariable(name: "jx", scope: !79, file: !2, line: 50, type: !50)
!90 = !DILocalVariable(name: "jy", scope: !79, file: !2, line: 51, type: !50)
!91 = !DILocalVariable(name: "Xj_real", scope: !92, file: !2, line: 59, type: !32)
!92 = distinct !DILexicalBlock(scope: !93, file: !2, line: 58, column: 37)
!93 = distinct !DILexicalBlock(scope: !94, file: !2, line: 58, column: 9)
!94 = distinct !DILexicalBlock(scope: !79, file: !2, line: 58, column: 9)
!95 = !DILocalVariable(name: "Xj_imag", scope: !92, file: !2, line: 60, type: !32)
!96 = !DILocalVariable(name: "Yj_real", scope: !92, file: !2, line: 61, type: !32)
!97 = !DILocalVariable(name: "Yj_imag", scope: !92, file: !2, line: 62, type: !32)
!98 = !DILocalVariable(name: "ix", scope: !99, file: !2, line: 77, type: !50)
!99 = distinct !DILexicalBlock(scope: !100, file: !2, line: 75, column: 67)
!100 = distinct !DILexicalBlock(scope: !76, file: !2, line: 74, column: 16)
!101 = !DILocalVariable(name: "iy", scope: !99, file: !2, line: 78, type: !50)
!102 = !DILocalVariable(name: "Xi_real", scope: !103, file: !2, line: 80, type: !32)
!103 = distinct !DILexicalBlock(scope: !104, file: !2, line: 79, column: 31)
!104 = distinct !DILexicalBlock(scope: !105, file: !2, line: 79, column: 7)
!105 = distinct !DILexicalBlock(scope: !99, file: !2, line: 79, column: 7)
!106 = !DILocalVariable(name: "Xi_imag", scope: !103, file: !2, line: 81, type: !32)
!107 = !DILocalVariable(name: "tmp1_real", scope: !103, file: !2, line: 82, type: !32)
!108 = !DILocalVariable(name: "tmp1_imag", scope: !103, file: !2, line: 83, type: !32)
!109 = !DILocalVariable(name: "Yi_real", scope: !103, file: !2, line: 85, type: !32)
!110 = !DILocalVariable(name: "Yi_imag", scope: !103, file: !2, line: 86, type: !32)
!111 = !DILocalVariable(name: "tmp2_real", scope: !103, file: !2, line: 87, type: !32)
!112 = !DILocalVariable(name: "tmp2_imag", scope: !103, file: !2, line: 88, type: !32)
!113 = !DILocalVariable(name: "jx", scope: !103, file: !2, line: 90, type: !50)
!114 = !DILocalVariable(name: "jy", scope: !103, file: !2, line: 91, type: !50)
!115 = !DILocalVariable(name: "Xj_real", scope: !116, file: !2, line: 96, type: !32)
!116 = distinct !DILexicalBlock(scope: !117, file: !2, line: 95, column: 33)
!117 = distinct !DILexicalBlock(scope: !118, file: !2, line: 95, column: 9)
!118 = distinct !DILexicalBlock(scope: !103, file: !2, line: 95, column: 9)
!119 = !DILocalVariable(name: "Xj_imag", scope: !116, file: !2, line: 97, type: !32)
!120 = !DILocalVariable(name: "Yj_real", scope: !116, file: !2, line: 98, type: !32)
!121 = !DILocalVariable(name: "Yj_imag", scope: !116, file: !2, line: 99, type: !32)
!122 = !DILocation(line: 0, scope: !44)
!123 = !DILocation(line: 22, column: 27, scope: !65)
!124 = !DILocation(line: 22, column: 20, scope: !65)
!125 = !DILocation(line: 0, scope: !65)
!126 = !DILocation(line: 0, scope: !70)
!127 = !DILocation(line: 24, column: 3, scope: !128)
!128 = distinct !DILexicalBlock(scope: !70, file: !2, line: 24, column: 3)
!129 = !DILocation(line: 24, column: 3, scope: !130)
!130 = distinct !DILexicalBlock(scope: !70, file: !2, line: 24, column: 3)
!131 = !DILocation(line: 24, column: 3, scope: !132)
!132 = distinct !DILexicalBlock(scope: !70, file: !2, line: 24, column: 3)
!133 = !DILocation(line: 24, column: 3, scope: !70)
!134 = !DILocation(line: 24, column: 3, scope: !135)
!135 = distinct !DILexicalBlock(scope: !70, file: !2, line: 24, column: 3)
!136 = !DILocation(line: 24, column: 3, scope: !137)
!137 = distinct !DILexicalBlock(scope: !70, file: !2, line: 24, column: 3)
!138 = !DILocation(line: 24, column: 3, scope: !139)
!139 = distinct !DILexicalBlock(scope: !70, file: !2, line: 24, column: 3)
!140 = !DILocation(line: 27, column: 29, scope: !72)
!141 = !{!142, !142, i64 0}
!142 = !{!"float", !143, i64 0}
!143 = !{!"omnipotent char", !144, i64 0}
!144 = !{!"Simple C/C++ TBAA"}
!145 = !DILocation(line: 0, scope: !72)
!146 = !DILocation(line: 28, column: 29, scope: !72)
!147 = !DILocation(line: 30, column: 20, scope: !148)
!148 = distinct !DILexicalBlock(scope: !72, file: !2, line: 30, column: 9)
!149 = !DILocation(line: 30, column: 27, scope: !148)
!150 = !DILocation(line: 33, column: 16, scope: !76)
!151 = !DILocation(line: 33, column: 33, scope: !76)
!152 = !DILocation(line: 34, column: 36, scope: !76)
!153 = !DILocation(line: 0, scope: !75)
!154 = !DILocation(line: 37, column: 21, scope: !80)
!155 = !DILocation(line: 37, column: 7, scope: !81)
!156 = !DILocation(line: 36, column: 18, scope: !75)
!157 = !DILocation(line: 35, column: 18, scope: !75)
!158 = distinct !{!158, !155, !159, !160}
!159 = !DILocation(line: 73, column: 7, scope: !81)
!160 = !{!"llvm.loop.mustprogress"}
!161 = !DILocation(line: 38, column: 30, scope: !79)
!162 = !DILocation(line: 0, scope: !79)
!163 = !DILocation(line: 39, column: 30, scope: !79)
!164 = !DILocation(line: 41, column: 43, scope: !79)
!165 = !DILocation(line: 41, column: 66, scope: !79)
!166 = !DILocation(line: 42, column: 43, scope: !79)
!167 = !DILocation(line: 42, column: 66, scope: !79)
!168 = !DILocation(line: 44, column: 30, scope: !79)
!169 = !DILocation(line: 45, column: 30, scope: !79)
!170 = !DILocation(line: 47, column: 43, scope: !79)
!171 = !DILocation(line: 47, column: 66, scope: !79)
!172 = !DILocation(line: 48, column: 67, scope: !79)
!173 = !DILocation(line: 48, column: 54, scope: !79)
!174 = !DILocation(line: 50, column: 23, scope: !79)
!175 = !DILocation(line: 51, column: 23, scope: !79)
!176 = !DILocation(line: 55, column: 51, scope: !79)
!177 = !DILocation(line: 55, column: 73, scope: !79)
!178 = !DILocation(line: 55, column: 38, scope: !79)
!179 = !DILocation(line: 55, column: 9, scope: !79)
!180 = !DILocation(line: 55, column: 33, scope: !79)
!181 = !DILocation(line: 56, column: 9, scope: !79)
!182 = !DILocation(line: 56, column: 33, scope: !79)
!183 = !DILocation(line: 58, column: 20, scope: !94)
!184 = !DILocation(line: 58, column: 27, scope: !93)
!185 = !DILocation(line: 58, column: 9, scope: !94)
!186 = !DILocation(line: 59, column: 32, scope: !92)
!187 = !DILocation(line: 0, scope: !92)
!188 = !DILocation(line: 60, column: 32, scope: !92)
!189 = !DILocation(line: 61, column: 32, scope: !92)
!190 = !DILocation(line: 62, column: 32, scope: !92)
!191 = !DILocation(line: 63, column: 50, scope: !92)
!192 = !DILocation(line: 63, column: 72, scope: !92)
!193 = !DILocation(line: 64, column: 52, scope: !92)
!194 = !DILocation(line: 64, column: 74, scope: !92)
!195 = !DILocation(line: 64, column: 39, scope: !92)
!196 = !DILocation(line: 63, column: 11, scope: !92)
!197 = !DILocation(line: 63, column: 35, scope: !92)
!198 = !DILocation(line: 66, column: 32, scope: !92)
!199 = !DILocation(line: 66, column: 54, scope: !92)
!200 = !DILocation(line: 67, column: 32, scope: !92)
!201 = !DILocation(line: 67, column: 54, scope: !92)
!202 = !DILocation(line: 66, column: 65, scope: !92)
!203 = !DILocation(line: 66, column: 18, scope: !92)
!204 = !DILocation(line: 65, column: 11, scope: !92)
!205 = !DILocation(line: 65, column: 35, scope: !92)
!206 = !DILocation(line: 68, column: 14, scope: !92)
!207 = !DILocation(line: 69, column: 14, scope: !92)
!208 = !DILocation(line: 58, column: 33, scope: !93)
!209 = distinct !{!209, !185, !210, !160}
!210 = !DILocation(line: 70, column: 9, scope: !94)
!211 = !DILocation(line: 74, column: 40, scope: !100)
!212 = !DILocation(line: 0, scope: !99)
!213 = !DILocation(line: 79, column: 21, scope: !104)
!214 = !DILocation(line: 79, column: 7, scope: !105)
!215 = !DILocation(line: 78, column: 18, scope: !99)
!216 = !DILocation(line: 77, column: 18, scope: !99)
!217 = !DILocation(line: 80, column: 30, scope: !103)
!218 = !DILocation(line: 0, scope: !103)
!219 = !DILocation(line: 81, column: 30, scope: !103)
!220 = !DILocation(line: 82, column: 43, scope: !103)
!221 = !DILocation(line: 82, column: 66, scope: !103)
!222 = !DILocation(line: 83, column: 43, scope: !103)
!223 = !DILocation(line: 83, column: 66, scope: !103)
!224 = !DILocation(line: 85, column: 30, scope: !103)
!225 = !DILocation(line: 86, column: 30, scope: !103)
!226 = !DILocation(line: 87, column: 43, scope: !103)
!227 = !DILocation(line: 87, column: 66, scope: !103)
!228 = !DILocation(line: 88, column: 67, scope: !103)
!229 = !DILocation(line: 88, column: 54, scope: !103)
!230 = !DILocation(line: 95, column: 23, scope: !117)
!231 = !DILocation(line: 95, column: 9, scope: !118)
!232 = !DILocation(line: 96, column: 32, scope: !116)
!233 = !DILocation(line: 0, scope: !116)
!234 = !DILocation(line: 97, column: 32, scope: !116)
!235 = !DILocation(line: 98, column: 32, scope: !116)
!236 = !DILocation(line: 99, column: 32, scope: !116)
!237 = !DILocation(line: 100, column: 50, scope: !116)
!238 = !DILocation(line: 100, column: 72, scope: !116)
!239 = !DILocation(line: 101, column: 52, scope: !116)
!240 = !DILocation(line: 101, column: 74, scope: !116)
!241 = !DILocation(line: 101, column: 39, scope: !116)
!242 = !DILocation(line: 100, column: 11, scope: !116)
!243 = !DILocation(line: 100, column: 35, scope: !116)
!244 = !DILocation(line: 103, column: 32, scope: !116)
!245 = !DILocation(line: 103, column: 54, scope: !116)
!246 = !DILocation(line: 104, column: 32, scope: !116)
!247 = !DILocation(line: 104, column: 54, scope: !116)
!248 = !DILocation(line: 103, column: 65, scope: !116)
!249 = !DILocation(line: 103, column: 18, scope: !116)
!250 = !DILocation(line: 102, column: 11, scope: !116)
!251 = !DILocation(line: 102, column: 35, scope: !116)
!252 = !DILocation(line: 105, column: 14, scope: !116)
!253 = !DILocation(line: 106, column: 14, scope: !116)
!254 = !DILocation(line: 95, column: 29, scope: !117)
!255 = distinct !{!255, !231, !256, !160}
!256 = !DILocation(line: 107, column: 9, scope: !118)
!257 = !DILocation(line: 109, column: 9, scope: !103)
!258 = !DILocation(line: 109, column: 51, scope: !103)
!259 = !DILocation(line: 109, column: 73, scope: !103)
!260 = !DILocation(line: 109, column: 38, scope: !103)
!261 = !DILocation(line: 109, column: 33, scope: !103)
!262 = !DILocation(line: 110, column: 9, scope: !103)
!263 = !DILocation(line: 110, column: 33, scope: !103)
!264 = !DILocation(line: 112, column: 12, scope: !103)
!265 = !DILocation(line: 113, column: 12, scope: !103)
!266 = distinct !{!266, !214, !267, !160}
!267 = !DILocation(line: 114, column: 7, scope: !105)
!268 = !DILocation(line: 116, column: 7, scope: !269)
!269 = distinct !DILexicalBlock(scope: !100, file: !2, line: 115, column: 12)
!270 = !DILocation(line: 14, column: 1, scope: !271)
!271 = !DILexicalBlockFile(scope: !44, file: !18, discriminator: 0)
!272 = !DISubprogram(name: "cblas_xerbla", scope: !21, file: !21, line: 602, type: !273, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!273 = !DISubroutineType(types: !274)
!274 = !{null, !50, !275, !275, null}
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!276 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
