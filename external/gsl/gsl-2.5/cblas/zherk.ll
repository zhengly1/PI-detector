; ModuleID = 'zherk.c'
source_filename = "zherk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"./source_herk.h\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !7
@.str.2 = private unnamed_addr constant [23 x i8] c"unrecognized operation\00", align 1, !dbg !12

; Function Attrs: nounwind uwtable
define dso_local void @cblas_zherk(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, double noundef %5, ptr nocapture noundef readonly %6, i32 noundef %7, double noundef %8, ptr nocapture noundef %9, i32 noundef %10) local_unnamed_addr #0 !dbg !49 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !61, metadata !DIExpression()), !dbg !151
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !62, metadata !DIExpression()), !dbg !151
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !63, metadata !DIExpression()), !dbg !151
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !64, metadata !DIExpression()), !dbg !151
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !65, metadata !DIExpression()), !dbg !151
  tail call void @llvm.dbg.value(metadata double %5, metadata !66, metadata !DIExpression()), !dbg !151
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !67, metadata !DIExpression()), !dbg !151
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !68, metadata !DIExpression()), !dbg !151
  tail call void @llvm.dbg.value(metadata double %8, metadata !69, metadata !DIExpression()), !dbg !151
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !70, metadata !DIExpression()), !dbg !151
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !71, metadata !DIExpression()), !dbg !151
  tail call void @llvm.dbg.value(metadata i32 0, metadata !79, metadata !DIExpression()), !dbg !152
  tail call void @llvm.dbg.value(metadata i32 0, metadata !81, metadata !DIExpression()), !dbg !153
  %12 = icmp eq i32 %0, 101, !dbg !154
  %13 = icmp eq i32 %2, 111, !dbg !156
  %14 = select i1 %13, i32 %4, i32 %3, !dbg !156
  %15 = select i1 %13, i32 %3, i32 %4, !dbg !156
  %16 = select i1 %12, i32 %14, i32 %15, !dbg !156
  tail call void @llvm.dbg.value(metadata i32 %16, metadata !81, metadata !DIExpression()), !dbg !153
  %17 = add i32 %0, -103, !dbg !157
  %18 = icmp ult i32 %17, -2, !dbg !157
  %19 = zext i1 %18 to i32, !dbg !157
  tail call void @llvm.dbg.value(metadata i32 %19, metadata !79, metadata !DIExpression()), !dbg !152
  %20 = add i32 %1, -123, !dbg !159
  %21 = icmp ult i32 %20, -2, !dbg !159
  %22 = select i1 %21, i32 2, i32 %19, !dbg !159
  tail call void @llvm.dbg.value(metadata i32 %22, metadata !79, metadata !DIExpression()), !dbg !152
  %23 = add i32 %2, -114, !dbg !161
  %24 = icmp ult i32 %23, -3, !dbg !161
  %25 = select i1 %24, i32 3, i32 %22, !dbg !161
  tail call void @llvm.dbg.value(metadata i32 %25, metadata !79, metadata !DIExpression()), !dbg !152
  %26 = icmp slt i32 %3, 0, !dbg !163
  %27 = select i1 %26, i32 4, i32 %25, !dbg !156
  tail call void @llvm.dbg.value(metadata i32 %27, metadata !79, metadata !DIExpression()), !dbg !152
  %28 = icmp slt i32 %4, 0, !dbg !165
  %29 = select i1 %28, i32 5, i32 %27, !dbg !156
  tail call void @llvm.dbg.value(metadata i32 %29, metadata !79, metadata !DIExpression()), !dbg !152
  %30 = tail call i32 @llvm.smax.i32(i32 %16, i32 1), !dbg !167
  %31 = icmp sgt i32 %30, %7, !dbg !167
  %32 = select i1 %31, i32 8, i32 %29, !dbg !156
  tail call void @llvm.dbg.value(metadata i32 %32, metadata !79, metadata !DIExpression()), !dbg !152
  %33 = tail call i32 @llvm.smax.i32(i32 %3, i32 1), !dbg !169
  %34 = icmp sgt i32 %33, %10, !dbg !169
  %35 = select i1 %34, i32 11, i32 %32, !dbg !156
  tail call void @llvm.dbg.value(metadata i32 %35, metadata !79, metadata !DIExpression()), !dbg !152
  %36 = icmp eq i32 %35, 0, !dbg !171
  br i1 %36, label %38, label %37, !dbg !173

37:                                               ; preds = %11
  tail call void (i32, ptr, ptr, ...) @cblas_xerbla(i32 noundef %35, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #3, !dbg !171
  br label %38, !dbg !171

38:                                               ; preds = %37, %11
  %39 = fcmp oeq double %8, 1.000000e+00, !dbg !174
  br i1 %39, label %40, label %44, !dbg !176

40:                                               ; preds = %38
  %41 = fcmp oeq double %5, 0.000000e+00, !dbg !177
  %42 = icmp eq i32 %4, 0
  %43 = or i1 %42, %41, !dbg !178
  br i1 %43, label %569, label %44, !dbg !178

44:                                               ; preds = %40, %38
  %45 = icmp eq i32 %1, 121, !dbg !179
  %46 = select i1 %45, i32 122, i32 121, !dbg !179
  %47 = select i1 %13, i32 113, i32 111, !dbg !179
  %48 = select i1 %12, i32 %2, i32 %47, !dbg !179
  %49 = select i1 %12, i32 %1, i32 %46, !dbg !179
  tail call void @llvm.dbg.value(metadata i32 %49, metadata !77, metadata !DIExpression()), !dbg !180
  tail call void @llvm.dbg.value(metadata i32 %48, metadata !78, metadata !DIExpression()), !dbg !180
  %50 = fcmp oeq double %8, 0.000000e+00, !dbg !181
  br i1 %50, label %51, label %127, !dbg !183

51:                                               ; preds = %44
  %52 = icmp eq i32 %49, 121, !dbg !184
  tail call void @llvm.dbg.value(metadata i32 0, metadata !72, metadata !DIExpression()), !dbg !180
  tail call void @llvm.dbg.value(metadata i32 0, metadata !72, metadata !DIExpression()), !dbg !180
  tail call void @llvm.dbg.value(metadata i32 0, metadata !72, metadata !DIExpression()), !dbg !180
  tail call void @llvm.dbg.value(metadata i32 0, metadata !72, metadata !DIExpression()), !dbg !180
  %53 = icmp sgt i32 %3, 0, !dbg !187
  br i1 %52, label %58, label %54, !dbg !188

54:                                               ; preds = %51
  br i1 %53, label %55, label %266, !dbg !189

55:                                               ; preds = %54
  %56 = zext i32 %10 to i64, !dbg !189
  %57 = zext nneg i32 %3 to i64, !dbg !192
  br label %80, !dbg !189

58:                                               ; preds = %51
  br i1 %53, label %59, label %266, !dbg !194

59:                                               ; preds = %58
  %60 = zext i32 %10 to i64, !dbg !194
  %61 = zext nneg i32 %3 to i64, !dbg !197
  br label %62, !dbg !194

62:                                               ; preds = %59, %77
  %63 = phi i64 [ 0, %59 ], [ %78, %77 ]
  tail call void @llvm.dbg.value(metadata i64 %63, metadata !72, metadata !DIExpression()), !dbg !180
  tail call void @llvm.dbg.value(metadata i64 %63, metadata !75, metadata !DIExpression()), !dbg !180
  %64 = mul i64 %63, %60
  br label %65, !dbg !199

65:                                               ; preds = %62, %65
  %66 = phi i64 [ %63, %62 ], [ %75, %65 ]
  tail call void @llvm.dbg.value(metadata i64 %66, metadata !75, metadata !DIExpression()), !dbg !180
  %67 = add i64 %66, %64, !dbg !202
  %68 = trunc i64 %67 to i32, !dbg !202
  %69 = shl nsw i32 %68, 1, !dbg !202
  %70 = sext i32 %69 to i64, !dbg !202
  %71 = getelementptr inbounds double, ptr %9, i64 %70, !dbg !202
  store double 0.000000e+00, ptr %71, align 8, !dbg !205, !tbaa !206
  %72 = or disjoint i32 %69, 1, !dbg !210
  %73 = sext i32 %72 to i64, !dbg !210
  %74 = getelementptr inbounds double, ptr %9, i64 %73, !dbg !210
  store double 0.000000e+00, ptr %74, align 8, !dbg !211, !tbaa !206
  %75 = add nuw nsw i64 %66, 1, !dbg !212
  tail call void @llvm.dbg.value(metadata i64 %75, metadata !75, metadata !DIExpression()), !dbg !180
  %76 = icmp eq i64 %75, %61, !dbg !213
  br i1 %76, label %77, label %65, !dbg !199, !llvm.loop !214

77:                                               ; preds = %65
  %78 = add nuw nsw i64 %63, 1, !dbg !217
  tail call void @llvm.dbg.value(metadata i64 %78, metadata !72, metadata !DIExpression()), !dbg !180
  %79 = icmp eq i64 %78, %61, !dbg !197
  br i1 %79, label %266, label %62, !dbg !194, !llvm.loop !218

80:                                               ; preds = %55, %123
  %81 = phi i64 [ 0, %55 ], [ %124, %123 ]
  %82 = phi i64 [ 1, %55 ], [ %125, %123 ]
  tail call void @llvm.dbg.value(metadata i64 %81, metadata !72, metadata !DIExpression()), !dbg !180
  %83 = mul i64 %81, %56
  tail call void @llvm.dbg.value(metadata i32 0, metadata !75, metadata !DIExpression()), !dbg !180
  %84 = and i64 %82, 1, !dbg !220
  %85 = icmp eq i64 %81, 0, !dbg !220
  br i1 %85, label %111, label %86, !dbg !220

86:                                               ; preds = %80
  %87 = and i64 %82, 9223372036854775806, !dbg !220
  br label %88, !dbg !220

88:                                               ; preds = %88, %86
  %89 = phi i64 [ 0, %86 ], [ %108, %88 ]
  %90 = phi i64 [ 0, %86 ], [ %109, %88 ]
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !75, metadata !DIExpression()), !dbg !180
  %91 = add i64 %89, %83, !dbg !223
  %92 = trunc i64 %91 to i32, !dbg !223
  %93 = shl nsw i32 %92, 1, !dbg !223
  %94 = sext i32 %93 to i64, !dbg !223
  %95 = getelementptr inbounds double, ptr %9, i64 %94, !dbg !223
  store double 0.000000e+00, ptr %95, align 8, !dbg !226, !tbaa !206
  %96 = or disjoint i32 %93, 1, !dbg !227
  %97 = sext i32 %96 to i64, !dbg !227
  %98 = getelementptr inbounds double, ptr %9, i64 %97, !dbg !227
  store double 0.000000e+00, ptr %98, align 8, !dbg !228, !tbaa !206
  %99 = or disjoint i64 %89, 1, !dbg !229
  tail call void @llvm.dbg.value(metadata i64 %99, metadata !75, metadata !DIExpression()), !dbg !180
  tail call void @llvm.dbg.value(metadata i64 %99, metadata !75, metadata !DIExpression()), !dbg !180
  %100 = add i64 %99, %83, !dbg !223
  %101 = trunc i64 %100 to i32, !dbg !223
  %102 = shl nsw i32 %101, 1, !dbg !223
  %103 = sext i32 %102 to i64, !dbg !223
  %104 = getelementptr inbounds double, ptr %9, i64 %103, !dbg !223
  store double 0.000000e+00, ptr %104, align 8, !dbg !226, !tbaa !206
  %105 = or disjoint i32 %102, 1, !dbg !227
  %106 = sext i32 %105 to i64, !dbg !227
  %107 = getelementptr inbounds double, ptr %9, i64 %106, !dbg !227
  store double 0.000000e+00, ptr %107, align 8, !dbg !228, !tbaa !206
  %108 = add nuw nsw i64 %89, 2, !dbg !229
  tail call void @llvm.dbg.value(metadata i64 %108, metadata !75, metadata !DIExpression()), !dbg !180
  %109 = add i64 %90, 2, !dbg !220
  %110 = icmp eq i64 %109, %87, !dbg !220
  br i1 %110, label %111, label %88, !dbg !220, !llvm.loop !230

111:                                              ; preds = %88, %80
  %112 = phi i64 [ 0, %80 ], [ %108, %88 ]
  %113 = icmp eq i64 %84, 0, !dbg !220
  br i1 %113, label %123, label %114, !dbg !220

114:                                              ; preds = %111
  tail call void @llvm.dbg.value(metadata i64 %112, metadata !75, metadata !DIExpression()), !dbg !180
  %115 = add i64 %112, %83, !dbg !223
  %116 = trunc i64 %115 to i32, !dbg !223
  %117 = shl nsw i32 %116, 1, !dbg !223
  %118 = sext i32 %117 to i64, !dbg !223
  %119 = getelementptr inbounds double, ptr %9, i64 %118, !dbg !223
  store double 0.000000e+00, ptr %119, align 8, !dbg !226, !tbaa !206
  %120 = or disjoint i32 %117, 1, !dbg !227
  %121 = sext i32 %120 to i64, !dbg !227
  %122 = getelementptr inbounds double, ptr %9, i64 %121, !dbg !227
  store double 0.000000e+00, ptr %122, align 8, !dbg !228, !tbaa !206
  tail call void @llvm.dbg.value(metadata i64 %112, metadata !75, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !180
  br label %123, !dbg !232

123:                                              ; preds = %111, %114
  %124 = add nuw nsw i64 %81, 1, !dbg !232
  tail call void @llvm.dbg.value(metadata i64 %124, metadata !72, metadata !DIExpression()), !dbg !180
  %125 = add nuw nsw i64 %82, 1, !dbg !189
  %126 = icmp eq i64 %124, %57, !dbg !192
  br i1 %126, label %266, label %80, !dbg !189, !llvm.loop !233

127:                                              ; preds = %44
  %128 = fcmp une double %8, 1.000000e+00, !dbg !235
  br i1 %128, label %139, label %129, !dbg !237

129:                                              ; preds = %127
  tail call void @llvm.dbg.value(metadata i32 0, metadata !72, metadata !DIExpression()), !dbg !180
  %130 = icmp sgt i32 %3, 0, !dbg !238
  br i1 %130, label %131, label %266, !dbg !242

131:                                              ; preds = %129
  %132 = shl i32 %10, 1
  %133 = add i32 %132, 2
  %134 = zext nneg i32 %3 to i64, !dbg !238
  %135 = and i64 %134, 3, !dbg !242
  %136 = icmp ult i32 %3, 4, !dbg !242
  br i1 %136, label %252, label %137, !dbg !242

137:                                              ; preds = %131
  %138 = and i64 %134, 2147483644, !dbg !242
  br label %223, !dbg !242

139:                                              ; preds = %127
  %140 = icmp eq i32 %49, 121, !dbg !243
  tail call void @llvm.dbg.value(metadata i32 0, metadata !72, metadata !DIExpression()), !dbg !180
  tail call void @llvm.dbg.value(metadata i32 0, metadata !72, metadata !DIExpression()), !dbg !180
  tail call void @llvm.dbg.value(metadata i32 0, metadata !72, metadata !DIExpression()), !dbg !180
  tail call void @llvm.dbg.value(metadata i32 0, metadata !72, metadata !DIExpression()), !dbg !180
  %141 = icmp sgt i32 %3, 0, !dbg !246
  br i1 %140, label %148, label %142, !dbg !247

142:                                              ; preds = %139
  br i1 %141, label %143, label %266, !dbg !248

143:                                              ; preds = %142
  %144 = shl i32 %10, 1
  %145 = add i32 %144, 2
  %146 = zext i32 %10 to i64, !dbg !248
  %147 = zext nneg i32 %3 to i64, !dbg !251
  br label %190, !dbg !248

148:                                              ; preds = %139
  br i1 %141, label %149, label %266, !dbg !253

149:                                              ; preds = %148
  %150 = zext i32 %10 to i64, !dbg !253
  %151 = zext nneg i32 %3 to i64, !dbg !253
  %152 = zext nneg i32 %3 to i64, !dbg !256
  br label %156, !dbg !253

153:                                              ; preds = %174, %156
  tail call void @llvm.dbg.value(metadata i64 %172, metadata !72, metadata !DIExpression()), !dbg !180
  %154 = add nuw nsw i64 %158, 1, !dbg !253
  %155 = icmp eq i64 %172, %152, !dbg !256
  br i1 %155, label %266, label %156, !dbg !253, !llvm.loop !258

156:                                              ; preds = %149, %153
  %157 = phi i64 [ 0, %149 ], [ %172, %153 ]
  %158 = phi i64 [ 1, %149 ], [ %154, %153 ]
  %159 = trunc i64 %157 to i32
  tail call void @llvm.dbg.value(metadata i64 %157, metadata !72, metadata !DIExpression()), !dbg !180
  %160 = mul i64 %157, %150, !dbg !260
  %161 = mul nsw i32 %159, %10, !dbg !260
  %162 = trunc i64 %157 to i32, !dbg !260
  %163 = add i32 %161, %162, !dbg !260
  %164 = shl nsw i32 %163, 1, !dbg !260
  %165 = sext i32 %164 to i64, !dbg !260
  %166 = getelementptr inbounds double, ptr %9, i64 %165, !dbg !260
  %167 = load double, ptr %166, align 8, !dbg !262, !tbaa !206
  %168 = fmul double %167, %8, !dbg !262
  store double %168, ptr %166, align 8, !dbg !262, !tbaa !206
  %169 = or disjoint i32 %164, 1, !dbg !263
  %170 = sext i32 %169 to i64, !dbg !263
  %171 = getelementptr inbounds double, ptr %9, i64 %170, !dbg !263
  store double 0.000000e+00, ptr %171, align 8, !dbg !264, !tbaa !206
  %172 = add nuw nsw i64 %157, 1, !dbg !265
  tail call void @llvm.dbg.value(metadata i64 %172, metadata !75, metadata !DIExpression()), !dbg !180
  %173 = icmp ult i64 %172, %151, !dbg !267
  br i1 %173, label %174, label %153, !dbg !269

174:                                              ; preds = %156, %174
  %175 = phi i64 [ %188, %174 ], [ %158, %156 ]
  tail call void @llvm.dbg.value(metadata i64 %175, metadata !75, metadata !DIExpression()), !dbg !180
  %176 = add i64 %175, %160, !dbg !270
  %177 = trunc i64 %176 to i32, !dbg !270
  %178 = shl nsw i32 %177, 1, !dbg !270
  %179 = sext i32 %178 to i64, !dbg !270
  %180 = getelementptr inbounds double, ptr %9, i64 %179, !dbg !270
  %181 = load double, ptr %180, align 8, !dbg !272, !tbaa !206
  %182 = fmul double %181, %8, !dbg !272
  store double %182, ptr %180, align 8, !dbg !272, !tbaa !206
  %183 = or disjoint i32 %178, 1, !dbg !273
  %184 = sext i32 %183 to i64, !dbg !273
  %185 = getelementptr inbounds double, ptr %9, i64 %184, !dbg !273
  %186 = load double, ptr %185, align 8, !dbg !274, !tbaa !206
  %187 = fmul double %186, %8, !dbg !274
  store double %187, ptr %185, align 8, !dbg !274, !tbaa !206
  %188 = add nuw nsw i64 %175, 1, !dbg !275
  tail call void @llvm.dbg.value(metadata i64 %188, metadata !75, metadata !DIExpression()), !dbg !180
  %189 = icmp eq i64 %188, %152, !dbg !267
  br i1 %189, label %153, label %174, !dbg !269, !llvm.loop !276

190:                                              ; preds = %143, %211
  %191 = phi i64 [ 0, %143 ], [ %221, %211 ]
  tail call void @llvm.dbg.value(metadata i64 %191, metadata !72, metadata !DIExpression()), !dbg !180
  tail call void @llvm.dbg.value(metadata i32 0, metadata !75, metadata !DIExpression()), !dbg !180
  %192 = icmp eq i64 %191, 0, !dbg !278
  br i1 %192, label %211, label %193, !dbg !282

193:                                              ; preds = %190
  %194 = mul i64 %191, %146
  br label %195, !dbg !282

195:                                              ; preds = %193, %195
  %196 = phi i64 [ 0, %193 ], [ %209, %195 ]
  tail call void @llvm.dbg.value(metadata i64 %196, metadata !75, metadata !DIExpression()), !dbg !180
  %197 = add i64 %196, %194, !dbg !283
  %198 = trunc i64 %197 to i32, !dbg !283
  %199 = shl nsw i32 %198, 1, !dbg !283
  %200 = sext i32 %199 to i64, !dbg !283
  %201 = getelementptr inbounds double, ptr %9, i64 %200, !dbg !283
  %202 = load double, ptr %201, align 8, !dbg !285, !tbaa !206
  %203 = fmul double %202, %8, !dbg !285
  store double %203, ptr %201, align 8, !dbg !285, !tbaa !206
  %204 = or disjoint i32 %199, 1, !dbg !286
  %205 = sext i32 %204 to i64, !dbg !286
  %206 = getelementptr inbounds double, ptr %9, i64 %205, !dbg !286
  %207 = load double, ptr %206, align 8, !dbg !287, !tbaa !206
  %208 = fmul double %207, %8, !dbg !287
  store double %208, ptr %206, align 8, !dbg !287, !tbaa !206
  %209 = add nuw nsw i64 %196, 1, !dbg !288
  tail call void @llvm.dbg.value(metadata i64 %209, metadata !75, metadata !DIExpression()), !dbg !180
  %210 = icmp eq i64 %209, %191, !dbg !278
  br i1 %210, label %211, label %195, !dbg !282, !llvm.loop !289

211:                                              ; preds = %195, %190
  %212 = trunc i64 %191 to i32, !dbg !291
  %213 = mul i32 %145, %212, !dbg !291
  %214 = sext i32 %213 to i64, !dbg !291
  %215 = getelementptr inbounds double, ptr %9, i64 %214, !dbg !291
  %216 = load double, ptr %215, align 8, !dbg !292, !tbaa !206
  %217 = fmul double %216, %8, !dbg !292
  store double %217, ptr %215, align 8, !dbg !292, !tbaa !206
  %218 = or disjoint i32 %213, 1, !dbg !293
  %219 = sext i32 %218 to i64, !dbg !293
  %220 = getelementptr inbounds double, ptr %9, i64 %219, !dbg !293
  store double 0.000000e+00, ptr %220, align 8, !dbg !294, !tbaa !206
  %221 = add nuw nsw i64 %191, 1, !dbg !295
  tail call void @llvm.dbg.value(metadata i64 %221, metadata !72, metadata !DIExpression()), !dbg !180
  %222 = icmp eq i64 %221, %147, !dbg !251
  br i1 %222, label %266, label %190, !dbg !248, !llvm.loop !296

223:                                              ; preds = %223, %137
  %224 = phi i64 [ 0, %137 ], [ %249, %223 ]
  %225 = phi i64 [ 0, %137 ], [ %250, %223 ]
  tail call void @llvm.dbg.value(metadata i64 %224, metadata !72, metadata !DIExpression()), !dbg !180
  %226 = trunc i64 %224 to i32, !dbg !298
  %227 = mul i32 %133, %226, !dbg !298
  %228 = or disjoint i32 %227, 1, !dbg !298
  %229 = sext i32 %228 to i64, !dbg !298
  %230 = getelementptr inbounds double, ptr %9, i64 %229, !dbg !298
  store double 0.000000e+00, ptr %230, align 8, !dbg !300, !tbaa !206
  tail call void @llvm.dbg.value(metadata i64 %224, metadata !72, metadata !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value)), !dbg !180
  tail call void @llvm.dbg.value(metadata i64 %224, metadata !72, metadata !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value)), !dbg !180
  %231 = trunc i64 %224 to i32, !dbg !298
  %232 = or disjoint i32 %231, 1, !dbg !298
  %233 = mul i32 %133, %232, !dbg !298
  %234 = or disjoint i32 %233, 1, !dbg !298
  %235 = sext i32 %234 to i64, !dbg !298
  %236 = getelementptr inbounds double, ptr %9, i64 %235, !dbg !298
  store double 0.000000e+00, ptr %236, align 8, !dbg !300, !tbaa !206
  tail call void @llvm.dbg.value(metadata i64 %224, metadata !72, metadata !DIExpression(DW_OP_constu, 2, DW_OP_or, DW_OP_stack_value)), !dbg !180
  tail call void @llvm.dbg.value(metadata i64 %224, metadata !72, metadata !DIExpression(DW_OP_constu, 2, DW_OP_or, DW_OP_stack_value)), !dbg !180
  %237 = trunc i64 %224 to i32, !dbg !298
  %238 = or disjoint i32 %237, 2, !dbg !298
  %239 = mul i32 %133, %238, !dbg !298
  %240 = or disjoint i32 %239, 1, !dbg !298
  %241 = sext i32 %240 to i64, !dbg !298
  %242 = getelementptr inbounds double, ptr %9, i64 %241, !dbg !298
  store double 0.000000e+00, ptr %242, align 8, !dbg !300, !tbaa !206
  tail call void @llvm.dbg.value(metadata i64 %224, metadata !72, metadata !DIExpression(DW_OP_constu, 3, DW_OP_or, DW_OP_stack_value)), !dbg !180
  tail call void @llvm.dbg.value(metadata i64 %224, metadata !72, metadata !DIExpression(DW_OP_constu, 3, DW_OP_or, DW_OP_stack_value)), !dbg !180
  %243 = trunc i64 %224 to i32, !dbg !298
  %244 = or disjoint i32 %243, 3, !dbg !298
  %245 = mul i32 %133, %244, !dbg !298
  %246 = or disjoint i32 %245, 1, !dbg !298
  %247 = sext i32 %246 to i64, !dbg !298
  %248 = getelementptr inbounds double, ptr %9, i64 %247, !dbg !298
  store double 0.000000e+00, ptr %248, align 8, !dbg !300, !tbaa !206
  %249 = add nuw nsw i64 %224, 4, !dbg !301
  tail call void @llvm.dbg.value(metadata i64 %249, metadata !72, metadata !DIExpression()), !dbg !180
  %250 = add i64 %225, 4, !dbg !242
  %251 = icmp eq i64 %250, %138, !dbg !242
  br i1 %251, label %252, label %223, !dbg !242, !llvm.loop !302

252:                                              ; preds = %223, %131
  %253 = phi i64 [ 0, %131 ], [ %249, %223 ]
  %254 = icmp eq i64 %135, 0, !dbg !242
  br i1 %254, label %266, label %255, !dbg !242

255:                                              ; preds = %252, %255
  %256 = phi i64 [ %263, %255 ], [ %253, %252 ]
  %257 = phi i64 [ %264, %255 ], [ 0, %252 ]
  tail call void @llvm.dbg.value(metadata i64 %256, metadata !72, metadata !DIExpression()), !dbg !180
  %258 = trunc i64 %256 to i32, !dbg !298
  %259 = mul i32 %133, %258, !dbg !298
  %260 = or disjoint i32 %259, 1, !dbg !298
  %261 = sext i32 %260 to i64, !dbg !298
  %262 = getelementptr inbounds double, ptr %9, i64 %261, !dbg !298
  store double 0.000000e+00, ptr %262, align 8, !dbg !300, !tbaa !206
  %263 = add nuw nsw i64 %256, 1, !dbg !301
  tail call void @llvm.dbg.value(metadata i64 %263, metadata !72, metadata !DIExpression()), !dbg !180
  %264 = add i64 %257, 1, !dbg !242
  %265 = icmp eq i64 %264, %135, !dbg !242
  br i1 %265, label %266, label %255, !dbg !242, !llvm.loop !304

266:                                              ; preds = %252, %255, %211, %153, %123, %77, %129, %142, %148, %54, %58
  %267 = fcmp oeq double %5, 0.000000e+00, !dbg !306
  br i1 %267, label %569, label %268, !dbg !308

268:                                              ; preds = %266
  %269 = icmp eq i32 %49, 121, !dbg !309
  %270 = icmp eq i32 %48, 111
  %271 = and i1 %269, %270, !dbg !310
  br i1 %271, label %272, label %344, !dbg !310

272:                                              ; preds = %268
  tail call void @llvm.dbg.value(metadata i32 0, metadata !72, metadata !DIExpression()), !dbg !180
  %273 = icmp sgt i32 %3, 0, !dbg !311
  br i1 %273, label %274, label %569, !dbg !312

274:                                              ; preds = %272
  %275 = icmp sgt i32 %4, 0
  %276 = zext i32 %7 to i64, !dbg !312
  %277 = zext i32 %10 to i64, !dbg !312
  %278 = zext nneg i32 %3 to i64, !dbg !311
  %279 = zext nneg i32 %4 to i64
  br label %280, !dbg !312

280:                                              ; preds = %274, %341
  %281 = phi i64 [ 0, %274 ], [ %342, %341 ]
  tail call void @llvm.dbg.value(metadata i64 %281, metadata !72, metadata !DIExpression()), !dbg !180
  tail call void @llvm.dbg.value(metadata i64 %281, metadata !75, metadata !DIExpression()), !dbg !180
  %282 = mul i64 %281, %276
  %283 = mul i64 %281, %277
  br label %284, !dbg !313

284:                                              ; preds = %280, %322
  %285 = phi i64 [ %281, %280 ], [ %339, %322 ]
  tail call void @llvm.dbg.value(metadata i64 %285, metadata !75, metadata !DIExpression()), !dbg !180
  tail call void @llvm.dbg.value(metadata i32 0, metadata !76, metadata !DIExpression()), !dbg !180
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !83, metadata !DIExpression()), !dbg !314
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !92, metadata !DIExpression()), !dbg !314
  br i1 %275, label %286, label %322, !dbg !315

286:                                              ; preds = %284
  %287 = mul i64 %285, %276
  br label %288, !dbg !315

288:                                              ; preds = %286, %288
  %289 = phi i64 [ 0, %286 ], [ %320, %288 ]
  %290 = phi double [ 0.000000e+00, %286 ], [ %315, %288 ]
  %291 = phi double [ 0.000000e+00, %286 ], [ %319, %288 ]
  tail call void @llvm.dbg.value(metadata i64 %289, metadata !76, metadata !DIExpression()), !dbg !180
  tail call void @llvm.dbg.value(metadata double %290, metadata !83, metadata !DIExpression()), !dbg !314
  tail call void @llvm.dbg.value(metadata double %291, metadata !92, metadata !DIExpression()), !dbg !314
  %292 = add i64 %289, %282, !dbg !316
  %293 = trunc i64 %292 to i32, !dbg !316
  %294 = shl nsw i32 %293, 1, !dbg !316
  %295 = sext i32 %294 to i64, !dbg !316
  %296 = getelementptr inbounds double, ptr %6, i64 %295, !dbg !316
  %297 = load double, ptr %296, align 8, !dbg !316, !tbaa !206
  tail call void @llvm.dbg.value(metadata double %297, metadata !93, metadata !DIExpression()), !dbg !317
  %298 = or disjoint i32 %294, 1, !dbg !318
  %299 = sext i32 %298 to i64, !dbg !318
  %300 = getelementptr inbounds double, ptr %6, i64 %299, !dbg !318
  %301 = load double, ptr %300, align 8, !dbg !318, !tbaa !206
  tail call void @llvm.dbg.value(metadata double %301, metadata !97, metadata !DIExpression()), !dbg !317
  %302 = add i64 %289, %287, !dbg !319
  %303 = trunc i64 %302 to i32, !dbg !319
  %304 = shl nsw i32 %303, 1, !dbg !319
  %305 = sext i32 %304 to i64, !dbg !319
  %306 = getelementptr inbounds double, ptr %6, i64 %305, !dbg !319
  %307 = load double, ptr %306, align 8, !dbg !319, !tbaa !206
  tail call void @llvm.dbg.value(metadata double %307, metadata !98, metadata !DIExpression()), !dbg !317
  %308 = or disjoint i32 %304, 1, !dbg !320
  %309 = sext i32 %308 to i64, !dbg !320
  %310 = getelementptr inbounds double, ptr %6, i64 %309, !dbg !320
  %311 = load double, ptr %310, align 8, !dbg !320, !tbaa !206
  tail call void @llvm.dbg.value(metadata double poison, metadata !99, metadata !DIExpression()), !dbg !317
  %312 = fmul double %297, %307, !dbg !321
  %313 = fmul double %301, %311, !dbg !322
  %314 = fadd double %312, %313, !dbg !322
  %315 = fadd double %290, %314, !dbg !323
  tail call void @llvm.dbg.value(metadata double %315, metadata !83, metadata !DIExpression()), !dbg !314
  %316 = fmul double %301, %307, !dbg !324
  %317 = fmul double %297, %311, !dbg !325
  %318 = fsub double %316, %317, !dbg !325
  %319 = fadd double %291, %318, !dbg !326
  tail call void @llvm.dbg.value(metadata double %319, metadata !92, metadata !DIExpression()), !dbg !314
  %320 = add nuw nsw i64 %289, 1, !dbg !327
  tail call void @llvm.dbg.value(metadata i64 %320, metadata !76, metadata !DIExpression()), !dbg !180
  %321 = icmp eq i64 %320, %279, !dbg !328
  br i1 %321, label %322, label %288, !dbg !315, !llvm.loop !329

322:                                              ; preds = %288, %284
  %323 = phi double [ 0.000000e+00, %284 ], [ %319, %288 ], !dbg !314
  %324 = phi double [ 0.000000e+00, %284 ], [ %315, %288 ], !dbg !314
  %325 = fmul double %324, %5, !dbg !331
  %326 = add i64 %285, %283, !dbg !332
  %327 = trunc i64 %326 to i32, !dbg !332
  %328 = shl nsw i32 %327, 1, !dbg !332
  %329 = sext i32 %328 to i64, !dbg !332
  %330 = getelementptr inbounds double, ptr %9, i64 %329, !dbg !332
  %331 = load double, ptr %330, align 8, !dbg !333, !tbaa !206
  %332 = fadd double %325, %331, !dbg !333
  store double %332, ptr %330, align 8, !dbg !333, !tbaa !206
  %333 = fmul double %323, %5, !dbg !334
  %334 = or disjoint i32 %328, 1, !dbg !335
  %335 = sext i32 %334 to i64, !dbg !335
  %336 = getelementptr inbounds double, ptr %9, i64 %335, !dbg !335
  %337 = load double, ptr %336, align 8, !dbg !336, !tbaa !206
  %338 = fadd double %333, %337, !dbg !336
  store double %338, ptr %336, align 8, !dbg !336, !tbaa !206
  %339 = add nuw nsw i64 %285, 1, !dbg !337
  tail call void @llvm.dbg.value(metadata i64 %339, metadata !75, metadata !DIExpression()), !dbg !180
  %340 = icmp eq i64 %339, %278, !dbg !338
  br i1 %340, label %341, label %284, !dbg !313, !llvm.loop !339

341:                                              ; preds = %322
  %342 = add nuw nsw i64 %281, 1, !dbg !341
  tail call void @llvm.dbg.value(metadata i64 %342, metadata !72, metadata !DIExpression()), !dbg !180
  %343 = icmp eq i64 %342, %278, !dbg !311
  br i1 %343, label %569, label %280, !dbg !312, !llvm.loop !342

344:                                              ; preds = %268
  %345 = icmp eq i32 %48, 113
  %346 = and i1 %269, %345, !dbg !344
  br i1 %346, label %347, label %417, !dbg !344

347:                                              ; preds = %344
  tail call void @llvm.dbg.value(metadata i32 0, metadata !72, metadata !DIExpression()), !dbg !180
  %348 = icmp sgt i32 %3, 0, !dbg !345
  br i1 %348, label %349, label %569, !dbg !346

349:                                              ; preds = %347
  %350 = icmp sgt i32 %4, 0
  %351 = zext i32 %7 to i64, !dbg !346
  %352 = zext i32 %10 to i64, !dbg !346
  %353 = zext nneg i32 %3 to i64, !dbg !345
  %354 = zext nneg i32 %4 to i64
  br label %355, !dbg !346

355:                                              ; preds = %349, %414
  %356 = phi i64 [ 0, %349 ], [ %415, %414 ]
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !72, metadata !DIExpression()), !dbg !180
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !75, metadata !DIExpression()), !dbg !180
  %357 = mul i64 %356, %352
  br label %358, !dbg !347

358:                                              ; preds = %355, %395
  %359 = phi i64 [ %356, %355 ], [ %412, %395 ]
  tail call void @llvm.dbg.value(metadata i64 %359, metadata !75, metadata !DIExpression()), !dbg !180
  tail call void @llvm.dbg.value(metadata i32 0, metadata !76, metadata !DIExpression()), !dbg !180
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !100, metadata !DIExpression()), !dbg !348
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !109, metadata !DIExpression()), !dbg !348
  br i1 %350, label %360, label %395, !dbg !349

360:                                              ; preds = %358, %360
  %361 = phi i64 [ %393, %360 ], [ 0, %358 ]
  %362 = phi double [ %388, %360 ], [ 0.000000e+00, %358 ]
  %363 = phi double [ %392, %360 ], [ 0.000000e+00, %358 ]
  tail call void @llvm.dbg.value(metadata i64 %361, metadata !76, metadata !DIExpression()), !dbg !180
  tail call void @llvm.dbg.value(metadata double %362, metadata !100, metadata !DIExpression()), !dbg !348
  tail call void @llvm.dbg.value(metadata double %363, metadata !109, metadata !DIExpression()), !dbg !348
  %364 = mul i64 %361, %351, !dbg !350
  %365 = add i64 %364, %356, !dbg !350
  %366 = trunc i64 %365 to i32, !dbg !350
  %367 = shl nsw i32 %366, 1, !dbg !350
  %368 = sext i32 %367 to i64, !dbg !350
  %369 = getelementptr inbounds double, ptr %6, i64 %368, !dbg !350
  %370 = load double, ptr %369, align 8, !dbg !350, !tbaa !206
  tail call void @llvm.dbg.value(metadata double %370, metadata !110, metadata !DIExpression()), !dbg !351
  %371 = or disjoint i32 %367, 1, !dbg !352
  %372 = sext i32 %371 to i64, !dbg !352
  %373 = getelementptr inbounds double, ptr %6, i64 %372, !dbg !352
  %374 = load double, ptr %373, align 8, !dbg !352, !tbaa !206
  tail call void @llvm.dbg.value(metadata double poison, metadata !114, metadata !DIExpression()), !dbg !351
  %375 = add i64 %364, %359, !dbg !353
  %376 = trunc i64 %375 to i32, !dbg !353
  %377 = shl nsw i32 %376, 1, !dbg !353
  %378 = sext i32 %377 to i64, !dbg !353
  %379 = getelementptr inbounds double, ptr %6, i64 %378, !dbg !353
  %380 = load double, ptr %379, align 8, !dbg !353, !tbaa !206
  tail call void @llvm.dbg.value(metadata double %380, metadata !115, metadata !DIExpression()), !dbg !351
  %381 = or disjoint i32 %377, 1, !dbg !354
  %382 = sext i32 %381 to i64, !dbg !354
  %383 = getelementptr inbounds double, ptr %6, i64 %382, !dbg !354
  %384 = load double, ptr %383, align 8, !dbg !354, !tbaa !206
  tail call void @llvm.dbg.value(metadata double %384, metadata !116, metadata !DIExpression()), !dbg !351
  %385 = fmul double %370, %380, !dbg !355
  %386 = fmul double %374, %384, !dbg !356
  %387 = fadd double %385, %386, !dbg !356
  %388 = fadd double %362, %387, !dbg !357
  tail call void @llvm.dbg.value(metadata double %388, metadata !100, metadata !DIExpression()), !dbg !348
  %389 = fmul double %370, %384, !dbg !358
  %390 = fmul double %374, %380, !dbg !359
  %391 = fsub double %389, %390, !dbg !359
  %392 = fadd double %363, %391, !dbg !360
  tail call void @llvm.dbg.value(metadata double %392, metadata !109, metadata !DIExpression()), !dbg !348
  %393 = add nuw nsw i64 %361, 1, !dbg !361
  tail call void @llvm.dbg.value(metadata i64 %393, metadata !76, metadata !DIExpression()), !dbg !180
  %394 = icmp eq i64 %393, %354, !dbg !362
  br i1 %394, label %395, label %360, !dbg !349, !llvm.loop !363

395:                                              ; preds = %360, %358
  %396 = phi double [ 0.000000e+00, %358 ], [ %392, %360 ], !dbg !348
  %397 = phi double [ 0.000000e+00, %358 ], [ %388, %360 ], !dbg !348
  %398 = fmul double %397, %5, !dbg !365
  %399 = add i64 %359, %357, !dbg !366
  %400 = trunc i64 %399 to i32, !dbg !366
  %401 = shl nsw i32 %400, 1, !dbg !366
  %402 = sext i32 %401 to i64, !dbg !366
  %403 = getelementptr inbounds double, ptr %9, i64 %402, !dbg !366
  %404 = load double, ptr %403, align 8, !dbg !367, !tbaa !206
  %405 = fadd double %398, %404, !dbg !367
  store double %405, ptr %403, align 8, !dbg !367, !tbaa !206
  %406 = fmul double %396, %5, !dbg !368
  %407 = or disjoint i32 %401, 1, !dbg !369
  %408 = sext i32 %407 to i64, !dbg !369
  %409 = getelementptr inbounds double, ptr %9, i64 %408, !dbg !369
  %410 = load double, ptr %409, align 8, !dbg !370, !tbaa !206
  %411 = fadd double %406, %410, !dbg !370
  store double %411, ptr %409, align 8, !dbg !370, !tbaa !206
  %412 = add nuw nsw i64 %359, 1, !dbg !371
  tail call void @llvm.dbg.value(metadata i64 %412, metadata !75, metadata !DIExpression()), !dbg !180
  %413 = icmp eq i64 %412, %353, !dbg !372
  br i1 %413, label %414, label %358, !dbg !347, !llvm.loop !373

414:                                              ; preds = %395
  %415 = add nuw nsw i64 %356, 1, !dbg !375
  tail call void @llvm.dbg.value(metadata i64 %415, metadata !72, metadata !DIExpression()), !dbg !180
  %416 = icmp eq i64 %415, %353, !dbg !345
  br i1 %416, label %569, label %355, !dbg !346, !llvm.loop !376

417:                                              ; preds = %344
  %418 = icmp eq i32 %49, 122, !dbg !378
  %419 = and i1 %418, %270, !dbg !379
  br i1 %419, label %420, label %494, !dbg !379

420:                                              ; preds = %417
  tail call void @llvm.dbg.value(metadata i32 0, metadata !72, metadata !DIExpression()), !dbg !180
  %421 = icmp sgt i32 %3, 0, !dbg !380
  br i1 %421, label %422, label %569, !dbg !381

422:                                              ; preds = %420
  %423 = icmp sgt i32 %4, 0
  %424 = zext i32 %7 to i64, !dbg !381
  %425 = zext i32 %10 to i64, !dbg !381
  %426 = zext nneg i32 %3 to i64, !dbg !380
  %427 = zext nneg i32 %4 to i64
  br label %428, !dbg !381

428:                                              ; preds = %422, %490
  %429 = phi i64 [ 0, %422 ], [ %491, %490 ]
  %430 = phi i64 [ 1, %422 ], [ %492, %490 ]
  tail call void @llvm.dbg.value(metadata i64 %429, metadata !72, metadata !DIExpression()), !dbg !180
  %431 = mul i64 %429, %425
  tail call void @llvm.dbg.value(metadata i32 0, metadata !75, metadata !DIExpression()), !dbg !180
  %432 = mul i64 %429, %424
  br label %433, !dbg !382

433:                                              ; preds = %428, %471
  %434 = phi i64 [ 0, %428 ], [ %488, %471 ]
  tail call void @llvm.dbg.value(metadata i64 %434, metadata !75, metadata !DIExpression()), !dbg !180
  tail call void @llvm.dbg.value(metadata i32 0, metadata !76, metadata !DIExpression()), !dbg !180
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !126, metadata !DIExpression()), !dbg !383
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !117, metadata !DIExpression()), !dbg !383
  br i1 %423, label %435, label %471, !dbg !384

435:                                              ; preds = %433
  %436 = mul i64 %434, %424
  br label %437, !dbg !384

437:                                              ; preds = %435, %437
  %438 = phi i64 [ 0, %435 ], [ %469, %437 ]
  %439 = phi double [ 0.000000e+00, %435 ], [ %468, %437 ]
  %440 = phi double [ 0.000000e+00, %435 ], [ %464, %437 ]
  tail call void @llvm.dbg.value(metadata i64 %438, metadata !76, metadata !DIExpression()), !dbg !180
  tail call void @llvm.dbg.value(metadata double %439, metadata !126, metadata !DIExpression()), !dbg !383
  tail call void @llvm.dbg.value(metadata double %440, metadata !117, metadata !DIExpression()), !dbg !383
  %441 = add i64 %438, %432, !dbg !385
  %442 = trunc i64 %441 to i32, !dbg !385
  %443 = shl nsw i32 %442, 1, !dbg !385
  %444 = sext i32 %443 to i64, !dbg !385
  %445 = getelementptr inbounds double, ptr %6, i64 %444, !dbg !385
  %446 = load double, ptr %445, align 8, !dbg !385, !tbaa !206
  tail call void @llvm.dbg.value(metadata double %446, metadata !127, metadata !DIExpression()), !dbg !386
  %447 = or disjoint i32 %443, 1, !dbg !387
  %448 = sext i32 %447 to i64, !dbg !387
  %449 = getelementptr inbounds double, ptr %6, i64 %448, !dbg !387
  %450 = load double, ptr %449, align 8, !dbg !387, !tbaa !206
  tail call void @llvm.dbg.value(metadata double %450, metadata !131, metadata !DIExpression()), !dbg !386
  %451 = add i64 %438, %436, !dbg !388
  %452 = trunc i64 %451 to i32, !dbg !388
  %453 = shl nsw i32 %452, 1, !dbg !388
  %454 = sext i32 %453 to i64, !dbg !388
  %455 = getelementptr inbounds double, ptr %6, i64 %454, !dbg !388
  %456 = load double, ptr %455, align 8, !dbg !388, !tbaa !206
  tail call void @llvm.dbg.value(metadata double %456, metadata !132, metadata !DIExpression()), !dbg !386
  %457 = or disjoint i32 %453, 1, !dbg !389
  %458 = sext i32 %457 to i64, !dbg !389
  %459 = getelementptr inbounds double, ptr %6, i64 %458, !dbg !389
  %460 = load double, ptr %459, align 8, !dbg !389, !tbaa !206
  tail call void @llvm.dbg.value(metadata double poison, metadata !133, metadata !DIExpression()), !dbg !386
  %461 = fmul double %446, %456, !dbg !390
  %462 = fmul double %450, %460, !dbg !391
  %463 = fadd double %461, %462, !dbg !391
  %464 = fadd double %440, %463, !dbg !392
  tail call void @llvm.dbg.value(metadata double %464, metadata !117, metadata !DIExpression()), !dbg !383
  %465 = fmul double %450, %456, !dbg !393
  %466 = fmul double %446, %460, !dbg !394
  %467 = fsub double %465, %466, !dbg !394
  %468 = fadd double %439, %467, !dbg !395
  tail call void @llvm.dbg.value(metadata double %468, metadata !126, metadata !DIExpression()), !dbg !383
  %469 = add nuw nsw i64 %438, 1, !dbg !396
  tail call void @llvm.dbg.value(metadata i64 %469, metadata !76, metadata !DIExpression()), !dbg !180
  %470 = icmp eq i64 %469, %427, !dbg !397
  br i1 %470, label %471, label %437, !dbg !384, !llvm.loop !398

471:                                              ; preds = %437, %433
  %472 = phi double [ 0.000000e+00, %433 ], [ %464, %437 ], !dbg !383
  %473 = phi double [ 0.000000e+00, %433 ], [ %468, %437 ], !dbg !383
  %474 = fmul double %472, %5, !dbg !400
  %475 = add i64 %434, %431, !dbg !401
  %476 = trunc i64 %475 to i32, !dbg !401
  %477 = shl nsw i32 %476, 1, !dbg !401
  %478 = sext i32 %477 to i64, !dbg !401
  %479 = getelementptr inbounds double, ptr %9, i64 %478, !dbg !401
  %480 = load double, ptr %479, align 8, !dbg !402, !tbaa !206
  %481 = fadd double %474, %480, !dbg !402
  store double %481, ptr %479, align 8, !dbg !402, !tbaa !206
  %482 = fmul double %473, %5, !dbg !403
  %483 = or disjoint i32 %477, 1, !dbg !404
  %484 = sext i32 %483 to i64, !dbg !404
  %485 = getelementptr inbounds double, ptr %9, i64 %484, !dbg !404
  %486 = load double, ptr %485, align 8, !dbg !405, !tbaa !206
  %487 = fadd double %482, %486, !dbg !405
  store double %487, ptr %485, align 8, !dbg !405, !tbaa !206
  %488 = add nuw nsw i64 %434, 1, !dbg !406
  tail call void @llvm.dbg.value(metadata i64 %488, metadata !75, metadata !DIExpression()), !dbg !180
  %489 = icmp eq i64 %488, %430, !dbg !407
  br i1 %489, label %490, label %433, !dbg !382, !llvm.loop !408

490:                                              ; preds = %471
  %491 = add nuw nsw i64 %429, 1, !dbg !410
  tail call void @llvm.dbg.value(metadata i64 %491, metadata !72, metadata !DIExpression()), !dbg !180
  %492 = add nuw nsw i64 %430, 1, !dbg !381
  %493 = icmp eq i64 %491, %426, !dbg !380
  br i1 %493, label %569, label %428, !dbg !381, !llvm.loop !411

494:                                              ; preds = %417
  %495 = and i1 %418, %345, !dbg !413
  br i1 %495, label %496, label %568, !dbg !413

496:                                              ; preds = %494
  tail call void @llvm.dbg.value(metadata i32 0, metadata !72, metadata !DIExpression()), !dbg !180
  %497 = icmp sgt i32 %3, 0, !dbg !414
  br i1 %497, label %498, label %569, !dbg !415

498:                                              ; preds = %496
  %499 = icmp sgt i32 %4, 0
  %500 = zext i32 %7 to i64, !dbg !415
  %501 = zext i32 %10 to i64, !dbg !415
  %502 = zext nneg i32 %3 to i64, !dbg !414
  %503 = zext nneg i32 %4 to i64
  br label %504, !dbg !415

504:                                              ; preds = %498, %564
  %505 = phi i64 [ 0, %498 ], [ %565, %564 ]
  %506 = phi i64 [ 1, %498 ], [ %566, %564 ]
  tail call void @llvm.dbg.value(metadata i64 %505, metadata !72, metadata !DIExpression()), !dbg !180
  %507 = mul i64 %505, %501
  tail call void @llvm.dbg.value(metadata i32 0, metadata !75, metadata !DIExpression()), !dbg !180
  br label %508, !dbg !416

508:                                              ; preds = %504, %545
  %509 = phi i64 [ 0, %504 ], [ %562, %545 ]
  tail call void @llvm.dbg.value(metadata i64 %509, metadata !75, metadata !DIExpression()), !dbg !180
  tail call void @llvm.dbg.value(metadata i32 0, metadata !76, metadata !DIExpression()), !dbg !180
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !143, metadata !DIExpression()), !dbg !417
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !134, metadata !DIExpression()), !dbg !417
  br i1 %499, label %510, label %545, !dbg !418

510:                                              ; preds = %508, %510
  %511 = phi i64 [ %543, %510 ], [ 0, %508 ]
  %512 = phi double [ %542, %510 ], [ 0.000000e+00, %508 ]
  %513 = phi double [ %538, %510 ], [ 0.000000e+00, %508 ]
  tail call void @llvm.dbg.value(metadata i64 %511, metadata !76, metadata !DIExpression()), !dbg !180
  tail call void @llvm.dbg.value(metadata double %512, metadata !143, metadata !DIExpression()), !dbg !417
  tail call void @llvm.dbg.value(metadata double %513, metadata !134, metadata !DIExpression()), !dbg !417
  %514 = mul i64 %511, %500, !dbg !419
  %515 = add i64 %514, %505, !dbg !419
  %516 = trunc i64 %515 to i32, !dbg !419
  %517 = shl nsw i32 %516, 1, !dbg !419
  %518 = sext i32 %517 to i64, !dbg !419
  %519 = getelementptr inbounds double, ptr %6, i64 %518, !dbg !419
  %520 = load double, ptr %519, align 8, !dbg !419, !tbaa !206
  tail call void @llvm.dbg.value(metadata double %520, metadata !144, metadata !DIExpression()), !dbg !420
  %521 = or disjoint i32 %517, 1, !dbg !421
  %522 = sext i32 %521 to i64, !dbg !421
  %523 = getelementptr inbounds double, ptr %6, i64 %522, !dbg !421
  %524 = load double, ptr %523, align 8, !dbg !421, !tbaa !206
  tail call void @llvm.dbg.value(metadata double poison, metadata !148, metadata !DIExpression()), !dbg !420
  %525 = add i64 %514, %509, !dbg !422
  %526 = trunc i64 %525 to i32, !dbg !422
  %527 = shl nsw i32 %526, 1, !dbg !422
  %528 = sext i32 %527 to i64, !dbg !422
  %529 = getelementptr inbounds double, ptr %6, i64 %528, !dbg !422
  %530 = load double, ptr %529, align 8, !dbg !422, !tbaa !206
  tail call void @llvm.dbg.value(metadata double %530, metadata !149, metadata !DIExpression()), !dbg !420
  %531 = or disjoint i32 %527, 1, !dbg !423
  %532 = sext i32 %531 to i64, !dbg !423
  %533 = getelementptr inbounds double, ptr %6, i64 %532, !dbg !423
  %534 = load double, ptr %533, align 8, !dbg !423, !tbaa !206
  tail call void @llvm.dbg.value(metadata double %534, metadata !150, metadata !DIExpression()), !dbg !420
  %535 = fmul double %520, %530, !dbg !424
  %536 = fmul double %524, %534, !dbg !425
  %537 = fadd double %535, %536, !dbg !425
  %538 = fadd double %513, %537, !dbg !426
  tail call void @llvm.dbg.value(metadata double %538, metadata !134, metadata !DIExpression()), !dbg !417
  %539 = fmul double %520, %534, !dbg !427
  %540 = fmul double %524, %530, !dbg !428
  %541 = fsub double %539, %540, !dbg !428
  %542 = fadd double %512, %541, !dbg !429
  tail call void @llvm.dbg.value(metadata double %542, metadata !143, metadata !DIExpression()), !dbg !417
  %543 = add nuw nsw i64 %511, 1, !dbg !430
  tail call void @llvm.dbg.value(metadata i64 %543, metadata !76, metadata !DIExpression()), !dbg !180
  %544 = icmp eq i64 %543, %503, !dbg !431
  br i1 %544, label %545, label %510, !dbg !418, !llvm.loop !432

545:                                              ; preds = %510, %508
  %546 = phi double [ 0.000000e+00, %508 ], [ %538, %510 ], !dbg !417
  %547 = phi double [ 0.000000e+00, %508 ], [ %542, %510 ], !dbg !417
  %548 = fmul double %546, %5, !dbg !434
  %549 = add i64 %509, %507, !dbg !435
  %550 = trunc i64 %549 to i32, !dbg !435
  %551 = shl nsw i32 %550, 1, !dbg !435
  %552 = sext i32 %551 to i64, !dbg !435
  %553 = getelementptr inbounds double, ptr %9, i64 %552, !dbg !435
  %554 = load double, ptr %553, align 8, !dbg !436, !tbaa !206
  %555 = fadd double %548, %554, !dbg !436
  store double %555, ptr %553, align 8, !dbg !436, !tbaa !206
  %556 = fmul double %547, %5, !dbg !437
  %557 = or disjoint i32 %551, 1, !dbg !438
  %558 = sext i32 %557 to i64, !dbg !438
  %559 = getelementptr inbounds double, ptr %9, i64 %558, !dbg !438
  %560 = load double, ptr %559, align 8, !dbg !439, !tbaa !206
  %561 = fadd double %556, %560, !dbg !439
  store double %561, ptr %559, align 8, !dbg !439, !tbaa !206
  %562 = add nuw nsw i64 %509, 1, !dbg !440
  tail call void @llvm.dbg.value(metadata i64 %562, metadata !75, metadata !DIExpression()), !dbg !180
  %563 = icmp eq i64 %562, %506, !dbg !441
  br i1 %563, label %564, label %508, !dbg !416, !llvm.loop !442

564:                                              ; preds = %545
  %565 = add nuw nsw i64 %505, 1, !dbg !444
  tail call void @llvm.dbg.value(metadata i64 %565, metadata !72, metadata !DIExpression()), !dbg !180
  %566 = add nuw nsw i64 %506, 1, !dbg !415
  %567 = icmp eq i64 %565, %502, !dbg !414
  br i1 %567, label %569, label %504, !dbg !415, !llvm.loop !445

568:                                              ; preds = %494
  tail call void (i32, ptr, ptr, ...) @cblas_xerbla(i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #3, !dbg !447
  br label %569

569:                                              ; preds = %564, %490, %414, %341, %496, %420, %347, %272, %568, %266, %40
  ret void, !dbg !449
}

declare !dbg !451 void @cblas_xerbla(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!17}
!llvm.module.flags = !{!41, !42, !43, !44, !45, !46, !47}
!llvm.ident = !{!48}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 24, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "./source_herk.h", directory: "/PI-detector/external/gsl/gsl-2.5/cblas", checksumkind: CSK_MD5, checksum: "4573890c17869a65d71cd5bc02efba37")
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
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 161, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 23)
!17 = distinct !DICompileUnit(language: DW_LANG_C11, file: !18, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !19, retainedTypes: !35, globals: !40, splitDebugInlining: false, nameTableKind: None)
!18 = !DIFile(filename: "zherk.c", directory: "/PI-detector/external/gsl/gsl-2.5/cblas", checksumkind: CSK_MD5, checksum: "372ae872f30be432b74a16eed0163470")
!19 = !{!20, !26, !30}
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
!30 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "CBLAS_TRANSPOSE", file: !21, line: 47, baseType: !22, size: 32, elements: !31)
!31 = !{!32, !33, !34}
!32 = !DIEnumerator(name: "CblasNoTrans", value: 111)
!33 = !DIEnumerator(name: "CblasTrans", value: 112)
!34 = !DIEnumerator(name: "CblasConjTrans", value: 113)
!35 = !{!36, !38}
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !37)
!40 = !{!0, !7, !12}
!41 = !{i32 7, !"Dwarf Version", i32 5}
!42 = !{i32 2, !"Debug Info Version", i32 3}
!43 = !{i32 1, !"wchar_size", i32 4}
!44 = !{i32 8, !"PIC Level", i32 2}
!45 = !{i32 7, !"PIE Level", i32 2}
!46 = !{i32 7, !"uwtable", i32 2}
!47 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!48 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!49 = distinct !DISubprogram(name: "cblas_zherk", scope: !18, file: !18, line: 7, type: !50, scopeLine: 11, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !60)
!50 = !DISubroutineType(types: !51)
!51 = !{null, !52, !53, !54, !55, !55, !39, !57, !55, !39, !59, !55}
!52 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!53 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !26)
!54 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!55 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !56)
!56 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!60 = !{!61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !75, !76, !77, !78, !79, !81, !83, !92, !93, !97, !98, !99, !100, !109, !110, !114, !115, !116, !117, !126, !127, !131, !132, !133, !134, !143, !144, !148, !149, !150}
!61 = !DILocalVariable(name: "Order", arg: 1, scope: !49, file: !18, line: 7, type: !52)
!62 = !DILocalVariable(name: "Uplo", arg: 2, scope: !49, file: !18, line: 7, type: !53)
!63 = !DILocalVariable(name: "Trans", arg: 3, scope: !49, file: !18, line: 8, type: !54)
!64 = !DILocalVariable(name: "N", arg: 4, scope: !49, file: !18, line: 8, type: !55)
!65 = !DILocalVariable(name: "K", arg: 5, scope: !49, file: !18, line: 8, type: !55)
!66 = !DILocalVariable(name: "alpha", arg: 6, scope: !49, file: !18, line: 9, type: !39)
!67 = !DILocalVariable(name: "A", arg: 7, scope: !49, file: !18, line: 9, type: !57)
!68 = !DILocalVariable(name: "lda", arg: 8, scope: !49, file: !18, line: 9, type: !55)
!69 = !DILocalVariable(name: "beta", arg: 9, scope: !49, file: !18, line: 10, type: !39)
!70 = !DILocalVariable(name: "C", arg: 10, scope: !49, file: !18, line: 10, type: !59)
!71 = !DILocalVariable(name: "ldc", arg: 11, scope: !49, file: !18, line: 10, type: !55)
!72 = !DILocalVariable(name: "i", scope: !73, file: !2, line: 21, type: !56)
!73 = distinct !DILexicalBlock(scope: !74, file: !2, line: 20, column: 1)
!74 = !DILexicalBlockFile(scope: !49, file: !2, discriminator: 0)
!75 = !DILocalVariable(name: "j", scope: !73, file: !2, line: 21, type: !56)
!76 = !DILocalVariable(name: "k", scope: !73, file: !2, line: 21, type: !56)
!77 = !DILocalVariable(name: "uplo", scope: !73, file: !2, line: 22, type: !56)
!78 = !DILocalVariable(name: "trans", scope: !73, file: !2, line: 22, type: !56)
!79 = !DILocalVariable(name: "pos", scope: !80, file: !2, line: 24, type: !56)
!80 = distinct !DILexicalBlock(scope: !73, file: !2, line: 24, column: 3)
!81 = !DILocalVariable(name: "__dimA", scope: !82, file: !2, line: 24, type: !56)
!82 = distinct !DILexicalBlock(scope: !80, file: !2, line: 24, column: 3)
!83 = !DILocalVariable(name: "temp_real", scope: !84, file: !2, line: 88, type: !37)
!84 = distinct !DILexicalBlock(scope: !85, file: !2, line: 87, column: 31)
!85 = distinct !DILexicalBlock(scope: !86, file: !2, line: 87, column: 7)
!86 = distinct !DILexicalBlock(scope: !87, file: !2, line: 87, column: 7)
!87 = distinct !DILexicalBlock(scope: !88, file: !2, line: 86, column: 29)
!88 = distinct !DILexicalBlock(scope: !89, file: !2, line: 86, column: 5)
!89 = distinct !DILexicalBlock(scope: !90, file: !2, line: 86, column: 5)
!90 = distinct !DILexicalBlock(scope: !91, file: !2, line: 84, column: 52)
!91 = distinct !DILexicalBlock(scope: !73, file: !2, line: 84, column: 7)
!92 = !DILocalVariable(name: "temp_imag", scope: !84, file: !2, line: 89, type: !37)
!93 = !DILocalVariable(name: "Aik_real", scope: !94, file: !2, line: 91, type: !39)
!94 = distinct !DILexicalBlock(scope: !95, file: !2, line: 90, column: 33)
!95 = distinct !DILexicalBlock(scope: !96, file: !2, line: 90, column: 9)
!96 = distinct !DILexicalBlock(scope: !84, file: !2, line: 90, column: 9)
!97 = !DILocalVariable(name: "Aik_imag", scope: !94, file: !2, line: 92, type: !39)
!98 = !DILocalVariable(name: "Ajk_real", scope: !94, file: !2, line: 93, type: !39)
!99 = !DILocalVariable(name: "Ajk_imag", scope: !94, file: !2, line: 94, type: !39)
!100 = !DILocalVariable(name: "temp_real", scope: !101, file: !2, line: 107, type: !37)
!101 = distinct !DILexicalBlock(scope: !102, file: !2, line: 106, column: 31)
!102 = distinct !DILexicalBlock(scope: !103, file: !2, line: 106, column: 7)
!103 = distinct !DILexicalBlock(scope: !104, file: !2, line: 106, column: 7)
!104 = distinct !DILexicalBlock(scope: !105, file: !2, line: 105, column: 29)
!105 = distinct !DILexicalBlock(scope: !106, file: !2, line: 105, column: 5)
!106 = distinct !DILexicalBlock(scope: !107, file: !2, line: 105, column: 5)
!107 = distinct !DILexicalBlock(scope: !108, file: !2, line: 103, column: 61)
!108 = distinct !DILexicalBlock(scope: !91, file: !2, line: 103, column: 14)
!109 = !DILocalVariable(name: "temp_imag", scope: !101, file: !2, line: 108, type: !37)
!110 = !DILocalVariable(name: "Aki_real", scope: !111, file: !2, line: 110, type: !39)
!111 = distinct !DILexicalBlock(scope: !112, file: !2, line: 109, column: 33)
!112 = distinct !DILexicalBlock(scope: !113, file: !2, line: 109, column: 9)
!113 = distinct !DILexicalBlock(scope: !101, file: !2, line: 109, column: 9)
!114 = !DILocalVariable(name: "Aki_imag", scope: !111, file: !2, line: 111, type: !39)
!115 = !DILocalVariable(name: "Akj_real", scope: !111, file: !2, line: 112, type: !39)
!116 = !DILocalVariable(name: "Akj_imag", scope: !111, file: !2, line: 113, type: !39)
!117 = !DILocalVariable(name: "temp_real", scope: !118, file: !2, line: 126, type: !37)
!118 = distinct !DILexicalBlock(scope: !119, file: !2, line: 125, column: 32)
!119 = distinct !DILexicalBlock(scope: !120, file: !2, line: 125, column: 7)
!120 = distinct !DILexicalBlock(scope: !121, file: !2, line: 125, column: 7)
!121 = distinct !DILexicalBlock(scope: !122, file: !2, line: 124, column: 29)
!122 = distinct !DILexicalBlock(scope: !123, file: !2, line: 124, column: 5)
!123 = distinct !DILexicalBlock(scope: !124, file: !2, line: 124, column: 5)
!124 = distinct !DILexicalBlock(scope: !125, file: !2, line: 122, column: 59)
!125 = distinct !DILexicalBlock(scope: !108, file: !2, line: 122, column: 14)
!126 = !DILocalVariable(name: "temp_imag", scope: !118, file: !2, line: 127, type: !37)
!127 = !DILocalVariable(name: "Aik_real", scope: !128, file: !2, line: 129, type: !39)
!128 = distinct !DILexicalBlock(scope: !129, file: !2, line: 128, column: 33)
!129 = distinct !DILexicalBlock(scope: !130, file: !2, line: 128, column: 9)
!130 = distinct !DILexicalBlock(scope: !118, file: !2, line: 128, column: 9)
!131 = !DILocalVariable(name: "Aik_imag", scope: !128, file: !2, line: 130, type: !39)
!132 = !DILocalVariable(name: "Ajk_real", scope: !128, file: !2, line: 131, type: !39)
!133 = !DILocalVariable(name: "Ajk_imag", scope: !128, file: !2, line: 132, type: !39)
!134 = !DILocalVariable(name: "temp_real", scope: !135, file: !2, line: 145, type: !37)
!135 = distinct !DILexicalBlock(scope: !136, file: !2, line: 144, column: 32)
!136 = distinct !DILexicalBlock(scope: !137, file: !2, line: 144, column: 7)
!137 = distinct !DILexicalBlock(scope: !138, file: !2, line: 144, column: 7)
!138 = distinct !DILexicalBlock(scope: !139, file: !2, line: 143, column: 29)
!139 = distinct !DILexicalBlock(scope: !140, file: !2, line: 143, column: 5)
!140 = distinct !DILexicalBlock(scope: !141, file: !2, line: 143, column: 5)
!141 = distinct !DILexicalBlock(scope: !142, file: !2, line: 141, column: 61)
!142 = distinct !DILexicalBlock(scope: !125, file: !2, line: 141, column: 14)
!143 = !DILocalVariable(name: "temp_imag", scope: !135, file: !2, line: 146, type: !37)
!144 = !DILocalVariable(name: "Aki_real", scope: !145, file: !2, line: 148, type: !39)
!145 = distinct !DILexicalBlock(scope: !146, file: !2, line: 147, column: 33)
!146 = distinct !DILexicalBlock(scope: !147, file: !2, line: 147, column: 9)
!147 = distinct !DILexicalBlock(scope: !135, file: !2, line: 147, column: 9)
!148 = !DILocalVariable(name: "Aki_imag", scope: !145, file: !2, line: 149, type: !39)
!149 = !DILocalVariable(name: "Akj_real", scope: !145, file: !2, line: 150, type: !39)
!150 = !DILocalVariable(name: "Akj_imag", scope: !145, file: !2, line: 151, type: !39)
!151 = !DILocation(line: 0, scope: !49)
!152 = !DILocation(line: 0, scope: !80)
!153 = !DILocation(line: 0, scope: !82)
!154 = !DILocation(line: 24, column: 3, scope: !155)
!155 = distinct !DILexicalBlock(scope: !82, file: !2, line: 24, column: 3)
!156 = !DILocation(line: 24, column: 3, scope: !82)
!157 = !DILocation(line: 24, column: 3, scope: !158)
!158 = distinct !DILexicalBlock(scope: !82, file: !2, line: 24, column: 3)
!159 = !DILocation(line: 24, column: 3, scope: !160)
!160 = distinct !DILexicalBlock(scope: !82, file: !2, line: 24, column: 3)
!161 = !DILocation(line: 24, column: 3, scope: !162)
!162 = distinct !DILexicalBlock(scope: !82, file: !2, line: 24, column: 3)
!163 = !DILocation(line: 24, column: 3, scope: !164)
!164 = distinct !DILexicalBlock(scope: !82, file: !2, line: 24, column: 3)
!165 = !DILocation(line: 24, column: 3, scope: !166)
!166 = distinct !DILexicalBlock(scope: !82, file: !2, line: 24, column: 3)
!167 = !DILocation(line: 24, column: 3, scope: !168)
!168 = distinct !DILexicalBlock(scope: !82, file: !2, line: 24, column: 3)
!169 = !DILocation(line: 24, column: 3, scope: !170)
!170 = distinct !DILexicalBlock(scope: !82, file: !2, line: 24, column: 3)
!171 = !DILocation(line: 24, column: 3, scope: !172)
!172 = distinct !DILexicalBlock(scope: !80, file: !2, line: 24, column: 3)
!173 = !DILocation(line: 24, column: 3, scope: !80)
!174 = !DILocation(line: 26, column: 12, scope: !175)
!175 = distinct !DILexicalBlock(scope: !73, file: !2, line: 26, column: 7)
!176 = !DILocation(line: 26, column: 19, scope: !175)
!177 = !DILocation(line: 26, column: 29, scope: !175)
!178 = !DILocation(line: 26, column: 36, scope: !175)
!179 = !DILocation(line: 29, column: 7, scope: !73)
!180 = !DILocation(line: 0, scope: !73)
!181 = !DILocation(line: 38, column: 12, scope: !182)
!182 = distinct !DILexicalBlock(scope: !73, file: !2, line: 38, column: 7)
!183 = !DILocation(line: 38, column: 7, scope: !73)
!184 = !DILocation(line: 39, column: 14, scope: !185)
!185 = distinct !DILexicalBlock(scope: !186, file: !2, line: 39, column: 9)
!186 = distinct !DILexicalBlock(scope: !182, file: !2, line: 38, column: 20)
!187 = !DILocation(line: 0, scope: !185)
!188 = !DILocation(line: 39, column: 9, scope: !186)
!189 = !DILocation(line: 47, column: 7, scope: !190)
!190 = distinct !DILexicalBlock(scope: !191, file: !2, line: 47, column: 7)
!191 = distinct !DILexicalBlock(scope: !185, file: !2, line: 46, column: 12)
!192 = !DILocation(line: 47, column: 21, scope: !193)
!193 = distinct !DILexicalBlock(scope: !190, file: !2, line: 47, column: 7)
!194 = !DILocation(line: 40, column: 7, scope: !195)
!195 = distinct !DILexicalBlock(scope: !196, file: !2, line: 40, column: 7)
!196 = distinct !DILexicalBlock(scope: !185, file: !2, line: 39, column: 29)
!197 = !DILocation(line: 40, column: 21, scope: !198)
!198 = distinct !DILexicalBlock(scope: !195, file: !2, line: 40, column: 7)
!199 = !DILocation(line: 41, column: 9, scope: !200)
!200 = distinct !DILexicalBlock(scope: !201, file: !2, line: 41, column: 9)
!201 = distinct !DILexicalBlock(scope: !198, file: !2, line: 40, column: 31)
!202 = !DILocation(line: 42, column: 11, scope: !203)
!203 = distinct !DILexicalBlock(scope: !204, file: !2, line: 41, column: 33)
!204 = distinct !DILexicalBlock(scope: !200, file: !2, line: 41, column: 9)
!205 = !DILocation(line: 42, column: 32, scope: !203)
!206 = !{!207, !207, i64 0}
!207 = !{!"double", !208, i64 0}
!208 = !{!"omnipotent char", !209, i64 0}
!209 = !{!"Simple C/C++ TBAA"}
!210 = !DILocation(line: 43, column: 11, scope: !203)
!211 = !DILocation(line: 43, column: 32, scope: !203)
!212 = !DILocation(line: 41, column: 29, scope: !204)
!213 = !DILocation(line: 41, column: 23, scope: !204)
!214 = distinct !{!214, !199, !215, !216}
!215 = !DILocation(line: 44, column: 9, scope: !200)
!216 = !{!"llvm.loop.mustprogress"}
!217 = !DILocation(line: 40, column: 27, scope: !198)
!218 = distinct !{!218, !194, !219, !216}
!219 = !DILocation(line: 45, column: 7, scope: !195)
!220 = !DILocation(line: 48, column: 9, scope: !221)
!221 = distinct !DILexicalBlock(scope: !222, file: !2, line: 48, column: 9)
!222 = distinct !DILexicalBlock(scope: !193, file: !2, line: 47, column: 31)
!223 = !DILocation(line: 49, column: 11, scope: !224)
!224 = distinct !DILexicalBlock(scope: !225, file: !2, line: 48, column: 34)
!225 = distinct !DILexicalBlock(scope: !221, file: !2, line: 48, column: 9)
!226 = !DILocation(line: 49, column: 32, scope: !224)
!227 = !DILocation(line: 50, column: 11, scope: !224)
!228 = !DILocation(line: 50, column: 32, scope: !224)
!229 = !DILocation(line: 48, column: 30, scope: !225)
!230 = distinct !{!230, !220, !231, !216}
!231 = !DILocation(line: 51, column: 9, scope: !221)
!232 = !DILocation(line: 47, column: 27, scope: !193)
!233 = distinct !{!233, !189, !234, !216}
!234 = !DILocation(line: 52, column: 7, scope: !190)
!235 = !DILocation(line: 54, column: 19, scope: !236)
!236 = distinct !DILexicalBlock(scope: !182, file: !2, line: 54, column: 14)
!237 = !DILocation(line: 54, column: 14, scope: !182)
!238 = !DILocation(line: 76, column: 19, scope: !239)
!239 = distinct !DILexicalBlock(scope: !240, file: !2, line: 76, column: 5)
!240 = distinct !DILexicalBlock(scope: !241, file: !2, line: 76, column: 5)
!241 = distinct !DILexicalBlock(scope: !236, file: !2, line: 74, column: 10)
!242 = !DILocation(line: 76, column: 5, scope: !240)
!243 = !DILocation(line: 55, column: 14, scope: !244)
!244 = distinct !DILexicalBlock(scope: !245, file: !2, line: 55, column: 9)
!245 = distinct !DILexicalBlock(scope: !236, file: !2, line: 54, column: 27)
!246 = !DILocation(line: 0, scope: !244)
!247 = !DILocation(line: 55, column: 9, scope: !245)
!248 = !DILocation(line: 65, column: 7, scope: !249)
!249 = distinct !DILexicalBlock(scope: !250, file: !2, line: 65, column: 7)
!250 = distinct !DILexicalBlock(scope: !244, file: !2, line: 64, column: 12)
!251 = !DILocation(line: 65, column: 21, scope: !252)
!252 = distinct !DILexicalBlock(scope: !249, file: !2, line: 65, column: 7)
!253 = !DILocation(line: 56, column: 7, scope: !254)
!254 = distinct !DILexicalBlock(scope: !255, file: !2, line: 56, column: 7)
!255 = distinct !DILexicalBlock(scope: !244, file: !2, line: 55, column: 29)
!256 = !DILocation(line: 56, column: 21, scope: !257)
!257 = distinct !DILexicalBlock(scope: !254, file: !2, line: 56, column: 7)
!258 = distinct !{!258, !253, !259, !216}
!259 = !DILocation(line: 63, column: 7, scope: !254)
!260 = !DILocation(line: 57, column: 9, scope: !261)
!261 = distinct !DILexicalBlock(scope: !257, file: !2, line: 56, column: 31)
!262 = !DILocation(line: 57, column: 30, scope: !261)
!263 = !DILocation(line: 58, column: 9, scope: !261)
!264 = !DILocation(line: 58, column: 30, scope: !261)
!265 = !DILocation(line: 59, column: 20, scope: !266)
!266 = distinct !DILexicalBlock(scope: !261, file: !2, line: 59, column: 9)
!267 = !DILocation(line: 59, column: 27, scope: !268)
!268 = distinct !DILexicalBlock(scope: !266, file: !2, line: 59, column: 9)
!269 = !DILocation(line: 59, column: 9, scope: !266)
!270 = !DILocation(line: 60, column: 11, scope: !271)
!271 = distinct !DILexicalBlock(scope: !268, file: !2, line: 59, column: 37)
!272 = !DILocation(line: 60, column: 32, scope: !271)
!273 = !DILocation(line: 61, column: 11, scope: !271)
!274 = !DILocation(line: 61, column: 32, scope: !271)
!275 = !DILocation(line: 59, column: 33, scope: !268)
!276 = distinct !{!276, !269, !277, !216}
!277 = !DILocation(line: 62, column: 9, scope: !266)
!278 = !DILocation(line: 66, column: 23, scope: !279)
!279 = distinct !DILexicalBlock(scope: !280, file: !2, line: 66, column: 9)
!280 = distinct !DILexicalBlock(scope: !281, file: !2, line: 66, column: 9)
!281 = distinct !DILexicalBlock(scope: !252, file: !2, line: 65, column: 31)
!282 = !DILocation(line: 66, column: 9, scope: !280)
!283 = !DILocation(line: 67, column: 11, scope: !284)
!284 = distinct !DILexicalBlock(scope: !279, file: !2, line: 66, column: 33)
!285 = !DILocation(line: 67, column: 32, scope: !284)
!286 = !DILocation(line: 68, column: 11, scope: !284)
!287 = !DILocation(line: 68, column: 32, scope: !284)
!288 = !DILocation(line: 66, column: 29, scope: !279)
!289 = distinct !{!289, !282, !290, !216}
!290 = !DILocation(line: 69, column: 9, scope: !280)
!291 = !DILocation(line: 70, column: 9, scope: !281)
!292 = !DILocation(line: 70, column: 30, scope: !281)
!293 = !DILocation(line: 71, column: 9, scope: !281)
!294 = !DILocation(line: 71, column: 30, scope: !281)
!295 = !DILocation(line: 65, column: 27, scope: !252)
!296 = distinct !{!296, !248, !297, !216}
!297 = !DILocation(line: 72, column: 7, scope: !249)
!298 = !DILocation(line: 77, column: 7, scope: !299)
!299 = distinct !DILexicalBlock(scope: !239, file: !2, line: 76, column: 29)
!300 = !DILocation(line: 77, column: 28, scope: !299)
!301 = !DILocation(line: 76, column: 25, scope: !239)
!302 = distinct !{!302, !242, !303, !216}
!303 = !DILocation(line: 78, column: 5, scope: !240)
!304 = distinct !{!304, !305}
!305 = !{!"llvm.loop.unroll.disable"}
!306 = !DILocation(line: 81, column: 13, scope: !307)
!307 = distinct !DILexicalBlock(scope: !73, file: !2, line: 81, column: 7)
!308 = !DILocation(line: 81, column: 7, scope: !73)
!309 = !DILocation(line: 84, column: 12, scope: !91)
!310 = !DILocation(line: 84, column: 26, scope: !91)
!311 = !DILocation(line: 86, column: 19, scope: !88)
!312 = !DILocation(line: 86, column: 5, scope: !89)
!313 = !DILocation(line: 87, column: 7, scope: !86)
!314 = !DILocation(line: 0, scope: !84)
!315 = !DILocation(line: 90, column: 9, scope: !96)
!316 = !DILocation(line: 91, column: 33, scope: !94)
!317 = !DILocation(line: 0, scope: !94)
!318 = !DILocation(line: 92, column: 33, scope: !94)
!319 = !DILocation(line: 93, column: 33, scope: !94)
!320 = !DILocation(line: 94, column: 34, scope: !94)
!321 = !DILocation(line: 95, column: 33, scope: !94)
!322 = !DILocation(line: 95, column: 44, scope: !94)
!323 = !DILocation(line: 95, column: 21, scope: !94)
!324 = !DILocation(line: 96, column: 55, scope: !94)
!325 = !DILocation(line: 96, column: 44, scope: !94)
!326 = !DILocation(line: 96, column: 21, scope: !94)
!327 = !DILocation(line: 90, column: 29, scope: !95)
!328 = !DILocation(line: 90, column: 23, scope: !95)
!329 = distinct !{!329, !315, !330, !216}
!330 = !DILocation(line: 97, column: 9, scope: !96)
!331 = !DILocation(line: 98, column: 39, scope: !84)
!332 = !DILocation(line: 98, column: 9, scope: !84)
!333 = !DILocation(line: 98, column: 30, scope: !84)
!334 = !DILocation(line: 99, column: 39, scope: !84)
!335 = !DILocation(line: 99, column: 9, scope: !84)
!336 = !DILocation(line: 99, column: 30, scope: !84)
!337 = !DILocation(line: 87, column: 27, scope: !85)
!338 = !DILocation(line: 87, column: 21, scope: !85)
!339 = distinct !{!339, !313, !340, !216}
!340 = !DILocation(line: 100, column: 7, scope: !86)
!341 = !DILocation(line: 86, column: 25, scope: !88)
!342 = distinct !{!342, !312, !343, !216}
!343 = !DILocation(line: 101, column: 5, scope: !89)
!344 = !DILocation(line: 103, column: 33, scope: !108)
!345 = !DILocation(line: 105, column: 19, scope: !105)
!346 = !DILocation(line: 105, column: 5, scope: !106)
!347 = !DILocation(line: 106, column: 7, scope: !103)
!348 = !DILocation(line: 0, scope: !101)
!349 = !DILocation(line: 109, column: 9, scope: !113)
!350 = !DILocation(line: 110, column: 33, scope: !111)
!351 = !DILocation(line: 0, scope: !111)
!352 = !DILocation(line: 111, column: 34, scope: !111)
!353 = !DILocation(line: 112, column: 33, scope: !111)
!354 = !DILocation(line: 113, column: 33, scope: !111)
!355 = !DILocation(line: 114, column: 33, scope: !111)
!356 = !DILocation(line: 114, column: 44, scope: !111)
!357 = !DILocation(line: 114, column: 21, scope: !111)
!358 = !DILocation(line: 115, column: 33, scope: !111)
!359 = !DILocation(line: 115, column: 44, scope: !111)
!360 = !DILocation(line: 115, column: 21, scope: !111)
!361 = !DILocation(line: 109, column: 29, scope: !112)
!362 = !DILocation(line: 109, column: 23, scope: !112)
!363 = distinct !{!363, !349, !364, !216}
!364 = !DILocation(line: 116, column: 9, scope: !113)
!365 = !DILocation(line: 117, column: 39, scope: !101)
!366 = !DILocation(line: 117, column: 9, scope: !101)
!367 = !DILocation(line: 117, column: 30, scope: !101)
!368 = !DILocation(line: 118, column: 39, scope: !101)
!369 = !DILocation(line: 118, column: 9, scope: !101)
!370 = !DILocation(line: 118, column: 30, scope: !101)
!371 = !DILocation(line: 106, column: 27, scope: !102)
!372 = !DILocation(line: 106, column: 21, scope: !102)
!373 = distinct !{!373, !347, !374, !216}
!374 = !DILocation(line: 119, column: 7, scope: !103)
!375 = !DILocation(line: 105, column: 25, scope: !105)
!376 = distinct !{!376, !346, !377, !216}
!377 = !DILocation(line: 120, column: 5, scope: !106)
!378 = !DILocation(line: 122, column: 19, scope: !125)
!379 = !DILocation(line: 122, column: 33, scope: !125)
!380 = !DILocation(line: 124, column: 19, scope: !122)
!381 = !DILocation(line: 124, column: 5, scope: !123)
!382 = !DILocation(line: 125, column: 7, scope: !120)
!383 = !DILocation(line: 0, scope: !118)
!384 = !DILocation(line: 128, column: 9, scope: !130)
!385 = !DILocation(line: 129, column: 33, scope: !128)
!386 = !DILocation(line: 0, scope: !128)
!387 = !DILocation(line: 130, column: 33, scope: !128)
!388 = !DILocation(line: 131, column: 33, scope: !128)
!389 = !DILocation(line: 132, column: 34, scope: !128)
!390 = !DILocation(line: 133, column: 33, scope: !128)
!391 = !DILocation(line: 133, column: 44, scope: !128)
!392 = !DILocation(line: 133, column: 21, scope: !128)
!393 = !DILocation(line: 134, column: 55, scope: !128)
!394 = !DILocation(line: 134, column: 44, scope: !128)
!395 = !DILocation(line: 134, column: 21, scope: !128)
!396 = !DILocation(line: 128, column: 29, scope: !129)
!397 = !DILocation(line: 128, column: 23, scope: !129)
!398 = distinct !{!398, !384, !399, !216}
!399 = !DILocation(line: 135, column: 9, scope: !130)
!400 = !DILocation(line: 136, column: 39, scope: !118)
!401 = !DILocation(line: 136, column: 9, scope: !118)
!402 = !DILocation(line: 136, column: 30, scope: !118)
!403 = !DILocation(line: 137, column: 39, scope: !118)
!404 = !DILocation(line: 137, column: 9, scope: !118)
!405 = !DILocation(line: 137, column: 30, scope: !118)
!406 = !DILocation(line: 125, column: 28, scope: !119)
!407 = !DILocation(line: 125, column: 21, scope: !119)
!408 = distinct !{!408, !382, !409, !216}
!409 = !DILocation(line: 138, column: 7, scope: !120)
!410 = !DILocation(line: 124, column: 25, scope: !122)
!411 = distinct !{!411, !381, !412, !216}
!412 = !DILocation(line: 139, column: 5, scope: !123)
!413 = !DILocation(line: 141, column: 33, scope: !142)
!414 = !DILocation(line: 143, column: 19, scope: !139)
!415 = !DILocation(line: 143, column: 5, scope: !140)
!416 = !DILocation(line: 144, column: 7, scope: !137)
!417 = !DILocation(line: 0, scope: !135)
!418 = !DILocation(line: 147, column: 9, scope: !147)
!419 = !DILocation(line: 148, column: 33, scope: !145)
!420 = !DILocation(line: 0, scope: !145)
!421 = !DILocation(line: 149, column: 34, scope: !145)
!422 = !DILocation(line: 150, column: 33, scope: !145)
!423 = !DILocation(line: 151, column: 33, scope: !145)
!424 = !DILocation(line: 152, column: 33, scope: !145)
!425 = !DILocation(line: 152, column: 44, scope: !145)
!426 = !DILocation(line: 152, column: 21, scope: !145)
!427 = !DILocation(line: 153, column: 33, scope: !145)
!428 = !DILocation(line: 153, column: 44, scope: !145)
!429 = !DILocation(line: 153, column: 21, scope: !145)
!430 = !DILocation(line: 147, column: 29, scope: !146)
!431 = !DILocation(line: 147, column: 23, scope: !146)
!432 = distinct !{!432, !418, !433, !216}
!433 = !DILocation(line: 154, column: 9, scope: !147)
!434 = !DILocation(line: 155, column: 39, scope: !135)
!435 = !DILocation(line: 155, column: 9, scope: !135)
!436 = !DILocation(line: 155, column: 30, scope: !135)
!437 = !DILocation(line: 156, column: 39, scope: !135)
!438 = !DILocation(line: 156, column: 9, scope: !135)
!439 = !DILocation(line: 156, column: 30, scope: !135)
!440 = !DILocation(line: 144, column: 28, scope: !136)
!441 = !DILocation(line: 144, column: 21, scope: !136)
!442 = distinct !{!442, !416, !443, !216}
!443 = !DILocation(line: 157, column: 7, scope: !137)
!444 = !DILocation(line: 143, column: 25, scope: !139)
!445 = distinct !{!445, !415, !446, !216}
!446 = !DILocation(line: 158, column: 5, scope: !140)
!447 = !DILocation(line: 161, column: 5, scope: !448)
!448 = distinct !DILexicalBlock(scope: !142, file: !2, line: 160, column: 10)
!449 = !DILocation(line: 15, column: 1, scope: !450)
!450 = !DILexicalBlockFile(scope: !49, file: !18, discriminator: 0)
!451 = !DISubprogram(name: "cblas_xerbla", scope: !21, file: !21, line: 602, type: !452, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!452 = !DISubroutineType(types: !453)
!453 = !{null, !56, !454, !454, null}
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!455 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
