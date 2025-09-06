; ModuleID = 'ctrmv.ll'
source_filename = "ctrmv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"./source_trmv_c.h\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !7
@.str.2 = private unnamed_addr constant [23 x i8] c"unrecognized operation\00", align 1, !dbg !12

; Function Attrs: nounwind uwtable
define dso_local void @cblas_ctrmv(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef readonly %5, i32 noundef %6, ptr nocapture noundef %7, i32 noundef %8) local_unnamed_addr #0 !dbg !53 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !66, metadata !DIExpression()), !dbg !176
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !67, metadata !DIExpression()), !dbg !176
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !68, metadata !DIExpression()), !dbg !176
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !69, metadata !DIExpression()), !dbg !176
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !70, metadata !DIExpression()), !dbg !176
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !71, metadata !DIExpression()), !dbg !176
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !72, metadata !DIExpression()), !dbg !176
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !73, metadata !DIExpression()), !dbg !176
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !74, metadata !DIExpression()), !dbg !176
  %10 = icmp eq i32 %2, 113, !dbg !177
  %11 = select i1 %10, i32 -1, i32 1, !dbg !178
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !75, metadata !DIExpression()), !dbg !179
  %12 = select i1 %10, i32 112, i32 %2, !dbg !180
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !78, metadata !DIExpression()), !dbg !179
  %13 = icmp eq i32 %3, 131, !dbg !181
  tail call void @llvm.dbg.value(metadata i1 %13, metadata !79, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !179
  tail call void @llvm.dbg.value(metadata i32 0, metadata !82, metadata !DIExpression()), !dbg !182
  %14 = add i32 %0, -103, !dbg !183
  %15 = icmp ult i32 %14, -2, !dbg !183
  %16 = zext i1 %15 to i32, !dbg !183
  tail call void @llvm.dbg.value(metadata i32 %16, metadata !82, metadata !DIExpression()), !dbg !182
  %17 = add i32 %1, -123, !dbg !185
  %18 = icmp ult i32 %17, -2, !dbg !185
  %19 = select i1 %18, i32 2, i32 %16, !dbg !185
  tail call void @llvm.dbg.value(metadata i32 %19, metadata !82, metadata !DIExpression()), !dbg !182
  %20 = add i32 %2, -114, !dbg !187
  %21 = icmp ult i32 %20, -3, !dbg !187
  %22 = select i1 %21, i32 3, i32 %19, !dbg !187
  tail call void @llvm.dbg.value(metadata i32 %22, metadata !82, metadata !DIExpression()), !dbg !182
  %23 = add i32 %3, -133, !dbg !189
  %24 = icmp ult i32 %23, -2, !dbg !189
  %25 = select i1 %24, i32 4, i32 %22, !dbg !189
  tail call void @llvm.dbg.value(metadata i32 %25, metadata !82, metadata !DIExpression()), !dbg !182
  %26 = icmp slt i32 %4, 0, !dbg !191
  %27 = select i1 %26, i32 5, i32 %25, !dbg !193
  tail call void @llvm.dbg.value(metadata i32 %27, metadata !82, metadata !DIExpression()), !dbg !182
  %28 = tail call i32 @llvm.smax.i32(i32 %4, i32 1), !dbg !194
  %29 = icmp sgt i32 %28, %6, !dbg !194
  %30 = select i1 %29, i32 7, i32 %27, !dbg !193
  tail call void @llvm.dbg.value(metadata i32 %30, metadata !82, metadata !DIExpression()), !dbg !182
  %31 = icmp eq i32 %8, 0, !dbg !196
  %32 = select i1 %31, i32 9, i32 %30, !dbg !193
  tail call void @llvm.dbg.value(metadata i32 %32, metadata !82, metadata !DIExpression()), !dbg !182
  %33 = icmp eq i32 %32, 0, !dbg !198
  br i1 %33, label %35, label %34, !dbg !193

34:                                               ; preds = %9
  tail call void (i32, ptr, ptr, ...) @cblas_xerbla(i32 noundef %32, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #3, !dbg !198
  br label %35, !dbg !198

35:                                               ; preds = %34, %9
  %36 = icmp eq i32 %0, 101, !dbg !200
  %37 = icmp eq i32 %12, 111
  %38 = and i1 %36, %37, !dbg !201
  %39 = icmp eq i32 %1, 121
  %40 = and i1 %39, %38, !dbg !201
  br i1 %40, label %47, label %41, !dbg !201

41:                                               ; preds = %35
  %42 = icmp eq i32 %0, 102, !dbg !202
  %43 = icmp eq i32 %12, 112
  %44 = and i1 %42, %43, !dbg !203
  %45 = icmp eq i32 %1, 122
  %46 = and i1 %45, %44, !dbg !203
  br i1 %46, label %47, label %179, !dbg !203

47:                                               ; preds = %41, %35
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !84, metadata !DIExpression()), !dbg !204
  tail call void @llvm.dbg.value(metadata i32 0, metadata !80, metadata !DIExpression()), !dbg !179
  %48 = icmp sgt i32 %4, 0, !dbg !205
  br i1 %48, label %49, label %589, !dbg !206

49:                                               ; preds = %47
  %50 = icmp sgt i32 %8, 0, !dbg !207
  %51 = sub nsw i32 1, %4, !dbg !207
  %52 = mul i32 %51, %8, !dbg !207
  %53 = select i1 %50, i32 0, i32 %52, !dbg !207
  tail call void @llvm.dbg.value(metadata i32 %53, metadata !84, metadata !DIExpression()), !dbg !204
  %54 = sitofp i32 %11 to float
  %55 = shl i32 %6, 1
  %56 = add i32 %55, 2
  %57 = zext i32 %8 to i64, !dbg !206
  %58 = zext nneg i32 %4 to i64, !dbg !206
  %59 = zext i32 %6 to i64, !dbg !206
  %60 = zext i32 %53 to i64, !dbg !206
  %61 = zext nneg i32 %4 to i64, !dbg !205
  br label %62, !dbg !206

62:                                               ; preds = %169, %49
  %63 = phi i64 [ %60, %49 ], [ %176, %169 ]
  %64 = phi i64 [ 0, %49 ], [ %68, %169 ]
  %65 = phi i32 [ %53, %49 ], [ %67, %169 ]
  %66 = phi i64 [ 1, %49 ], [ %177, %169 ]
  %67 = add i32 %65, %8, !dbg !206
  tail call void @llvm.dbg.value(metadata i64 %64, metadata !80, metadata !DIExpression()), !dbg !179
  tail call void @llvm.dbg.value(metadata i64 %63, metadata !84, metadata !DIExpression()), !dbg !204
  tail call void @llvm.dbg.value(metadata float 0.000000e+00, metadata !87, metadata !DIExpression()), !dbg !208
  tail call void @llvm.dbg.value(metadata float 0.000000e+00, metadata !91, metadata !DIExpression()), !dbg !208
  %68 = add nuw nsw i64 %64, 1, !dbg !209
  tail call void @llvm.dbg.value(metadata i64 %68, metadata !92, metadata !DIExpression()), !dbg !208
  tail call void @llvm.dbg.value(metadata !DIArgList(i64 poison, i32 poison, i32 poison), metadata !93, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !208
  tail call void @llvm.dbg.value(metadata i64 %68, metadata !81, metadata !DIExpression()), !dbg !179
  tail call void @llvm.dbg.value(metadata float 0.000000e+00, metadata !87, metadata !DIExpression()), !dbg !208
  tail call void @llvm.dbg.value(metadata float 0.000000e+00, metadata !91, metadata !DIExpression()), !dbg !208
  %69 = icmp ult i64 %68, %58, !dbg !210
  br i1 %69, label %70, label %121, !dbg !211

70:                                               ; preds = %62
  %71 = zext i32 %67 to i64, !dbg !209
  tail call void @llvm.dbg.value(metadata !DIArgList(i64 poison, i32 poison, i32 poison), metadata !93, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !208
  tail call void @llvm.dbg.value(metadata !DIArgList(i64 poison, i32 poison, i32 poison), metadata !93, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !208
  %72 = mul i64 %64, %59
  br label %73, !dbg !211

73:                                               ; preds = %73, %70
  %74 = phi i64 [ %71, %70 ], [ %118, %73 ]
  %75 = phi i64 [ %66, %70 ], [ %119, %73 ]
  %76 = phi float [ 0.000000e+00, %70 ], [ %handler_result1, %73 ]
  %77 = phi float [ 0.000000e+00, %70 ], [ %handler_result3, %73 ]
  tail call void @llvm.dbg.value(metadata i64 %75, metadata !81, metadata !DIExpression()), !dbg !179
  tail call void @llvm.dbg.value(metadata float %76, metadata !87, metadata !DIExpression()), !dbg !208
  tail call void @llvm.dbg.value(metadata float %77, metadata !91, metadata !DIExpression()), !dbg !208
  tail call void @llvm.dbg.value(metadata i64 %74, metadata !93, metadata !DIExpression()), !dbg !208
  %78 = trunc i64 %74 to i32, !dbg !212
  %79 = shl nsw i32 %78, 1, !dbg !212
  %80 = sext i32 %79 to i64, !dbg !212
  %81 = getelementptr inbounds float, ptr %7, i64 %80, !dbg !212
  %82 = load float, ptr %81, align 4, !dbg !212, !tbaa !213
  tail call void @llvm.dbg.value(metadata float %82, metadata !94, metadata !DIExpression()), !dbg !217
  %83 = or disjoint i32 %79, 1, !dbg !218
  %84 = sext i32 %83 to i64, !dbg !218
  %85 = getelementptr inbounds float, ptr %7, i64 %84, !dbg !218
  %86 = load float, ptr %85, align 4, !dbg !218, !tbaa !213
  tail call void @llvm.dbg.value(metadata float %86, metadata !98, metadata !DIExpression()), !dbg !217
  %87 = add i64 %75, %72, !dbg !219
  %88 = trunc i64 %87 to i32, !dbg !219
  %89 = shl nsw i32 %88, 1, !dbg !219
  %90 = sext i32 %89 to i64, !dbg !219
  %91 = getelementptr inbounds float, ptr %5, i64 %90, !dbg !219
  %92 = load float, ptr %91, align 4, !dbg !219, !tbaa !213
  tail call void @llvm.dbg.value(metadata float %92, metadata !99, metadata !DIExpression()), !dbg !217
  %93 = or disjoint i32 %89, 1, !dbg !220
  %94 = sext i32 %93 to i64, !dbg !220
  %95 = getelementptr inbounds float, ptr %5, i64 %94, !dbg !220
  %96 = load float, ptr %95, align 4, !dbg !220, !tbaa !213
  %97 = fmul float %96, %54, !dbg !221
  tail call void @llvm.dbg.value(metadata float %97, metadata !100, metadata !DIExpression()), !dbg !217
  %98 = fmul float %82, %92, !dbg !222
  %99 = fmul float %86, %97, !dbg !223
  %100 = fpext float %98 to double, !dbg !224
  %101 = fpext float %99 to double, !dbg !224
  %102 = fptrunc double %100 to float, !dbg !224
  %103 = fptrunc double %101 to float, !dbg !224
  %handler_result = call float @fSubHandlerFloat(float %102, float %103), !dbg !224
  %104 = fpext float %76 to double, !dbg !225
  %105 = fpext float %handler_result to double, !dbg !225
  %106 = fptrunc double %104 to float, !dbg !225
  %107 = fptrunc double %105 to float, !dbg !225
  %handler_result1 = call float @fAddHandlerFloat(float %106, float %107), !dbg !225
  tail call void @llvm.dbg.value(metadata float %handler_result1, metadata !87, metadata !DIExpression()), !dbg !208
  %108 = fmul float %86, %92, !dbg !225
  %109 = fmul float %82, %97, !dbg !226
  %110 = fpext float %108 to double, !dbg !227
  %111 = fpext float %109 to double, !dbg !227
  %112 = fptrunc double %110 to float, !dbg !227
  %113 = fptrunc double %111 to float, !dbg !227
  %handler_result2 = call float @fAddHandlerFloat(float %112, float %113), !dbg !227
  %114 = fpext float %77 to double, !dbg !228
  %115 = fpext float %handler_result2 to double, !dbg !228
  %116 = fptrunc double %114 to float, !dbg !228
  %117 = fptrunc double %115 to float, !dbg !228
  %handler_result3 = call float @fAddHandlerFloat(float %116, float %117), !dbg !228
  tail call void @llvm.dbg.value(metadata float %handler_result3, metadata !91, metadata !DIExpression()), !dbg !208
  %118 = add i64 %74, %57, !dbg !228
  tail call void @llvm.dbg.value(metadata i64 %118, metadata !93, metadata !DIExpression()), !dbg !208
  %119 = add nuw nsw i64 %75, 1, !dbg !229
  tail call void @llvm.dbg.value(metadata i64 %119, metadata !81, metadata !DIExpression()), !dbg !179
  %120 = icmp eq i64 %119, %61, !dbg !210
  br i1 %120, label %121, label %73, !dbg !211, !llvm.loop !230

121:                                              ; preds = %73, %62
  %122 = phi float [ 0.000000e+00, %62 ], [ %handler_result3, %73 ], !dbg !208
  %123 = phi float [ 0.000000e+00, %62 ], [ %handler_result1, %73 ], !dbg !208
  %124 = trunc i64 %63 to i32, !dbg !233
  %125 = shl nsw i32 %124, 1, !dbg !233
  %126 = sext i32 %125 to i64, !dbg !233
  %127 = getelementptr inbounds float, ptr %7, i64 %126, !dbg !233
  %128 = load float, ptr %127, align 4, !dbg !233, !tbaa !213
  br i1 %13, label %129, label %160, !dbg !234

129:                                              ; preds = %121
  tail call void @llvm.dbg.value(metadata float %128, metadata !101, metadata !DIExpression()), !dbg !235
  %130 = or disjoint i32 %125, 1, !dbg !236
  %131 = sext i32 %130 to i64, !dbg !236
  %132 = getelementptr inbounds float, ptr %7, i64 %131, !dbg !236
  %133 = load float, ptr %132, align 4, !dbg !236, !tbaa !213
  tail call void @llvm.dbg.value(metadata float %133, metadata !104, metadata !DIExpression()), !dbg !235
  %134 = trunc i64 %64 to i32, !dbg !237
  %135 = mul i32 %56, %134, !dbg !237
  %136 = sext i32 %135 to i64, !dbg !237
  %137 = getelementptr inbounds float, ptr %5, i64 %136, !dbg !237
  %138 = load float, ptr %137, align 4, !dbg !237, !tbaa !213
  tail call void @llvm.dbg.value(metadata float %138, metadata !105, metadata !DIExpression()), !dbg !235
  %139 = or disjoint i32 %135, 1, !dbg !238
  %140 = sext i32 %139 to i64, !dbg !238
  %141 = getelementptr inbounds float, ptr %5, i64 %140, !dbg !238
  %142 = load float, ptr %141, align 4, !dbg !238, !tbaa !213
  %143 = fmul float %142, %54, !dbg !239
  tail call void @llvm.dbg.value(metadata float %143, metadata !106, metadata !DIExpression()), !dbg !235
  %144 = fmul float %128, %138, !dbg !240
  %145 = fmul float %133, %143, !dbg !241
  %146 = fpext float %144 to double, !dbg !242
  %147 = fpext float %145 to double, !dbg !242
  %148 = fptrunc double %146 to float, !dbg !242
  %149 = fptrunc double %147 to float, !dbg !242
  %handler_result4 = call float @fSubHandlerFloat(float %148, float %149), !dbg !242
  %150 = fpext float %123 to double, !dbg !243
  %151 = fpext float %handler_result4 to double, !dbg !243
  %152 = fptrunc double %150 to float, !dbg !243
  %153 = fptrunc double %151 to float, !dbg !243
  %handler_result5 = call float @fAddHandlerFloat(float %152, float %153), !dbg !243
  store float %handler_result5, ptr %127, align 4, !dbg !243, !tbaa !213
  %154 = fmul float %133, %138, !dbg !244
  %155 = fmul float %128, %143, !dbg !245
  %156 = fpext float %154 to double, !dbg !246
  %157 = fpext float %155 to double, !dbg !246
  %158 = fptrunc double %156 to float, !dbg !246
  %159 = fptrunc double %157 to float, !dbg !246
  %handler_result6 = call float @fAddHandlerFloat(float %158, float %159), !dbg !246
  br label %169, !dbg !246

160:                                              ; preds = %121
  %161 = fpext float %123 to double, !dbg !247
  %162 = fpext float %128 to double, !dbg !247
  %163 = fptrunc double %161 to float, !dbg !247
  %164 = fptrunc double %162 to float, !dbg !247
  %handler_result7 = call float @fAddHandlerFloat(float %163, float %164), !dbg !247
  store float %handler_result7, ptr %127, align 4, !dbg !247, !tbaa !213
  %165 = or disjoint i32 %125, 1, !dbg !249
  %166 = sext i32 %165 to i64, !dbg !249
  %167 = getelementptr inbounds float, ptr %7, i64 %166, !dbg !249
  %168 = load float, ptr %167, align 4, !dbg !250, !tbaa !213
  br label %169

169:                                              ; preds = %160, %129
  %170 = phi float [ %168, %160 ], [ %handler_result6, %129 ]
  %171 = phi ptr [ %167, %160 ], [ %132, %129 ]
  %172 = fpext float %122 to double, !dbg !233
  %173 = fpext float %170 to double, !dbg !233
  %174 = fptrunc double %172 to float, !dbg !233
  %175 = fptrunc double %173 to float, !dbg !233
  %handler_result8 = call float @fAddHandlerFloat(float %174, float %175), !dbg !233
  store float %handler_result8, ptr %171, align 4, !dbg !233, !tbaa !213
  %176 = add i64 %63, %57, !dbg !251
  tail call void @llvm.dbg.value(metadata i64 %68, metadata !80, metadata !DIExpression()), !dbg !179
  tail call void @llvm.dbg.value(metadata i64 %176, metadata !84, metadata !DIExpression()), !dbg !204
  %177 = add nuw nsw i64 %66, 1, !dbg !206
  %178 = icmp eq i64 %68, %61, !dbg !205
  br i1 %178, label %589, label %62, !dbg !206, !llvm.loop !252

179:                                              ; preds = %41
  %180 = and i1 %45, %38, !dbg !254
  %181 = and i1 %39, %44
  %182 = or i1 %180, %181, !dbg !254
  br i1 %182, label %183, label %315, !dbg !254

183:                                              ; preds = %179
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 poison, i32 poison, i32 poison), metadata !107, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_minus, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !255
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !80, metadata !DIExpression()), !dbg !179
  %184 = icmp sgt i32 %4, 0, !dbg !256
  br i1 %184, label %185, label %589, !dbg !257

185:                                              ; preds = %183
  %186 = icmp sgt i32 %8, 0, !dbg !258
  %187 = sub nsw i32 1, %4, !dbg !258
  %188 = mul i32 %187, %8, !dbg !258
  %189 = select i1 %186, i32 0, i32 %188, !dbg !258
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 %189, i32 %4, i32 %8), metadata !107, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_minus, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !255
  %190 = add nsw i32 %4, -1, !dbg !259
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 %189, i32 %190, i32 %8), metadata !107, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !255
  %191 = mul i32 %190, %8, !dbg !260
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 %189, i32 %191), metadata !107, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !255
  %192 = add nsw i32 %189, %191, !dbg !261
  tail call void @llvm.dbg.value(metadata i32 %192, metadata !107, metadata !DIExpression()), !dbg !255
  %193 = sub i32 0, %191
  %194 = select i1 %186, i32 0, i32 %193
  %195 = sitofp i32 %11 to float
  %196 = shl i32 %6, 1
  %197 = add i32 %196, 2
  %198 = zext i32 %194 to i64, !dbg !257
  %199 = zext i32 %8 to i64, !dbg !257
  %200 = zext nneg i32 %190 to i64, !dbg !257
  %201 = zext nneg i32 %4 to i64, !dbg !257
  %202 = zext i32 %6 to i64, !dbg !257
  br label %203, !dbg !257

203:                                              ; preds = %306, %185
  %204 = phi i64 [ %201, %185 ], [ %207, %306 ]
  %205 = phi i64 [ %200, %185 ], [ %314, %306 ]
  %206 = phi i32 [ %192, %185 ], [ %313, %306 ]
  tail call void @llvm.dbg.value(metadata i64 %204, metadata !80, metadata !DIExpression()), !dbg !179
  tail call void @llvm.dbg.value(metadata i32 %206, metadata !107, metadata !DIExpression()), !dbg !255
  %207 = add nsw i64 %204, -1, !dbg !262
  tail call void @llvm.dbg.value(metadata i64 %207, metadata !80, metadata !DIExpression()), !dbg !179
  tail call void @llvm.dbg.value(metadata i64 %207, metadata !115, metadata !DIExpression()), !dbg !263
  tail call void @llvm.dbg.value(metadata i32 %194, metadata !116, metadata !DIExpression()), !dbg !263
  tail call void @llvm.dbg.value(metadata i32 0, metadata !81, metadata !DIExpression()), !dbg !179
  tail call void @llvm.dbg.value(metadata float 0.000000e+00, metadata !110, metadata !DIExpression()), !dbg !263
  tail call void @llvm.dbg.value(metadata float 0.000000e+00, metadata !114, metadata !DIExpression()), !dbg !263
  %208 = icmp ugt i64 %204, 1, !dbg !264
  br i1 %208, label %209, label %259, !dbg !265

209:                                              ; preds = %203
  %210 = mul i64 %207, %202
  br label %211, !dbg !265

211:                                              ; preds = %211, %209
  %212 = phi i64 [ %198, %209 ], [ %256, %211 ]
  %213 = phi i64 [ 0, %209 ], [ %257, %211 ]
  %214 = phi float [ 0.000000e+00, %209 ], [ %handler_result10, %211 ]
  %215 = phi float [ 0.000000e+00, %209 ], [ %handler_result12, %211 ]
  tail call void @llvm.dbg.value(metadata i64 %213, metadata !81, metadata !DIExpression()), !dbg !179
  tail call void @llvm.dbg.value(metadata float %214, metadata !110, metadata !DIExpression()), !dbg !263
  tail call void @llvm.dbg.value(metadata float %215, metadata !114, metadata !DIExpression()), !dbg !263
  tail call void @llvm.dbg.value(metadata i64 %212, metadata !116, metadata !DIExpression()), !dbg !263
  %216 = trunc i64 %212 to i32, !dbg !266
  %217 = shl nsw i32 %216, 1, !dbg !266
  %218 = sext i32 %217 to i64, !dbg !266
  %219 = getelementptr inbounds float, ptr %7, i64 %218, !dbg !266
  %220 = load float, ptr %219, align 4, !dbg !266, !tbaa !213
  tail call void @llvm.dbg.value(metadata float %220, metadata !117, metadata !DIExpression()), !dbg !267
  %221 = or disjoint i32 %217, 1, !dbg !268
  %222 = sext i32 %221 to i64, !dbg !268
  %223 = getelementptr inbounds float, ptr %7, i64 %222, !dbg !268
  %224 = load float, ptr %223, align 4, !dbg !268, !tbaa !213
  tail call void @llvm.dbg.value(metadata float %224, metadata !121, metadata !DIExpression()), !dbg !267
  %225 = add i64 %213, %210, !dbg !269
  %226 = trunc i64 %225 to i32, !dbg !269
  %227 = shl nsw i32 %226, 1, !dbg !269
  %228 = sext i32 %227 to i64, !dbg !269
  %229 = getelementptr inbounds float, ptr %5, i64 %228, !dbg !269
  %230 = load float, ptr %229, align 4, !dbg !269, !tbaa !213
  tail call void @llvm.dbg.value(metadata float %230, metadata !122, metadata !DIExpression()), !dbg !267
  %231 = or disjoint i32 %227, 1, !dbg !270
  %232 = sext i32 %231 to i64, !dbg !270
  %233 = getelementptr inbounds float, ptr %5, i64 %232, !dbg !270
  %234 = load float, ptr %233, align 4, !dbg !270, !tbaa !213
  %235 = fmul float %234, %195, !dbg !271
  tail call void @llvm.dbg.value(metadata float %235, metadata !123, metadata !DIExpression()), !dbg !267
  %236 = fmul float %220, %230, !dbg !272
  %237 = fmul float %224, %235, !dbg !273
  %238 = fpext float %236 to double, !dbg !274
  %239 = fpext float %237 to double, !dbg !274
  %240 = fptrunc double %238 to float, !dbg !274
  %241 = fptrunc double %239 to float, !dbg !274
  %handler_result9 = call float @fSubHandlerFloat(float %240, float %241), !dbg !274
  %242 = fpext float %214 to double, !dbg !275
  %243 = fpext float %handler_result9 to double, !dbg !275
  %244 = fptrunc double %242 to float, !dbg !275
  %245 = fptrunc double %243 to float, !dbg !275
  %handler_result10 = call float @fAddHandlerFloat(float %244, float %245), !dbg !275
  tail call void @llvm.dbg.value(metadata float %handler_result10, metadata !110, metadata !DIExpression()), !dbg !263
  %246 = fmul float %224, %230, !dbg !275
  %247 = fmul float %220, %235, !dbg !276
  %248 = fpext float %246 to double, !dbg !277
  %249 = fpext float %247 to double, !dbg !277
  %250 = fptrunc double %248 to float, !dbg !277
  %251 = fptrunc double %249 to float, !dbg !277
  %handler_result11 = call float @fAddHandlerFloat(float %250, float %251), !dbg !277
  %252 = fpext float %215 to double, !dbg !278
  %253 = fpext float %handler_result11 to double, !dbg !278
  %254 = fptrunc double %252 to float, !dbg !278
  %255 = fptrunc double %253 to float, !dbg !278
  %handler_result12 = call float @fAddHandlerFloat(float %254, float %255), !dbg !278
  tail call void @llvm.dbg.value(metadata float %handler_result12, metadata !114, metadata !DIExpression()), !dbg !263
  %256 = add i64 %212, %199, !dbg !278
  tail call void @llvm.dbg.value(metadata i64 %256, metadata !116, metadata !DIExpression()), !dbg !263
  %257 = add nuw nsw i64 %213, 1, !dbg !279
  tail call void @llvm.dbg.value(metadata i64 %257, metadata !81, metadata !DIExpression()), !dbg !179
  %258 = icmp eq i64 %257, %205, !dbg !264
  br i1 %258, label %259, label %211, !dbg !265, !llvm.loop !280

259:                                              ; preds = %211, %203
  %260 = phi float [ 0.000000e+00, %203 ], [ %handler_result12, %211 ], !dbg !263
  %261 = phi float [ 0.000000e+00, %203 ], [ %handler_result10, %211 ], !dbg !263
  %262 = shl nsw i32 %206, 1, !dbg !282
  %263 = sext i32 %262 to i64, !dbg !282
  %264 = getelementptr inbounds float, ptr %7, i64 %263, !dbg !282
  %265 = load float, ptr %264, align 4, !dbg !282, !tbaa !213
  br i1 %13, label %266, label %297, !dbg !283

266:                                              ; preds = %259
  tail call void @llvm.dbg.value(metadata float %265, metadata !124, metadata !DIExpression()), !dbg !284
  %267 = or disjoint i32 %262, 1, !dbg !285
  %268 = sext i32 %267 to i64, !dbg !285
  %269 = getelementptr inbounds float, ptr %7, i64 %268, !dbg !285
  %270 = load float, ptr %269, align 4, !dbg !285, !tbaa !213
  tail call void @llvm.dbg.value(metadata float %270, metadata !127, metadata !DIExpression()), !dbg !284
  %271 = trunc i64 %207 to i32, !dbg !286
  %272 = mul i32 %197, %271, !dbg !286
  %273 = sext i32 %272 to i64, !dbg !286
  %274 = getelementptr inbounds float, ptr %5, i64 %273, !dbg !286
  %275 = load float, ptr %274, align 4, !dbg !286, !tbaa !213
  tail call void @llvm.dbg.value(metadata float %275, metadata !128, metadata !DIExpression()), !dbg !284
  %276 = or disjoint i32 %272, 1, !dbg !287
  %277 = sext i32 %276 to i64, !dbg !287
  %278 = getelementptr inbounds float, ptr %5, i64 %277, !dbg !287
  %279 = load float, ptr %278, align 4, !dbg !287, !tbaa !213
  %280 = fmul float %279, %195, !dbg !288
  tail call void @llvm.dbg.value(metadata float %280, metadata !129, metadata !DIExpression()), !dbg !284
  %281 = fmul float %265, %275, !dbg !289
  %282 = fmul float %270, %280, !dbg !290
  %283 = fpext float %281 to double, !dbg !291
  %284 = fpext float %282 to double, !dbg !291
  %285 = fptrunc double %283 to float, !dbg !291
  %286 = fptrunc double %284 to float, !dbg !291
  %handler_result13 = call float @fSubHandlerFloat(float %285, float %286), !dbg !291
  %287 = fpext float %261 to double, !dbg !292
  %288 = fpext float %handler_result13 to double, !dbg !292
  %289 = fptrunc double %287 to float, !dbg !292
  %290 = fptrunc double %288 to float, !dbg !292
  %handler_result14 = call float @fAddHandlerFloat(float %289, float %290), !dbg !292
  store float %handler_result14, ptr %264, align 4, !dbg !292, !tbaa !213
  %291 = fmul float %270, %275, !dbg !293
  %292 = fmul float %265, %280, !dbg !294
  %293 = fpext float %291 to double, !dbg !295
  %294 = fpext float %292 to double, !dbg !295
  %295 = fptrunc double %293 to float, !dbg !295
  %296 = fptrunc double %294 to float, !dbg !295
  %handler_result15 = call float @fAddHandlerFloat(float %295, float %296), !dbg !295
  br label %306, !dbg !295

297:                                              ; preds = %259
  %298 = fpext float %261 to double, !dbg !296
  %299 = fpext float %265 to double, !dbg !296
  %300 = fptrunc double %298 to float, !dbg !296
  %301 = fptrunc double %299 to float, !dbg !296
  %handler_result16 = call float @fAddHandlerFloat(float %300, float %301), !dbg !296
  store float %handler_result16, ptr %264, align 4, !dbg !296, !tbaa !213
  %302 = or disjoint i32 %262, 1, !dbg !298
  %303 = sext i32 %302 to i64, !dbg !298
  %304 = getelementptr inbounds float, ptr %7, i64 %303, !dbg !298
  %305 = load float, ptr %304, align 4, !dbg !299, !tbaa !213
  br label %306

306:                                              ; preds = %297, %266
  %307 = phi float [ %305, %297 ], [ %handler_result15, %266 ]
  %308 = phi ptr [ %304, %297 ], [ %269, %266 ]
  %309 = fpext float %260 to double, !dbg !282
  %310 = fpext float %307 to double, !dbg !282
  %311 = fptrunc double %309 to float, !dbg !282
  %312 = fptrunc double %310 to float, !dbg !282
  %handler_result17 = call float @fAddHandlerFloat(float %311, float %312), !dbg !282
  store float %handler_result17, ptr %308, align 4, !dbg !282, !tbaa !213
  %313 = sub nsw i32 %206, %8, !dbg !300
  tail call void @llvm.dbg.value(metadata i64 %207, metadata !80, metadata !DIExpression()), !dbg !179
  tail call void @llvm.dbg.value(metadata i32 %313, metadata !107, metadata !DIExpression()), !dbg !255
  %314 = add nsw i64 %205, -1, !dbg !257
  br i1 %208, label %203, label %589, !dbg !257, !llvm.loop !301

315:                                              ; preds = %179
  %316 = and i1 %36, %43, !dbg !304
  %317 = and i1 %39, %316, !dbg !304
  br i1 %317, label %321, label %318, !dbg !304

318:                                              ; preds = %315
  %319 = and i1 %42, %37, !dbg !305
  %320 = and i1 %45, %319, !dbg !305
  br i1 %320, label %321, label %452, !dbg !305

321:                                              ; preds = %318, %315
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 poison, i32 poison, i32 poison), metadata !130, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_minus, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !306
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !80, metadata !DIExpression()), !dbg !179
  %322 = icmp sgt i32 %4, 0, !dbg !307
  br i1 %322, label %323, label %589, !dbg !308

323:                                              ; preds = %321
  %324 = icmp sgt i32 %8, 0, !dbg !309
  %325 = sub nsw i32 1, %4, !dbg !309
  %326 = mul i32 %325, %8, !dbg !309
  %327 = select i1 %324, i32 0, i32 %326, !dbg !309
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 %327, i32 %4, i32 %8), metadata !130, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_minus, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !306
  %328 = add nsw i32 %4, -1, !dbg !310
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 %327, i32 %328, i32 %8), metadata !130, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !306
  %329 = mul i32 %328, %8, !dbg !311
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 %327, i32 %329), metadata !130, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !306
  %330 = add nsw i32 %327, %329, !dbg !312
  tail call void @llvm.dbg.value(metadata i32 %330, metadata !130, metadata !DIExpression()), !dbg !306
  %331 = sub i32 0, %329
  %332 = select i1 %324, i32 0, i32 %331
  %333 = sitofp i32 %11 to float
  %334 = shl i32 %6, 1
  %335 = add i32 %334, 2
  %336 = zext i32 %6 to i64, !dbg !308
  %337 = zext i32 %332 to i64, !dbg !308
  %338 = zext i32 %8 to i64, !dbg !308
  %339 = zext nneg i32 %328 to i64, !dbg !308
  %340 = zext nneg i32 %4 to i64, !dbg !308
  br label %341, !dbg !308

341:                                              ; preds = %443, %323
  %342 = phi i64 [ %340, %323 ], [ %345, %443 ]
  %343 = phi i64 [ %339, %323 ], [ %451, %443 ]
  %344 = phi i32 [ %330, %323 ], [ %450, %443 ]
  tail call void @llvm.dbg.value(metadata i64 %342, metadata !80, metadata !DIExpression()), !dbg !179
  tail call void @llvm.dbg.value(metadata i32 %344, metadata !130, metadata !DIExpression()), !dbg !306
  %345 = add nsw i64 %342, -1, !dbg !313
  tail call void @llvm.dbg.value(metadata i64 %345, metadata !80, metadata !DIExpression()), !dbg !179
  tail call void @llvm.dbg.value(metadata i64 %345, metadata !138, metadata !DIExpression()), !dbg !314
  tail call void @llvm.dbg.value(metadata i32 %332, metadata !139, metadata !DIExpression()), !dbg !314
  tail call void @llvm.dbg.value(metadata i32 0, metadata !81, metadata !DIExpression()), !dbg !179
  tail call void @llvm.dbg.value(metadata float 0.000000e+00, metadata !133, metadata !DIExpression()), !dbg !314
  tail call void @llvm.dbg.value(metadata float 0.000000e+00, metadata !137, metadata !DIExpression()), !dbg !314
  %346 = icmp ugt i64 %342, 1, !dbg !315
  br i1 %346, label %347, label %396, !dbg !316

347:                                              ; preds = %347, %341
  %348 = phi i64 [ %393, %347 ], [ %337, %341 ]
  %349 = phi i64 [ %394, %347 ], [ 0, %341 ]
  %350 = phi float [ %handler_result19, %347 ], [ 0.000000e+00, %341 ]
  %351 = phi float [ %handler_result21, %347 ], [ 0.000000e+00, %341 ]
  tail call void @llvm.dbg.value(metadata i64 %349, metadata !81, metadata !DIExpression()), !dbg !179
  tail call void @llvm.dbg.value(metadata float %350, metadata !133, metadata !DIExpression()), !dbg !314
  tail call void @llvm.dbg.value(metadata float %351, metadata !137, metadata !DIExpression()), !dbg !314
  tail call void @llvm.dbg.value(metadata i64 %348, metadata !139, metadata !DIExpression()), !dbg !314
  %352 = trunc i64 %348 to i32, !dbg !317
  %353 = shl nsw i32 %352, 1, !dbg !317
  %354 = sext i32 %353 to i64, !dbg !317
  %355 = getelementptr inbounds float, ptr %7, i64 %354, !dbg !317
  %356 = load float, ptr %355, align 4, !dbg !317, !tbaa !213
  tail call void @llvm.dbg.value(metadata float %356, metadata !140, metadata !DIExpression()), !dbg !318
  %357 = or disjoint i32 %353, 1, !dbg !319
  %358 = sext i32 %357 to i64, !dbg !319
  %359 = getelementptr inbounds float, ptr %7, i64 %358, !dbg !319
  %360 = load float, ptr %359, align 4, !dbg !319, !tbaa !213
  tail call void @llvm.dbg.value(metadata float %360, metadata !144, metadata !DIExpression()), !dbg !318
  %361 = mul i64 %349, %336, !dbg !320
  %362 = add i64 %361, %345, !dbg !320
  %363 = trunc i64 %362 to i32, !dbg !320
  %364 = shl nsw i32 %363, 1, !dbg !320
  %365 = sext i32 %364 to i64, !dbg !320
  %366 = getelementptr inbounds float, ptr %5, i64 %365, !dbg !320
  %367 = load float, ptr %366, align 4, !dbg !320, !tbaa !213
  tail call void @llvm.dbg.value(metadata float %367, metadata !145, metadata !DIExpression()), !dbg !318
  %368 = or disjoint i32 %364, 1, !dbg !321
  %369 = sext i32 %368 to i64, !dbg !321
  %370 = getelementptr inbounds float, ptr %5, i64 %369, !dbg !321
  %371 = load float, ptr %370, align 4, !dbg !321, !tbaa !213
  %372 = fmul float %371, %333, !dbg !322
  tail call void @llvm.dbg.value(metadata float %372, metadata !146, metadata !DIExpression()), !dbg !318
  %373 = fmul float %356, %367, !dbg !323
  %374 = fmul float %360, %372, !dbg !324
  %375 = fpext float %373 to double, !dbg !325
  %376 = fpext float %374 to double, !dbg !325
  %377 = fptrunc double %375 to float, !dbg !325
  %378 = fptrunc double %376 to float, !dbg !325
  %handler_result18 = call float @fSubHandlerFloat(float %377, float %378), !dbg !325
  %379 = fpext float %350 to double, !dbg !326
  %380 = fpext float %handler_result18 to double, !dbg !326
  %381 = fptrunc double %379 to float, !dbg !326
  %382 = fptrunc double %380 to float, !dbg !326
  %handler_result19 = call float @fAddHandlerFloat(float %381, float %382), !dbg !326
  tail call void @llvm.dbg.value(metadata float %handler_result19, metadata !133, metadata !DIExpression()), !dbg !314
  %383 = fmul float %360, %367, !dbg !326
  %384 = fmul float %356, %372, !dbg !327
  %385 = fpext float %383 to double, !dbg !328
  %386 = fpext float %384 to double, !dbg !328
  %387 = fptrunc double %385 to float, !dbg !328
  %388 = fptrunc double %386 to float, !dbg !328
  %handler_result20 = call float @fAddHandlerFloat(float %387, float %388), !dbg !328
  %389 = fpext float %351 to double, !dbg !329
  %390 = fpext float %handler_result20 to double, !dbg !329
  %391 = fptrunc double %389 to float, !dbg !329
  %392 = fptrunc double %390 to float, !dbg !329
  %handler_result21 = call float @fAddHandlerFloat(float %391, float %392), !dbg !329
  tail call void @llvm.dbg.value(metadata float %handler_result21, metadata !137, metadata !DIExpression()), !dbg !314
  %393 = add i64 %348, %338, !dbg !329
  tail call void @llvm.dbg.value(metadata i64 %393, metadata !139, metadata !DIExpression()), !dbg !314
  %394 = add nuw nsw i64 %349, 1, !dbg !330
  tail call void @llvm.dbg.value(metadata i64 %394, metadata !81, metadata !DIExpression()), !dbg !179
  %395 = icmp eq i64 %394, %343, !dbg !315
  br i1 %395, label %396, label %347, !dbg !316, !llvm.loop !331

396:                                              ; preds = %347, %341
  %397 = phi float [ 0.000000e+00, %341 ], [ %handler_result21, %347 ], !dbg !314
  %398 = phi float [ 0.000000e+00, %341 ], [ %handler_result19, %347 ], !dbg !314
  %399 = shl nsw i32 %344, 1, !dbg !333
  %400 = sext i32 %399 to i64, !dbg !333
  %401 = getelementptr inbounds float, ptr %7, i64 %400, !dbg !333
  %402 = load float, ptr %401, align 4, !dbg !333, !tbaa !213
  br i1 %13, label %403, label %434, !dbg !334

403:                                              ; preds = %396
  tail call void @llvm.dbg.value(metadata float %402, metadata !147, metadata !DIExpression()), !dbg !335
  %404 = or disjoint i32 %399, 1, !dbg !336
  %405 = sext i32 %404 to i64, !dbg !336
  %406 = getelementptr inbounds float, ptr %7, i64 %405, !dbg !336
  %407 = load float, ptr %406, align 4, !dbg !336, !tbaa !213
  tail call void @llvm.dbg.value(metadata float %407, metadata !150, metadata !DIExpression()), !dbg !335
  %408 = trunc i64 %345 to i32, !dbg !337
  %409 = mul i32 %335, %408, !dbg !337
  %410 = sext i32 %409 to i64, !dbg !337
  %411 = getelementptr inbounds float, ptr %5, i64 %410, !dbg !337
  %412 = load float, ptr %411, align 4, !dbg !337, !tbaa !213
  tail call void @llvm.dbg.value(metadata float %412, metadata !151, metadata !DIExpression()), !dbg !335
  %413 = or disjoint i32 %409, 1, !dbg !338
  %414 = sext i32 %413 to i64, !dbg !338
  %415 = getelementptr inbounds float, ptr %5, i64 %414, !dbg !338
  %416 = load float, ptr %415, align 4, !dbg !338, !tbaa !213
  %417 = fmul float %416, %333, !dbg !339
  tail call void @llvm.dbg.value(metadata float %417, metadata !152, metadata !DIExpression()), !dbg !335
  %418 = fmul float %402, %412, !dbg !340
  %419 = fmul float %407, %417, !dbg !341
  %420 = fpext float %418 to double, !dbg !342
  %421 = fpext float %419 to double, !dbg !342
  %422 = fptrunc double %420 to float, !dbg !342
  %423 = fptrunc double %421 to float, !dbg !342
  %handler_result22 = call float @fSubHandlerFloat(float %422, float %423), !dbg !342
  %424 = fpext float %398 to double, !dbg !343
  %425 = fpext float %handler_result22 to double, !dbg !343
  %426 = fptrunc double %424 to float, !dbg !343
  %427 = fptrunc double %425 to float, !dbg !343
  %handler_result23 = call float @fAddHandlerFloat(float %426, float %427), !dbg !343
  store float %handler_result23, ptr %401, align 4, !dbg !343, !tbaa !213
  %428 = fmul float %407, %412, !dbg !344
  %429 = fmul float %402, %417, !dbg !345
  %430 = fpext float %428 to double, !dbg !346
  %431 = fpext float %429 to double, !dbg !346
  %432 = fptrunc double %430 to float, !dbg !346
  %433 = fptrunc double %431 to float, !dbg !346
  %handler_result24 = call float @fAddHandlerFloat(float %432, float %433), !dbg !346
  br label %443, !dbg !346

434:                                              ; preds = %396
  %435 = fpext float %398 to double, !dbg !347
  %436 = fpext float %402 to double, !dbg !347
  %437 = fptrunc double %435 to float, !dbg !347
  %438 = fptrunc double %436 to float, !dbg !347
  %handler_result25 = call float @fAddHandlerFloat(float %437, float %438), !dbg !347
  store float %handler_result25, ptr %401, align 4, !dbg !347, !tbaa !213
  %439 = or disjoint i32 %399, 1, !dbg !349
  %440 = sext i32 %439 to i64, !dbg !349
  %441 = getelementptr inbounds float, ptr %7, i64 %440, !dbg !349
  %442 = load float, ptr %441, align 4, !dbg !350, !tbaa !213
  br label %443

443:                                              ; preds = %434, %403
  %444 = phi float [ %442, %434 ], [ %handler_result24, %403 ]
  %445 = phi ptr [ %441, %434 ], [ %406, %403 ]
  %446 = fpext float %397 to double, !dbg !333
  %447 = fpext float %444 to double, !dbg !333
  %448 = fptrunc double %446 to float, !dbg !333
  %449 = fptrunc double %447 to float, !dbg !333
  %handler_result26 = call float @fAddHandlerFloat(float %448, float %449), !dbg !333
  store float %handler_result26, ptr %445, align 4, !dbg !333, !tbaa !213
  %450 = sub nsw i32 %344, %8, !dbg !351
  tail call void @llvm.dbg.value(metadata i64 %345, metadata !80, metadata !DIExpression()), !dbg !179
  tail call void @llvm.dbg.value(metadata i32 %450, metadata !130, metadata !DIExpression()), !dbg !306
  %451 = add nsw i64 %343, -1, !dbg !308
  br i1 %346, label %341, label %589, !dbg !308, !llvm.loop !352

452:                                              ; preds = %318
  %453 = and i1 %45, %316, !dbg !355
  %454 = and i1 %39, %319
  %455 = or i1 %453, %454, !dbg !355
  br i1 %455, label %456, label %588, !dbg !355

456:                                              ; preds = %452
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !153, metadata !DIExpression()), !dbg !356
  tail call void @llvm.dbg.value(metadata i32 0, metadata !80, metadata !DIExpression()), !dbg !179
  %457 = icmp sgt i32 %4, 0, !dbg !357
  br i1 %457, label %458, label %589, !dbg !358

458:                                              ; preds = %456
  %459 = icmp sgt i32 %8, 0, !dbg !359
  %460 = sub nsw i32 1, %4, !dbg !359
  %461 = mul i32 %460, %8, !dbg !359
  %462 = select i1 %459, i32 0, i32 %461, !dbg !359
  tail call void @llvm.dbg.value(metadata i32 %462, metadata !153, metadata !DIExpression()), !dbg !356
  %463 = sitofp i32 %11 to float
  %464 = shl i32 %6, 1
  %465 = add i32 %464, 2
  %466 = zext i32 %6 to i64, !dbg !358
  %467 = zext i32 %8 to i64, !dbg !358
  %468 = zext nneg i32 %4 to i64, !dbg !358
  %469 = zext i32 %462 to i64, !dbg !358
  %470 = zext nneg i32 %4 to i64, !dbg !357
  br label %471, !dbg !358

471:                                              ; preds = %578, %458
  %472 = phi i64 [ %469, %458 ], [ %585, %578 ]
  %473 = phi i64 [ 0, %458 ], [ %477, %578 ]
  %474 = phi i32 [ %462, %458 ], [ %476, %578 ]
  %475 = phi i64 [ 1, %458 ], [ %586, %578 ]
  %476 = add i32 %474, %8, !dbg !358
  tail call void @llvm.dbg.value(metadata i64 %473, metadata !80, metadata !DIExpression()), !dbg !179
  tail call void @llvm.dbg.value(metadata i64 %472, metadata !153, metadata !DIExpression()), !dbg !356
  tail call void @llvm.dbg.value(metadata float 0.000000e+00, metadata !156, metadata !DIExpression()), !dbg !360
  tail call void @llvm.dbg.value(metadata float 0.000000e+00, metadata !160, metadata !DIExpression()), !dbg !360
  %477 = add nuw nsw i64 %473, 1, !dbg !361
  tail call void @llvm.dbg.value(metadata i64 %477, metadata !161, metadata !DIExpression()), !dbg !360
  tail call void @llvm.dbg.value(metadata !DIArgList(i64 poison, i32 poison, i32 poison), metadata !162, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !360
  tail call void @llvm.dbg.value(metadata i64 %477, metadata !81, metadata !DIExpression()), !dbg !179
  %478 = icmp ult i64 %477, %468, !dbg !362
  br i1 %478, label %479, label %530, !dbg !363

479:                                              ; preds = %471
  %480 = zext i32 %476 to i64, !dbg !361
  br label %481, !dbg !363

481:                                              ; preds = %481, %479
  %482 = phi i64 [ %480, %479 ], [ %527, %481 ]
  %483 = phi i64 [ %475, %479 ], [ %528, %481 ]
  %484 = phi float [ 0.000000e+00, %479 ], [ %handler_result30, %481 ]
  %485 = phi float [ 0.000000e+00, %479 ], [ %handler_result28, %481 ]
  tail call void @llvm.dbg.value(metadata i64 %483, metadata !81, metadata !DIExpression()), !dbg !179
  tail call void @llvm.dbg.value(metadata i64 %482, metadata !162, metadata !DIExpression()), !dbg !360
  tail call void @llvm.dbg.value(metadata float %484, metadata !160, metadata !DIExpression()), !dbg !360
  tail call void @llvm.dbg.value(metadata float %485, metadata !156, metadata !DIExpression()), !dbg !360
  %486 = trunc i64 %482 to i32, !dbg !364
  %487 = shl nsw i32 %486, 1, !dbg !364
  %488 = sext i32 %487 to i64, !dbg !364
  %489 = getelementptr inbounds float, ptr %7, i64 %488, !dbg !364
  %490 = load float, ptr %489, align 4, !dbg !364, !tbaa !213
  tail call void @llvm.dbg.value(metadata float %490, metadata !163, metadata !DIExpression()), !dbg !365
  %491 = or disjoint i32 %487, 1, !dbg !366
  %492 = sext i32 %491 to i64, !dbg !366
  %493 = getelementptr inbounds float, ptr %7, i64 %492, !dbg !366
  %494 = load float, ptr %493, align 4, !dbg !366, !tbaa !213
  tail call void @llvm.dbg.value(metadata float %494, metadata !167, metadata !DIExpression()), !dbg !365
  %495 = mul i64 %483, %466, !dbg !367
  %496 = add i64 %495, %473, !dbg !367
  %497 = trunc i64 %496 to i32, !dbg !367
  %498 = shl nsw i32 %497, 1, !dbg !367
  %499 = sext i32 %498 to i64, !dbg !367
  %500 = getelementptr inbounds float, ptr %5, i64 %499, !dbg !367
  %501 = load float, ptr %500, align 4, !dbg !367, !tbaa !213
  tail call void @llvm.dbg.value(metadata float %501, metadata !168, metadata !DIExpression()), !dbg !365
  %502 = or disjoint i32 %498, 1, !dbg !368
  %503 = sext i32 %502 to i64, !dbg !368
  %504 = getelementptr inbounds float, ptr %5, i64 %503, !dbg !368
  %505 = load float, ptr %504, align 4, !dbg !368, !tbaa !213
  %506 = fmul float %505, %463, !dbg !369
  tail call void @llvm.dbg.value(metadata float %506, metadata !169, metadata !DIExpression()), !dbg !365
  %507 = fmul float %490, %501, !dbg !370
  %508 = fmul float %494, %506, !dbg !371
  %509 = fpext float %507 to double, !dbg !372
  %510 = fpext float %508 to double, !dbg !372
  %511 = fptrunc double %509 to float, !dbg !372
  %512 = fptrunc double %510 to float, !dbg !372
  %handler_result27 = call float @fSubHandlerFloat(float %511, float %512), !dbg !372
  %513 = fpext float %485 to double, !dbg !373
  %514 = fpext float %handler_result27 to double, !dbg !373
  %515 = fptrunc double %513 to float, !dbg !373
  %516 = fptrunc double %514 to float, !dbg !373
  %handler_result28 = call float @fAddHandlerFloat(float %515, float %516), !dbg !373
  tail call void @llvm.dbg.value(metadata float %handler_result28, metadata !156, metadata !DIExpression()), !dbg !360
  %517 = fmul float %494, %501, !dbg !373
  %518 = fmul float %490, %506, !dbg !374
  %519 = fpext float %517 to double, !dbg !375
  %520 = fpext float %518 to double, !dbg !375
  %521 = fptrunc double %519 to float, !dbg !375
  %522 = fptrunc double %520 to float, !dbg !375
  %handler_result29 = call float @fAddHandlerFloat(float %521, float %522), !dbg !375
  %523 = fpext float %484 to double, !dbg !376
  %524 = fpext float %handler_result29 to double, !dbg !376
  %525 = fptrunc double %523 to float, !dbg !376
  %526 = fptrunc double %524 to float, !dbg !376
  %handler_result30 = call float @fAddHandlerFloat(float %525, float %526), !dbg !376
  tail call void @llvm.dbg.value(metadata float %handler_result30, metadata !160, metadata !DIExpression()), !dbg !360
  %527 = add i64 %482, %467, !dbg !376
  tail call void @llvm.dbg.value(metadata i64 %527, metadata !162, metadata !DIExpression()), !dbg !360
  %528 = add nuw nsw i64 %483, 1, !dbg !377
  tail call void @llvm.dbg.value(metadata i64 %528, metadata !81, metadata !DIExpression()), !dbg !179
  %529 = icmp eq i64 %528, %470, !dbg !362
  br i1 %529, label %530, label %481, !dbg !363, !llvm.loop !378

530:                                              ; preds = %481, %471
  %531 = phi float [ 0.000000e+00, %471 ], [ %handler_result28, %481 ], !dbg !360
  %532 = phi float [ 0.000000e+00, %471 ], [ %handler_result30, %481 ], !dbg !360
  %533 = trunc i64 %472 to i32, !dbg !380
  %534 = shl nsw i32 %533, 1, !dbg !380
  %535 = sext i32 %534 to i64, !dbg !380
  %536 = getelementptr inbounds float, ptr %7, i64 %535, !dbg !380
  %537 = load float, ptr %536, align 4, !dbg !380, !tbaa !213
  br i1 %13, label %538, label %569, !dbg !381

538:                                              ; preds = %530
  tail call void @llvm.dbg.value(metadata float %537, metadata !170, metadata !DIExpression()), !dbg !382
  %539 = or disjoint i32 %534, 1, !dbg !383
  %540 = sext i32 %539 to i64, !dbg !383
  %541 = getelementptr inbounds float, ptr %7, i64 %540, !dbg !383
  %542 = load float, ptr %541, align 4, !dbg !383, !tbaa !213
  tail call void @llvm.dbg.value(metadata float %542, metadata !173, metadata !DIExpression()), !dbg !382
  %543 = trunc i64 %473 to i32, !dbg !384
  %544 = mul i32 %465, %543, !dbg !384
  %545 = sext i32 %544 to i64, !dbg !384
  %546 = getelementptr inbounds float, ptr %5, i64 %545, !dbg !384
  %547 = load float, ptr %546, align 4, !dbg !384, !tbaa !213
  tail call void @llvm.dbg.value(metadata float %547, metadata !174, metadata !DIExpression()), !dbg !382
  %548 = or disjoint i32 %544, 1, !dbg !385
  %549 = sext i32 %548 to i64, !dbg !385
  %550 = getelementptr inbounds float, ptr %5, i64 %549, !dbg !385
  %551 = load float, ptr %550, align 4, !dbg !385, !tbaa !213
  %552 = fmul float %551, %463, !dbg !386
  tail call void @llvm.dbg.value(metadata float %552, metadata !175, metadata !DIExpression()), !dbg !382
  %553 = fmul float %537, %547, !dbg !387
  %554 = fmul float %542, %552, !dbg !388
  %555 = fpext float %553 to double, !dbg !389
  %556 = fpext float %554 to double, !dbg !389
  %557 = fptrunc double %555 to float, !dbg !389
  %558 = fptrunc double %556 to float, !dbg !389
  %handler_result31 = call float @fSubHandlerFloat(float %557, float %558), !dbg !389
  %559 = fpext float %531 to double, !dbg !390
  %560 = fpext float %handler_result31 to double, !dbg !390
  %561 = fptrunc double %559 to float, !dbg !390
  %562 = fptrunc double %560 to float, !dbg !390
  %handler_result32 = call float @fAddHandlerFloat(float %561, float %562), !dbg !390
  store float %handler_result32, ptr %536, align 4, !dbg !390, !tbaa !213
  %563 = fmul float %542, %547, !dbg !391
  %564 = fmul float %537, %552, !dbg !392
  %565 = fpext float %563 to double, !dbg !393
  %566 = fpext float %564 to double, !dbg !393
  %567 = fptrunc double %565 to float, !dbg !393
  %568 = fptrunc double %566 to float, !dbg !393
  %handler_result33 = call float @fAddHandlerFloat(float %567, float %568), !dbg !393
  br label %578, !dbg !393

569:                                              ; preds = %530
  %570 = fpext float %531 to double, !dbg !394
  %571 = fpext float %537 to double, !dbg !394
  %572 = fptrunc double %570 to float, !dbg !394
  %573 = fptrunc double %571 to float, !dbg !394
  %handler_result34 = call float @fAddHandlerFloat(float %572, float %573), !dbg !394
  store float %handler_result34, ptr %536, align 4, !dbg !394, !tbaa !213
  %574 = or disjoint i32 %534, 1, !dbg !396
  %575 = sext i32 %574 to i64, !dbg !396
  %576 = getelementptr inbounds float, ptr %7, i64 %575, !dbg !396
  %577 = load float, ptr %576, align 4, !dbg !397, !tbaa !213
  br label %578

578:                                              ; preds = %569, %538
  %579 = phi float [ %577, %569 ], [ %handler_result33, %538 ]
  %580 = phi ptr [ %576, %569 ], [ %541, %538 ]
  %581 = fpext float %532 to double, !dbg !380
  %582 = fpext float %579 to double, !dbg !380
  %583 = fptrunc double %581 to float, !dbg !380
  %584 = fptrunc double %582 to float, !dbg !380
  %handler_result35 = call float @fAddHandlerFloat(float %583, float %584), !dbg !380
  store float %handler_result35, ptr %580, align 4, !dbg !380, !tbaa !213
  %585 = add i64 %472, %467, !dbg !398
  tail call void @llvm.dbg.value(metadata i64 %477, metadata !80, metadata !DIExpression()), !dbg !179
  tail call void @llvm.dbg.value(metadata i64 %585, metadata !153, metadata !DIExpression()), !dbg !356
  %586 = add nuw nsw i64 %475, 1, !dbg !358
  %587 = icmp eq i64 %477, %470, !dbg !357
  br i1 %587, label %589, label %471, !dbg !358, !llvm.loop !399

588:                                              ; preds = %452
  tail call void (i32, ptr, ptr, ...) @cblas_xerbla(i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #3, !dbg !401
  br label %589

589:                                              ; preds = %588, %578, %456, %443, %321, %306, %183, %169, %47
  ret void, !dbg !403
}

declare !dbg !405 void @cblas_xerbla(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

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
!llvm.module.flags = !{!45, !46, !47, !48, !49, !50, !51}
!llvm.ident = !{!52}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 27, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "./source_trmv_c.h", directory: "/PI-detector/external/gsl/gsl-2.5/cblas", checksumkind: CSK_MD5, checksum: "d9380ee432d3103db523d96be64bed4d")
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
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 169, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 23)
!17 = distinct !DICompileUnit(language: DW_LANG_C11, file: !18, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !19, retainedTypes: !39, globals: !44, splitDebugInlining: false, nameTableKind: None)
!18 = !DIFile(filename: "ctrmv.c", directory: "/PI-detector/external/gsl/gsl-2.5/cblas", checksumkind: CSK_MD5, checksum: "a34c75fb061930bc00b458bcffdfa96c")
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
!39 = !{!40, !42}
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !41)
!44 = !{!0, !7, !12}
!45 = !{i32 7, !"Dwarf Version", i32 5}
!46 = !{i32 2, !"Debug Info Version", i32 3}
!47 = !{i32 1, !"wchar_size", i32 4}
!48 = !{i32 8, !"PIC Level", i32 2}
!49 = !{i32 7, !"PIE Level", i32 2}
!50 = !{i32 7, !"uwtable", i32 2}
!51 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!52 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!53 = distinct !DISubprogram(name: "cblas_ctrmv", scope: !18, file: !18, line: 7, type: !54, scopeLine: 11, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !65)
!54 = !DISubroutineType(types: !55)
!55 = !{null, !56, !57, !58, !59, !60, !62, !60, !64, !60}
!56 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!57 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !26)
!58 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!59 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!60 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !61)
!61 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!65 = !{!66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !78, !79, !80, !81, !82, !84, !87, !91, !92, !93, !94, !98, !99, !100, !101, !104, !105, !106, !107, !110, !114, !115, !116, !117, !121, !122, !123, !124, !127, !128, !129, !130, !133, !137, !138, !139, !140, !144, !145, !146, !147, !150, !151, !152, !153, !156, !160, !161, !162, !163, !167, !168, !169, !170, !173, !174, !175}
!66 = !DILocalVariable(name: "order", arg: 1, scope: !53, file: !18, line: 7, type: !56)
!67 = !DILocalVariable(name: "Uplo", arg: 2, scope: !53, file: !18, line: 7, type: !57)
!68 = !DILocalVariable(name: "TransA", arg: 3, scope: !53, file: !18, line: 8, type: !58)
!69 = !DILocalVariable(name: "Diag", arg: 4, scope: !53, file: !18, line: 8, type: !59)
!70 = !DILocalVariable(name: "N", arg: 5, scope: !53, file: !18, line: 9, type: !60)
!71 = !DILocalVariable(name: "A", arg: 6, scope: !53, file: !18, line: 9, type: !62)
!72 = !DILocalVariable(name: "lda", arg: 7, scope: !53, file: !18, line: 9, type: !60)
!73 = !DILocalVariable(name: "X", arg: 8, scope: !53, file: !18, line: 9, type: !64)
!74 = !DILocalVariable(name: "incX", arg: 9, scope: !53, file: !18, line: 10, type: !60)
!75 = !DILocalVariable(name: "conj", scope: !76, file: !2, line: 21, type: !60)
!76 = distinct !DILexicalBlock(scope: !77, file: !2, line: 20, column: 1)
!77 = !DILexicalBlockFile(scope: !53, file: !2, discriminator: 0)
!78 = !DILocalVariable(name: "Trans", scope: !76, file: !2, line: 22, type: !60)
!79 = !DILocalVariable(name: "nonunit", scope: !76, file: !2, line: 23, type: !60)
!80 = !DILocalVariable(name: "i", scope: !76, file: !2, line: 25, type: !61)
!81 = !DILocalVariable(name: "j", scope: !76, file: !2, line: 25, type: !61)
!82 = !DILocalVariable(name: "pos", scope: !83, file: !2, line: 27, type: !61)
!83 = distinct !DILexicalBlock(scope: !76, file: !2, line: 27, column: 3)
!84 = !DILocalVariable(name: "ix", scope: !85, file: !2, line: 33, type: !61)
!85 = distinct !DILexicalBlock(scope: !86, file: !2, line: 30, column: 81)
!86 = distinct !DILexicalBlock(scope: !76, file: !2, line: 29, column: 7)
!87 = !DILocalVariable(name: "temp_r", scope: !88, file: !2, line: 35, type: !41)
!88 = distinct !DILexicalBlock(scope: !89, file: !2, line: 34, column: 29)
!89 = distinct !DILexicalBlock(scope: !90, file: !2, line: 34, column: 5)
!90 = distinct !DILexicalBlock(scope: !85, file: !2, line: 34, column: 5)
!91 = !DILocalVariable(name: "temp_i", scope: !88, file: !2, line: 36, type: !41)
!92 = !DILocalVariable(name: "j_min", scope: !88, file: !2, line: 37, type: !60)
!93 = !DILocalVariable(name: "jx", scope: !88, file: !2, line: 38, type: !61)
!94 = !DILocalVariable(name: "x_real", scope: !95, file: !2, line: 40, type: !43)
!95 = distinct !DILexicalBlock(scope: !96, file: !2, line: 39, column: 35)
!96 = distinct !DILexicalBlock(scope: !97, file: !2, line: 39, column: 7)
!97 = distinct !DILexicalBlock(scope: !88, file: !2, line: 39, column: 7)
!98 = !DILocalVariable(name: "x_imag", scope: !95, file: !2, line: 41, type: !43)
!99 = !DILocalVariable(name: "A_real", scope: !95, file: !2, line: 42, type: !43)
!100 = !DILocalVariable(name: "A_imag", scope: !95, file: !2, line: 43, type: !43)
!101 = !DILocalVariable(name: "x_real", scope: !102, file: !2, line: 51, type: !43)
!102 = distinct !DILexicalBlock(scope: !103, file: !2, line: 50, column: 20)
!103 = distinct !DILexicalBlock(scope: !88, file: !2, line: 50, column: 11)
!104 = !DILocalVariable(name: "x_imag", scope: !102, file: !2, line: 52, type: !43)
!105 = !DILocalVariable(name: "A_real", scope: !102, file: !2, line: 53, type: !43)
!106 = !DILocalVariable(name: "A_imag", scope: !102, file: !2, line: 54, type: !43)
!107 = !DILocalVariable(name: "ix", scope: !108, file: !2, line: 67, type: !61)
!108 = distinct !DILexicalBlock(scope: !109, file: !2, line: 65, column: 88)
!109 = distinct !DILexicalBlock(scope: !86, file: !2, line: 64, column: 14)
!110 = !DILocalVariable(name: "temp_r", scope: !111, file: !2, line: 70, type: !41)
!111 = distinct !DILexicalBlock(scope: !112, file: !2, line: 69, column: 32)
!112 = distinct !DILexicalBlock(scope: !113, file: !2, line: 69, column: 5)
!113 = distinct !DILexicalBlock(scope: !108, file: !2, line: 69, column: 5)
!114 = !DILocalVariable(name: "temp_i", scope: !111, file: !2, line: 71, type: !41)
!115 = !DILocalVariable(name: "j_max", scope: !111, file: !2, line: 72, type: !60)
!116 = !DILocalVariable(name: "jx", scope: !111, file: !2, line: 73, type: !61)
!117 = !DILocalVariable(name: "x_real", scope: !118, file: !2, line: 75, type: !43)
!118 = distinct !DILexicalBlock(scope: !119, file: !2, line: 74, column: 35)
!119 = distinct !DILexicalBlock(scope: !120, file: !2, line: 74, column: 7)
!120 = distinct !DILexicalBlock(scope: !111, file: !2, line: 74, column: 7)
!121 = !DILocalVariable(name: "x_imag", scope: !118, file: !2, line: 76, type: !43)
!122 = !DILocalVariable(name: "A_real", scope: !118, file: !2, line: 77, type: !43)
!123 = !DILocalVariable(name: "A_imag", scope: !118, file: !2, line: 78, type: !43)
!124 = !DILocalVariable(name: "x_real", scope: !125, file: !2, line: 86, type: !43)
!125 = distinct !DILexicalBlock(scope: !126, file: !2, line: 85, column: 20)
!126 = distinct !DILexicalBlock(scope: !111, file: !2, line: 85, column: 11)
!127 = !DILocalVariable(name: "x_imag", scope: !125, file: !2, line: 87, type: !43)
!128 = !DILocalVariable(name: "A_real", scope: !125, file: !2, line: 88, type: !43)
!129 = !DILocalVariable(name: "A_imag", scope: !125, file: !2, line: 89, type: !43)
!130 = !DILocalVariable(name: "ix", scope: !131, file: !2, line: 103, type: !61)
!131 = distinct !DILexicalBlock(scope: !132, file: !2, line: 100, column: 90)
!132 = distinct !DILexicalBlock(scope: !109, file: !2, line: 99, column: 14)
!133 = !DILocalVariable(name: "temp_r", scope: !134, file: !2, line: 105, type: !41)
!134 = distinct !DILexicalBlock(scope: !135, file: !2, line: 104, column: 32)
!135 = distinct !DILexicalBlock(scope: !136, file: !2, line: 104, column: 5)
!136 = distinct !DILexicalBlock(scope: !131, file: !2, line: 104, column: 5)
!137 = !DILocalVariable(name: "temp_i", scope: !134, file: !2, line: 106, type: !41)
!138 = !DILocalVariable(name: "j_max", scope: !134, file: !2, line: 107, type: !60)
!139 = !DILocalVariable(name: "jx", scope: !134, file: !2, line: 108, type: !61)
!140 = !DILocalVariable(name: "x_real", scope: !141, file: !2, line: 110, type: !43)
!141 = distinct !DILexicalBlock(scope: !142, file: !2, line: 109, column: 35)
!142 = distinct !DILexicalBlock(scope: !143, file: !2, line: 109, column: 7)
!143 = distinct !DILexicalBlock(scope: !134, file: !2, line: 109, column: 7)
!144 = !DILocalVariable(name: "x_imag", scope: !141, file: !2, line: 111, type: !43)
!145 = !DILocalVariable(name: "A_real", scope: !141, file: !2, line: 112, type: !43)
!146 = !DILocalVariable(name: "A_imag", scope: !141, file: !2, line: 113, type: !43)
!147 = !DILocalVariable(name: "x_real", scope: !148, file: !2, line: 121, type: !43)
!148 = distinct !DILexicalBlock(scope: !149, file: !2, line: 120, column: 20)
!149 = distinct !DILexicalBlock(scope: !134, file: !2, line: 120, column: 11)
!150 = !DILocalVariable(name: "x_imag", scope: !148, file: !2, line: 122, type: !43)
!151 = !DILocalVariable(name: "A_real", scope: !148, file: !2, line: 123, type: !43)
!152 = !DILocalVariable(name: "A_imag", scope: !148, file: !2, line: 124, type: !43)
!153 = !DILocalVariable(name: "ix", scope: !154, file: !2, line: 137, type: !61)
!154 = distinct !DILexicalBlock(scope: !155, file: !2, line: 136, column: 90)
!155 = distinct !DILexicalBlock(scope: !132, file: !2, line: 135, column: 14)
!156 = !DILocalVariable(name: "temp_r", scope: !157, file: !2, line: 139, type: !41)
!157 = distinct !DILexicalBlock(scope: !158, file: !2, line: 138, column: 29)
!158 = distinct !DILexicalBlock(scope: !159, file: !2, line: 138, column: 5)
!159 = distinct !DILexicalBlock(scope: !154, file: !2, line: 138, column: 5)
!160 = !DILocalVariable(name: "temp_i", scope: !157, file: !2, line: 140, type: !41)
!161 = !DILocalVariable(name: "j_min", scope: !157, file: !2, line: 141, type: !60)
!162 = !DILocalVariable(name: "jx", scope: !157, file: !2, line: 142, type: !61)
!163 = !DILocalVariable(name: "x_real", scope: !164, file: !2, line: 144, type: !43)
!164 = distinct !DILexicalBlock(scope: !165, file: !2, line: 143, column: 35)
!165 = distinct !DILexicalBlock(scope: !166, file: !2, line: 143, column: 7)
!166 = distinct !DILexicalBlock(scope: !157, file: !2, line: 143, column: 7)
!167 = !DILocalVariable(name: "x_imag", scope: !164, file: !2, line: 145, type: !43)
!168 = !DILocalVariable(name: "A_real", scope: !164, file: !2, line: 146, type: !43)
!169 = !DILocalVariable(name: "A_imag", scope: !164, file: !2, line: 147, type: !43)
!170 = !DILocalVariable(name: "x_real", scope: !171, file: !2, line: 155, type: !43)
!171 = distinct !DILexicalBlock(scope: !172, file: !2, line: 154, column: 20)
!172 = distinct !DILexicalBlock(scope: !157, file: !2, line: 154, column: 11)
!173 = !DILocalVariable(name: "x_imag", scope: !171, file: !2, line: 156, type: !43)
!174 = !DILocalVariable(name: "A_real", scope: !171, file: !2, line: 157, type: !43)
!175 = !DILocalVariable(name: "A_imag", scope: !171, file: !2, line: 158, type: !43)
!176 = !DILocation(line: 0, scope: !53)
!177 = !DILocation(line: 21, column: 28, scope: !76)
!178 = !DILocation(line: 21, column: 20, scope: !76)
!179 = !DILocation(line: 0, scope: !76)
!180 = !DILocation(line: 22, column: 21, scope: !76)
!181 = !DILocation(line: 23, column: 29, scope: !76)
!182 = !DILocation(line: 0, scope: !83)
!183 = !DILocation(line: 27, column: 3, scope: !184)
!184 = distinct !DILexicalBlock(scope: !83, file: !2, line: 27, column: 3)
!185 = !DILocation(line: 27, column: 3, scope: !186)
!186 = distinct !DILexicalBlock(scope: !83, file: !2, line: 27, column: 3)
!187 = !DILocation(line: 27, column: 3, scope: !188)
!188 = distinct !DILexicalBlock(scope: !83, file: !2, line: 27, column: 3)
!189 = !DILocation(line: 27, column: 3, scope: !190)
!190 = distinct !DILexicalBlock(scope: !83, file: !2, line: 27, column: 3)
!191 = !DILocation(line: 27, column: 3, scope: !192)
!192 = distinct !DILexicalBlock(scope: !83, file: !2, line: 27, column: 3)
!193 = !DILocation(line: 27, column: 3, scope: !83)
!194 = !DILocation(line: 27, column: 3, scope: !195)
!195 = distinct !DILexicalBlock(scope: !83, file: !2, line: 27, column: 3)
!196 = !DILocation(line: 27, column: 3, scope: !197)
!197 = distinct !DILexicalBlock(scope: !83, file: !2, line: 27, column: 3)
!198 = !DILocation(line: 27, column: 3, scope: !199)
!199 = distinct !DILexicalBlock(scope: !83, file: !2, line: 27, column: 3)
!200 = !DILocation(line: 29, column: 14, scope: !86)
!201 = !DILocation(line: 29, column: 31, scope: !86)
!202 = !DILocation(line: 30, column: 17, scope: !86)
!203 = !DILocation(line: 30, column: 34, scope: !86)
!204 = !DILocation(line: 0, scope: !85)
!205 = !DILocation(line: 34, column: 19, scope: !89)
!206 = !DILocation(line: 34, column: 5, scope: !90)
!207 = !DILocation(line: 33, column: 16, scope: !85)
!208 = !DILocation(line: 0, scope: !88)
!209 = !DILocation(line: 37, column: 29, scope: !88)
!210 = !DILocation(line: 39, column: 25, scope: !96)
!211 = !DILocation(line: 39, column: 7, scope: !97)
!212 = !DILocation(line: 40, column: 29, scope: !95)
!213 = !{!214, !214, i64 0}
!214 = !{!"float", !215, i64 0}
!215 = !{!"omnipotent char", !216, i64 0}
!216 = !{!"Simple C/C++ TBAA"}
!217 = !DILocation(line: 0, scope: !95)
!218 = !DILocation(line: 41, column: 29, scope: !95)
!219 = !DILocation(line: 42, column: 29, scope: !95)
!220 = !DILocation(line: 43, column: 36, scope: !95)
!221 = !DILocation(line: 43, column: 34, scope: !95)
!222 = !DILocation(line: 45, column: 26, scope: !95)
!223 = !DILocation(line: 45, column: 44, scope: !95)
!224 = !DILocation(line: 45, column: 16, scope: !95)
!225 = !DILocation(line: 46, column: 26, scope: !95)
!226 = !DILocation(line: 46, column: 44, scope: !95)
!227 = !DILocation(line: 46, column: 16, scope: !95)
!228 = !DILocation(line: 48, column: 12, scope: !95)
!229 = !DILocation(line: 39, column: 31, scope: !96)
!230 = distinct !{!230, !211, !231, !232}
!231 = !DILocation(line: 49, column: 7, scope: !97)
!232 = !{!"llvm.loop.mustprogress"}
!233 = !DILocation(line: 0, scope: !103)
!234 = !DILocation(line: 50, column: 11, scope: !88)
!235 = !DILocation(line: 0, scope: !102)
!236 = !DILocation(line: 52, column: 29, scope: !102)
!237 = !DILocation(line: 53, column: 29, scope: !102)
!238 = !DILocation(line: 54, column: 36, scope: !102)
!239 = !DILocation(line: 54, column: 34, scope: !102)
!240 = !DILocation(line: 56, column: 40, scope: !102)
!241 = !DILocation(line: 56, column: 58, scope: !102)
!242 = !DILocation(line: 56, column: 30, scope: !102)
!243 = !DILocation(line: 56, column: 21, scope: !102)
!244 = !DILocation(line: 57, column: 40, scope: !102)
!245 = !DILocation(line: 57, column: 58, scope: !102)
!246 = !DILocation(line: 58, column: 7, scope: !102)
!247 = !DILocation(line: 59, column: 21, scope: !248)
!248 = distinct !DILexicalBlock(scope: !103, file: !2, line: 58, column: 14)
!249 = !DILocation(line: 60, column: 9, scope: !248)
!250 = !DILocation(line: 60, column: 21, scope: !248)
!251 = !DILocation(line: 62, column: 10, scope: !88)
!252 = distinct !{!252, !206, !253, !232}
!253 = !DILocation(line: 63, column: 5, scope: !90)
!254 = !DILocation(line: 64, column: 38, scope: !109)
!255 = !DILocation(line: 0, scope: !108)
!256 = !DILocation(line: 69, column: 19, scope: !112)
!257 = !DILocation(line: 69, column: 23, scope: !112)
!258 = !DILocation(line: 67, column: 16, scope: !108)
!259 = !DILocation(line: 67, column: 37, scope: !108)
!260 = !DILocation(line: 67, column: 42, scope: !108)
!261 = !DILocation(line: 67, column: 32, scope: !108)
!262 = !DILocation(line: 69, column: 27, scope: !112)
!263 = !DILocation(line: 0, scope: !111)
!264 = !DILocation(line: 74, column: 21, scope: !119)
!265 = !DILocation(line: 74, column: 7, scope: !120)
!266 = !DILocation(line: 75, column: 29, scope: !118)
!267 = !DILocation(line: 0, scope: !118)
!268 = !DILocation(line: 76, column: 29, scope: !118)
!269 = !DILocation(line: 77, column: 29, scope: !118)
!270 = !DILocation(line: 78, column: 36, scope: !118)
!271 = !DILocation(line: 78, column: 34, scope: !118)
!272 = !DILocation(line: 80, column: 26, scope: !118)
!273 = !DILocation(line: 80, column: 44, scope: !118)
!274 = !DILocation(line: 80, column: 16, scope: !118)
!275 = !DILocation(line: 81, column: 26, scope: !118)
!276 = !DILocation(line: 81, column: 44, scope: !118)
!277 = !DILocation(line: 81, column: 16, scope: !118)
!278 = !DILocation(line: 83, column: 12, scope: !118)
!279 = !DILocation(line: 74, column: 31, scope: !119)
!280 = distinct !{!280, !265, !281, !232}
!281 = !DILocation(line: 84, column: 7, scope: !120)
!282 = !DILocation(line: 0, scope: !126)
!283 = !DILocation(line: 85, column: 11, scope: !111)
!284 = !DILocation(line: 0, scope: !125)
!285 = !DILocation(line: 87, column: 29, scope: !125)
!286 = !DILocation(line: 88, column: 29, scope: !125)
!287 = !DILocation(line: 89, column: 36, scope: !125)
!288 = !DILocation(line: 89, column: 34, scope: !125)
!289 = !DILocation(line: 91, column: 40, scope: !125)
!290 = !DILocation(line: 91, column: 58, scope: !125)
!291 = !DILocation(line: 91, column: 30, scope: !125)
!292 = !DILocation(line: 91, column: 21, scope: !125)
!293 = !DILocation(line: 92, column: 40, scope: !125)
!294 = !DILocation(line: 92, column: 58, scope: !125)
!295 = !DILocation(line: 93, column: 7, scope: !125)
!296 = !DILocation(line: 94, column: 21, scope: !297)
!297 = distinct !DILexicalBlock(scope: !126, file: !2, line: 93, column: 14)
!298 = !DILocation(line: 95, column: 9, scope: !297)
!299 = !DILocation(line: 95, column: 21, scope: !297)
!300 = !DILocation(line: 97, column: 10, scope: !111)
!301 = distinct !{!301, !302, !303, !232}
!302 = !DILocation(line: 69, column: 5, scope: !113)
!303 = !DILocation(line: 98, column: 5, scope: !113)
!304 = !DILocation(line: 99, column: 38, scope: !132)
!305 = !DILocation(line: 100, column: 41, scope: !132)
!306 = !DILocation(line: 0, scope: !131)
!307 = !DILocation(line: 104, column: 19, scope: !135)
!308 = !DILocation(line: 104, column: 23, scope: !135)
!309 = !DILocation(line: 103, column: 16, scope: !131)
!310 = !DILocation(line: 103, column: 37, scope: !131)
!311 = !DILocation(line: 103, column: 42, scope: !131)
!312 = !DILocation(line: 103, column: 32, scope: !131)
!313 = !DILocation(line: 104, column: 27, scope: !135)
!314 = !DILocation(line: 0, scope: !134)
!315 = !DILocation(line: 109, column: 21, scope: !142)
!316 = !DILocation(line: 109, column: 7, scope: !143)
!317 = !DILocation(line: 110, column: 29, scope: !141)
!318 = !DILocation(line: 0, scope: !141)
!319 = !DILocation(line: 111, column: 29, scope: !141)
!320 = !DILocation(line: 112, column: 29, scope: !141)
!321 = !DILocation(line: 113, column: 36, scope: !141)
!322 = !DILocation(line: 113, column: 34, scope: !141)
!323 = !DILocation(line: 115, column: 26, scope: !141)
!324 = !DILocation(line: 115, column: 44, scope: !141)
!325 = !DILocation(line: 115, column: 16, scope: !141)
!326 = !DILocation(line: 116, column: 26, scope: !141)
!327 = !DILocation(line: 116, column: 44, scope: !141)
!328 = !DILocation(line: 116, column: 16, scope: !141)
!329 = !DILocation(line: 118, column: 12, scope: !141)
!330 = !DILocation(line: 109, column: 31, scope: !142)
!331 = distinct !{!331, !316, !332, !232}
!332 = !DILocation(line: 119, column: 7, scope: !143)
!333 = !DILocation(line: 0, scope: !149)
!334 = !DILocation(line: 120, column: 11, scope: !134)
!335 = !DILocation(line: 0, scope: !148)
!336 = !DILocation(line: 122, column: 29, scope: !148)
!337 = !DILocation(line: 123, column: 29, scope: !148)
!338 = !DILocation(line: 124, column: 36, scope: !148)
!339 = !DILocation(line: 124, column: 34, scope: !148)
!340 = !DILocation(line: 126, column: 40, scope: !148)
!341 = !DILocation(line: 126, column: 58, scope: !148)
!342 = !DILocation(line: 126, column: 30, scope: !148)
!343 = !DILocation(line: 126, column: 21, scope: !148)
!344 = !DILocation(line: 127, column: 40, scope: !148)
!345 = !DILocation(line: 127, column: 58, scope: !148)
!346 = !DILocation(line: 128, column: 7, scope: !148)
!347 = !DILocation(line: 129, column: 21, scope: !348)
!348 = distinct !DILexicalBlock(scope: !149, file: !2, line: 128, column: 14)
!349 = !DILocation(line: 130, column: 9, scope: !348)
!350 = !DILocation(line: 130, column: 21, scope: !348)
!351 = !DILocation(line: 132, column: 10, scope: !134)
!352 = distinct !{!352, !353, !354, !232}
!353 = !DILocation(line: 104, column: 5, scope: !136)
!354 = !DILocation(line: 133, column: 5, scope: !136)
!355 = !DILocation(line: 135, column: 38, scope: !155)
!356 = !DILocation(line: 0, scope: !154)
!357 = !DILocation(line: 138, column: 19, scope: !158)
!358 = !DILocation(line: 138, column: 5, scope: !159)
!359 = !DILocation(line: 137, column: 16, scope: !154)
!360 = !DILocation(line: 0, scope: !157)
!361 = !DILocation(line: 141, column: 29, scope: !157)
!362 = !DILocation(line: 143, column: 25, scope: !165)
!363 = !DILocation(line: 143, column: 7, scope: !166)
!364 = !DILocation(line: 144, column: 29, scope: !164)
!365 = !DILocation(line: 0, scope: !164)
!366 = !DILocation(line: 145, column: 29, scope: !164)
!367 = !DILocation(line: 146, column: 29, scope: !164)
!368 = !DILocation(line: 147, column: 36, scope: !164)
!369 = !DILocation(line: 147, column: 34, scope: !164)
!370 = !DILocation(line: 149, column: 26, scope: !164)
!371 = !DILocation(line: 149, column: 44, scope: !164)
!372 = !DILocation(line: 149, column: 16, scope: !164)
!373 = !DILocation(line: 150, column: 26, scope: !164)
!374 = !DILocation(line: 150, column: 44, scope: !164)
!375 = !DILocation(line: 150, column: 16, scope: !164)
!376 = !DILocation(line: 152, column: 12, scope: !164)
!377 = !DILocation(line: 143, column: 31, scope: !165)
!378 = distinct !{!378, !363, !379, !232}
!379 = !DILocation(line: 153, column: 7, scope: !166)
!380 = !DILocation(line: 0, scope: !172)
!381 = !DILocation(line: 154, column: 11, scope: !157)
!382 = !DILocation(line: 0, scope: !171)
!383 = !DILocation(line: 156, column: 29, scope: !171)
!384 = !DILocation(line: 157, column: 29, scope: !171)
!385 = !DILocation(line: 158, column: 36, scope: !171)
!386 = !DILocation(line: 158, column: 34, scope: !171)
!387 = !DILocation(line: 160, column: 40, scope: !171)
!388 = !DILocation(line: 160, column: 58, scope: !171)
!389 = !DILocation(line: 160, column: 30, scope: !171)
!390 = !DILocation(line: 160, column: 21, scope: !171)
!391 = !DILocation(line: 161, column: 40, scope: !171)
!392 = !DILocation(line: 161, column: 58, scope: !171)
!393 = !DILocation(line: 162, column: 7, scope: !171)
!394 = !DILocation(line: 163, column: 21, scope: !395)
!395 = distinct !DILexicalBlock(scope: !172, file: !2, line: 162, column: 14)
!396 = !DILocation(line: 164, column: 9, scope: !395)
!397 = !DILocation(line: 164, column: 21, scope: !395)
!398 = !DILocation(line: 166, column: 10, scope: !157)
!399 = distinct !{!399, !358, !400, !232}
!400 = !DILocation(line: 167, column: 5, scope: !159)
!401 = !DILocation(line: 169, column: 5, scope: !402)
!402 = distinct !DILexicalBlock(scope: !155, file: !2, line: 168, column: 10)
!403 = !DILocation(line: 15, column: 1, scope: !404)
!404 = !DILexicalBlockFile(scope: !53, file: !18, discriminator: 0)
!405 = !DISubprogram(name: "cblas_xerbla", scope: !21, file: !21, line: 602, type: !406, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!406 = !DISubroutineType(types: !407)
!407 = !{null, !61, !408, !408, null}
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!409 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
