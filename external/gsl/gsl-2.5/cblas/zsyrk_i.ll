; ModuleID = 'zsyrk.ll'
source_filename = "zsyrk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"./source_syrk_c.h\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !7
@.str.2 = private unnamed_addr constant [23 x i8] c"unrecognized operation\00", align 1, !dbg !12

; Function Attrs: nounwind uwtable
define dso_local void @cblas_zsyrk(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef readonly %5, ptr nocapture noundef readonly %6, i32 noundef %7, ptr nocapture noundef readonly %8, ptr nocapture noundef %9, i32 noundef %10) local_unnamed_addr #0 !dbg !49 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !61, metadata !DIExpression()), !dbg !178
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !62, metadata !DIExpression()), !dbg !178
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !63, metadata !DIExpression()), !dbg !178
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !64, metadata !DIExpression()), !dbg !178
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !65, metadata !DIExpression()), !dbg !178
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !66, metadata !DIExpression()), !dbg !178
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !67, metadata !DIExpression()), !dbg !178
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !68, metadata !DIExpression()), !dbg !178
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !69, metadata !DIExpression()), !dbg !178
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !70, metadata !DIExpression()), !dbg !178
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !71, metadata !DIExpression()), !dbg !178
  tail call void @llvm.dbg.value(metadata i32 0, metadata !79, metadata !DIExpression()), !dbg !179
  tail call void @llvm.dbg.value(metadata i32 0, metadata !81, metadata !DIExpression()), !dbg !180
  %12 = icmp eq i32 %0, 101, !dbg !181
  %13 = icmp eq i32 %2, 111, !dbg !183
  %14 = select i1 %13, i32 %4, i32 %3, !dbg !183
  %15 = select i1 %13, i32 %3, i32 %4, !dbg !183
  %16 = select i1 %12, i32 %14, i32 %15, !dbg !183
  tail call void @llvm.dbg.value(metadata i32 %16, metadata !81, metadata !DIExpression()), !dbg !180
  %17 = add i32 %0, -103, !dbg !184
  %18 = icmp ult i32 %17, -2, !dbg !184
  %19 = zext i1 %18 to i32, !dbg !184
  tail call void @llvm.dbg.value(metadata i32 %19, metadata !79, metadata !DIExpression()), !dbg !179
  %20 = add i32 %1, -123, !dbg !186
  %21 = icmp ult i32 %20, -2, !dbg !186
  %22 = select i1 %21, i32 2, i32 %19, !dbg !186
  tail call void @llvm.dbg.value(metadata i32 %22, metadata !79, metadata !DIExpression()), !dbg !179
  %23 = add i32 %2, -114, !dbg !188
  %24 = icmp ult i32 %23, -3, !dbg !188
  %25 = select i1 %24, i32 3, i32 %22, !dbg !188
  tail call void @llvm.dbg.value(metadata i32 %25, metadata !79, metadata !DIExpression()), !dbg !179
  %26 = icmp slt i32 %3, 0, !dbg !190
  %27 = select i1 %26, i32 4, i32 %25, !dbg !183
  tail call void @llvm.dbg.value(metadata i32 %27, metadata !79, metadata !DIExpression()), !dbg !179
  %28 = icmp slt i32 %4, 0, !dbg !192
  %29 = select i1 %28, i32 5, i32 %27, !dbg !183
  tail call void @llvm.dbg.value(metadata i32 %29, metadata !79, metadata !DIExpression()), !dbg !179
  %30 = tail call i32 @llvm.smax.i32(i32 %16, i32 1), !dbg !194
  %31 = icmp sgt i32 %30, %7, !dbg !194
  %32 = select i1 %31, i32 8, i32 %29, !dbg !183
  tail call void @llvm.dbg.value(metadata i32 %32, metadata !79, metadata !DIExpression()), !dbg !179
  %33 = tail call i32 @llvm.smax.i32(i32 %3, i32 1), !dbg !196
  %34 = icmp sgt i32 %33, %10, !dbg !196
  %35 = select i1 %34, i32 11, i32 %32, !dbg !183
  tail call void @llvm.dbg.value(metadata i32 %35, metadata !79, metadata !DIExpression()), !dbg !179
  %36 = icmp eq i32 %35, 0, !dbg !198
  br i1 %36, label %38, label %37, !dbg !200

37:                                               ; preds = %11
  tail call void (i32, ptr, ptr, ...) @cblas_xerbla(i32 noundef %35, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #3, !dbg !198
  br label %38, !dbg !198

38:                                               ; preds = %37, %11
  %39 = load double, ptr %5, align 8, !dbg !201, !tbaa !202
  tail call void @llvm.dbg.value(metadata double %39, metadata !83, metadata !DIExpression()), !dbg !206
  %40 = getelementptr inbounds double, ptr %5, i64 1, !dbg !207
  %41 = load double, ptr %40, align 8, !dbg !207, !tbaa !202
  tail call void @llvm.dbg.value(metadata double %41, metadata !85, metadata !DIExpression()), !dbg !206
  %42 = load double, ptr %8, align 8, !dbg !208, !tbaa !202
  tail call void @llvm.dbg.value(metadata double %42, metadata !86, metadata !DIExpression()), !dbg !206
  %43 = getelementptr inbounds double, ptr %8, i64 1, !dbg !209
  %44 = load double, ptr %43, align 8, !dbg !209, !tbaa !202
  tail call void @llvm.dbg.value(metadata double %44, metadata !87, metadata !DIExpression()), !dbg !206
  %45 = fcmp oeq double %39, 0.000000e+00, !dbg !210
  %46 = fcmp oeq double %41, 0.000000e+00
  %47 = select i1 %45, i1 %46, i1 false, !dbg !212
  %48 = fcmp oeq double %42, 1.000000e+00
  %49 = select i1 %47, i1 %48, i1 false, !dbg !212
  %50 = fcmp oeq double %44, 0.000000e+00
  %51 = select i1 %49, i1 %50, i1 false, !dbg !212
  br i1 %51, label %486, label %52, !dbg !212

52:                                               ; preds = %38
  %53 = select i1 %13, i32 111, i32 112, !dbg !213
  %54 = icmp eq i32 %1, 121, !dbg !213
  %55 = select i1 %54, i32 122, i32 121, !dbg !213
  %56 = select i1 %13, i32 112, i32 111, !dbg !213
  %57 = select i1 %12, i32 %53, i32 %56, !dbg !213
  %58 = select i1 %12, i32 %1, i32 %55, !dbg !213
  tail call void @llvm.dbg.value(metadata i32 %58, metadata !77, metadata !DIExpression()), !dbg !214
  tail call void @llvm.dbg.value(metadata i32 %57, metadata !78, metadata !DIExpression()), !dbg !214
  %59 = fcmp oeq double %42, 0.000000e+00, !dbg !215
  %60 = select i1 %59, i1 %50, i1 false, !dbg !216
  br i1 %60, label %61, label %137, !dbg !216

61:                                               ; preds = %52
  %62 = icmp eq i32 %58, 121, !dbg !217
  tail call void @llvm.dbg.value(metadata i32 0, metadata !72, metadata !DIExpression()), !dbg !214
  tail call void @llvm.dbg.value(metadata i32 0, metadata !72, metadata !DIExpression()), !dbg !214
  tail call void @llvm.dbg.value(metadata i32 0, metadata !72, metadata !DIExpression()), !dbg !214
  tail call void @llvm.dbg.value(metadata i32 0, metadata !72, metadata !DIExpression()), !dbg !214
  %63 = icmp sgt i32 %3, 0, !dbg !220
  br i1 %62, label %68, label %64, !dbg !221

64:                                               ; preds = %61
  br i1 %63, label %65, label %200, !dbg !222

65:                                               ; preds = %64
  %66 = zext i32 %10 to i64, !dbg !222
  %67 = zext nneg i32 %3 to i64, !dbg !225
  br label %90, !dbg !222

68:                                               ; preds = %61
  br i1 %63, label %69, label %200, !dbg !227

69:                                               ; preds = %68
  %70 = zext i32 %10 to i64, !dbg !227
  %71 = zext nneg i32 %3 to i64, !dbg !230
  br label %72, !dbg !227

72:                                               ; preds = %87, %69
  %73 = phi i64 [ 0, %69 ], [ %88, %87 ]
  tail call void @llvm.dbg.value(metadata i64 %73, metadata !72, metadata !DIExpression()), !dbg !214
  tail call void @llvm.dbg.value(metadata i64 %73, metadata !75, metadata !DIExpression()), !dbg !214
  %74 = mul i64 %73, %70
  br label %75, !dbg !232

75:                                               ; preds = %75, %72
  %76 = phi i64 [ %73, %72 ], [ %85, %75 ]
  tail call void @llvm.dbg.value(metadata i64 %76, metadata !75, metadata !DIExpression()), !dbg !214
  %77 = add i64 %76, %74, !dbg !235
  %78 = trunc i64 %77 to i32, !dbg !235
  %79 = shl nsw i32 %78, 1, !dbg !235
  %80 = sext i32 %79 to i64, !dbg !235
  %81 = getelementptr inbounds double, ptr %9, i64 %80, !dbg !235
  store double 0.000000e+00, ptr %81, align 8, !dbg !238, !tbaa !202
  %82 = or disjoint i32 %79, 1, !dbg !239
  %83 = sext i32 %82 to i64, !dbg !239
  %84 = getelementptr inbounds double, ptr %9, i64 %83, !dbg !239
  store double 0.000000e+00, ptr %84, align 8, !dbg !240, !tbaa !202
  %85 = add nuw nsw i64 %76, 1, !dbg !241
  tail call void @llvm.dbg.value(metadata i64 %85, metadata !75, metadata !DIExpression()), !dbg !214
  %86 = icmp eq i64 %85, %71, !dbg !242
  br i1 %86, label %87, label %75, !dbg !232, !llvm.loop !243

87:                                               ; preds = %75
  %88 = add nuw nsw i64 %73, 1, !dbg !246
  tail call void @llvm.dbg.value(metadata i64 %88, metadata !72, metadata !DIExpression()), !dbg !214
  %89 = icmp eq i64 %88, %71, !dbg !230
  br i1 %89, label %200, label %72, !dbg !227, !llvm.loop !247

90:                                               ; preds = %133, %65
  %91 = phi i64 [ 0, %65 ], [ %134, %133 ]
  %92 = phi i64 [ 1, %65 ], [ %135, %133 ]
  tail call void @llvm.dbg.value(metadata i64 %91, metadata !72, metadata !DIExpression()), !dbg !214
  %93 = mul i64 %91, %66
  tail call void @llvm.dbg.value(metadata i32 0, metadata !75, metadata !DIExpression()), !dbg !214
  %94 = and i64 %92, 1, !dbg !249
  %95 = icmp eq i64 %91, 0, !dbg !249
  br i1 %95, label %121, label %96, !dbg !249

96:                                               ; preds = %90
  %97 = and i64 %92, 9223372036854775806, !dbg !249
  br label %98, !dbg !249

98:                                               ; preds = %98, %96
  %99 = phi i64 [ 0, %96 ], [ %118, %98 ]
  %100 = phi i64 [ 0, %96 ], [ %119, %98 ]
  tail call void @llvm.dbg.value(metadata i64 %99, metadata !75, metadata !DIExpression()), !dbg !214
  %101 = add i64 %99, %93, !dbg !252
  %102 = trunc i64 %101 to i32, !dbg !252
  %103 = shl nsw i32 %102, 1, !dbg !252
  %104 = sext i32 %103 to i64, !dbg !252
  %105 = getelementptr inbounds double, ptr %9, i64 %104, !dbg !252
  store double 0.000000e+00, ptr %105, align 8, !dbg !255, !tbaa !202
  %106 = or disjoint i32 %103, 1, !dbg !256
  %107 = sext i32 %106 to i64, !dbg !256
  %108 = getelementptr inbounds double, ptr %9, i64 %107, !dbg !256
  store double 0.000000e+00, ptr %108, align 8, !dbg !257, !tbaa !202
  %109 = or disjoint i64 %99, 1, !dbg !258
  tail call void @llvm.dbg.value(metadata i64 %109, metadata !75, metadata !DIExpression()), !dbg !214
  tail call void @llvm.dbg.value(metadata i64 %109, metadata !75, metadata !DIExpression()), !dbg !214
  %110 = add i64 %109, %93, !dbg !252
  %111 = trunc i64 %110 to i32, !dbg !252
  %112 = shl nsw i32 %111, 1, !dbg !252
  %113 = sext i32 %112 to i64, !dbg !252
  %114 = getelementptr inbounds double, ptr %9, i64 %113, !dbg !252
  store double 0.000000e+00, ptr %114, align 8, !dbg !255, !tbaa !202
  %115 = or disjoint i32 %112, 1, !dbg !256
  %116 = sext i32 %115 to i64, !dbg !256
  %117 = getelementptr inbounds double, ptr %9, i64 %116, !dbg !256
  store double 0.000000e+00, ptr %117, align 8, !dbg !257, !tbaa !202
  %118 = add nuw nsw i64 %99, 2, !dbg !258
  tail call void @llvm.dbg.value(metadata i64 %118, metadata !75, metadata !DIExpression()), !dbg !214
  %119 = add i64 %100, 2, !dbg !249
  %120 = icmp eq i64 %119, %97, !dbg !249
  br i1 %120, label %121, label %98, !dbg !249, !llvm.loop !259

121:                                              ; preds = %98, %90
  %122 = phi i64 [ 0, %90 ], [ %118, %98 ]
  %123 = icmp eq i64 %94, 0, !dbg !249
  br i1 %123, label %133, label %124, !dbg !249

124:                                              ; preds = %121
  tail call void @llvm.dbg.value(metadata i64 %122, metadata !75, metadata !DIExpression()), !dbg !214
  %125 = add i64 %122, %93, !dbg !252
  %126 = trunc i64 %125 to i32, !dbg !252
  %127 = shl nsw i32 %126, 1, !dbg !252
  %128 = sext i32 %127 to i64, !dbg !252
  %129 = getelementptr inbounds double, ptr %9, i64 %128, !dbg !252
  store double 0.000000e+00, ptr %129, align 8, !dbg !255, !tbaa !202
  %130 = or disjoint i32 %127, 1, !dbg !256
  %131 = sext i32 %130 to i64, !dbg !256
  %132 = getelementptr inbounds double, ptr %9, i64 %131, !dbg !256
  store double 0.000000e+00, ptr %132, align 8, !dbg !257, !tbaa !202
  tail call void @llvm.dbg.value(metadata i64 %122, metadata !75, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !214
  br label %133, !dbg !261

133:                                              ; preds = %124, %121
  %134 = add nuw nsw i64 %91, 1, !dbg !261
  tail call void @llvm.dbg.value(metadata i64 %134, metadata !72, metadata !DIExpression()), !dbg !214
  %135 = add nuw nsw i64 %92, 1, !dbg !222
  %136 = icmp eq i64 %134, %67, !dbg !225
  br i1 %136, label %200, label %90, !dbg !222, !llvm.loop !262

137:                                              ; preds = %52
  %138 = select i1 %48, i1 %50, i1 false, !dbg !264
  br i1 %138, label %200, label %139, !dbg !264

139:                                              ; preds = %137
  %140 = icmp eq i32 %58, 121, !dbg !265
  tail call void @llvm.dbg.value(metadata i32 0, metadata !72, metadata !DIExpression()), !dbg !214
  tail call void @llvm.dbg.value(metadata i32 0, metadata !72, metadata !DIExpression()), !dbg !214
  tail call void @llvm.dbg.value(metadata i32 0, metadata !72, metadata !DIExpression()), !dbg !214
  tail call void @llvm.dbg.value(metadata i32 0, metadata !72, metadata !DIExpression()), !dbg !214
  %141 = icmp sgt i32 %3, 0, !dbg !266
  br i1 %140, label %146, label %142, !dbg !267

142:                                              ; preds = %139
  br i1 %141, label %143, label %200, !dbg !268

143:                                              ; preds = %142
  %144 = zext i32 %10 to i64, !dbg !268
  %145 = zext nneg i32 %3 to i64, !dbg !269
  br label %174, !dbg !268

146:                                              ; preds = %139
  br i1 %141, label %147, label %200, !dbg !270

147:                                              ; preds = %146
  %148 = zext i32 %10 to i64, !dbg !270
  %149 = zext nneg i32 %3 to i64, !dbg !271
  br label %150, !dbg !270

150:                                              ; preds = %171, %147
  %151 = phi i64 [ 0, %147 ], [ %172, %171 ]
  tail call void @llvm.dbg.value(metadata i64 %151, metadata !72, metadata !DIExpression()), !dbg !214
  tail call void @llvm.dbg.value(metadata i64 %151, metadata !75, metadata !DIExpression()), !dbg !214
  %152 = mul i64 %151, %148
  br label %153, !dbg !272

153:                                              ; preds = %153, %150
  %154 = phi i64 [ %151, %150 ], [ %169, %153 ]
  tail call void @llvm.dbg.value(metadata i64 %154, metadata !75, metadata !DIExpression()), !dbg !214
  %155 = add i64 %154, %152, !dbg !273
  %156 = trunc i64 %155 to i32, !dbg !273
  %157 = shl nsw i32 %156, 1, !dbg !273
  %158 = sext i32 %157 to i64, !dbg !273
  %159 = getelementptr inbounds double, ptr %9, i64 %158, !dbg !273
  %160 = load double, ptr %159, align 8, !dbg !273, !tbaa !202
  tail call void @llvm.dbg.value(metadata double %160, metadata !88, metadata !DIExpression()), !dbg !274
  %161 = or disjoint i32 %157, 1, !dbg !275
  %162 = sext i32 %161 to i64, !dbg !275
  %163 = getelementptr inbounds double, ptr %9, i64 %162, !dbg !275
  %164 = load double, ptr %163, align 8, !dbg !275, !tbaa !202
  tail call void @llvm.dbg.value(metadata double %164, metadata !100, metadata !DIExpression()), !dbg !274
  %165 = fmul double %42, %160, !dbg !276
  %166 = fmul double %44, %164, !dbg !277
  %handler_result = call double @fSubHandlerDouble(double %165, double %166), !dbg !278
  store double %handler_result, ptr %159, align 8, !dbg !278, !tbaa !202
  %167 = fmul double %42, %164, !dbg !279
  %168 = fmul double %44, %160, !dbg !280
  %handler_result1 = call double @fAddHandlerDouble(double %168, double %167), !dbg !281
  store double %handler_result1, ptr %163, align 8, !dbg !281, !tbaa !202
  %169 = add nuw nsw i64 %154, 1, !dbg !282
  tail call void @llvm.dbg.value(metadata i64 %169, metadata !75, metadata !DIExpression()), !dbg !214
  %170 = icmp eq i64 %169, %149, !dbg !283
  br i1 %170, label %171, label %153, !dbg !272, !llvm.loop !284

171:                                              ; preds = %153
  %172 = add nuw nsw i64 %151, 1, !dbg !286
  tail call void @llvm.dbg.value(metadata i64 %172, metadata !72, metadata !DIExpression()), !dbg !214
  %173 = icmp eq i64 %172, %149, !dbg !271
  br i1 %173, label %200, label %150, !dbg !270, !llvm.loop !287

174:                                              ; preds = %196, %143
  %175 = phi i64 [ 0, %143 ], [ %197, %196 ]
  %176 = phi i64 [ 1, %143 ], [ %198, %196 ]
  tail call void @llvm.dbg.value(metadata i64 %175, metadata !72, metadata !DIExpression()), !dbg !214
  %177 = mul i64 %175, %144
  tail call void @llvm.dbg.value(metadata i32 0, metadata !75, metadata !DIExpression()), !dbg !214
  br label %178, !dbg !289

178:                                              ; preds = %178, %174
  %179 = phi i64 [ 0, %174 ], [ %194, %178 ]
  tail call void @llvm.dbg.value(metadata i64 %179, metadata !75, metadata !DIExpression()), !dbg !214
  %180 = add i64 %179, %177, !dbg !290
  %181 = trunc i64 %180 to i32, !dbg !290
  %182 = shl nsw i32 %181, 1, !dbg !290
  %183 = sext i32 %182 to i64, !dbg !290
  %184 = getelementptr inbounds double, ptr %9, i64 %183, !dbg !290
  %185 = load double, ptr %184, align 8, !dbg !290, !tbaa !202
  tail call void @llvm.dbg.value(metadata double %185, metadata !101, metadata !DIExpression()), !dbg !291
  %186 = or disjoint i32 %182, 1, !dbg !292
  %187 = sext i32 %186 to i64, !dbg !292
  %188 = getelementptr inbounds double, ptr %9, i64 %187, !dbg !292
  %189 = load double, ptr %188, align 8, !dbg !292, !tbaa !202
  tail call void @llvm.dbg.value(metadata double %189, metadata !109, metadata !DIExpression()), !dbg !291
  %190 = fmul double %42, %185, !dbg !293
  %191 = fmul double %44, %189, !dbg !294
  %handler_result2 = call double @fSubHandlerDouble(double %190, double %191), !dbg !295
  store double %handler_result2, ptr %184, align 8, !dbg !295, !tbaa !202
  %192 = fmul double %42, %189, !dbg !296
  %193 = fmul double %44, %185, !dbg !297
  %handler_result3 = call double @fAddHandlerDouble(double %193, double %192), !dbg !298
  store double %handler_result3, ptr %188, align 8, !dbg !298, !tbaa !202
  %194 = add nuw nsw i64 %179, 1, !dbg !299
  tail call void @llvm.dbg.value(metadata i64 %194, metadata !75, metadata !DIExpression()), !dbg !214
  %195 = icmp eq i64 %194, %176, !dbg !300
  br i1 %195, label %196, label %178, !dbg !289, !llvm.loop !301

196:                                              ; preds = %178
  %197 = add nuw nsw i64 %175, 1, !dbg !303
  tail call void @llvm.dbg.value(metadata i64 %197, metadata !72, metadata !DIExpression()), !dbg !214
  %198 = add nuw nsw i64 %176, 1, !dbg !268
  %199 = icmp eq i64 %197, %145, !dbg !269
  br i1 %199, label %200, label %174, !dbg !268, !llvm.loop !304

200:                                              ; preds = %196, %171, %146, %142, %137, %133, %87, %68, %64
  br i1 %47, label %486, label %201, !dbg !306

201:                                              ; preds = %200
  %202 = icmp eq i32 %58, 121, !dbg !308
  %203 = icmp eq i32 %57, 111
  %204 = and i1 %202, %203, !dbg !309
  br i1 %204, label %205, label %273, !dbg !309

205:                                              ; preds = %201
  tail call void @llvm.dbg.value(metadata i32 0, metadata !72, metadata !DIExpression()), !dbg !214
  %206 = icmp sgt i32 %3, 0, !dbg !310
  br i1 %206, label %207, label %486, !dbg !311

207:                                              ; preds = %205
  %208 = icmp sgt i32 %4, 0
  %209 = zext i32 %7 to i64, !dbg !311
  %210 = zext i32 %10 to i64, !dbg !311
  %211 = zext nneg i32 %3 to i64, !dbg !310
  %212 = zext nneg i32 %4 to i64
  br label %213, !dbg !311

213:                                              ; preds = %270, %207
  %214 = phi i64 [ 0, %207 ], [ %271, %270 ]
  tail call void @llvm.dbg.value(metadata i64 %214, metadata !72, metadata !DIExpression()), !dbg !214
  tail call void @llvm.dbg.value(metadata i64 %214, metadata !75, metadata !DIExpression()), !dbg !214
  %215 = mul i64 %214, %209
  %216 = mul i64 %214, %210
  br label %217, !dbg !312

217:                                              ; preds = %251, %213
  %218 = phi i64 [ %214, %213 ], [ %268, %251 ]
  tail call void @llvm.dbg.value(metadata i64 %218, metadata !75, metadata !DIExpression()), !dbg !214
  tail call void @llvm.dbg.value(metadata i32 0, metadata !76, metadata !DIExpression()), !dbg !214
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !110, metadata !DIExpression()), !dbg !313
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !119, metadata !DIExpression()), !dbg !313
  br i1 %208, label %219, label %251, !dbg !314

219:                                              ; preds = %217
  %220 = mul i64 %218, %209
  br label %221, !dbg !314

221:                                              ; preds = %221, %219
  %222 = phi i64 [ 0, %219 ], [ %249, %221 ]
  %223 = phi double [ 0.000000e+00, %219 ], [ %handler_result5, %221 ]
  %224 = phi double [ 0.000000e+00, %219 ], [ %handler_result7, %221 ]
  tail call void @llvm.dbg.value(metadata i64 %222, metadata !76, metadata !DIExpression()), !dbg !214
  tail call void @llvm.dbg.value(metadata double %223, metadata !110, metadata !DIExpression()), !dbg !313
  tail call void @llvm.dbg.value(metadata double %224, metadata !119, metadata !DIExpression()), !dbg !313
  %225 = add i64 %222, %215, !dbg !315
  %226 = trunc i64 %225 to i32, !dbg !315
  %227 = shl nsw i32 %226, 1, !dbg !315
  %228 = sext i32 %227 to i64, !dbg !315
  %229 = getelementptr inbounds double, ptr %6, i64 %228, !dbg !315
  %230 = load double, ptr %229, align 8, !dbg !315, !tbaa !202
  tail call void @llvm.dbg.value(metadata double %230, metadata !120, metadata !DIExpression()), !dbg !316
  %231 = or disjoint i32 %227, 1, !dbg !317
  %232 = sext i32 %231 to i64, !dbg !317
  %233 = getelementptr inbounds double, ptr %6, i64 %232, !dbg !317
  %234 = load double, ptr %233, align 8, !dbg !317, !tbaa !202
  tail call void @llvm.dbg.value(metadata double %234, metadata !124, metadata !DIExpression()), !dbg !316
  %235 = add i64 %222, %220, !dbg !318
  %236 = trunc i64 %235 to i32, !dbg !318
  %237 = shl nsw i32 %236, 1, !dbg !318
  %238 = sext i32 %237 to i64, !dbg !318
  %239 = getelementptr inbounds double, ptr %6, i64 %238, !dbg !318
  %240 = load double, ptr %239, align 8, !dbg !318, !tbaa !202
  tail call void @llvm.dbg.value(metadata double %240, metadata !125, metadata !DIExpression()), !dbg !316
  %241 = or disjoint i32 %237, 1, !dbg !319
  %242 = sext i32 %241 to i64, !dbg !319
  %243 = getelementptr inbounds double, ptr %6, i64 %242, !dbg !319
  %244 = load double, ptr %243, align 8, !dbg !319, !tbaa !202
  tail call void @llvm.dbg.value(metadata double %244, metadata !126, metadata !DIExpression()), !dbg !316
  %245 = fmul double %230, %240, !dbg !320
  %246 = fmul double %234, %244, !dbg !321
  %handler_result4 = call double @fSubHandlerDouble(double %245, double %246), !dbg !322
  %handler_result5 = call double @fAddHandlerDouble(double %223, double %handler_result4), !dbg !323
  tail call void @llvm.dbg.value(metadata double %handler_result5, metadata !110, metadata !DIExpression()), !dbg !313
  %247 = fmul double %230, %244, !dbg !323
  %248 = fmul double %234, %240, !dbg !324
  %handler_result6 = call double @fAddHandlerDouble(double %248, double %247), !dbg !325
  %handler_result7 = call double @fAddHandlerDouble(double %224, double %handler_result6), !dbg !326
  tail call void @llvm.dbg.value(metadata double %handler_result7, metadata !119, metadata !DIExpression()), !dbg !313
  %249 = add nuw nsw i64 %222, 1, !dbg !326
  tail call void @llvm.dbg.value(metadata i64 %249, metadata !76, metadata !DIExpression()), !dbg !214
  %250 = icmp eq i64 %249, %212, !dbg !327
  br i1 %250, label %251, label %221, !dbg !314, !llvm.loop !328

251:                                              ; preds = %221, %217
  %252 = phi double [ 0.000000e+00, %217 ], [ %handler_result7, %221 ], !dbg !313
  %253 = phi double [ 0.000000e+00, %217 ], [ %handler_result5, %221 ], !dbg !313
  %254 = fmul double %39, %253, !dbg !330
  %255 = fmul double %41, %252, !dbg !331
  %handler_result8 = call double @fSubHandlerDouble(double %254, double %255), !dbg !332
  %256 = add i64 %218, %216, !dbg !332
  %257 = trunc i64 %256 to i32, !dbg !332
  %258 = shl nsw i32 %257, 1, !dbg !332
  %259 = sext i32 %258 to i64, !dbg !332
  %260 = getelementptr inbounds double, ptr %9, i64 %259, !dbg !332
  %261 = load double, ptr %260, align 8, !dbg !333, !tbaa !202
  %handler_result9 = call double @fAddHandlerDouble(double %handler_result8, double %261), !dbg !333
  store double %handler_result9, ptr %260, align 8, !dbg !333, !tbaa !202
  %262 = fmul double %39, %252, !dbg !334
  %263 = fmul double %41, %253, !dbg !335
  %handler_result10 = call double @fAddHandlerDouble(double %262, double %263), !dbg !336
  %264 = or disjoint i32 %258, 1, !dbg !336
  %265 = sext i32 %264 to i64, !dbg !336
  %266 = getelementptr inbounds double, ptr %9, i64 %265, !dbg !336
  %267 = load double, ptr %266, align 8, !dbg !337, !tbaa !202
  %handler_result11 = call double @fAddHandlerDouble(double %handler_result10, double %267), !dbg !337
  store double %handler_result11, ptr %266, align 8, !dbg !337, !tbaa !202
  %268 = add nuw nsw i64 %218, 1, !dbg !338
  tail call void @llvm.dbg.value(metadata i64 %268, metadata !75, metadata !DIExpression()), !dbg !214
  %269 = icmp eq i64 %268, %211, !dbg !339
  br i1 %269, label %270, label %217, !dbg !312, !llvm.loop !340

270:                                              ; preds = %251
  %271 = add nuw nsw i64 %214, 1, !dbg !342
  tail call void @llvm.dbg.value(metadata i64 %271, metadata !72, metadata !DIExpression()), !dbg !214
  %272 = icmp eq i64 %271, %211, !dbg !310
  br i1 %272, label %486, label %213, !dbg !311, !llvm.loop !343

273:                                              ; preds = %201
  %274 = icmp eq i32 %57, 112
  %275 = and i1 %202, %274, !dbg !345
  br i1 %275, label %276, label %342, !dbg !345

276:                                              ; preds = %273
  tail call void @llvm.dbg.value(metadata i32 0, metadata !72, metadata !DIExpression()), !dbg !214
  %277 = icmp sgt i32 %3, 0, !dbg !346
  br i1 %277, label %278, label %486, !dbg !347

278:                                              ; preds = %276
  %279 = icmp sgt i32 %4, 0
  %280 = zext i32 %7 to i64, !dbg !347
  %281 = zext i32 %10 to i64, !dbg !347
  %282 = zext nneg i32 %3 to i64, !dbg !346
  %283 = zext nneg i32 %4 to i64
  br label %284, !dbg !347

284:                                              ; preds = %339, %278
  %285 = phi i64 [ 0, %278 ], [ %340, %339 ]
  tail call void @llvm.dbg.value(metadata i64 %285, metadata !72, metadata !DIExpression()), !dbg !214
  tail call void @llvm.dbg.value(metadata i64 %285, metadata !75, metadata !DIExpression()), !dbg !214
  %286 = mul i64 %285, %281
  br label %287, !dbg !348

287:                                              ; preds = %320, %284
  %288 = phi i64 [ %285, %284 ], [ %337, %320 ]
  tail call void @llvm.dbg.value(metadata i64 %288, metadata !75, metadata !DIExpression()), !dbg !214
  tail call void @llvm.dbg.value(metadata i32 0, metadata !76, metadata !DIExpression()), !dbg !214
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !127, metadata !DIExpression()), !dbg !349
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !136, metadata !DIExpression()), !dbg !349
  br i1 %279, label %289, label %320, !dbg !350

289:                                              ; preds = %289, %287
  %290 = phi i64 [ %318, %289 ], [ 0, %287 ]
  %291 = phi double [ %handler_result13, %289 ], [ 0.000000e+00, %287 ]
  %292 = phi double [ %handler_result15, %289 ], [ 0.000000e+00, %287 ]
  tail call void @llvm.dbg.value(metadata i64 %290, metadata !76, metadata !DIExpression()), !dbg !214
  tail call void @llvm.dbg.value(metadata double %291, metadata !127, metadata !DIExpression()), !dbg !349
  tail call void @llvm.dbg.value(metadata double %292, metadata !136, metadata !DIExpression()), !dbg !349
  %293 = mul i64 %290, %280, !dbg !351
  %294 = add i64 %293, %285, !dbg !351
  %295 = trunc i64 %294 to i32, !dbg !351
  %296 = shl nsw i32 %295, 1, !dbg !351
  %297 = sext i32 %296 to i64, !dbg !351
  %298 = getelementptr inbounds double, ptr %6, i64 %297, !dbg !351
  %299 = load double, ptr %298, align 8, !dbg !351, !tbaa !202
  tail call void @llvm.dbg.value(metadata double %299, metadata !137, metadata !DIExpression()), !dbg !352
  %300 = or disjoint i32 %296, 1, !dbg !353
  %301 = sext i32 %300 to i64, !dbg !353
  %302 = getelementptr inbounds double, ptr %6, i64 %301, !dbg !353
  %303 = load double, ptr %302, align 8, !dbg !353, !tbaa !202
  tail call void @llvm.dbg.value(metadata double %303, metadata !141, metadata !DIExpression()), !dbg !352
  %304 = add i64 %293, %288, !dbg !354
  %305 = trunc i64 %304 to i32, !dbg !354
  %306 = shl nsw i32 %305, 1, !dbg !354
  %307 = sext i32 %306 to i64, !dbg !354
  %308 = getelementptr inbounds double, ptr %6, i64 %307, !dbg !354
  %309 = load double, ptr %308, align 8, !dbg !354, !tbaa !202
  tail call void @llvm.dbg.value(metadata double %309, metadata !142, metadata !DIExpression()), !dbg !352
  %310 = or disjoint i32 %306, 1, !dbg !355
  %311 = sext i32 %310 to i64, !dbg !355
  %312 = getelementptr inbounds double, ptr %6, i64 %311, !dbg !355
  %313 = load double, ptr %312, align 8, !dbg !355, !tbaa !202
  tail call void @llvm.dbg.value(metadata double %313, metadata !143, metadata !DIExpression()), !dbg !352
  %314 = fmul double %299, %309, !dbg !356
  %315 = fmul double %303, %313, !dbg !357
  %handler_result12 = call double @fSubHandlerDouble(double %314, double %315), !dbg !358
  %handler_result13 = call double @fAddHandlerDouble(double %291, double %handler_result12), !dbg !359
  tail call void @llvm.dbg.value(metadata double %handler_result13, metadata !127, metadata !DIExpression()), !dbg !349
  %316 = fmul double %299, %313, !dbg !359
  %317 = fmul double %303, %309, !dbg !360
  %handler_result14 = call double @fAddHandlerDouble(double %317, double %316), !dbg !361
  %handler_result15 = call double @fAddHandlerDouble(double %292, double %handler_result14), !dbg !362
  tail call void @llvm.dbg.value(metadata double %handler_result15, metadata !136, metadata !DIExpression()), !dbg !349
  %318 = add nuw nsw i64 %290, 1, !dbg !362
  tail call void @llvm.dbg.value(metadata i64 %318, metadata !76, metadata !DIExpression()), !dbg !214
  %319 = icmp eq i64 %318, %283, !dbg !363
  br i1 %319, label %320, label %289, !dbg !350, !llvm.loop !364

320:                                              ; preds = %289, %287
  %321 = phi double [ 0.000000e+00, %287 ], [ %handler_result15, %289 ], !dbg !349
  %322 = phi double [ 0.000000e+00, %287 ], [ %handler_result13, %289 ], !dbg !349
  %323 = fmul double %39, %322, !dbg !366
  %324 = fmul double %41, %321, !dbg !367
  %handler_result16 = call double @fSubHandlerDouble(double %323, double %324), !dbg !368
  %325 = add i64 %288, %286, !dbg !368
  %326 = trunc i64 %325 to i32, !dbg !368
  %327 = shl nsw i32 %326, 1, !dbg !368
  %328 = sext i32 %327 to i64, !dbg !368
  %329 = getelementptr inbounds double, ptr %9, i64 %328, !dbg !368
  %330 = load double, ptr %329, align 8, !dbg !369, !tbaa !202
  %handler_result17 = call double @fAddHandlerDouble(double %handler_result16, double %330), !dbg !369
  store double %handler_result17, ptr %329, align 8, !dbg !369, !tbaa !202
  %331 = fmul double %39, %321, !dbg !370
  %332 = fmul double %41, %322, !dbg !371
  %handler_result18 = call double @fAddHandlerDouble(double %331, double %332), !dbg !372
  %333 = or disjoint i32 %327, 1, !dbg !372
  %334 = sext i32 %333 to i64, !dbg !372
  %335 = getelementptr inbounds double, ptr %9, i64 %334, !dbg !372
  %336 = load double, ptr %335, align 8, !dbg !373, !tbaa !202
  %handler_result19 = call double @fAddHandlerDouble(double %handler_result18, double %336), !dbg !373
  store double %handler_result19, ptr %335, align 8, !dbg !373, !tbaa !202
  %337 = add nuw nsw i64 %288, 1, !dbg !374
  tail call void @llvm.dbg.value(metadata i64 %337, metadata !75, metadata !DIExpression()), !dbg !214
  %338 = icmp eq i64 %337, %282, !dbg !375
  br i1 %338, label %339, label %287, !dbg !348, !llvm.loop !376

339:                                              ; preds = %320
  %340 = add nuw nsw i64 %285, 1, !dbg !378
  tail call void @llvm.dbg.value(metadata i64 %340, metadata !72, metadata !DIExpression()), !dbg !214
  %341 = icmp eq i64 %340, %282, !dbg !346
  br i1 %341, label %486, label %284, !dbg !347, !llvm.loop !379

342:                                              ; preds = %273
  %343 = icmp eq i32 %58, 122, !dbg !381
  %344 = and i1 %343, %203, !dbg !382
  br i1 %344, label %345, label %415, !dbg !382

345:                                              ; preds = %342
  tail call void @llvm.dbg.value(metadata i32 0, metadata !72, metadata !DIExpression()), !dbg !214
  %346 = icmp sgt i32 %3, 0, !dbg !383
  br i1 %346, label %347, label %486, !dbg !384

347:                                              ; preds = %345
  %348 = icmp sgt i32 %4, 0
  %349 = zext i32 %7 to i64, !dbg !384
  %350 = zext i32 %10 to i64, !dbg !384
  %351 = zext nneg i32 %3 to i64, !dbg !383
  %352 = zext nneg i32 %4 to i64
  br label %353, !dbg !384

353:                                              ; preds = %411, %347
  %354 = phi i64 [ 0, %347 ], [ %412, %411 ]
  %355 = phi i64 [ 1, %347 ], [ %413, %411 ]
  tail call void @llvm.dbg.value(metadata i64 %354, metadata !72, metadata !DIExpression()), !dbg !214
  %356 = mul i64 %354, %350
  tail call void @llvm.dbg.value(metadata i32 0, metadata !75, metadata !DIExpression()), !dbg !214
  %357 = mul i64 %354, %349
  br label %358, !dbg !385

358:                                              ; preds = %392, %353
  %359 = phi i64 [ 0, %353 ], [ %409, %392 ]
  tail call void @llvm.dbg.value(metadata i64 %359, metadata !75, metadata !DIExpression()), !dbg !214
  tail call void @llvm.dbg.value(metadata i32 0, metadata !76, metadata !DIExpression()), !dbg !214
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !153, metadata !DIExpression()), !dbg !386
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !144, metadata !DIExpression()), !dbg !386
  br i1 %348, label %360, label %392, !dbg !387

360:                                              ; preds = %358
  %361 = mul i64 %359, %349
  br label %362, !dbg !387

362:                                              ; preds = %362, %360
  %363 = phi i64 [ 0, %360 ], [ %390, %362 ]
  %364 = phi double [ 0.000000e+00, %360 ], [ %handler_result23, %362 ]
  %365 = phi double [ 0.000000e+00, %360 ], [ %handler_result21, %362 ]
  tail call void @llvm.dbg.value(metadata i64 %363, metadata !76, metadata !DIExpression()), !dbg !214
  tail call void @llvm.dbg.value(metadata double %364, metadata !153, metadata !DIExpression()), !dbg !386
  tail call void @llvm.dbg.value(metadata double %365, metadata !144, metadata !DIExpression()), !dbg !386
  %366 = add i64 %363, %357, !dbg !388
  %367 = trunc i64 %366 to i32, !dbg !388
  %368 = shl nsw i32 %367, 1, !dbg !388
  %369 = sext i32 %368 to i64, !dbg !388
  %370 = getelementptr inbounds double, ptr %6, i64 %369, !dbg !388
  %371 = load double, ptr %370, align 8, !dbg !388, !tbaa !202
  tail call void @llvm.dbg.value(metadata double %371, metadata !154, metadata !DIExpression()), !dbg !389
  %372 = or disjoint i32 %368, 1, !dbg !390
  %373 = sext i32 %372 to i64, !dbg !390
  %374 = getelementptr inbounds double, ptr %6, i64 %373, !dbg !390
  %375 = load double, ptr %374, align 8, !dbg !390, !tbaa !202
  tail call void @llvm.dbg.value(metadata double %375, metadata !158, metadata !DIExpression()), !dbg !389
  %376 = add i64 %363, %361, !dbg !391
  %377 = trunc i64 %376 to i32, !dbg !391
  %378 = shl nsw i32 %377, 1, !dbg !391
  %379 = sext i32 %378 to i64, !dbg !391
  %380 = getelementptr inbounds double, ptr %6, i64 %379, !dbg !391
  %381 = load double, ptr %380, align 8, !dbg !391, !tbaa !202
  tail call void @llvm.dbg.value(metadata double %381, metadata !159, metadata !DIExpression()), !dbg !389
  %382 = or disjoint i32 %378, 1, !dbg !392
  %383 = sext i32 %382 to i64, !dbg !392
  %384 = getelementptr inbounds double, ptr %6, i64 %383, !dbg !392
  %385 = load double, ptr %384, align 8, !dbg !392, !tbaa !202
  tail call void @llvm.dbg.value(metadata double %385, metadata !160, metadata !DIExpression()), !dbg !389
  %386 = fmul double %371, %381, !dbg !393
  %387 = fmul double %375, %385, !dbg !394
  %handler_result20 = call double @fSubHandlerDouble(double %386, double %387), !dbg !395
  %handler_result21 = call double @fAddHandlerDouble(double %365, double %handler_result20), !dbg !396
  tail call void @llvm.dbg.value(metadata double %handler_result21, metadata !144, metadata !DIExpression()), !dbg !386
  %388 = fmul double %371, %385, !dbg !396
  %389 = fmul double %375, %381, !dbg !397
  %handler_result22 = call double @fAddHandlerDouble(double %389, double %388), !dbg !398
  %handler_result23 = call double @fAddHandlerDouble(double %364, double %handler_result22), !dbg !399
  tail call void @llvm.dbg.value(metadata double %handler_result23, metadata !153, metadata !DIExpression()), !dbg !386
  %390 = add nuw nsw i64 %363, 1, !dbg !399
  tail call void @llvm.dbg.value(metadata i64 %390, metadata !76, metadata !DIExpression()), !dbg !214
  %391 = icmp eq i64 %390, %352, !dbg !400
  br i1 %391, label %392, label %362, !dbg !387, !llvm.loop !401

392:                                              ; preds = %362, %358
  %393 = phi double [ 0.000000e+00, %358 ], [ %handler_result21, %362 ], !dbg !386
  %394 = phi double [ 0.000000e+00, %358 ], [ %handler_result23, %362 ], !dbg !386
  %395 = fmul double %39, %393, !dbg !403
  %396 = fmul double %41, %394, !dbg !404
  %handler_result24 = call double @fSubHandlerDouble(double %395, double %396), !dbg !405
  %397 = add i64 %359, %356, !dbg !405
  %398 = trunc i64 %397 to i32, !dbg !405
  %399 = shl nsw i32 %398, 1, !dbg !405
  %400 = sext i32 %399 to i64, !dbg !405
  %401 = getelementptr inbounds double, ptr %9, i64 %400, !dbg !405
  %402 = load double, ptr %401, align 8, !dbg !406, !tbaa !202
  %handler_result25 = call double @fAddHandlerDouble(double %handler_result24, double %402), !dbg !406
  store double %handler_result25, ptr %401, align 8, !dbg !406, !tbaa !202
  %403 = fmul double %39, %394, !dbg !407
  %404 = fmul double %41, %393, !dbg !408
  %handler_result26 = call double @fAddHandlerDouble(double %404, double %403), !dbg !409
  %405 = or disjoint i32 %399, 1, !dbg !409
  %406 = sext i32 %405 to i64, !dbg !409
  %407 = getelementptr inbounds double, ptr %9, i64 %406, !dbg !409
  %408 = load double, ptr %407, align 8, !dbg !410, !tbaa !202
  %handler_result27 = call double @fAddHandlerDouble(double %handler_result26, double %408), !dbg !410
  store double %handler_result27, ptr %407, align 8, !dbg !410, !tbaa !202
  %409 = add nuw nsw i64 %359, 1, !dbg !411
  tail call void @llvm.dbg.value(metadata i64 %409, metadata !75, metadata !DIExpression()), !dbg !214
  %410 = icmp eq i64 %409, %355, !dbg !412
  br i1 %410, label %411, label %358, !dbg !385, !llvm.loop !413

411:                                              ; preds = %392
  %412 = add nuw nsw i64 %354, 1, !dbg !415
  tail call void @llvm.dbg.value(metadata i64 %412, metadata !72, metadata !DIExpression()), !dbg !214
  %413 = add nuw nsw i64 %355, 1, !dbg !384
  %414 = icmp eq i64 %412, %351, !dbg !383
  br i1 %414, label %486, label %353, !dbg !384, !llvm.loop !416

415:                                              ; preds = %342
  %416 = and i1 %343, %274, !dbg !418
  br i1 %416, label %417, label %485, !dbg !418

417:                                              ; preds = %415
  tail call void @llvm.dbg.value(metadata i32 0, metadata !72, metadata !DIExpression()), !dbg !214
  %418 = icmp sgt i32 %3, 0, !dbg !419
  br i1 %418, label %419, label %486, !dbg !420

419:                                              ; preds = %417
  %420 = icmp sgt i32 %4, 0
  %421 = zext i32 %7 to i64, !dbg !420
  %422 = zext i32 %10 to i64, !dbg !420
  %423 = zext nneg i32 %3 to i64, !dbg !419
  %424 = zext nneg i32 %4 to i64
  br label %425, !dbg !420

425:                                              ; preds = %481, %419
  %426 = phi i64 [ 0, %419 ], [ %482, %481 ]
  %427 = phi i64 [ 1, %419 ], [ %483, %481 ]
  tail call void @llvm.dbg.value(metadata i64 %426, metadata !72, metadata !DIExpression()), !dbg !214
  %428 = mul i64 %426, %422
  tail call void @llvm.dbg.value(metadata i32 0, metadata !75, metadata !DIExpression()), !dbg !214
  br label %429, !dbg !421

429:                                              ; preds = %462, %425
  %430 = phi i64 [ 0, %425 ], [ %479, %462 ]
  tail call void @llvm.dbg.value(metadata i64 %430, metadata !75, metadata !DIExpression()), !dbg !214
  tail call void @llvm.dbg.value(metadata i32 0, metadata !76, metadata !DIExpression()), !dbg !214
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !170, metadata !DIExpression()), !dbg !422
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !161, metadata !DIExpression()), !dbg !422
  br i1 %420, label %431, label %462, !dbg !423

431:                                              ; preds = %431, %429
  %432 = phi i64 [ %460, %431 ], [ 0, %429 ]
  %433 = phi double [ %handler_result31, %431 ], [ 0.000000e+00, %429 ]
  %434 = phi double [ %handler_result29, %431 ], [ 0.000000e+00, %429 ]
  tail call void @llvm.dbg.value(metadata i64 %432, metadata !76, metadata !DIExpression()), !dbg !214
  tail call void @llvm.dbg.value(metadata double %433, metadata !170, metadata !DIExpression()), !dbg !422
  tail call void @llvm.dbg.value(metadata double %434, metadata !161, metadata !DIExpression()), !dbg !422
  %435 = mul i64 %432, %421, !dbg !424
  %436 = add i64 %435, %426, !dbg !424
  %437 = trunc i64 %436 to i32, !dbg !424
  %438 = shl nsw i32 %437, 1, !dbg !424
  %439 = sext i32 %438 to i64, !dbg !424
  %440 = getelementptr inbounds double, ptr %6, i64 %439, !dbg !424
  %441 = load double, ptr %440, align 8, !dbg !424, !tbaa !202
  tail call void @llvm.dbg.value(metadata double %441, metadata !171, metadata !DIExpression()), !dbg !425
  %442 = or disjoint i32 %438, 1, !dbg !426
  %443 = sext i32 %442 to i64, !dbg !426
  %444 = getelementptr inbounds double, ptr %6, i64 %443, !dbg !426
  %445 = load double, ptr %444, align 8, !dbg !426, !tbaa !202
  tail call void @llvm.dbg.value(metadata double %445, metadata !175, metadata !DIExpression()), !dbg !425
  %446 = add i64 %435, %430, !dbg !427
  %447 = trunc i64 %446 to i32, !dbg !427
  %448 = shl nsw i32 %447, 1, !dbg !427
  %449 = sext i32 %448 to i64, !dbg !427
  %450 = getelementptr inbounds double, ptr %6, i64 %449, !dbg !427
  %451 = load double, ptr %450, align 8, !dbg !427, !tbaa !202
  tail call void @llvm.dbg.value(metadata double %451, metadata !176, metadata !DIExpression()), !dbg !425
  %452 = or disjoint i32 %448, 1, !dbg !428
  %453 = sext i32 %452 to i64, !dbg !428
  %454 = getelementptr inbounds double, ptr %6, i64 %453, !dbg !428
  %455 = load double, ptr %454, align 8, !dbg !428, !tbaa !202
  tail call void @llvm.dbg.value(metadata double %455, metadata !177, metadata !DIExpression()), !dbg !425
  %456 = fmul double %441, %451, !dbg !429
  %457 = fmul double %445, %455, !dbg !430
  %handler_result28 = call double @fSubHandlerDouble(double %456, double %457), !dbg !431
  %handler_result29 = call double @fAddHandlerDouble(double %434, double %handler_result28), !dbg !432
  tail call void @llvm.dbg.value(metadata double %handler_result29, metadata !161, metadata !DIExpression()), !dbg !422
  %458 = fmul double %441, %455, !dbg !432
  %459 = fmul double %445, %451, !dbg !433
  %handler_result30 = call double @fAddHandlerDouble(double %459, double %458), !dbg !434
  %handler_result31 = call double @fAddHandlerDouble(double %433, double %handler_result30), !dbg !435
  tail call void @llvm.dbg.value(metadata double %handler_result31, metadata !170, metadata !DIExpression()), !dbg !422
  %460 = add nuw nsw i64 %432, 1, !dbg !435
  tail call void @llvm.dbg.value(metadata i64 %460, metadata !76, metadata !DIExpression()), !dbg !214
  %461 = icmp eq i64 %460, %424, !dbg !436
  br i1 %461, label %462, label %431, !dbg !423, !llvm.loop !437

462:                                              ; preds = %431, %429
  %463 = phi double [ 0.000000e+00, %429 ], [ %handler_result29, %431 ], !dbg !422
  %464 = phi double [ 0.000000e+00, %429 ], [ %handler_result31, %431 ], !dbg !422
  %465 = fmul double %39, %463, !dbg !439
  %466 = fmul double %41, %464, !dbg !440
  %handler_result32 = call double @fSubHandlerDouble(double %465, double %466), !dbg !441
  %467 = add i64 %430, %428, !dbg !441
  %468 = trunc i64 %467 to i32, !dbg !441
  %469 = shl nsw i32 %468, 1, !dbg !441
  %470 = sext i32 %469 to i64, !dbg !441
  %471 = getelementptr inbounds double, ptr %9, i64 %470, !dbg !441
  %472 = load double, ptr %471, align 8, !dbg !442, !tbaa !202
  %handler_result33 = call double @fAddHandlerDouble(double %handler_result32, double %472), !dbg !442
  store double %handler_result33, ptr %471, align 8, !dbg !442, !tbaa !202
  %473 = fmul double %39, %464, !dbg !443
  %474 = fmul double %41, %463, !dbg !444
  %handler_result34 = call double @fAddHandlerDouble(double %474, double %473), !dbg !445
  %475 = or disjoint i32 %469, 1, !dbg !445
  %476 = sext i32 %475 to i64, !dbg !445
  %477 = getelementptr inbounds double, ptr %9, i64 %476, !dbg !445
  %478 = load double, ptr %477, align 8, !dbg !446, !tbaa !202
  %handler_result35 = call double @fAddHandlerDouble(double %handler_result34, double %478), !dbg !446
  store double %handler_result35, ptr %477, align 8, !dbg !446, !tbaa !202
  %479 = add nuw nsw i64 %430, 1, !dbg !447
  tail call void @llvm.dbg.value(metadata i64 %479, metadata !75, metadata !DIExpression()), !dbg !214
  %480 = icmp eq i64 %479, %427, !dbg !448
  br i1 %480, label %481, label %429, !dbg !421, !llvm.loop !449

481:                                              ; preds = %462
  %482 = add nuw nsw i64 %426, 1, !dbg !451
  tail call void @llvm.dbg.value(metadata i64 %482, metadata !72, metadata !DIExpression()), !dbg !214
  %483 = add nuw nsw i64 %427, 1, !dbg !420
  %484 = icmp eq i64 %482, %423, !dbg !419
  br i1 %484, label %486, label %425, !dbg !420, !llvm.loop !452

485:                                              ; preds = %415
  tail call void (i32, ptr, ptr, ...) @cblas_xerbla(i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #3, !dbg !454
  br label %486

486:                                              ; preds = %485, %481, %417, %411, %345, %339, %276, %270, %205, %200, %38
  ret void, !dbg !456
}

declare !dbg !458 void @cblas_xerbla(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

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
!llvm.module.flags = !{!41, !42, !43, !44, !45, !46, !47}
!llvm.ident = !{!48}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 24, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "./source_syrk_c.h", directory: "/PI-detector/external/gsl/gsl-2.5/cblas", checksumkind: CSK_MD5, checksum: "513c569825b686b245a620d347633943")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 18)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 24, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 1)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 165, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 23)
!17 = distinct !DICompileUnit(language: DW_LANG_C11, file: !18, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !19, retainedTypes: !35, globals: !40, splitDebugInlining: false, nameTableKind: None)
!18 = !DIFile(filename: "zsyrk.c", directory: "/PI-detector/external/gsl/gsl-2.5/cblas", checksumkind: CSK_MD5, checksum: "000498b3d7026e9aeea0c89428252503")
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
!35 = !{!36, !39}
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!38 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!40 = !{!0, !7, !12}
!41 = !{i32 7, !"Dwarf Version", i32 5}
!42 = !{i32 2, !"Debug Info Version", i32 3}
!43 = !{i32 1, !"wchar_size", i32 4}
!44 = !{i32 8, !"PIC Level", i32 2}
!45 = !{i32 7, !"PIE Level", i32 2}
!46 = !{i32 7, !"uwtable", i32 2}
!47 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!48 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!49 = distinct !DISubprogram(name: "cblas_zsyrk", scope: !18, file: !18, line: 7, type: !50, scopeLine: 11, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !60)
!50 = !DISubroutineType(types: !51)
!51 = !{null, !52, !53, !54, !55, !55, !57, !57, !55, !57, !59, !55}
!52 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!53 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !26)
!54 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!55 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !56)
!56 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!60 = !{!61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !75, !76, !77, !78, !79, !81, !83, !85, !86, !87, !88, !100, !101, !109, !110, !119, !120, !124, !125, !126, !127, !136, !137, !141, !142, !143, !144, !153, !154, !158, !159, !160, !161, !170, !171, !175, !176, !177}
!61 = !DILocalVariable(name: "Order", arg: 1, scope: !49, file: !18, line: 7, type: !52)
!62 = !DILocalVariable(name: "Uplo", arg: 2, scope: !49, file: !18, line: 7, type: !53)
!63 = !DILocalVariable(name: "Trans", arg: 3, scope: !49, file: !18, line: 8, type: !54)
!64 = !DILocalVariable(name: "N", arg: 4, scope: !49, file: !18, line: 8, type: !55)
!65 = !DILocalVariable(name: "K", arg: 5, scope: !49, file: !18, line: 8, type: !55)
!66 = !DILocalVariable(name: "alpha", arg: 6, scope: !49, file: !18, line: 9, type: !57)
!67 = !DILocalVariable(name: "A", arg: 7, scope: !49, file: !18, line: 9, type: !57)
!68 = !DILocalVariable(name: "lda", arg: 8, scope: !49, file: !18, line: 9, type: !55)
!69 = !DILocalVariable(name: "beta", arg: 9, scope: !49, file: !18, line: 10, type: !57)
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
!83 = !DILocalVariable(name: "alpha_real", scope: !84, file: !2, line: 27, type: !37)
!84 = distinct !DILexicalBlock(scope: !73, file: !2, line: 26, column: 3)
!85 = !DILocalVariable(name: "alpha_imag", scope: !84, file: !2, line: 28, type: !37)
!86 = !DILocalVariable(name: "beta_real", scope: !84, file: !2, line: 30, type: !37)
!87 = !DILocalVariable(name: "beta_imag", scope: !84, file: !2, line: 31, type: !37)
!88 = !DILocalVariable(name: "Cij_real", scope: !89, file: !2, line: 67, type: !37)
!89 = distinct !DILexicalBlock(scope: !90, file: !2, line: 66, column: 35)
!90 = distinct !DILexicalBlock(scope: !91, file: !2, line: 66, column: 11)
!91 = distinct !DILexicalBlock(scope: !92, file: !2, line: 66, column: 11)
!92 = distinct !DILexicalBlock(scope: !93, file: !2, line: 65, column: 33)
!93 = distinct !DILexicalBlock(scope: !94, file: !2, line: 65, column: 9)
!94 = distinct !DILexicalBlock(scope: !95, file: !2, line: 65, column: 9)
!95 = distinct !DILexicalBlock(scope: !96, file: !2, line: 64, column: 31)
!96 = distinct !DILexicalBlock(scope: !97, file: !2, line: 64, column: 11)
!97 = distinct !DILexicalBlock(scope: !98, file: !2, line: 63, column: 57)
!98 = distinct !DILexicalBlock(scope: !99, file: !2, line: 63, column: 16)
!99 = distinct !DILexicalBlock(scope: !84, file: !2, line: 47, column: 9)
!100 = !DILocalVariable(name: "Cij_imag", scope: !89, file: !2, line: 68, type: !37)
!101 = !DILocalVariable(name: "Cij_real", scope: !102, file: !2, line: 76, type: !37)
!102 = distinct !DILexicalBlock(scope: !103, file: !2, line: 75, column: 36)
!103 = distinct !DILexicalBlock(scope: !104, file: !2, line: 75, column: 11)
!104 = distinct !DILexicalBlock(scope: !105, file: !2, line: 75, column: 11)
!105 = distinct !DILexicalBlock(scope: !106, file: !2, line: 74, column: 33)
!106 = distinct !DILexicalBlock(scope: !107, file: !2, line: 74, column: 9)
!107 = distinct !DILexicalBlock(scope: !108, file: !2, line: 74, column: 9)
!108 = distinct !DILexicalBlock(scope: !96, file: !2, line: 73, column: 14)
!109 = !DILocalVariable(name: "Cij_imag", scope: !102, file: !2, line: 77, type: !37)
!110 = !DILocalVariable(name: "temp_real", scope: !111, file: !2, line: 92, type: !38)
!111 = distinct !DILexicalBlock(scope: !112, file: !2, line: 91, column: 33)
!112 = distinct !DILexicalBlock(scope: !113, file: !2, line: 91, column: 9)
!113 = distinct !DILexicalBlock(scope: !114, file: !2, line: 91, column: 9)
!114 = distinct !DILexicalBlock(scope: !115, file: !2, line: 90, column: 31)
!115 = distinct !DILexicalBlock(scope: !116, file: !2, line: 90, column: 7)
!116 = distinct !DILexicalBlock(scope: !117, file: !2, line: 90, column: 7)
!117 = distinct !DILexicalBlock(scope: !118, file: !2, line: 88, column: 54)
!118 = distinct !DILexicalBlock(scope: !84, file: !2, line: 88, column: 9)
!119 = !DILocalVariable(name: "temp_imag", scope: !111, file: !2, line: 93, type: !38)
!120 = !DILocalVariable(name: "Aik_real", scope: !121, file: !2, line: 95, type: !37)
!121 = distinct !DILexicalBlock(scope: !122, file: !2, line: 94, column: 35)
!122 = distinct !DILexicalBlock(scope: !123, file: !2, line: 94, column: 11)
!123 = distinct !DILexicalBlock(scope: !111, file: !2, line: 94, column: 11)
!124 = !DILocalVariable(name: "Aik_imag", scope: !121, file: !2, line: 96, type: !37)
!125 = !DILocalVariable(name: "Ajk_real", scope: !121, file: !2, line: 97, type: !37)
!126 = !DILocalVariable(name: "Ajk_imag", scope: !121, file: !2, line: 98, type: !37)
!127 = !DILocalVariable(name: "temp_real", scope: !128, file: !2, line: 111, type: !38)
!128 = distinct !DILexicalBlock(scope: !129, file: !2, line: 110, column: 33)
!129 = distinct !DILexicalBlock(scope: !130, file: !2, line: 110, column: 9)
!130 = distinct !DILexicalBlock(scope: !131, file: !2, line: 110, column: 9)
!131 = distinct !DILexicalBlock(scope: !132, file: !2, line: 109, column: 31)
!132 = distinct !DILexicalBlock(scope: !133, file: !2, line: 109, column: 7)
!133 = distinct !DILexicalBlock(scope: !134, file: !2, line: 109, column: 7)
!134 = distinct !DILexicalBlock(scope: !135, file: !2, line: 107, column: 59)
!135 = distinct !DILexicalBlock(scope: !118, file: !2, line: 107, column: 16)
!136 = !DILocalVariable(name: "temp_imag", scope: !128, file: !2, line: 112, type: !38)
!137 = !DILocalVariable(name: "Aki_real", scope: !138, file: !2, line: 114, type: !37)
!138 = distinct !DILexicalBlock(scope: !139, file: !2, line: 113, column: 35)
!139 = distinct !DILexicalBlock(scope: !140, file: !2, line: 113, column: 11)
!140 = distinct !DILexicalBlock(scope: !128, file: !2, line: 113, column: 11)
!141 = !DILocalVariable(name: "Aki_imag", scope: !138, file: !2, line: 115, type: !37)
!142 = !DILocalVariable(name: "Akj_real", scope: !138, file: !2, line: 116, type: !37)
!143 = !DILocalVariable(name: "Akj_imag", scope: !138, file: !2, line: 117, type: !37)
!144 = !DILocalVariable(name: "temp_real", scope: !145, file: !2, line: 130, type: !38)
!145 = distinct !DILexicalBlock(scope: !146, file: !2, line: 129, column: 34)
!146 = distinct !DILexicalBlock(scope: !147, file: !2, line: 129, column: 9)
!147 = distinct !DILexicalBlock(scope: !148, file: !2, line: 129, column: 9)
!148 = distinct !DILexicalBlock(scope: !149, file: !2, line: 128, column: 31)
!149 = distinct !DILexicalBlock(scope: !150, file: !2, line: 128, column: 7)
!150 = distinct !DILexicalBlock(scope: !151, file: !2, line: 128, column: 7)
!151 = distinct !DILexicalBlock(scope: !152, file: !2, line: 126, column: 61)
!152 = distinct !DILexicalBlock(scope: !135, file: !2, line: 126, column: 16)
!153 = !DILocalVariable(name: "temp_imag", scope: !145, file: !2, line: 131, type: !38)
!154 = !DILocalVariable(name: "Aik_real", scope: !155, file: !2, line: 133, type: !37)
!155 = distinct !DILexicalBlock(scope: !156, file: !2, line: 132, column: 35)
!156 = distinct !DILexicalBlock(scope: !157, file: !2, line: 132, column: 11)
!157 = distinct !DILexicalBlock(scope: !145, file: !2, line: 132, column: 11)
!158 = !DILocalVariable(name: "Aik_imag", scope: !155, file: !2, line: 134, type: !37)
!159 = !DILocalVariable(name: "Ajk_real", scope: !155, file: !2, line: 135, type: !37)
!160 = !DILocalVariable(name: "Ajk_imag", scope: !155, file: !2, line: 136, type: !37)
!161 = !DILocalVariable(name: "temp_real", scope: !162, file: !2, line: 149, type: !38)
!162 = distinct !DILexicalBlock(scope: !163, file: !2, line: 148, column: 34)
!163 = distinct !DILexicalBlock(scope: !164, file: !2, line: 148, column: 9)
!164 = distinct !DILexicalBlock(scope: !165, file: !2, line: 148, column: 9)
!165 = distinct !DILexicalBlock(scope: !166, file: !2, line: 147, column: 31)
!166 = distinct !DILexicalBlock(scope: !167, file: !2, line: 147, column: 7)
!167 = distinct !DILexicalBlock(scope: !168, file: !2, line: 147, column: 7)
!168 = distinct !DILexicalBlock(scope: !169, file: !2, line: 145, column: 59)
!169 = distinct !DILexicalBlock(scope: !152, file: !2, line: 145, column: 16)
!170 = !DILocalVariable(name: "temp_imag", scope: !162, file: !2, line: 150, type: !38)
!171 = !DILocalVariable(name: "Aki_real", scope: !172, file: !2, line: 152, type: !37)
!172 = distinct !DILexicalBlock(scope: !173, file: !2, line: 151, column: 35)
!173 = distinct !DILexicalBlock(scope: !174, file: !2, line: 151, column: 11)
!174 = distinct !DILexicalBlock(scope: !162, file: !2, line: 151, column: 11)
!175 = !DILocalVariable(name: "Aki_imag", scope: !172, file: !2, line: 153, type: !37)
!176 = !DILocalVariable(name: "Akj_real", scope: !172, file: !2, line: 154, type: !37)
!177 = !DILocalVariable(name: "Akj_imag", scope: !172, file: !2, line: 155, type: !37)
!178 = !DILocation(line: 0, scope: !49)
!179 = !DILocation(line: 0, scope: !80)
!180 = !DILocation(line: 0, scope: !82)
!181 = !DILocation(line: 24, column: 3, scope: !182)
!182 = distinct !DILexicalBlock(scope: !82, file: !2, line: 24, column: 3)
!183 = !DILocation(line: 24, column: 3, scope: !82)
!184 = !DILocation(line: 24, column: 3, scope: !185)
!185 = distinct !DILexicalBlock(scope: !82, file: !2, line: 24, column: 3)
!186 = !DILocation(line: 24, column: 3, scope: !187)
!187 = distinct !DILexicalBlock(scope: !82, file: !2, line: 24, column: 3)
!188 = !DILocation(line: 24, column: 3, scope: !189)
!189 = distinct !DILexicalBlock(scope: !82, file: !2, line: 24, column: 3)
!190 = !DILocation(line: 24, column: 3, scope: !191)
!191 = distinct !DILexicalBlock(scope: !82, file: !2, line: 24, column: 3)
!192 = !DILocation(line: 24, column: 3, scope: !193)
!193 = distinct !DILexicalBlock(scope: !82, file: !2, line: 24, column: 3)
!194 = !DILocation(line: 24, column: 3, scope: !195)
!195 = distinct !DILexicalBlock(scope: !82, file: !2, line: 24, column: 3)
!196 = !DILocation(line: 24, column: 3, scope: !197)
!197 = distinct !DILexicalBlock(scope: !82, file: !2, line: 24, column: 3)
!198 = !DILocation(line: 24, column: 3, scope: !199)
!199 = distinct !DILexicalBlock(scope: !80, file: !2, line: 24, column: 3)
!200 = !DILocation(line: 24, column: 3, scope: !80)
!201 = !DILocation(line: 27, column: 29, scope: !84)
!202 = !{!203, !203, i64 0}
!203 = !{!"double", !204, i64 0}
!204 = !{!"omnipotent char", !205, i64 0}
!205 = !{!"Simple C/C++ TBAA"}
!206 = !DILocation(line: 0, scope: !84)
!207 = !DILocation(line: 28, column: 29, scope: !84)
!208 = !DILocation(line: 30, column: 28, scope: !84)
!209 = !DILocation(line: 31, column: 28, scope: !84)
!210 = !DILocation(line: 33, column: 21, scope: !211)
!211 = distinct !DILexicalBlock(scope: !84, file: !2, line: 33, column: 9)
!212 = !DILocation(line: 33, column: 28, scope: !211)
!213 = !DILocation(line: 37, column: 9, scope: !84)
!214 = !DILocation(line: 0, scope: !73)
!215 = !DILocation(line: 47, column: 19, scope: !99)
!216 = !DILocation(line: 47, column: 26, scope: !99)
!217 = !DILocation(line: 48, column: 16, scope: !218)
!218 = distinct !DILexicalBlock(scope: !219, file: !2, line: 48, column: 11)
!219 = distinct !DILexicalBlock(scope: !99, file: !2, line: 47, column: 47)
!220 = !DILocation(line: 0, scope: !218)
!221 = !DILocation(line: 48, column: 11, scope: !219)
!222 = !DILocation(line: 56, column: 9, scope: !223)
!223 = distinct !DILexicalBlock(scope: !224, file: !2, line: 56, column: 9)
!224 = distinct !DILexicalBlock(scope: !218, file: !2, line: 55, column: 14)
!225 = !DILocation(line: 56, column: 23, scope: !226)
!226 = distinct !DILexicalBlock(scope: !223, file: !2, line: 56, column: 9)
!227 = !DILocation(line: 49, column: 9, scope: !228)
!228 = distinct !DILexicalBlock(scope: !229, file: !2, line: 49, column: 9)
!229 = distinct !DILexicalBlock(scope: !218, file: !2, line: 48, column: 31)
!230 = !DILocation(line: 49, column: 23, scope: !231)
!231 = distinct !DILexicalBlock(scope: !228, file: !2, line: 49, column: 9)
!232 = !DILocation(line: 50, column: 11, scope: !233)
!233 = distinct !DILexicalBlock(scope: !234, file: !2, line: 50, column: 11)
!234 = distinct !DILexicalBlock(scope: !231, file: !2, line: 49, column: 33)
!235 = !DILocation(line: 51, column: 13, scope: !236)
!236 = distinct !DILexicalBlock(scope: !237, file: !2, line: 50, column: 35)
!237 = distinct !DILexicalBlock(scope: !233, file: !2, line: 50, column: 11)
!238 = !DILocation(line: 51, column: 34, scope: !236)
!239 = !DILocation(line: 52, column: 13, scope: !236)
!240 = !DILocation(line: 52, column: 34, scope: !236)
!241 = !DILocation(line: 50, column: 31, scope: !237)
!242 = !DILocation(line: 50, column: 25, scope: !237)
!243 = distinct !{!243, !232, !244, !245}
!244 = !DILocation(line: 53, column: 11, scope: !233)
!245 = !{!"llvm.loop.mustprogress"}
!246 = !DILocation(line: 49, column: 29, scope: !231)
!247 = distinct !{!247, !227, !248, !245}
!248 = !DILocation(line: 54, column: 9, scope: !228)
!249 = !DILocation(line: 57, column: 11, scope: !250)
!250 = distinct !DILexicalBlock(scope: !251, file: !2, line: 57, column: 11)
!251 = distinct !DILexicalBlock(scope: !226, file: !2, line: 56, column: 33)
!252 = !DILocation(line: 58, column: 13, scope: !253)
!253 = distinct !DILexicalBlock(scope: !254, file: !2, line: 57, column: 36)
!254 = distinct !DILexicalBlock(scope: !250, file: !2, line: 57, column: 11)
!255 = !DILocation(line: 58, column: 34, scope: !253)
!256 = !DILocation(line: 59, column: 13, scope: !253)
!257 = !DILocation(line: 59, column: 34, scope: !253)
!258 = !DILocation(line: 57, column: 32, scope: !254)
!259 = distinct !{!259, !249, !260, !245}
!260 = !DILocation(line: 60, column: 11, scope: !250)
!261 = !DILocation(line: 56, column: 29, scope: !226)
!262 = distinct !{!262, !222, !263, !245}
!263 = !DILocation(line: 61, column: 9, scope: !223)
!264 = !DILocation(line: 63, column: 35, scope: !98)
!265 = !DILocation(line: 64, column: 16, scope: !96)
!266 = !DILocation(line: 0, scope: !96)
!267 = !DILocation(line: 64, column: 11, scope: !97)
!268 = !DILocation(line: 74, column: 9, scope: !107)
!269 = !DILocation(line: 74, column: 23, scope: !106)
!270 = !DILocation(line: 65, column: 9, scope: !94)
!271 = !DILocation(line: 65, column: 23, scope: !93)
!272 = !DILocation(line: 66, column: 11, scope: !91)
!273 = !DILocation(line: 67, column: 35, scope: !89)
!274 = !DILocation(line: 0, scope: !89)
!275 = !DILocation(line: 68, column: 35, scope: !89)
!276 = !DILocation(line: 69, column: 46, scope: !89)
!277 = !DILocation(line: 69, column: 69, scope: !89)
!278 = !DILocation(line: 69, column: 34, scope: !89)
!279 = !DILocation(line: 70, column: 46, scope: !89)
!280 = !DILocation(line: 70, column: 69, scope: !89)
!281 = !DILocation(line: 70, column: 34, scope: !89)
!282 = !DILocation(line: 66, column: 31, scope: !90)
!283 = !DILocation(line: 66, column: 25, scope: !90)
!284 = distinct !{!284, !272, !285, !245}
!285 = !DILocation(line: 71, column: 11, scope: !91)
!286 = !DILocation(line: 65, column: 29, scope: !93)
!287 = distinct !{!287, !270, !288, !245}
!288 = !DILocation(line: 72, column: 9, scope: !94)
!289 = !DILocation(line: 75, column: 11, scope: !104)
!290 = !DILocation(line: 76, column: 35, scope: !102)
!291 = !DILocation(line: 0, scope: !102)
!292 = !DILocation(line: 77, column: 35, scope: !102)
!293 = !DILocation(line: 78, column: 46, scope: !102)
!294 = !DILocation(line: 78, column: 69, scope: !102)
!295 = !DILocation(line: 78, column: 34, scope: !102)
!296 = !DILocation(line: 79, column: 46, scope: !102)
!297 = !DILocation(line: 79, column: 69, scope: !102)
!298 = !DILocation(line: 79, column: 34, scope: !102)
!299 = !DILocation(line: 75, column: 32, scope: !103)
!300 = !DILocation(line: 75, column: 25, scope: !103)
!301 = distinct !{!301, !289, !302, !245}
!302 = !DILocation(line: 80, column: 11, scope: !104)
!303 = !DILocation(line: 74, column: 29, scope: !106)
!304 = distinct !{!304, !268, !305, !245}
!305 = !DILocation(line: 81, column: 9, scope: !107)
!306 = !DILocation(line: 85, column: 27, scope: !307)
!307 = distinct !DILexicalBlock(scope: !84, file: !2, line: 85, column: 9)
!308 = !DILocation(line: 88, column: 14, scope: !118)
!309 = !DILocation(line: 88, column: 28, scope: !118)
!310 = !DILocation(line: 90, column: 21, scope: !115)
!311 = !DILocation(line: 90, column: 7, scope: !116)
!312 = !DILocation(line: 91, column: 9, scope: !113)
!313 = !DILocation(line: 0, scope: !111)
!314 = !DILocation(line: 94, column: 11, scope: !123)
!315 = !DILocation(line: 95, column: 35, scope: !121)
!316 = !DILocation(line: 0, scope: !121)
!317 = !DILocation(line: 96, column: 35, scope: !121)
!318 = !DILocation(line: 97, column: 35, scope: !121)
!319 = !DILocation(line: 98, column: 35, scope: !121)
!320 = !DILocation(line: 99, column: 35, scope: !121)
!321 = !DILocation(line: 99, column: 57, scope: !121)
!322 = !DILocation(line: 99, column: 23, scope: !121)
!323 = !DILocation(line: 100, column: 35, scope: !121)
!324 = !DILocation(line: 100, column: 57, scope: !121)
!325 = !DILocation(line: 100, column: 23, scope: !121)
!326 = !DILocation(line: 94, column: 31, scope: !122)
!327 = !DILocation(line: 94, column: 25, scope: !122)
!328 = distinct !{!328, !314, !329, !245}
!329 = !DILocation(line: 101, column: 11, scope: !123)
!330 = !DILocation(line: 102, column: 46, scope: !111)
!331 = !DILocation(line: 102, column: 71, scope: !111)
!332 = !DILocation(line: 102, column: 11, scope: !111)
!333 = !DILocation(line: 102, column: 32, scope: !111)
!334 = !DILocation(line: 103, column: 46, scope: !111)
!335 = !DILocation(line: 103, column: 71, scope: !111)
!336 = !DILocation(line: 103, column: 11, scope: !111)
!337 = !DILocation(line: 103, column: 32, scope: !111)
!338 = !DILocation(line: 91, column: 29, scope: !112)
!339 = !DILocation(line: 91, column: 23, scope: !112)
!340 = distinct !{!340, !312, !341, !245}
!341 = !DILocation(line: 104, column: 9, scope: !113)
!342 = !DILocation(line: 90, column: 27, scope: !115)
!343 = distinct !{!343, !311, !344, !245}
!344 = !DILocation(line: 105, column: 7, scope: !116)
!345 = !DILocation(line: 107, column: 35, scope: !135)
!346 = !DILocation(line: 109, column: 21, scope: !132)
!347 = !DILocation(line: 109, column: 7, scope: !133)
!348 = !DILocation(line: 110, column: 9, scope: !130)
!349 = !DILocation(line: 0, scope: !128)
!350 = !DILocation(line: 113, column: 11, scope: !140)
!351 = !DILocation(line: 114, column: 35, scope: !138)
!352 = !DILocation(line: 0, scope: !138)
!353 = !DILocation(line: 115, column: 35, scope: !138)
!354 = !DILocation(line: 116, column: 35, scope: !138)
!355 = !DILocation(line: 117, column: 35, scope: !138)
!356 = !DILocation(line: 118, column: 35, scope: !138)
!357 = !DILocation(line: 118, column: 57, scope: !138)
!358 = !DILocation(line: 118, column: 23, scope: !138)
!359 = !DILocation(line: 119, column: 35, scope: !138)
!360 = !DILocation(line: 119, column: 57, scope: !138)
!361 = !DILocation(line: 119, column: 23, scope: !138)
!362 = !DILocation(line: 113, column: 31, scope: !139)
!363 = !DILocation(line: 113, column: 25, scope: !139)
!364 = distinct !{!364, !350, !365, !245}
!365 = !DILocation(line: 120, column: 11, scope: !140)
!366 = !DILocation(line: 121, column: 46, scope: !128)
!367 = !DILocation(line: 121, column: 71, scope: !128)
!368 = !DILocation(line: 121, column: 11, scope: !128)
!369 = !DILocation(line: 121, column: 32, scope: !128)
!370 = !DILocation(line: 122, column: 46, scope: !128)
!371 = !DILocation(line: 122, column: 71, scope: !128)
!372 = !DILocation(line: 122, column: 11, scope: !128)
!373 = !DILocation(line: 122, column: 32, scope: !128)
!374 = !DILocation(line: 110, column: 29, scope: !129)
!375 = !DILocation(line: 110, column: 23, scope: !129)
!376 = distinct !{!376, !348, !377, !245}
!377 = !DILocation(line: 123, column: 9, scope: !130)
!378 = !DILocation(line: 109, column: 27, scope: !132)
!379 = distinct !{!379, !347, !380, !245}
!380 = !DILocation(line: 124, column: 7, scope: !133)
!381 = !DILocation(line: 126, column: 21, scope: !152)
!382 = !DILocation(line: 126, column: 35, scope: !152)
!383 = !DILocation(line: 128, column: 21, scope: !149)
!384 = !DILocation(line: 128, column: 7, scope: !150)
!385 = !DILocation(line: 129, column: 9, scope: !147)
!386 = !DILocation(line: 0, scope: !145)
!387 = !DILocation(line: 132, column: 11, scope: !157)
!388 = !DILocation(line: 133, column: 35, scope: !155)
!389 = !DILocation(line: 0, scope: !155)
!390 = !DILocation(line: 134, column: 35, scope: !155)
!391 = !DILocation(line: 135, column: 35, scope: !155)
!392 = !DILocation(line: 136, column: 35, scope: !155)
!393 = !DILocation(line: 137, column: 35, scope: !155)
!394 = !DILocation(line: 137, column: 57, scope: !155)
!395 = !DILocation(line: 137, column: 23, scope: !155)
!396 = !DILocation(line: 138, column: 35, scope: !155)
!397 = !DILocation(line: 138, column: 57, scope: !155)
!398 = !DILocation(line: 138, column: 23, scope: !155)
!399 = !DILocation(line: 132, column: 31, scope: !156)
!400 = !DILocation(line: 132, column: 25, scope: !156)
!401 = distinct !{!401, !387, !402, !245}
!402 = !DILocation(line: 139, column: 11, scope: !157)
!403 = !DILocation(line: 140, column: 46, scope: !145)
!404 = !DILocation(line: 140, column: 71, scope: !145)
!405 = !DILocation(line: 140, column: 11, scope: !145)
!406 = !DILocation(line: 140, column: 32, scope: !145)
!407 = !DILocation(line: 141, column: 46, scope: !145)
!408 = !DILocation(line: 141, column: 71, scope: !145)
!409 = !DILocation(line: 141, column: 11, scope: !145)
!410 = !DILocation(line: 141, column: 32, scope: !145)
!411 = !DILocation(line: 129, column: 30, scope: !146)
!412 = !DILocation(line: 129, column: 23, scope: !146)
!413 = distinct !{!413, !385, !414, !245}
!414 = !DILocation(line: 142, column: 9, scope: !147)
!415 = !DILocation(line: 128, column: 27, scope: !149)
!416 = distinct !{!416, !384, !417, !245}
!417 = !DILocation(line: 143, column: 7, scope: !150)
!418 = !DILocation(line: 145, column: 35, scope: !169)
!419 = !DILocation(line: 147, column: 21, scope: !166)
!420 = !DILocation(line: 147, column: 7, scope: !167)
!421 = !DILocation(line: 148, column: 9, scope: !164)
!422 = !DILocation(line: 0, scope: !162)
!423 = !DILocation(line: 151, column: 11, scope: !174)
!424 = !DILocation(line: 152, column: 35, scope: !172)
!425 = !DILocation(line: 0, scope: !172)
!426 = !DILocation(line: 153, column: 35, scope: !172)
!427 = !DILocation(line: 154, column: 35, scope: !172)
!428 = !DILocation(line: 155, column: 35, scope: !172)
!429 = !DILocation(line: 156, column: 35, scope: !172)
!430 = !DILocation(line: 156, column: 57, scope: !172)
!431 = !DILocation(line: 156, column: 23, scope: !172)
!432 = !DILocation(line: 157, column: 35, scope: !172)
!433 = !DILocation(line: 157, column: 57, scope: !172)
!434 = !DILocation(line: 157, column: 23, scope: !172)
!435 = !DILocation(line: 151, column: 31, scope: !173)
!436 = !DILocation(line: 151, column: 25, scope: !173)
!437 = distinct !{!437, !423, !438, !245}
!438 = !DILocation(line: 158, column: 11, scope: !174)
!439 = !DILocation(line: 159, column: 46, scope: !162)
!440 = !DILocation(line: 159, column: 71, scope: !162)
!441 = !DILocation(line: 159, column: 11, scope: !162)
!442 = !DILocation(line: 159, column: 32, scope: !162)
!443 = !DILocation(line: 160, column: 46, scope: !162)
!444 = !DILocation(line: 160, column: 71, scope: !162)
!445 = !DILocation(line: 160, column: 11, scope: !162)
!446 = !DILocation(line: 160, column: 32, scope: !162)
!447 = !DILocation(line: 148, column: 30, scope: !163)
!448 = !DILocation(line: 148, column: 23, scope: !163)
!449 = distinct !{!449, !421, !450, !245}
!450 = !DILocation(line: 161, column: 9, scope: !164)
!451 = !DILocation(line: 147, column: 27, scope: !166)
!452 = distinct !{!452, !420, !453, !245}
!453 = !DILocation(line: 162, column: 7, scope: !167)
!454 = !DILocation(line: 165, column: 7, scope: !455)
!455 = distinct !DILexicalBlock(scope: !169, file: !2, line: 164, column: 12)
!456 = !DILocation(line: 15, column: 1, scope: !457)
!457 = !DILexicalBlockFile(scope: !49, file: !18, discriminator: 0)
!458 = !DISubprogram(name: "cblas_xerbla", scope: !21, file: !21, line: 602, type: !459, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!459 = !DISubroutineType(types: !460)
!460 = !{null, !56, !461, !461, null}
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!462 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
