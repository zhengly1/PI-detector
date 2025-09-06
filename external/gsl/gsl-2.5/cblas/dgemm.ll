; ModuleID = 'dgemm.c'
source_filename = "dgemm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"./source_gemm_r.h\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !7
@.str.2 = private unnamed_addr constant [23 x i8] c"unrecognized operation\00", align 1, !dbg !12

; Function Attrs: nounwind uwtable
define dso_local void @cblas_dgemm(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, double noundef %6, ptr nocapture noundef readonly %7, i32 noundef %8, ptr nocapture noundef readonly %9, i32 noundef %10, double noundef %11, ptr nocapture noundef %12, i32 noundef %13) local_unnamed_addr #0 !dbg !40 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !52, metadata !DIExpression()), !dbg !120
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !53, metadata !DIExpression()), !dbg !120
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !54, metadata !DIExpression()), !dbg !120
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !55, metadata !DIExpression()), !dbg !120
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !56, metadata !DIExpression()), !dbg !120
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !57, metadata !DIExpression()), !dbg !120
  tail call void @llvm.dbg.value(metadata double %6, metadata !58, metadata !DIExpression()), !dbg !120
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !59, metadata !DIExpression()), !dbg !120
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !60, metadata !DIExpression()), !dbg !120
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !61, metadata !DIExpression()), !dbg !120
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !62, metadata !DIExpression()), !dbg !120
  tail call void @llvm.dbg.value(metadata double %11, metadata !63, metadata !DIExpression()), !dbg !120
  tail call void @llvm.dbg.value(metadata ptr %12, metadata !64, metadata !DIExpression()), !dbg !120
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !65, metadata !DIExpression()), !dbg !120
  tail call void @llvm.dbg.value(metadata i32 0, metadata !79, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata i32 111, metadata !81, metadata !DIExpression()), !dbg !122
  tail call void @llvm.dbg.value(metadata i32 111, metadata !83, metadata !DIExpression()), !dbg !122
  %15 = icmp eq i32 %0, 101, !dbg !123
  tail call void @llvm.dbg.value(metadata i32 %19, metadata !81, metadata !DIExpression()), !dbg !122
  tail call void @llvm.dbg.value(metadata i32 %19, metadata !81, metadata !DIExpression()), !dbg !122
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !83, metadata !DIExpression()), !dbg !122
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !83, metadata !DIExpression()), !dbg !122
  %16 = select i1 %15, i32 %1, i32 %2
  %17 = select i1 %15, i32 %2, i32 %1
  %18 = icmp eq i32 %16, 113, !dbg !123
  %19 = select i1 %18, i32 112, i32 %16, !dbg !123
  %20 = icmp eq i32 %17, 113, !dbg !123
  %21 = select i1 %20, i32 112, i32 %17, !dbg !123
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !83, metadata !DIExpression()), !dbg !122
  tail call void @llvm.dbg.value(metadata i32 %19, metadata !81, metadata !DIExpression()), !dbg !122
  %22 = add i32 %0, -103, !dbg !125
  %23 = icmp ult i32 %22, -2, !dbg !125
  %24 = zext i1 %23 to i32, !dbg !125
  tail call void @llvm.dbg.value(metadata i32 %24, metadata !79, metadata !DIExpression()), !dbg !121
  %25 = add i32 %1, -114, !dbg !127
  %26 = icmp ult i32 %25, -3, !dbg !127
  %27 = select i1 %26, i32 2, i32 %24, !dbg !127
  tail call void @llvm.dbg.value(metadata i32 %27, metadata !79, metadata !DIExpression()), !dbg !121
  %28 = add i32 %2, -114, !dbg !129
  %29 = icmp ult i32 %28, -3, !dbg !129
  %30 = select i1 %29, i32 3, i32 %27, !dbg !129
  tail call void @llvm.dbg.value(metadata i32 %30, metadata !79, metadata !DIExpression()), !dbg !121
  %31 = icmp slt i32 %3, 0, !dbg !131
  %32 = select i1 %31, i32 4, i32 %30, !dbg !133
  tail call void @llvm.dbg.value(metadata i32 %32, metadata !79, metadata !DIExpression()), !dbg !121
  %33 = icmp slt i32 %4, 0, !dbg !134
  %34 = select i1 %33, i32 5, i32 %32, !dbg !133
  tail call void @llvm.dbg.value(metadata i32 %34, metadata !79, metadata !DIExpression()), !dbg !121
  %35 = icmp slt i32 %5, 0, !dbg !136
  %36 = select i1 %35, i32 6, i32 %34, !dbg !133
  tail call void @llvm.dbg.value(metadata i32 %36, metadata !79, metadata !DIExpression()), !dbg !121
  br i1 %15, label %37, label %57, !dbg !133

37:                                               ; preds = %14
  %38 = icmp eq i32 %19, 111, !dbg !138
  %39 = select i1 %38, i32 %5, i32 %3, !dbg !138
  %40 = tail call i32 @llvm.smax.i32(i32 %39, i32 1), !dbg !138
  %41 = icmp sgt i32 %40, %8, !dbg !138
  %42 = select i1 %41, i32 9, i32 %36, !dbg !138
  tail call void @llvm.dbg.value(metadata i32 %42, metadata !79, metadata !DIExpression()), !dbg !121
  %43 = icmp eq i32 %21, 111, !dbg !142
  br i1 %43, label %44, label %48, !dbg !144

44:                                               ; preds = %37
  %45 = tail call i32 @llvm.smax.i32(i32 %4, i32 1), !dbg !145
  %46 = icmp sgt i32 %45, %10, !dbg !145
  %47 = select i1 %46, i32 11, i32 %42, !dbg !148
  br label %53, !dbg !148

48:                                               ; preds = %37
  %49 = tail call i32 @llvm.smax.i32(i32 %5, i32 1), !dbg !149
  %50 = icmp sgt i32 %49, %10, !dbg !149
  %51 = select i1 %50, i32 11, i32 %42, !dbg !152
  %52 = tail call i32 @llvm.smax.i32(i32 %4, i32 1), !dbg !153
  br label %53, !dbg !152

53:                                               ; preds = %48, %44
  %54 = phi i32 [ %52, %48 ], [ %45, %44 ], !dbg !153
  %55 = phi i32 [ %51, %48 ], [ %47, %44 ], !dbg !144
  tail call void @llvm.dbg.value(metadata i32 %55, metadata !79, metadata !DIExpression()), !dbg !121
  %56 = icmp sgt i32 %54, %13, !dbg !153
  br i1 %56, label %82, label %79, !dbg !144

57:                                               ; preds = %14
  %58 = icmp eq i32 %0, 102, !dbg !155
  br i1 %58, label %59, label %79, !dbg !157

59:                                               ; preds = %57
  %60 = icmp eq i32 %19, 111, !dbg !158
  %61 = select i1 %60, i32 %5, i32 %4, !dbg !158
  %62 = tail call i32 @llvm.smax.i32(i32 %61, i32 1), !dbg !158
  %63 = icmp sgt i32 %62, %10, !dbg !158
  %64 = select i1 %63, i32 11, i32 %36, !dbg !158
  tail call void @llvm.dbg.value(metadata i32 %64, metadata !79, metadata !DIExpression()), !dbg !121
  %65 = icmp eq i32 %21, 111, !dbg !161
  br i1 %65, label %66, label %70, !dbg !163

66:                                               ; preds = %59
  %67 = tail call i32 @llvm.smax.i32(i32 %3, i32 1), !dbg !164
  %68 = icmp sgt i32 %67, %8, !dbg !164
  %69 = select i1 %68, i32 9, i32 %64, !dbg !167
  br label %75, !dbg !167

70:                                               ; preds = %59
  %71 = tail call i32 @llvm.smax.i32(i32 %5, i32 1), !dbg !168
  %72 = icmp sgt i32 %71, %8, !dbg !168
  %73 = select i1 %72, i32 9, i32 %64, !dbg !171
  %74 = tail call i32 @llvm.smax.i32(i32 %3, i32 1), !dbg !172
  br label %75, !dbg !171

75:                                               ; preds = %70, %66
  %76 = phi i32 [ %74, %70 ], [ %67, %66 ], !dbg !172
  %77 = phi i32 [ %73, %70 ], [ %69, %66 ], !dbg !163
  tail call void @llvm.dbg.value(metadata i32 %77, metadata !79, metadata !DIExpression()), !dbg !121
  %78 = icmp sgt i32 %76, %13, !dbg !172
  br i1 %78, label %82, label %79, !dbg !163

79:                                               ; preds = %75, %53, %57
  %80 = phi i32 [ %36, %57 ], [ %55, %53 ], [ %77, %75 ], !dbg !133
  tail call void @llvm.dbg.value(metadata i32 %80, metadata !79, metadata !DIExpression()), !dbg !121
  %81 = icmp eq i32 %80, 0, !dbg !174
  br i1 %81, label %84, label %82, !dbg !176

82:                                               ; preds = %75, %53, %79
  %83 = phi i32 [ %80, %79 ], [ 14, %53 ], [ 14, %75 ]
  tail call void (i32, ptr, ptr, ...) @cblas_xerbla(i32 noundef %83, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #4, !dbg !174
  br label %84, !dbg !174

84:                                               ; preds = %82, %79
  %85 = fcmp oeq double %6, 0.000000e+00, !dbg !177
  %86 = fcmp oeq double %11, 1.000000e+00
  %87 = and i1 %85, %86, !dbg !179
  br i1 %87, label %549, label %88, !dbg !179

88:                                               ; preds = %84
  %89 = select i1 %15, i32 %1, i32 %2
  %90 = select i1 %15, i32 %2, i32 %1
  %91 = select i1 %15, i32 %3, i32 %4
  %92 = select i1 %15, i32 %4, i32 %3
  %93 = select i1 %15, i32 %8, i32 %10
  %94 = select i1 %15, i32 %10, i32 %8
  %95 = select i1 %15, ptr %7, ptr %9
  %96 = select i1 %15, ptr %9, ptr %7
  %97 = icmp eq i32 %89, 113, !dbg !180
  %98 = select i1 %97, i32 112, i32 %89, !dbg !180
  %99 = icmp eq i32 %90, 113, !dbg !180
  %100 = select i1 %99, i32 112, i32 %90, !dbg !180
  tail call void @llvm.dbg.value(metadata ptr %96, metadata !78, metadata !DIExpression()), !dbg !182
  tail call void @llvm.dbg.value(metadata ptr %95, metadata !77, metadata !DIExpression()), !dbg !182
  tail call void @llvm.dbg.value(metadata i32 %100, metadata !76, metadata !DIExpression()), !dbg !182
  tail call void @llvm.dbg.value(metadata i32 %98, metadata !75, metadata !DIExpression()), !dbg !182
  tail call void @llvm.dbg.value(metadata i32 %94, metadata !74, metadata !DIExpression()), !dbg !182
  tail call void @llvm.dbg.value(metadata i32 %93, metadata !73, metadata !DIExpression()), !dbg !182
  tail call void @llvm.dbg.value(metadata i32 %92, metadata !72, metadata !DIExpression()), !dbg !182
  tail call void @llvm.dbg.value(metadata i32 %91, metadata !71, metadata !DIExpression()), !dbg !182
  %101 = fcmp oeq double %11, 0.000000e+00, !dbg !183
  br i1 %101, label %102, label %132, !dbg !185

102:                                              ; preds = %88
  tail call void @llvm.dbg.value(metadata i32 0, metadata !66, metadata !DIExpression()), !dbg !182
  %103 = icmp sgt i32 %91, 0, !dbg !186
  br i1 %103, label %104, label %197, !dbg !190

104:                                              ; preds = %102
  %105 = icmp sgt i32 %92, 0
  %106 = zext i32 %92 to i64, !dbg !190
  %107 = shl nuw nsw i64 %106, 3, !dbg !190
  %108 = zext nneg i32 %91 to i64, !dbg !186
  %109 = and i64 %108, 1, !dbg !190
  %110 = icmp eq i32 %91, 1, !dbg !190
  br i1 %110, label %187, label %111, !dbg !190

111:                                              ; preds = %104
  %112 = and i64 %108, 2147483646, !dbg !190
  br label %113, !dbg !190

113:                                              ; preds = %128, %111
  %114 = phi i64 [ 0, %111 ], [ %129, %128 ]
  %115 = phi i64 [ 0, %111 ], [ %130, %128 ]
  tail call void @llvm.dbg.value(metadata i64 %114, metadata !66, metadata !DIExpression()), !dbg !182
  tail call void @llvm.dbg.value(metadata i32 0, metadata !69, metadata !DIExpression()), !dbg !182
  br i1 %105, label %116, label %128, !dbg !191

116:                                              ; preds = %113
  %117 = trunc i64 %114 to i32, !dbg !191
  %118 = mul i32 %117, %13, !dbg !191
  %119 = sext i32 %118 to i64, !dbg !191
  %120 = shl nsw i64 %119, 3, !dbg !191
  %121 = getelementptr i8, ptr %12, i64 %120, !dbg !191
  tail call void @llvm.memset.p0.i64(ptr align 8 %121, i8 0, i64 %107, i1 false), !dbg !194, !tbaa !197
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !69, metadata !DIExpression()), !dbg !182
  tail call void @llvm.dbg.value(metadata i64 %114, metadata !66, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !182
  tail call void @llvm.dbg.value(metadata i64 %114, metadata !66, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !182
  tail call void @llvm.dbg.value(metadata i32 0, metadata !69, metadata !DIExpression()), !dbg !182
  tail call void @llvm.dbg.value(metadata i64 %114, metadata !66, metadata !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value)), !dbg !182
  %122 = trunc i64 %114 to i32, !dbg !191
  %123 = or disjoint i32 %122, 1, !dbg !191
  %124 = mul i32 %123, %13, !dbg !191
  %125 = sext i32 %124 to i64, !dbg !191
  %126 = shl nsw i64 %125, 3, !dbg !191
  %127 = getelementptr i8, ptr %12, i64 %126, !dbg !191
  tail call void @llvm.memset.p0.i64(ptr align 8 %127, i8 0, i64 %107, i1 false), !dbg !194, !tbaa !197
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !69, metadata !DIExpression()), !dbg !182
  br label %128, !dbg !201

128:                                              ; preds = %113, %116
  %129 = add nuw nsw i64 %114, 2, !dbg !201
  tail call void @llvm.dbg.value(metadata i64 %129, metadata !66, metadata !DIExpression()), !dbg !182
  %130 = add i64 %115, 2, !dbg !190
  %131 = icmp eq i64 %130, %112, !dbg !190
  br i1 %131, label %185, label %113, !dbg !190, !llvm.loop !202

132:                                              ; preds = %88
  %133 = fcmp une double %11, 1.000000e+00, !dbg !205
  tail call void @llvm.dbg.value(metadata i32 0, metadata !66, metadata !DIExpression()), !dbg !182
  %134 = icmp sgt i32 %91, 0
  %135 = and i1 %133, %134, !dbg !207
  br i1 %135, label %136, label %197, !dbg !207

136:                                              ; preds = %132
  %137 = icmp sgt i32 %92, 0
  %138 = sext i32 %13 to i64, !dbg !208
  %139 = zext nneg i32 %91 to i64, !dbg !211
  %140 = zext i32 %92 to i64
  %141 = and i64 %140, 3
  %142 = icmp ult i32 %92, 4
  %143 = and i64 %140, 2147483644
  %144 = icmp eq i64 %141, 0
  br label %145, !dbg !208

145:                                              ; preds = %136, %182
  %146 = phi i64 [ 0, %136 ], [ %183, %182 ]
  tail call void @llvm.dbg.value(metadata i64 %146, metadata !66, metadata !DIExpression()), !dbg !182
  tail call void @llvm.dbg.value(metadata i32 0, metadata !69, metadata !DIExpression()), !dbg !182
  br i1 %137, label %147, label %182, !dbg !213

147:                                              ; preds = %145
  %148 = mul nsw i64 %146, %138
  %149 = getelementptr double, ptr %12, i64 %148, !dbg !213
  br i1 %142, label %171, label %150, !dbg !213

150:                                              ; preds = %147, %150
  %151 = phi i64 [ %168, %150 ], [ 0, %147 ]
  %152 = phi i64 [ %169, %150 ], [ 0, %147 ]
  tail call void @llvm.dbg.value(metadata i64 %151, metadata !69, metadata !DIExpression()), !dbg !182
  %153 = getelementptr double, ptr %149, i64 %151, !dbg !216
  %154 = load double, ptr %153, align 8, !dbg !219, !tbaa !197
  %155 = fmul double %154, %11, !dbg !219
  store double %155, ptr %153, align 8, !dbg !219, !tbaa !197
  %156 = or disjoint i64 %151, 1, !dbg !220
  tail call void @llvm.dbg.value(metadata i64 %156, metadata !69, metadata !DIExpression()), !dbg !182
  tail call void @llvm.dbg.value(metadata i64 %156, metadata !69, metadata !DIExpression()), !dbg !182
  %157 = getelementptr double, ptr %149, i64 %156, !dbg !216
  %158 = load double, ptr %157, align 8, !dbg !219, !tbaa !197
  %159 = fmul double %158, %11, !dbg !219
  store double %159, ptr %157, align 8, !dbg !219, !tbaa !197
  %160 = or disjoint i64 %151, 2, !dbg !220
  tail call void @llvm.dbg.value(metadata i64 %160, metadata !69, metadata !DIExpression()), !dbg !182
  tail call void @llvm.dbg.value(metadata i64 %160, metadata !69, metadata !DIExpression()), !dbg !182
  %161 = getelementptr double, ptr %149, i64 %160, !dbg !216
  %162 = load double, ptr %161, align 8, !dbg !219, !tbaa !197
  %163 = fmul double %162, %11, !dbg !219
  store double %163, ptr %161, align 8, !dbg !219, !tbaa !197
  %164 = or disjoint i64 %151, 3, !dbg !220
  tail call void @llvm.dbg.value(metadata i64 %164, metadata !69, metadata !DIExpression()), !dbg !182
  tail call void @llvm.dbg.value(metadata i64 %164, metadata !69, metadata !DIExpression()), !dbg !182
  %165 = getelementptr double, ptr %149, i64 %164, !dbg !216
  %166 = load double, ptr %165, align 8, !dbg !219, !tbaa !197
  %167 = fmul double %166, %11, !dbg !219
  store double %167, ptr %165, align 8, !dbg !219, !tbaa !197
  %168 = add nuw nsw i64 %151, 4, !dbg !220
  tail call void @llvm.dbg.value(metadata i64 %168, metadata !69, metadata !DIExpression()), !dbg !182
  %169 = add i64 %152, 4, !dbg !213
  %170 = icmp eq i64 %169, %143, !dbg !213
  br i1 %170, label %171, label %150, !dbg !213, !llvm.loop !221

171:                                              ; preds = %150, %147
  %172 = phi i64 [ 0, %147 ], [ %168, %150 ]
  br i1 %144, label %182, label %173, !dbg !213

173:                                              ; preds = %171, %173
  %174 = phi i64 [ %179, %173 ], [ %172, %171 ]
  %175 = phi i64 [ %180, %173 ], [ 0, %171 ]
  tail call void @llvm.dbg.value(metadata i64 %174, metadata !69, metadata !DIExpression()), !dbg !182
  %176 = getelementptr double, ptr %149, i64 %174, !dbg !216
  %177 = load double, ptr %176, align 8, !dbg !219, !tbaa !197
  %178 = fmul double %177, %11, !dbg !219
  store double %178, ptr %176, align 8, !dbg !219, !tbaa !197
  %179 = add nuw nsw i64 %174, 1, !dbg !220
  tail call void @llvm.dbg.value(metadata i64 %179, metadata !69, metadata !DIExpression()), !dbg !182
  %180 = add i64 %175, 1, !dbg !213
  %181 = icmp eq i64 %180, %141, !dbg !213
  br i1 %181, label %182, label %173, !dbg !213, !llvm.loop !223

182:                                              ; preds = %171, %173, %145
  %183 = add nuw nsw i64 %146, 1, !dbg !225
  tail call void @llvm.dbg.value(metadata i64 %183, metadata !66, metadata !DIExpression()), !dbg !182
  %184 = icmp eq i64 %183, %139, !dbg !211
  br i1 %184, label %197, label %145, !dbg !208, !llvm.loop !226

185:                                              ; preds = %128
  %186 = trunc i64 %129 to i32, !dbg !191
  br label %187, !dbg !191

187:                                              ; preds = %185, %104
  %188 = phi i32 [ 0, %104 ], [ %186, %185 ]
  %189 = icmp eq i64 %109, 0, !dbg !191
  %190 = xor i1 %105, true, !dbg !191
  %191 = or i1 %189, %190, !dbg !191
  br i1 %191, label %197, label %192, !dbg !191

192:                                              ; preds = %187
  %193 = mul i32 %188, %13, !dbg !191
  %194 = sext i32 %193 to i64, !dbg !191
  %195 = shl nsw i64 %194, 3, !dbg !191
  %196 = getelementptr i8, ptr %12, i64 %195, !dbg !191
  tail call void @llvm.memset.p0.i64(ptr align 8 %196, i8 0, i64 %107, i1 false), !dbg !194, !tbaa !197
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !69, metadata !DIExpression()), !dbg !182
  br label %197, !dbg !201

197:                                              ; preds = %187, %182, %192, %102, %132
  br i1 %85, label %549, label %198, !dbg !228

198:                                              ; preds = %197
  %199 = icmp eq i32 %98, 111, !dbg !229
  %200 = icmp eq i32 %100, 111
  %201 = and i1 %199, %200, !dbg !230
  br i1 %201, label %202, label %270, !dbg !230

202:                                              ; preds = %198
  tail call void @llvm.dbg.value(metadata i32 0, metadata !70, metadata !DIExpression()), !dbg !182
  %203 = icmp sgt i32 %5, 0, !dbg !231
  br i1 %203, label %204, label %549, !dbg !232

204:                                              ; preds = %202
  %205 = icmp sgt i32 %91, 0
  %206 = icmp slt i32 %92, 1
  %207 = sext i32 %93 to i64, !dbg !232
  %208 = sext i32 %13 to i64, !dbg !232
  %209 = sext i32 %94 to i64, !dbg !232
  %210 = zext nneg i32 %5 to i64, !dbg !231
  %211 = zext nneg i32 %91 to i64
  %212 = zext i32 %92 to i64
  %213 = and i64 %212, 1
  %214 = icmp eq i32 %92, 1
  %215 = and i64 %212, 4294967294
  %216 = icmp eq i64 %213, 0
  br label %217, !dbg !232

217:                                              ; preds = %204, %267
  %218 = phi i64 [ 0, %204 ], [ %268, %267 ]
  tail call void @llvm.dbg.value(metadata i64 %218, metadata !70, metadata !DIExpression()), !dbg !182
  tail call void @llvm.dbg.value(metadata i32 0, metadata !66, metadata !DIExpression()), !dbg !182
  br i1 %205, label %219, label %267, !dbg !233

219:                                              ; preds = %217
  %220 = mul nsw i64 %218, %209
  %221 = getelementptr double, ptr %95, i64 %218, !dbg !233
  %222 = getelementptr double, ptr %96, i64 %220
  %223 = getelementptr double, ptr %96, i64 %220
  %224 = getelementptr double, ptr %96, i64 %220, !dbg !233
  br label %225, !dbg !233

225:                                              ; preds = %219, %264
  %226 = phi i64 [ 0, %219 ], [ %265, %264 ]
  tail call void @llvm.dbg.value(metadata i64 %226, metadata !66, metadata !DIExpression()), !dbg !182
  %227 = mul nsw i64 %226, %207, !dbg !234
  %228 = getelementptr double, ptr %221, i64 %227, !dbg !235
  %229 = load double, ptr %228, align 8, !dbg !235, !tbaa !197
  %230 = fmul double %229, %6, !dbg !236
  tail call void @llvm.dbg.value(metadata double %230, metadata !84, metadata !DIExpression()), !dbg !237
  %231 = fcmp oeq double %230, 0.000000e+00, !dbg !238
  %232 = or i1 %231, %206, !dbg !240
  br i1 %232, label %264, label %233, !dbg !240

233:                                              ; preds = %225
  %234 = mul nsw i64 %226, %208
  %235 = getelementptr double, ptr %12, i64 %234, !dbg !241
  br i1 %214, label %255, label %236, !dbg !241

236:                                              ; preds = %233, %236
  %237 = phi i64 [ %252, %236 ], [ 0, %233 ]
  %238 = phi i64 [ %253, %236 ], [ 0, %233 ]
  tail call void @llvm.dbg.value(metadata i64 %237, metadata !69, metadata !DIExpression()), !dbg !182
  %239 = getelementptr double, ptr %222, i64 %237, !dbg !244
  %240 = load double, ptr %239, align 8, !dbg !244, !tbaa !197
  %241 = fmul double %230, %240, !dbg !247
  %242 = getelementptr double, ptr %235, i64 %237, !dbg !248
  %243 = load double, ptr %242, align 8, !dbg !249, !tbaa !197
  %244 = fadd double %243, %241, !dbg !249
  store double %244, ptr %242, align 8, !dbg !249, !tbaa !197
  %245 = or disjoint i64 %237, 1, !dbg !250
  tail call void @llvm.dbg.value(metadata i64 %245, metadata !69, metadata !DIExpression()), !dbg !182
  tail call void @llvm.dbg.value(metadata i64 %245, metadata !69, metadata !DIExpression()), !dbg !182
  %246 = getelementptr double, ptr %223, i64 %245, !dbg !244
  %247 = load double, ptr %246, align 8, !dbg !244, !tbaa !197
  %248 = fmul double %230, %247, !dbg !247
  %249 = getelementptr double, ptr %235, i64 %245, !dbg !248
  %250 = load double, ptr %249, align 8, !dbg !249, !tbaa !197
  %251 = fadd double %250, %248, !dbg !249
  store double %251, ptr %249, align 8, !dbg !249, !tbaa !197
  %252 = add nuw nsw i64 %237, 2, !dbg !250
  tail call void @llvm.dbg.value(metadata i64 %252, metadata !69, metadata !DIExpression()), !dbg !182
  %253 = add i64 %238, 2, !dbg !241
  %254 = icmp eq i64 %253, %215, !dbg !241
  br i1 %254, label %255, label %236, !dbg !241, !llvm.loop !251

255:                                              ; preds = %236, %233
  %256 = phi i64 [ 0, %233 ], [ %252, %236 ]
  br i1 %216, label %264, label %257, !dbg !241

257:                                              ; preds = %255
  tail call void @llvm.dbg.value(metadata i64 %256, metadata !69, metadata !DIExpression()), !dbg !182
  %258 = getelementptr double, ptr %224, i64 %256, !dbg !244
  %259 = load double, ptr %258, align 8, !dbg !244, !tbaa !197
  %260 = fmul double %230, %259, !dbg !247
  %261 = getelementptr double, ptr %235, i64 %256, !dbg !248
  %262 = load double, ptr %261, align 8, !dbg !249, !tbaa !197
  %263 = fadd double %262, %260, !dbg !249
  store double %263, ptr %261, align 8, !dbg !249, !tbaa !197
  tail call void @llvm.dbg.value(metadata i64 %256, metadata !69, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !182
  br label %264, !dbg !253

264:                                              ; preds = %257, %255, %225
  %265 = add nuw nsw i64 %226, 1, !dbg !253
  tail call void @llvm.dbg.value(metadata i64 %265, metadata !66, metadata !DIExpression()), !dbg !182
  %266 = icmp eq i64 %265, %211, !dbg !254
  br i1 %266, label %267, label %225, !dbg !233, !llvm.loop !255

267:                                              ; preds = %264, %217
  %268 = add nuw nsw i64 %218, 1, !dbg !257
  tail call void @llvm.dbg.value(metadata i64 %268, metadata !70, metadata !DIExpression()), !dbg !182
  %269 = icmp eq i64 %268, %210, !dbg !231
  br i1 %269, label %549, label %217, !dbg !232, !llvm.loop !258

270:                                              ; preds = %198
  %271 = icmp eq i32 %100, 112
  %272 = and i1 %199, %271, !dbg !260
  br i1 %272, label %273, label %372, !dbg !260

273:                                              ; preds = %270
  tail call void @llvm.dbg.value(metadata i32 0, metadata !66, metadata !DIExpression()), !dbg !182
  %274 = icmp sgt i32 %91, 0, !dbg !261
  br i1 %274, label %275, label %549, !dbg !262

275:                                              ; preds = %273
  %276 = icmp sgt i32 %92, 0
  %277 = icmp sgt i32 %5, 0
  %278 = sext i32 %94 to i64, !dbg !262
  %279 = sext i32 %93 to i64, !dbg !262
  %280 = sext i32 %13 to i64, !dbg !262
  %281 = zext nneg i32 %91 to i64, !dbg !261
  %282 = zext nneg i32 %92 to i64
  %283 = zext i32 %5 to i64
  %284 = and i64 %283, 3
  %285 = icmp ult i32 %5, 4
  %286 = and i64 %283, 2147483644
  %287 = icmp eq i64 %284, 0
  br label %288, !dbg !262

288:                                              ; preds = %275, %369
  %289 = phi i64 [ 0, %275 ], [ %370, %369 ]
  tail call void @llvm.dbg.value(metadata i64 %289, metadata !66, metadata !DIExpression()), !dbg !182
  tail call void @llvm.dbg.value(metadata i32 0, metadata !69, metadata !DIExpression()), !dbg !182
  br i1 %276, label %290, label %369, !dbg !263

290:                                              ; preds = %288
  %291 = mul nsw i64 %289, %279
  %292 = mul nsw i64 %289, %280
  %293 = getelementptr double, ptr %12, i64 %292, !dbg !263
  %294 = getelementptr double, ptr %95, i64 %291
  %295 = getelementptr double, ptr %95, i64 %291
  %296 = getelementptr double, ptr %95, i64 %291
  %297 = getelementptr double, ptr %95, i64 %291
  %298 = getelementptr double, ptr %95, i64 %291
  br label %299, !dbg !263

299:                                              ; preds = %290, %361
  %300 = phi i64 [ 0, %290 ], [ %367, %361 ]
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !69, metadata !DIExpression()), !dbg !182
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !93, metadata !DIExpression()), !dbg !264
  tail call void @llvm.dbg.value(metadata i32 0, metadata !70, metadata !DIExpression()), !dbg !182
  br i1 %277, label %301, label %361, !dbg !265

301:                                              ; preds = %299
  %302 = mul nsw i64 %300, %278
  br i1 %285, label %342, label %303, !dbg !265

303:                                              ; preds = %301
  %304 = getelementptr double, ptr %96, i64 %302, !dbg !265
  %305 = getelementptr double, ptr %96, i64 %302, !dbg !265
  %306 = getelementptr double, ptr %96, i64 %302, !dbg !265
  %307 = getelementptr double, ptr %96, i64 %302, !dbg !265
  br label %308, !dbg !265

308:                                              ; preds = %308, %303
  %309 = phi i64 [ 0, %303 ], [ %339, %308 ]
  %310 = phi double [ 0.000000e+00, %303 ], [ %338, %308 ]
  %311 = phi i64 [ 0, %303 ], [ %340, %308 ]
  tail call void @llvm.dbg.value(metadata double %310, metadata !93, metadata !DIExpression()), !dbg !264
  tail call void @llvm.dbg.value(metadata i64 %309, metadata !70, metadata !DIExpression()), !dbg !182
  %312 = getelementptr double, ptr %294, i64 %309, !dbg !267
  %313 = load double, ptr %312, align 8, !dbg !267, !tbaa !197
  %314 = getelementptr double, ptr %304, i64 %309, !dbg !270
  %315 = load double, ptr %314, align 8, !dbg !270, !tbaa !197
  %316 = fmul double %313, %315, !dbg !271
  %317 = fadd double %310, %316, !dbg !272
  tail call void @llvm.dbg.value(metadata double %317, metadata !93, metadata !DIExpression()), !dbg !264
  %318 = or disjoint i64 %309, 1, !dbg !273
  tail call void @llvm.dbg.value(metadata i64 %318, metadata !70, metadata !DIExpression()), !dbg !182
  tail call void @llvm.dbg.value(metadata double %317, metadata !93, metadata !DIExpression()), !dbg !264
  tail call void @llvm.dbg.value(metadata i64 %318, metadata !70, metadata !DIExpression()), !dbg !182
  %319 = getelementptr double, ptr %295, i64 %318, !dbg !267
  %320 = load double, ptr %319, align 8, !dbg !267, !tbaa !197
  %321 = getelementptr double, ptr %305, i64 %318, !dbg !270
  %322 = load double, ptr %321, align 8, !dbg !270, !tbaa !197
  %323 = fmul double %320, %322, !dbg !271
  %324 = fadd double %317, %323, !dbg !272
  tail call void @llvm.dbg.value(metadata double %324, metadata !93, metadata !DIExpression()), !dbg !264
  %325 = or disjoint i64 %309, 2, !dbg !273
  tail call void @llvm.dbg.value(metadata i64 %325, metadata !70, metadata !DIExpression()), !dbg !182
  tail call void @llvm.dbg.value(metadata double %324, metadata !93, metadata !DIExpression()), !dbg !264
  tail call void @llvm.dbg.value(metadata i64 %325, metadata !70, metadata !DIExpression()), !dbg !182
  %326 = getelementptr double, ptr %296, i64 %325, !dbg !267
  %327 = load double, ptr %326, align 8, !dbg !267, !tbaa !197
  %328 = getelementptr double, ptr %306, i64 %325, !dbg !270
  %329 = load double, ptr %328, align 8, !dbg !270, !tbaa !197
  %330 = fmul double %327, %329, !dbg !271
  %331 = fadd double %324, %330, !dbg !272
  tail call void @llvm.dbg.value(metadata double %331, metadata !93, metadata !DIExpression()), !dbg !264
  %332 = or disjoint i64 %309, 3, !dbg !273
  tail call void @llvm.dbg.value(metadata i64 %332, metadata !70, metadata !DIExpression()), !dbg !182
  tail call void @llvm.dbg.value(metadata double %331, metadata !93, metadata !DIExpression()), !dbg !264
  tail call void @llvm.dbg.value(metadata i64 %332, metadata !70, metadata !DIExpression()), !dbg !182
  %333 = getelementptr double, ptr %297, i64 %332, !dbg !267
  %334 = load double, ptr %333, align 8, !dbg !267, !tbaa !197
  %335 = getelementptr double, ptr %307, i64 %332, !dbg !270
  %336 = load double, ptr %335, align 8, !dbg !270, !tbaa !197
  %337 = fmul double %334, %336, !dbg !271
  %338 = fadd double %331, %337, !dbg !272
  tail call void @llvm.dbg.value(metadata double %338, metadata !93, metadata !DIExpression()), !dbg !264
  %339 = add nuw nsw i64 %309, 4, !dbg !273
  tail call void @llvm.dbg.value(metadata i64 %339, metadata !70, metadata !DIExpression()), !dbg !182
  %340 = add i64 %311, 4, !dbg !265
  %341 = icmp eq i64 %340, %286, !dbg !265
  br i1 %341, label %342, label %308, !dbg !265, !llvm.loop !274

342:                                              ; preds = %308, %301
  %343 = phi double [ undef, %301 ], [ %338, %308 ]
  %344 = phi i64 [ 0, %301 ], [ %339, %308 ]
  %345 = phi double [ 0.000000e+00, %301 ], [ %338, %308 ]
  br i1 %287, label %361, label %346, !dbg !265

346:                                              ; preds = %342
  %347 = getelementptr double, ptr %96, i64 %302, !dbg !265
  br label %348, !dbg !265

348:                                              ; preds = %348, %346
  %349 = phi i64 [ %344, %346 ], [ %358, %348 ]
  %350 = phi double [ %345, %346 ], [ %357, %348 ]
  %351 = phi i64 [ 0, %346 ], [ %359, %348 ]
  tail call void @llvm.dbg.value(metadata double %350, metadata !93, metadata !DIExpression()), !dbg !264
  tail call void @llvm.dbg.value(metadata i64 %349, metadata !70, metadata !DIExpression()), !dbg !182
  %352 = getelementptr double, ptr %298, i64 %349, !dbg !267
  %353 = load double, ptr %352, align 8, !dbg !267, !tbaa !197
  %354 = getelementptr double, ptr %347, i64 %349, !dbg !270
  %355 = load double, ptr %354, align 8, !dbg !270, !tbaa !197
  %356 = fmul double %353, %355, !dbg !271
  %357 = fadd double %350, %356, !dbg !272
  tail call void @llvm.dbg.value(metadata double %357, metadata !93, metadata !DIExpression()), !dbg !264
  %358 = add nuw nsw i64 %349, 1, !dbg !273
  tail call void @llvm.dbg.value(metadata i64 %358, metadata !70, metadata !DIExpression()), !dbg !182
  %359 = add i64 %351, 1, !dbg !265
  %360 = icmp eq i64 %359, %284, !dbg !265
  br i1 %360, label %361, label %348, !dbg !265, !llvm.loop !276

361:                                              ; preds = %342, %348, %299
  %362 = phi double [ 0.000000e+00, %299 ], [ %343, %342 ], [ %357, %348 ], !dbg !264
  %363 = fmul double %362, %6, !dbg !277
  %364 = getelementptr double, ptr %293, i64 %300, !dbg !278
  %365 = load double, ptr %364, align 8, !dbg !279, !tbaa !197
  %366 = fadd double %363, %365, !dbg !279
  store double %366, ptr %364, align 8, !dbg !279, !tbaa !197
  %367 = add nuw nsw i64 %300, 1, !dbg !280
  tail call void @llvm.dbg.value(metadata i64 %367, metadata !69, metadata !DIExpression()), !dbg !182
  %368 = icmp eq i64 %367, %282, !dbg !281
  br i1 %368, label %369, label %299, !dbg !263, !llvm.loop !282

369:                                              ; preds = %361, %288
  %370 = add nuw nsw i64 %289, 1, !dbg !284
  tail call void @llvm.dbg.value(metadata i64 %370, metadata !66, metadata !DIExpression()), !dbg !182
  %371 = icmp eq i64 %370, %281, !dbg !261
  br i1 %371, label %549, label %288, !dbg !262, !llvm.loop !285

372:                                              ; preds = %270
  %373 = icmp eq i32 %98, 112, !dbg !287
  %374 = and i1 %373, %200, !dbg !288
  br i1 %374, label %375, label %443, !dbg !288

375:                                              ; preds = %372
  tail call void @llvm.dbg.value(metadata i32 0, metadata !70, metadata !DIExpression()), !dbg !182
  %376 = icmp sgt i32 %5, 0, !dbg !289
  br i1 %376, label %377, label %549, !dbg !290

377:                                              ; preds = %375
  %378 = icmp sgt i32 %91, 0
  %379 = icmp slt i32 %92, 1
  %380 = sext i32 %13 to i64, !dbg !290
  %381 = sext i32 %93 to i64, !dbg !290
  %382 = sext i32 %94 to i64, !dbg !290
  %383 = zext nneg i32 %5 to i64, !dbg !289
  %384 = zext nneg i32 %91 to i64
  %385 = zext i32 %92 to i64
  %386 = and i64 %385, 1
  %387 = icmp eq i32 %92, 1
  %388 = and i64 %385, 4294967294
  %389 = icmp eq i64 %386, 0
  br label %390, !dbg !290

390:                                              ; preds = %377, %440
  %391 = phi i64 [ 0, %377 ], [ %441, %440 ]
  tail call void @llvm.dbg.value(metadata i64 %391, metadata !70, metadata !DIExpression()), !dbg !182
  tail call void @llvm.dbg.value(metadata i32 0, metadata !66, metadata !DIExpression()), !dbg !182
  br i1 %378, label %392, label %440, !dbg !291

392:                                              ; preds = %390
  %393 = mul nsw i64 %391, %381
  %394 = mul nsw i64 %391, %382
  %395 = getelementptr double, ptr %95, i64 %393, !dbg !291
  %396 = getelementptr double, ptr %96, i64 %394
  %397 = getelementptr double, ptr %96, i64 %394
  %398 = getelementptr double, ptr %96, i64 %394, !dbg !291
  br label %399, !dbg !291

399:                                              ; preds = %392, %437
  %400 = phi i64 [ 0, %392 ], [ %438, %437 ]
  tail call void @llvm.dbg.value(metadata i64 %400, metadata !66, metadata !DIExpression()), !dbg !182
  %401 = getelementptr double, ptr %395, i64 %400, !dbg !292
  %402 = load double, ptr %401, align 8, !dbg !292, !tbaa !197
  %403 = fmul double %402, %6, !dbg !293
  tail call void @llvm.dbg.value(metadata double %403, metadata !102, metadata !DIExpression()), !dbg !294
  %404 = fcmp oeq double %403, 0.000000e+00, !dbg !295
  %405 = or i1 %404, %379, !dbg !297
  br i1 %405, label %437, label %406, !dbg !297

406:                                              ; preds = %399
  %407 = mul nsw i64 %400, %380
  %408 = getelementptr double, ptr %12, i64 %407, !dbg !298
  br i1 %387, label %428, label %409, !dbg !298

409:                                              ; preds = %406, %409
  %410 = phi i64 [ %425, %409 ], [ 0, %406 ]
  %411 = phi i64 [ %426, %409 ], [ 0, %406 ]
  tail call void @llvm.dbg.value(metadata i64 %410, metadata !69, metadata !DIExpression()), !dbg !182
  %412 = getelementptr double, ptr %396, i64 %410, !dbg !301
  %413 = load double, ptr %412, align 8, !dbg !301, !tbaa !197
  %414 = fmul double %403, %413, !dbg !304
  %415 = getelementptr double, ptr %408, i64 %410, !dbg !305
  %416 = load double, ptr %415, align 8, !dbg !306, !tbaa !197
  %417 = fadd double %416, %414, !dbg !306
  store double %417, ptr %415, align 8, !dbg !306, !tbaa !197
  %418 = or disjoint i64 %410, 1, !dbg !307
  tail call void @llvm.dbg.value(metadata i64 %418, metadata !69, metadata !DIExpression()), !dbg !182
  tail call void @llvm.dbg.value(metadata i64 %418, metadata !69, metadata !DIExpression()), !dbg !182
  %419 = getelementptr double, ptr %397, i64 %418, !dbg !301
  %420 = load double, ptr %419, align 8, !dbg !301, !tbaa !197
  %421 = fmul double %403, %420, !dbg !304
  %422 = getelementptr double, ptr %408, i64 %418, !dbg !305
  %423 = load double, ptr %422, align 8, !dbg !306, !tbaa !197
  %424 = fadd double %423, %421, !dbg !306
  store double %424, ptr %422, align 8, !dbg !306, !tbaa !197
  %425 = add nuw nsw i64 %410, 2, !dbg !307
  tail call void @llvm.dbg.value(metadata i64 %425, metadata !69, metadata !DIExpression()), !dbg !182
  %426 = add i64 %411, 2, !dbg !298
  %427 = icmp eq i64 %426, %388, !dbg !298
  br i1 %427, label %428, label %409, !dbg !298, !llvm.loop !308

428:                                              ; preds = %409, %406
  %429 = phi i64 [ 0, %406 ], [ %425, %409 ]
  br i1 %389, label %437, label %430, !dbg !298

430:                                              ; preds = %428
  tail call void @llvm.dbg.value(metadata i64 %429, metadata !69, metadata !DIExpression()), !dbg !182
  %431 = getelementptr double, ptr %398, i64 %429, !dbg !301
  %432 = load double, ptr %431, align 8, !dbg !301, !tbaa !197
  %433 = fmul double %403, %432, !dbg !304
  %434 = getelementptr double, ptr %408, i64 %429, !dbg !305
  %435 = load double, ptr %434, align 8, !dbg !306, !tbaa !197
  %436 = fadd double %435, %433, !dbg !306
  store double %436, ptr %434, align 8, !dbg !306, !tbaa !197
  tail call void @llvm.dbg.value(metadata i64 %429, metadata !69, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !182
  br label %437, !dbg !310

437:                                              ; preds = %430, %428, %399
  %438 = add nuw nsw i64 %400, 1, !dbg !310
  tail call void @llvm.dbg.value(metadata i64 %438, metadata !66, metadata !DIExpression()), !dbg !182
  %439 = icmp eq i64 %438, %384, !dbg !311
  br i1 %439, label %440, label %399, !dbg !291, !llvm.loop !312

440:                                              ; preds = %437, %390
  %441 = add nuw nsw i64 %391, 1, !dbg !314
  tail call void @llvm.dbg.value(metadata i64 %441, metadata !70, metadata !DIExpression()), !dbg !182
  %442 = icmp eq i64 %441, %383, !dbg !289
  br i1 %442, label %549, label %390, !dbg !290, !llvm.loop !315

443:                                              ; preds = %372
  %444 = and i1 %373, %271, !dbg !317
  br i1 %444, label %445, label %548, !dbg !317

445:                                              ; preds = %443
  tail call void @llvm.dbg.value(metadata i32 0, metadata !66, metadata !DIExpression()), !dbg !182
  %446 = icmp sgt i32 %91, 0, !dbg !318
  br i1 %446, label %447, label %549, !dbg !319

447:                                              ; preds = %445
  %448 = icmp sgt i32 %92, 0
  %449 = icmp sgt i32 %5, 0
  %450 = sext i32 %93 to i64, !dbg !319
  %451 = sext i32 %94 to i64, !dbg !319
  %452 = sext i32 %13 to i64, !dbg !319
  %453 = zext nneg i32 %91 to i64, !dbg !318
  %454 = zext nneg i32 %92 to i64
  %455 = zext i32 %5 to i64
  %456 = and i64 %455, 3
  %457 = icmp ult i32 %5, 4
  %458 = and i64 %455, 2147483644
  %459 = icmp eq i64 %456, 0
  br label %460, !dbg !319

460:                                              ; preds = %447, %545
  %461 = phi i64 [ 0, %447 ], [ %546, %545 ]
  tail call void @llvm.dbg.value(metadata i64 %461, metadata !66, metadata !DIExpression()), !dbg !182
  tail call void @llvm.dbg.value(metadata i32 0, metadata !69, metadata !DIExpression()), !dbg !182
  br i1 %448, label %462, label %545, !dbg !320

462:                                              ; preds = %460
  %463 = mul nsw i64 %461, %452
  %464 = getelementptr double, ptr %12, i64 %463, !dbg !320
  %465 = getelementptr double, ptr %95, i64 %461
  %466 = getelementptr double, ptr %95, i64 %461
  %467 = getelementptr double, ptr %95, i64 %461
  %468 = getelementptr double, ptr %95, i64 %461
  %469 = getelementptr double, ptr %95, i64 %461
  br label %470, !dbg !320

470:                                              ; preds = %462, %537
  %471 = phi i64 [ 0, %462 ], [ %543, %537 ]
  tail call void @llvm.dbg.value(metadata i64 %471, metadata !69, metadata !DIExpression()), !dbg !182
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !111, metadata !DIExpression()), !dbg !321
  tail call void @llvm.dbg.value(metadata i32 0, metadata !70, metadata !DIExpression()), !dbg !182
  br i1 %449, label %472, label %537, !dbg !322

472:                                              ; preds = %470
  %473 = mul nsw i64 %471, %451
  br i1 %457, label %517, label %474, !dbg !322

474:                                              ; preds = %472
  %475 = getelementptr double, ptr %96, i64 %473, !dbg !322
  %476 = getelementptr double, ptr %96, i64 %473, !dbg !322
  %477 = getelementptr double, ptr %96, i64 %473, !dbg !322
  %478 = getelementptr double, ptr %96, i64 %473, !dbg !322
  br label %479, !dbg !322

479:                                              ; preds = %479, %474
  %480 = phi i64 [ 0, %474 ], [ %514, %479 ]
  %481 = phi double [ 0.000000e+00, %474 ], [ %513, %479 ]
  %482 = phi i64 [ 0, %474 ], [ %515, %479 ]
  tail call void @llvm.dbg.value(metadata double %481, metadata !111, metadata !DIExpression()), !dbg !321
  tail call void @llvm.dbg.value(metadata i64 %480, metadata !70, metadata !DIExpression()), !dbg !182
  %483 = mul nsw i64 %480, %450, !dbg !324
  %484 = getelementptr double, ptr %465, i64 %483, !dbg !327
  %485 = load double, ptr %484, align 8, !dbg !327, !tbaa !197
  %486 = getelementptr double, ptr %475, i64 %480, !dbg !328
  %487 = load double, ptr %486, align 8, !dbg !328, !tbaa !197
  %488 = fmul double %485, %487, !dbg !329
  %489 = fadd double %481, %488, !dbg !330
  tail call void @llvm.dbg.value(metadata double %489, metadata !111, metadata !DIExpression()), !dbg !321
  %490 = or disjoint i64 %480, 1, !dbg !331
  tail call void @llvm.dbg.value(metadata i64 %490, metadata !70, metadata !DIExpression()), !dbg !182
  tail call void @llvm.dbg.value(metadata double %489, metadata !111, metadata !DIExpression()), !dbg !321
  tail call void @llvm.dbg.value(metadata i64 %490, metadata !70, metadata !DIExpression()), !dbg !182
  %491 = mul nsw i64 %490, %450, !dbg !324
  %492 = getelementptr double, ptr %466, i64 %491, !dbg !327
  %493 = load double, ptr %492, align 8, !dbg !327, !tbaa !197
  %494 = getelementptr double, ptr %476, i64 %490, !dbg !328
  %495 = load double, ptr %494, align 8, !dbg !328, !tbaa !197
  %496 = fmul double %493, %495, !dbg !329
  %497 = fadd double %489, %496, !dbg !330
  tail call void @llvm.dbg.value(metadata double %497, metadata !111, metadata !DIExpression()), !dbg !321
  %498 = or disjoint i64 %480, 2, !dbg !331
  tail call void @llvm.dbg.value(metadata i64 %498, metadata !70, metadata !DIExpression()), !dbg !182
  tail call void @llvm.dbg.value(metadata double %497, metadata !111, metadata !DIExpression()), !dbg !321
  tail call void @llvm.dbg.value(metadata i64 %498, metadata !70, metadata !DIExpression()), !dbg !182
  %499 = mul nsw i64 %498, %450, !dbg !324
  %500 = getelementptr double, ptr %467, i64 %499, !dbg !327
  %501 = load double, ptr %500, align 8, !dbg !327, !tbaa !197
  %502 = getelementptr double, ptr %477, i64 %498, !dbg !328
  %503 = load double, ptr %502, align 8, !dbg !328, !tbaa !197
  %504 = fmul double %501, %503, !dbg !329
  %505 = fadd double %497, %504, !dbg !330
  tail call void @llvm.dbg.value(metadata double %505, metadata !111, metadata !DIExpression()), !dbg !321
  %506 = or disjoint i64 %480, 3, !dbg !331
  tail call void @llvm.dbg.value(metadata i64 %506, metadata !70, metadata !DIExpression()), !dbg !182
  tail call void @llvm.dbg.value(metadata double %505, metadata !111, metadata !DIExpression()), !dbg !321
  tail call void @llvm.dbg.value(metadata i64 %506, metadata !70, metadata !DIExpression()), !dbg !182
  %507 = mul nsw i64 %506, %450, !dbg !324
  %508 = getelementptr double, ptr %468, i64 %507, !dbg !327
  %509 = load double, ptr %508, align 8, !dbg !327, !tbaa !197
  %510 = getelementptr double, ptr %478, i64 %506, !dbg !328
  %511 = load double, ptr %510, align 8, !dbg !328, !tbaa !197
  %512 = fmul double %509, %511, !dbg !329
  %513 = fadd double %505, %512, !dbg !330
  tail call void @llvm.dbg.value(metadata double %513, metadata !111, metadata !DIExpression()), !dbg !321
  %514 = add nuw nsw i64 %480, 4, !dbg !331
  tail call void @llvm.dbg.value(metadata i64 %514, metadata !70, metadata !DIExpression()), !dbg !182
  %515 = add i64 %482, 4, !dbg !322
  %516 = icmp eq i64 %515, %458, !dbg !322
  br i1 %516, label %517, label %479, !dbg !322, !llvm.loop !332

517:                                              ; preds = %479, %472
  %518 = phi double [ undef, %472 ], [ %513, %479 ]
  %519 = phi i64 [ 0, %472 ], [ %514, %479 ]
  %520 = phi double [ 0.000000e+00, %472 ], [ %513, %479 ]
  br i1 %459, label %537, label %521, !dbg !322

521:                                              ; preds = %517
  %522 = getelementptr double, ptr %96, i64 %473, !dbg !322
  br label %523, !dbg !322

523:                                              ; preds = %523, %521
  %524 = phi i64 [ %519, %521 ], [ %534, %523 ]
  %525 = phi double [ %520, %521 ], [ %533, %523 ]
  %526 = phi i64 [ 0, %521 ], [ %535, %523 ]
  tail call void @llvm.dbg.value(metadata double %525, metadata !111, metadata !DIExpression()), !dbg !321
  tail call void @llvm.dbg.value(metadata i64 %524, metadata !70, metadata !DIExpression()), !dbg !182
  %527 = mul nsw i64 %524, %450, !dbg !324
  %528 = getelementptr double, ptr %469, i64 %527, !dbg !327
  %529 = load double, ptr %528, align 8, !dbg !327, !tbaa !197
  %530 = getelementptr double, ptr %522, i64 %524, !dbg !328
  %531 = load double, ptr %530, align 8, !dbg !328, !tbaa !197
  %532 = fmul double %529, %531, !dbg !329
  %533 = fadd double %525, %532, !dbg !330
  tail call void @llvm.dbg.value(metadata double %533, metadata !111, metadata !DIExpression()), !dbg !321
  %534 = add nuw nsw i64 %524, 1, !dbg !331
  tail call void @llvm.dbg.value(metadata i64 %534, metadata !70, metadata !DIExpression()), !dbg !182
  %535 = add i64 %526, 1, !dbg !322
  %536 = icmp eq i64 %535, %456, !dbg !322
  br i1 %536, label %537, label %523, !dbg !322, !llvm.loop !334

537:                                              ; preds = %517, %523, %470
  %538 = phi double [ 0.000000e+00, %470 ], [ %518, %517 ], [ %533, %523 ], !dbg !321
  %539 = fmul double %538, %6, !dbg !335
  %540 = getelementptr double, ptr %464, i64 %471, !dbg !336
  %541 = load double, ptr %540, align 8, !dbg !337, !tbaa !197
  %542 = fadd double %539, %541, !dbg !337
  store double %542, ptr %540, align 8, !dbg !337, !tbaa !197
  %543 = add nuw nsw i64 %471, 1, !dbg !338
  tail call void @llvm.dbg.value(metadata i64 %543, metadata !69, metadata !DIExpression()), !dbg !182
  %544 = icmp eq i64 %543, %454, !dbg !339
  br i1 %544, label %545, label %470, !dbg !320, !llvm.loop !340

545:                                              ; preds = %537, %460
  %546 = add nuw nsw i64 %461, 1, !dbg !342
  tail call void @llvm.dbg.value(metadata i64 %546, metadata !66, metadata !DIExpression()), !dbg !182
  %547 = icmp eq i64 %546, %453, !dbg !318
  br i1 %547, label %549, label %460, !dbg !319, !llvm.loop !343

548:                                              ; preds = %443
  tail call void (i32, ptr, ptr, ...) @cblas_xerbla(i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #4, !dbg !345
  br label %549

549:                                              ; preds = %545, %440, %369, %267, %445, %375, %273, %202, %548, %197, %84
  ret void, !dbg !347
}

declare !dbg !349 void @cblas_xerbla(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!17}
!llvm.module.flags = !{!32, !33, !34, !35, !36, !37, !38}
!llvm.ident = !{!39}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 27, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "./source_gemm_r.h", directory: "/PI-detector/external/gsl/gsl-2.5/cblas", checksumkind: CSK_MD5, checksum: "dd13b8f7150a8fa33fd4813c34f1338f")
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
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 125, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 23)
!17 = distinct !DICompileUnit(language: DW_LANG_C11, file: !18, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !19, globals: !31, splitDebugInlining: false, nameTableKind: None)
!18 = !DIFile(filename: "dgemm.c", directory: "/PI-detector/external/gsl/gsl-2.5/cblas", checksumkind: CSK_MD5, checksum: "5b043e9d44c3f0be03a023d79c5cb0f4")
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
!31 = !{!0, !7, !12}
!32 = !{i32 7, !"Dwarf Version", i32 5}
!33 = !{i32 2, !"Debug Info Version", i32 3}
!34 = !{i32 1, !"wchar_size", i32 4}
!35 = !{i32 8, !"PIC Level", i32 2}
!36 = !{i32 7, !"PIE Level", i32 2}
!37 = !{i32 7, !"uwtable", i32 2}
!38 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!39 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!40 = distinct !DISubprogram(name: "cblas_dgemm", scope: !18, file: !18, line: 7, type: !41, scopeLine: 12, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !51)
!41 = !DISubroutineType(types: !42)
!42 = !{null, !43, !44, !44, !45, !45, !45, !47, !49, !45, !49, !45, !47, !50, !45}
!43 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!44 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !26)
!45 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!46 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!47 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !48)
!48 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!51 = !{!52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !81, !83, !84, !93, !102, !111}
!52 = !DILocalVariable(name: "Order", arg: 1, scope: !40, file: !18, line: 7, type: !43)
!53 = !DILocalVariable(name: "TransA", arg: 2, scope: !40, file: !18, line: 7, type: !44)
!54 = !DILocalVariable(name: "TransB", arg: 3, scope: !40, file: !18, line: 8, type: !44)
!55 = !DILocalVariable(name: "M", arg: 4, scope: !40, file: !18, line: 8, type: !45)
!56 = !DILocalVariable(name: "N", arg: 5, scope: !40, file: !18, line: 8, type: !45)
!57 = !DILocalVariable(name: "K", arg: 6, scope: !40, file: !18, line: 9, type: !45)
!58 = !DILocalVariable(name: "alpha", arg: 7, scope: !40, file: !18, line: 9, type: !47)
!59 = !DILocalVariable(name: "A", arg: 8, scope: !40, file: !18, line: 9, type: !49)
!60 = !DILocalVariable(name: "lda", arg: 9, scope: !40, file: !18, line: 9, type: !45)
!61 = !DILocalVariable(name: "B", arg: 10, scope: !40, file: !18, line: 10, type: !49)
!62 = !DILocalVariable(name: "ldb", arg: 11, scope: !40, file: !18, line: 10, type: !45)
!63 = !DILocalVariable(name: "beta", arg: 12, scope: !40, file: !18, line: 10, type: !47)
!64 = !DILocalVariable(name: "C", arg: 13, scope: !40, file: !18, line: 10, type: !50)
!65 = !DILocalVariable(name: "ldc", arg: 14, scope: !40, file: !18, line: 11, type: !45)
!66 = !DILocalVariable(name: "i", scope: !67, file: !2, line: 21, type: !46)
!67 = distinct !DILexicalBlock(scope: !68, file: !2, line: 20, column: 1)
!68 = !DILexicalBlockFile(scope: !40, file: !2, discriminator: 0)
!69 = !DILocalVariable(name: "j", scope: !67, file: !2, line: 21, type: !46)
!70 = !DILocalVariable(name: "k", scope: !67, file: !2, line: 21, type: !46)
!71 = !DILocalVariable(name: "n1", scope: !67, file: !2, line: 22, type: !46)
!72 = !DILocalVariable(name: "n2", scope: !67, file: !2, line: 22, type: !46)
!73 = !DILocalVariable(name: "ldf", scope: !67, file: !2, line: 23, type: !46)
!74 = !DILocalVariable(name: "ldg", scope: !67, file: !2, line: 23, type: !46)
!75 = !DILocalVariable(name: "TransF", scope: !67, file: !2, line: 24, type: !46)
!76 = !DILocalVariable(name: "TransG", scope: !67, file: !2, line: 24, type: !46)
!77 = !DILocalVariable(name: "F", scope: !67, file: !2, line: 25, type: !49)
!78 = !DILocalVariable(name: "G", scope: !67, file: !2, line: 25, type: !49)
!79 = !DILocalVariable(name: "pos", scope: !80, file: !2, line: 27, type: !46)
!80 = distinct !DILexicalBlock(scope: !67, file: !2, line: 27, column: 3)
!81 = !DILocalVariable(name: "__transF", scope: !82, file: !2, line: 27, type: !26)
!82 = distinct !DILexicalBlock(scope: !80, file: !2, line: 27, column: 3)
!83 = !DILocalVariable(name: "__transG", scope: !82, file: !2, line: 27, type: !26)
!84 = !DILocalVariable(name: "temp", scope: !85, file: !2, line: 76, type: !47)
!85 = distinct !DILexicalBlock(scope: !86, file: !2, line: 75, column: 32)
!86 = distinct !DILexicalBlock(scope: !87, file: !2, line: 75, column: 7)
!87 = distinct !DILexicalBlock(scope: !88, file: !2, line: 75, column: 7)
!88 = distinct !DILexicalBlock(scope: !89, file: !2, line: 74, column: 29)
!89 = distinct !DILexicalBlock(scope: !90, file: !2, line: 74, column: 5)
!90 = distinct !DILexicalBlock(scope: !91, file: !2, line: 74, column: 5)
!91 = distinct !DILexicalBlock(scope: !92, file: !2, line: 70, column: 57)
!92 = distinct !DILexicalBlock(scope: !67, file: !2, line: 70, column: 7)
!93 = !DILocalVariable(name: "temp", scope: !94, file: !2, line: 91, type: !48)
!94 = distinct !DILexicalBlock(scope: !95, file: !2, line: 90, column: 32)
!95 = distinct !DILexicalBlock(scope: !96, file: !2, line: 90, column: 7)
!96 = distinct !DILexicalBlock(scope: !97, file: !2, line: 90, column: 7)
!97 = distinct !DILexicalBlock(scope: !98, file: !2, line: 89, column: 30)
!98 = distinct !DILexicalBlock(scope: !99, file: !2, line: 89, column: 5)
!99 = distinct !DILexicalBlock(scope: !100, file: !2, line: 89, column: 5)
!100 = distinct !DILexicalBlock(scope: !101, file: !2, line: 85, column: 62)
!101 = distinct !DILexicalBlock(scope: !92, file: !2, line: 85, column: 14)
!102 = !DILocalVariable(name: "temp", scope: !103, file: !2, line: 103, type: !47)
!103 = distinct !DILexicalBlock(scope: !104, file: !2, line: 102, column: 32)
!104 = distinct !DILexicalBlock(scope: !105, file: !2, line: 102, column: 7)
!105 = distinct !DILexicalBlock(scope: !106, file: !2, line: 102, column: 7)
!106 = distinct !DILexicalBlock(scope: !107, file: !2, line: 101, column: 29)
!107 = distinct !DILexicalBlock(scope: !108, file: !2, line: 101, column: 5)
!108 = distinct !DILexicalBlock(scope: !109, file: !2, line: 101, column: 5)
!109 = distinct !DILexicalBlock(scope: !110, file: !2, line: 99, column: 62)
!110 = distinct !DILexicalBlock(scope: !101, file: !2, line: 99, column: 14)
!111 = !DILocalVariable(name: "temp", scope: !112, file: !2, line: 116, type: !48)
!112 = distinct !DILexicalBlock(scope: !113, file: !2, line: 115, column: 32)
!113 = distinct !DILexicalBlock(scope: !114, file: !2, line: 115, column: 7)
!114 = distinct !DILexicalBlock(scope: !115, file: !2, line: 115, column: 7)
!115 = distinct !DILexicalBlock(scope: !116, file: !2, line: 114, column: 30)
!116 = distinct !DILexicalBlock(scope: !117, file: !2, line: 114, column: 5)
!117 = distinct !DILexicalBlock(scope: !118, file: !2, line: 114, column: 5)
!118 = distinct !DILexicalBlock(scope: !119, file: !2, line: 112, column: 60)
!119 = distinct !DILexicalBlock(scope: !110, file: !2, line: 112, column: 14)
!120 = !DILocation(line: 0, scope: !40)
!121 = !DILocation(line: 0, scope: !80)
!122 = !DILocation(line: 0, scope: !82)
!123 = !DILocation(line: 27, column: 3, scope: !124)
!124 = distinct !DILexicalBlock(scope: !82, file: !2, line: 27, column: 3)
!125 = !DILocation(line: 27, column: 3, scope: !126)
!126 = distinct !DILexicalBlock(scope: !82, file: !2, line: 27, column: 3)
!127 = !DILocation(line: 27, column: 3, scope: !128)
!128 = distinct !DILexicalBlock(scope: !82, file: !2, line: 27, column: 3)
!129 = !DILocation(line: 27, column: 3, scope: !130)
!130 = distinct !DILexicalBlock(scope: !82, file: !2, line: 27, column: 3)
!131 = !DILocation(line: 27, column: 3, scope: !132)
!132 = distinct !DILexicalBlock(scope: !82, file: !2, line: 27, column: 3)
!133 = !DILocation(line: 27, column: 3, scope: !82)
!134 = !DILocation(line: 27, column: 3, scope: !135)
!135 = distinct !DILexicalBlock(scope: !82, file: !2, line: 27, column: 3)
!136 = !DILocation(line: 27, column: 3, scope: !137)
!137 = distinct !DILexicalBlock(scope: !82, file: !2, line: 27, column: 3)
!138 = !DILocation(line: 27, column: 3, scope: !139)
!139 = distinct !DILexicalBlock(scope: !140, file: !2, line: 27, column: 3)
!140 = distinct !DILexicalBlock(scope: !141, file: !2, line: 27, column: 3)
!141 = distinct !DILexicalBlock(scope: !82, file: !2, line: 27, column: 3)
!142 = !DILocation(line: 27, column: 3, scope: !143)
!143 = distinct !DILexicalBlock(scope: !140, file: !2, line: 27, column: 3)
!144 = !DILocation(line: 27, column: 3, scope: !140)
!145 = !DILocation(line: 27, column: 3, scope: !146)
!146 = distinct !DILexicalBlock(scope: !147, file: !2, line: 27, column: 3)
!147 = distinct !DILexicalBlock(scope: !143, file: !2, line: 27, column: 3)
!148 = !DILocation(line: 27, column: 3, scope: !147)
!149 = !DILocation(line: 27, column: 3, scope: !150)
!150 = distinct !DILexicalBlock(scope: !151, file: !2, line: 27, column: 3)
!151 = distinct !DILexicalBlock(scope: !143, file: !2, line: 27, column: 3)
!152 = !DILocation(line: 27, column: 3, scope: !151)
!153 = !DILocation(line: 27, column: 3, scope: !154)
!154 = distinct !DILexicalBlock(scope: !140, file: !2, line: 27, column: 3)
!155 = !DILocation(line: 27, column: 3, scope: !156)
!156 = distinct !DILexicalBlock(scope: !141, file: !2, line: 27, column: 3)
!157 = !DILocation(line: 27, column: 3, scope: !141)
!158 = !DILocation(line: 27, column: 3, scope: !159)
!159 = distinct !DILexicalBlock(scope: !160, file: !2, line: 27, column: 3)
!160 = distinct !DILexicalBlock(scope: !156, file: !2, line: 27, column: 3)
!161 = !DILocation(line: 27, column: 3, scope: !162)
!162 = distinct !DILexicalBlock(scope: !160, file: !2, line: 27, column: 3)
!163 = !DILocation(line: 27, column: 3, scope: !160)
!164 = !DILocation(line: 27, column: 3, scope: !165)
!165 = distinct !DILexicalBlock(scope: !166, file: !2, line: 27, column: 3)
!166 = distinct !DILexicalBlock(scope: !162, file: !2, line: 27, column: 3)
!167 = !DILocation(line: 27, column: 3, scope: !166)
!168 = !DILocation(line: 27, column: 3, scope: !169)
!169 = distinct !DILexicalBlock(scope: !170, file: !2, line: 27, column: 3)
!170 = distinct !DILexicalBlock(scope: !162, file: !2, line: 27, column: 3)
!171 = !DILocation(line: 27, column: 3, scope: !170)
!172 = !DILocation(line: 27, column: 3, scope: !173)
!173 = distinct !DILexicalBlock(scope: !160, file: !2, line: 27, column: 3)
!174 = !DILocation(line: 27, column: 3, scope: !175)
!175 = distinct !DILexicalBlock(scope: !80, file: !2, line: 27, column: 3)
!176 = !DILocation(line: 27, column: 3, scope: !80)
!177 = !DILocation(line: 29, column: 13, scope: !178)
!178 = distinct !DILexicalBlock(scope: !67, file: !2, line: 29, column: 7)
!179 = !DILocation(line: 29, column: 20, scope: !178)
!180 = !DILocation(line: 0, scope: !181)
!181 = distinct !DILexicalBlock(scope: !67, file: !2, line: 32, column: 7)
!182 = !DILocation(line: 0, scope: !67)
!183 = !DILocation(line: 53, column: 12, scope: !184)
!184 = distinct !DILexicalBlock(scope: !67, file: !2, line: 53, column: 7)
!185 = !DILocation(line: 53, column: 7, scope: !67)
!186 = !DILocation(line: 54, column: 19, scope: !187)
!187 = distinct !DILexicalBlock(scope: !188, file: !2, line: 54, column: 5)
!188 = distinct !DILexicalBlock(scope: !189, file: !2, line: 54, column: 5)
!189 = distinct !DILexicalBlock(scope: !184, file: !2, line: 53, column: 20)
!190 = !DILocation(line: 54, column: 5, scope: !188)
!191 = !DILocation(line: 55, column: 7, scope: !192)
!192 = distinct !DILexicalBlock(scope: !193, file: !2, line: 55, column: 7)
!193 = distinct !DILexicalBlock(scope: !187, file: !2, line: 54, column: 30)
!194 = !DILocation(line: 56, column: 24, scope: !195)
!195 = distinct !DILexicalBlock(scope: !196, file: !2, line: 55, column: 32)
!196 = distinct !DILexicalBlock(scope: !192, file: !2, line: 55, column: 7)
!197 = !{!198, !198, i64 0}
!198 = !{!"double", !199, i64 0}
!199 = !{!"omnipotent char", !200, i64 0}
!200 = !{!"Simple C/C++ TBAA"}
!201 = !DILocation(line: 54, column: 26, scope: !187)
!202 = distinct !{!202, !190, !203, !204}
!203 = !DILocation(line: 58, column: 5, scope: !188)
!204 = !{!"llvm.loop.mustprogress"}
!205 = !DILocation(line: 59, column: 19, scope: !206)
!206 = distinct !DILexicalBlock(scope: !184, file: !2, line: 59, column: 14)
!207 = !DILocation(line: 59, column: 14, scope: !184)
!208 = !DILocation(line: 60, column: 5, scope: !209)
!209 = distinct !DILexicalBlock(scope: !210, file: !2, line: 60, column: 5)
!210 = distinct !DILexicalBlock(scope: !206, file: !2, line: 59, column: 27)
!211 = !DILocation(line: 60, column: 19, scope: !212)
!212 = distinct !DILexicalBlock(scope: !209, file: !2, line: 60, column: 5)
!213 = !DILocation(line: 61, column: 7, scope: !214)
!214 = distinct !DILexicalBlock(scope: !215, file: !2, line: 61, column: 7)
!215 = distinct !DILexicalBlock(scope: !212, file: !2, line: 60, column: 30)
!216 = !DILocation(line: 62, column: 9, scope: !217)
!217 = distinct !DILexicalBlock(scope: !218, file: !2, line: 61, column: 32)
!218 = distinct !DILexicalBlock(scope: !214, file: !2, line: 61, column: 7)
!219 = !DILocation(line: 62, column: 24, scope: !217)
!220 = !DILocation(line: 61, column: 28, scope: !218)
!221 = distinct !{!221, !213, !222, !204}
!222 = !DILocation(line: 63, column: 7, scope: !214)
!223 = distinct !{!223, !224}
!224 = !{!"llvm.loop.unroll.disable"}
!225 = !DILocation(line: 60, column: 26, scope: !212)
!226 = distinct !{!226, !208, !227, !204}
!227 = !DILocation(line: 64, column: 5, scope: !209)
!228 = !DILocation(line: 67, column: 7, scope: !67)
!229 = !DILocation(line: 70, column: 14, scope: !92)
!230 = !DILocation(line: 70, column: 30, scope: !92)
!231 = !DILocation(line: 74, column: 19, scope: !89)
!232 = !DILocation(line: 74, column: 5, scope: !90)
!233 = !DILocation(line: 75, column: 7, scope: !87)
!234 = !DILocation(line: 76, column: 41, scope: !85)
!235 = !DILocation(line: 76, column: 35, scope: !85)
!236 = !DILocation(line: 76, column: 33, scope: !85)
!237 = !DILocation(line: 0, scope: !85)
!238 = !DILocation(line: 77, column: 18, scope: !239)
!239 = distinct !DILexicalBlock(scope: !85, file: !2, line: 77, column: 13)
!240 = !DILocation(line: 77, column: 13, scope: !85)
!241 = !DILocation(line: 78, column: 11, scope: !242)
!242 = distinct !DILexicalBlock(scope: !243, file: !2, line: 78, column: 11)
!243 = distinct !DILexicalBlock(scope: !239, file: !2, line: 77, column: 26)
!244 = !DILocation(line: 79, column: 38, scope: !245)
!245 = distinct !DILexicalBlock(scope: !246, file: !2, line: 78, column: 36)
!246 = distinct !DILexicalBlock(scope: !242, file: !2, line: 78, column: 11)
!247 = !DILocation(line: 79, column: 36, scope: !245)
!248 = !DILocation(line: 79, column: 13, scope: !245)
!249 = !DILocation(line: 79, column: 28, scope: !245)
!250 = !DILocation(line: 78, column: 32, scope: !246)
!251 = distinct !{!251, !241, !252, !204}
!252 = !DILocation(line: 80, column: 11, scope: !242)
!253 = !DILocation(line: 75, column: 28, scope: !86)
!254 = !DILocation(line: 75, column: 21, scope: !86)
!255 = distinct !{!255, !233, !256, !204}
!256 = !DILocation(line: 82, column: 7, scope: !87)
!257 = !DILocation(line: 74, column: 25, scope: !89)
!258 = distinct !{!258, !232, !259, !204}
!259 = !DILocation(line: 83, column: 5, scope: !90)
!260 = !DILocation(line: 85, column: 37, scope: !101)
!261 = !DILocation(line: 89, column: 19, scope: !98)
!262 = !DILocation(line: 89, column: 5, scope: !99)
!263 = !DILocation(line: 90, column: 7, scope: !96)
!264 = !DILocation(line: 0, scope: !94)
!265 = !DILocation(line: 92, column: 9, scope: !266)
!266 = distinct !DILexicalBlock(scope: !94, file: !2, line: 92, column: 9)
!267 = !DILocation(line: 93, column: 19, scope: !268)
!268 = distinct !DILexicalBlock(scope: !269, file: !2, line: 92, column: 33)
!269 = distinct !DILexicalBlock(scope: !266, file: !2, line: 92, column: 9)
!270 = !DILocation(line: 93, column: 36, scope: !268)
!271 = !DILocation(line: 93, column: 34, scope: !268)
!272 = !DILocation(line: 93, column: 16, scope: !268)
!273 = !DILocation(line: 92, column: 29, scope: !269)
!274 = distinct !{!274, !265, !275, !204}
!275 = !DILocation(line: 94, column: 9, scope: !266)
!276 = distinct !{!276, !224}
!277 = !DILocation(line: 95, column: 33, scope: !94)
!278 = !DILocation(line: 95, column: 9, scope: !94)
!279 = !DILocation(line: 95, column: 24, scope: !94)
!280 = !DILocation(line: 90, column: 28, scope: !95)
!281 = !DILocation(line: 90, column: 21, scope: !95)
!282 = distinct !{!282, !263, !283, !204}
!283 = !DILocation(line: 96, column: 7, scope: !96)
!284 = !DILocation(line: 89, column: 26, scope: !98)
!285 = distinct !{!285, !262, !286, !204}
!286 = !DILocation(line: 97, column: 5, scope: !99)
!287 = !DILocation(line: 99, column: 21, scope: !110)
!288 = !DILocation(line: 99, column: 35, scope: !110)
!289 = !DILocation(line: 101, column: 19, scope: !107)
!290 = !DILocation(line: 101, column: 5, scope: !108)
!291 = !DILocation(line: 102, column: 7, scope: !105)
!292 = !DILocation(line: 103, column: 35, scope: !103)
!293 = !DILocation(line: 103, column: 33, scope: !103)
!294 = !DILocation(line: 0, scope: !103)
!295 = !DILocation(line: 104, column: 18, scope: !296)
!296 = distinct !DILexicalBlock(scope: !103, file: !2, line: 104, column: 13)
!297 = !DILocation(line: 104, column: 13, scope: !103)
!298 = !DILocation(line: 105, column: 11, scope: !299)
!299 = distinct !DILexicalBlock(scope: !300, file: !2, line: 105, column: 11)
!300 = distinct !DILexicalBlock(scope: !296, file: !2, line: 104, column: 26)
!301 = !DILocation(line: 106, column: 38, scope: !302)
!302 = distinct !DILexicalBlock(scope: !303, file: !2, line: 105, column: 36)
!303 = distinct !DILexicalBlock(scope: !299, file: !2, line: 105, column: 11)
!304 = !DILocation(line: 106, column: 36, scope: !302)
!305 = !DILocation(line: 106, column: 13, scope: !302)
!306 = !DILocation(line: 106, column: 28, scope: !302)
!307 = !DILocation(line: 105, column: 32, scope: !303)
!308 = distinct !{!308, !298, !309, !204}
!309 = !DILocation(line: 107, column: 11, scope: !299)
!310 = !DILocation(line: 102, column: 28, scope: !104)
!311 = !DILocation(line: 102, column: 21, scope: !104)
!312 = distinct !{!312, !291, !313, !204}
!313 = !DILocation(line: 109, column: 7, scope: !105)
!314 = !DILocation(line: 101, column: 25, scope: !107)
!315 = distinct !{!315, !290, !316, !204}
!316 = !DILocation(line: 110, column: 5, scope: !108)
!317 = !DILocation(line: 112, column: 35, scope: !119)
!318 = !DILocation(line: 114, column: 19, scope: !116)
!319 = !DILocation(line: 114, column: 5, scope: !117)
!320 = !DILocation(line: 115, column: 7, scope: !114)
!321 = !DILocation(line: 0, scope: !112)
!322 = !DILocation(line: 117, column: 9, scope: !323)
!323 = distinct !DILexicalBlock(scope: !112, file: !2, line: 117, column: 9)
!324 = !DILocation(line: 118, column: 25, scope: !325)
!325 = distinct !DILexicalBlock(scope: !326, file: !2, line: 117, column: 33)
!326 = distinct !DILexicalBlock(scope: !323, file: !2, line: 117, column: 9)
!327 = !DILocation(line: 118, column: 19, scope: !325)
!328 = !DILocation(line: 118, column: 36, scope: !325)
!329 = !DILocation(line: 118, column: 34, scope: !325)
!330 = !DILocation(line: 118, column: 16, scope: !325)
!331 = !DILocation(line: 117, column: 29, scope: !326)
!332 = distinct !{!332, !322, !333, !204}
!333 = !DILocation(line: 119, column: 9, scope: !323)
!334 = distinct !{!334, !224}
!335 = !DILocation(line: 120, column: 33, scope: !112)
!336 = !DILocation(line: 120, column: 9, scope: !112)
!337 = !DILocation(line: 120, column: 24, scope: !112)
!338 = !DILocation(line: 115, column: 28, scope: !113)
!339 = !DILocation(line: 115, column: 21, scope: !113)
!340 = distinct !{!340, !320, !341, !204}
!341 = !DILocation(line: 121, column: 7, scope: !114)
!342 = !DILocation(line: 114, column: 26, scope: !116)
!343 = distinct !{!343, !319, !344, !204}
!344 = !DILocation(line: 122, column: 5, scope: !117)
!345 = !DILocation(line: 125, column: 5, scope: !346)
!346 = distinct !DILexicalBlock(scope: !119, file: !2, line: 124, column: 10)
!347 = !DILocation(line: 16, column: 1, scope: !348)
!348 = !DILexicalBlockFile(scope: !40, file: !18, discriminator: 0)
!349 = !DISubprogram(name: "cblas_xerbla", scope: !21, file: !21, line: 602, type: !350, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!350 = !DISubroutineType(types: !351)
!351 = !{null, !46, !352, !352, null}
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!353 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
