; ModuleID = 'zher.ll'
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
  br i1 %28, label %215, label %29, !dbg !124

29:                                               ; preds = %27
  %30 = icmp eq i32 %0, 101, !dbg !125
  %31 = icmp eq i32 %1, 121
  %32 = and i1 %30, %31, !dbg !126
  br i1 %32, label %36, label %33, !dbg !126

33:                                               ; preds = %29
  %34 = icmp eq i32 %1, 122
  %35 = and i1 %9, %34, !dbg !127
  br i1 %35, label %36, label %121, !dbg !127

36:                                               ; preds = %33, %29
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !70, metadata !DIExpression()), !dbg !128
  tail call void @llvm.dbg.value(metadata i32 0, metadata !63, metadata !DIExpression()), !dbg !107
  %37 = icmp sgt i32 %2, 0, !dbg !129
  br i1 %37, label %38, label %215, !dbg !130

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

51:                                               ; preds = %91, %54
  tail call void @llvm.dbg.value(metadata i64 %87, metadata !63, metadata !DIExpression()), !dbg !107
  tail call void @llvm.dbg.value(metadata i64 %86, metadata !70, metadata !DIExpression()), !dbg !128
  %52 = add nuw nsw i64 %58, 1, !dbg !130
  %53 = icmp eq i64 %87, %50, !dbg !129
  br i1 %53, label %215, label %54, !dbg !130, !llvm.loop !132

54:                                               ; preds = %51, %38
  %55 = phi i64 [ %49, %38 ], [ %86, %51 ]
  %56 = phi i64 [ 0, %38 ], [ %87, %51 ]
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
  %handler_result = call double @fSubHandlerDouble(double %73, double %74), !dbg !148
  %75 = mul i64 %56, %47, !dbg !148
  %76 = mul nsw i32 %60, %7, !dbg !148
  %77 = trunc i64 %56 to i32, !dbg !148
  %78 = add i32 %76, %77, !dbg !148
  %79 = shl nsw i32 %78, 1, !dbg !148
  %80 = sext i32 %79 to i64, !dbg !148
  %81 = getelementptr inbounds double, ptr %6, i64 %80, !dbg !148
  %82 = load double, ptr %81, align 8, !dbg !149, !tbaa !136
  %handler_result1 = call double @fAddHandlerDouble(double %82, double %handler_result), !dbg !149
  store double %handler_result1, ptr %81, align 8, !dbg !149, !tbaa !136
  %83 = or disjoint i32 %79, 1, !dbg !150
  %84 = sext i32 %83 to i64, !dbg !150
  %85 = getelementptr inbounds double, ptr %6, i64 %84, !dbg !150
  store double 0.000000e+00, ptr %85, align 8, !dbg !151, !tbaa !136
  %86 = add i64 %55, %46, !dbg !152
  tail call void @llvm.dbg.value(metadata i64 %86, metadata !78, metadata !DIExpression()), !dbg !141
  %87 = add nuw nsw i64 %56, 1, !dbg !153
  tail call void @llvm.dbg.value(metadata i64 %87, metadata !66, metadata !DIExpression()), !dbg !107
  %88 = icmp ult i64 %87, %48, !dbg !154
  br i1 %88, label %89, label %51, !dbg !155

89:                                               ; preds = %54
  %90 = zext i32 %59 to i64, !dbg !135
  br label %91, !dbg !155

91:                                               ; preds = %91, %89
  %92 = phi i64 [ %90, %89 ], [ %118, %91 ]
  %93 = phi i64 [ %58, %89 ], [ %119, %91 ]
  tail call void @llvm.dbg.value(metadata i64 %93, metadata !66, metadata !DIExpression()), !dbg !107
  tail call void @llvm.dbg.value(metadata i64 %92, metadata !78, metadata !DIExpression()), !dbg !141
  %94 = trunc i64 %92 to i32, !dbg !156
  %95 = shl nsw i32 %94, 1, !dbg !156
  %96 = sext i32 %95 to i64, !dbg !156
  %97 = getelementptr inbounds double, ptr %4, i64 %96, !dbg !156
  %98 = load double, ptr %97, align 8, !dbg !156, !tbaa !136
  tail call void @llvm.dbg.value(metadata double %98, metadata !82, metadata !DIExpression()), !dbg !157
  %99 = or disjoint i32 %95, 1, !dbg !158
  %100 = sext i32 %99 to i64, !dbg !158
  %101 = getelementptr inbounds double, ptr %4, i64 %100, !dbg !158
  %102 = load double, ptr %101, align 8, !dbg !158, !tbaa !136
  %103 = fmul double %102, %45, !dbg !159
  tail call void @llvm.dbg.value(metadata double %103, metadata !86, metadata !DIExpression()), !dbg !157
  %104 = fmul double %66, %98, !dbg !160
  %105 = fmul double %71, %103, !dbg !161
  %handler_result2 = call double @fSubHandlerDouble(double %104, double %105), !dbg !162
  %106 = add i64 %93, %75, !dbg !162
  %107 = trunc i64 %106 to i32, !dbg !162
  %108 = shl nsw i32 %107, 1, !dbg !162
  %109 = sext i32 %108 to i64, !dbg !162
  %110 = getelementptr inbounds double, ptr %6, i64 %109, !dbg !162
  %111 = load double, ptr %110, align 8, !dbg !163, !tbaa !136
  %handler_result3 = call double @fAddHandlerDouble(double %111, double %handler_result2), !dbg !163
  store double %handler_result3, ptr %110, align 8, !dbg !163, !tbaa !136
  %112 = fmul double %66, %103, !dbg !164
  %113 = fmul double %71, %98, !dbg !165
  %handler_result4 = call double @fAddHandlerDouble(double %113, double %112), !dbg !166
  %114 = or disjoint i32 %108, 1, !dbg !166
  %115 = sext i32 %114 to i64, !dbg !166
  %116 = getelementptr inbounds double, ptr %6, i64 %115, !dbg !166
  %117 = load double, ptr %116, align 8, !dbg !167, !tbaa !136
  %handler_result5 = call double @fAddHandlerDouble(double %117, double %handler_result4), !dbg !167
  store double %handler_result5, ptr %116, align 8, !dbg !167, !tbaa !136
  %118 = add i64 %92, %46, !dbg !168
  tail call void @llvm.dbg.value(metadata i64 %118, metadata !78, metadata !DIExpression()), !dbg !141
  %119 = add nuw nsw i64 %93, 1, !dbg !169
  tail call void @llvm.dbg.value(metadata i64 %119, metadata !66, metadata !DIExpression()), !dbg !107
  %120 = icmp eq i64 %119, %50, !dbg !154
  br i1 %120, label %51, label %91, !dbg !155, !llvm.loop !170

121:                                              ; preds = %33
  %122 = and i1 %30, %34, !dbg !172
  %123 = and i1 %9, %31
  %124 = or i1 %122, %123, !dbg !172
  br i1 %124, label %125, label %214, !dbg !172

125:                                              ; preds = %121
  %126 = icmp sgt i32 %5, 0, !dbg !173
  %127 = sub i32 1, %2, !dbg !173
  %128 = mul i32 %127, %5, !dbg !173
  %129 = select i1 %126, i32 0, i32 %128, !dbg !173
  tail call void @llvm.dbg.value(metadata i32 %129, metadata !87, metadata !DIExpression()), !dbg !174
  tail call void @llvm.dbg.value(metadata i32 0, metadata !63, metadata !DIExpression()), !dbg !107
  %130 = icmp sgt i32 %2, 0, !dbg !175
  br i1 %130, label %131, label %215, !dbg !176

131:                                              ; preds = %125
  %132 = sitofp i32 %11 to double
  %133 = fmul double %132, %3
  %134 = sitofp i32 %10 to double
  %135 = shl i32 %7, 1
  %136 = add i32 %135, 2
  %137 = zext i32 %129 to i64, !dbg !176
  %138 = zext i32 %5 to i64, !dbg !176
  %139 = zext i32 %7 to i64, !dbg !176
  %140 = zext nneg i32 %2 to i64, !dbg !175
  br label %141, !dbg !176

141:                                              ; preds = %190, %131
  %142 = phi i64 [ %137, %131 ], [ %211, %190 ]
  %143 = phi i64 [ 0, %131 ], [ %212, %190 ]
  tail call void @llvm.dbg.value(metadata i64 %143, metadata !63, metadata !DIExpression()), !dbg !107
  tail call void @llvm.dbg.value(metadata i64 %142, metadata !87, metadata !DIExpression()), !dbg !174
  %144 = trunc i64 %142 to i32, !dbg !177
  %145 = shl nsw i32 %144, 1, !dbg !177
  %146 = sext i32 %145 to i64, !dbg !177
  %147 = getelementptr inbounds double, ptr %4, i64 %146, !dbg !177
  %148 = load double, ptr %147, align 8, !dbg !177, !tbaa !136
  %149 = fmul double %148, %3, !dbg !178
  tail call void @llvm.dbg.value(metadata double %149, metadata !90, metadata !DIExpression()), !dbg !179
  %150 = or disjoint i32 %145, 1, !dbg !180
  %151 = sext i32 %150 to i64, !dbg !180
  %152 = getelementptr inbounds double, ptr %4, i64 %151, !dbg !180
  %153 = load double, ptr %152, align 8, !dbg !180, !tbaa !136
  %154 = fmul double %133, %153, !dbg !181
  tail call void @llvm.dbg.value(metadata double %154, metadata !94, metadata !DIExpression()), !dbg !179
  tail call void @llvm.dbg.value(metadata i32 %129, metadata !95, metadata !DIExpression()), !dbg !179
  tail call void @llvm.dbg.value(metadata i32 0, metadata !66, metadata !DIExpression()), !dbg !107
  %155 = icmp eq i64 %143, 0, !dbg !182
  br i1 %155, label %190, label %156, !dbg !183

156:                                              ; preds = %141
  %157 = mul i64 %143, %139
  br label %158, !dbg !183

158:                                              ; preds = %158, %156
  %159 = phi i64 [ %137, %156 ], [ %185, %158 ]
  %160 = phi i64 [ 0, %156 ], [ %186, %158 ]
  tail call void @llvm.dbg.value(metadata i64 %160, metadata !66, metadata !DIExpression()), !dbg !107
  tail call void @llvm.dbg.value(metadata i64 %159, metadata !95, metadata !DIExpression()), !dbg !179
  %161 = trunc i64 %159 to i32, !dbg !184
  %162 = shl nsw i32 %161, 1, !dbg !184
  %163 = sext i32 %162 to i64, !dbg !184
  %164 = getelementptr inbounds double, ptr %4, i64 %163, !dbg !184
  %165 = load double, ptr %164, align 8, !dbg !184, !tbaa !136
  tail call void @llvm.dbg.value(metadata double %165, metadata !96, metadata !DIExpression()), !dbg !185
  %166 = or disjoint i32 %162, 1, !dbg !186
  %167 = sext i32 %166 to i64, !dbg !186
  %168 = getelementptr inbounds double, ptr %4, i64 %167, !dbg !186
  %169 = load double, ptr %168, align 8, !dbg !186, !tbaa !136
  %170 = fmul double %169, %134, !dbg !187
  tail call void @llvm.dbg.value(metadata double %170, metadata !100, metadata !DIExpression()), !dbg !185
  %171 = fmul double %149, %165, !dbg !188
  %172 = fmul double %154, %170, !dbg !189
  %handler_result6 = call double @fSubHandlerDouble(double %171, double %172), !dbg !190
  %173 = add i64 %160, %157, !dbg !190
  %174 = trunc i64 %173 to i32, !dbg !190
  %175 = shl nsw i32 %174, 1, !dbg !190
  %176 = sext i32 %175 to i64, !dbg !190
  %177 = getelementptr inbounds double, ptr %6, i64 %176, !dbg !190
  %178 = load double, ptr %177, align 8, !dbg !191, !tbaa !136
  %handler_result7 = call double @fAddHandlerDouble(double %178, double %handler_result6), !dbg !191
  store double %handler_result7, ptr %177, align 8, !dbg !191, !tbaa !136
  %179 = fmul double %149, %170, !dbg !192
  %180 = fmul double %154, %165, !dbg !193
  %handler_result8 = call double @fAddHandlerDouble(double %180, double %179), !dbg !194
  %181 = or disjoint i32 %175, 1, !dbg !194
  %182 = sext i32 %181 to i64, !dbg !194
  %183 = getelementptr inbounds double, ptr %6, i64 %182, !dbg !194
  %184 = load double, ptr %183, align 8, !dbg !195, !tbaa !136
  %handler_result9 = call double @fAddHandlerDouble(double %184, double %handler_result8), !dbg !195
  store double %handler_result9, ptr %183, align 8, !dbg !195, !tbaa !136
  %185 = add i64 %159, %138, !dbg !196
  tail call void @llvm.dbg.value(metadata i64 %185, metadata !95, metadata !DIExpression()), !dbg !179
  %186 = add nuw nsw i64 %160, 1, !dbg !197
  tail call void @llvm.dbg.value(metadata i64 %186, metadata !66, metadata !DIExpression()), !dbg !107
  %187 = icmp eq i64 %186, %143, !dbg !182
  br i1 %187, label %188, label %158, !dbg !183, !llvm.loop !198

188:                                              ; preds = %158
  %189 = trunc i64 %185 to i32, !dbg !200
  br label %190, !dbg !200

190:                                              ; preds = %188, %141
  %191 = phi i32 [ %129, %141 ], [ %189, %188 ], !dbg !179
  %192 = shl nsw i32 %191, 1, !dbg !200
  %193 = sext i32 %192 to i64, !dbg !200
  %194 = getelementptr inbounds double, ptr %4, i64 %193, !dbg !200
  %195 = load double, ptr %194, align 8, !dbg !200, !tbaa !136
  tail call void @llvm.dbg.value(metadata double %195, metadata !101, metadata !DIExpression()), !dbg !201
  %196 = or disjoint i32 %192, 1, !dbg !202
  %197 = sext i32 %196 to i64, !dbg !202
  %198 = getelementptr inbounds double, ptr %4, i64 %197, !dbg !202
  %199 = load double, ptr %198, align 8, !dbg !202, !tbaa !136
  %200 = fmul double %199, %134, !dbg !203
  tail call void @llvm.dbg.value(metadata double %200, metadata !103, metadata !DIExpression()), !dbg !201
  %201 = fmul double %149, %195, !dbg !204
  %202 = fmul double %154, %200, !dbg !205
  %handler_result10 = call double @fSubHandlerDouble(double %201, double %202), !dbg !206
  %203 = trunc i64 %143 to i32, !dbg !206
  %204 = mul i32 %136, %203, !dbg !206
  %205 = sext i32 %204 to i64, !dbg !206
  %206 = getelementptr inbounds double, ptr %6, i64 %205, !dbg !206
  %207 = load double, ptr %206, align 8, !dbg !207, !tbaa !136
  %handler_result11 = call double @fAddHandlerDouble(double %207, double %handler_result10), !dbg !207
  store double %handler_result11, ptr %206, align 8, !dbg !207, !tbaa !136
  %208 = or disjoint i32 %204, 1, !dbg !208
  %209 = sext i32 %208 to i64, !dbg !208
  %210 = getelementptr inbounds double, ptr %6, i64 %209, !dbg !208
  store double 0.000000e+00, ptr %210, align 8, !dbg !209, !tbaa !136
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 %191, i32 %5), metadata !95, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !179
  %211 = add i64 %142, %138, !dbg !210
  tail call void @llvm.dbg.value(metadata i64 %211, metadata !87, metadata !DIExpression()), !dbg !174
  %212 = add nuw nsw i64 %143, 1, !dbg !211
  tail call void @llvm.dbg.value(metadata i64 %212, metadata !63, metadata !DIExpression()), !dbg !107
  %213 = icmp eq i64 %212, %140, !dbg !175
  br i1 %213, label %215, label %141, !dbg !176, !llvm.loop !212

214:                                              ; preds = %121
  tail call void (i32, ptr, ptr, ...) @cblas_xerbla(i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #3, !dbg !214
  br label %215

215:                                              ; preds = %214, %190, %125, %51, %36, %27
  ret void, !dbg !216
}

declare !dbg !218 void @cblas_xerbla(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

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
!148 = !DILocation(line: 40, column: 9, scope: !80)
!149 = !DILocation(line: 40, column: 30, scope: !80)
!150 = !DILocation(line: 41, column: 9, scope: !80)
!151 = !DILocation(line: 41, column: 30, scope: !80)
!152 = !DILocation(line: 42, column: 12, scope: !80)
!153 = !DILocation(line: 45, column: 18, scope: !85)
!154 = !DILocation(line: 45, column: 25, scope: !84)
!155 = !DILocation(line: 45, column: 7, scope: !85)
!156 = !DILocation(line: 46, column: 29, scope: !83)
!157 = !DILocation(line: 0, scope: !83)
!158 = !DILocation(line: 47, column: 37, scope: !83)
!159 = !DILocation(line: 47, column: 35, scope: !83)
!160 = !DILocation(line: 48, column: 40, scope: !83)
!161 = !DILocation(line: 48, column: 60, scope: !83)
!162 = !DILocation(line: 48, column: 9, scope: !83)
!163 = !DILocation(line: 48, column: 30, scope: !83)
!164 = !DILocation(line: 49, column: 40, scope: !83)
!165 = !DILocation(line: 49, column: 60, scope: !83)
!166 = !DILocation(line: 49, column: 9, scope: !83)
!167 = !DILocation(line: 49, column: 30, scope: !83)
!168 = !DILocation(line: 50, column: 12, scope: !83)
!169 = !DILocation(line: 45, column: 31, scope: !84)
!170 = distinct !{!170, !155, !171, !134}
!171 = !DILocation(line: 51, column: 7, scope: !85)
!172 = !DILocation(line: 54, column: 38, scope: !89)
!173 = !DILocation(line: 56, column: 16, scope: !88)
!174 = !DILocation(line: 0, scope: !88)
!175 = !DILocation(line: 57, column: 19, scope: !92)
!176 = !DILocation(line: 57, column: 5, scope: !93)
!177 = !DILocation(line: 58, column: 37, scope: !91)
!178 = !DILocation(line: 58, column: 35, scope: !91)
!179 = !DILocation(line: 0, scope: !91)
!180 = !DILocation(line: 59, column: 44, scope: !91)
!181 = !DILocation(line: 59, column: 42, scope: !91)
!182 = !DILocation(line: 61, column: 21, scope: !98)
!183 = !DILocation(line: 61, column: 7, scope: !99)
!184 = !DILocation(line: 62, column: 29, scope: !97)
!185 = !DILocation(line: 0, scope: !97)
!186 = !DILocation(line: 63, column: 37, scope: !97)
!187 = !DILocation(line: 63, column: 35, scope: !97)
!188 = !DILocation(line: 64, column: 40, scope: !97)
!189 = !DILocation(line: 64, column: 60, scope: !97)
!190 = !DILocation(line: 64, column: 9, scope: !97)
!191 = !DILocation(line: 64, column: 30, scope: !97)
!192 = !DILocation(line: 65, column: 40, scope: !97)
!193 = !DILocation(line: 65, column: 60, scope: !97)
!194 = !DILocation(line: 65, column: 9, scope: !97)
!195 = !DILocation(line: 65, column: 30, scope: !97)
!196 = !DILocation(line: 66, column: 12, scope: !97)
!197 = !DILocation(line: 61, column: 27, scope: !98)
!198 = distinct !{!198, !183, !199, !134}
!199 = !DILocation(line: 67, column: 7, scope: !99)
!200 = !DILocation(line: 70, column: 29, scope: !102)
!201 = !DILocation(line: 0, scope: !102)
!202 = !DILocation(line: 71, column: 37, scope: !102)
!203 = !DILocation(line: 71, column: 35, scope: !102)
!204 = !DILocation(line: 72, column: 40, scope: !102)
!205 = !DILocation(line: 72, column: 60, scope: !102)
!206 = !DILocation(line: 72, column: 9, scope: !102)
!207 = !DILocation(line: 72, column: 30, scope: !102)
!208 = !DILocation(line: 73, column: 9, scope: !102)
!209 = !DILocation(line: 73, column: 30, scope: !102)
!210 = !DILocation(line: 77, column: 10, scope: !91)
!211 = !DILocation(line: 57, column: 25, scope: !92)
!212 = distinct !{!212, !176, !213, !134}
!213 = !DILocation(line: 78, column: 5, scope: !93)
!214 = !DILocation(line: 80, column: 5, scope: !215)
!215 = distinct !DILexicalBlock(scope: !89, file: !2, line: 79, column: 10)
!216 = !DILocation(line: 14, column: 1, scope: !217)
!217 = !DILexicalBlockFile(scope: !44, file: !18, discriminator: 0)
!218 = !DISubprogram(name: "cblas_xerbla", scope: !21, file: !21, line: 602, type: !219, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!219 = !DISubroutineType(types: !220)
!220 = !{null, !50, !221, !221, null}
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
