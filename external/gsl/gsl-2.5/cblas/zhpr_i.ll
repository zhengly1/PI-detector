; ModuleID = 'zhpr.ll'
source_filename = "zhpr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"./source_hpr.h\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !7
@.str.2 = private unnamed_addr constant [23 x i8] c"unrecognized operation\00", align 1, !dbg !12

; Function Attrs: nounwind uwtable
define dso_local void @cblas_zhpr(i32 noundef %0, i32 noundef %1, i32 noundef %2, double noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5, ptr nocapture noundef %6) local_unnamed_addr #0 !dbg !44 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !55, metadata !DIExpression()), !dbg !103
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !56, metadata !DIExpression()), !dbg !103
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !57, metadata !DIExpression()), !dbg !103
  tail call void @llvm.dbg.value(metadata double %3, metadata !58, metadata !DIExpression()), !dbg !103
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
  %24 = fcmp oeq double %3, 0.000000e+00, !dbg !119
  br i1 %24, label %210, label %25, !dbg !121

25:                                               ; preds = %23
  %26 = icmp eq i32 %0, 101, !dbg !122
  %27 = icmp eq i32 %1, 121
  %28 = and i1 %26, %27, !dbg !123
  br i1 %28, label %32, label %29, !dbg !123

29:                                               ; preds = %25
  %30 = icmp eq i32 %1, 122
  %31 = and i1 %8, %30, !dbg !124
  br i1 %31, label %32, label %118, !dbg !124

32:                                               ; preds = %29, %25
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !69, metadata !DIExpression()), !dbg !125
  tail call void @llvm.dbg.value(metadata i32 0, metadata !62, metadata !DIExpression()), !dbg !106
  %33 = icmp sgt i32 %2, 0, !dbg !126
  br i1 %33, label %34, label %210, !dbg !127

34:                                               ; preds = %32
  %35 = icmp sgt i32 %5, 0, !dbg !128
  %36 = sub nsw i32 1, %2, !dbg !128
  %37 = mul i32 %36, %5, !dbg !128
  %38 = select i1 %35, i32 0, i32 %37, !dbg !128
  tail call void @llvm.dbg.value(metadata i32 %38, metadata !69, metadata !DIExpression()), !dbg !125
  %39 = sitofp i32 %10 to double
  %40 = fmul double %39, %3
  %41 = sitofp i32 %9 to double
  %42 = shl nuw nsw i32 %2, 1
  %43 = or disjoint i32 %42, 1
  %44 = zext i32 %5 to i64, !dbg !127
  %45 = zext i32 %38 to i64, !dbg !127
  %46 = zext nneg i32 %2 to i64
  br label %51, !dbg !127

47:                                               ; preds = %88, %51
  %48 = xor i32 %56, -1
  tail call void @llvm.dbg.value(metadata i32 %83, metadata !62, metadata !DIExpression()), !dbg !106
  tail call void @llvm.dbg.value(metadata i64 %82, metadata !69, metadata !DIExpression()), !dbg !125
  %49 = add nuw nsw i64 %54, 1, !dbg !127
  %50 = icmp eq i32 %83, %2, !dbg !126
  br i1 %50, label %210, label %51, !dbg !127, !llvm.loop !129

51:                                               ; preds = %47, %34
  %52 = phi i64 [ %45, %34 ], [ %82, %47 ]
  %53 = phi i32 [ %38, %34 ], [ %57, %47 ]
  %54 = phi i64 [ 1, %34 ], [ %49, %47 ]
  %55 = phi i32 [ 0, %34 ], [ %48, %47 ]
  %56 = phi i32 [ 0, %34 ], [ %83, %47 ]
  %57 = add i32 %53, %5, !dbg !127
  tail call void @llvm.dbg.value(metadata i32 %56, metadata !62, metadata !DIExpression()), !dbg !106
  tail call void @llvm.dbg.value(metadata i64 %52, metadata !69, metadata !DIExpression()), !dbg !125
  %58 = trunc i64 %52 to i32, !dbg !132
  %59 = shl nsw i32 %58, 1, !dbg !132
  %60 = sext i32 %59 to i64, !dbg !132
  %61 = getelementptr inbounds double, ptr %4, i64 %60, !dbg !132
  %62 = load double, ptr %61, align 8, !dbg !132, !tbaa !133
  %63 = fmul double %62, %3, !dbg !137
  tail call void @llvm.dbg.value(metadata double %63, metadata !72, metadata !DIExpression()), !dbg !138
  %64 = or disjoint i32 %59, 1, !dbg !139
  %65 = sext i32 %64 to i64, !dbg !139
  %66 = getelementptr inbounds double, ptr %4, i64 %65, !dbg !139
  %67 = load double, ptr %66, align 8, !dbg !139, !tbaa !133
  %68 = fmul double %40, %67, !dbg !140
  tail call void @llvm.dbg.value(metadata double %68, metadata !76, metadata !DIExpression()), !dbg !138
  tail call void @llvm.dbg.value(metadata i64 %52, metadata !77, metadata !DIExpression()), !dbg !138
  tail call void @llvm.dbg.value(metadata double %62, metadata !78, metadata !DIExpression()), !dbg !141
  %69 = fmul double %67, %41, !dbg !142
  tail call void @llvm.dbg.value(metadata double %69, metadata !80, metadata !DIExpression()), !dbg !141
  %70 = fmul double %62, %63, !dbg !143
  %71 = fmul double %69, %68, !dbg !144
  %handler_result = call double @fSubHandlerDouble(double %70, double %71), !dbg !145
  %72 = add i32 %43, %55, !dbg !145
  %73 = mul nsw i32 %72, %56, !dbg !145
  %74 = sdiv i32 %73, 2, !dbg !145
  %75 = shl nsw i32 %74, 1, !dbg !145
  %76 = sext i32 %75 to i64, !dbg !145
  %77 = getelementptr inbounds double, ptr %6, i64 %76, !dbg !145
  %78 = load double, ptr %77, align 8, !dbg !146, !tbaa !133
  %handler_result1 = call double @fAddHandlerDouble(double %78, double %handler_result), !dbg !146
  store double %handler_result1, ptr %77, align 8, !dbg !146, !tbaa !133
  %79 = or disjoint i32 %75, 1, !dbg !147
  %80 = sext i32 %79 to i64, !dbg !147
  %81 = getelementptr inbounds double, ptr %6, i64 %80, !dbg !147
  store double 0.000000e+00, ptr %81, align 8, !dbg !148, !tbaa !133
  %82 = add i64 %52, %44, !dbg !149
  tail call void @llvm.dbg.value(metadata i64 %82, metadata !77, metadata !DIExpression()), !dbg !138
  %83 = add nuw nsw i32 %56, 1, !dbg !150
  tail call void @llvm.dbg.value(metadata i32 %83, metadata !65, metadata !DIExpression()), !dbg !106
  %84 = icmp slt i32 %83, %2, !dbg !151
  br i1 %84, label %85, label %47, !dbg !152

85:                                               ; preds = %51
  %86 = zext i32 %57 to i64, !dbg !132
  %87 = add i32 %74, %55
  br label %88, !dbg !152

88:                                               ; preds = %88, %85
  %89 = phi i64 [ %86, %85 ], [ %115, %88 ]
  %90 = phi i64 [ %54, %85 ], [ %116, %88 ]
  tail call void @llvm.dbg.value(metadata i64 %90, metadata !65, metadata !DIExpression()), !dbg !106
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !77, metadata !DIExpression()), !dbg !138
  %91 = trunc i64 %89 to i32, !dbg !153
  %92 = shl nsw i32 %91, 1, !dbg !153
  %93 = sext i32 %92 to i64, !dbg !153
  %94 = getelementptr inbounds double, ptr %4, i64 %93, !dbg !153
  %95 = load double, ptr %94, align 8, !dbg !153, !tbaa !133
  tail call void @llvm.dbg.value(metadata double %95, metadata !81, metadata !DIExpression()), !dbg !154
  %96 = or disjoint i32 %92, 1, !dbg !155
  %97 = sext i32 %96 to i64, !dbg !155
  %98 = getelementptr inbounds double, ptr %4, i64 %97, !dbg !155
  %99 = load double, ptr %98, align 8, !dbg !155, !tbaa !133
  %100 = fmul double %99, %41, !dbg !156
  tail call void @llvm.dbg.value(metadata double %100, metadata !85, metadata !DIExpression()), !dbg !154
  %101 = fmul double %63, %95, !dbg !157
  %102 = fmul double %68, %100, !dbg !158
  %handler_result2 = call double @fSubHandlerDouble(double %101, double %102), !dbg !159
  %103 = trunc i64 %90 to i32, !dbg !159
  %104 = add i32 %87, %103, !dbg !159
  %105 = shl nsw i32 %104, 1, !dbg !159
  %106 = sext i32 %105 to i64, !dbg !159
  %107 = getelementptr inbounds double, ptr %6, i64 %106, !dbg !159
  %108 = load double, ptr %107, align 8, !dbg !160, !tbaa !133
  %handler_result3 = call double @fAddHandlerDouble(double %108, double %handler_result2), !dbg !160
  store double %handler_result3, ptr %107, align 8, !dbg !160, !tbaa !133
  %109 = fmul double %63, %100, !dbg !161
  %110 = fmul double %68, %95, !dbg !162
  %handler_result4 = call double @fAddHandlerDouble(double %110, double %109), !dbg !163
  %111 = or disjoint i32 %105, 1, !dbg !163
  %112 = sext i32 %111 to i64, !dbg !163
  %113 = getelementptr inbounds double, ptr %6, i64 %112, !dbg !163
  %114 = load double, ptr %113, align 8, !dbg !164, !tbaa !133
  %handler_result5 = call double @fAddHandlerDouble(double %114, double %handler_result4), !dbg !164
  store double %handler_result5, ptr %113, align 8, !dbg !164, !tbaa !133
  %115 = add i64 %89, %44, !dbg !165
  tail call void @llvm.dbg.value(metadata i64 %115, metadata !77, metadata !DIExpression()), !dbg !138
  %116 = add nuw nsw i64 %90, 1, !dbg !166
  tail call void @llvm.dbg.value(metadata i64 %116, metadata !65, metadata !DIExpression()), !dbg !106
  %117 = icmp eq i64 %116, %46, !dbg !151
  br i1 %117, label %47, label %88, !dbg !152, !llvm.loop !167

118:                                              ; preds = %29
  %119 = and i1 %26, %30, !dbg !169
  %120 = and i1 %8, %27
  %121 = or i1 %119, %120, !dbg !169
  br i1 %121, label %122, label %209, !dbg !169

122:                                              ; preds = %118
  %123 = icmp sgt i32 %5, 0, !dbg !170
  %124 = sub i32 1, %2, !dbg !170
  %125 = mul i32 %124, %5, !dbg !170
  %126 = select i1 %123, i32 0, i32 %125, !dbg !170
  tail call void @llvm.dbg.value(metadata i32 %126, metadata !86, metadata !DIExpression()), !dbg !171
  tail call void @llvm.dbg.value(metadata i32 0, metadata !62, metadata !DIExpression()), !dbg !106
  %127 = icmp sgt i32 %2, 0, !dbg !172
  br i1 %127, label %128, label %210, !dbg !173

128:                                              ; preds = %122
  %129 = sitofp i32 %10 to double
  %130 = fmul double %129, %3
  %131 = sitofp i32 %9 to double
  %132 = zext i32 %126 to i64, !dbg !173
  %133 = zext i32 %5 to i64, !dbg !173
  br label %134, !dbg !173

134:                                              ; preds = %184, %128
  %135 = phi i64 [ %132, %128 ], [ %207, %184 ]
  %136 = phi i32 [ 0, %128 ], [ %185, %184 ]
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !62, metadata !DIExpression()), !dbg !106
  tail call void @llvm.dbg.value(metadata i64 %135, metadata !86, metadata !DIExpression()), !dbg !171
  %137 = trunc i64 %135 to i32, !dbg !174
  %138 = shl nsw i32 %137, 1, !dbg !174
  %139 = sext i32 %138 to i64, !dbg !174
  %140 = getelementptr inbounds double, ptr %4, i64 %139, !dbg !174
  %141 = load double, ptr %140, align 8, !dbg !174, !tbaa !133
  %142 = fmul double %141, %3, !dbg !175
  tail call void @llvm.dbg.value(metadata double %142, metadata !89, metadata !DIExpression()), !dbg !176
  %143 = or disjoint i32 %138, 1, !dbg !177
  %144 = sext i32 %143 to i64, !dbg !177
  %145 = getelementptr inbounds double, ptr %4, i64 %144, !dbg !177
  %146 = load double, ptr %145, align 8, !dbg !177, !tbaa !133
  %147 = fmul double %130, %146, !dbg !178
  tail call void @llvm.dbg.value(metadata double %147, metadata !93, metadata !DIExpression()), !dbg !176
  tail call void @llvm.dbg.value(metadata i32 %126, metadata !94, metadata !DIExpression()), !dbg !176
  tail call void @llvm.dbg.value(metadata i32 0, metadata !65, metadata !DIExpression()), !dbg !106
  %148 = icmp eq i32 %136, 0, !dbg !179
  br i1 %148, label %184, label %149, !dbg !180

149:                                              ; preds = %134
  %150 = add nuw nsw i32 %136, 1
  %151 = mul nsw i32 %150, %136
  br label %152, !dbg !180

152:                                              ; preds = %152, %149
  %153 = phi i64 [ %132, %149 ], [ %179, %152 ]
  %154 = phi i32 [ 0, %149 ], [ %180, %152 ]
  tail call void @llvm.dbg.value(metadata i32 %154, metadata !65, metadata !DIExpression()), !dbg !106
  tail call void @llvm.dbg.value(metadata i64 %153, metadata !94, metadata !DIExpression()), !dbg !176
  %155 = trunc i64 %153 to i32, !dbg !181
  %156 = shl nsw i32 %155, 1, !dbg !181
  %157 = sext i32 %156 to i64, !dbg !181
  %158 = getelementptr inbounds double, ptr %4, i64 %157, !dbg !181
  %159 = load double, ptr %158, align 8, !dbg !181, !tbaa !133
  tail call void @llvm.dbg.value(metadata double %159, metadata !95, metadata !DIExpression()), !dbg !182
  %160 = or disjoint i32 %156, 1, !dbg !183
  %161 = sext i32 %160 to i64, !dbg !183
  %162 = getelementptr inbounds double, ptr %4, i64 %161, !dbg !183
  %163 = load double, ptr %162, align 8, !dbg !183, !tbaa !133
  %164 = fmul double %163, %131, !dbg !184
  tail call void @llvm.dbg.value(metadata double %164, metadata !99, metadata !DIExpression()), !dbg !182
  %165 = fmul double %142, %159, !dbg !185
  %166 = fmul double %147, %164, !dbg !186
  %handler_result6 = call double @fSubHandlerDouble(double %165, double %166), !dbg !187
  %167 = shl nuw i32 %154, 1, !dbg !187
  %168 = add i32 %167, %151, !dbg !187
  %169 = and i32 %168, -2, !dbg !187
  %170 = sext i32 %169 to i64, !dbg !187
  %171 = getelementptr inbounds double, ptr %6, i64 %170, !dbg !187
  %172 = load double, ptr %171, align 8, !dbg !188, !tbaa !133
  %handler_result7 = call double @fAddHandlerDouble(double %172, double %handler_result6), !dbg !188
  store double %handler_result7, ptr %171, align 8, !dbg !188, !tbaa !133
  %173 = fmul double %142, %164, !dbg !189
  %174 = fmul double %147, %159, !dbg !190
  %handler_result8 = call double @fAddHandlerDouble(double %174, double %173), !dbg !191
  %175 = or i32 %168, 1, !dbg !191
  %176 = sext i32 %175 to i64, !dbg !191
  %177 = getelementptr inbounds double, ptr %6, i64 %176, !dbg !191
  %178 = load double, ptr %177, align 8, !dbg !192, !tbaa !133
  %handler_result9 = call double @fAddHandlerDouble(double %178, double %handler_result8), !dbg !192
  store double %handler_result9, ptr %177, align 8, !dbg !192, !tbaa !133
  %179 = add i64 %153, %133, !dbg !193
  tail call void @llvm.dbg.value(metadata i64 %179, metadata !94, metadata !DIExpression()), !dbg !176
  %180 = add nuw nsw i32 %154, 1, !dbg !194
  tail call void @llvm.dbg.value(metadata i32 %180, metadata !65, metadata !DIExpression()), !dbg !106
  %181 = icmp eq i32 %180, %136, !dbg !179
  br i1 %181, label %182, label %152, !dbg !180, !llvm.loop !195

182:                                              ; preds = %152
  %183 = trunc i64 %179 to i32, !dbg !197
  br label %184, !dbg !197

184:                                              ; preds = %182, %134
  %185 = phi i32 [ %150, %182 ], [ 1, %134 ], !dbg !198
  %186 = phi i32 [ %183, %182 ], [ %126, %134 ], !dbg !176
  %187 = shl nsw i32 %186, 1, !dbg !197
  %188 = sext i32 %187 to i64, !dbg !197
  %189 = getelementptr inbounds double, ptr %4, i64 %188, !dbg !197
  %190 = load double, ptr %189, align 8, !dbg !197, !tbaa !133
  tail call void @llvm.dbg.value(metadata double %190, metadata !100, metadata !DIExpression()), !dbg !199
  %191 = or disjoint i32 %187, 1, !dbg !200
  %192 = sext i32 %191 to i64, !dbg !200
  %193 = getelementptr inbounds double, ptr %4, i64 %192, !dbg !200
  %194 = load double, ptr %193, align 8, !dbg !200, !tbaa !133
  %195 = fmul double %194, %131, !dbg !201
  tail call void @llvm.dbg.value(metadata double %195, metadata !102, metadata !DIExpression()), !dbg !199
  %196 = fmul double %142, %190, !dbg !202
  %197 = fmul double %147, %195, !dbg !203
  %handler_result10 = call double @fSubHandlerDouble(double %196, double %197), !dbg !198
  %198 = add nuw i32 %136, 3, !dbg !198
  %199 = mul i32 %198, %136, !dbg !198
  %200 = and i32 %199, -2, !dbg !198
  %201 = sext i32 %200 to i64, !dbg !198
  %202 = getelementptr inbounds double, ptr %6, i64 %201, !dbg !198
  %203 = load double, ptr %202, align 8, !dbg !204, !tbaa !133
  %handler_result11 = call double @fAddHandlerDouble(double %203, double %handler_result10), !dbg !204
  store double %handler_result11, ptr %202, align 8, !dbg !204, !tbaa !133
  %204 = or i32 %199, 1, !dbg !205
  %205 = sext i32 %204 to i64, !dbg !205
  %206 = getelementptr inbounds double, ptr %6, i64 %205, !dbg !205
  store double 0.000000e+00, ptr %206, align 8, !dbg !206, !tbaa !133
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 %186, i32 %5), metadata !94, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !176
  %207 = add i64 %135, %133, !dbg !207
  tail call void @llvm.dbg.value(metadata i32 %185, metadata !62, metadata !DIExpression()), !dbg !106
  tail call void @llvm.dbg.value(metadata i64 %207, metadata !86, metadata !DIExpression()), !dbg !171
  %208 = icmp eq i32 %185, %2, !dbg !172
  br i1 %208, label %210, label %134, !dbg !173, !llvm.loop !208

209:                                              ; preds = %118
  tail call void (i32, ptr, ptr, ...) @cblas_xerbla(i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #3, !dbg !210
  br label %210

210:                                              ; preds = %209, %184, %122, %47, %32, %23
  ret void, !dbg !212
}

declare !dbg !214 void @cblas_xerbla(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

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
!18 = !DIFile(filename: "zhpr.c", directory: "/PI-detector/external/gsl/gsl-2.5/cblas", checksumkind: CSK_MD5, checksum: "445aec4ee2a00e00e44630f270de672b")
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
!44 = distinct !DISubprogram(name: "cblas_zhpr", scope: !18, file: !18, line: 7, type: !45, scopeLine: 10, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !54)
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
!134 = !{!"double", !135, i64 0}
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
