; ModuleID = 'zhpr.c'
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
  br i1 %24, label %222, label %25, !dbg !121

25:                                               ; preds = %23
  %26 = icmp eq i32 %0, 101, !dbg !122
  %27 = icmp eq i32 %1, 121
  %28 = and i1 %26, %27, !dbg !123
  br i1 %28, label %32, label %29, !dbg !123

29:                                               ; preds = %25
  %30 = icmp eq i32 %1, 122
  %31 = and i1 %8, %30, !dbg !124
  br i1 %31, label %32, label %124, !dbg !124

32:                                               ; preds = %29, %25
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !69, metadata !DIExpression()), !dbg !125
  tail call void @llvm.dbg.value(metadata i32 0, metadata !62, metadata !DIExpression()), !dbg !106
  %33 = icmp sgt i32 %2, 0, !dbg !126
  br i1 %33, label %34, label %222, !dbg !127

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

47:                                               ; preds = %90, %51
  %48 = xor i32 %56, -1
  tail call void @llvm.dbg.value(metadata i32 %85, metadata !62, metadata !DIExpression()), !dbg !106
  tail call void @llvm.dbg.value(metadata i64 %84, metadata !69, metadata !DIExpression()), !dbg !125
  %49 = add nuw nsw i64 %54, 1, !dbg !127
  %50 = icmp eq i32 %85, %2, !dbg !126
  br i1 %50, label %222, label %51, !dbg !127, !llvm.loop !129

51:                                               ; preds = %34, %47
  %52 = phi i64 [ %45, %34 ], [ %84, %47 ]
  %53 = phi i32 [ %38, %34 ], [ %57, %47 ]
  %54 = phi i64 [ 1, %34 ], [ %49, %47 ]
  %55 = phi i32 [ 0, %34 ], [ %48, %47 ]
  %56 = phi i32 [ 0, %34 ], [ %85, %47 ]
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
  %72 = fsub double %70, %71, !dbg !145
  %73 = add i32 %43, %55, !dbg !146
  %74 = mul nsw i32 %73, %56, !dbg !146
  %75 = sdiv i32 %74, 2, !dbg !146
  %76 = shl nsw i32 %75, 1, !dbg !146
  %77 = sext i32 %76 to i64, !dbg !146
  %78 = getelementptr inbounds double, ptr %6, i64 %77, !dbg !146
  %79 = load double, ptr %78, align 8, !dbg !147, !tbaa !133
  %80 = fadd double %79, %72, !dbg !147
  store double %80, ptr %78, align 8, !dbg !147, !tbaa !133
  %81 = or disjoint i32 %76, 1, !dbg !148
  %82 = sext i32 %81 to i64, !dbg !148
  %83 = getelementptr inbounds double, ptr %6, i64 %82, !dbg !148
  store double 0.000000e+00, ptr %83, align 8, !dbg !149, !tbaa !133
  %84 = add i64 %52, %44, !dbg !150
  tail call void @llvm.dbg.value(metadata i64 %84, metadata !77, metadata !DIExpression()), !dbg !138
  %85 = add nuw nsw i32 %56, 1, !dbg !151
  tail call void @llvm.dbg.value(metadata i32 %85, metadata !65, metadata !DIExpression()), !dbg !106
  %86 = icmp slt i32 %85, %2, !dbg !152
  br i1 %86, label %87, label %47, !dbg !153

87:                                               ; preds = %51
  %88 = zext i32 %57 to i64, !dbg !132
  %89 = add i32 %75, %55
  br label %90, !dbg !153

90:                                               ; preds = %87, %90
  %91 = phi i64 [ %88, %87 ], [ %121, %90 ]
  %92 = phi i64 [ %54, %87 ], [ %122, %90 ]
  tail call void @llvm.dbg.value(metadata i64 %92, metadata !65, metadata !DIExpression()), !dbg !106
  tail call void @llvm.dbg.value(metadata i64 %91, metadata !77, metadata !DIExpression()), !dbg !138
  %93 = trunc i64 %91 to i32, !dbg !154
  %94 = shl nsw i32 %93, 1, !dbg !154
  %95 = sext i32 %94 to i64, !dbg !154
  %96 = getelementptr inbounds double, ptr %4, i64 %95, !dbg !154
  %97 = load double, ptr %96, align 8, !dbg !154, !tbaa !133
  tail call void @llvm.dbg.value(metadata double %97, metadata !81, metadata !DIExpression()), !dbg !155
  %98 = or disjoint i32 %94, 1, !dbg !156
  %99 = sext i32 %98 to i64, !dbg !156
  %100 = getelementptr inbounds double, ptr %4, i64 %99, !dbg !156
  %101 = load double, ptr %100, align 8, !dbg !156, !tbaa !133
  %102 = fmul double %101, %41, !dbg !157
  tail call void @llvm.dbg.value(metadata double %102, metadata !85, metadata !DIExpression()), !dbg !155
  %103 = fmul double %63, %97, !dbg !158
  %104 = fmul double %68, %102, !dbg !159
  %105 = fsub double %103, %104, !dbg !160
  %106 = trunc i64 %92 to i32, !dbg !161
  %107 = add i32 %89, %106, !dbg !161
  %108 = shl nsw i32 %107, 1, !dbg !161
  %109 = sext i32 %108 to i64, !dbg !161
  %110 = getelementptr inbounds double, ptr %6, i64 %109, !dbg !161
  %111 = load double, ptr %110, align 8, !dbg !162, !tbaa !133
  %112 = fadd double %111, %105, !dbg !162
  store double %112, ptr %110, align 8, !dbg !162, !tbaa !133
  %113 = fmul double %63, %102, !dbg !163
  %114 = fmul double %68, %97, !dbg !164
  %115 = fadd double %114, %113, !dbg !165
  %116 = or disjoint i32 %108, 1, !dbg !166
  %117 = sext i32 %116 to i64, !dbg !166
  %118 = getelementptr inbounds double, ptr %6, i64 %117, !dbg !166
  %119 = load double, ptr %118, align 8, !dbg !167, !tbaa !133
  %120 = fadd double %119, %115, !dbg !167
  store double %120, ptr %118, align 8, !dbg !167, !tbaa !133
  %121 = add i64 %91, %44, !dbg !168
  tail call void @llvm.dbg.value(metadata i64 %121, metadata !77, metadata !DIExpression()), !dbg !138
  %122 = add nuw nsw i64 %92, 1, !dbg !169
  tail call void @llvm.dbg.value(metadata i64 %122, metadata !65, metadata !DIExpression()), !dbg !106
  %123 = icmp eq i64 %122, %46, !dbg !152
  br i1 %123, label %47, label %90, !dbg !153, !llvm.loop !170

124:                                              ; preds = %29
  %125 = and i1 %26, %30, !dbg !172
  %126 = and i1 %8, %27
  %127 = or i1 %125, %126, !dbg !172
  br i1 %127, label %128, label %221, !dbg !172

128:                                              ; preds = %124
  %129 = icmp sgt i32 %5, 0, !dbg !173
  %130 = sub i32 1, %2, !dbg !173
  %131 = mul i32 %130, %5, !dbg !173
  %132 = select i1 %129, i32 0, i32 %131, !dbg !173
  tail call void @llvm.dbg.value(metadata i32 %132, metadata !86, metadata !DIExpression()), !dbg !174
  tail call void @llvm.dbg.value(metadata i32 0, metadata !62, metadata !DIExpression()), !dbg !106
  %133 = icmp sgt i32 %2, 0, !dbg !175
  br i1 %133, label %134, label %222, !dbg !176

134:                                              ; preds = %128
  %135 = sitofp i32 %10 to double
  %136 = fmul double %135, %3
  %137 = sitofp i32 %9 to double
  %138 = zext i32 %132 to i64, !dbg !176
  %139 = zext i32 %5 to i64, !dbg !176
  br label %140, !dbg !176

140:                                              ; preds = %134, %194
  %141 = phi i64 [ %138, %134 ], [ %219, %194 ]
  %142 = phi i32 [ 0, %134 ], [ %195, %194 ]
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !62, metadata !DIExpression()), !dbg !106
  tail call void @llvm.dbg.value(metadata i64 %141, metadata !86, metadata !DIExpression()), !dbg !174
  %143 = trunc i64 %141 to i32, !dbg !177
  %144 = shl nsw i32 %143, 1, !dbg !177
  %145 = sext i32 %144 to i64, !dbg !177
  %146 = getelementptr inbounds double, ptr %4, i64 %145, !dbg !177
  %147 = load double, ptr %146, align 8, !dbg !177, !tbaa !133
  %148 = fmul double %147, %3, !dbg !178
  tail call void @llvm.dbg.value(metadata double %148, metadata !89, metadata !DIExpression()), !dbg !179
  %149 = or disjoint i32 %144, 1, !dbg !180
  %150 = sext i32 %149 to i64, !dbg !180
  %151 = getelementptr inbounds double, ptr %4, i64 %150, !dbg !180
  %152 = load double, ptr %151, align 8, !dbg !180, !tbaa !133
  %153 = fmul double %136, %152, !dbg !181
  tail call void @llvm.dbg.value(metadata double %153, metadata !93, metadata !DIExpression()), !dbg !179
  tail call void @llvm.dbg.value(metadata i32 %132, metadata !94, metadata !DIExpression()), !dbg !179
  tail call void @llvm.dbg.value(metadata i32 0, metadata !65, metadata !DIExpression()), !dbg !106
  %154 = icmp eq i32 %142, 0, !dbg !182
  br i1 %154, label %194, label %155, !dbg !183

155:                                              ; preds = %140
  %156 = add nuw nsw i32 %142, 1
  %157 = mul nsw i32 %156, %142
  br label %158, !dbg !183

158:                                              ; preds = %155, %158
  %159 = phi i64 [ %138, %155 ], [ %189, %158 ]
  %160 = phi i32 [ 0, %155 ], [ %190, %158 ]
  tail call void @llvm.dbg.value(metadata i32 %160, metadata !65, metadata !DIExpression()), !dbg !106
  tail call void @llvm.dbg.value(metadata i64 %159, metadata !94, metadata !DIExpression()), !dbg !179
  %161 = trunc i64 %159 to i32, !dbg !184
  %162 = shl nsw i32 %161, 1, !dbg !184
  %163 = sext i32 %162 to i64, !dbg !184
  %164 = getelementptr inbounds double, ptr %4, i64 %163, !dbg !184
  %165 = load double, ptr %164, align 8, !dbg !184, !tbaa !133
  tail call void @llvm.dbg.value(metadata double %165, metadata !95, metadata !DIExpression()), !dbg !185
  %166 = or disjoint i32 %162, 1, !dbg !186
  %167 = sext i32 %166 to i64, !dbg !186
  %168 = getelementptr inbounds double, ptr %4, i64 %167, !dbg !186
  %169 = load double, ptr %168, align 8, !dbg !186, !tbaa !133
  %170 = fmul double %169, %137, !dbg !187
  tail call void @llvm.dbg.value(metadata double %170, metadata !99, metadata !DIExpression()), !dbg !185
  %171 = fmul double %148, %165, !dbg !188
  %172 = fmul double %153, %170, !dbg !189
  %173 = fsub double %171, %172, !dbg !190
  %174 = shl nuw i32 %160, 1, !dbg !191
  %175 = add i32 %174, %157, !dbg !191
  %176 = and i32 %175, -2, !dbg !191
  %177 = sext i32 %176 to i64, !dbg !191
  %178 = getelementptr inbounds double, ptr %6, i64 %177, !dbg !191
  %179 = load double, ptr %178, align 8, !dbg !192, !tbaa !133
  %180 = fadd double %179, %173, !dbg !192
  store double %180, ptr %178, align 8, !dbg !192, !tbaa !133
  %181 = fmul double %148, %170, !dbg !193
  %182 = fmul double %153, %165, !dbg !194
  %183 = fadd double %182, %181, !dbg !195
  %184 = or i32 %175, 1, !dbg !196
  %185 = sext i32 %184 to i64, !dbg !196
  %186 = getelementptr inbounds double, ptr %6, i64 %185, !dbg !196
  %187 = load double, ptr %186, align 8, !dbg !197, !tbaa !133
  %188 = fadd double %187, %183, !dbg !197
  store double %188, ptr %186, align 8, !dbg !197, !tbaa !133
  %189 = add i64 %159, %139, !dbg !198
  tail call void @llvm.dbg.value(metadata i64 %189, metadata !94, metadata !DIExpression()), !dbg !179
  %190 = add nuw nsw i32 %160, 1, !dbg !199
  tail call void @llvm.dbg.value(metadata i32 %190, metadata !65, metadata !DIExpression()), !dbg !106
  %191 = icmp eq i32 %190, %142, !dbg !182
  br i1 %191, label %192, label %158, !dbg !183, !llvm.loop !200

192:                                              ; preds = %158
  %193 = trunc i64 %189 to i32, !dbg !202
  br label %194, !dbg !202

194:                                              ; preds = %140, %192
  %195 = phi i32 [ %156, %192 ], [ 1, %140 ], !dbg !203
  %196 = phi i32 [ %193, %192 ], [ %132, %140 ], !dbg !179
  %197 = shl nsw i32 %196, 1, !dbg !202
  %198 = sext i32 %197 to i64, !dbg !202
  %199 = getelementptr inbounds double, ptr %4, i64 %198, !dbg !202
  %200 = load double, ptr %199, align 8, !dbg !202, !tbaa !133
  tail call void @llvm.dbg.value(metadata double %200, metadata !100, metadata !DIExpression()), !dbg !204
  %201 = or disjoint i32 %197, 1, !dbg !205
  %202 = sext i32 %201 to i64, !dbg !205
  %203 = getelementptr inbounds double, ptr %4, i64 %202, !dbg !205
  %204 = load double, ptr %203, align 8, !dbg !205, !tbaa !133
  %205 = fmul double %204, %137, !dbg !206
  tail call void @llvm.dbg.value(metadata double %205, metadata !102, metadata !DIExpression()), !dbg !204
  %206 = fmul double %148, %200, !dbg !207
  %207 = fmul double %153, %205, !dbg !208
  %208 = fsub double %206, %207, !dbg !209
  %209 = add nuw i32 %142, 3, !dbg !203
  %210 = mul i32 %209, %142, !dbg !203
  %211 = and i32 %210, -2, !dbg !203
  %212 = sext i32 %211 to i64, !dbg !203
  %213 = getelementptr inbounds double, ptr %6, i64 %212, !dbg !203
  %214 = load double, ptr %213, align 8, !dbg !210, !tbaa !133
  %215 = fadd double %214, %208, !dbg !210
  store double %215, ptr %213, align 8, !dbg !210, !tbaa !133
  %216 = or i32 %210, 1, !dbg !211
  %217 = sext i32 %216 to i64, !dbg !211
  %218 = getelementptr inbounds double, ptr %6, i64 %217, !dbg !211
  store double 0.000000e+00, ptr %218, align 8, !dbg !212, !tbaa !133
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 %196, i32 %5), metadata !94, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !179
  %219 = add i64 %141, %139, !dbg !213
  tail call void @llvm.dbg.value(metadata i32 %195, metadata !62, metadata !DIExpression()), !dbg !106
  tail call void @llvm.dbg.value(metadata i64 %219, metadata !86, metadata !DIExpression()), !dbg !174
  %220 = icmp eq i32 %195, %2, !dbg !175
  br i1 %220, label %222, label %140, !dbg !176, !llvm.loop !214

221:                                              ; preds = %124
  tail call void (i32, ptr, ptr, ...) @cblas_xerbla(i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #3, !dbg !216
  br label %222

222:                                              ; preds = %194, %47, %128, %32, %221, %23
  ret void, !dbg !218
}

declare !dbg !220 void @cblas_xerbla(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

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
!145 = !DILocation(line: 40, column: 54, scope: !79)
!146 = !DILocation(line: 40, column: 9, scope: !79)
!147 = !DILocation(line: 40, column: 33, scope: !79)
!148 = !DILocation(line: 41, column: 9, scope: !79)
!149 = !DILocation(line: 41, column: 33, scope: !79)
!150 = !DILocation(line: 42, column: 12, scope: !79)
!151 = !DILocation(line: 45, column: 18, scope: !84)
!152 = !DILocation(line: 45, column: 25, scope: !83)
!153 = !DILocation(line: 45, column: 7, scope: !84)
!154 = !DILocation(line: 46, column: 29, scope: !82)
!155 = !DILocation(line: 0, scope: !82)
!156 = !DILocation(line: 47, column: 37, scope: !82)
!157 = !DILocation(line: 47, column: 35, scope: !82)
!158 = !DILocation(line: 48, column: 43, scope: !82)
!159 = !DILocation(line: 48, column: 63, scope: !82)
!160 = !DILocation(line: 48, column: 54, scope: !82)
!161 = !DILocation(line: 48, column: 9, scope: !82)
!162 = !DILocation(line: 48, column: 33, scope: !82)
!163 = !DILocation(line: 49, column: 43, scope: !82)
!164 = !DILocation(line: 49, column: 63, scope: !82)
!165 = !DILocation(line: 49, column: 54, scope: !82)
!166 = !DILocation(line: 49, column: 9, scope: !82)
!167 = !DILocation(line: 49, column: 33, scope: !82)
!168 = !DILocation(line: 50, column: 12, scope: !82)
!169 = !DILocation(line: 45, column: 31, scope: !83)
!170 = distinct !{!170, !153, !171, !131}
!171 = !DILocation(line: 51, column: 7, scope: !84)
!172 = !DILocation(line: 54, column: 38, scope: !88)
!173 = !DILocation(line: 56, column: 16, scope: !87)
!174 = !DILocation(line: 0, scope: !87)
!175 = !DILocation(line: 57, column: 19, scope: !91)
!176 = !DILocation(line: 57, column: 5, scope: !92)
!177 = !DILocation(line: 58, column: 37, scope: !90)
!178 = !DILocation(line: 58, column: 35, scope: !90)
!179 = !DILocation(line: 0, scope: !90)
!180 = !DILocation(line: 59, column: 44, scope: !90)
!181 = !DILocation(line: 59, column: 42, scope: !90)
!182 = !DILocation(line: 61, column: 21, scope: !97)
!183 = !DILocation(line: 61, column: 7, scope: !98)
!184 = !DILocation(line: 62, column: 29, scope: !96)
!185 = !DILocation(line: 0, scope: !96)
!186 = !DILocation(line: 63, column: 37, scope: !96)
!187 = !DILocation(line: 63, column: 35, scope: !96)
!188 = !DILocation(line: 64, column: 43, scope: !96)
!189 = !DILocation(line: 64, column: 63, scope: !96)
!190 = !DILocation(line: 64, column: 54, scope: !96)
!191 = !DILocation(line: 64, column: 9, scope: !96)
!192 = !DILocation(line: 64, column: 33, scope: !96)
!193 = !DILocation(line: 65, column: 43, scope: !96)
!194 = !DILocation(line: 65, column: 63, scope: !96)
!195 = !DILocation(line: 65, column: 54, scope: !96)
!196 = !DILocation(line: 65, column: 9, scope: !96)
!197 = !DILocation(line: 65, column: 33, scope: !96)
!198 = !DILocation(line: 66, column: 12, scope: !96)
!199 = !DILocation(line: 61, column: 27, scope: !97)
!200 = distinct !{!200, !183, !201, !131}
!201 = !DILocation(line: 67, column: 7, scope: !98)
!202 = !DILocation(line: 70, column: 29, scope: !101)
!203 = !DILocation(line: 72, column: 9, scope: !101)
!204 = !DILocation(line: 0, scope: !101)
!205 = !DILocation(line: 71, column: 37, scope: !101)
!206 = !DILocation(line: 71, column: 35, scope: !101)
!207 = !DILocation(line: 72, column: 43, scope: !101)
!208 = !DILocation(line: 72, column: 63, scope: !101)
!209 = !DILocation(line: 72, column: 54, scope: !101)
!210 = !DILocation(line: 72, column: 33, scope: !101)
!211 = !DILocation(line: 73, column: 9, scope: !101)
!212 = !DILocation(line: 73, column: 33, scope: !101)
!213 = !DILocation(line: 77, column: 10, scope: !90)
!214 = distinct !{!214, !176, !215, !131}
!215 = !DILocation(line: 78, column: 5, scope: !92)
!216 = !DILocation(line: 80, column: 5, scope: !217)
!217 = distinct !DILexicalBlock(scope: !88, file: !2, line: 79, column: 10)
!218 = !DILocation(line: 14, column: 1, scope: !219)
!219 = !DILexicalBlockFile(scope: !44, file: !18, discriminator: 0)
!220 = !DISubprogram(name: "cblas_xerbla", scope: !21, file: !21, line: 602, type: !221, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!221 = !DISubroutineType(types: !222)
!222 = !{null, !50, !223, !223, null}
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!224 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
