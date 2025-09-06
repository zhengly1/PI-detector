; ModuleID = 'zgemm.ll'
source_filename = "zgemm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"./source_gemm_c.h\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !7
@.str.2 = private unnamed_addr constant [23 x i8] c"unrecognized operation\00", align 1, !dbg !12

; Function Attrs: nounwind uwtable
define dso_local void @cblas_zgemm(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr nocapture noundef readonly %6, ptr nocapture noundef readonly %7, i32 noundef %8, ptr nocapture noundef readonly %9, i32 noundef %10, ptr nocapture noundef readonly %11, ptr nocapture noundef %12, i32 noundef %13) local_unnamed_addr #0 !dbg !45 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !56, metadata !DIExpression()), !dbg !178
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !57, metadata !DIExpression()), !dbg !178
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !58, metadata !DIExpression()), !dbg !178
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !59, metadata !DIExpression()), !dbg !178
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !60, metadata !DIExpression()), !dbg !178
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !61, metadata !DIExpression()), !dbg !178
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !62, metadata !DIExpression()), !dbg !178
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !63, metadata !DIExpression()), !dbg !178
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !64, metadata !DIExpression()), !dbg !178
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !65, metadata !DIExpression()), !dbg !178
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !66, metadata !DIExpression()), !dbg !178
  tail call void @llvm.dbg.value(metadata ptr %11, metadata !67, metadata !DIExpression()), !dbg !178
  tail call void @llvm.dbg.value(metadata ptr %12, metadata !68, metadata !DIExpression()), !dbg !178
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !69, metadata !DIExpression()), !dbg !178
  tail call void @llvm.dbg.value(metadata i32 0, metadata !85, metadata !DIExpression()), !dbg !179
  tail call void @llvm.dbg.value(metadata i32 111, metadata !87, metadata !DIExpression()), !dbg !180
  tail call void @llvm.dbg.value(metadata i32 111, metadata !89, metadata !DIExpression()), !dbg !180
  %15 = icmp eq i32 %0, 101, !dbg !181
  tail call void @llvm.dbg.value(metadata i32 %19, metadata !87, metadata !DIExpression()), !dbg !180
  tail call void @llvm.dbg.value(metadata i32 %19, metadata !87, metadata !DIExpression()), !dbg !180
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !89, metadata !DIExpression()), !dbg !180
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !89, metadata !DIExpression()), !dbg !180
  %16 = select i1 %15, i32 %1, i32 %2
  %17 = select i1 %15, i32 %2, i32 %1
  %18 = icmp eq i32 %16, 113, !dbg !181
  %19 = select i1 %18, i32 112, i32 %16, !dbg !181
  %20 = icmp eq i32 %17, 113, !dbg !181
  %21 = select i1 %20, i32 112, i32 %17, !dbg !181
  tail call void @llvm.dbg.value(metadata i32 %19, metadata !87, metadata !DIExpression()), !dbg !180
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !89, metadata !DIExpression()), !dbg !180
  %22 = add i32 %0, -103, !dbg !183
  %23 = icmp ult i32 %22, -2, !dbg !183
  %24 = zext i1 %23 to i32, !dbg !183
  tail call void @llvm.dbg.value(metadata i32 %24, metadata !85, metadata !DIExpression()), !dbg !179
  %25 = add i32 %1, -114, !dbg !185
  %26 = icmp ult i32 %25, -3, !dbg !185
  %27 = select i1 %26, i32 2, i32 %24, !dbg !185
  tail call void @llvm.dbg.value(metadata i32 %27, metadata !85, metadata !DIExpression()), !dbg !179
  %28 = add i32 %2, -114, !dbg !187
  %29 = icmp ult i32 %28, -3, !dbg !187
  %30 = select i1 %29, i32 3, i32 %27, !dbg !187
  tail call void @llvm.dbg.value(metadata i32 %30, metadata !85, metadata !DIExpression()), !dbg !179
  %31 = icmp slt i32 %3, 0, !dbg !189
  %32 = select i1 %31, i32 4, i32 %30, !dbg !191
  tail call void @llvm.dbg.value(metadata i32 %32, metadata !85, metadata !DIExpression()), !dbg !179
  %33 = icmp slt i32 %4, 0, !dbg !192
  %34 = select i1 %33, i32 5, i32 %32, !dbg !191
  tail call void @llvm.dbg.value(metadata i32 %34, metadata !85, metadata !DIExpression()), !dbg !179
  %35 = icmp slt i32 %5, 0, !dbg !194
  %36 = select i1 %35, i32 6, i32 %34, !dbg !191
  tail call void @llvm.dbg.value(metadata i32 %36, metadata !85, metadata !DIExpression()), !dbg !179
  br i1 %15, label %37, label %57, !dbg !191

37:                                               ; preds = %14
  %38 = icmp eq i32 %19, 111, !dbg !196
  %39 = select i1 %38, i32 %5, i32 %3, !dbg !196
  %40 = tail call i32 @llvm.smax.i32(i32 %39, i32 1), !dbg !196
  %41 = icmp sgt i32 %40, %8, !dbg !196
  %42 = select i1 %41, i32 9, i32 %36, !dbg !196
  tail call void @llvm.dbg.value(metadata i32 %42, metadata !85, metadata !DIExpression()), !dbg !179
  %43 = icmp eq i32 %21, 111, !dbg !200
  br i1 %43, label %44, label %48, !dbg !202

44:                                               ; preds = %37
  %45 = tail call i32 @llvm.smax.i32(i32 %4, i32 1), !dbg !203
  %46 = icmp sgt i32 %45, %10, !dbg !203
  %47 = select i1 %46, i32 11, i32 %42, !dbg !206
  br label %53, !dbg !206

48:                                               ; preds = %37
  %49 = tail call i32 @llvm.smax.i32(i32 %5, i32 1), !dbg !207
  %50 = icmp sgt i32 %49, %10, !dbg !207
  %51 = select i1 %50, i32 11, i32 %42, !dbg !210
  %52 = tail call i32 @llvm.smax.i32(i32 %4, i32 1), !dbg !211
  br label %53, !dbg !210

53:                                               ; preds = %48, %44
  %54 = phi i32 [ %52, %48 ], [ %45, %44 ], !dbg !211
  %55 = phi i32 [ %51, %48 ], [ %47, %44 ], !dbg !202
  tail call void @llvm.dbg.value(metadata i32 %55, metadata !85, metadata !DIExpression()), !dbg !179
  %56 = icmp sgt i32 %54, %13, !dbg !211
  br i1 %56, label %82, label %79, !dbg !202

57:                                               ; preds = %14
  %58 = icmp eq i32 %0, 102, !dbg !213
  br i1 %58, label %59, label %79, !dbg !215

59:                                               ; preds = %57
  %60 = icmp eq i32 %19, 111, !dbg !216
  %61 = select i1 %60, i32 %5, i32 %4, !dbg !216
  %62 = tail call i32 @llvm.smax.i32(i32 %61, i32 1), !dbg !216
  %63 = icmp sgt i32 %62, %10, !dbg !216
  %64 = select i1 %63, i32 11, i32 %36, !dbg !216
  tail call void @llvm.dbg.value(metadata i32 %64, metadata !85, metadata !DIExpression()), !dbg !179
  %65 = icmp eq i32 %21, 111, !dbg !219
  br i1 %65, label %66, label %70, !dbg !221

66:                                               ; preds = %59
  %67 = tail call i32 @llvm.smax.i32(i32 %3, i32 1), !dbg !222
  %68 = icmp sgt i32 %67, %8, !dbg !222
  %69 = select i1 %68, i32 9, i32 %64, !dbg !225
  br label %75, !dbg !225

70:                                               ; preds = %59
  %71 = tail call i32 @llvm.smax.i32(i32 %5, i32 1), !dbg !226
  %72 = icmp sgt i32 %71, %8, !dbg !226
  %73 = select i1 %72, i32 9, i32 %64, !dbg !229
  %74 = tail call i32 @llvm.smax.i32(i32 %3, i32 1), !dbg !230
  br label %75, !dbg !229

75:                                               ; preds = %70, %66
  %76 = phi i32 [ %74, %70 ], [ %67, %66 ], !dbg !230
  %77 = phi i32 [ %73, %70 ], [ %69, %66 ], !dbg !221
  tail call void @llvm.dbg.value(metadata i32 %77, metadata !85, metadata !DIExpression()), !dbg !179
  %78 = icmp sgt i32 %76, %13, !dbg !230
  br i1 %78, label %82, label %79, !dbg !221

79:                                               ; preds = %75, %57, %53
  %80 = phi i32 [ %36, %57 ], [ %55, %53 ], [ %77, %75 ], !dbg !191
  tail call void @llvm.dbg.value(metadata i32 %80, metadata !85, metadata !DIExpression()), !dbg !179
  %81 = icmp eq i32 %80, 0, !dbg !232
  br i1 %81, label %84, label %82, !dbg !234

82:                                               ; preds = %79, %75, %53
  %83 = phi i32 [ %80, %79 ], [ 14, %53 ], [ 14, %75 ]
  tail call void (i32, ptr, ptr, ...) @cblas_xerbla(i32 noundef %83, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #3, !dbg !232
  br label %84, !dbg !232

84:                                               ; preds = %82, %79
  %85 = load double, ptr %6, align 8, !dbg !235, !tbaa !236
  tail call void @llvm.dbg.value(metadata double %85, metadata !90, metadata !DIExpression()), !dbg !240
  %86 = getelementptr inbounds double, ptr %6, i64 1, !dbg !241
  %87 = load double, ptr %86, align 8, !dbg !241, !tbaa !236
  tail call void @llvm.dbg.value(metadata double %87, metadata !92, metadata !DIExpression()), !dbg !240
  %88 = load double, ptr %11, align 8, !dbg !242, !tbaa !236
  tail call void @llvm.dbg.value(metadata double %88, metadata !93, metadata !DIExpression()), !dbg !240
  %89 = getelementptr inbounds double, ptr %11, i64 1, !dbg !243
  %90 = load double, ptr %89, align 8, !dbg !243, !tbaa !236
  tail call void @llvm.dbg.value(metadata double %90, metadata !94, metadata !DIExpression()), !dbg !240
  %91 = fcmp oeq double %85, 0.000000e+00, !dbg !244
  %92 = fcmp oeq double %87, 0.000000e+00
  %93 = select i1 %91, i1 %92, i1 false, !dbg !246
  %94 = fcmp oeq double %88, 1.000000e+00
  %95 = select i1 %93, i1 %94, i1 false, !dbg !246
  %96 = fcmp oeq double %90, 0.000000e+00
  %97 = select i1 %95, i1 %96, i1 false, !dbg !246
  br i1 %97, label %517, label %98, !dbg !246

98:                                               ; preds = %84
  %99 = select i1 %15, i32 %1, i32 %2
  %100 = select i1 %15, i32 %2, i32 %1
  %101 = select i1 %15, ptr %9, ptr %7
  %102 = select i1 %15, ptr %7, ptr %9
  %103 = select i1 %15, i32 %10, i32 %8
  %104 = select i1 %15, i32 %8, i32 %10
  %105 = select i1 %15, i32 %4, i32 %3
  %106 = select i1 %15, i32 %3, i32 %4
  %107 = icmp eq i32 %99, 113, !dbg !247
  %108 = select i1 %107, i32 -1, i32 1, !dbg !247
  %109 = icmp eq i32 %99, 111, !dbg !247
  %110 = icmp eq i32 %100, 113, !dbg !247
  %111 = select i1 %110, i32 -1, i32 1, !dbg !247
  %112 = icmp eq i32 %100, 111, !dbg !247
  tail call void @llvm.dbg.value(metadata i32 %106, metadata !75, metadata !DIExpression()), !dbg !249
  tail call void @llvm.dbg.value(metadata i32 %105, metadata !76, metadata !DIExpression()), !dbg !249
  tail call void @llvm.dbg.value(metadata i32 %104, metadata !77, metadata !DIExpression()), !dbg !249
  tail call void @llvm.dbg.value(metadata i32 %103, metadata !78, metadata !DIExpression()), !dbg !249
  tail call void @llvm.dbg.value(metadata i32 %108, metadata !79, metadata !DIExpression()), !dbg !249
  tail call void @llvm.dbg.value(metadata i32 %111, metadata !80, metadata !DIExpression()), !dbg !249
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !81, metadata !DIExpression()), !dbg !249
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !82, metadata !DIExpression()), !dbg !249
  tail call void @llvm.dbg.value(metadata ptr %102, metadata !83, metadata !DIExpression()), !dbg !249
  tail call void @llvm.dbg.value(metadata ptr %101, metadata !84, metadata !DIExpression()), !dbg !249
  %113 = fcmp oeq double %88, 0.000000e+00, !dbg !250
  %114 = select i1 %113, i1 %96, i1 false, !dbg !251
  br i1 %114, label %115, label %167, !dbg !251

115:                                              ; preds = %98
  tail call void @llvm.dbg.value(metadata i32 0, metadata !70, metadata !DIExpression()), !dbg !249
  %116 = icmp sgt i32 %106, 0, !dbg !252
  br i1 %116, label %117, label %201, !dbg !256

117:                                              ; preds = %115
  %118 = icmp sgt i32 %105, 0
  %119 = zext i32 %13 to i64, !dbg !256
  %120 = zext nneg i32 %106 to i64, !dbg !252
  %121 = zext i32 %105 to i64
  %122 = and i64 %121, 1
  %123 = icmp eq i32 %105, 1
  %124 = and i64 %121, 2147483646
  %125 = icmp eq i64 %122, 0
  br label %126, !dbg !256

126:                                              ; preds = %164, %117
  %127 = phi i64 [ 0, %117 ], [ %165, %164 ]
  tail call void @llvm.dbg.value(metadata i64 %127, metadata !70, metadata !DIExpression()), !dbg !249
  tail call void @llvm.dbg.value(metadata i32 0, metadata !73, metadata !DIExpression()), !dbg !249
  br i1 %118, label %128, label %164, !dbg !257

128:                                              ; preds = %126
  %129 = mul i64 %127, %119
  br i1 %123, label %153, label %130, !dbg !257

130:                                              ; preds = %130, %128
  %131 = phi i64 [ %150, %130 ], [ 0, %128 ]
  %132 = phi i64 [ %151, %130 ], [ 0, %128 ]
  tail call void @llvm.dbg.value(metadata i64 %131, metadata !73, metadata !DIExpression()), !dbg !249
  %133 = add i64 %131, %129, !dbg !260
  %134 = trunc i64 %133 to i32, !dbg !260
  %135 = shl nsw i32 %134, 1, !dbg !260
  %136 = sext i32 %135 to i64, !dbg !260
  %137 = getelementptr inbounds double, ptr %12, i64 %136, !dbg !260
  store double 0.000000e+00, ptr %137, align 8, !dbg !263, !tbaa !236
  %138 = or disjoint i32 %135, 1, !dbg !264
  %139 = sext i32 %138 to i64, !dbg !264
  %140 = getelementptr inbounds double, ptr %12, i64 %139, !dbg !264
  store double 0.000000e+00, ptr %140, align 8, !dbg !265, !tbaa !236
  %141 = or disjoint i64 %131, 1, !dbg !266
  tail call void @llvm.dbg.value(metadata i64 %141, metadata !73, metadata !DIExpression()), !dbg !249
  tail call void @llvm.dbg.value(metadata i64 %141, metadata !73, metadata !DIExpression()), !dbg !249
  %142 = add i64 %141, %129, !dbg !260
  %143 = trunc i64 %142 to i32, !dbg !260
  %144 = shl nsw i32 %143, 1, !dbg !260
  %145 = sext i32 %144 to i64, !dbg !260
  %146 = getelementptr inbounds double, ptr %12, i64 %145, !dbg !260
  store double 0.000000e+00, ptr %146, align 8, !dbg !263, !tbaa !236
  %147 = or disjoint i32 %144, 1, !dbg !264
  %148 = sext i32 %147 to i64, !dbg !264
  %149 = getelementptr inbounds double, ptr %12, i64 %148, !dbg !264
  store double 0.000000e+00, ptr %149, align 8, !dbg !265, !tbaa !236
  %150 = add nuw nsw i64 %131, 2, !dbg !266
  tail call void @llvm.dbg.value(metadata i64 %150, metadata !73, metadata !DIExpression()), !dbg !249
  %151 = add i64 %132, 2, !dbg !257
  %152 = icmp eq i64 %151, %124, !dbg !257
  br i1 %152, label %153, label %130, !dbg !257, !llvm.loop !267

153:                                              ; preds = %130, %128
  %154 = phi i64 [ 0, %128 ], [ %150, %130 ]
  br i1 %125, label %164, label %155, !dbg !257

155:                                              ; preds = %153
  tail call void @llvm.dbg.value(metadata i64 %154, metadata !73, metadata !DIExpression()), !dbg !249
  %156 = add i64 %154, %129, !dbg !260
  %157 = trunc i64 %156 to i32, !dbg !260
  %158 = shl nsw i32 %157, 1, !dbg !260
  %159 = sext i32 %158 to i64, !dbg !260
  %160 = getelementptr inbounds double, ptr %12, i64 %159, !dbg !260
  store double 0.000000e+00, ptr %160, align 8, !dbg !263, !tbaa !236
  %161 = or disjoint i32 %158, 1, !dbg !264
  %162 = sext i32 %161 to i64, !dbg !264
  %163 = getelementptr inbounds double, ptr %12, i64 %162, !dbg !264
  store double 0.000000e+00, ptr %163, align 8, !dbg !265, !tbaa !236
  tail call void @llvm.dbg.value(metadata i64 %154, metadata !73, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !249
  br label %164, !dbg !270

164:                                              ; preds = %155, %153, %126
  %165 = add nuw nsw i64 %127, 1, !dbg !270
  tail call void @llvm.dbg.value(metadata i64 %165, metadata !70, metadata !DIExpression()), !dbg !249
  %166 = icmp eq i64 %165, %120, !dbg !252
  br i1 %166, label %201, label %126, !dbg !256, !llvm.loop !271

167:                                              ; preds = %98
  %168 = select i1 %94, i1 %96, i1 false, !dbg !273
  tail call void @llvm.dbg.value(metadata i32 0, metadata !70, metadata !DIExpression()), !dbg !249
  %169 = icmp slt i32 %106, 1
  %170 = or i1 %169, %168, !dbg !273
  br i1 %170, label %201, label %171, !dbg !273

171:                                              ; preds = %167
  %172 = icmp sgt i32 %105, 0
  %173 = zext i32 %13 to i64, !dbg !274
  %174 = zext nneg i32 %106 to i64, !dbg !275
  %175 = zext nneg i32 %105 to i64
  br label %176, !dbg !274

176:                                              ; preds = %198, %171
  %177 = phi i64 [ 0, %171 ], [ %199, %198 ]
  tail call void @llvm.dbg.value(metadata i64 %177, metadata !70, metadata !DIExpression()), !dbg !249
  tail call void @llvm.dbg.value(metadata i32 0, metadata !73, metadata !DIExpression()), !dbg !249
  br i1 %172, label %178, label %198, !dbg !276

178:                                              ; preds = %176
  %179 = mul i64 %177, %173
  br label %180, !dbg !276

180:                                              ; preds = %180, %178
  %181 = phi i64 [ 0, %178 ], [ %196, %180 ]
  tail call void @llvm.dbg.value(metadata i64 %181, metadata !73, metadata !DIExpression()), !dbg !249
  %182 = add i64 %181, %179, !dbg !277
  %183 = trunc i64 %182 to i32, !dbg !277
  %184 = shl nsw i32 %183, 1, !dbg !277
  %185 = sext i32 %184 to i64, !dbg !277
  %186 = getelementptr inbounds double, ptr %12, i64 %185, !dbg !277
  %187 = load double, ptr %186, align 8, !dbg !277, !tbaa !236
  tail call void @llvm.dbg.value(metadata double %187, metadata !95, metadata !DIExpression()), !dbg !278
  %188 = or disjoint i32 %184, 1, !dbg !279
  %189 = sext i32 %188 to i64, !dbg !279
  %190 = getelementptr inbounds double, ptr %12, i64 %189, !dbg !279
  %191 = load double, ptr %190, align 8, !dbg !279, !tbaa !236
  tail call void @llvm.dbg.value(metadata double %191, metadata !105, metadata !DIExpression()), !dbg !278
  %192 = fmul double %88, %187, !dbg !280
  %193 = fmul double %90, %191, !dbg !281
  %handler_result = call double @fSubHandlerDouble(double %192, double %193), !dbg !282
  store double %handler_result, ptr %186, align 8, !dbg !282, !tbaa !236
  %194 = fmul double %88, %191, !dbg !283
  %195 = fmul double %90, %187, !dbg !284
  %handler_result1 = call double @fAddHandlerDouble(double %195, double %194), !dbg !285
  store double %handler_result1, ptr %190, align 8, !dbg !285, !tbaa !236
  %196 = add nuw nsw i64 %181, 1, !dbg !286
  tail call void @llvm.dbg.value(metadata i64 %196, metadata !73, metadata !DIExpression()), !dbg !249
  %197 = icmp eq i64 %196, %175, !dbg !287
  br i1 %197, label %198, label %180, !dbg !276, !llvm.loop !288

198:                                              ; preds = %180, %176
  %199 = add nuw nsw i64 %177, 1, !dbg !290
  tail call void @llvm.dbg.value(metadata i64 %199, metadata !70, metadata !DIExpression()), !dbg !249
  %200 = icmp eq i64 %199, %174, !dbg !275
  br i1 %200, label %201, label %176, !dbg !274, !llvm.loop !291

201:                                              ; preds = %198, %167, %164, %115
  br i1 %93, label %517, label %202, !dbg !293

202:                                              ; preds = %201
  %203 = and i1 %112, %109, !dbg !295
  br i1 %203, label %204, label %280, !dbg !295

204:                                              ; preds = %202
  tail call void @llvm.dbg.value(metadata i32 0, metadata !74, metadata !DIExpression()), !dbg !249
  %205 = icmp sgt i32 %5, 0, !dbg !296
  br i1 %205, label %206, label %517, !dbg !297

206:                                              ; preds = %204
  %207 = icmp sgt i32 %106, 0
  %208 = sitofp i32 %108 to double
  %209 = icmp slt i32 %105, 1
  %210 = sitofp i32 %111 to double
  %211 = zext i32 %104 to i64, !dbg !297
  %212 = zext i32 %13 to i64, !dbg !297
  %213 = zext i32 %103 to i64, !dbg !297
  %214 = zext nneg i32 %5 to i64, !dbg !296
  %215 = zext nneg i32 %106 to i64
  %216 = zext nneg i32 %105 to i64
  br label %217, !dbg !297

217:                                              ; preds = %277, %206
  %218 = phi i64 [ 0, %206 ], [ %278, %277 ]
  tail call void @llvm.dbg.value(metadata i64 %218, metadata !74, metadata !DIExpression()), !dbg !249
  tail call void @llvm.dbg.value(metadata i32 0, metadata !70, metadata !DIExpression()), !dbg !249
  br i1 %207, label %219, label %277, !dbg !298

219:                                              ; preds = %217
  %220 = mul i64 %218, %213
  br label %221, !dbg !298

221:                                              ; preds = %274, %219
  %222 = phi i64 [ 0, %219 ], [ %275, %274 ]
  tail call void @llvm.dbg.value(metadata i64 %222, metadata !70, metadata !DIExpression()), !dbg !249
  %223 = mul i64 %222, %211, !dbg !299
  %224 = add i64 %223, %218, !dbg !299
  %225 = trunc i64 %224 to i32, !dbg !299
  %226 = shl nsw i32 %225, 1, !dbg !299
  %227 = sext i32 %226 to i64, !dbg !299
  %228 = getelementptr inbounds double, ptr %102, i64 %227, !dbg !299
  %229 = load double, ptr %228, align 8, !dbg !299, !tbaa !236
  tail call void @llvm.dbg.value(metadata double %229, metadata !106, metadata !DIExpression()), !dbg !300
  %230 = or disjoint i32 %226, 1, !dbg !301
  %231 = sext i32 %230 to i64, !dbg !301
  %232 = getelementptr inbounds double, ptr %102, i64 %231, !dbg !301
  %233 = load double, ptr %232, align 8, !dbg !301, !tbaa !236
  %234 = fmul double %233, %208, !dbg !302
  tail call void @llvm.dbg.value(metadata double %234, metadata !115, metadata !DIExpression()), !dbg !300
  %235 = fmul double %85, %229, !dbg !303
  %236 = fmul double %87, %234, !dbg !304
  %handler_result2 = call double @fSubHandlerDouble(double %235, double %236), !dbg !305
  tail call void @llvm.dbg.value(metadata double %handler_result2, metadata !116, metadata !DIExpression()), !dbg !300
  %237 = fmul double %85, %234, !dbg !305
  %238 = fmul double %87, %229, !dbg !306
  %handler_result3 = call double @fAddHandlerDouble(double %238, double %237), !dbg !307
  tail call void @llvm.dbg.value(metadata double %handler_result3, metadata !117, metadata !DIExpression()), !dbg !300
  %239 = fcmp oeq double %handler_result2, 0.000000e+00, !dbg !307
  %240 = fcmp oeq double %handler_result3, 0.000000e+00
  %241 = select i1 %239, i1 %240, i1 false, !dbg !308
  %242 = or i1 %241, %209, !dbg !308
  br i1 %242, label %274, label %243, !dbg !308

243:                                              ; preds = %221
  %244 = mul i64 %222, %212
  br label %245, !dbg !309

245:                                              ; preds = %245, %243
  %246 = phi i64 [ 0, %243 ], [ %272, %245 ]
  tail call void @llvm.dbg.value(metadata i64 %246, metadata !73, metadata !DIExpression()), !dbg !249
  %247 = add i64 %246, %220, !dbg !310
  %248 = trunc i64 %247 to i32, !dbg !310
  %249 = shl nsw i32 %248, 1, !dbg !310
  %250 = sext i32 %249 to i64, !dbg !310
  %251 = getelementptr inbounds double, ptr %101, i64 %250, !dbg !310
  %252 = load double, ptr %251, align 8, !dbg !310, !tbaa !236
  tail call void @llvm.dbg.value(metadata double %252, metadata !118, metadata !DIExpression()), !dbg !311
  %253 = or disjoint i32 %249, 1, !dbg !312
  %254 = sext i32 %253 to i64, !dbg !312
  %255 = getelementptr inbounds double, ptr %101, i64 %254, !dbg !312
  %256 = load double, ptr %255, align 8, !dbg !312, !tbaa !236
  %257 = fmul double %256, %210, !dbg !313
  tail call void @llvm.dbg.value(metadata double %257, metadata !124, metadata !DIExpression()), !dbg !311
  %258 = fmul double %handler_result2, %252, !dbg !314
  %259 = fmul double %handler_result3, %257, !dbg !315
  %handler_result4 = call double @fSubHandlerDouble(double %258, double %259), !dbg !316
  %260 = add i64 %246, %244, !dbg !316
  %261 = trunc i64 %260 to i32, !dbg !316
  %262 = shl nsw i32 %261, 1, !dbg !316
  %263 = sext i32 %262 to i64, !dbg !316
  %264 = getelementptr inbounds double, ptr %12, i64 %263, !dbg !316
  %265 = load double, ptr %264, align 8, !dbg !317, !tbaa !236
  %handler_result5 = call double @fAddHandlerDouble(double %265, double %handler_result4), !dbg !317
  store double %handler_result5, ptr %264, align 8, !dbg !317, !tbaa !236
  %266 = fmul double %handler_result2, %257, !dbg !318
  %267 = fmul double %handler_result3, %252, !dbg !319
  %handler_result6 = call double @fAddHandlerDouble(double %267, double %266), !dbg !320
  %268 = or disjoint i32 %262, 1, !dbg !320
  %269 = sext i32 %268 to i64, !dbg !320
  %270 = getelementptr inbounds double, ptr %12, i64 %269, !dbg !320
  %271 = load double, ptr %270, align 8, !dbg !321, !tbaa !236
  %handler_result7 = call double @fAddHandlerDouble(double %271, double %handler_result6), !dbg !321
  store double %handler_result7, ptr %270, align 8, !dbg !321, !tbaa !236
  %272 = add nuw nsw i64 %246, 1, !dbg !322
  tail call void @llvm.dbg.value(metadata i64 %272, metadata !73, metadata !DIExpression()), !dbg !249
  %273 = icmp eq i64 %272, %216, !dbg !323
  br i1 %273, label %274, label %245, !dbg !309, !llvm.loop !324

274:                                              ; preds = %245, %221
  %275 = add nuw nsw i64 %222, 1, !dbg !326
  tail call void @llvm.dbg.value(metadata i64 %275, metadata !70, metadata !DIExpression()), !dbg !249
  %276 = icmp eq i64 %275, %215, !dbg !327
  br i1 %276, label %277, label %221, !dbg !298, !llvm.loop !328

277:                                              ; preds = %274, %217
  %278 = add nuw nsw i64 %218, 1, !dbg !330
  tail call void @llvm.dbg.value(metadata i64 %278, metadata !74, metadata !DIExpression()), !dbg !249
  %279 = icmp eq i64 %278, %214, !dbg !296
  br i1 %279, label %517, label %217, !dbg !297, !llvm.loop !331

280:                                              ; preds = %202
  %281 = xor i1 %112, true
  %282 = and i1 %109, %281, !dbg !333
  br i1 %282, label %283, label %359, !dbg !333

283:                                              ; preds = %280
  tail call void @llvm.dbg.value(metadata i32 0, metadata !70, metadata !DIExpression()), !dbg !249
  %284 = icmp sgt i32 %106, 0, !dbg !334
  br i1 %284, label %285, label %517, !dbg !335

285:                                              ; preds = %283
  %286 = icmp sgt i32 %105, 0
  %287 = icmp sgt i32 %5, 0
  %288 = sitofp i32 %108 to double
  %289 = sitofp i32 %111 to double
  %290 = zext i32 %103 to i64, !dbg !335
  %291 = zext i32 %104 to i64, !dbg !335
  %292 = zext i32 %13 to i64, !dbg !335
  %293 = zext nneg i32 %106 to i64, !dbg !334
  %294 = zext nneg i32 %105 to i64
  %295 = zext nneg i32 %5 to i64
  br label %296, !dbg !335

296:                                              ; preds = %356, %285
  %297 = phi i64 [ 0, %285 ], [ %357, %356 ]
  tail call void @llvm.dbg.value(metadata i64 %297, metadata !70, metadata !DIExpression()), !dbg !249
  tail call void @llvm.dbg.value(metadata i32 0, metadata !73, metadata !DIExpression()), !dbg !249
  br i1 %286, label %298, label %356, !dbg !336

298:                                              ; preds = %296
  %299 = mul i64 %297, %291
  %300 = mul i64 %297, %292
  br label %301, !dbg !336

301:                                              ; preds = %337, %298
  %302 = phi i64 [ 0, %298 ], [ %354, %337 ]
  tail call void @llvm.dbg.value(metadata i64 %302, metadata !73, metadata !DIExpression()), !dbg !249
  tail call void @llvm.dbg.value(metadata i32 0, metadata !74, metadata !DIExpression()), !dbg !249
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !134, metadata !DIExpression()), !dbg !337
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !125, metadata !DIExpression()), !dbg !337
  br i1 %287, label %303, label %337, !dbg !338

303:                                              ; preds = %301
  %304 = mul i64 %302, %290
  br label %305, !dbg !338

305:                                              ; preds = %305, %303
  %306 = phi i64 [ 0, %303 ], [ %335, %305 ]
  %307 = phi double [ 0.000000e+00, %303 ], [ %handler_result11, %305 ]
  %308 = phi double [ 0.000000e+00, %303 ], [ %handler_result9, %305 ]
  tail call void @llvm.dbg.value(metadata i64 %306, metadata !74, metadata !DIExpression()), !dbg !249
  tail call void @llvm.dbg.value(metadata double %307, metadata !134, metadata !DIExpression()), !dbg !337
  tail call void @llvm.dbg.value(metadata double %308, metadata !125, metadata !DIExpression()), !dbg !337
  %309 = add i64 %306, %299, !dbg !339
  %310 = trunc i64 %309 to i32, !dbg !339
  %311 = shl nsw i32 %310, 1, !dbg !339
  %312 = sext i32 %311 to i64, !dbg !339
  %313 = getelementptr inbounds double, ptr %102, i64 %312, !dbg !339
  %314 = load double, ptr %313, align 8, !dbg !339, !tbaa !236
  tail call void @llvm.dbg.value(metadata double %314, metadata !135, metadata !DIExpression()), !dbg !340
  %315 = or disjoint i32 %311, 1, !dbg !341
  %316 = sext i32 %315 to i64, !dbg !341
  %317 = getelementptr inbounds double, ptr %102, i64 %316, !dbg !341
  %318 = load double, ptr %317, align 8, !dbg !341, !tbaa !236
  %319 = fmul double %318, %288, !dbg !342
  tail call void @llvm.dbg.value(metadata double %319, metadata !139, metadata !DIExpression()), !dbg !340
  %320 = add i64 %306, %304, !dbg !343
  %321 = trunc i64 %320 to i32, !dbg !343
  %322 = shl nsw i32 %321, 1, !dbg !343
  %323 = sext i32 %322 to i64, !dbg !343
  %324 = getelementptr inbounds double, ptr %101, i64 %323, !dbg !343
  %325 = load double, ptr %324, align 8, !dbg !343, !tbaa !236
  tail call void @llvm.dbg.value(metadata double %325, metadata !140, metadata !DIExpression()), !dbg !340
  %326 = or disjoint i32 %322, 1, !dbg !344
  %327 = sext i32 %326 to i64, !dbg !344
  %328 = getelementptr inbounds double, ptr %101, i64 %327, !dbg !344
  %329 = load double, ptr %328, align 8, !dbg !344, !tbaa !236
  %330 = fmul double %329, %289, !dbg !345
  tail call void @llvm.dbg.value(metadata double %330, metadata !141, metadata !DIExpression()), !dbg !340
  %331 = fmul double %314, %325, !dbg !346
  %332 = fmul double %319, %330, !dbg !347
  %handler_result8 = call double @fSubHandlerDouble(double %331, double %332), !dbg !348
  %handler_result9 = call double @fAddHandlerDouble(double %308, double %handler_result8), !dbg !349
  tail call void @llvm.dbg.value(metadata double %handler_result9, metadata !125, metadata !DIExpression()), !dbg !337
  %333 = fmul double %314, %330, !dbg !349
  %334 = fmul double %319, %325, !dbg !350
  %handler_result10 = call double @fAddHandlerDouble(double %334, double %333), !dbg !351
  %handler_result11 = call double @fAddHandlerDouble(double %307, double %handler_result10), !dbg !352
  tail call void @llvm.dbg.value(metadata double %handler_result11, metadata !134, metadata !DIExpression()), !dbg !337
  %335 = add nuw nsw i64 %306, 1, !dbg !352
  tail call void @llvm.dbg.value(metadata i64 %335, metadata !74, metadata !DIExpression()), !dbg !249
  %336 = icmp eq i64 %335, %295, !dbg !353
  br i1 %336, label %337, label %305, !dbg !338, !llvm.loop !354

337:                                              ; preds = %305, %301
  %338 = phi double [ 0.000000e+00, %301 ], [ %handler_result9, %305 ], !dbg !337
  %339 = phi double [ 0.000000e+00, %301 ], [ %handler_result11, %305 ], !dbg !337
  %340 = fmul double %85, %338, !dbg !356
  %341 = fmul double %87, %339, !dbg !357
  %handler_result12 = call double @fSubHandlerDouble(double %340, double %341), !dbg !358
  %342 = add i64 %302, %300, !dbg !358
  %343 = trunc i64 %342 to i32, !dbg !358
  %344 = shl nsw i32 %343, 1, !dbg !358
  %345 = sext i32 %344 to i64, !dbg !358
  %346 = getelementptr inbounds double, ptr %12, i64 %345, !dbg !358
  %347 = load double, ptr %346, align 8, !dbg !359, !tbaa !236
  %handler_result13 = call double @fAddHandlerDouble(double %handler_result12, double %347), !dbg !359
  store double %handler_result13, ptr %346, align 8, !dbg !359, !tbaa !236
  %348 = fmul double %85, %339, !dbg !360
  %349 = fmul double %87, %338, !dbg !361
  %handler_result14 = call double @fAddHandlerDouble(double %349, double %348), !dbg !362
  %350 = or disjoint i32 %344, 1, !dbg !362
  %351 = sext i32 %350 to i64, !dbg !362
  %352 = getelementptr inbounds double, ptr %12, i64 %351, !dbg !362
  %353 = load double, ptr %352, align 8, !dbg !363, !tbaa !236
  %handler_result15 = call double @fAddHandlerDouble(double %handler_result14, double %353), !dbg !363
  store double %handler_result15, ptr %352, align 8, !dbg !363, !tbaa !236
  %354 = add nuw nsw i64 %302, 1, !dbg !364
  tail call void @llvm.dbg.value(metadata i64 %354, metadata !73, metadata !DIExpression()), !dbg !249
  %355 = icmp eq i64 %354, %294, !dbg !365
  br i1 %355, label %356, label %301, !dbg !336, !llvm.loop !366

356:                                              ; preds = %337, %296
  %357 = add nuw nsw i64 %297, 1, !dbg !368
  tail call void @llvm.dbg.value(metadata i64 %357, metadata !70, metadata !DIExpression()), !dbg !249
  %358 = icmp eq i64 %357, %293, !dbg !334
  br i1 %358, label %517, label %296, !dbg !335, !llvm.loop !369

359:                                              ; preds = %280
  %360 = xor i1 %109, true, !dbg !371
  %361 = and i1 %112, %360, !dbg !372
  br i1 %361, label %362, label %438, !dbg !372

362:                                              ; preds = %359
  tail call void @llvm.dbg.value(metadata i32 0, metadata !74, metadata !DIExpression()), !dbg !249
  %363 = icmp sgt i32 %5, 0, !dbg !373
  br i1 %363, label %364, label %517, !dbg !374

364:                                              ; preds = %362
  %365 = icmp sgt i32 %106, 0
  %366 = sitofp i32 %108 to double
  %367 = icmp slt i32 %105, 1
  %368 = sitofp i32 %111 to double
  %369 = zext i32 %13 to i64, !dbg !374
  %370 = zext i32 %104 to i64, !dbg !374
  %371 = zext i32 %103 to i64, !dbg !374
  %372 = zext nneg i32 %5 to i64, !dbg !373
  %373 = zext nneg i32 %106 to i64
  %374 = zext nneg i32 %105 to i64
  br label %375, !dbg !374

375:                                              ; preds = %435, %364
  %376 = phi i64 [ 0, %364 ], [ %436, %435 ]
  tail call void @llvm.dbg.value(metadata i64 %376, metadata !74, metadata !DIExpression()), !dbg !249
  tail call void @llvm.dbg.value(metadata i32 0, metadata !70, metadata !DIExpression()), !dbg !249
  br i1 %365, label %377, label %435, !dbg !375

377:                                              ; preds = %375
  %378 = mul i64 %376, %370
  %379 = mul i64 %376, %371
  br label %380, !dbg !375

380:                                              ; preds = %432, %377
  %381 = phi i64 [ 0, %377 ], [ %433, %432 ]
  tail call void @llvm.dbg.value(metadata i64 %381, metadata !70, metadata !DIExpression()), !dbg !249
  %382 = add i64 %381, %378, !dbg !376
  %383 = trunc i64 %382 to i32, !dbg !376
  %384 = shl nsw i32 %383, 1, !dbg !376
  %385 = sext i32 %384 to i64, !dbg !376
  %386 = getelementptr inbounds double, ptr %102, i64 %385, !dbg !376
  %387 = load double, ptr %386, align 8, !dbg !376, !tbaa !236
  tail call void @llvm.dbg.value(metadata double %387, metadata !142, metadata !DIExpression()), !dbg !377
  %388 = or disjoint i32 %384, 1, !dbg !378
  %389 = sext i32 %388 to i64, !dbg !378
  %390 = getelementptr inbounds double, ptr %102, i64 %389, !dbg !378
  %391 = load double, ptr %390, align 8, !dbg !378, !tbaa !236
  %392 = fmul double %391, %366, !dbg !379
  tail call void @llvm.dbg.value(metadata double %392, metadata !151, metadata !DIExpression()), !dbg !377
  %393 = fmul double %85, %387, !dbg !380
  %394 = fmul double %87, %392, !dbg !381
  %handler_result16 = call double @fSubHandlerDouble(double %393, double %394), !dbg !382
  tail call void @llvm.dbg.value(metadata double %handler_result16, metadata !152, metadata !DIExpression()), !dbg !377
  %395 = fmul double %85, %392, !dbg !382
  %396 = fmul double %87, %387, !dbg !383
  %handler_result17 = call double @fAddHandlerDouble(double %396, double %395), !dbg !384
  tail call void @llvm.dbg.value(metadata double %handler_result17, metadata !153, metadata !DIExpression()), !dbg !377
  %397 = fcmp oeq double %handler_result16, 0.000000e+00, !dbg !384
  %398 = fcmp oeq double %handler_result17, 0.000000e+00
  %399 = select i1 %397, i1 %398, i1 false, !dbg !385
  %400 = or i1 %399, %367, !dbg !385
  br i1 %400, label %432, label %401, !dbg !385

401:                                              ; preds = %380
  %402 = mul i64 %381, %369
  br label %403, !dbg !386

403:                                              ; preds = %403, %401
  %404 = phi i64 [ 0, %401 ], [ %430, %403 ]
  tail call void @llvm.dbg.value(metadata i64 %404, metadata !73, metadata !DIExpression()), !dbg !249
  %405 = add i64 %404, %379, !dbg !387
  %406 = trunc i64 %405 to i32, !dbg !387
  %407 = shl nsw i32 %406, 1, !dbg !387
  %408 = sext i32 %407 to i64, !dbg !387
  %409 = getelementptr inbounds double, ptr %101, i64 %408, !dbg !387
  %410 = load double, ptr %409, align 8, !dbg !387, !tbaa !236
  tail call void @llvm.dbg.value(metadata double %410, metadata !154, metadata !DIExpression()), !dbg !388
  %411 = or disjoint i32 %407, 1, !dbg !389
  %412 = sext i32 %411 to i64, !dbg !389
  %413 = getelementptr inbounds double, ptr %101, i64 %412, !dbg !389
  %414 = load double, ptr %413, align 8, !dbg !389, !tbaa !236
  %415 = fmul double %414, %368, !dbg !390
  tail call void @llvm.dbg.value(metadata double %415, metadata !160, metadata !DIExpression()), !dbg !388
  %416 = fmul double %handler_result16, %410, !dbg !391
  %417 = fmul double %handler_result17, %415, !dbg !392
  %handler_result18 = call double @fSubHandlerDouble(double %416, double %417), !dbg !393
  %418 = add i64 %404, %402, !dbg !393
  %419 = trunc i64 %418 to i32, !dbg !393
  %420 = shl nsw i32 %419, 1, !dbg !393
  %421 = sext i32 %420 to i64, !dbg !393
  %422 = getelementptr inbounds double, ptr %12, i64 %421, !dbg !393
  %423 = load double, ptr %422, align 8, !dbg !394, !tbaa !236
  %handler_result19 = call double @fAddHandlerDouble(double %423, double %handler_result18), !dbg !394
  store double %handler_result19, ptr %422, align 8, !dbg !394, !tbaa !236
  %424 = fmul double %handler_result16, %415, !dbg !395
  %425 = fmul double %handler_result17, %410, !dbg !396
  %handler_result20 = call double @fAddHandlerDouble(double %425, double %424), !dbg !397
  %426 = or disjoint i32 %420, 1, !dbg !397
  %427 = sext i32 %426 to i64, !dbg !397
  %428 = getelementptr inbounds double, ptr %12, i64 %427, !dbg !397
  %429 = load double, ptr %428, align 8, !dbg !398, !tbaa !236
  %handler_result21 = call double @fAddHandlerDouble(double %429, double %handler_result20), !dbg !398
  store double %handler_result21, ptr %428, align 8, !dbg !398, !tbaa !236
  %430 = add nuw nsw i64 %404, 1, !dbg !399
  tail call void @llvm.dbg.value(metadata i64 %430, metadata !73, metadata !DIExpression()), !dbg !249
  %431 = icmp eq i64 %430, %374, !dbg !400
  br i1 %431, label %432, label %403, !dbg !386, !llvm.loop !401

432:                                              ; preds = %403, %380
  %433 = add nuw nsw i64 %381, 1, !dbg !403
  tail call void @llvm.dbg.value(metadata i64 %433, metadata !70, metadata !DIExpression()), !dbg !249
  %434 = icmp eq i64 %433, %373, !dbg !404
  br i1 %434, label %435, label %380, !dbg !375, !llvm.loop !405

435:                                              ; preds = %432, %375
  %436 = add nuw nsw i64 %376, 1, !dbg !407
  tail call void @llvm.dbg.value(metadata i64 %436, metadata !74, metadata !DIExpression()), !dbg !249
  %437 = icmp eq i64 %436, %372, !dbg !373
  br i1 %437, label %517, label %375, !dbg !374, !llvm.loop !408

438:                                              ; preds = %359
  %439 = and i1 %281, %360, !dbg !410
  br i1 %439, label %440, label %516, !dbg !410

440:                                              ; preds = %438
  tail call void @llvm.dbg.value(metadata i32 0, metadata !70, metadata !DIExpression()), !dbg !249
  %441 = icmp sgt i32 %106, 0, !dbg !411
  br i1 %441, label %442, label %517, !dbg !412

442:                                              ; preds = %440
  %443 = icmp sgt i32 %105, 0
  %444 = icmp sgt i32 %5, 0
  %445 = sitofp i32 %108 to double
  %446 = sitofp i32 %111 to double
  %447 = zext i32 %104 to i64, !dbg !412
  %448 = zext i32 %103 to i64, !dbg !412
  %449 = zext i32 %13 to i64, !dbg !412
  %450 = zext nneg i32 %106 to i64, !dbg !411
  %451 = zext nneg i32 %105 to i64
  %452 = zext nneg i32 %5 to i64
  br label %453, !dbg !412

453:                                              ; preds = %513, %442
  %454 = phi i64 [ 0, %442 ], [ %514, %513 ]
  tail call void @llvm.dbg.value(metadata i64 %454, metadata !70, metadata !DIExpression()), !dbg !249
  tail call void @llvm.dbg.value(metadata i32 0, metadata !73, metadata !DIExpression()), !dbg !249
  br i1 %443, label %455, label %513, !dbg !413

455:                                              ; preds = %453
  %456 = mul i64 %454, %449
  br label %457, !dbg !413

457:                                              ; preds = %494, %455
  %458 = phi i64 [ 0, %455 ], [ %511, %494 ]
  tail call void @llvm.dbg.value(metadata i64 %458, metadata !73, metadata !DIExpression()), !dbg !249
  tail call void @llvm.dbg.value(metadata i32 0, metadata !74, metadata !DIExpression()), !dbg !249
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !170, metadata !DIExpression()), !dbg !414
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !161, metadata !DIExpression()), !dbg !414
  br i1 %444, label %459, label %494, !dbg !415

459:                                              ; preds = %457
  %460 = mul i64 %458, %448
  br label %461, !dbg !415

461:                                              ; preds = %461, %459
  %462 = phi i64 [ 0, %459 ], [ %492, %461 ]
  %463 = phi double [ 0.000000e+00, %459 ], [ %handler_result25, %461 ]
  %464 = phi double [ 0.000000e+00, %459 ], [ %handler_result23, %461 ]
  tail call void @llvm.dbg.value(metadata i64 %462, metadata !74, metadata !DIExpression()), !dbg !249
  tail call void @llvm.dbg.value(metadata double %463, metadata !170, metadata !DIExpression()), !dbg !414
  tail call void @llvm.dbg.value(metadata double %464, metadata !161, metadata !DIExpression()), !dbg !414
  %465 = mul i64 %462, %447, !dbg !416
  %466 = add i64 %465, %454, !dbg !416
  %467 = trunc i64 %466 to i32, !dbg !416
  %468 = shl nsw i32 %467, 1, !dbg !416
  %469 = sext i32 %468 to i64, !dbg !416
  %470 = getelementptr inbounds double, ptr %102, i64 %469, !dbg !416
  %471 = load double, ptr %470, align 8, !dbg !416, !tbaa !236
  tail call void @llvm.dbg.value(metadata double %471, metadata !171, metadata !DIExpression()), !dbg !417
  %472 = or disjoint i32 %468, 1, !dbg !418
  %473 = sext i32 %472 to i64, !dbg !418
  %474 = getelementptr inbounds double, ptr %102, i64 %473, !dbg !418
  %475 = load double, ptr %474, align 8, !dbg !418, !tbaa !236
  %476 = fmul double %475, %445, !dbg !419
  tail call void @llvm.dbg.value(metadata double %476, metadata !175, metadata !DIExpression()), !dbg !417
  %477 = add i64 %462, %460, !dbg !420
  %478 = trunc i64 %477 to i32, !dbg !420
  %479 = shl nsw i32 %478, 1, !dbg !420
  %480 = sext i32 %479 to i64, !dbg !420
  %481 = getelementptr inbounds double, ptr %101, i64 %480, !dbg !420
  %482 = load double, ptr %481, align 8, !dbg !420, !tbaa !236
  tail call void @llvm.dbg.value(metadata double %482, metadata !176, metadata !DIExpression()), !dbg !417
  %483 = or disjoint i32 %479, 1, !dbg !421
  %484 = sext i32 %483 to i64, !dbg !421
  %485 = getelementptr inbounds double, ptr %101, i64 %484, !dbg !421
  %486 = load double, ptr %485, align 8, !dbg !421, !tbaa !236
  %487 = fmul double %486, %446, !dbg !422
  tail call void @llvm.dbg.value(metadata double %487, metadata !177, metadata !DIExpression()), !dbg !417
  %488 = fmul double %471, %482, !dbg !423
  %489 = fmul double %476, %487, !dbg !424
  %handler_result22 = call double @fSubHandlerDouble(double %488, double %489), !dbg !425
  %handler_result23 = call double @fAddHandlerDouble(double %464, double %handler_result22), !dbg !426
  tail call void @llvm.dbg.value(metadata double %handler_result23, metadata !161, metadata !DIExpression()), !dbg !414
  %490 = fmul double %471, %487, !dbg !426
  %491 = fmul double %476, %482, !dbg !427
  %handler_result24 = call double @fAddHandlerDouble(double %491, double %490), !dbg !428
  %handler_result25 = call double @fAddHandlerDouble(double %463, double %handler_result24), !dbg !429
  tail call void @llvm.dbg.value(metadata double %handler_result25, metadata !170, metadata !DIExpression()), !dbg !414
  %492 = add nuw nsw i64 %462, 1, !dbg !429
  tail call void @llvm.dbg.value(metadata i64 %492, metadata !74, metadata !DIExpression()), !dbg !249
  %493 = icmp eq i64 %492, %452, !dbg !430
  br i1 %493, label %494, label %461, !dbg !415, !llvm.loop !431

494:                                              ; preds = %461, %457
  %495 = phi double [ 0.000000e+00, %457 ], [ %handler_result23, %461 ], !dbg !414
  %496 = phi double [ 0.000000e+00, %457 ], [ %handler_result25, %461 ], !dbg !414
  %497 = fmul double %85, %495, !dbg !433
  %498 = fmul double %87, %496, !dbg !434
  %handler_result26 = call double @fSubHandlerDouble(double %497, double %498), !dbg !435
  %499 = add i64 %458, %456, !dbg !435
  %500 = trunc i64 %499 to i32, !dbg !435
  %501 = shl nsw i32 %500, 1, !dbg !435
  %502 = sext i32 %501 to i64, !dbg !435
  %503 = getelementptr inbounds double, ptr %12, i64 %502, !dbg !435
  %504 = load double, ptr %503, align 8, !dbg !436, !tbaa !236
  %handler_result27 = call double @fAddHandlerDouble(double %handler_result26, double %504), !dbg !436
  store double %handler_result27, ptr %503, align 8, !dbg !436, !tbaa !236
  %505 = fmul double %85, %496, !dbg !437
  %506 = fmul double %87, %495, !dbg !438
  %handler_result28 = call double @fAddHandlerDouble(double %506, double %505), !dbg !439
  %507 = or disjoint i32 %501, 1, !dbg !439
  %508 = sext i32 %507 to i64, !dbg !439
  %509 = getelementptr inbounds double, ptr %12, i64 %508, !dbg !439
  %510 = load double, ptr %509, align 8, !dbg !440, !tbaa !236
  %handler_result29 = call double @fAddHandlerDouble(double %handler_result28, double %510), !dbg !440
  store double %handler_result29, ptr %509, align 8, !dbg !440, !tbaa !236
  %511 = add nuw nsw i64 %458, 1, !dbg !441
  tail call void @llvm.dbg.value(metadata i64 %511, metadata !73, metadata !DIExpression()), !dbg !249
  %512 = icmp eq i64 %511, %451, !dbg !442
  br i1 %512, label %513, label %457, !dbg !413, !llvm.loop !443

513:                                              ; preds = %494, %453
  %514 = add nuw nsw i64 %454, 1, !dbg !445
  tail call void @llvm.dbg.value(metadata i64 %514, metadata !70, metadata !DIExpression()), !dbg !249
  %515 = icmp eq i64 %514, %450, !dbg !411
  br i1 %515, label %517, label %453, !dbg !412, !llvm.loop !446

516:                                              ; preds = %438
  tail call void (i32, ptr, ptr, ...) @cblas_xerbla(i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #3, !dbg !448
  br label %517

517:                                              ; preds = %516, %513, %440, %435, %362, %356, %283, %277, %204, %201, %84
  ret void, !dbg !450
}

declare !dbg !452 void @cblas_xerbla(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

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
!llvm.module.flags = !{!37, !38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 27, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "./source_gemm_c.h", directory: "/PI-detector/external/gsl/gsl-2.5/cblas", checksumkind: CSK_MD5, checksum: "1c3fda151e5cdefe263743197b54b298")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 18)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 27, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 1)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 168, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 23)
!17 = distinct !DICompileUnit(language: DW_LANG_C11, file: !18, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !19, retainedTypes: !31, globals: !36, splitDebugInlining: false, nameTableKind: None)
!18 = !DIFile(filename: "zgemm.c", directory: "/PI-detector/external/gsl/gsl-2.5/cblas", checksumkind: CSK_MD5, checksum: "29927f1278a5f42f01f8b61aa98a3e5a")
!19 = !{!20, !26}
!20 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "CBLAS_ORDER", file: !21, line: 46, baseType: !22, size: 32, elements: !23)
!21 = !DIFile(filename: "../gsl/gsl_cblas.h", directory: "/PI-detector/external/gsl/gsl-2.5/cblas", checksumkind: CSK_MD5, checksum: "03ac5115536daff0db5f3e2b63839634")
!22 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!23 = !{!24, !25}
!24 = !DIEnumerator(name: "CblasRowMajor", value: 101)
!25 = !DIEnumerator(name: "CblasColMajor", value: 102)
!26 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "CBLAS_TRANSPOSE", file: !21, line: 47, baseType: !22, size: 32, elements: !27)
!27 = !{!28, !29, !30}
!28 = !DIEnumerator(name: "CblasNoTrans", value: 111)
!29 = !DIEnumerator(name: "CblasTrans", value: 112)
!30 = !DIEnumerator(name: "CblasConjTrans", value: 113)
!31 = !{!32, !35}
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!34 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!36 = !{!0, !7, !12}
!37 = !{i32 7, !"Dwarf Version", i32 5}
!38 = !{i32 2, !"Debug Info Version", i32 3}
!39 = !{i32 1, !"wchar_size", i32 4}
!40 = !{i32 8, !"PIC Level", i32 2}
!41 = !{i32 7, !"PIE Level", i32 2}
!42 = !{i32 7, !"uwtable", i32 2}
!43 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!44 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!45 = distinct !DISubprogram(name: "cblas_zgemm", scope: !18, file: !18, line: 7, type: !46, scopeLine: 12, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !55)
!46 = !DISubroutineType(types: !47)
!47 = !{null, !48, !49, !49, !50, !50, !50, !52, !52, !50, !52, !50, !52, !54, !50}
!48 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!49 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !26)
!50 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !51)
!51 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!55 = !{!56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !87, !89, !90, !92, !93, !94, !95, !105, !106, !115, !116, !117, !118, !124, !125, !134, !135, !139, !140, !141, !142, !151, !152, !153, !154, !160, !161, !170, !171, !175, !176, !177}
!56 = !DILocalVariable(name: "Order", arg: 1, scope: !45, file: !18, line: 7, type: !48)
!57 = !DILocalVariable(name: "TransA", arg: 2, scope: !45, file: !18, line: 7, type: !49)
!58 = !DILocalVariable(name: "TransB", arg: 3, scope: !45, file: !18, line: 8, type: !49)
!59 = !DILocalVariable(name: "M", arg: 4, scope: !45, file: !18, line: 8, type: !50)
!60 = !DILocalVariable(name: "N", arg: 5, scope: !45, file: !18, line: 8, type: !50)
!61 = !DILocalVariable(name: "K", arg: 6, scope: !45, file: !18, line: 9, type: !50)
!62 = !DILocalVariable(name: "alpha", arg: 7, scope: !45, file: !18, line: 9, type: !52)
!63 = !DILocalVariable(name: "A", arg: 8, scope: !45, file: !18, line: 9, type: !52)
!64 = !DILocalVariable(name: "lda", arg: 9, scope: !45, file: !18, line: 9, type: !50)
!65 = !DILocalVariable(name: "B", arg: 10, scope: !45, file: !18, line: 10, type: !52)
!66 = !DILocalVariable(name: "ldb", arg: 11, scope: !45, file: !18, line: 10, type: !50)
!67 = !DILocalVariable(name: "beta", arg: 12, scope: !45, file: !18, line: 10, type: !52)
!68 = !DILocalVariable(name: "C", arg: 13, scope: !45, file: !18, line: 10, type: !54)
!69 = !DILocalVariable(name: "ldc", arg: 14, scope: !45, file: !18, line: 11, type: !50)
!70 = !DILocalVariable(name: "i", scope: !71, file: !2, line: 21, type: !51)
!71 = distinct !DILexicalBlock(scope: !72, file: !2, line: 20, column: 1)
!72 = !DILexicalBlockFile(scope: !45, file: !2, discriminator: 0)
!73 = !DILocalVariable(name: "j", scope: !71, file: !2, line: 21, type: !51)
!74 = !DILocalVariable(name: "k", scope: !71, file: !2, line: 21, type: !51)
!75 = !DILocalVariable(name: "n1", scope: !71, file: !2, line: 22, type: !51)
!76 = !DILocalVariable(name: "n2", scope: !71, file: !2, line: 22, type: !51)
!77 = !DILocalVariable(name: "ldf", scope: !71, file: !2, line: 23, type: !51)
!78 = !DILocalVariable(name: "ldg", scope: !71, file: !2, line: 23, type: !51)
!79 = !DILocalVariable(name: "conjF", scope: !71, file: !2, line: 24, type: !51)
!80 = !DILocalVariable(name: "conjG", scope: !71, file: !2, line: 24, type: !51)
!81 = !DILocalVariable(name: "TransF", scope: !71, file: !2, line: 24, type: !51)
!82 = !DILocalVariable(name: "TransG", scope: !71, file: !2, line: 24, type: !51)
!83 = !DILocalVariable(name: "F", scope: !71, file: !2, line: 25, type: !32)
!84 = !DILocalVariable(name: "G", scope: !71, file: !2, line: 25, type: !32)
!85 = !DILocalVariable(name: "pos", scope: !86, file: !2, line: 27, type: !51)
!86 = distinct !DILexicalBlock(scope: !71, file: !2, line: 27, column: 3)
!87 = !DILocalVariable(name: "__transF", scope: !88, file: !2, line: 27, type: !26)
!88 = distinct !DILexicalBlock(scope: !86, file: !2, line: 27, column: 3)
!89 = !DILocalVariable(name: "__transG", scope: !88, file: !2, line: 27, type: !26)
!90 = !DILocalVariable(name: "alpha_real", scope: !91, file: !2, line: 30, type: !33)
!91 = distinct !DILexicalBlock(scope: !71, file: !2, line: 29, column: 3)
!92 = !DILocalVariable(name: "alpha_imag", scope: !91, file: !2, line: 31, type: !33)
!93 = !DILocalVariable(name: "beta_real", scope: !91, file: !2, line: 33, type: !33)
!94 = !DILocalVariable(name: "beta_imag", scope: !91, file: !2, line: 34, type: !33)
!95 = !DILocalVariable(name: "Cij_real", scope: !96, file: !2, line: 75, type: !33)
!96 = distinct !DILexicalBlock(scope: !97, file: !2, line: 74, column: 34)
!97 = distinct !DILexicalBlock(scope: !98, file: !2, line: 74, column: 9)
!98 = distinct !DILexicalBlock(scope: !99, file: !2, line: 74, column: 9)
!99 = distinct !DILexicalBlock(scope: !100, file: !2, line: 73, column: 32)
!100 = distinct !DILexicalBlock(scope: !101, file: !2, line: 73, column: 7)
!101 = distinct !DILexicalBlock(scope: !102, file: !2, line: 73, column: 7)
!102 = distinct !DILexicalBlock(scope: !103, file: !2, line: 72, column: 57)
!103 = distinct !DILexicalBlock(scope: !104, file: !2, line: 72, column: 16)
!104 = distinct !DILexicalBlock(scope: !91, file: !2, line: 65, column: 9)
!105 = !DILocalVariable(name: "Cij_imag", scope: !96, file: !2, line: 76, type: !33)
!106 = !DILocalVariable(name: "Fik_real", scope: !107, file: !2, line: 92, type: !33)
!107 = distinct !DILexicalBlock(scope: !108, file: !2, line: 91, column: 34)
!108 = distinct !DILexicalBlock(scope: !109, file: !2, line: 91, column: 9)
!109 = distinct !DILexicalBlock(scope: !110, file: !2, line: 91, column: 9)
!110 = distinct !DILexicalBlock(scope: !111, file: !2, line: 90, column: 31)
!111 = distinct !DILexicalBlock(scope: !112, file: !2, line: 90, column: 7)
!112 = distinct !DILexicalBlock(scope: !113, file: !2, line: 90, column: 7)
!113 = distinct !DILexicalBlock(scope: !114, file: !2, line: 86, column: 59)
!114 = distinct !DILexicalBlock(scope: !91, file: !2, line: 86, column: 9)
!115 = !DILocalVariable(name: "Fik_imag", scope: !107, file: !2, line: 93, type: !33)
!116 = !DILocalVariable(name: "temp_real", scope: !107, file: !2, line: 94, type: !33)
!117 = !DILocalVariable(name: "temp_imag", scope: !107, file: !2, line: 95, type: !33)
!118 = !DILocalVariable(name: "Gkj_real", scope: !119, file: !2, line: 98, type: !33)
!119 = distinct !DILexicalBlock(scope: !120, file: !2, line: 97, column: 38)
!120 = distinct !DILexicalBlock(scope: !121, file: !2, line: 97, column: 13)
!121 = distinct !DILexicalBlock(scope: !122, file: !2, line: 97, column: 13)
!122 = distinct !DILexicalBlock(scope: !123, file: !2, line: 96, column: 56)
!123 = distinct !DILexicalBlock(scope: !107, file: !2, line: 96, column: 15)
!124 = !DILocalVariable(name: "Gkj_imag", scope: !119, file: !2, line: 99, type: !33)
!125 = !DILocalVariable(name: "temp_real", scope: !126, file: !2, line: 113, type: !34)
!126 = distinct !DILexicalBlock(scope: !127, file: !2, line: 112, column: 34)
!127 = distinct !DILexicalBlock(scope: !128, file: !2, line: 112, column: 9)
!128 = distinct !DILexicalBlock(scope: !129, file: !2, line: 112, column: 9)
!129 = distinct !DILexicalBlock(scope: !130, file: !2, line: 111, column: 32)
!130 = distinct !DILexicalBlock(scope: !131, file: !2, line: 111, column: 7)
!131 = distinct !DILexicalBlock(scope: !132, file: !2, line: 111, column: 7)
!132 = distinct !DILexicalBlock(scope: !133, file: !2, line: 107, column: 64)
!133 = distinct !DILexicalBlock(scope: !114, file: !2, line: 107, column: 16)
!134 = !DILocalVariable(name: "temp_imag", scope: !126, file: !2, line: 114, type: !34)
!135 = !DILocalVariable(name: "Fik_real", scope: !136, file: !2, line: 116, type: !33)
!136 = distinct !DILexicalBlock(scope: !137, file: !2, line: 115, column: 35)
!137 = distinct !DILexicalBlock(scope: !138, file: !2, line: 115, column: 11)
!138 = distinct !DILexicalBlock(scope: !126, file: !2, line: 115, column: 11)
!139 = !DILocalVariable(name: "Fik_imag", scope: !136, file: !2, line: 117, type: !33)
!140 = !DILocalVariable(name: "Gjk_real", scope: !136, file: !2, line: 118, type: !33)
!141 = !DILocalVariable(name: "Gjk_imag", scope: !136, file: !2, line: 119, type: !33)
!142 = !DILocalVariable(name: "Fki_real", scope: !143, file: !2, line: 132, type: !33)
!143 = distinct !DILexicalBlock(scope: !144, file: !2, line: 131, column: 34)
!144 = distinct !DILexicalBlock(scope: !145, file: !2, line: 131, column: 9)
!145 = distinct !DILexicalBlock(scope: !146, file: !2, line: 131, column: 9)
!146 = distinct !DILexicalBlock(scope: !147, file: !2, line: 130, column: 31)
!147 = distinct !DILexicalBlock(scope: !148, file: !2, line: 130, column: 7)
!148 = distinct !DILexicalBlock(scope: !149, file: !2, line: 130, column: 7)
!149 = distinct !DILexicalBlock(scope: !150, file: !2, line: 128, column: 64)
!150 = distinct !DILexicalBlock(scope: !133, file: !2, line: 128, column: 16)
!151 = !DILocalVariable(name: "Fki_imag", scope: !143, file: !2, line: 133, type: !33)
!152 = !DILocalVariable(name: "temp_real", scope: !143, file: !2, line: 134, type: !33)
!153 = !DILocalVariable(name: "temp_imag", scope: !143, file: !2, line: 135, type: !33)
!154 = !DILocalVariable(name: "Gkj_real", scope: !155, file: !2, line: 138, type: !33)
!155 = distinct !DILexicalBlock(scope: !156, file: !2, line: 137, column: 38)
!156 = distinct !DILexicalBlock(scope: !157, file: !2, line: 137, column: 13)
!157 = distinct !DILexicalBlock(scope: !158, file: !2, line: 137, column: 13)
!158 = distinct !DILexicalBlock(scope: !159, file: !2, line: 136, column: 56)
!159 = distinct !DILexicalBlock(scope: !143, file: !2, line: 136, column: 15)
!160 = !DILocalVariable(name: "Gkj_imag", scope: !155, file: !2, line: 139, type: !33)
!161 = !DILocalVariable(name: "temp_real", scope: !162, file: !2, line: 151, type: !34)
!162 = distinct !DILexicalBlock(scope: !163, file: !2, line: 150, column: 34)
!163 = distinct !DILexicalBlock(scope: !164, file: !2, line: 150, column: 9)
!164 = distinct !DILexicalBlock(scope: !165, file: !2, line: 150, column: 9)
!165 = distinct !DILexicalBlock(scope: !166, file: !2, line: 149, column: 32)
!166 = distinct !DILexicalBlock(scope: !167, file: !2, line: 149, column: 7)
!167 = distinct !DILexicalBlock(scope: !168, file: !2, line: 149, column: 7)
!168 = distinct !DILexicalBlock(scope: !169, file: !2, line: 147, column: 62)
!169 = distinct !DILexicalBlock(scope: !150, file: !2, line: 147, column: 16)
!170 = !DILocalVariable(name: "temp_imag", scope: !162, file: !2, line: 152, type: !34)
!171 = !DILocalVariable(name: "Fki_real", scope: !172, file: !2, line: 154, type: !33)
!172 = distinct !DILexicalBlock(scope: !173, file: !2, line: 153, column: 35)
!173 = distinct !DILexicalBlock(scope: !174, file: !2, line: 153, column: 11)
!174 = distinct !DILexicalBlock(scope: !162, file: !2, line: 153, column: 11)
!175 = !DILocalVariable(name: "Fki_imag", scope: !172, file: !2, line: 155, type: !33)
!176 = !DILocalVariable(name: "Gjk_real", scope: !172, file: !2, line: 156, type: !33)
!177 = !DILocalVariable(name: "Gjk_imag", scope: !172, file: !2, line: 157, type: !33)
!178 = !DILocation(line: 0, scope: !45)
!179 = !DILocation(line: 0, scope: !86)
!180 = !DILocation(line: 0, scope: !88)
!181 = !DILocation(line: 27, column: 3, scope: !182)
!182 = distinct !DILexicalBlock(scope: !88, file: !2, line: 27, column: 3)
!183 = !DILocation(line: 27, column: 3, scope: !184)
!184 = distinct !DILexicalBlock(scope: !88, file: !2, line: 27, column: 3)
!185 = !DILocation(line: 27, column: 3, scope: !186)
!186 = distinct !DILexicalBlock(scope: !88, file: !2, line: 27, column: 3)
!187 = !DILocation(line: 27, column: 3, scope: !188)
!188 = distinct !DILexicalBlock(scope: !88, file: !2, line: 27, column: 3)
!189 = !DILocation(line: 27, column: 3, scope: !190)
!190 = distinct !DILexicalBlock(scope: !88, file: !2, line: 27, column: 3)
!191 = !DILocation(line: 27, column: 3, scope: !88)
!192 = !DILocation(line: 27, column: 3, scope: !193)
!193 = distinct !DILexicalBlock(scope: !88, file: !2, line: 27, column: 3)
!194 = !DILocation(line: 27, column: 3, scope: !195)
!195 = distinct !DILexicalBlock(scope: !88, file: !2, line: 27, column: 3)
!196 = !DILocation(line: 27, column: 3, scope: !197)
!197 = distinct !DILexicalBlock(scope: !198, file: !2, line: 27, column: 3)
!198 = distinct !DILexicalBlock(scope: !199, file: !2, line: 27, column: 3)
!199 = distinct !DILexicalBlock(scope: !88, file: !2, line: 27, column: 3)
!200 = !DILocation(line: 27, column: 3, scope: !201)
!201 = distinct !DILexicalBlock(scope: !198, file: !2, line: 27, column: 3)
!202 = !DILocation(line: 27, column: 3, scope: !198)
!203 = !DILocation(line: 27, column: 3, scope: !204)
!204 = distinct !DILexicalBlock(scope: !205, file: !2, line: 27, column: 3)
!205 = distinct !DILexicalBlock(scope: !201, file: !2, line: 27, column: 3)
!206 = !DILocation(line: 27, column: 3, scope: !205)
!207 = !DILocation(line: 27, column: 3, scope: !208)
!208 = distinct !DILexicalBlock(scope: !209, file: !2, line: 27, column: 3)
!209 = distinct !DILexicalBlock(scope: !201, file: !2, line: 27, column: 3)
!210 = !DILocation(line: 27, column: 3, scope: !209)
!211 = !DILocation(line: 27, column: 3, scope: !212)
!212 = distinct !DILexicalBlock(scope: !198, file: !2, line: 27, column: 3)
!213 = !DILocation(line: 27, column: 3, scope: !214)
!214 = distinct !DILexicalBlock(scope: !199, file: !2, line: 27, column: 3)
!215 = !DILocation(line: 27, column: 3, scope: !199)
!216 = !DILocation(line: 27, column: 3, scope: !217)
!217 = distinct !DILexicalBlock(scope: !218, file: !2, line: 27, column: 3)
!218 = distinct !DILexicalBlock(scope: !214, file: !2, line: 27, column: 3)
!219 = !DILocation(line: 27, column: 3, scope: !220)
!220 = distinct !DILexicalBlock(scope: !218, file: !2, line: 27, column: 3)
!221 = !DILocation(line: 27, column: 3, scope: !218)
!222 = !DILocation(line: 27, column: 3, scope: !223)
!223 = distinct !DILexicalBlock(scope: !224, file: !2, line: 27, column: 3)
!224 = distinct !DILexicalBlock(scope: !220, file: !2, line: 27, column: 3)
!225 = !DILocation(line: 27, column: 3, scope: !224)
!226 = !DILocation(line: 27, column: 3, scope: !227)
!227 = distinct !DILexicalBlock(scope: !228, file: !2, line: 27, column: 3)
!228 = distinct !DILexicalBlock(scope: !220, file: !2, line: 27, column: 3)
!229 = !DILocation(line: 27, column: 3, scope: !228)
!230 = !DILocation(line: 27, column: 3, scope: !231)
!231 = distinct !DILexicalBlock(scope: !218, file: !2, line: 27, column: 3)
!232 = !DILocation(line: 27, column: 3, scope: !233)
!233 = distinct !DILexicalBlock(scope: !86, file: !2, line: 27, column: 3)
!234 = !DILocation(line: 27, column: 3, scope: !86)
!235 = !DILocation(line: 30, column: 29, scope: !91)
!236 = !{!237, !237, i64 0}
!237 = !{!"double", !238, i64 0}
!238 = !{!"omnipotent char", !239, i64 0}
!239 = !{!"Simple C/C++ TBAA"}
!240 = !DILocation(line: 0, scope: !91)
!241 = !DILocation(line: 31, column: 29, scope: !91)
!242 = !DILocation(line: 33, column: 28, scope: !91)
!243 = !DILocation(line: 34, column: 28, scope: !91)
!244 = !DILocation(line: 36, column: 21, scope: !245)
!245 = distinct !DILexicalBlock(scope: !91, file: !2, line: 36, column: 9)
!246 = !DILocation(line: 36, column: 28, scope: !245)
!247 = !DILocation(line: 0, scope: !248)
!248 = distinct !DILexicalBlock(scope: !91, file: !2, line: 40, column: 9)
!249 = !DILocation(line: 0, scope: !71)
!250 = !DILocation(line: 65, column: 19, scope: !104)
!251 = !DILocation(line: 65, column: 26, scope: !104)
!252 = !DILocation(line: 66, column: 21, scope: !253)
!253 = distinct !DILexicalBlock(scope: !254, file: !2, line: 66, column: 7)
!254 = distinct !DILexicalBlock(scope: !255, file: !2, line: 66, column: 7)
!255 = distinct !DILexicalBlock(scope: !104, file: !2, line: 65, column: 47)
!256 = !DILocation(line: 66, column: 7, scope: !254)
!257 = !DILocation(line: 67, column: 9, scope: !258)
!258 = distinct !DILexicalBlock(scope: !259, file: !2, line: 67, column: 9)
!259 = distinct !DILexicalBlock(scope: !253, file: !2, line: 66, column: 32)
!260 = !DILocation(line: 68, column: 11, scope: !261)
!261 = distinct !DILexicalBlock(scope: !262, file: !2, line: 67, column: 34)
!262 = distinct !DILexicalBlock(scope: !258, file: !2, line: 67, column: 9)
!263 = !DILocation(line: 68, column: 32, scope: !261)
!264 = !DILocation(line: 69, column: 11, scope: !261)
!265 = !DILocation(line: 69, column: 32, scope: !261)
!266 = !DILocation(line: 67, column: 30, scope: !262)
!267 = distinct !{!267, !257, !268, !269}
!268 = !DILocation(line: 70, column: 9, scope: !258)
!269 = !{!"llvm.loop.mustprogress"}
!270 = !DILocation(line: 66, column: 28, scope: !253)
!271 = distinct !{!271, !256, !272, !269}
!272 = !DILocation(line: 71, column: 7, scope: !254)
!273 = !DILocation(line: 72, column: 35, scope: !103)
!274 = !DILocation(line: 73, column: 7, scope: !101)
!275 = !DILocation(line: 73, column: 21, scope: !100)
!276 = !DILocation(line: 74, column: 9, scope: !98)
!277 = !DILocation(line: 75, column: 33, scope: !96)
!278 = !DILocation(line: 0, scope: !96)
!279 = !DILocation(line: 76, column: 33, scope: !96)
!280 = !DILocation(line: 77, column: 44, scope: !96)
!281 = !DILocation(line: 77, column: 67, scope: !96)
!282 = !DILocation(line: 77, column: 32, scope: !96)
!283 = !DILocation(line: 78, column: 44, scope: !96)
!284 = !DILocation(line: 78, column: 67, scope: !96)
!285 = !DILocation(line: 78, column: 32, scope: !96)
!286 = !DILocation(line: 74, column: 30, scope: !97)
!287 = !DILocation(line: 74, column: 23, scope: !97)
!288 = distinct !{!288, !276, !289, !269}
!289 = !DILocation(line: 79, column: 9, scope: !98)
!290 = !DILocation(line: 73, column: 28, scope: !100)
!291 = distinct !{!291, !274, !292, !269}
!292 = !DILocation(line: 80, column: 7, scope: !101)
!293 = !DILocation(line: 83, column: 27, scope: !294)
!294 = distinct !DILexicalBlock(scope: !91, file: !2, line: 83, column: 9)
!295 = !DILocation(line: 86, column: 32, scope: !114)
!296 = !DILocation(line: 90, column: 21, scope: !111)
!297 = !DILocation(line: 90, column: 7, scope: !112)
!298 = !DILocation(line: 91, column: 9, scope: !109)
!299 = !DILocation(line: 92, column: 33, scope: !107)
!300 = !DILocation(line: 0, scope: !107)
!301 = !DILocation(line: 93, column: 41, scope: !107)
!302 = !DILocation(line: 93, column: 39, scope: !107)
!303 = !DILocation(line: 94, column: 45, scope: !107)
!304 = !DILocation(line: 94, column: 69, scope: !107)
!305 = !DILocation(line: 95, column: 45, scope: !107)
!306 = !DILocation(line: 95, column: 69, scope: !107)
!307 = !DILocation(line: 96, column: 27, scope: !123)
!308 = !DILocation(line: 96, column: 34, scope: !123)
!309 = !DILocation(line: 97, column: 13, scope: !121)
!310 = !DILocation(line: 98, column: 37, scope: !119)
!311 = !DILocation(line: 0, scope: !119)
!312 = !DILocation(line: 99, column: 45, scope: !119)
!313 = !DILocation(line: 99, column: 43, scope: !119)
!314 = !DILocation(line: 100, column: 49, scope: !119)
!315 = !DILocation(line: 100, column: 72, scope: !119)
!316 = !DILocation(line: 100, column: 15, scope: !119)
!317 = !DILocation(line: 100, column: 36, scope: !119)
!318 = !DILocation(line: 101, column: 49, scope: !119)
!319 = !DILocation(line: 101, column: 72, scope: !119)
!320 = !DILocation(line: 101, column: 15, scope: !119)
!321 = !DILocation(line: 101, column: 36, scope: !119)
!322 = !DILocation(line: 97, column: 34, scope: !120)
!323 = !DILocation(line: 97, column: 27, scope: !120)
!324 = distinct !{!324, !309, !325, !269}
!325 = !DILocation(line: 102, column: 13, scope: !121)
!326 = !DILocation(line: 91, column: 30, scope: !108)
!327 = !DILocation(line: 91, column: 23, scope: !108)
!328 = distinct !{!328, !298, !329, !269}
!329 = !DILocation(line: 104, column: 9, scope: !109)
!330 = !DILocation(line: 90, column: 27, scope: !111)
!331 = distinct !{!331, !297, !332, !269}
!332 = !DILocation(line: 105, column: 7, scope: !112)
!333 = !DILocation(line: 107, column: 39, scope: !133)
!334 = !DILocation(line: 111, column: 21, scope: !130)
!335 = !DILocation(line: 111, column: 7, scope: !131)
!336 = !DILocation(line: 112, column: 9, scope: !128)
!337 = !DILocation(line: 0, scope: !126)
!338 = !DILocation(line: 115, column: 11, scope: !138)
!339 = !DILocation(line: 116, column: 35, scope: !136)
!340 = !DILocation(line: 0, scope: !136)
!341 = !DILocation(line: 117, column: 43, scope: !136)
!342 = !DILocation(line: 117, column: 41, scope: !136)
!343 = !DILocation(line: 118, column: 35, scope: !136)
!344 = !DILocation(line: 119, column: 43, scope: !136)
!345 = !DILocation(line: 119, column: 41, scope: !136)
!346 = !DILocation(line: 120, column: 35, scope: !136)
!347 = !DILocation(line: 120, column: 57, scope: !136)
!348 = !DILocation(line: 120, column: 23, scope: !136)
!349 = !DILocation(line: 121, column: 35, scope: !136)
!350 = !DILocation(line: 121, column: 57, scope: !136)
!351 = !DILocation(line: 121, column: 23, scope: !136)
!352 = !DILocation(line: 115, column: 31, scope: !137)
!353 = !DILocation(line: 115, column: 25, scope: !137)
!354 = distinct !{!354, !338, !355, !269}
!355 = !DILocation(line: 122, column: 11, scope: !138)
!356 = !DILocation(line: 123, column: 46, scope: !126)
!357 = !DILocation(line: 123, column: 71, scope: !126)
!358 = !DILocation(line: 123, column: 11, scope: !126)
!359 = !DILocation(line: 123, column: 32, scope: !126)
!360 = !DILocation(line: 124, column: 46, scope: !126)
!361 = !DILocation(line: 124, column: 71, scope: !126)
!362 = !DILocation(line: 124, column: 11, scope: !126)
!363 = !DILocation(line: 124, column: 32, scope: !126)
!364 = !DILocation(line: 112, column: 30, scope: !127)
!365 = !DILocation(line: 112, column: 23, scope: !127)
!366 = distinct !{!366, !336, !367, !269}
!367 = !DILocation(line: 125, column: 9, scope: !128)
!368 = !DILocation(line: 111, column: 28, scope: !130)
!369 = distinct !{!369, !335, !370, !269}
!370 = !DILocation(line: 126, column: 7, scope: !131)
!371 = !DILocation(line: 128, column: 23, scope: !150)
!372 = !DILocation(line: 128, column: 37, scope: !150)
!373 = !DILocation(line: 130, column: 21, scope: !147)
!374 = !DILocation(line: 130, column: 7, scope: !148)
!375 = !DILocation(line: 131, column: 9, scope: !145)
!376 = !DILocation(line: 132, column: 33, scope: !143)
!377 = !DILocation(line: 0, scope: !143)
!378 = !DILocation(line: 133, column: 41, scope: !143)
!379 = !DILocation(line: 133, column: 39, scope: !143)
!380 = !DILocation(line: 134, column: 45, scope: !143)
!381 = !DILocation(line: 134, column: 69, scope: !143)
!382 = !DILocation(line: 135, column: 45, scope: !143)
!383 = !DILocation(line: 135, column: 69, scope: !143)
!384 = !DILocation(line: 136, column: 27, scope: !159)
!385 = !DILocation(line: 136, column: 34, scope: !159)
!386 = !DILocation(line: 137, column: 13, scope: !157)
!387 = !DILocation(line: 138, column: 37, scope: !155)
!388 = !DILocation(line: 0, scope: !155)
!389 = !DILocation(line: 139, column: 45, scope: !155)
!390 = !DILocation(line: 139, column: 43, scope: !155)
!391 = !DILocation(line: 140, column: 49, scope: !155)
!392 = !DILocation(line: 140, column: 72, scope: !155)
!393 = !DILocation(line: 140, column: 15, scope: !155)
!394 = !DILocation(line: 140, column: 36, scope: !155)
!395 = !DILocation(line: 141, column: 49, scope: !155)
!396 = !DILocation(line: 141, column: 72, scope: !155)
!397 = !DILocation(line: 141, column: 15, scope: !155)
!398 = !DILocation(line: 141, column: 36, scope: !155)
!399 = !DILocation(line: 137, column: 34, scope: !156)
!400 = !DILocation(line: 137, column: 27, scope: !156)
!401 = distinct !{!401, !386, !402, !269}
!402 = !DILocation(line: 142, column: 13, scope: !157)
!403 = !DILocation(line: 131, column: 30, scope: !144)
!404 = !DILocation(line: 131, column: 23, scope: !144)
!405 = distinct !{!405, !375, !406, !269}
!406 = !DILocation(line: 144, column: 9, scope: !145)
!407 = !DILocation(line: 130, column: 27, scope: !147)
!408 = distinct !{!408, !374, !409, !269}
!409 = !DILocation(line: 145, column: 7, scope: !148)
!410 = !DILocation(line: 147, column: 37, scope: !169)
!411 = !DILocation(line: 149, column: 21, scope: !166)
!412 = !DILocation(line: 149, column: 7, scope: !167)
!413 = !DILocation(line: 150, column: 9, scope: !164)
!414 = !DILocation(line: 0, scope: !162)
!415 = !DILocation(line: 153, column: 11, scope: !174)
!416 = !DILocation(line: 154, column: 35, scope: !172)
!417 = !DILocation(line: 0, scope: !172)
!418 = !DILocation(line: 155, column: 43, scope: !172)
!419 = !DILocation(line: 155, column: 41, scope: !172)
!420 = !DILocation(line: 156, column: 35, scope: !172)
!421 = !DILocation(line: 157, column: 43, scope: !172)
!422 = !DILocation(line: 157, column: 41, scope: !172)
!423 = !DILocation(line: 159, column: 35, scope: !172)
!424 = !DILocation(line: 159, column: 57, scope: !172)
!425 = !DILocation(line: 159, column: 23, scope: !172)
!426 = !DILocation(line: 160, column: 35, scope: !172)
!427 = !DILocation(line: 160, column: 57, scope: !172)
!428 = !DILocation(line: 160, column: 23, scope: !172)
!429 = !DILocation(line: 153, column: 31, scope: !173)
!430 = !DILocation(line: 153, column: 25, scope: !173)
!431 = distinct !{!431, !415, !432, !269}
!432 = !DILocation(line: 161, column: 11, scope: !174)
!433 = !DILocation(line: 162, column: 46, scope: !162)
!434 = !DILocation(line: 162, column: 71, scope: !162)
!435 = !DILocation(line: 162, column: 11, scope: !162)
!436 = !DILocation(line: 162, column: 32, scope: !162)
!437 = !DILocation(line: 163, column: 46, scope: !162)
!438 = !DILocation(line: 163, column: 71, scope: !162)
!439 = !DILocation(line: 163, column: 11, scope: !162)
!440 = !DILocation(line: 163, column: 32, scope: !162)
!441 = !DILocation(line: 150, column: 30, scope: !163)
!442 = !DILocation(line: 150, column: 23, scope: !163)
!443 = distinct !{!443, !413, !444, !269}
!444 = !DILocation(line: 164, column: 9, scope: !164)
!445 = !DILocation(line: 149, column: 28, scope: !166)
!446 = distinct !{!446, !412, !447, !269}
!447 = !DILocation(line: 165, column: 7, scope: !167)
!448 = !DILocation(line: 168, column: 7, scope: !449)
!449 = distinct !DILexicalBlock(scope: !169, file: !2, line: 167, column: 12)
!450 = !DILocation(line: 16, column: 1, scope: !451)
!451 = !DILexicalBlockFile(scope: !45, file: !18, discriminator: 0)
!452 = !DISubprogram(name: "cblas_xerbla", scope: !21, file: !21, line: 602, type: !453, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!453 = !DISubroutineType(types: !454)
!454 = !{null, !51, !455, !455, null}
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
