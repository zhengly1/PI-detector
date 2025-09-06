; ModuleID = 'zher.c'
source_filename = "zher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"./source_her.h\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !7
@.str.2 = private unnamed_addr constant [23 x i8] c"unrecognized operation\00", align 1, !dbg !12

; Function Attrs: nounwind uwtable
define dso_local void @cblas_zher(i32 noundef %0, i32 noundef %1, i32 noundef %2, double noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5, ptr nocapture noundef %6, i32 noundef %7) local_unnamed_addr #0 !dbg !44 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !55, metadata !DIExpression()), !dbg !104
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !56, metadata !DIExpression()), !dbg !104
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !57, metadata !DIExpression()), !dbg !104
  tail call void @llvm.dbg.value(metadata double %3, metadata !58, metadata !DIExpression()), !dbg !104
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !59, metadata !DIExpression()), !dbg !104
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !60, metadata !DIExpression()), !dbg !104
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !61, metadata !DIExpression()), !dbg !104
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !62, metadata !DIExpression()), !dbg !104
  %9 = icmp eq i32 %0, 102, !dbg !105
  %10 = select i1 %9, i32 1, i32 -1, !dbg !106
  %11 = select i1 %9, i32 -1, i32 1, !dbg !106
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !67, metadata !DIExpression()), !dbg !107
  tail call void @llvm.dbg.value(metadata i32 0, metadata !68, metadata !DIExpression()), !dbg !108
  %12 = add i32 %0, -103, !dbg !109
  %13 = icmp ult i32 %12, -2, !dbg !109
  %14 = zext i1 %13 to i32, !dbg !109
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !68, metadata !DIExpression()), !dbg !108
  %15 = add i32 %1, -123, !dbg !111
  %16 = icmp ult i32 %15, -2, !dbg !111
  %17 = select i1 %16, i32 2, i32 %14, !dbg !111
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !68, metadata !DIExpression()), !dbg !108
  %18 = icmp slt i32 %2, 0, !dbg !113
  %19 = select i1 %18, i32 3, i32 %17, !dbg !115
  tail call void @llvm.dbg.value(metadata i32 %19, metadata !68, metadata !DIExpression()), !dbg !108
  %20 = icmp eq i32 %5, 0, !dbg !116
  %21 = select i1 %20, i32 6, i32 %19, !dbg !115
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !68, metadata !DIExpression()), !dbg !108
  %22 = tail call i32 @llvm.smax.i32(i32 %2, i32 1), !dbg !118
  %23 = icmp sgt i32 %22, %7, !dbg !118
  %24 = select i1 %23, i32 8, i32 %21, !dbg !115
  tail call void @llvm.dbg.value(metadata i32 %24, metadata !68, metadata !DIExpression()), !dbg !108
  %25 = icmp eq i32 %24, 0, !dbg !120
  br i1 %25, label %27, label %26, !dbg !115

26:                                               ; preds = %8
  tail call void (i32, ptr, ptr, ...) @cblas_xerbla(i32 noundef %24, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #3, !dbg !120
  br label %27, !dbg !120

27:                                               ; preds = %26, %8
  %28 = fcmp oeq double %3, 0.000000e+00, !dbg !122
  br i1 %28, label %227, label %29, !dbg !124

29:                                               ; preds = %27
  %30 = icmp eq i32 %0, 101, !dbg !125
  %31 = icmp eq i32 %1, 121
  %32 = and i1 %30, %31, !dbg !126
  br i1 %32, label %36, label %33, !dbg !126

33:                                               ; preds = %29
  %34 = icmp eq i32 %1, 122
  %35 = and i1 %9, %34, !dbg !127
  br i1 %35, label %36, label %127, !dbg !127

36:                                               ; preds = %33, %29
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !70, metadata !DIExpression()), !dbg !128
  tail call void @llvm.dbg.value(metadata i32 0, metadata !63, metadata !DIExpression()), !dbg !107
  %37 = icmp sgt i32 %2, 0, !dbg !129
  br i1 %37, label %38, label %227, !dbg !130

38:                                               ; preds = %36
  %39 = icmp sgt i32 %5, 0, !dbg !131
  %40 = sub nsw i32 1, %2, !dbg !131
  %41 = mul i32 %40, %5, !dbg !131
  %42 = select i1 %39, i32 0, i32 %41, !dbg !131
  tail call void @llvm.dbg.value(metadata i32 %42, metadata !70, metadata !DIExpression()), !dbg !128
  %43 = sitofp i32 %11 to double
  %44 = fmul double %43, %3
  %45 = sitofp i32 %10 to double
  %46 = zext i32 %5 to i64, !dbg !130
  %47 = zext i32 %7 to i64, !dbg !130
  %48 = zext nneg i32 %2 to i64, !dbg !130
  %49 = zext i32 %42 to i64, !dbg !130
  %50 = zext nneg i32 %2 to i64, !dbg !129
  br label %54, !dbg !130

51:                                               ; preds = %93, %54
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !63, metadata !DIExpression()), !dbg !107
  tail call void @llvm.dbg.value(metadata i64 %88, metadata !70, metadata !DIExpression()), !dbg !128
  %52 = add nuw nsw i64 %58, 1, !dbg !130
  %53 = icmp eq i64 %89, %50, !dbg !129
  br i1 %53, label %227, label %54, !dbg !130, !llvm.loop !132

54:                                               ; preds = %38, %51
  %55 = phi i64 [ %49, %38 ], [ %88, %51 ]
  %56 = phi i64 [ 0, %38 ], [ %89, %51 ]
  %57 = phi i32 [ %42, %38 ], [ %59, %51 ]
  %58 = phi i64 [ 1, %38 ], [ %52, %51 ]
  %59 = add i32 %57, %5, !dbg !130
  %60 = trunc i64 %56 to i32
  tail call void @llvm.dbg.value(metadata i64 %56, metadata !63, metadata !DIExpression()), !dbg !107
  tail call void @llvm.dbg.value(metadata i64 %55, metadata !70, metadata !DIExpression()), !dbg !128
  %61 = trunc i64 %55 to i32, !dbg !135
  %62 = shl nsw i32 %61, 1, !dbg !135
  %63 = sext i32 %62 to i64, !dbg !135
  %64 = getelementptr inbounds double, ptr %4, i64 %63, !dbg !135
  %65 = load double, ptr %64, align 8, !dbg !135, !tbaa !136
  %66 = fmul double %65, %3, !dbg !140
  tail call void @llvm.dbg.value(metadata double %66, metadata !73, metadata !DIExpression()), !dbg !141
  %67 = or disjoint i32 %62, 1, !dbg !142
  %68 = sext i32 %67 to i64, !dbg !142
  %69 = getelementptr inbounds double, ptr %4, i64 %68, !dbg !142
  %70 = load double, ptr %69, align 8, !dbg !142, !tbaa !136
  %71 = fmul double %44, %70, !dbg !143
  tail call void @llvm.dbg.value(metadata double %71, metadata !77, metadata !DIExpression()), !dbg !141
  tail call void @llvm.dbg.value(metadata i64 %55, metadata !78, metadata !DIExpression()), !dbg !141
  tail call void @llvm.dbg.value(metadata double %65, metadata !79, metadata !DIExpression()), !dbg !144
  %72 = fmul double %70, %45, !dbg !145
  tail call void @llvm.dbg.value(metadata double %72, metadata !81, metadata !DIExpression()), !dbg !144
  %73 = fmul double %65, %66, !dbg !146
  %74 = fmul double %72, %71, !dbg !147
  %75 = fsub double %73, %74, !dbg !148
  %76 = mul i64 %56, %47, !dbg !149
  %77 = mul nsw i32 %60, %7, !dbg !149
  %78 = trunc i64 %56 to i32, !dbg !149
  %79 = add i32 %77, %78, !dbg !149
  %80 = shl nsw i32 %79, 1, !dbg !149
  %81 = sext i32 %80 to i64, !dbg !149
  %82 = getelementptr inbounds double, ptr %6, i64 %81, !dbg !149
  %83 = load double, ptr %82, align 8, !dbg !150, !tbaa !136
  %84 = fadd double %83, %75, !dbg !150
  store double %84, ptr %82, align 8, !dbg !150, !tbaa !136
  %85 = or disjoint i32 %80, 1, !dbg !151
  %86 = sext i32 %85 to i64, !dbg !151
  %87 = getelementptr inbounds double, ptr %6, i64 %86, !dbg !151
  store double 0.000000e+00, ptr %87, align 8, !dbg !152, !tbaa !136
  %88 = add i64 %55, %46, !dbg !153
  tail call void @llvm.dbg.value(metadata i64 %88, metadata !78, metadata !DIExpression()), !dbg !141
  %89 = add nuw nsw i64 %56, 1, !dbg !154
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !66, metadata !DIExpression()), !dbg !107
  %90 = icmp ult i64 %89, %48, !dbg !155
  br i1 %90, label %91, label %51, !dbg !156

91:                                               ; preds = %54
  %92 = zext i32 %59 to i64, !dbg !135
  br label %93, !dbg !156

93:                                               ; preds = %91, %93
  %94 = phi i64 [ %92, %91 ], [ %124, %93 ]
  %95 = phi i64 [ %58, %91 ], [ %125, %93 ]
  tail call void @llvm.dbg.value(metadata i64 %95, metadata !66, metadata !DIExpression()), !dbg !107
  tail call void @llvm.dbg.value(metadata i64 %94, metadata !78, metadata !DIExpression()), !dbg !141
  %96 = trunc i64 %94 to i32, !dbg !157
  %97 = shl nsw i32 %96, 1, !dbg !157
  %98 = sext i32 %97 to i64, !dbg !157
  %99 = getelementptr inbounds double, ptr %4, i64 %98, !dbg !157
  %100 = load double, ptr %99, align 8, !dbg !157, !tbaa !136
  tail call void @llvm.dbg.value(metadata double %100, metadata !82, metadata !DIExpression()), !dbg !158
  %101 = or disjoint i32 %97, 1, !dbg !159
  %102 = sext i32 %101 to i64, !dbg !159
  %103 = getelementptr inbounds double, ptr %4, i64 %102, !dbg !159
  %104 = load double, ptr %103, align 8, !dbg !159, !tbaa !136
  %105 = fmul double %104, %45, !dbg !160
  tail call void @llvm.dbg.value(metadata double %105, metadata !86, metadata !DIExpression()), !dbg !158
  %106 = fmul double %66, %100, !dbg !161
  %107 = fmul double %71, %105, !dbg !162
  %108 = fsub double %106, %107, !dbg !163
  %109 = add i64 %95, %76, !dbg !164
  %110 = trunc i64 %109 to i32, !dbg !164
  %111 = shl nsw i32 %110, 1, !dbg !164
  %112 = sext i32 %111 to i64, !dbg !164
  %113 = getelementptr inbounds double, ptr %6, i64 %112, !dbg !164
  %114 = load double, ptr %113, align 8, !dbg !165, !tbaa !136
  %115 = fadd double %114, %108, !dbg !165
  store double %115, ptr %113, align 8, !dbg !165, !tbaa !136
  %116 = fmul double %66, %105, !dbg !166
  %117 = fmul double %71, %100, !dbg !167
  %118 = fadd double %117, %116, !dbg !168
  %119 = or disjoint i32 %111, 1, !dbg !169
  %120 = sext i32 %119 to i64, !dbg !169
  %121 = getelementptr inbounds double, ptr %6, i64 %120, !dbg !169
  %122 = load double, ptr %121, align 8, !dbg !170, !tbaa !136
  %123 = fadd double %122, %118, !dbg !170
  store double %123, ptr %121, align 8, !dbg !170, !tbaa !136
  %124 = add i64 %94, %46, !dbg !171
  tail call void @llvm.dbg.value(metadata i64 %124, metadata !78, metadata !DIExpression()), !dbg !141
  %125 = add nuw nsw i64 %95, 1, !dbg !172
  tail call void @llvm.dbg.value(metadata i64 %125, metadata !66, metadata !DIExpression()), !dbg !107
  %126 = icmp eq i64 %125, %50, !dbg !155
  br i1 %126, label %51, label %93, !dbg !156, !llvm.loop !173

127:                                              ; preds = %33
  %128 = and i1 %30, %34, !dbg !175
  %129 = and i1 %9, %31
  %130 = or i1 %128, %129, !dbg !175
  br i1 %130, label %131, label %226, !dbg !175

131:                                              ; preds = %127
  %132 = icmp sgt i32 %5, 0, !dbg !176
  %133 = sub i32 1, %2, !dbg !176
  %134 = mul i32 %133, %5, !dbg !176
  %135 = select i1 %132, i32 0, i32 %134, !dbg !176
  tail call void @llvm.dbg.value(metadata i32 %135, metadata !87, metadata !DIExpression()), !dbg !177
  tail call void @llvm.dbg.value(metadata i32 0, metadata !63, metadata !DIExpression()), !dbg !107
  %136 = icmp sgt i32 %2, 0, !dbg !178
  br i1 %136, label %137, label %227, !dbg !179

137:                                              ; preds = %131
  %138 = sitofp i32 %11 to double
  %139 = fmul double %138, %3
  %140 = sitofp i32 %10 to double
  %141 = shl i32 %7, 1
  %142 = add i32 %141, 2
  %143 = zext i32 %135 to i64, !dbg !179
  %144 = zext i32 %5 to i64, !dbg !179
  %145 = zext i32 %7 to i64, !dbg !179
  %146 = zext nneg i32 %2 to i64, !dbg !178
  br label %147, !dbg !179

147:                                              ; preds = %137, %200
  %148 = phi i64 [ %143, %137 ], [ %223, %200 ]
  %149 = phi i64 [ 0, %137 ], [ %224, %200 ]
  tail call void @llvm.dbg.value(metadata i64 %149, metadata !63, metadata !DIExpression()), !dbg !107
  tail call void @llvm.dbg.value(metadata i64 %148, metadata !87, metadata !DIExpression()), !dbg !177
  %150 = trunc i64 %148 to i32, !dbg !180
  %151 = shl nsw i32 %150, 1, !dbg !180
  %152 = sext i32 %151 to i64, !dbg !180
  %153 = getelementptr inbounds double, ptr %4, i64 %152, !dbg !180
  %154 = load double, ptr %153, align 8, !dbg !180, !tbaa !136
  %155 = fmul double %154, %3, !dbg !181
  tail call void @llvm.dbg.value(metadata double %155, metadata !90, metadata !DIExpression()), !dbg !182
  %156 = or disjoint i32 %151, 1, !dbg !183
  %157 = sext i32 %156 to i64, !dbg !183
  %158 = getelementptr inbounds double, ptr %4, i64 %157, !dbg !183
  %159 = load double, ptr %158, align 8, !dbg !183, !tbaa !136
  %160 = fmul double %139, %159, !dbg !184
  tail call void @llvm.dbg.value(metadata double %160, metadata !94, metadata !DIExpression()), !dbg !182
  tail call void @llvm.dbg.value(metadata i32 %135, metadata !95, metadata !DIExpression()), !dbg !182
  tail call void @llvm.dbg.value(metadata i32 0, metadata !66, metadata !DIExpression()), !dbg !107
  %161 = icmp eq i64 %149, 0, !dbg !185
  br i1 %161, label %200, label %162, !dbg !186

162:                                              ; preds = %147
  %163 = mul i64 %149, %145
  br label %164, !dbg !186

164:                                              ; preds = %162, %164
  %165 = phi i64 [ %143, %162 ], [ %195, %164 ]
  %166 = phi i64 [ 0, %162 ], [ %196, %164 ]
  tail call void @llvm.dbg.value(metadata i64 %166, metadata !66, metadata !DIExpression()), !dbg !107
  tail call void @llvm.dbg.value(metadata i64 %165, metadata !95, metadata !DIExpression()), !dbg !182
  %167 = trunc i64 %165 to i32, !dbg !187
  %168 = shl nsw i32 %167, 1, !dbg !187
  %169 = sext i32 %168 to i64, !dbg !187
  %170 = getelementptr inbounds double, ptr %4, i64 %169, !dbg !187
  %171 = load double, ptr %170, align 8, !dbg !187, !tbaa !136
  tail call void @llvm.dbg.value(metadata double %171, metadata !96, metadata !DIExpression()), !dbg !188
  %172 = or disjoint i32 %168, 1, !dbg !189
  %173 = sext i32 %172 to i64, !dbg !189
  %174 = getelementptr inbounds double, ptr %4, i64 %173, !dbg !189
  %175 = load double, ptr %174, align 8, !dbg !189, !tbaa !136
  %176 = fmul double %175, %140, !dbg !190
  tail call void @llvm.dbg.value(metadata double %176, metadata !100, metadata !DIExpression()), !dbg !188
  %177 = fmul double %155, %171, !dbg !191
  %178 = fmul double %160, %176, !dbg !192
  %179 = fsub double %177, %178, !dbg !193
  %180 = add i64 %166, %163, !dbg !194
  %181 = trunc i64 %180 to i32, !dbg !194
  %182 = shl nsw i32 %181, 1, !dbg !194
  %183 = sext i32 %182 to i64, !dbg !194
  %184 = getelementptr inbounds double, ptr %6, i64 %183, !dbg !194
  %185 = load double, ptr %184, align 8, !dbg !195, !tbaa !136
  %186 = fadd double %185, %179, !dbg !195
  store double %186, ptr %184, align 8, !dbg !195, !tbaa !136
  %187 = fmul double %155, %176, !dbg !196
  %188 = fmul double %160, %171, !dbg !197
  %189 = fadd double %188, %187, !dbg !198
  %190 = or disjoint i32 %182, 1, !dbg !199
  %191 = sext i32 %190 to i64, !dbg !199
  %192 = getelementptr inbounds double, ptr %6, i64 %191, !dbg !199
  %193 = load double, ptr %192, align 8, !dbg !200, !tbaa !136
  %194 = fadd double %193, %189, !dbg !200
  store double %194, ptr %192, align 8, !dbg !200, !tbaa !136
  %195 = add i64 %165, %144, !dbg !201
  tail call void @llvm.dbg.value(metadata i64 %195, metadata !95, metadata !DIExpression()), !dbg !182
  %196 = add nuw nsw i64 %166, 1, !dbg !202
  tail call void @llvm.dbg.value(metadata i64 %196, metadata !66, metadata !DIExpression()), !dbg !107
  %197 = icmp eq i64 %196, %149, !dbg !185
  br i1 %197, label %198, label %164, !dbg !186, !llvm.loop !203

198:                                              ; preds = %164
  %199 = trunc i64 %195 to i32, !dbg !205
  br label %200, !dbg !205

200:                                              ; preds = %198, %147
  %201 = phi i32 [ %135, %147 ], [ %199, %198 ], !dbg !182
  %202 = shl nsw i32 %201, 1, !dbg !205
  %203 = sext i32 %202 to i64, !dbg !205
  %204 = getelementptr inbounds double, ptr %4, i64 %203, !dbg !205
  %205 = load double, ptr %204, align 8, !dbg !205, !tbaa !136
  tail call void @llvm.dbg.value(metadata double %205, metadata !101, metadata !DIExpression()), !dbg !206
  %206 = or disjoint i32 %202, 1, !dbg !207
  %207 = sext i32 %206 to i64, !dbg !207
  %208 = getelementptr inbounds double, ptr %4, i64 %207, !dbg !207
  %209 = load double, ptr %208, align 8, !dbg !207, !tbaa !136
  %210 = fmul double %209, %140, !dbg !208
  tail call void @llvm.dbg.value(metadata double %210, metadata !103, metadata !DIExpression()), !dbg !206
  %211 = fmul double %155, %205, !dbg !209
  %212 = fmul double %160, %210, !dbg !210
  %213 = fsub double %211, %212, !dbg !211
  %214 = trunc i64 %149 to i32, !dbg !212
  %215 = mul i32 %142, %214, !dbg !212
  %216 = sext i32 %215 to i64, !dbg !212
  %217 = getelementptr inbounds double, ptr %6, i64 %216, !dbg !212
  %218 = load double, ptr %217, align 8, !dbg !213, !tbaa !136
  %219 = fadd double %218, %213, !dbg !213
  store double %219, ptr %217, align 8, !dbg !213, !tbaa !136
  %220 = or disjoint i32 %215, 1, !dbg !214
  %221 = sext i32 %220 to i64, !dbg !214
  %222 = getelementptr inbounds double, ptr %6, i64 %221, !dbg !214
  store double 0.000000e+00, ptr %222, align 8, !dbg !215, !tbaa !136
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 %201, i32 %5), metadata !95, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !182
  %223 = add i64 %148, %144, !dbg !216
  tail call void @llvm.dbg.value(metadata i64 %223, metadata !87, metadata !DIExpression()), !dbg !177
  %224 = add nuw nsw i64 %149, 1, !dbg !217
  tail call void @llvm.dbg.value(metadata i64 %224, metadata !63, metadata !DIExpression()), !dbg !107
  %225 = icmp eq i64 %224, %146, !dbg !178
  br i1 %225, label %227, label %147, !dbg !179, !llvm.loop !218

226:                                              ; preds = %127
  tail call void (i32, ptr, ptr, ...) @cblas_xerbla(i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #3, !dbg !220
  br label %227

227:                                              ; preds = %200, %51, %131, %36, %226, %27
  ret void, !dbg !222
}

declare !dbg !224 void @cblas_xerbla(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!17}
!llvm.module.flags = !{!36, !37, !38, !39, !40, !41, !42}
!llvm.ident = !{!43}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 24, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "./source_her.h", directory: "/PI-detector/external/gsl/gsl-2.5/cblas", checksumkind: CSK_MD5, checksum: "5b0c59d2c42f7a57e3972d5a02cf52f2")
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
!18 = !DIFile(filename: "zher.c", directory: "/PI-detector/external/gsl/gsl-2.5/cblas", checksumkind: CSK_MD5, checksum: "a62e1840f9967445b5706e1e529bf6d2")
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
!33 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
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
!44 = distinct !DISubprogram(name: "cblas_zher", scope: !18, file: !18, line: 7, type: !45, scopeLine: 10, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !54)
!45 = !DISubroutineType(types: !46)
!46 = !{null, !47, !48, !49, !32, !51, !49, !53, !49}
!47 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!48 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !26)
!49 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!50 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!54 = !{!55, !56, !57, !58, !59, !60, !61, !62, !63, !66, !67, !68, !70, !73, !77, !78, !79, !81, !82, !86, !87, !90, !94, !95, !96, !100, !101, !103}
!55 = !DILocalVariable(name: "order", arg: 1, scope: !44, file: !18, line: 7, type: !47)
!56 = !DILocalVariable(name: "Uplo", arg: 2, scope: !44, file: !18, line: 7, type: !48)
!57 = !DILocalVariable(name: "N", arg: 3, scope: !44, file: !18, line: 8, type: !49)
!58 = !DILocalVariable(name: "alpha", arg: 4, scope: !44, file: !18, line: 8, type: !32)
!59 = !DILocalVariable(name: "X", arg: 5, scope: !44, file: !18, line: 8, type: !51)
!60 = !DILocalVariable(name: "incX", arg: 6, scope: !44, file: !18, line: 8, type: !49)
!61 = !DILocalVariable(name: "A", arg: 7, scope: !44, file: !18, line: 9, type: !53)
!62 = !DILocalVariable(name: "lda", arg: 8, scope: !44, file: !18, line: 9, type: !49)
!63 = !DILocalVariable(name: "i", scope: !64, file: !2, line: 21, type: !50)
!64 = distinct !DILexicalBlock(scope: !65, file: !2, line: 20, column: 1)
!65 = !DILexicalBlockFile(scope: !44, file: !2, discriminator: 0)
!66 = !DILocalVariable(name: "j", scope: !64, file: !2, line: 21, type: !50)
!67 = !DILocalVariable(name: "conj", scope: !64, file: !2, line: 22, type: !49)
!68 = !DILocalVariable(name: "pos", scope: !69, file: !2, line: 24, type: !50)
!69 = distinct !DILexicalBlock(scope: !64, file: !2, line: 24, column: 3)
!70 = !DILocalVariable(name: "ix", scope: !71, file: !2, line: 31, type: !50)
!71 = distinct !DILexicalBlock(scope: !72, file: !2, line: 30, column: 58)
!72 = distinct !DILexicalBlock(scope: !64, file: !2, line: 29, column: 7)
!73 = !DILocalVariable(name: "tmp_real", scope: !74, file: !2, line: 33, type: !32)
!74 = distinct !DILexicalBlock(scope: !75, file: !2, line: 32, column: 29)
!75 = distinct !DILexicalBlock(scope: !76, file: !2, line: 32, column: 5)
!76 = distinct !DILexicalBlock(scope: !71, file: !2, line: 32, column: 5)
!77 = !DILocalVariable(name: "tmp_imag", scope: !74, file: !2, line: 34, type: !32)
!78 = !DILocalVariable(name: "jx", scope: !74, file: !2, line: 35, type: !50)
!79 = !DILocalVariable(name: "X_real", scope: !80, file: !2, line: 38, type: !32)
!80 = distinct !DILexicalBlock(scope: !74, file: !2, line: 37, column: 7)
!81 = !DILocalVariable(name: "X_imag", scope: !80, file: !2, line: 39, type: !32)
!82 = !DILocalVariable(name: "X_real", scope: !83, file: !2, line: 46, type: !32)
!83 = distinct !DILexicalBlock(scope: !84, file: !2, line: 45, column: 35)
!84 = distinct !DILexicalBlock(scope: !85, file: !2, line: 45, column: 7)
!85 = distinct !DILexicalBlock(scope: !74, file: !2, line: 45, column: 7)
!86 = !DILocalVariable(name: "X_imag", scope: !83, file: !2, line: 47, type: !32)
!87 = !DILocalVariable(name: "ix", scope: !88, file: !2, line: 56, type: !50)
!88 = distinct !DILexicalBlock(scope: !89, file: !2, line: 55, column: 65)
!89 = distinct !DILexicalBlock(scope: !72, file: !2, line: 54, column: 14)
!90 = !DILocalVariable(name: "tmp_real", scope: !91, file: !2, line: 58, type: !32)
!91 = distinct !DILexicalBlock(scope: !92, file: !2, line: 57, column: 29)
!92 = distinct !DILexicalBlock(scope: !93, file: !2, line: 57, column: 5)
!93 = distinct !DILexicalBlock(scope: !88, file: !2, line: 57, column: 5)
!94 = !DILocalVariable(name: "tmp_imag", scope: !91, file: !2, line: 59, type: !32)
!95 = !DILocalVariable(name: "jx", scope: !91, file: !2, line: 60, type: !50)
!96 = !DILocalVariable(name: "X_real", scope: !97, file: !2, line: 62, type: !32)
!97 = distinct !DILexicalBlock(scope: !98, file: !2, line: 61, column: 31)
!98 = distinct !DILexicalBlock(scope: !99, file: !2, line: 61, column: 7)
!99 = distinct !DILexicalBlock(scope: !91, file: !2, line: 61, column: 7)
!100 = !DILocalVariable(name: "X_imag", scope: !97, file: !2, line: 63, type: !32)
!101 = !DILocalVariable(name: "X_real", scope: !102, file: !2, line: 70, type: !32)
!102 = distinct !DILexicalBlock(scope: !91, file: !2, line: 69, column: 7)
!103 = !DILocalVariable(name: "X_imag", scope: !102, file: !2, line: 71, type: !32)
!104 = !DILocation(line: 0, scope: !44)
!105 = !DILocation(line: 22, column: 27, scope: !64)
!106 = !DILocation(line: 22, column: 20, scope: !64)
!107 = !DILocation(line: 0, scope: !64)
!108 = !DILocation(line: 0, scope: !69)
!109 = !DILocation(line: 24, column: 3, scope: !110)
!110 = distinct !DILexicalBlock(scope: !69, file: !2, line: 24, column: 3)
!111 = !DILocation(line: 24, column: 3, scope: !112)
!112 = distinct !DILexicalBlock(scope: !69, file: !2, line: 24, column: 3)
!113 = !DILocation(line: 24, column: 3, scope: !114)
!114 = distinct !DILexicalBlock(scope: !69, file: !2, line: 24, column: 3)
!115 = !DILocation(line: 24, column: 3, scope: !69)
!116 = !DILocation(line: 24, column: 3, scope: !117)
!117 = distinct !DILexicalBlock(scope: !69, file: !2, line: 24, column: 3)
!118 = !DILocation(line: 24, column: 3, scope: !119)
!119 = distinct !DILexicalBlock(scope: !69, file: !2, line: 24, column: 3)
!120 = !DILocation(line: 24, column: 3, scope: !121)
!121 = distinct !DILexicalBlock(scope: !69, file: !2, line: 24, column: 3)
!122 = !DILocation(line: 26, column: 13, scope: !123)
!123 = distinct !DILexicalBlock(scope: !64, file: !2, line: 26, column: 7)
!124 = !DILocation(line: 26, column: 7, scope: !64)
!125 = !DILocation(line: 29, column: 14, scope: !72)
!126 = !DILocation(line: 29, column: 31, scope: !72)
!127 = !DILocation(line: 30, column: 34, scope: !72)
!128 = !DILocation(line: 0, scope: !71)
!129 = !DILocation(line: 32, column: 19, scope: !75)
!130 = !DILocation(line: 32, column: 5, scope: !76)
!131 = !DILocation(line: 31, column: 16, scope: !71)
!132 = distinct !{!132, !130, !133, !134}
!133 = !DILocation(line: 53, column: 5, scope: !76)
!134 = !{!"llvm.loop.mustprogress"}
!135 = !DILocation(line: 33, column: 37, scope: !74)
!136 = !{!137, !137, i64 0}
!137 = !{!"double", !138, i64 0}
!138 = !{!"omnipotent char", !139, i64 0}
!139 = !{!"Simple C/C++ TBAA"}
!140 = !DILocation(line: 33, column: 35, scope: !74)
!141 = !DILocation(line: 0, scope: !74)
!142 = !DILocation(line: 34, column: 44, scope: !74)
!143 = !DILocation(line: 34, column: 42, scope: !74)
!144 = !DILocation(line: 0, scope: !80)
!145 = !DILocation(line: 39, column: 35, scope: !80)
!146 = !DILocation(line: 40, column: 40, scope: !80)
!147 = !DILocation(line: 40, column: 60, scope: !80)
!148 = !DILocation(line: 40, column: 51, scope: !80)
!149 = !DILocation(line: 40, column: 9, scope: !80)
!150 = !DILocation(line: 40, column: 30, scope: !80)
!151 = !DILocation(line: 41, column: 9, scope: !80)
!152 = !DILocation(line: 41, column: 30, scope: !80)
!153 = !DILocation(line: 42, column: 12, scope: !80)
!154 = !DILocation(line: 45, column: 18, scope: !85)
!155 = !DILocation(line: 45, column: 25, scope: !84)
!156 = !DILocation(line: 45, column: 7, scope: !85)
!157 = !DILocation(line: 46, column: 29, scope: !83)
!158 = !DILocation(line: 0, scope: !83)
!159 = !DILocation(line: 47, column: 37, scope: !83)
!160 = !DILocation(line: 47, column: 35, scope: !83)
!161 = !DILocation(line: 48, column: 40, scope: !83)
!162 = !DILocation(line: 48, column: 60, scope: !83)
!163 = !DILocation(line: 48, column: 51, scope: !83)
!164 = !DILocation(line: 48, column: 9, scope: !83)
!165 = !DILocation(line: 48, column: 30, scope: !83)
!166 = !DILocation(line: 49, column: 40, scope: !83)
!167 = !DILocation(line: 49, column: 60, scope: !83)
!168 = !DILocation(line: 49, column: 51, scope: !83)
!169 = !DILocation(line: 49, column: 9, scope: !83)
!170 = !DILocation(line: 49, column: 30, scope: !83)
!171 = !DILocation(line: 50, column: 12, scope: !83)
!172 = !DILocation(line: 45, column: 31, scope: !84)
!173 = distinct !{!173, !156, !174, !134}
!174 = !DILocation(line: 51, column: 7, scope: !85)
!175 = !DILocation(line: 54, column: 38, scope: !89)
!176 = !DILocation(line: 56, column: 16, scope: !88)
!177 = !DILocation(line: 0, scope: !88)
!178 = !DILocation(line: 57, column: 19, scope: !92)
!179 = !DILocation(line: 57, column: 5, scope: !93)
!180 = !DILocation(line: 58, column: 37, scope: !91)
!181 = !DILocation(line: 58, column: 35, scope: !91)
!182 = !DILocation(line: 0, scope: !91)
!183 = !DILocation(line: 59, column: 44, scope: !91)
!184 = !DILocation(line: 59, column: 42, scope: !91)
!185 = !DILocation(line: 61, column: 21, scope: !98)
!186 = !DILocation(line: 61, column: 7, scope: !99)
!187 = !DILocation(line: 62, column: 29, scope: !97)
!188 = !DILocation(line: 0, scope: !97)
!189 = !DILocation(line: 63, column: 37, scope: !97)
!190 = !DILocation(line: 63, column: 35, scope: !97)
!191 = !DILocation(line: 64, column: 40, scope: !97)
!192 = !DILocation(line: 64, column: 60, scope: !97)
!193 = !DILocation(line: 64, column: 51, scope: !97)
!194 = !DILocation(line: 64, column: 9, scope: !97)
!195 = !DILocation(line: 64, column: 30, scope: !97)
!196 = !DILocation(line: 65, column: 40, scope: !97)
!197 = !DILocation(line: 65, column: 60, scope: !97)
!198 = !DILocation(line: 65, column: 51, scope: !97)
!199 = !DILocation(line: 65, column: 9, scope: !97)
!200 = !DILocation(line: 65, column: 30, scope: !97)
!201 = !DILocation(line: 66, column: 12, scope: !97)
!202 = !DILocation(line: 61, column: 27, scope: !98)
!203 = distinct !{!203, !186, !204, !134}
!204 = !DILocation(line: 67, column: 7, scope: !99)
!205 = !DILocation(line: 70, column: 29, scope: !102)
!206 = !DILocation(line: 0, scope: !102)
!207 = !DILocation(line: 71, column: 37, scope: !102)
!208 = !DILocation(line: 71, column: 35, scope: !102)
!209 = !DILocation(line: 72, column: 40, scope: !102)
!210 = !DILocation(line: 72, column: 60, scope: !102)
!211 = !DILocation(line: 72, column: 51, scope: !102)
!212 = !DILocation(line: 72, column: 9, scope: !102)
!213 = !DILocation(line: 72, column: 30, scope: !102)
!214 = !DILocation(line: 73, column: 9, scope: !102)
!215 = !DILocation(line: 73, column: 30, scope: !102)
!216 = !DILocation(line: 77, column: 10, scope: !91)
!217 = !DILocation(line: 57, column: 25, scope: !92)
!218 = distinct !{!218, !179, !219, !134}
!219 = !DILocation(line: 78, column: 5, scope: !93)
!220 = !DILocation(line: 80, column: 5, scope: !221)
!221 = distinct !DILexicalBlock(scope: !89, file: !2, line: 79, column: 10)
!222 = !DILocation(line: 14, column: 1, scope: !223)
!223 = !DILexicalBlockFile(scope: !44, file: !18, discriminator: 0)
!224 = !DISubprogram(name: "cblas_xerbla", scope: !21, file: !21, line: 602, type: !225, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!225 = !DISubroutineType(types: !226)
!226 = !{null, !50, !227, !227, null}
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
