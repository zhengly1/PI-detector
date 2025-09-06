; ModuleID = 'ztpmv.c'
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
  br i1 %42, label %43, label %159, !dbg !200

43:                                               ; preds = %37, %31
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !83, metadata !DIExpression()), !dbg !201
  tail call void @llvm.dbg.value(metadata i32 0, metadata !74, metadata !DIExpression()), !dbg !178
  %44 = icmp sgt i32 %4, 0, !dbg !202
  br i1 %44, label %45, label %505, !dbg !203

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

56:                                               ; preds = %45, %145
  %57 = phi i64 [ %54, %45 ], [ %155, %145 ]
  %58 = phi i32 [ %49, %45 ], [ %62, %145 ]
  %59 = phi i64 [ 1, %45 ], [ %157, %145 ]
  %60 = phi i32 [ 0, %45 ], [ %156, %145 ]
  %61 = phi i32 [ 0, %45 ], [ %105, %145 ]
  %62 = add i32 %58, %7, !dbg !203
  tail call void @llvm.dbg.value(metadata i32 %61, metadata !74, metadata !DIExpression()), !dbg !178
  tail call void @llvm.dbg.value(metadata i64 %57, metadata !83, metadata !DIExpression()), !dbg !201
  %63 = zext i32 %62 to i64, !dbg !205
  %64 = add i32 %51, %60, !dbg !205
  %65 = mul nsw i32 %64, %61, !dbg !205
  %66 = sdiv i32 %65, 2, !dbg !205
  tail call void @llvm.dbg.value(metadata double poison, metadata !86, metadata !DIExpression()), !dbg !206
  tail call void @llvm.dbg.value(metadata double poison, metadata !90, metadata !DIExpression()), !dbg !206
  br i1 %12, label %67, label %92, !dbg !207

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
  %88 = fsub double %86, %87, !dbg !219
  tail call void @llvm.dbg.value(metadata double %88, metadata !91, metadata !DIExpression()), !dbg !206
  %89 = fmul double %76, %85, !dbg !220
  %90 = fmul double %73, %81, !dbg !221
  %91 = fadd double %90, %89, !dbg !222
  tail call void @llvm.dbg.value(metadata double %91, metadata !92, metadata !DIExpression()), !dbg !206
  br label %102, !dbg !223

92:                                               ; preds = %56
  %93 = trunc i64 %57 to i32, !dbg !224
  %94 = shl nsw i32 %93, 1, !dbg !224
  %95 = sext i32 %94 to i64, !dbg !224
  %96 = getelementptr inbounds double, ptr %6, i64 %95, !dbg !224
  %97 = load double, ptr %96, align 8, !dbg !224, !tbaa !209
  tail call void @llvm.dbg.value(metadata double %97, metadata !91, metadata !DIExpression()), !dbg !206
  %98 = or disjoint i32 %94, 1, !dbg !226
  %99 = sext i32 %98 to i64, !dbg !226
  %100 = getelementptr inbounds double, ptr %6, i64 %99, !dbg !226
  %101 = load double, ptr %100, align 8, !dbg !226, !tbaa !209
  tail call void @llvm.dbg.value(metadata double %101, metadata !92, metadata !DIExpression()), !dbg !206
  br label %102

102:                                              ; preds = %92, %67
  %103 = phi double [ %91, %67 ], [ %101, %92 ], !dbg !227
  %104 = phi double [ %88, %67 ], [ %97, %92 ], !dbg !227
  tail call void @llvm.dbg.value(metadata double %104, metadata !91, metadata !DIExpression()), !dbg !206
  tail call void @llvm.dbg.value(metadata double %103, metadata !92, metadata !DIExpression()), !dbg !206
  %105 = add nuw nsw i32 %61, 1, !dbg !228
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 poison, i32 poison, i32 poison), metadata !97, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !229
  tail call void @llvm.dbg.value(metadata i32 %105, metadata !77, metadata !DIExpression()), !dbg !178
  tail call void @llvm.dbg.value(metadata double %104, metadata !91, metadata !DIExpression()), !dbg !206
  tail call void @llvm.dbg.value(metadata double %103, metadata !92, metadata !DIExpression()), !dbg !206
  %106 = icmp slt i32 %105, %4, !dbg !230
  br i1 %106, label %107, label %145, !dbg !231

107:                                              ; preds = %102
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 poison, i32 poison, i32 poison), metadata !97, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !229
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 poison, i32 poison, i32 poison), metadata !97, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !229
  %108 = add i32 %66, %60
  br label %109, !dbg !231

109:                                              ; preds = %107, %109
  %110 = phi i64 [ %63, %107 ], [ %142, %109 ]
  %111 = phi i64 [ %59, %107 ], [ %143, %109 ]
  %112 = phi double [ %104, %107 ], [ %137, %109 ]
  %113 = phi double [ %103, %107 ], [ %141, %109 ]
  tail call void @llvm.dbg.value(metadata i64 %111, metadata !77, metadata !DIExpression()), !dbg !178
  tail call void @llvm.dbg.value(metadata double %112, metadata !91, metadata !DIExpression()), !dbg !206
  tail call void @llvm.dbg.value(metadata double %113, metadata !92, metadata !DIExpression()), !dbg !206
  tail call void @llvm.dbg.value(metadata i64 %110, metadata !97, metadata !DIExpression()), !dbg !229
  %114 = trunc i64 %111 to i32, !dbg !232
  %115 = add i32 %108, %114, !dbg !232
  %116 = shl nsw i32 %115, 1, !dbg !232
  %117 = sext i32 %116 to i64, !dbg !232
  %118 = getelementptr inbounds double, ptr %5, i64 %117, !dbg !232
  %119 = load double, ptr %118, align 8, !dbg !232, !tbaa !209
  tail call void @llvm.dbg.value(metadata double %119, metadata !99, metadata !DIExpression()), !dbg !233
  %120 = or disjoint i32 %116, 1, !dbg !234
  %121 = sext i32 %120 to i64, !dbg !234
  %122 = getelementptr inbounds double, ptr %5, i64 %121, !dbg !234
  %123 = load double, ptr %122, align 8, !dbg !234, !tbaa !209
  %124 = fmul double %123, %52, !dbg !235
  tail call void @llvm.dbg.value(metadata double %124, metadata !103, metadata !DIExpression()), !dbg !233
  %125 = trunc i64 %110 to i32, !dbg !236
  %126 = shl nsw i32 %125, 1, !dbg !236
  %127 = sext i32 %126 to i64, !dbg !236
  %128 = getelementptr inbounds double, ptr %6, i64 %127, !dbg !236
  %129 = load double, ptr %128, align 8, !dbg !236, !tbaa !209
  tail call void @llvm.dbg.value(metadata double %129, metadata !104, metadata !DIExpression()), !dbg !233
  %130 = or disjoint i32 %126, 1, !dbg !237
  %131 = sext i32 %130 to i64, !dbg !237
  %132 = getelementptr inbounds double, ptr %6, i64 %131, !dbg !237
  %133 = load double, ptr %132, align 8, !dbg !237, !tbaa !209
  tail call void @llvm.dbg.value(metadata double %133, metadata !105, metadata !DIExpression()), !dbg !233
  %134 = fmul double %119, %129, !dbg !238
  %135 = fmul double %124, %133, !dbg !239
  %136 = fsub double %134, %135, !dbg !240
  %137 = fadd double %112, %136, !dbg !241
  tail call void @llvm.dbg.value(metadata double %137, metadata !91, metadata !DIExpression()), !dbg !206
  %138 = fmul double %119, %133, !dbg !242
  %139 = fmul double %124, %129, !dbg !243
  %140 = fadd double %139, %138, !dbg !244
  %141 = fadd double %113, %140, !dbg !245
  tail call void @llvm.dbg.value(metadata double %141, metadata !92, metadata !DIExpression()), !dbg !206
  %142 = add i64 %110, %53, !dbg !246
  tail call void @llvm.dbg.value(metadata i64 %142, metadata !97, metadata !DIExpression()), !dbg !229
  %143 = add nuw nsw i64 %111, 1, !dbg !247
  tail call void @llvm.dbg.value(metadata i64 %143, metadata !77, metadata !DIExpression()), !dbg !178
  %144 = icmp eq i64 %143, %55, !dbg !230
  br i1 %144, label %145, label %109, !dbg !231, !llvm.loop !248

145:                                              ; preds = %109, %102
  %146 = phi double [ %103, %102 ], [ %141, %109 ], !dbg !206
  %147 = phi double [ %104, %102 ], [ %137, %109 ], !dbg !206
  %148 = trunc i64 %57 to i32, !dbg !251
  %149 = shl nsw i32 %148, 1, !dbg !251
  %150 = sext i32 %149 to i64, !dbg !251
  %151 = getelementptr inbounds double, ptr %6, i64 %150, !dbg !251
  store double %147, ptr %151, align 8, !dbg !252, !tbaa !209
  %152 = or disjoint i32 %149, 1, !dbg !253
  %153 = sext i32 %152 to i64, !dbg !253
  %154 = getelementptr inbounds double, ptr %6, i64 %153, !dbg !253
  store double %146, ptr %154, align 8, !dbg !254, !tbaa !209
  %155 = add i64 %57, %53, !dbg !255
  tail call void @llvm.dbg.value(metadata i64 %155, metadata !83, metadata !DIExpression()), !dbg !201
  tail call void @llvm.dbg.value(metadata i32 %105, metadata !74, metadata !DIExpression()), !dbg !178
  %156 = xor i32 %61, -1
  %157 = add nuw nsw i64 %59, 1, !dbg !203
  %158 = icmp eq i32 %105, %4, !dbg !202
  br i1 %158, label %505, label %56, !dbg !203, !llvm.loop !256

159:                                              ; preds = %37
  %160 = and i1 %41, %34, !dbg !258
  %161 = and i1 %35, %40
  %162 = or i1 %160, %161, !dbg !258
  br i1 %162, label %163, label %271, !dbg !258

163:                                              ; preds = %159
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 poison, i32 poison, i32 poison), metadata !106, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_minus, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !259
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !74, metadata !DIExpression()), !dbg !178
  %164 = icmp sgt i32 %4, 0, !dbg !260
  br i1 %164, label %165, label %505, !dbg !261

165:                                              ; preds = %163
  %166 = icmp sgt i32 %7, 0, !dbg !262
  %167 = sub nsw i32 1, %4, !dbg !262
  %168 = mul i32 %167, %7, !dbg !262
  %169 = select i1 %166, i32 0, i32 %168, !dbg !262
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 %169, i32 %4, i32 %7), metadata !106, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_minus, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !259
  %170 = add nsw i32 %4, -1, !dbg !263
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 %169, i32 %170, i32 %7), metadata !106, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !259
  %171 = mul i32 %170, %7, !dbg !264
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 %169, i32 %171), metadata !106, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !259
  %172 = add nsw i32 %169, %171, !dbg !265
  tail call void @llvm.dbg.value(metadata i32 %172, metadata !106, metadata !DIExpression()), !dbg !259
  %173 = sitofp i32 %10 to double
  %174 = sub i32 0, %171
  %175 = select i1 %166, i32 0, i32 %174
  %176 = zext i32 %175 to i64, !dbg !261
  %177 = zext i32 %7 to i64, !dbg !261
  %178 = zext nneg i32 %170 to i64, !dbg !261
  br label %179, !dbg !261

179:                                              ; preds = %165, %260
  %180 = phi i64 [ %178, %165 ], [ %270, %260 ]
  %181 = phi i32 [ %4, %165 ], [ %183, %260 ]
  %182 = phi i32 [ %172, %165 ], [ %269, %260 ]
  tail call void @llvm.dbg.value(metadata i32 %181, metadata !74, metadata !DIExpression()), !dbg !178
  tail call void @llvm.dbg.value(metadata i32 %182, metadata !106, metadata !DIExpression()), !dbg !259
  %183 = add nsw i32 %181, -1, !dbg !266
  tail call void @llvm.dbg.value(metadata i32 %183, metadata !74, metadata !DIExpression()), !dbg !178
  %184 = mul nsw i32 %183, %181, !dbg !267
  %185 = sdiv i32 %184, 2, !dbg !267
  tail call void @llvm.dbg.value(metadata double poison, metadata !109, metadata !DIExpression()), !dbg !268
  tail call void @llvm.dbg.value(metadata double poison, metadata !113, metadata !DIExpression()), !dbg !268
  br i1 %12, label %186, label %211, !dbg !269

186:                                              ; preds = %179
  %187 = add nsw i32 %185, %183, !dbg !267
  %188 = shl nsw i32 %187, 1, !dbg !267
  %189 = or disjoint i32 %188, 1, !dbg !270
  %190 = sext i32 %189 to i64, !dbg !270
  %191 = getelementptr inbounds double, ptr %5, i64 %190, !dbg !270
  %192 = load double, ptr %191, align 8, !dbg !270, !tbaa !209
  %193 = fmul double %192, %173, !dbg !271
  tail call void @llvm.dbg.value(metadata double %193, metadata !113, metadata !DIExpression()), !dbg !268
  %194 = sext i32 %188 to i64, !dbg !267
  %195 = getelementptr inbounds double, ptr %5, i64 %194, !dbg !267
  %196 = load double, ptr %195, align 8, !dbg !267, !tbaa !209
  tail call void @llvm.dbg.value(metadata double %196, metadata !109, metadata !DIExpression()), !dbg !268
  %197 = shl nsw i32 %182, 1, !dbg !272
  %198 = sext i32 %197 to i64, !dbg !272
  %199 = getelementptr inbounds double, ptr %6, i64 %198, !dbg !272
  %200 = load double, ptr %199, align 8, !dbg !272, !tbaa !209
  tail call void @llvm.dbg.value(metadata double %200, metadata !116, metadata !DIExpression()), !dbg !273
  %201 = or disjoint i32 %197, 1, !dbg !274
  %202 = sext i32 %201 to i64, !dbg !274
  %203 = getelementptr inbounds double, ptr %6, i64 %202, !dbg !274
  %204 = load double, ptr %203, align 8, !dbg !274, !tbaa !209
  tail call void @llvm.dbg.value(metadata double %204, metadata !119, metadata !DIExpression()), !dbg !273
  %205 = fmul double %196, %200, !dbg !275
  %206 = fmul double %193, %204, !dbg !276
  %207 = fsub double %205, %206, !dbg !277
  tail call void @llvm.dbg.value(metadata double %207, metadata !114, metadata !DIExpression()), !dbg !268
  %208 = fmul double %196, %204, !dbg !278
  %209 = fmul double %193, %200, !dbg !279
  %210 = fadd double %209, %208, !dbg !280
  tail call void @llvm.dbg.value(metadata double %210, metadata !115, metadata !DIExpression()), !dbg !268
  br label %220, !dbg !281

211:                                              ; preds = %179
  %212 = shl nsw i32 %182, 1, !dbg !282
  %213 = sext i32 %212 to i64, !dbg !282
  %214 = getelementptr inbounds double, ptr %6, i64 %213, !dbg !282
  %215 = load double, ptr %214, align 8, !dbg !282, !tbaa !209
  tail call void @llvm.dbg.value(metadata double %215, metadata !114, metadata !DIExpression()), !dbg !268
  %216 = or disjoint i32 %212, 1, !dbg !284
  %217 = sext i32 %216 to i64, !dbg !284
  %218 = getelementptr inbounds double, ptr %6, i64 %217, !dbg !284
  %219 = load double, ptr %218, align 8, !dbg !284, !tbaa !209
  tail call void @llvm.dbg.value(metadata double %219, metadata !115, metadata !DIExpression()), !dbg !268
  br label %220

220:                                              ; preds = %211, %186
  %221 = phi double [ %210, %186 ], [ %219, %211 ], !dbg !285
  %222 = phi double [ %207, %186 ], [ %215, %211 ], !dbg !285
  tail call void @llvm.dbg.value(metadata i32 %175, metadata !120, metadata !DIExpression()), !dbg !286
  tail call void @llvm.dbg.value(metadata i32 0, metadata !77, metadata !DIExpression()), !dbg !178
  tail call void @llvm.dbg.value(metadata double %222, metadata !114, metadata !DIExpression()), !dbg !268
  tail call void @llvm.dbg.value(metadata double %221, metadata !115, metadata !DIExpression()), !dbg !268
  %223 = icmp ugt i32 %181, 1, !dbg !287
  br i1 %223, label %224, label %260, !dbg !288

224:                                              ; preds = %220, %224
  %225 = phi i64 [ %257, %224 ], [ %176, %220 ]
  %226 = phi i64 [ %258, %224 ], [ 0, %220 ]
  %227 = phi double [ %252, %224 ], [ %222, %220 ]
  %228 = phi double [ %256, %224 ], [ %221, %220 ]
  tail call void @llvm.dbg.value(metadata i64 %226, metadata !77, metadata !DIExpression()), !dbg !178
  tail call void @llvm.dbg.value(metadata double %227, metadata !114, metadata !DIExpression()), !dbg !268
  tail call void @llvm.dbg.value(metadata double %228, metadata !115, metadata !DIExpression()), !dbg !268
  tail call void @llvm.dbg.value(metadata i64 %225, metadata !120, metadata !DIExpression()), !dbg !286
  %229 = trunc i64 %226 to i32, !dbg !289
  %230 = add i32 %185, %229, !dbg !289
  %231 = shl nsw i32 %230, 1, !dbg !289
  %232 = sext i32 %231 to i64, !dbg !289
  %233 = getelementptr inbounds double, ptr %5, i64 %232, !dbg !289
  %234 = load double, ptr %233, align 8, !dbg !289, !tbaa !209
  tail call void @llvm.dbg.value(metadata double %234, metadata !122, metadata !DIExpression()), !dbg !290
  %235 = or disjoint i32 %231, 1, !dbg !291
  %236 = sext i32 %235 to i64, !dbg !291
  %237 = getelementptr inbounds double, ptr %5, i64 %236, !dbg !291
  %238 = load double, ptr %237, align 8, !dbg !291, !tbaa !209
  %239 = fmul double %238, %173, !dbg !292
  tail call void @llvm.dbg.value(metadata double %239, metadata !126, metadata !DIExpression()), !dbg !290
  %240 = trunc i64 %225 to i32, !dbg !293
  %241 = shl nsw i32 %240, 1, !dbg !293
  %242 = sext i32 %241 to i64, !dbg !293
  %243 = getelementptr inbounds double, ptr %6, i64 %242, !dbg !293
  %244 = load double, ptr %243, align 8, !dbg !293, !tbaa !209
  tail call void @llvm.dbg.value(metadata double %244, metadata !127, metadata !DIExpression()), !dbg !290
  %245 = or disjoint i32 %241, 1, !dbg !294
  %246 = sext i32 %245 to i64, !dbg !294
  %247 = getelementptr inbounds double, ptr %6, i64 %246, !dbg !294
  %248 = load double, ptr %247, align 8, !dbg !294, !tbaa !209
  tail call void @llvm.dbg.value(metadata double %248, metadata !128, metadata !DIExpression()), !dbg !290
  %249 = fmul double %234, %244, !dbg !295
  %250 = fmul double %239, %248, !dbg !296
  %251 = fsub double %249, %250, !dbg !297
  %252 = fadd double %227, %251, !dbg !298
  tail call void @llvm.dbg.value(metadata double %252, metadata !114, metadata !DIExpression()), !dbg !268
  %253 = fmul double %234, %248, !dbg !299
  %254 = fmul double %239, %244, !dbg !300
  %255 = fadd double %254, %253, !dbg !301
  %256 = fadd double %228, %255, !dbg !302
  tail call void @llvm.dbg.value(metadata double %256, metadata !115, metadata !DIExpression()), !dbg !268
  %257 = add i64 %225, %177, !dbg !303
  tail call void @llvm.dbg.value(metadata i64 %257, metadata !120, metadata !DIExpression()), !dbg !286
  %258 = add nuw nsw i64 %226, 1, !dbg !304
  tail call void @llvm.dbg.value(metadata i64 %258, metadata !77, metadata !DIExpression()), !dbg !178
  %259 = icmp eq i64 %258, %180, !dbg !287
  br i1 %259, label %260, label %224, !dbg !288, !llvm.loop !305

260:                                              ; preds = %224, %220
  %261 = phi double [ %221, %220 ], [ %256, %224 ], !dbg !268
  %262 = phi double [ %222, %220 ], [ %252, %224 ], !dbg !268
  %263 = shl nsw i32 %182, 1, !dbg !307
  %264 = sext i32 %263 to i64, !dbg !307
  %265 = getelementptr inbounds double, ptr %6, i64 %264, !dbg !307
  store double %262, ptr %265, align 8, !dbg !308, !tbaa !209
  %266 = or disjoint i32 %263, 1, !dbg !309
  %267 = sext i32 %266 to i64, !dbg !309
  %268 = getelementptr inbounds double, ptr %6, i64 %267, !dbg !309
  store double %261, ptr %268, align 8, !dbg !310, !tbaa !209
  %269 = sub nsw i32 %182, %7, !dbg !311
  tail call void @llvm.dbg.value(metadata i32 %183, metadata !74, metadata !DIExpression()), !dbg !178
  tail call void @llvm.dbg.value(metadata i32 %269, metadata !106, metadata !DIExpression()), !dbg !259
  %270 = add nsw i64 %180, -1, !dbg !261
  br i1 %223, label %179, label %505, !dbg !261, !llvm.loop !312

271:                                              ; preds = %159
  %272 = and i1 %32, %39, !dbg !315
  %273 = and i1 %35, %272, !dbg !315
  br i1 %273, label %277, label %274, !dbg !315

274:                                              ; preds = %271
  %275 = and i1 %38, %33, !dbg !316
  %276 = and i1 %41, %275, !dbg !316
  br i1 %276, label %277, label %392, !dbg !316

277:                                              ; preds = %274, %271
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 poison, i32 poison, i32 poison), metadata !129, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_minus, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !317
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !74, metadata !DIExpression()), !dbg !178
  %278 = icmp sgt i32 %4, 0, !dbg !318
  br i1 %278, label %279, label %505, !dbg !319

279:                                              ; preds = %277
  %280 = icmp sgt i32 %7, 0, !dbg !320
  %281 = sub nsw i32 1, %4, !dbg !320
  %282 = mul i32 %281, %7, !dbg !320
  %283 = select i1 %280, i32 0, i32 %282, !dbg !320
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 %283, i32 %4, i32 %7), metadata !129, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_minus, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !317
  %284 = add nsw i32 %4, -1, !dbg !321
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 %283, i32 %284, i32 %7), metadata !129, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !317
  %285 = mul i32 %284, %7, !dbg !322
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 %283, i32 %285), metadata !129, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !317
  %286 = add nsw i32 %283, %285, !dbg !323
  tail call void @llvm.dbg.value(metadata i32 %286, metadata !129, metadata !DIExpression()), !dbg !317
  %287 = shl nuw nsw i32 %4, 1
  %288 = sitofp i32 %10 to double
  %289 = add nuw i32 %287, 2
  %290 = sub i32 0, %285
  %291 = select i1 %280, i32 0, i32 %290
  %292 = or disjoint i32 %287, 1
  %293 = zext i32 %291 to i64, !dbg !319
  %294 = zext i32 %7 to i64, !dbg !319
  br label %295, !dbg !319

295:                                              ; preds = %279, %381
  %296 = phi i32 [ %284, %279 ], [ %391, %381 ]
  %297 = phi i32 [ %4, %279 ], [ %299, %381 ]
  %298 = phi i32 [ %286, %279 ], [ %390, %381 ]
  tail call void @llvm.dbg.value(metadata i32 %297, metadata !74, metadata !DIExpression()), !dbg !178
  tail call void @llvm.dbg.value(metadata i32 %298, metadata !129, metadata !DIExpression()), !dbg !317
  %299 = add nsw i32 %297, -1, !dbg !324
  tail call void @llvm.dbg.value(metadata i32 %299, metadata !74, metadata !DIExpression()), !dbg !178
  tail call void @llvm.dbg.value(metadata double poison, metadata !132, metadata !DIExpression()), !dbg !325
  tail call void @llvm.dbg.value(metadata double poison, metadata !136, metadata !DIExpression()), !dbg !325
  br i1 %12, label %300, label %327, !dbg !326

300:                                              ; preds = %295
  %301 = sub i32 %289, %297, !dbg !327
  %302 = mul nsw i32 %299, %301, !dbg !327
  %303 = sdiv i32 %302, 2, !dbg !327
  %304 = shl nsw i32 %303, 1, !dbg !327
  %305 = or disjoint i32 %304, 1, !dbg !328
  %306 = sext i32 %305 to i64, !dbg !328
  %307 = getelementptr inbounds double, ptr %5, i64 %306, !dbg !328
  %308 = load double, ptr %307, align 8, !dbg !328, !tbaa !209
  %309 = fmul double %308, %288, !dbg !329
  tail call void @llvm.dbg.value(metadata double %309, metadata !136, metadata !DIExpression()), !dbg !325
  %310 = sext i32 %304 to i64, !dbg !327
  %311 = getelementptr inbounds double, ptr %5, i64 %310, !dbg !327
  %312 = load double, ptr %311, align 8, !dbg !327, !tbaa !209
  tail call void @llvm.dbg.value(metadata double %312, metadata !132, metadata !DIExpression()), !dbg !325
  %313 = shl nsw i32 %298, 1, !dbg !330
  %314 = sext i32 %313 to i64, !dbg !330
  %315 = getelementptr inbounds double, ptr %6, i64 %314, !dbg !330
  %316 = load double, ptr %315, align 8, !dbg !330, !tbaa !209
  tail call void @llvm.dbg.value(metadata double %316, metadata !139, metadata !DIExpression()), !dbg !331
  %317 = or disjoint i32 %313, 1, !dbg !332
  %318 = sext i32 %317 to i64, !dbg !332
  %319 = getelementptr inbounds double, ptr %6, i64 %318, !dbg !332
  %320 = load double, ptr %319, align 8, !dbg !332, !tbaa !209
  tail call void @llvm.dbg.value(metadata double %320, metadata !142, metadata !DIExpression()), !dbg !331
  %321 = fmul double %312, %316, !dbg !333
  %322 = fmul double %309, %320, !dbg !334
  %323 = fsub double %321, %322, !dbg !335
  tail call void @llvm.dbg.value(metadata double %323, metadata !137, metadata !DIExpression()), !dbg !325
  %324 = fmul double %312, %320, !dbg !336
  %325 = fmul double %309, %316, !dbg !337
  %326 = fadd double %325, %324, !dbg !338
  tail call void @llvm.dbg.value(metadata double %326, metadata !138, metadata !DIExpression()), !dbg !325
  br label %336, !dbg !339

327:                                              ; preds = %295
  %328 = shl nsw i32 %298, 1, !dbg !340
  %329 = sext i32 %328 to i64, !dbg !340
  %330 = getelementptr inbounds double, ptr %6, i64 %329, !dbg !340
  %331 = load double, ptr %330, align 8, !dbg !340, !tbaa !209
  tail call void @llvm.dbg.value(metadata double %331, metadata !137, metadata !DIExpression()), !dbg !325
  %332 = or disjoint i32 %328, 1, !dbg !342
  %333 = sext i32 %332 to i64, !dbg !342
  %334 = getelementptr inbounds double, ptr %6, i64 %333, !dbg !342
  %335 = load double, ptr %334, align 8, !dbg !342, !tbaa !209
  tail call void @llvm.dbg.value(metadata double %335, metadata !138, metadata !DIExpression()), !dbg !325
  br label %336

336:                                              ; preds = %327, %300
  %337 = phi double [ %326, %300 ], [ %335, %327 ], !dbg !343
  %338 = phi double [ %323, %300 ], [ %331, %327 ], !dbg !343
  tail call void @llvm.dbg.value(metadata i32 %291, metadata !143, metadata !DIExpression()), !dbg !344
  tail call void @llvm.dbg.value(metadata i32 0, metadata !77, metadata !DIExpression()), !dbg !178
  tail call void @llvm.dbg.value(metadata double %338, metadata !137, metadata !DIExpression()), !dbg !325
  tail call void @llvm.dbg.value(metadata double %337, metadata !138, metadata !DIExpression()), !dbg !325
  %339 = icmp ugt i32 %297, 1, !dbg !345
  br i1 %339, label %340, label %381, !dbg !346

340:                                              ; preds = %336, %340
  %341 = phi i64 [ %377, %340 ], [ %293, %336 ]
  %342 = phi i32 [ %379, %340 ], [ 0, %336 ]
  %343 = phi i32 [ %378, %340 ], [ 0, %336 ]
  %344 = phi double [ %372, %340 ], [ %338, %336 ]
  %345 = phi double [ %376, %340 ], [ %337, %336 ]
  tail call void @llvm.dbg.value(metadata i32 %343, metadata !77, metadata !DIExpression()), !dbg !178
  tail call void @llvm.dbg.value(metadata i64 %341, metadata !143, metadata !DIExpression()), !dbg !344
  tail call void @llvm.dbg.value(metadata double %344, metadata !137, metadata !DIExpression()), !dbg !325
  tail call void @llvm.dbg.value(metadata double %345, metadata !138, metadata !DIExpression()), !dbg !325
  %346 = trunc i64 %341 to i32, !dbg !347
  %347 = shl nsw i32 %346, 1, !dbg !347
  %348 = sext i32 %347 to i64, !dbg !347
  %349 = getelementptr inbounds double, ptr %6, i64 %348, !dbg !347
  %350 = load double, ptr %349, align 8, !dbg !347, !tbaa !209
  tail call void @llvm.dbg.value(metadata double %350, metadata !145, metadata !DIExpression()), !dbg !348
  %351 = or disjoint i32 %347, 1, !dbg !349
  %352 = sext i32 %351 to i64, !dbg !349
  %353 = getelementptr inbounds double, ptr %6, i64 %352, !dbg !349
  %354 = load double, ptr %353, align 8, !dbg !349, !tbaa !209
  tail call void @llvm.dbg.value(metadata double %354, metadata !149, metadata !DIExpression()), !dbg !348
  %355 = add i32 %292, %342, !dbg !350
  %356 = mul nsw i32 %355, %343, !dbg !350
  %357 = sdiv i32 %356, 2, !dbg !350
  %358 = add i32 %342, %299, !dbg !350
  %359 = add i32 %358, %357, !dbg !350
  %360 = shl nsw i32 %359, 1, !dbg !350
  %361 = sext i32 %360 to i64, !dbg !350
  %362 = getelementptr inbounds double, ptr %5, i64 %361, !dbg !350
  %363 = load double, ptr %362, align 8, !dbg !350, !tbaa !209
  tail call void @llvm.dbg.value(metadata double %363, metadata !150, metadata !DIExpression()), !dbg !348
  %364 = or disjoint i32 %360, 1, !dbg !351
  %365 = sext i32 %364 to i64, !dbg !351
  %366 = getelementptr inbounds double, ptr %5, i64 %365, !dbg !351
  %367 = load double, ptr %366, align 8, !dbg !351, !tbaa !209
  %368 = fmul double %367, %288, !dbg !352
  tail call void @llvm.dbg.value(metadata double %368, metadata !151, metadata !DIExpression()), !dbg !348
  %369 = fmul double %350, %363, !dbg !353
  %370 = fmul double %354, %368, !dbg !354
  %371 = fsub double %369, %370, !dbg !355
  %372 = fadd double %344, %371, !dbg !356
  tail call void @llvm.dbg.value(metadata double %372, metadata !137, metadata !DIExpression()), !dbg !325
  %373 = fmul double %354, %363, !dbg !357
  %374 = fmul double %350, %368, !dbg !358
  %375 = fadd double %373, %374, !dbg !359
  %376 = fadd double %345, %375, !dbg !360
  tail call void @llvm.dbg.value(metadata double %376, metadata !138, metadata !DIExpression()), !dbg !325
  %377 = add i64 %341, %294, !dbg !361
  tail call void @llvm.dbg.value(metadata i64 %377, metadata !143, metadata !DIExpression()), !dbg !344
  %378 = add nuw nsw i32 %343, 1, !dbg !362
  tail call void @llvm.dbg.value(metadata i32 %378, metadata !77, metadata !DIExpression()), !dbg !178
  %379 = xor i32 %343, -1
  %380 = icmp eq i32 %378, %296, !dbg !345
  br i1 %380, label %381, label %340, !dbg !346, !llvm.loop !363

381:                                              ; preds = %340, %336
  %382 = phi double [ %337, %336 ], [ %376, %340 ], !dbg !325
  %383 = phi double [ %338, %336 ], [ %372, %340 ], !dbg !325
  %384 = shl nsw i32 %298, 1, !dbg !365
  %385 = sext i32 %384 to i64, !dbg !365
  %386 = getelementptr inbounds double, ptr %6, i64 %385, !dbg !365
  store double %383, ptr %386, align 8, !dbg !366, !tbaa !209
  %387 = or disjoint i32 %384, 1, !dbg !367
  %388 = sext i32 %387 to i64, !dbg !367
  %389 = getelementptr inbounds double, ptr %6, i64 %388, !dbg !367
  store double %382, ptr %389, align 8, !dbg !368, !tbaa !209
  %390 = sub nsw i32 %298, %7, !dbg !369
  tail call void @llvm.dbg.value(metadata i32 %299, metadata !74, metadata !DIExpression()), !dbg !178
  tail call void @llvm.dbg.value(metadata i32 %390, metadata !129, metadata !DIExpression()), !dbg !317
  %391 = add nsw i32 %296, -1, !dbg !319
  br i1 %339, label %295, label %505, !dbg !319, !llvm.loop !370

392:                                              ; preds = %274
  %393 = and i1 %41, %272, !dbg !373
  %394 = and i1 %35, %275
  %395 = or i1 %393, %394, !dbg !373
  br i1 %395, label %396, label %504, !dbg !373

396:                                              ; preds = %392
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !152, metadata !DIExpression()), !dbg !374
  tail call void @llvm.dbg.value(metadata i32 0, metadata !74, metadata !DIExpression()), !dbg !178
  %397 = icmp sgt i32 %4, 0, !dbg !375
  br i1 %397, label %398, label %505, !dbg !376

398:                                              ; preds = %396
  %399 = icmp sgt i32 %7, 0, !dbg !377
  %400 = sub nsw i32 1, %4, !dbg !377
  %401 = mul i32 %400, %7, !dbg !377
  %402 = select i1 %399, i32 0, i32 %401, !dbg !377
  tail call void @llvm.dbg.value(metadata i32 %402, metadata !152, metadata !DIExpression()), !dbg !374
  %403 = sitofp i32 %10 to double
  %404 = zext i32 %7 to i64, !dbg !376
  %405 = zext i32 %402 to i64, !dbg !376
  br label %406, !dbg !376

406:                                              ; preds = %398, %492
  %407 = phi i64 [ %405, %398 ], [ %502, %492 ]
  %408 = phi i32 [ %402, %398 ], [ %410, %492 ]
  %409 = phi i32 [ 0, %398 ], [ %412, %492 ]
  %410 = add i32 %408, %7, !dbg !376
  tail call void @llvm.dbg.value(metadata i32 %409, metadata !74, metadata !DIExpression()), !dbg !178
  tail call void @llvm.dbg.value(metadata i64 %407, metadata !152, metadata !DIExpression()), !dbg !374
  %411 = zext i32 %410 to i64, !dbg !378
  %412 = add nuw nsw i32 %409, 1, !dbg !378
  tail call void @llvm.dbg.value(metadata double poison, metadata !155, metadata !DIExpression()), !dbg !379
  tail call void @llvm.dbg.value(metadata double poison, metadata !159, metadata !DIExpression()), !dbg !379
  br i1 %12, label %413, label %440, !dbg !380

413:                                              ; preds = %406
  %414 = add nuw i32 %409, 3, !dbg !378
  %415 = mul i32 %414, %409, !dbg !378
  %416 = or i32 %415, 1, !dbg !381
  %417 = sext i32 %416 to i64, !dbg !381
  %418 = getelementptr inbounds double, ptr %5, i64 %417, !dbg !381
  %419 = load double, ptr %418, align 8, !dbg !381, !tbaa !209
  %420 = fmul double %419, %403, !dbg !382
  tail call void @llvm.dbg.value(metadata double %420, metadata !159, metadata !DIExpression()), !dbg !379
  %421 = and i32 %415, -2, !dbg !378
  %422 = sext i32 %421 to i64, !dbg !378
  %423 = getelementptr inbounds double, ptr %5, i64 %422, !dbg !378
  %424 = load double, ptr %423, align 8, !dbg !378, !tbaa !209
  tail call void @llvm.dbg.value(metadata double %424, metadata !155, metadata !DIExpression()), !dbg !379
  %425 = trunc i64 %407 to i32, !dbg !383
  %426 = shl nsw i32 %425, 1, !dbg !383
  %427 = sext i32 %426 to i64, !dbg !383
  %428 = getelementptr inbounds double, ptr %6, i64 %427, !dbg !383
  %429 = load double, ptr %428, align 8, !dbg !383, !tbaa !209
  tail call void @llvm.dbg.value(metadata double %429, metadata !162, metadata !DIExpression()), !dbg !384
  %430 = or disjoint i32 %426, 1, !dbg !385
  %431 = sext i32 %430 to i64, !dbg !385
  %432 = getelementptr inbounds double, ptr %6, i64 %431, !dbg !385
  %433 = load double, ptr %432, align 8, !dbg !385, !tbaa !209
  tail call void @llvm.dbg.value(metadata double %433, metadata !165, metadata !DIExpression()), !dbg !384
  %434 = fmul double %424, %429, !dbg !386
  %435 = fmul double %420, %433, !dbg !387
  %436 = fsub double %434, %435, !dbg !388
  tail call void @llvm.dbg.value(metadata double %436, metadata !160, metadata !DIExpression()), !dbg !379
  %437 = fmul double %424, %433, !dbg !389
  %438 = fmul double %420, %429, !dbg !390
  %439 = fadd double %438, %437, !dbg !391
  tail call void @llvm.dbg.value(metadata double %439, metadata !161, metadata !DIExpression()), !dbg !379
  br label %450, !dbg !392

440:                                              ; preds = %406
  %441 = trunc i64 %407 to i32, !dbg !393
  %442 = shl nsw i32 %441, 1, !dbg !393
  %443 = sext i32 %442 to i64, !dbg !393
  %444 = getelementptr inbounds double, ptr %6, i64 %443, !dbg !393
  %445 = load double, ptr %444, align 8, !dbg !393, !tbaa !209
  tail call void @llvm.dbg.value(metadata double %445, metadata !160, metadata !DIExpression()), !dbg !379
  %446 = or disjoint i32 %442, 1, !dbg !395
  %447 = sext i32 %446 to i64, !dbg !395
  %448 = getelementptr inbounds double, ptr %6, i64 %447, !dbg !395
  %449 = load double, ptr %448, align 8, !dbg !395, !tbaa !209
  tail call void @llvm.dbg.value(metadata double %449, metadata !161, metadata !DIExpression()), !dbg !379
  br label %450

450:                                              ; preds = %440, %413
  %451 = phi double [ %436, %413 ], [ %445, %440 ], !dbg !396
  %452 = phi double [ %439, %413 ], [ %449, %440 ], !dbg !396
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 poison, i32 poison, i32 poison), metadata !166, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !397
  tail call void @llvm.dbg.value(metadata i32 %412, metadata !77, metadata !DIExpression()), !dbg !178
  tail call void @llvm.dbg.value(metadata double %452, metadata !161, metadata !DIExpression()), !dbg !379
  tail call void @llvm.dbg.value(metadata double %451, metadata !160, metadata !DIExpression()), !dbg !379
  %453 = icmp slt i32 %412, %4, !dbg !398
  br i1 %453, label %454, label %492, !dbg !399

454:                                              ; preds = %450
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 poison, i32 poison, i32 poison), metadata !166, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !397
  %455 = shl nuw i32 %409, 1
  br label %456, !dbg !399

456:                                              ; preds = %454, %456
  %457 = phi i64 [ %411, %454 ], [ %490, %456 ]
  %458 = phi i32 [ %412, %454 ], [ %470, %456 ]
  %459 = phi double [ %452, %454 ], [ %489, %456 ]
  %460 = phi double [ %451, %454 ], [ %485, %456 ]
  tail call void @llvm.dbg.value(metadata i32 %458, metadata !77, metadata !DIExpression()), !dbg !178
  tail call void @llvm.dbg.value(metadata i64 %457, metadata !166, metadata !DIExpression()), !dbg !397
  tail call void @llvm.dbg.value(metadata double %459, metadata !161, metadata !DIExpression()), !dbg !379
  tail call void @llvm.dbg.value(metadata double %460, metadata !160, metadata !DIExpression()), !dbg !379
  %461 = trunc i64 %457 to i32, !dbg !400
  %462 = shl nsw i32 %461, 1, !dbg !400
  %463 = sext i32 %462 to i64, !dbg !400
  %464 = getelementptr inbounds double, ptr %6, i64 %463, !dbg !400
  %465 = load double, ptr %464, align 8, !dbg !400, !tbaa !209
  tail call void @llvm.dbg.value(metadata double %465, metadata !168, metadata !DIExpression()), !dbg !401
  %466 = or disjoint i32 %462, 1, !dbg !402
  %467 = sext i32 %466 to i64, !dbg !402
  %468 = getelementptr inbounds double, ptr %6, i64 %467, !dbg !402
  %469 = load double, ptr %468, align 8, !dbg !402, !tbaa !209
  tail call void @llvm.dbg.value(metadata double %469, metadata !172, metadata !DIExpression()), !dbg !401
  %470 = add nuw nsw i32 %458, 1, !dbg !403
  %471 = mul nsw i32 %470, %458, !dbg !403
  %472 = add i32 %471, %455, !dbg !403
  %473 = and i32 %472, -2, !dbg !403
  %474 = sext i32 %473 to i64, !dbg !403
  %475 = getelementptr inbounds double, ptr %5, i64 %474, !dbg !403
  %476 = load double, ptr %475, align 8, !dbg !403, !tbaa !209
  tail call void @llvm.dbg.value(metadata double %476, metadata !173, metadata !DIExpression()), !dbg !401
  %477 = or i32 %472, 1, !dbg !404
  %478 = sext i32 %477 to i64, !dbg !404
  %479 = getelementptr inbounds double, ptr %5, i64 %478, !dbg !404
  %480 = load double, ptr %479, align 8, !dbg !404, !tbaa !209
  %481 = fmul double %480, %403, !dbg !405
  tail call void @llvm.dbg.value(metadata double %481, metadata !174, metadata !DIExpression()), !dbg !401
  %482 = fmul double %465, %476, !dbg !406
  %483 = fmul double %469, %481, !dbg !407
  %484 = fsub double %482, %483, !dbg !408
  %485 = fadd double %460, %484, !dbg !409
  tail call void @llvm.dbg.value(metadata double %485, metadata !160, metadata !DIExpression()), !dbg !379
  %486 = fmul double %469, %476, !dbg !410
  %487 = fmul double %465, %481, !dbg !411
  %488 = fadd double %486, %487, !dbg !412
  %489 = fadd double %459, %488, !dbg !413
  tail call void @llvm.dbg.value(metadata double %489, metadata !161, metadata !DIExpression()), !dbg !379
  %490 = add i64 %457, %404, !dbg !414
  tail call void @llvm.dbg.value(metadata i32 %470, metadata !77, metadata !DIExpression()), !dbg !178
  tail call void @llvm.dbg.value(metadata i64 %490, metadata !166, metadata !DIExpression()), !dbg !397
  %491 = icmp eq i32 %470, %4, !dbg !398
  br i1 %491, label %492, label %456, !dbg !399, !llvm.loop !415

492:                                              ; preds = %456, %450
  %493 = phi double [ %451, %450 ], [ %485, %456 ], !dbg !379
  %494 = phi double [ %452, %450 ], [ %489, %456 ], !dbg !379
  %495 = trunc i64 %407 to i32, !dbg !417
  %496 = shl nsw i32 %495, 1, !dbg !417
  %497 = sext i32 %496 to i64, !dbg !417
  %498 = getelementptr inbounds double, ptr %6, i64 %497, !dbg !417
  store double %493, ptr %498, align 8, !dbg !418, !tbaa !209
  %499 = or disjoint i32 %496, 1, !dbg !419
  %500 = sext i32 %499 to i64, !dbg !419
  %501 = getelementptr inbounds double, ptr %6, i64 %500, !dbg !419
  store double %494, ptr %501, align 8, !dbg !420, !tbaa !209
  %502 = add i64 %407, %404, !dbg !421
  tail call void @llvm.dbg.value(metadata i32 %412, metadata !74, metadata !DIExpression()), !dbg !178
  tail call void @llvm.dbg.value(metadata i64 %502, metadata !152, metadata !DIExpression()), !dbg !374
  %503 = icmp eq i32 %412, %4, !dbg !375
  br i1 %503, label %505, label %406, !dbg !376, !llvm.loop !422

504:                                              ; preds = %392
  tail call void (i32, ptr, ptr, ...) @cblas_xerbla(i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #3, !dbg !424
  br label %505

505:                                              ; preds = %492, %381, %260, %145, %396, %277, %163, %43, %504
  ret void, !dbg !426
}

declare !dbg !428 void @cblas_xerbla(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

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
!219 = !DILocation(line: 41, column: 36, scope: !94)
!220 = !DILocation(line: 42, column: 27, scope: !94)
!221 = !DILocation(line: 42, column: 47, scope: !94)
!222 = !DILocation(line: 42, column: 36, scope: !94)
!223 = !DILocation(line: 43, column: 7, scope: !94)
!224 = !DILocation(line: 44, column: 18, scope: !225)
!225 = distinct !DILexicalBlock(scope: !95, file: !2, line: 43, column: 14)
!226 = !DILocation(line: 45, column: 18, scope: !225)
!227 = !DILocation(line: 0, scope: !95)
!228 = !DILocation(line: 49, column: 41, scope: !98)
!229 = !DILocation(line: 0, scope: !98)
!230 = !DILocation(line: 50, column: 27, scope: !101)
!231 = !DILocation(line: 50, column: 9, scope: !102)
!232 = !DILocation(line: 51, column: 33, scope: !100)
!233 = !DILocation(line: 0, scope: !100)
!234 = !DILocation(line: 52, column: 40, scope: !100)
!235 = !DILocation(line: 52, column: 38, scope: !100)
!236 = !DILocation(line: 53, column: 25, scope: !100)
!237 = !DILocation(line: 54, column: 25, scope: !100)
!238 = !DILocation(line: 55, column: 30, scope: !100)
!239 = !DILocation(line: 55, column: 50, scope: !100)
!240 = !DILocation(line: 55, column: 39, scope: !100)
!241 = !DILocation(line: 55, column: 18, scope: !100)
!242 = !DILocation(line: 56, column: 30, scope: !100)
!243 = !DILocation(line: 56, column: 50, scope: !100)
!244 = !DILocation(line: 56, column: 39, scope: !100)
!245 = !DILocation(line: 56, column: 18, scope: !100)
!246 = !DILocation(line: 57, column: 14, scope: !100)
!247 = !DILocation(line: 50, column: 33, scope: !101)
!248 = distinct !{!248, !231, !249, !250}
!249 = !DILocation(line: 58, column: 9, scope: !102)
!250 = !{!"llvm.loop.mustprogress"}
!251 = !DILocation(line: 61, column: 7, scope: !87)
!252 = !DILocation(line: 61, column: 19, scope: !87)
!253 = !DILocation(line: 62, column: 7, scope: !87)
!254 = !DILocation(line: 62, column: 19, scope: !87)
!255 = !DILocation(line: 63, column: 10, scope: !87)
!256 = distinct !{!256, !203, !257, !250}
!257 = !DILocation(line: 64, column: 5, scope: !89)
!258 = !DILocation(line: 65, column: 38, scope: !108)
!259 = !DILocation(line: 0, scope: !107)
!260 = !DILocation(line: 69, column: 19, scope: !111)
!261 = !DILocation(line: 69, column: 23, scope: !111)
!262 = !DILocation(line: 68, column: 16, scope: !107)
!263 = !DILocation(line: 68, column: 44, scope: !107)
!264 = !DILocation(line: 68, column: 39, scope: !107)
!265 = !DILocation(line: 68, column: 32, scope: !107)
!266 = !DILocation(line: 69, column: 27, scope: !111)
!267 = !DILocation(line: 70, column: 29, scope: !110)
!268 = !DILocation(line: 0, scope: !110)
!269 = !DILocation(line: 74, column: 11, scope: !110)
!270 = !DILocation(line: 71, column: 36, scope: !110)
!271 = !DILocation(line: 71, column: 34, scope: !110)
!272 = !DILocation(line: 75, column: 23, scope: !117)
!273 = !DILocation(line: 0, scope: !117)
!274 = !DILocation(line: 76, column: 23, scope: !117)
!275 = !DILocation(line: 77, column: 27, scope: !117)
!276 = !DILocation(line: 77, column: 47, scope: !117)
!277 = !DILocation(line: 77, column: 36, scope: !117)
!278 = !DILocation(line: 78, column: 27, scope: !117)
!279 = !DILocation(line: 78, column: 47, scope: !117)
!280 = !DILocation(line: 78, column: 36, scope: !117)
!281 = !DILocation(line: 79, column: 7, scope: !117)
!282 = !DILocation(line: 80, column: 18, scope: !283)
!283 = distinct !DILexicalBlock(scope: !118, file: !2, line: 79, column: 14)
!284 = !DILocation(line: 81, column: 18, scope: !283)
!285 = !DILocation(line: 0, scope: !118)
!286 = !DILocation(line: 0, scope: !121)
!287 = !DILocation(line: 86, column: 23, scope: !124)
!288 = !DILocation(line: 86, column: 9, scope: !125)
!289 = !DILocation(line: 87, column: 33, scope: !123)
!290 = !DILocation(line: 0, scope: !123)
!291 = !DILocation(line: 88, column: 40, scope: !123)
!292 = !DILocation(line: 88, column: 38, scope: !123)
!293 = !DILocation(line: 89, column: 25, scope: !123)
!294 = !DILocation(line: 90, column: 25, scope: !123)
!295 = !DILocation(line: 91, column: 30, scope: !123)
!296 = !DILocation(line: 91, column: 50, scope: !123)
!297 = !DILocation(line: 91, column: 39, scope: !123)
!298 = !DILocation(line: 91, column: 18, scope: !123)
!299 = !DILocation(line: 92, column: 30, scope: !123)
!300 = !DILocation(line: 92, column: 50, scope: !123)
!301 = !DILocation(line: 92, column: 39, scope: !123)
!302 = !DILocation(line: 92, column: 18, scope: !123)
!303 = !DILocation(line: 93, column: 14, scope: !123)
!304 = !DILocation(line: 86, column: 29, scope: !124)
!305 = distinct !{!305, !288, !306, !250}
!306 = !DILocation(line: 94, column: 9, scope: !125)
!307 = !DILocation(line: 97, column: 7, scope: !110)
!308 = !DILocation(line: 97, column: 19, scope: !110)
!309 = !DILocation(line: 98, column: 7, scope: !110)
!310 = !DILocation(line: 98, column: 19, scope: !110)
!311 = !DILocation(line: 99, column: 10, scope: !110)
!312 = distinct !{!312, !313, !314, !250}
!313 = !DILocation(line: 69, column: 5, scope: !112)
!314 = !DILocation(line: 100, column: 5, scope: !112)
!315 = !DILocation(line: 101, column: 38, scope: !131)
!316 = !DILocation(line: 102, column: 41, scope: !131)
!317 = !DILocation(line: 0, scope: !130)
!318 = !DILocation(line: 106, column: 19, scope: !134)
!319 = !DILocation(line: 106, column: 23, scope: !134)
!320 = !DILocation(line: 105, column: 16, scope: !130)
!321 = !DILocation(line: 105, column: 44, scope: !130)
!322 = !DILocation(line: 105, column: 39, scope: !130)
!323 = !DILocation(line: 105, column: 32, scope: !130)
!324 = !DILocation(line: 106, column: 27, scope: !134)
!325 = !DILocation(line: 0, scope: !133)
!326 = !DILocation(line: 111, column: 11, scope: !133)
!327 = !DILocation(line: 107, column: 29, scope: !133)
!328 = !DILocation(line: 108, column: 36, scope: !133)
!329 = !DILocation(line: 108, column: 34, scope: !133)
!330 = !DILocation(line: 112, column: 23, scope: !140)
!331 = !DILocation(line: 0, scope: !140)
!332 = !DILocation(line: 113, column: 23, scope: !140)
!333 = !DILocation(line: 114, column: 27, scope: !140)
!334 = !DILocation(line: 114, column: 47, scope: !140)
!335 = !DILocation(line: 114, column: 36, scope: !140)
!336 = !DILocation(line: 115, column: 27, scope: !140)
!337 = !DILocation(line: 115, column: 47, scope: !140)
!338 = !DILocation(line: 115, column: 36, scope: !140)
!339 = !DILocation(line: 116, column: 7, scope: !140)
!340 = !DILocation(line: 117, column: 18, scope: !341)
!341 = distinct !DILexicalBlock(scope: !141, file: !2, line: 116, column: 14)
!342 = !DILocation(line: 118, column: 18, scope: !341)
!343 = !DILocation(line: 0, scope: !141)
!344 = !DILocation(line: 0, scope: !144)
!345 = !DILocation(line: 122, column: 23, scope: !147)
!346 = !DILocation(line: 122, column: 9, scope: !148)
!347 = !DILocation(line: 123, column: 25, scope: !146)
!348 = !DILocation(line: 0, scope: !146)
!349 = !DILocation(line: 124, column: 25, scope: !146)
!350 = !DILocation(line: 125, column: 33, scope: !146)
!351 = !DILocation(line: 126, column: 40, scope: !146)
!352 = !DILocation(line: 126, column: 38, scope: !146)
!353 = !DILocation(line: 127, column: 30, scope: !146)
!354 = !DILocation(line: 127, column: 50, scope: !146)
!355 = !DILocation(line: 127, column: 39, scope: !146)
!356 = !DILocation(line: 127, column: 18, scope: !146)
!357 = !DILocation(line: 128, column: 30, scope: !146)
!358 = !DILocation(line: 128, column: 50, scope: !146)
!359 = !DILocation(line: 128, column: 39, scope: !146)
!360 = !DILocation(line: 128, column: 18, scope: !146)
!361 = !DILocation(line: 129, column: 14, scope: !146)
!362 = !DILocation(line: 122, column: 29, scope: !147)
!363 = distinct !{!363, !346, !364, !250}
!364 = !DILocation(line: 130, column: 9, scope: !148)
!365 = !DILocation(line: 133, column: 7, scope: !133)
!366 = !DILocation(line: 133, column: 19, scope: !133)
!367 = !DILocation(line: 134, column: 7, scope: !133)
!368 = !DILocation(line: 134, column: 19, scope: !133)
!369 = !DILocation(line: 135, column: 10, scope: !133)
!370 = distinct !{!370, !371, !372, !250}
!371 = !DILocation(line: 106, column: 5, scope: !135)
!372 = !DILocation(line: 136, column: 5, scope: !135)
!373 = !DILocation(line: 137, column: 38, scope: !154)
!374 = !DILocation(line: 0, scope: !153)
!375 = !DILocation(line: 141, column: 19, scope: !157)
!376 = !DILocation(line: 141, column: 5, scope: !158)
!377 = !DILocation(line: 140, column: 16, scope: !153)
!378 = !DILocation(line: 142, column: 29, scope: !156)
!379 = !DILocation(line: 0, scope: !156)
!380 = !DILocation(line: 146, column: 11, scope: !156)
!381 = !DILocation(line: 143, column: 36, scope: !156)
!382 = !DILocation(line: 143, column: 34, scope: !156)
!383 = !DILocation(line: 147, column: 23, scope: !163)
!384 = !DILocation(line: 0, scope: !163)
!385 = !DILocation(line: 148, column: 23, scope: !163)
!386 = !DILocation(line: 149, column: 27, scope: !163)
!387 = !DILocation(line: 149, column: 47, scope: !163)
!388 = !DILocation(line: 149, column: 36, scope: !163)
!389 = !DILocation(line: 150, column: 27, scope: !163)
!390 = !DILocation(line: 150, column: 47, scope: !163)
!391 = !DILocation(line: 150, column: 36, scope: !163)
!392 = !DILocation(line: 151, column: 7, scope: !163)
!393 = !DILocation(line: 152, column: 18, scope: !394)
!394 = distinct !DILexicalBlock(scope: !164, file: !2, line: 151, column: 14)
!395 = !DILocation(line: 153, column: 18, scope: !394)
!396 = !DILocation(line: 0, scope: !164)
!397 = !DILocation(line: 0, scope: !167)
!398 = !DILocation(line: 157, column: 27, scope: !170)
!399 = !DILocation(line: 157, column: 9, scope: !171)
!400 = !DILocation(line: 158, column: 25, scope: !169)
!401 = !DILocation(line: 0, scope: !169)
!402 = !DILocation(line: 159, column: 25, scope: !169)
!403 = !DILocation(line: 160, column: 33, scope: !169)
!404 = !DILocation(line: 161, column: 40, scope: !169)
!405 = !DILocation(line: 161, column: 38, scope: !169)
!406 = !DILocation(line: 162, column: 30, scope: !169)
!407 = !DILocation(line: 162, column: 50, scope: !169)
!408 = !DILocation(line: 162, column: 39, scope: !169)
!409 = !DILocation(line: 162, column: 18, scope: !169)
!410 = !DILocation(line: 163, column: 30, scope: !169)
!411 = !DILocation(line: 163, column: 50, scope: !169)
!412 = !DILocation(line: 163, column: 39, scope: !169)
!413 = !DILocation(line: 163, column: 18, scope: !169)
!414 = !DILocation(line: 164, column: 14, scope: !169)
!415 = distinct !{!415, !399, !416, !250}
!416 = !DILocation(line: 165, column: 9, scope: !171)
!417 = !DILocation(line: 167, column: 7, scope: !156)
!418 = !DILocation(line: 167, column: 19, scope: !156)
!419 = !DILocation(line: 168, column: 7, scope: !156)
!420 = !DILocation(line: 168, column: 19, scope: !156)
!421 = !DILocation(line: 169, column: 10, scope: !156)
!422 = distinct !{!422, !376, !423, !250}
!423 = !DILocation(line: 170, column: 5, scope: !158)
!424 = !DILocation(line: 172, column: 5, scope: !425)
!425 = distinct !DILexicalBlock(scope: !154, file: !2, line: 171, column: 10)
!426 = !DILocation(line: 14, column: 1, scope: !427)
!427 = !DILexicalBlockFile(scope: !53, file: !18, discriminator: 0)
!428 = !DISubprogram(name: "cblas_xerbla", scope: !21, file: !21, line: 602, type: !429, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!429 = !DISubroutineType(types: !430)
!430 = !{null, !61, !431, !431, null}
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!432 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
