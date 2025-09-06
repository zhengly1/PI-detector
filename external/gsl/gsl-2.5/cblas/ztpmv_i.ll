; ModuleID = 'ztpmv.ll'
source_filename = "ztpmv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"./source_tpmv_c.h\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !7
@.str.2 = private unnamed_addr constant [23 x i8] c"unrecognized operation\00", align 1, !dbg !12

; Function Attrs: nounwind uwtable
define dso_local void @cblas_ztpmv(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef readonly %5, ptr nocapture noundef %6, i32 noundef %7) local_unnamed_addr #0 !dbg !53 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !66, metadata !DIExpression()), !dbg !175
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !67, metadata !DIExpression()), !dbg !175
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !68, metadata !DIExpression()), !dbg !175
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !69, metadata !DIExpression()), !dbg !175
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !70, metadata !DIExpression()), !dbg !175
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !71, metadata !DIExpression()), !dbg !175
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !72, metadata !DIExpression()), !dbg !175
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !73, metadata !DIExpression()), !dbg !175
  %9 = icmp eq i32 %2, 113, !dbg !176
  %10 = select i1 %9, i32 -1, i32 1, !dbg !177
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !78, metadata !DIExpression()), !dbg !178
  %11 = select i1 %9, i32 112, i32 %2, !dbg !179
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !79, metadata !DIExpression()), !dbg !178
  %12 = icmp eq i32 %3, 131, !dbg !180
  tail call void @llvm.dbg.value(metadata i1 %12, metadata !80, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !178
  tail call void @llvm.dbg.value(metadata i32 0, metadata !81, metadata !DIExpression()), !dbg !181
  %13 = add i32 %0, -103, !dbg !182
  %14 = icmp ult i32 %13, -2, !dbg !182
  %15 = zext i1 %14 to i32, !dbg !182
  tail call void @llvm.dbg.value(metadata i32 %15, metadata !81, metadata !DIExpression()), !dbg !181
  %16 = add i32 %1, -123, !dbg !184
  %17 = icmp ult i32 %16, -2, !dbg !184
  %18 = select i1 %17, i32 2, i32 %15, !dbg !184
  tail call void @llvm.dbg.value(metadata i32 %18, metadata !81, metadata !DIExpression()), !dbg !181
  %19 = add i32 %2, -114, !dbg !186
  %20 = icmp ult i32 %19, -3, !dbg !186
  %21 = select i1 %20, i32 3, i32 %18, !dbg !186
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !81, metadata !DIExpression()), !dbg !181
  %22 = add i32 %3, -133, !dbg !188
  %23 = icmp ult i32 %22, -2, !dbg !188
  %24 = select i1 %23, i32 4, i32 %21, !dbg !188
  tail call void @llvm.dbg.value(metadata i32 %24, metadata !81, metadata !DIExpression()), !dbg !181
  %25 = icmp slt i32 %4, 0, !dbg !190
  %26 = select i1 %25, i32 5, i32 %24, !dbg !192
  tail call void @llvm.dbg.value(metadata i32 %26, metadata !81, metadata !DIExpression()), !dbg !181
  %27 = icmp eq i32 %7, 0, !dbg !193
  %28 = select i1 %27, i32 8, i32 %26, !dbg !192
  tail call void @llvm.dbg.value(metadata i32 %28, metadata !81, metadata !DIExpression()), !dbg !181
  %29 = icmp eq i32 %28, 0, !dbg !195
  br i1 %29, label %31, label %30, !dbg !192

30:                                               ; preds = %8
  tail call void (i32, ptr, ptr, ...) @cblas_xerbla(i32 noundef %28, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #3, !dbg !195
  br label %31, !dbg !195

31:                                               ; preds = %30, %8
  %32 = icmp eq i32 %0, 101, !dbg !197
  %33 = icmp eq i32 %11, 111
  %34 = and i1 %32, %33, !dbg !198
  %35 = icmp eq i32 %1, 121
  %36 = and i1 %35, %34, !dbg !198
  br i1 %36, label %43, label %37, !dbg !198

37:                                               ; preds = %31
  %38 = icmp eq i32 %0, 102, !dbg !199
  %39 = icmp eq i32 %11, 112
  %40 = and i1 %38, %39, !dbg !200
  %41 = icmp eq i32 %1, 122
  %42 = and i1 %41, %40, !dbg !200
  br i1 %42, label %43, label %153, !dbg !200

43:                                               ; preds = %37, %31
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !83, metadata !DIExpression()), !dbg !201
  tail call void @llvm.dbg.value(metadata i32 0, metadata !74, metadata !DIExpression()), !dbg !178
  %44 = icmp sgt i32 %4, 0, !dbg !202
  br i1 %44, label %45, label %481, !dbg !203

45:                                               ; preds = %43
  %46 = icmp sgt i32 %7, 0, !dbg !204
  %47 = sub nsw i32 1, %4, !dbg !204
  %48 = mul i32 %47, %7, !dbg !204
  %49 = select i1 %46, i32 0, i32 %48, !dbg !204
  tail call void @llvm.dbg.value(metadata i32 %49, metadata !83, metadata !DIExpression()), !dbg !201
  %50 = shl nuw nsw i32 %4, 1
  %51 = or disjoint i32 %50, 1
  %52 = sitofp i32 %10 to double
  %53 = zext i32 %7 to i64, !dbg !203
  %54 = zext i32 %49 to i64, !dbg !203
  %55 = zext nneg i32 %4 to i64
  br label %56, !dbg !203

56:                                               ; preds = %139, %45
  %57 = phi i64 [ %54, %45 ], [ %149, %139 ]
  %58 = phi i32 [ %49, %45 ], [ %62, %139 ]
  %59 = phi i64 [ 1, %45 ], [ %151, %139 ]
  %60 = phi i32 [ 0, %45 ], [ %150, %139 ]
  %61 = phi i32 [ 0, %45 ], [ %103, %139 ]
  %62 = add i32 %58, %7, !dbg !203
  tail call void @llvm.dbg.value(metadata i32 %61, metadata !74, metadata !DIExpression()), !dbg !178
  tail call void @llvm.dbg.value(metadata i64 %57, metadata !83, metadata !DIExpression()), !dbg !201
  %63 = zext i32 %62 to i64, !dbg !205
  %64 = add i32 %51, %60, !dbg !205
  %65 = mul nsw i32 %64, %61, !dbg !205
  %66 = sdiv i32 %65, 2, !dbg !205
  tail call void @llvm.dbg.value(metadata double poison, metadata !86, metadata !DIExpression()), !dbg !206
  tail call void @llvm.dbg.value(metadata double poison, metadata !90, metadata !DIExpression()), !dbg !206
  br i1 %12, label %67, label %90, !dbg !207

67:                                               ; preds = %56
  %68 = shl nsw i32 %66, 1, !dbg !205
  %69 = or disjoint i32 %68, 1, !dbg !208
  %70 = sext i32 %69 to i64, !dbg !208
  %71 = getelementptr inbounds double, ptr %5, i64 %70, !dbg !208
  %72 = load double, ptr %71, align 8, !dbg !208, !tbaa !209
  %73 = fmul double %72, %52, !dbg !213
  tail call void @llvm.dbg.value(metadata double %73, metadata !90, metadata !DIExpression()), !dbg !206
  %74 = sext i32 %68 to i64, !dbg !205
  %75 = getelementptr inbounds double, ptr %5, i64 %74, !dbg !205
  %76 = load double, ptr %75, align 8, !dbg !205, !tbaa !209
  tail call void @llvm.dbg.value(metadata double %76, metadata !86, metadata !DIExpression()), !dbg !206
  %77 = trunc i64 %57 to i32, !dbg !214
  %78 = shl nsw i32 %77, 1, !dbg !214
  %79 = sext i32 %78 to i64, !dbg !214
  %80 = getelementptr inbounds double, ptr %6, i64 %79, !dbg !214
  %81 = load double, ptr %80, align 8, !dbg !214, !tbaa !209
  tail call void @llvm.dbg.value(metadata double %81, metadata !93, metadata !DIExpression()), !dbg !215
  %82 = or disjoint i32 %78, 1, !dbg !216
  %83 = sext i32 %82 to i64, !dbg !216
  %84 = getelementptr inbounds double, ptr %6, i64 %83, !dbg !216
  %85 = load double, ptr %84, align 8, !dbg !216, !tbaa !209
  tail call void @llvm.dbg.value(metadata double %85, metadata !96, metadata !DIExpression()), !dbg !215
  %86 = fmul double %76, %81, !dbg !217
  %87 = fmul double %73, %85, !dbg !218
  %handler_result = call double @fSubHandlerDouble(double %86, double %87), !dbg !219
  tail call void @llvm.dbg.value(metadata double %handler_result, metadata !91, metadata !DIExpression()), !dbg !206
  %88 = fmul double %76, %85, !dbg !219
  %89 = fmul double %73, %81, !dbg !220
  %handler_result1 = call double @fAddHandlerDouble(double %89, double %88), !dbg !221
  tail call void @llvm.dbg.value(metadata double %handler_result1, metadata !92, metadata !DIExpression()), !dbg !206
  br label %100, !dbg !221

90:                                               ; preds = %56
  %91 = trunc i64 %57 to i32, !dbg !222
  %92 = shl nsw i32 %91, 1, !dbg !222
  %93 = sext i32 %92 to i64, !dbg !222
  %94 = getelementptr inbounds double, ptr %6, i64 %93, !dbg !222
  %95 = load double, ptr %94, align 8, !dbg !222, !tbaa !209
  tail call void @llvm.dbg.value(metadata double %95, metadata !91, metadata !DIExpression()), !dbg !206
  %96 = or disjoint i32 %92, 1, !dbg !224
  %97 = sext i32 %96 to i64, !dbg !224
  %98 = getelementptr inbounds double, ptr %6, i64 %97, !dbg !224
  %99 = load double, ptr %98, align 8, !dbg !224, !tbaa !209
  tail call void @llvm.dbg.value(metadata double %99, metadata !92, metadata !DIExpression()), !dbg !206
  br label %100

100:                                              ; preds = %90, %67
  %101 = phi double [ %handler_result1, %67 ], [ %99, %90 ], !dbg !225
  %102 = phi double [ %handler_result, %67 ], [ %95, %90 ], !dbg !225
  tail call void @llvm.dbg.value(metadata double %102, metadata !91, metadata !DIExpression()), !dbg !206
  tail call void @llvm.dbg.value(metadata double %101, metadata !92, metadata !DIExpression()), !dbg !206
  %103 = add nuw nsw i32 %61, 1, !dbg !226
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 poison, i32 poison, i32 poison), metadata !97, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !227
  tail call void @llvm.dbg.value(metadata i32 %103, metadata !77, metadata !DIExpression()), !dbg !178
  tail call void @llvm.dbg.value(metadata double %102, metadata !91, metadata !DIExpression()), !dbg !206
  tail call void @llvm.dbg.value(metadata double %101, metadata !92, metadata !DIExpression()), !dbg !206
  %104 = icmp slt i32 %103, %4, !dbg !228
  br i1 %104, label %105, label %139, !dbg !229

105:                                              ; preds = %100
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 poison, i32 poison, i32 poison), metadata !97, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !227
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 poison, i32 poison, i32 poison), metadata !97, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !227
  %106 = add i32 %66, %60
  br label %107, !dbg !229

107:                                              ; preds = %107, %105
  %108 = phi i64 [ %63, %105 ], [ %136, %107 ]
  %109 = phi i64 [ %59, %105 ], [ %137, %107 ]
  %110 = phi double [ %102, %105 ], [ %handler_result3, %107 ]
  %111 = phi double [ %101, %105 ], [ %handler_result5, %107 ]
  tail call void @llvm.dbg.value(metadata i64 %109, metadata !77, metadata !DIExpression()), !dbg !178
  tail call void @llvm.dbg.value(metadata double %110, metadata !91, metadata !DIExpression()), !dbg !206
  tail call void @llvm.dbg.value(metadata double %111, metadata !92, metadata !DIExpression()), !dbg !206
  tail call void @llvm.dbg.value(metadata i64 %108, metadata !97, metadata !DIExpression()), !dbg !227
  %112 = trunc i64 %109 to i32, !dbg !230
  %113 = add i32 %106, %112, !dbg !230
  %114 = shl nsw i32 %113, 1, !dbg !230
  %115 = sext i32 %114 to i64, !dbg !230
  %116 = getelementptr inbounds double, ptr %5, i64 %115, !dbg !230
  %117 = load double, ptr %116, align 8, !dbg !230, !tbaa !209
  tail call void @llvm.dbg.value(metadata double %117, metadata !99, metadata !DIExpression()), !dbg !231
  %118 = or disjoint i32 %114, 1, !dbg !232
  %119 = sext i32 %118 to i64, !dbg !232
  %120 = getelementptr inbounds double, ptr %5, i64 %119, !dbg !232
  %121 = load double, ptr %120, align 8, !dbg !232, !tbaa !209
  %122 = fmul double %121, %52, !dbg !233
  tail call void @llvm.dbg.value(metadata double %122, metadata !103, metadata !DIExpression()), !dbg !231
  %123 = trunc i64 %108 to i32, !dbg !234
  %124 = shl nsw i32 %123, 1, !dbg !234
  %125 = sext i32 %124 to i64, !dbg !234
  %126 = getelementptr inbounds double, ptr %6, i64 %125, !dbg !234
  %127 = load double, ptr %126, align 8, !dbg !234, !tbaa !209
  tail call void @llvm.dbg.value(metadata double %127, metadata !104, metadata !DIExpression()), !dbg !231
  %128 = or disjoint i32 %124, 1, !dbg !235
  %129 = sext i32 %128 to i64, !dbg !235
  %130 = getelementptr inbounds double, ptr %6, i64 %129, !dbg !235
  %131 = load double, ptr %130, align 8, !dbg !235, !tbaa !209
  tail call void @llvm.dbg.value(metadata double %131, metadata !105, metadata !DIExpression()), !dbg !231
  %132 = fmul double %117, %127, !dbg !236
  %133 = fmul double %122, %131, !dbg !237
  %handler_result2 = call double @fSubHandlerDouble(double %132, double %133), !dbg !238
  %handler_result3 = call double @fAddHandlerDouble(double %110, double %handler_result2), !dbg !239
  tail call void @llvm.dbg.value(metadata double %handler_result3, metadata !91, metadata !DIExpression()), !dbg !206
  %134 = fmul double %117, %131, !dbg !239
  %135 = fmul double %122, %127, !dbg !240
  %handler_result4 = call double @fAddHandlerDouble(double %135, double %134), !dbg !241
  %handler_result5 = call double @fAddHandlerDouble(double %111, double %handler_result4), !dbg !242
  tail call void @llvm.dbg.value(metadata double %handler_result5, metadata !92, metadata !DIExpression()), !dbg !206
  %136 = add i64 %108, %53, !dbg !242
  tail call void @llvm.dbg.value(metadata i64 %136, metadata !97, metadata !DIExpression()), !dbg !227
  %137 = add nuw nsw i64 %109, 1, !dbg !243
  tail call void @llvm.dbg.value(metadata i64 %137, metadata !77, metadata !DIExpression()), !dbg !178
  %138 = icmp eq i64 %137, %55, !dbg !228
  br i1 %138, label %139, label %107, !dbg !229, !llvm.loop !244

139:                                              ; preds = %107, %100
  %140 = phi double [ %101, %100 ], [ %handler_result5, %107 ], !dbg !206
  %141 = phi double [ %102, %100 ], [ %handler_result3, %107 ], !dbg !206
  %142 = trunc i64 %57 to i32, !dbg !247
  %143 = shl nsw i32 %142, 1, !dbg !247
  %144 = sext i32 %143 to i64, !dbg !247
  %145 = getelementptr inbounds double, ptr %6, i64 %144, !dbg !247
  store double %141, ptr %145, align 8, !dbg !248, !tbaa !209
  %146 = or disjoint i32 %143, 1, !dbg !249
  %147 = sext i32 %146 to i64, !dbg !249
  %148 = getelementptr inbounds double, ptr %6, i64 %147, !dbg !249
  store double %140, ptr %148, align 8, !dbg !250, !tbaa !209
  %149 = add i64 %57, %53, !dbg !251
  tail call void @llvm.dbg.value(metadata i64 %149, metadata !83, metadata !DIExpression()), !dbg !201
  tail call void @llvm.dbg.value(metadata i32 %103, metadata !74, metadata !DIExpression()), !dbg !178
  %150 = xor i32 %61, -1
  %151 = add nuw nsw i64 %59, 1, !dbg !203
  %152 = icmp eq i32 %103, %4, !dbg !202
  br i1 %152, label %481, label %56, !dbg !203, !llvm.loop !252

153:                                              ; preds = %37
  %154 = and i1 %41, %34, !dbg !254
  %155 = and i1 %35, %40
  %156 = or i1 %154, %155, !dbg !254
  br i1 %156, label %157, label %259, !dbg !254

157:                                              ; preds = %153
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 poison, i32 poison, i32 poison), metadata !106, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_minus, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !255
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !74, metadata !DIExpression()), !dbg !178
  %158 = icmp sgt i32 %4, 0, !dbg !256
  br i1 %158, label %159, label %481, !dbg !257

159:                                              ; preds = %157
  %160 = icmp sgt i32 %7, 0, !dbg !258
  %161 = sub nsw i32 1, %4, !dbg !258
  %162 = mul i32 %161, %7, !dbg !258
  %163 = select i1 %160, i32 0, i32 %162, !dbg !258
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 %163, i32 %4, i32 %7), metadata !106, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_minus, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !255
  %164 = add nsw i32 %4, -1, !dbg !259
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 %163, i32 %164, i32 %7), metadata !106, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !255
  %165 = mul i32 %164, %7, !dbg !260
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 %163, i32 %165), metadata !106, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !255
  %166 = add nsw i32 %163, %165, !dbg !261
  tail call void @llvm.dbg.value(metadata i32 %166, metadata !106, metadata !DIExpression()), !dbg !255
  %167 = sitofp i32 %10 to double
  %168 = sub i32 0, %165
  %169 = select i1 %160, i32 0, i32 %168
  %170 = zext i32 %169 to i64, !dbg !257
  %171 = zext i32 %7 to i64, !dbg !257
  %172 = zext nneg i32 %164 to i64, !dbg !257
  br label %173, !dbg !257

173:                                              ; preds = %248, %159
  %174 = phi i64 [ %172, %159 ], [ %258, %248 ]
  %175 = phi i32 [ %4, %159 ], [ %177, %248 ]
  %176 = phi i32 [ %166, %159 ], [ %257, %248 ]
  tail call void @llvm.dbg.value(metadata i32 %175, metadata !74, metadata !DIExpression()), !dbg !178
  tail call void @llvm.dbg.value(metadata i32 %176, metadata !106, metadata !DIExpression()), !dbg !255
  %177 = add nsw i32 %175, -1, !dbg !262
  tail call void @llvm.dbg.value(metadata i32 %177, metadata !74, metadata !DIExpression()), !dbg !178
  %178 = mul nsw i32 %177, %175, !dbg !263
  %179 = sdiv i32 %178, 2, !dbg !263
  tail call void @llvm.dbg.value(metadata double poison, metadata !109, metadata !DIExpression()), !dbg !264
  tail call void @llvm.dbg.value(metadata double poison, metadata !113, metadata !DIExpression()), !dbg !264
  br i1 %12, label %180, label %203, !dbg !265

180:                                              ; preds = %173
  %181 = add nsw i32 %179, %177, !dbg !263
  %182 = shl nsw i32 %181, 1, !dbg !263
  %183 = or disjoint i32 %182, 1, !dbg !266
  %184 = sext i32 %183 to i64, !dbg !266
  %185 = getelementptr inbounds double, ptr %5, i64 %184, !dbg !266
  %186 = load double, ptr %185, align 8, !dbg !266, !tbaa !209
  %187 = fmul double %186, %167, !dbg !267
  tail call void @llvm.dbg.value(metadata double %187, metadata !113, metadata !DIExpression()), !dbg !264
  %188 = sext i32 %182 to i64, !dbg !263
  %189 = getelementptr inbounds double, ptr %5, i64 %188, !dbg !263
  %190 = load double, ptr %189, align 8, !dbg !263, !tbaa !209
  tail call void @llvm.dbg.value(metadata double %190, metadata !109, metadata !DIExpression()), !dbg !264
  %191 = shl nsw i32 %176, 1, !dbg !268
  %192 = sext i32 %191 to i64, !dbg !268
  %193 = getelementptr inbounds double, ptr %6, i64 %192, !dbg !268
  %194 = load double, ptr %193, align 8, !dbg !268, !tbaa !209
  tail call void @llvm.dbg.value(metadata double %194, metadata !116, metadata !DIExpression()), !dbg !269
  %195 = or disjoint i32 %191, 1, !dbg !270
  %196 = sext i32 %195 to i64, !dbg !270
  %197 = getelementptr inbounds double, ptr %6, i64 %196, !dbg !270
  %198 = load double, ptr %197, align 8, !dbg !270, !tbaa !209
  tail call void @llvm.dbg.value(metadata double %198, metadata !119, metadata !DIExpression()), !dbg !269
  %199 = fmul double %190, %194, !dbg !271
  %200 = fmul double %187, %198, !dbg !272
  %handler_result6 = call double @fSubHandlerDouble(double %199, double %200), !dbg !273
  tail call void @llvm.dbg.value(metadata double %handler_result6, metadata !114, metadata !DIExpression()), !dbg !264
  %201 = fmul double %190, %198, !dbg !273
  %202 = fmul double %187, %194, !dbg !274
  %handler_result7 = call double @fAddHandlerDouble(double %202, double %201), !dbg !275
  tail call void @llvm.dbg.value(metadata double %handler_result7, metadata !115, metadata !DIExpression()), !dbg !264
  br label %212, !dbg !275

203:                                              ; preds = %173
  %204 = shl nsw i32 %176, 1, !dbg !276
  %205 = sext i32 %204 to i64, !dbg !276
  %206 = getelementptr inbounds double, ptr %6, i64 %205, !dbg !276
  %207 = load double, ptr %206, align 8, !dbg !276, !tbaa !209
  tail call void @llvm.dbg.value(metadata double %207, metadata !114, metadata !DIExpression()), !dbg !264
  %208 = or disjoint i32 %204, 1, !dbg !278
  %209 = sext i32 %208 to i64, !dbg !278
  %210 = getelementptr inbounds double, ptr %6, i64 %209, !dbg !278
  %211 = load double, ptr %210, align 8, !dbg !278, !tbaa !209
  tail call void @llvm.dbg.value(metadata double %211, metadata !115, metadata !DIExpression()), !dbg !264
  br label %212

212:                                              ; preds = %203, %180
  %213 = phi double [ %handler_result7, %180 ], [ %211, %203 ], !dbg !279
  %214 = phi double [ %handler_result6, %180 ], [ %207, %203 ], !dbg !279
  tail call void @llvm.dbg.value(metadata i32 %169, metadata !120, metadata !DIExpression()), !dbg !280
  tail call void @llvm.dbg.value(metadata i32 0, metadata !77, metadata !DIExpression()), !dbg !178
  tail call void @llvm.dbg.value(metadata double %214, metadata !114, metadata !DIExpression()), !dbg !264
  tail call void @llvm.dbg.value(metadata double %213, metadata !115, metadata !DIExpression()), !dbg !264
  %215 = icmp ugt i32 %175, 1, !dbg !281
  br i1 %215, label %216, label %248, !dbg !282

216:                                              ; preds = %216, %212
  %217 = phi i64 [ %245, %216 ], [ %170, %212 ]
  %218 = phi i64 [ %246, %216 ], [ 0, %212 ]
  %219 = phi double [ %handler_result9, %216 ], [ %214, %212 ]
  %220 = phi double [ %handler_result11, %216 ], [ %213, %212 ]
  tail call void @llvm.dbg.value(metadata i64 %218, metadata !77, metadata !DIExpression()), !dbg !178
  tail call void @llvm.dbg.value(metadata double %219, metadata !114, metadata !DIExpression()), !dbg !264
  tail call void @llvm.dbg.value(metadata double %220, metadata !115, metadata !DIExpression()), !dbg !264
  tail call void @llvm.dbg.value(metadata i64 %217, metadata !120, metadata !DIExpression()), !dbg !280
  %221 = trunc i64 %218 to i32, !dbg !283
  %222 = add i32 %179, %221, !dbg !283
  %223 = shl nsw i32 %222, 1, !dbg !283
  %224 = sext i32 %223 to i64, !dbg !283
  %225 = getelementptr inbounds double, ptr %5, i64 %224, !dbg !283
  %226 = load double, ptr %225, align 8, !dbg !283, !tbaa !209
  tail call void @llvm.dbg.value(metadata double %226, metadata !122, metadata !DIExpression()), !dbg !284
  %227 = or disjoint i32 %223, 1, !dbg !285
  %228 = sext i32 %227 to i64, !dbg !285
  %229 = getelementptr inbounds double, ptr %5, i64 %228, !dbg !285
  %230 = load double, ptr %229, align 8, !dbg !285, !tbaa !209
  %231 = fmul double %230, %167, !dbg !286
  tail call void @llvm.dbg.value(metadata double %231, metadata !126, metadata !DIExpression()), !dbg !284
  %232 = trunc i64 %217 to i32, !dbg !287
  %233 = shl nsw i32 %232, 1, !dbg !287
  %234 = sext i32 %233 to i64, !dbg !287
  %235 = getelementptr inbounds double, ptr %6, i64 %234, !dbg !287
  %236 = load double, ptr %235, align 8, !dbg !287, !tbaa !209
  tail call void @llvm.dbg.value(metadata double %236, metadata !127, metadata !DIExpression()), !dbg !284
  %237 = or disjoint i32 %233, 1, !dbg !288
  %238 = sext i32 %237 to i64, !dbg !288
  %239 = getelementptr inbounds double, ptr %6, i64 %238, !dbg !288
  %240 = load double, ptr %239, align 8, !dbg !288, !tbaa !209
  tail call void @llvm.dbg.value(metadata double %240, metadata !128, metadata !DIExpression()), !dbg !284
  %241 = fmul double %226, %236, !dbg !289
  %242 = fmul double %231, %240, !dbg !290
  %handler_result8 = call double @fSubHandlerDouble(double %241, double %242), !dbg !291
  %handler_result9 = call double @fAddHandlerDouble(double %219, double %handler_result8), !dbg !292
  tail call void @llvm.dbg.value(metadata double %handler_result9, metadata !114, metadata !DIExpression()), !dbg !264
  %243 = fmul double %226, %240, !dbg !292
  %244 = fmul double %231, %236, !dbg !293
  %handler_result10 = call double @fAddHandlerDouble(double %244, double %243), !dbg !294
  %handler_result11 = call double @fAddHandlerDouble(double %220, double %handler_result10), !dbg !295
  tail call void @llvm.dbg.value(metadata double %handler_result11, metadata !115, metadata !DIExpression()), !dbg !264
  %245 = add i64 %217, %171, !dbg !295
  tail call void @llvm.dbg.value(metadata i64 %245, metadata !120, metadata !DIExpression()), !dbg !280
  %246 = add nuw nsw i64 %218, 1, !dbg !296
  tail call void @llvm.dbg.value(metadata i64 %246, metadata !77, metadata !DIExpression()), !dbg !178
  %247 = icmp eq i64 %246, %174, !dbg !281
  br i1 %247, label %248, label %216, !dbg !282, !llvm.loop !297

248:                                              ; preds = %216, %212
  %249 = phi double [ %213, %212 ], [ %handler_result11, %216 ], !dbg !264
  %250 = phi double [ %214, %212 ], [ %handler_result9, %216 ], !dbg !264
  %251 = shl nsw i32 %176, 1, !dbg !299
  %252 = sext i32 %251 to i64, !dbg !299
  %253 = getelementptr inbounds double, ptr %6, i64 %252, !dbg !299
  store double %250, ptr %253, align 8, !dbg !300, !tbaa !209
  %254 = or disjoint i32 %251, 1, !dbg !301
  %255 = sext i32 %254 to i64, !dbg !301
  %256 = getelementptr inbounds double, ptr %6, i64 %255, !dbg !301
  store double %249, ptr %256, align 8, !dbg !302, !tbaa !209
  %257 = sub nsw i32 %176, %7, !dbg !303
  tail call void @llvm.dbg.value(metadata i32 %177, metadata !74, metadata !DIExpression()), !dbg !178
  tail call void @llvm.dbg.value(metadata i32 %257, metadata !106, metadata !DIExpression()), !dbg !255
  %258 = add nsw i64 %174, -1, !dbg !257
  br i1 %215, label %173, label %481, !dbg !257, !llvm.loop !304

259:                                              ; preds = %153
  %260 = and i1 %32, %39, !dbg !307
  %261 = and i1 %35, %260, !dbg !307
  br i1 %261, label %265, label %262, !dbg !307

262:                                              ; preds = %259
  %263 = and i1 %38, %33, !dbg !308
  %264 = and i1 %41, %263, !dbg !308
  br i1 %264, label %265, label %374, !dbg !308

265:                                              ; preds = %262, %259
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 poison, i32 poison, i32 poison), metadata !129, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_minus, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !309
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !74, metadata !DIExpression()), !dbg !178
  %266 = icmp sgt i32 %4, 0, !dbg !310
  br i1 %266, label %267, label %481, !dbg !311

267:                                              ; preds = %265
  %268 = icmp sgt i32 %7, 0, !dbg !312
  %269 = sub nsw i32 1, %4, !dbg !312
  %270 = mul i32 %269, %7, !dbg !312
  %271 = select i1 %268, i32 0, i32 %270, !dbg !312
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 %271, i32 %4, i32 %7), metadata !129, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_minus, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !309
  %272 = add nsw i32 %4, -1, !dbg !313
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 %271, i32 %272, i32 %7), metadata !129, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !309
  %273 = mul i32 %272, %7, !dbg !314
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 %271, i32 %273), metadata !129, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !309
  %274 = add nsw i32 %271, %273, !dbg !315
  tail call void @llvm.dbg.value(metadata i32 %274, metadata !129, metadata !DIExpression()), !dbg !309
  %275 = shl nuw nsw i32 %4, 1
  %276 = sitofp i32 %10 to double
  %277 = add nuw i32 %275, 2
  %278 = sub i32 0, %273
  %279 = select i1 %268, i32 0, i32 %278
  %280 = or disjoint i32 %275, 1
  %281 = zext i32 %279 to i64, !dbg !311
  %282 = zext i32 %7 to i64, !dbg !311
  br label %283, !dbg !311

283:                                              ; preds = %363, %267
  %284 = phi i32 [ %272, %267 ], [ %373, %363 ]
  %285 = phi i32 [ %4, %267 ], [ %287, %363 ]
  %286 = phi i32 [ %274, %267 ], [ %372, %363 ]
  tail call void @llvm.dbg.value(metadata i32 %285, metadata !74, metadata !DIExpression()), !dbg !178
  tail call void @llvm.dbg.value(metadata i32 %286, metadata !129, metadata !DIExpression()), !dbg !309
  %287 = add nsw i32 %285, -1, !dbg !316
  tail call void @llvm.dbg.value(metadata i32 %287, metadata !74, metadata !DIExpression()), !dbg !178
  tail call void @llvm.dbg.value(metadata double poison, metadata !132, metadata !DIExpression()), !dbg !317
  tail call void @llvm.dbg.value(metadata double poison, metadata !136, metadata !DIExpression()), !dbg !317
  br i1 %12, label %288, label %313, !dbg !318

288:                                              ; preds = %283
  %289 = sub i32 %277, %285, !dbg !319
  %290 = mul nsw i32 %287, %289, !dbg !319
  %291 = sdiv i32 %290, 2, !dbg !319
  %292 = shl nsw i32 %291, 1, !dbg !319
  %293 = or disjoint i32 %292, 1, !dbg !320
  %294 = sext i32 %293 to i64, !dbg !320
  %295 = getelementptr inbounds double, ptr %5, i64 %294, !dbg !320
  %296 = load double, ptr %295, align 8, !dbg !320, !tbaa !209
  %297 = fmul double %296, %276, !dbg !321
  tail call void @llvm.dbg.value(metadata double %297, metadata !136, metadata !DIExpression()), !dbg !317
  %298 = sext i32 %292 to i64, !dbg !319
  %299 = getelementptr inbounds double, ptr %5, i64 %298, !dbg !319
  %300 = load double, ptr %299, align 8, !dbg !319, !tbaa !209
  tail call void @llvm.dbg.value(metadata double %300, metadata !132, metadata !DIExpression()), !dbg !317
  %301 = shl nsw i32 %286, 1, !dbg !322
  %302 = sext i32 %301 to i64, !dbg !322
  %303 = getelementptr inbounds double, ptr %6, i64 %302, !dbg !322
  %304 = load double, ptr %303, align 8, !dbg !322, !tbaa !209
  tail call void @llvm.dbg.value(metadata double %304, metadata !139, metadata !DIExpression()), !dbg !323
  %305 = or disjoint i32 %301, 1, !dbg !324
  %306 = sext i32 %305 to i64, !dbg !324
  %307 = getelementptr inbounds double, ptr %6, i64 %306, !dbg !324
  %308 = load double, ptr %307, align 8, !dbg !324, !tbaa !209
  tail call void @llvm.dbg.value(metadata double %308, metadata !142, metadata !DIExpression()), !dbg !323
  %309 = fmul double %300, %304, !dbg !325
  %310 = fmul double %297, %308, !dbg !326
  %handler_result12 = call double @fSubHandlerDouble(double %309, double %310), !dbg !327
  tail call void @llvm.dbg.value(metadata double %handler_result12, metadata !137, metadata !DIExpression()), !dbg !317
  %311 = fmul double %300, %308, !dbg !327
  %312 = fmul double %297, %304, !dbg !328
  %handler_result13 = call double @fAddHandlerDouble(double %312, double %311), !dbg !329
  tail call void @llvm.dbg.value(metadata double %handler_result13, metadata !138, metadata !DIExpression()), !dbg !317
  br label %322, !dbg !329

313:                                              ; preds = %283
  %314 = shl nsw i32 %286, 1, !dbg !330
  %315 = sext i32 %314 to i64, !dbg !330
  %316 = getelementptr inbounds double, ptr %6, i64 %315, !dbg !330
  %317 = load double, ptr %316, align 8, !dbg !330, !tbaa !209
  tail call void @llvm.dbg.value(metadata double %317, metadata !137, metadata !DIExpression()), !dbg !317
  %318 = or disjoint i32 %314, 1, !dbg !332
  %319 = sext i32 %318 to i64, !dbg !332
  %320 = getelementptr inbounds double, ptr %6, i64 %319, !dbg !332
  %321 = load double, ptr %320, align 8, !dbg !332, !tbaa !209
  tail call void @llvm.dbg.value(metadata double %321, metadata !138, metadata !DIExpression()), !dbg !317
  br label %322

322:                                              ; preds = %313, %288
  %323 = phi double [ %handler_result13, %288 ], [ %321, %313 ], !dbg !333
  %324 = phi double [ %handler_result12, %288 ], [ %317, %313 ], !dbg !333
  tail call void @llvm.dbg.value(metadata i32 %279, metadata !143, metadata !DIExpression()), !dbg !334
  tail call void @llvm.dbg.value(metadata i32 0, metadata !77, metadata !DIExpression()), !dbg !178
  tail call void @llvm.dbg.value(metadata double %324, metadata !137, metadata !DIExpression()), !dbg !317
  tail call void @llvm.dbg.value(metadata double %323, metadata !138, metadata !DIExpression()), !dbg !317
  %325 = icmp ugt i32 %285, 1, !dbg !335
  br i1 %325, label %326, label %363, !dbg !336

326:                                              ; preds = %326, %322
  %327 = phi i64 [ %359, %326 ], [ %281, %322 ]
  %328 = phi i32 [ %361, %326 ], [ 0, %322 ]
  %329 = phi i32 [ %360, %326 ], [ 0, %322 ]
  %330 = phi double [ %handler_result15, %326 ], [ %324, %322 ]
  %331 = phi double [ %handler_result17, %326 ], [ %323, %322 ]
  tail call void @llvm.dbg.value(metadata i32 %329, metadata !77, metadata !DIExpression()), !dbg !178
  tail call void @llvm.dbg.value(metadata i64 %327, metadata !143, metadata !DIExpression()), !dbg !334
  tail call void @llvm.dbg.value(metadata double %330, metadata !137, metadata !DIExpression()), !dbg !317
  tail call void @llvm.dbg.value(metadata double %331, metadata !138, metadata !DIExpression()), !dbg !317
  %332 = trunc i64 %327 to i32, !dbg !337
  %333 = shl nsw i32 %332, 1, !dbg !337
  %334 = sext i32 %333 to i64, !dbg !337
  %335 = getelementptr inbounds double, ptr %6, i64 %334, !dbg !337
  %336 = load double, ptr %335, align 8, !dbg !337, !tbaa !209
  tail call void @llvm.dbg.value(metadata double %336, metadata !145, metadata !DIExpression()), !dbg !338
  %337 = or disjoint i32 %333, 1, !dbg !339
  %338 = sext i32 %337 to i64, !dbg !339
  %339 = getelementptr inbounds double, ptr %6, i64 %338, !dbg !339
  %340 = load double, ptr %339, align 8, !dbg !339, !tbaa !209
  tail call void @llvm.dbg.value(metadata double %340, metadata !149, metadata !DIExpression()), !dbg !338
  %341 = add i32 %280, %328, !dbg !340
  %342 = mul nsw i32 %341, %329, !dbg !340
  %343 = sdiv i32 %342, 2, !dbg !340
  %344 = add i32 %328, %287, !dbg !340
  %345 = add i32 %344, %343, !dbg !340
  %346 = shl nsw i32 %345, 1, !dbg !340
  %347 = sext i32 %346 to i64, !dbg !340
  %348 = getelementptr inbounds double, ptr %5, i64 %347, !dbg !340
  %349 = load double, ptr %348, align 8, !dbg !340, !tbaa !209
  tail call void @llvm.dbg.value(metadata double %349, metadata !150, metadata !DIExpression()), !dbg !338
  %350 = or disjoint i32 %346, 1, !dbg !341
  %351 = sext i32 %350 to i64, !dbg !341
  %352 = getelementptr inbounds double, ptr %5, i64 %351, !dbg !341
  %353 = load double, ptr %352, align 8, !dbg !341, !tbaa !209
  %354 = fmul double %353, %276, !dbg !342
  tail call void @llvm.dbg.value(metadata double %354, metadata !151, metadata !DIExpression()), !dbg !338
  %355 = fmul double %336, %349, !dbg !343
  %356 = fmul double %340, %354, !dbg !344
  %handler_result14 = call double @fSubHandlerDouble(double %355, double %356), !dbg !345
  %handler_result15 = call double @fAddHandlerDouble(double %330, double %handler_result14), !dbg !346
  tail call void @llvm.dbg.value(metadata double %handler_result15, metadata !137, metadata !DIExpression()), !dbg !317
  %357 = fmul double %340, %349, !dbg !346
  %358 = fmul double %336, %354, !dbg !347
  %handler_result16 = call double @fAddHandlerDouble(double %357, double %358), !dbg !348
  %handler_result17 = call double @fAddHandlerDouble(double %331, double %handler_result16), !dbg !349
  tail call void @llvm.dbg.value(metadata double %handler_result17, metadata !138, metadata !DIExpression()), !dbg !317
  %359 = add i64 %327, %282, !dbg !349
  tail call void @llvm.dbg.value(metadata i64 %359, metadata !143, metadata !DIExpression()), !dbg !334
  %360 = add nuw nsw i32 %329, 1, !dbg !350
  tail call void @llvm.dbg.value(metadata i32 %360, metadata !77, metadata !DIExpression()), !dbg !178
  %361 = xor i32 %329, -1
  %362 = icmp eq i32 %360, %284, !dbg !335
  br i1 %362, label %363, label %326, !dbg !336, !llvm.loop !351

363:                                              ; preds = %326, %322
  %364 = phi double [ %323, %322 ], [ %handler_result17, %326 ], !dbg !317
  %365 = phi double [ %324, %322 ], [ %handler_result15, %326 ], !dbg !317
  %366 = shl nsw i32 %286, 1, !dbg !353
  %367 = sext i32 %366 to i64, !dbg !353
  %368 = getelementptr inbounds double, ptr %6, i64 %367, !dbg !353
  store double %365, ptr %368, align 8, !dbg !354, !tbaa !209
  %369 = or disjoint i32 %366, 1, !dbg !355
  %370 = sext i32 %369 to i64, !dbg !355
  %371 = getelementptr inbounds double, ptr %6, i64 %370, !dbg !355
  store double %364, ptr %371, align 8, !dbg !356, !tbaa !209
  %372 = sub nsw i32 %286, %7, !dbg !357
  tail call void @llvm.dbg.value(metadata i32 %287, metadata !74, metadata !DIExpression()), !dbg !178
  tail call void @llvm.dbg.value(metadata i32 %372, metadata !129, metadata !DIExpression()), !dbg !309
  %373 = add nsw i32 %284, -1, !dbg !311
  br i1 %325, label %283, label %481, !dbg !311, !llvm.loop !358

374:                                              ; preds = %262
  %375 = and i1 %41, %260, !dbg !361
  %376 = and i1 %35, %263
  %377 = or i1 %375, %376, !dbg !361
  br i1 %377, label %378, label %480, !dbg !361

378:                                              ; preds = %374
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !152, metadata !DIExpression()), !dbg !362
  tail call void @llvm.dbg.value(metadata i32 0, metadata !74, metadata !DIExpression()), !dbg !178
  %379 = icmp sgt i32 %4, 0, !dbg !363
  br i1 %379, label %380, label %481, !dbg !364

380:                                              ; preds = %378
  %381 = icmp sgt i32 %7, 0, !dbg !365
  %382 = sub nsw i32 1, %4, !dbg !365
  %383 = mul i32 %382, %7, !dbg !365
  %384 = select i1 %381, i32 0, i32 %383, !dbg !365
  tail call void @llvm.dbg.value(metadata i32 %384, metadata !152, metadata !DIExpression()), !dbg !362
  %385 = sitofp i32 %10 to double
  %386 = zext i32 %7 to i64, !dbg !364
  %387 = zext i32 %384 to i64, !dbg !364
  br label %388, !dbg !364

388:                                              ; preds = %468, %380
  %389 = phi i64 [ %387, %380 ], [ %478, %468 ]
  %390 = phi i32 [ %384, %380 ], [ %392, %468 ]
  %391 = phi i32 [ 0, %380 ], [ %394, %468 ]
  %392 = add i32 %390, %7, !dbg !364
  tail call void @llvm.dbg.value(metadata i32 %391, metadata !74, metadata !DIExpression()), !dbg !178
  tail call void @llvm.dbg.value(metadata i64 %389, metadata !152, metadata !DIExpression()), !dbg !362
  %393 = zext i32 %392 to i64, !dbg !366
  %394 = add nuw nsw i32 %391, 1, !dbg !366
  tail call void @llvm.dbg.value(metadata double poison, metadata !155, metadata !DIExpression()), !dbg !367
  tail call void @llvm.dbg.value(metadata double poison, metadata !159, metadata !DIExpression()), !dbg !367
  br i1 %12, label %395, label %420, !dbg !368

395:                                              ; preds = %388
  %396 = add nuw i32 %391, 3, !dbg !366
  %397 = mul i32 %396, %391, !dbg !366
  %398 = or i32 %397, 1, !dbg !369
  %399 = sext i32 %398 to i64, !dbg !369
  %400 = getelementptr inbounds double, ptr %5, i64 %399, !dbg !369
  %401 = load double, ptr %400, align 8, !dbg !369, !tbaa !209
  %402 = fmul double %401, %385, !dbg !370
  tail call void @llvm.dbg.value(metadata double %402, metadata !159, metadata !DIExpression()), !dbg !367
  %403 = and i32 %397, -2, !dbg !366
  %404 = sext i32 %403 to i64, !dbg !366
  %405 = getelementptr inbounds double, ptr %5, i64 %404, !dbg !366
  %406 = load double, ptr %405, align 8, !dbg !366, !tbaa !209
  tail call void @llvm.dbg.value(metadata double %406, metadata !155, metadata !DIExpression()), !dbg !367
  %407 = trunc i64 %389 to i32, !dbg !371
  %408 = shl nsw i32 %407, 1, !dbg !371
  %409 = sext i32 %408 to i64, !dbg !371
  %410 = getelementptr inbounds double, ptr %6, i64 %409, !dbg !371
  %411 = load double, ptr %410, align 8, !dbg !371, !tbaa !209
  tail call void @llvm.dbg.value(metadata double %411, metadata !162, metadata !DIExpression()), !dbg !372
  %412 = or disjoint i32 %408, 1, !dbg !373
  %413 = sext i32 %412 to i64, !dbg !373
  %414 = getelementptr inbounds double, ptr %6, i64 %413, !dbg !373
  %415 = load double, ptr %414, align 8, !dbg !373, !tbaa !209
  tail call void @llvm.dbg.value(metadata double %415, metadata !165, metadata !DIExpression()), !dbg !372
  %416 = fmul double %406, %411, !dbg !374
  %417 = fmul double %402, %415, !dbg !375
  %handler_result18 = call double @fSubHandlerDouble(double %416, double %417), !dbg !376
  tail call void @llvm.dbg.value(metadata double %handler_result18, metadata !160, metadata !DIExpression()), !dbg !367
  %418 = fmul double %406, %415, !dbg !376
  %419 = fmul double %402, %411, !dbg !377
  %handler_result19 = call double @fAddHandlerDouble(double %419, double %418), !dbg !378
  tail call void @llvm.dbg.value(metadata double %handler_result19, metadata !161, metadata !DIExpression()), !dbg !367
  br label %430, !dbg !378

420:                                              ; preds = %388
  %421 = trunc i64 %389 to i32, !dbg !379
  %422 = shl nsw i32 %421, 1, !dbg !379
  %423 = sext i32 %422 to i64, !dbg !379
  %424 = getelementptr inbounds double, ptr %6, i64 %423, !dbg !379
  %425 = load double, ptr %424, align 8, !dbg !379, !tbaa !209
  tail call void @llvm.dbg.value(metadata double %425, metadata !160, metadata !DIExpression()), !dbg !367
  %426 = or disjoint i32 %422, 1, !dbg !381
  %427 = sext i32 %426 to i64, !dbg !381
  %428 = getelementptr inbounds double, ptr %6, i64 %427, !dbg !381
  %429 = load double, ptr %428, align 8, !dbg !381, !tbaa !209
  tail call void @llvm.dbg.value(metadata double %429, metadata !161, metadata !DIExpression()), !dbg !367
  br label %430

430:                                              ; preds = %420, %395
  %431 = phi double [ %handler_result18, %395 ], [ %425, %420 ], !dbg !382
  %432 = phi double [ %handler_result19, %395 ], [ %429, %420 ], !dbg !382
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 poison, i32 poison, i32 poison), metadata !166, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !383
  tail call void @llvm.dbg.value(metadata i32 %394, metadata !77, metadata !DIExpression()), !dbg !178
  tail call void @llvm.dbg.value(metadata double %432, metadata !161, metadata !DIExpression()), !dbg !367
  tail call void @llvm.dbg.value(metadata double %431, metadata !160, metadata !DIExpression()), !dbg !367
  %433 = icmp slt i32 %394, %4, !dbg !384
  br i1 %433, label %434, label %468, !dbg !385

434:                                              ; preds = %430
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 poison, i32 poison, i32 poison), metadata !166, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !383
  %435 = shl nuw i32 %391, 1
  br label %436, !dbg !385

436:                                              ; preds = %436, %434
  %437 = phi i64 [ %393, %434 ], [ %466, %436 ]
  %438 = phi i32 [ %394, %434 ], [ %450, %436 ]
  %439 = phi double [ %432, %434 ], [ %handler_result23, %436 ]
  %440 = phi double [ %431, %434 ], [ %handler_result21, %436 ]
  tail call void @llvm.dbg.value(metadata i32 %438, metadata !77, metadata !DIExpression()), !dbg !178
  tail call void @llvm.dbg.value(metadata i64 %437, metadata !166, metadata !DIExpression()), !dbg !383
  tail call void @llvm.dbg.value(metadata double %439, metadata !161, metadata !DIExpression()), !dbg !367
  tail call void @llvm.dbg.value(metadata double %440, metadata !160, metadata !DIExpression()), !dbg !367
  %441 = trunc i64 %437 to i32, !dbg !386
  %442 = shl nsw i32 %441, 1, !dbg !386
  %443 = sext i32 %442 to i64, !dbg !386
  %444 = getelementptr inbounds double, ptr %6, i64 %443, !dbg !386
  %445 = load double, ptr %444, align 8, !dbg !386, !tbaa !209
  tail call void @llvm.dbg.value(metadata double %445, metadata !168, metadata !DIExpression()), !dbg !387
  %446 = or disjoint i32 %442, 1, !dbg !388
  %447 = sext i32 %446 to i64, !dbg !388
  %448 = getelementptr inbounds double, ptr %6, i64 %447, !dbg !388
  %449 = load double, ptr %448, align 8, !dbg !388, !tbaa !209
  tail call void @llvm.dbg.value(metadata double %449, metadata !172, metadata !DIExpression()), !dbg !387
  %450 = add nuw nsw i32 %438, 1, !dbg !389
  %451 = mul nsw i32 %450, %438, !dbg !389
  %452 = add i32 %451, %435, !dbg !389
  %453 = and i32 %452, -2, !dbg !389
  %454 = sext i32 %453 to i64, !dbg !389
  %455 = getelementptr inbounds double, ptr %5, i64 %454, !dbg !389
  %456 = load double, ptr %455, align 8, !dbg !389, !tbaa !209
  tail call void @llvm.dbg.value(metadata double %456, metadata !173, metadata !DIExpression()), !dbg !387
  %457 = or i32 %452, 1, !dbg !390
  %458 = sext i32 %457 to i64, !dbg !390
  %459 = getelementptr inbounds double, ptr %5, i64 %458, !dbg !390
  %460 = load double, ptr %459, align 8, !dbg !390, !tbaa !209
  %461 = fmul double %460, %385, !dbg !391
  tail call void @llvm.dbg.value(metadata double %461, metadata !174, metadata !DIExpression()), !dbg !387
  %462 = fmul double %445, %456, !dbg !392
  %463 = fmul double %449, %461, !dbg !393
  %handler_result20 = call double @fSubHandlerDouble(double %462, double %463), !dbg !394
  %handler_result21 = call double @fAddHandlerDouble(double %440, double %handler_result20), !dbg !395
  tail call void @llvm.dbg.value(metadata double %handler_result21, metadata !160, metadata !DIExpression()), !dbg !367
  %464 = fmul double %449, %456, !dbg !395
  %465 = fmul double %445, %461, !dbg !396
  %handler_result22 = call double @fAddHandlerDouble(double %464, double %465), !dbg !397
  %handler_result23 = call double @fAddHandlerDouble(double %439, double %handler_result22), !dbg !398
  tail call void @llvm.dbg.value(metadata double %handler_result23, metadata !161, metadata !DIExpression()), !dbg !367
  %466 = add i64 %437, %386, !dbg !398
  tail call void @llvm.dbg.value(metadata i32 %450, metadata !77, metadata !DIExpression()), !dbg !178
  tail call void @llvm.dbg.value(metadata i64 %466, metadata !166, metadata !DIExpression()), !dbg !383
  %467 = icmp eq i32 %450, %4, !dbg !384
  br i1 %467, label %468, label %436, !dbg !385, !llvm.loop !399

468:                                              ; preds = %436, %430
  %469 = phi double [ %431, %430 ], [ %handler_result21, %436 ], !dbg !367
  %470 = phi double [ %432, %430 ], [ %handler_result23, %436 ], !dbg !367
  %471 = trunc i64 %389 to i32, !dbg !401
  %472 = shl nsw i32 %471, 1, !dbg !401
  %473 = sext i32 %472 to i64, !dbg !401
  %474 = getelementptr inbounds double, ptr %6, i64 %473, !dbg !401
  store double %469, ptr %474, align 8, !dbg !402, !tbaa !209
  %475 = or disjoint i32 %472, 1, !dbg !403
  %476 = sext i32 %475 to i64, !dbg !403
  %477 = getelementptr inbounds double, ptr %6, i64 %476, !dbg !403
  store double %470, ptr %477, align 8, !dbg !404, !tbaa !209
  %478 = add i64 %389, %386, !dbg !405
  tail call void @llvm.dbg.value(metadata i32 %394, metadata !74, metadata !DIExpression()), !dbg !178
  tail call void @llvm.dbg.value(metadata i64 %478, metadata !152, metadata !DIExpression()), !dbg !362
  %479 = icmp eq i32 %394, %4, !dbg !363
  br i1 %479, label %481, label %388, !dbg !364, !llvm.loop !406

480:                                              ; preds = %374
  tail call void (i32, ptr, ptr, ...) @cblas_xerbla(i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #3, !dbg !408
  br label %481

481:                                              ; preds = %480, %468, %378, %363, %265, %248, %157, %139, %43
  ret void, !dbg !410
}

declare !dbg !412 void @cblas_xerbla(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

declare double @fSubHandlerDouble(double, double)

declare double @fAddHandlerDouble(double, double)

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!17}
!llvm.module.flags = !{!45, !46, !47, !48, !49, !50, !51}
!llvm.ident = !{!52}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 26, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "./source_tpmv_c.h", directory: "/PI-detector/external/gsl/gsl-2.5/cblas", checksumkind: CSK_MD5, checksum: "7d71dfeba98c2e60a52df87a06cac056")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 18)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 26, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 1)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 172, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 23)
!17 = distinct !DICompileUnit(language: DW_LANG_C11, file: !18, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !19, retainedTypes: !39, globals: !44, splitDebugInlining: false, nameTableKind: None)
!18 = !DIFile(filename: "ztpmv.c", directory: "/PI-detector/external/gsl/gsl-2.5/cblas", checksumkind: CSK_MD5, checksum: "b657ac694c5095ec3f4d0c67e1966f9c")
!19 = !{!20, !26, !30, !35}
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
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "CBLAS_DIAG", file: !21, line: 49, baseType: !22, size: 32, elements: !36)
!36 = !{!37, !38}
!37 = !DIEnumerator(name: "CblasNonUnit", value: 131)
!38 = !DIEnumerator(name: "CblasUnit", value: 132)
!39 = !{!40, !43}
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!42 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!44 = !{!0, !7, !12}
!45 = !{i32 7, !"Dwarf Version", i32 5}
!46 = !{i32 2, !"Debug Info Version", i32 3}
!47 = !{i32 1, !"wchar_size", i32 4}
!48 = !{i32 8, !"PIC Level", i32 2}
!49 = !{i32 7, !"PIE Level", i32 2}
!50 = !{i32 7, !"uwtable", i32 2}
!51 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!52 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!53 = distinct !DISubprogram(name: "cblas_ztpmv", scope: !18, file: !18, line: 7, type: !54, scopeLine: 10, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !65)
!54 = !DISubroutineType(types: !55)
!55 = !{null, !56, !57, !58, !59, !60, !62, !64, !60}
!56 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!57 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !26)
!58 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!59 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!60 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !61)
!61 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!65 = !{!66, !67, !68, !69, !70, !71, !72, !73, !74, !77, !78, !79, !80, !81, !83, !86, !90, !91, !92, !93, !96, !97, !99, !103, !104, !105, !106, !109, !113, !114, !115, !116, !119, !120, !122, !126, !127, !128, !129, !132, !136, !137, !138, !139, !142, !143, !145, !149, !150, !151, !152, !155, !159, !160, !161, !162, !165, !166, !168, !172, !173, !174}
!66 = !DILocalVariable(name: "order", arg: 1, scope: !53, file: !18, line: 7, type: !56)
!67 = !DILocalVariable(name: "Uplo", arg: 2, scope: !53, file: !18, line: 7, type: !57)
!68 = !DILocalVariable(name: "TransA", arg: 3, scope: !53, file: !18, line: 8, type: !58)
!69 = !DILocalVariable(name: "Diag", arg: 4, scope: !53, file: !18, line: 8, type: !59)
!70 = !DILocalVariable(name: "N", arg: 5, scope: !53, file: !18, line: 9, type: !60)
!71 = !DILocalVariable(name: "Ap", arg: 6, scope: !53, file: !18, line: 9, type: !62)
!72 = !DILocalVariable(name: "X", arg: 7, scope: !53, file: !18, line: 9, type: !64)
!73 = !DILocalVariable(name: "incX", arg: 8, scope: !53, file: !18, line: 9, type: !60)
!74 = !DILocalVariable(name: "i", scope: !75, file: !2, line: 21, type: !61)
!75 = distinct !DILexicalBlock(scope: !76, file: !2, line: 20, column: 1)
!76 = !DILexicalBlockFile(scope: !53, file: !2, discriminator: 0)
!77 = !DILocalVariable(name: "j", scope: !75, file: !2, line: 21, type: !61)
!78 = !DILocalVariable(name: "conj", scope: !75, file: !2, line: 22, type: !60)
!79 = !DILocalVariable(name: "Trans", scope: !75, file: !2, line: 23, type: !60)
!80 = !DILocalVariable(name: "nonunit", scope: !75, file: !2, line: 24, type: !60)
!81 = !DILocalVariable(name: "pos", scope: !82, file: !2, line: 26, type: !61)
!82 = distinct !DILexicalBlock(scope: !75, file: !2, line: 26, column: 3)
!83 = !DILocalVariable(name: "ix", scope: !84, file: !2, line: 32, type: !61)
!84 = distinct !DILexicalBlock(scope: !85, file: !2, line: 29, column: 81)
!85 = distinct !DILexicalBlock(scope: !75, file: !2, line: 28, column: 7)
!86 = !DILocalVariable(name: "Aii_real", scope: !87, file: !2, line: 34, type: !41)
!87 = distinct !DILexicalBlock(scope: !88, file: !2, line: 33, column: 29)
!88 = distinct !DILexicalBlock(scope: !89, file: !2, line: 33, column: 5)
!89 = distinct !DILexicalBlock(scope: !84, file: !2, line: 33, column: 5)
!90 = !DILocalVariable(name: "Aii_imag", scope: !87, file: !2, line: 35, type: !41)
!91 = !DILocalVariable(name: "temp_r", scope: !87, file: !2, line: 36, type: !42)
!92 = !DILocalVariable(name: "temp_i", scope: !87, file: !2, line: 37, type: !42)
!93 = !DILocalVariable(name: "x_real", scope: !94, file: !2, line: 39, type: !42)
!94 = distinct !DILexicalBlock(scope: !95, file: !2, line: 38, column: 20)
!95 = distinct !DILexicalBlock(scope: !87, file: !2, line: 38, column: 11)
!96 = !DILocalVariable(name: "x_imag", scope: !94, file: !2, line: 40, type: !42)
!97 = !DILocalVariable(name: "jx", scope: !98, file: !2, line: 49, type: !61)
!98 = distinct !DILexicalBlock(scope: !87, file: !2, line: 48, column: 7)
!99 = !DILocalVariable(name: "Aij_real", scope: !100, file: !2, line: 51, type: !41)
!100 = distinct !DILexicalBlock(scope: !101, file: !2, line: 50, column: 37)
!101 = distinct !DILexicalBlock(scope: !102, file: !2, line: 50, column: 9)
!102 = distinct !DILexicalBlock(scope: !98, file: !2, line: 50, column: 9)
!103 = !DILocalVariable(name: "Aij_imag", scope: !100, file: !2, line: 52, type: !41)
!104 = !DILocalVariable(name: "x_real", scope: !100, file: !2, line: 53, type: !42)
!105 = !DILocalVariable(name: "x_imag", scope: !100, file: !2, line: 54, type: !42)
!106 = !DILocalVariable(name: "ix", scope: !107, file: !2, line: 68, type: !61)
!107 = distinct !DILexicalBlock(scope: !108, file: !2, line: 66, column: 88)
!108 = distinct !DILexicalBlock(scope: !85, file: !2, line: 65, column: 14)
!109 = !DILocalVariable(name: "Aii_real", scope: !110, file: !2, line: 70, type: !41)
!110 = distinct !DILexicalBlock(scope: !111, file: !2, line: 69, column: 32)
!111 = distinct !DILexicalBlock(scope: !112, file: !2, line: 69, column: 5)
!112 = distinct !DILexicalBlock(scope: !107, file: !2, line: 69, column: 5)
!113 = !DILocalVariable(name: "Aii_imag", scope: !110, file: !2, line: 71, type: !41)
!114 = !DILocalVariable(name: "temp_r", scope: !110, file: !2, line: 72, type: !42)
!115 = !DILocalVariable(name: "temp_i", scope: !110, file: !2, line: 73, type: !42)
!116 = !DILocalVariable(name: "x_real", scope: !117, file: !2, line: 75, type: !42)
!117 = distinct !DILexicalBlock(scope: !118, file: !2, line: 74, column: 20)
!118 = distinct !DILexicalBlock(scope: !110, file: !2, line: 74, column: 11)
!119 = !DILocalVariable(name: "x_imag", scope: !117, file: !2, line: 76, type: !42)
!120 = !DILocalVariable(name: "jx", scope: !121, file: !2, line: 85, type: !61)
!121 = distinct !DILexicalBlock(scope: !110, file: !2, line: 84, column: 7)
!122 = !DILocalVariable(name: "Aij_real", scope: !123, file: !2, line: 87, type: !41)
!123 = distinct !DILexicalBlock(scope: !124, file: !2, line: 86, column: 33)
!124 = distinct !DILexicalBlock(scope: !125, file: !2, line: 86, column: 9)
!125 = distinct !DILexicalBlock(scope: !121, file: !2, line: 86, column: 9)
!126 = !DILocalVariable(name: "Aij_imag", scope: !123, file: !2, line: 88, type: !41)
!127 = !DILocalVariable(name: "x_real", scope: !123, file: !2, line: 89, type: !42)
!128 = !DILocalVariable(name: "x_imag", scope: !123, file: !2, line: 90, type: !42)
!129 = !DILocalVariable(name: "ix", scope: !130, file: !2, line: 105, type: !61)
!130 = distinct !DILexicalBlock(scope: !131, file: !2, line: 102, column: 90)
!131 = distinct !DILexicalBlock(scope: !108, file: !2, line: 101, column: 14)
!132 = !DILocalVariable(name: "Aii_real", scope: !133, file: !2, line: 107, type: !41)
!133 = distinct !DILexicalBlock(scope: !134, file: !2, line: 106, column: 32)
!134 = distinct !DILexicalBlock(scope: !135, file: !2, line: 106, column: 5)
!135 = distinct !DILexicalBlock(scope: !130, file: !2, line: 106, column: 5)
!136 = !DILocalVariable(name: "Aii_imag", scope: !133, file: !2, line: 108, type: !41)
!137 = !DILocalVariable(name: "temp_r", scope: !133, file: !2, line: 109, type: !42)
!138 = !DILocalVariable(name: "temp_i", scope: !133, file: !2, line: 110, type: !42)
!139 = !DILocalVariable(name: "x_real", scope: !140, file: !2, line: 112, type: !42)
!140 = distinct !DILexicalBlock(scope: !141, file: !2, line: 111, column: 20)
!141 = distinct !DILexicalBlock(scope: !133, file: !2, line: 111, column: 11)
!142 = !DILocalVariable(name: "x_imag", scope: !140, file: !2, line: 113, type: !42)
!143 = !DILocalVariable(name: "jx", scope: !144, file: !2, line: 121, type: !61)
!144 = distinct !DILexicalBlock(scope: !133, file: !2, line: 120, column: 7)
!145 = !DILocalVariable(name: "x_real", scope: !146, file: !2, line: 123, type: !42)
!146 = distinct !DILexicalBlock(scope: !147, file: !2, line: 122, column: 33)
!147 = distinct !DILexicalBlock(scope: !148, file: !2, line: 122, column: 9)
!148 = distinct !DILexicalBlock(scope: !144, file: !2, line: 122, column: 9)
!149 = !DILocalVariable(name: "x_imag", scope: !146, file: !2, line: 124, type: !42)
!150 = !DILocalVariable(name: "Aji_real", scope: !146, file: !2, line: 125, type: !41)
!151 = !DILocalVariable(name: "Aji_imag", scope: !146, file: !2, line: 126, type: !41)
!152 = !DILocalVariable(name: "ix", scope: !153, file: !2, line: 140, type: !61)
!153 = distinct !DILexicalBlock(scope: !154, file: !2, line: 138, column: 90)
!154 = distinct !DILexicalBlock(scope: !131, file: !2, line: 137, column: 14)
!155 = !DILocalVariable(name: "Aii_real", scope: !156, file: !2, line: 142, type: !41)
!156 = distinct !DILexicalBlock(scope: !157, file: !2, line: 141, column: 29)
!157 = distinct !DILexicalBlock(scope: !158, file: !2, line: 141, column: 5)
!158 = distinct !DILexicalBlock(scope: !153, file: !2, line: 141, column: 5)
!159 = !DILocalVariable(name: "Aii_imag", scope: !156, file: !2, line: 143, type: !41)
!160 = !DILocalVariable(name: "temp_r", scope: !156, file: !2, line: 144, type: !42)
!161 = !DILocalVariable(name: "temp_i", scope: !156, file: !2, line: 145, type: !42)
!162 = !DILocalVariable(name: "x_real", scope: !163, file: !2, line: 147, type: !42)
!163 = distinct !DILexicalBlock(scope: !164, file: !2, line: 146, column: 20)
!164 = distinct !DILexicalBlock(scope: !156, file: !2, line: 146, column: 11)
!165 = !DILocalVariable(name: "x_imag", scope: !163, file: !2, line: 148, type: !42)
!166 = !DILocalVariable(name: "jx", scope: !167, file: !2, line: 156, type: !61)
!167 = distinct !DILexicalBlock(scope: !156, file: !2, line: 155, column: 7)
!168 = !DILocalVariable(name: "x_real", scope: !169, file: !2, line: 158, type: !42)
!169 = distinct !DILexicalBlock(scope: !170, file: !2, line: 157, column: 37)
!170 = distinct !DILexicalBlock(scope: !171, file: !2, line: 157, column: 9)
!171 = distinct !DILexicalBlock(scope: !167, file: !2, line: 157, column: 9)
!172 = !DILocalVariable(name: "x_imag", scope: !169, file: !2, line: 159, type: !42)
!173 = !DILocalVariable(name: "Aji_real", scope: !169, file: !2, line: 160, type: !41)
!174 = !DILocalVariable(name: "Aji_imag", scope: !169, file: !2, line: 161, type: !41)
!175 = !DILocation(line: 0, scope: !53)
!176 = !DILocation(line: 22, column: 28, scope: !75)
!177 = !DILocation(line: 22, column: 20, scope: !75)
!178 = !DILocation(line: 0, scope: !75)
!179 = !DILocation(line: 23, column: 21, scope: !75)
!180 = !DILocation(line: 24, column: 29, scope: !75)
!181 = !DILocation(line: 0, scope: !82)
!182 = !DILocation(line: 26, column: 3, scope: !183)
!183 = distinct !DILexicalBlock(scope: !82, file: !2, line: 26, column: 3)
!184 = !DILocation(line: 26, column: 3, scope: !185)
!185 = distinct !DILexicalBlock(scope: !82, file: !2, line: 26, column: 3)
!186 = !DILocation(line: 26, column: 3, scope: !187)
!187 = distinct !DILexicalBlock(scope: !82, file: !2, line: 26, column: 3)
!188 = !DILocation(line: 26, column: 3, scope: !189)
!189 = distinct !DILexicalBlock(scope: !82, file: !2, line: 26, column: 3)
!190 = !DILocation(line: 26, column: 3, scope: !191)
!191 = distinct !DILexicalBlock(scope: !82, file: !2, line: 26, column: 3)
!192 = !DILocation(line: 26, column: 3, scope: !82)
!193 = !DILocation(line: 26, column: 3, scope: !194)
!194 = distinct !DILexicalBlock(scope: !82, file: !2, line: 26, column: 3)
!195 = !DILocation(line: 26, column: 3, scope: !196)
!196 = distinct !DILexicalBlock(scope: !82, file: !2, line: 26, column: 3)
!197 = !DILocation(line: 28, column: 14, scope: !85)
!198 = !DILocation(line: 28, column: 31, scope: !85)
!199 = !DILocation(line: 29, column: 17, scope: !85)
!200 = !DILocation(line: 29, column: 34, scope: !85)
!201 = !DILocation(line: 0, scope: !84)
!202 = !DILocation(line: 33, column: 19, scope: !88)
!203 = !DILocation(line: 33, column: 5, scope: !89)
!204 = !DILocation(line: 32, column: 16, scope: !84)
!205 = !DILocation(line: 34, column: 29, scope: !87)
!206 = !DILocation(line: 0, scope: !87)
!207 = !DILocation(line: 38, column: 11, scope: !87)
!208 = !DILocation(line: 35, column: 36, scope: !87)
!209 = !{!210, !210, i64 0}
!210 = !{!"double", !211, i64 0}
!211 = !{!"omnipotent char", !212, i64 0}
!212 = !{!"Simple C/C++ TBAA"}
!213 = !DILocation(line: 35, column: 34, scope: !87)
!214 = !DILocation(line: 39, column: 23, scope: !94)
!215 = !DILocation(line: 0, scope: !94)
!216 = !DILocation(line: 40, column: 23, scope: !94)
!217 = !DILocation(line: 41, column: 27, scope: !94)
!218 = !DILocation(line: 41, column: 47, scope: !94)
!219 = !DILocation(line: 42, column: 27, scope: !94)
!220 = !DILocation(line: 42, column: 47, scope: !94)
!221 = !DILocation(line: 43, column: 7, scope: !94)
!222 = !DILocation(line: 44, column: 18, scope: !223)
!223 = distinct !DILexicalBlock(scope: !95, file: !2, line: 43, column: 14)
!224 = !DILocation(line: 45, column: 18, scope: !223)
!225 = !DILocation(line: 0, scope: !95)
!226 = !DILocation(line: 49, column: 41, scope: !98)
!227 = !DILocation(line: 0, scope: !98)
!228 = !DILocation(line: 50, column: 27, scope: !101)
!229 = !DILocation(line: 50, column: 9, scope: !102)
!230 = !DILocation(line: 51, column: 33, scope: !100)
!231 = !DILocation(line: 0, scope: !100)
!232 = !DILocation(line: 52, column: 40, scope: !100)
!233 = !DILocation(line: 52, column: 38, scope: !100)
!234 = !DILocation(line: 53, column: 25, scope: !100)
!235 = !DILocation(line: 54, column: 25, scope: !100)
!236 = !DILocation(line: 55, column: 30, scope: !100)
!237 = !DILocation(line: 55, column: 50, scope: !100)
!238 = !DILocation(line: 55, column: 18, scope: !100)
!239 = !DILocation(line: 56, column: 30, scope: !100)
!240 = !DILocation(line: 56, column: 50, scope: !100)
!241 = !DILocation(line: 56, column: 18, scope: !100)
!242 = !DILocation(line: 57, column: 14, scope: !100)
!243 = !DILocation(line: 50, column: 33, scope: !101)
!244 = distinct !{!244, !229, !245, !246}
!245 = !DILocation(line: 58, column: 9, scope: !102)
!246 = !{!"llvm.loop.mustprogress"}
!247 = !DILocation(line: 61, column: 7, scope: !87)
!248 = !DILocation(line: 61, column: 19, scope: !87)
!249 = !DILocation(line: 62, column: 7, scope: !87)
!250 = !DILocation(line: 62, column: 19, scope: !87)
!251 = !DILocation(line: 63, column: 10, scope: !87)
!252 = distinct !{!252, !203, !253, !246}
!253 = !DILocation(line: 64, column: 5, scope: !89)
!254 = !DILocation(line: 65, column: 38, scope: !108)
!255 = !DILocation(line: 0, scope: !107)
!256 = !DILocation(line: 69, column: 19, scope: !111)
!257 = !DILocation(line: 69, column: 23, scope: !111)
!258 = !DILocation(line: 68, column: 16, scope: !107)
!259 = !DILocation(line: 68, column: 44, scope: !107)
!260 = !DILocation(line: 68, column: 39, scope: !107)
!261 = !DILocation(line: 68, column: 32, scope: !107)
!262 = !DILocation(line: 69, column: 27, scope: !111)
!263 = !DILocation(line: 70, column: 29, scope: !110)
!264 = !DILocation(line: 0, scope: !110)
!265 = !DILocation(line: 74, column: 11, scope: !110)
!266 = !DILocation(line: 71, column: 36, scope: !110)
!267 = !DILocation(line: 71, column: 34, scope: !110)
!268 = !DILocation(line: 75, column: 23, scope: !117)
!269 = !DILocation(line: 0, scope: !117)
!270 = !DILocation(line: 76, column: 23, scope: !117)
!271 = !DILocation(line: 77, column: 27, scope: !117)
!272 = !DILocation(line: 77, column: 47, scope: !117)
!273 = !DILocation(line: 78, column: 27, scope: !117)
!274 = !DILocation(line: 78, column: 47, scope: !117)
!275 = !DILocation(line: 79, column: 7, scope: !117)
!276 = !DILocation(line: 80, column: 18, scope: !277)
!277 = distinct !DILexicalBlock(scope: !118, file: !2, line: 79, column: 14)
!278 = !DILocation(line: 81, column: 18, scope: !277)
!279 = !DILocation(line: 0, scope: !118)
!280 = !DILocation(line: 0, scope: !121)
!281 = !DILocation(line: 86, column: 23, scope: !124)
!282 = !DILocation(line: 86, column: 9, scope: !125)
!283 = !DILocation(line: 87, column: 33, scope: !123)
!284 = !DILocation(line: 0, scope: !123)
!285 = !DILocation(line: 88, column: 40, scope: !123)
!286 = !DILocation(line: 88, column: 38, scope: !123)
!287 = !DILocation(line: 89, column: 25, scope: !123)
!288 = !DILocation(line: 90, column: 25, scope: !123)
!289 = !DILocation(line: 91, column: 30, scope: !123)
!290 = !DILocation(line: 91, column: 50, scope: !123)
!291 = !DILocation(line: 91, column: 18, scope: !123)
!292 = !DILocation(line: 92, column: 30, scope: !123)
!293 = !DILocation(line: 92, column: 50, scope: !123)
!294 = !DILocation(line: 92, column: 18, scope: !123)
!295 = !DILocation(line: 93, column: 14, scope: !123)
!296 = !DILocation(line: 86, column: 29, scope: !124)
!297 = distinct !{!297, !282, !298, !246}
!298 = !DILocation(line: 94, column: 9, scope: !125)
!299 = !DILocation(line: 97, column: 7, scope: !110)
!300 = !DILocation(line: 97, column: 19, scope: !110)
!301 = !DILocation(line: 98, column: 7, scope: !110)
!302 = !DILocation(line: 98, column: 19, scope: !110)
!303 = !DILocation(line: 99, column: 10, scope: !110)
!304 = distinct !{!304, !305, !306, !246}
!305 = !DILocation(line: 69, column: 5, scope: !112)
!306 = !DILocation(line: 100, column: 5, scope: !112)
!307 = !DILocation(line: 101, column: 38, scope: !131)
!308 = !DILocation(line: 102, column: 41, scope: !131)
!309 = !DILocation(line: 0, scope: !130)
!310 = !DILocation(line: 106, column: 19, scope: !134)
!311 = !DILocation(line: 106, column: 23, scope: !134)
!312 = !DILocation(line: 105, column: 16, scope: !130)
!313 = !DILocation(line: 105, column: 44, scope: !130)
!314 = !DILocation(line: 105, column: 39, scope: !130)
!315 = !DILocation(line: 105, column: 32, scope: !130)
!316 = !DILocation(line: 106, column: 27, scope: !134)
!317 = !DILocation(line: 0, scope: !133)
!318 = !DILocation(line: 111, column: 11, scope: !133)
!319 = !DILocation(line: 107, column: 29, scope: !133)
!320 = !DILocation(line: 108, column: 36, scope: !133)
!321 = !DILocation(line: 108, column: 34, scope: !133)
!322 = !DILocation(line: 112, column: 23, scope: !140)
!323 = !DILocation(line: 0, scope: !140)
!324 = !DILocation(line: 113, column: 23, scope: !140)
!325 = !DILocation(line: 114, column: 27, scope: !140)
!326 = !DILocation(line: 114, column: 47, scope: !140)
!327 = !DILocation(line: 115, column: 27, scope: !140)
!328 = !DILocation(line: 115, column: 47, scope: !140)
!329 = !DILocation(line: 116, column: 7, scope: !140)
!330 = !DILocation(line: 117, column: 18, scope: !331)
!331 = distinct !DILexicalBlock(scope: !141, file: !2, line: 116, column: 14)
!332 = !DILocation(line: 118, column: 18, scope: !331)
!333 = !DILocation(line: 0, scope: !141)
!334 = !DILocation(line: 0, scope: !144)
!335 = !DILocation(line: 122, column: 23, scope: !147)
!336 = !DILocation(line: 122, column: 9, scope: !148)
!337 = !DILocation(line: 123, column: 25, scope: !146)
!338 = !DILocation(line: 0, scope: !146)
!339 = !DILocation(line: 124, column: 25, scope: !146)
!340 = !DILocation(line: 125, column: 33, scope: !146)
!341 = !DILocation(line: 126, column: 40, scope: !146)
!342 = !DILocation(line: 126, column: 38, scope: !146)
!343 = !DILocation(line: 127, column: 30, scope: !146)
!344 = !DILocation(line: 127, column: 50, scope: !146)
!345 = !DILocation(line: 127, column: 18, scope: !146)
!346 = !DILocation(line: 128, column: 30, scope: !146)
!347 = !DILocation(line: 128, column: 50, scope: !146)
!348 = !DILocation(line: 128, column: 18, scope: !146)
!349 = !DILocation(line: 129, column: 14, scope: !146)
!350 = !DILocation(line: 122, column: 29, scope: !147)
!351 = distinct !{!351, !336, !352, !246}
!352 = !DILocation(line: 130, column: 9, scope: !148)
!353 = !DILocation(line: 133, column: 7, scope: !133)
!354 = !DILocation(line: 133, column: 19, scope: !133)
!355 = !DILocation(line: 134, column: 7, scope: !133)
!356 = !DILocation(line: 134, column: 19, scope: !133)
!357 = !DILocation(line: 135, column: 10, scope: !133)
!358 = distinct !{!358, !359, !360, !246}
!359 = !DILocation(line: 106, column: 5, scope: !135)
!360 = !DILocation(line: 136, column: 5, scope: !135)
!361 = !DILocation(line: 137, column: 38, scope: !154)
!362 = !DILocation(line: 0, scope: !153)
!363 = !DILocation(line: 141, column: 19, scope: !157)
!364 = !DILocation(line: 141, column: 5, scope: !158)
!365 = !DILocation(line: 140, column: 16, scope: !153)
!366 = !DILocation(line: 142, column: 29, scope: !156)
!367 = !DILocation(line: 0, scope: !156)
!368 = !DILocation(line: 146, column: 11, scope: !156)
!369 = !DILocation(line: 143, column: 36, scope: !156)
!370 = !DILocation(line: 143, column: 34, scope: !156)
!371 = !DILocation(line: 147, column: 23, scope: !163)
!372 = !DILocation(line: 0, scope: !163)
!373 = !DILocation(line: 148, column: 23, scope: !163)
!374 = !DILocation(line: 149, column: 27, scope: !163)
!375 = !DILocation(line: 149, column: 47, scope: !163)
!376 = !DILocation(line: 150, column: 27, scope: !163)
!377 = !DILocation(line: 150, column: 47, scope: !163)
!378 = !DILocation(line: 151, column: 7, scope: !163)
!379 = !DILocation(line: 152, column: 18, scope: !380)
!380 = distinct !DILexicalBlock(scope: !164, file: !2, line: 151, column: 14)
!381 = !DILocation(line: 153, column: 18, scope: !380)
!382 = !DILocation(line: 0, scope: !164)
!383 = !DILocation(line: 0, scope: !167)
!384 = !DILocation(line: 157, column: 27, scope: !170)
!385 = !DILocation(line: 157, column: 9, scope: !171)
!386 = !DILocation(line: 158, column: 25, scope: !169)
!387 = !DILocation(line: 0, scope: !169)
!388 = !DILocation(line: 159, column: 25, scope: !169)
!389 = !DILocation(line: 160, column: 33, scope: !169)
!390 = !DILocation(line: 161, column: 40, scope: !169)
!391 = !DILocation(line: 161, column: 38, scope: !169)
!392 = !DILocation(line: 162, column: 30, scope: !169)
!393 = !DILocation(line: 162, column: 50, scope: !169)
!394 = !DILocation(line: 162, column: 18, scope: !169)
!395 = !DILocation(line: 163, column: 30, scope: !169)
!396 = !DILocation(line: 163, column: 50, scope: !169)
!397 = !DILocation(line: 163, column: 18, scope: !169)
!398 = !DILocation(line: 164, column: 14, scope: !169)
!399 = distinct !{!399, !385, !400, !246}
!400 = !DILocation(line: 165, column: 9, scope: !171)
!401 = !DILocation(line: 167, column: 7, scope: !156)
!402 = !DILocation(line: 167, column: 19, scope: !156)
!403 = !DILocation(line: 168, column: 7, scope: !156)
!404 = !DILocation(line: 168, column: 19, scope: !156)
!405 = !DILocation(line: 169, column: 10, scope: !156)
!406 = distinct !{!406, !364, !407, !246}
!407 = !DILocation(line: 170, column: 5, scope: !158)
!408 = !DILocation(line: 172, column: 5, scope: !409)
!409 = distinct !DILexicalBlock(scope: !154, file: !2, line: 171, column: 10)
!410 = !DILocation(line: 14, column: 1, scope: !411)
!411 = !DILexicalBlockFile(scope: !53, file: !18, discriminator: 0)
!412 = !DISubprogram(name: "cblas_xerbla", scope: !21, file: !21, line: 602, type: !413, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!413 = !DISubroutineType(types: !414)
!414 = !{null, !61, !415, !415, null}
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!416 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
