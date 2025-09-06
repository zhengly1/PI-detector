; ModuleID = 'sgemm.ll'
source_filename = "sgemm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"./source_gemm_r.h\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !7
@.str.2 = private unnamed_addr constant [23 x i8] c"unrecognized operation\00", align 1, !dbg !12

; Function Attrs: nounwind uwtable
define dso_local void @cblas_sgemm(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, float noundef %6, ptr nocapture noundef readonly %7, i32 noundef %8, ptr nocapture noundef readonly %9, i32 noundef %10, float noundef %11, ptr nocapture noundef %12, i32 noundef %13) local_unnamed_addr #0 !dbg !40 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !52, metadata !DIExpression()), !dbg !120
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !53, metadata !DIExpression()), !dbg !120
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !54, metadata !DIExpression()), !dbg !120
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !55, metadata !DIExpression()), !dbg !120
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !56, metadata !DIExpression()), !dbg !120
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !57, metadata !DIExpression()), !dbg !120
  tail call void @llvm.dbg.value(metadata float %6, metadata !58, metadata !DIExpression()), !dbg !120
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !59, metadata !DIExpression()), !dbg !120
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !60, metadata !DIExpression()), !dbg !120
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !61, metadata !DIExpression()), !dbg !120
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !62, metadata !DIExpression()), !dbg !120
  tail call void @llvm.dbg.value(metadata float %11, metadata !63, metadata !DIExpression()), !dbg !120
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

79:                                               ; preds = %75, %57, %53
  %80 = phi i32 [ %36, %57 ], [ %55, %53 ], [ %77, %75 ], !dbg !133
  tail call void @llvm.dbg.value(metadata i32 %80, metadata !79, metadata !DIExpression()), !dbg !121
  %81 = icmp eq i32 %80, 0, !dbg !174
  br i1 %81, label %84, label %82, !dbg !176

82:                                               ; preds = %79, %75, %53
  %83 = phi i32 [ %80, %79 ], [ 14, %53 ], [ 14, %75 ]
  tail call void (i32, ptr, ptr, ...) @cblas_xerbla(i32 noundef %83, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #4, !dbg !174
  br label %84, !dbg !174

84:                                               ; preds = %82, %79
  %85 = fcmp oeq float %6, 0.000000e+00, !dbg !177
  %86 = fcmp oeq float %11, 1.000000e+00
  %87 = and i1 %85, %86, !dbg !179
  br i1 %87, label %603, label %88, !dbg !179

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
  %101 = fcmp oeq float %11, 0.000000e+00, !dbg !183
  br i1 %101, label %102, label %132, !dbg !185

102:                                              ; preds = %88
  tail call void @llvm.dbg.value(metadata i32 0, metadata !66, metadata !DIExpression()), !dbg !182
  %103 = icmp sgt i32 %91, 0, !dbg !186
  br i1 %103, label %104, label %197, !dbg !190

104:                                              ; preds = %102
  %105 = icmp sgt i32 %92, 0
  %106 = zext i32 %92 to i64, !dbg !190
  %107 = shl nuw nsw i64 %106, 2, !dbg !190
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
  %120 = shl nsw i64 %119, 2, !dbg !191
  %121 = getelementptr i8, ptr %12, i64 %120, !dbg !191
  tail call void @llvm.memset.p0.i64(ptr align 4 %121, i8 0, i64 %107, i1 false), !dbg !194, !tbaa !197
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !69, metadata !DIExpression()), !dbg !182
  tail call void @llvm.dbg.value(metadata i64 %114, metadata !66, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !182
  tail call void @llvm.dbg.value(metadata i64 %114, metadata !66, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !182
  tail call void @llvm.dbg.value(metadata i32 0, metadata !69, metadata !DIExpression()), !dbg !182
  tail call void @llvm.dbg.value(metadata i64 %114, metadata !66, metadata !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value)), !dbg !182
  %122 = trunc i64 %114 to i32, !dbg !191
  %123 = or disjoint i32 %122, 1, !dbg !191
  %124 = mul i32 %123, %13, !dbg !191
  %125 = sext i32 %124 to i64, !dbg !191
  %126 = shl nsw i64 %125, 2, !dbg !191
  %127 = getelementptr i8, ptr %12, i64 %126, !dbg !191
  tail call void @llvm.memset.p0.i64(ptr align 4 %127, i8 0, i64 %107, i1 false), !dbg !194, !tbaa !197
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !69, metadata !DIExpression()), !dbg !182
  br label %128, !dbg !201

128:                                              ; preds = %116, %113
  %129 = add nuw nsw i64 %114, 2, !dbg !201
  tail call void @llvm.dbg.value(metadata i64 %129, metadata !66, metadata !DIExpression()), !dbg !182
  %130 = add i64 %115, 2, !dbg !190
  %131 = icmp eq i64 %130, %112, !dbg !190
  br i1 %131, label %185, label %113, !dbg !190, !llvm.loop !202

132:                                              ; preds = %88
  %133 = fcmp une float %11, 1.000000e+00, !dbg !205
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

145:                                              ; preds = %182, %136
  %146 = phi i64 [ 0, %136 ], [ %183, %182 ]
  tail call void @llvm.dbg.value(metadata i64 %146, metadata !66, metadata !DIExpression()), !dbg !182
  tail call void @llvm.dbg.value(metadata i32 0, metadata !69, metadata !DIExpression()), !dbg !182
  br i1 %137, label %147, label %182, !dbg !213

147:                                              ; preds = %145
  %148 = mul nsw i64 %146, %138
  %149 = getelementptr float, ptr %12, i64 %148, !dbg !213
  br i1 %142, label %171, label %150, !dbg !213

150:                                              ; preds = %150, %147
  %151 = phi i64 [ %168, %150 ], [ 0, %147 ]
  %152 = phi i64 [ %169, %150 ], [ 0, %147 ]
  tail call void @llvm.dbg.value(metadata i64 %151, metadata !69, metadata !DIExpression()), !dbg !182
  %153 = getelementptr float, ptr %149, i64 %151, !dbg !216
  %154 = load float, ptr %153, align 4, !dbg !219, !tbaa !197
  %155 = fmul float %154, %11, !dbg !219
  store float %155, ptr %153, align 4, !dbg !219, !tbaa !197
  %156 = or disjoint i64 %151, 1, !dbg !220
  tail call void @llvm.dbg.value(metadata i64 %156, metadata !69, metadata !DIExpression()), !dbg !182
  tail call void @llvm.dbg.value(metadata i64 %156, metadata !69, metadata !DIExpression()), !dbg !182
  %157 = getelementptr float, ptr %149, i64 %156, !dbg !216
  %158 = load float, ptr %157, align 4, !dbg !219, !tbaa !197
  %159 = fmul float %158, %11, !dbg !219
  store float %159, ptr %157, align 4, !dbg !219, !tbaa !197
  %160 = or disjoint i64 %151, 2, !dbg !220
  tail call void @llvm.dbg.value(metadata i64 %160, metadata !69, metadata !DIExpression()), !dbg !182
  tail call void @llvm.dbg.value(metadata i64 %160, metadata !69, metadata !DIExpression()), !dbg !182
  %161 = getelementptr float, ptr %149, i64 %160, !dbg !216
  %162 = load float, ptr %161, align 4, !dbg !219, !tbaa !197
  %163 = fmul float %162, %11, !dbg !219
  store float %163, ptr %161, align 4, !dbg !219, !tbaa !197
  %164 = or disjoint i64 %151, 3, !dbg !220
  tail call void @llvm.dbg.value(metadata i64 %164, metadata !69, metadata !DIExpression()), !dbg !182
  tail call void @llvm.dbg.value(metadata i64 %164, metadata !69, metadata !DIExpression()), !dbg !182
  %165 = getelementptr float, ptr %149, i64 %164, !dbg !216
  %166 = load float, ptr %165, align 4, !dbg !219, !tbaa !197
  %167 = fmul float %166, %11, !dbg !219
  store float %167, ptr %165, align 4, !dbg !219, !tbaa !197
  %168 = add nuw nsw i64 %151, 4, !dbg !220
  tail call void @llvm.dbg.value(metadata i64 %168, metadata !69, metadata !DIExpression()), !dbg !182
  %169 = add i64 %152, 4, !dbg !213
  %170 = icmp eq i64 %169, %143, !dbg !213
  br i1 %170, label %171, label %150, !dbg !213, !llvm.loop !221

171:                                              ; preds = %150, %147
  %172 = phi i64 [ 0, %147 ], [ %168, %150 ]
  br i1 %144, label %182, label %173, !dbg !213

173:                                              ; preds = %173, %171
  %174 = phi i64 [ %179, %173 ], [ %172, %171 ]
  %175 = phi i64 [ %180, %173 ], [ 0, %171 ]
  tail call void @llvm.dbg.value(metadata i64 %174, metadata !69, metadata !DIExpression()), !dbg !182
  %176 = getelementptr float, ptr %149, i64 %174, !dbg !216
  %177 = load float, ptr %176, align 4, !dbg !219, !tbaa !197
  %178 = fmul float %177, %11, !dbg !219
  store float %178, ptr %176, align 4, !dbg !219, !tbaa !197
  %179 = add nuw nsw i64 %174, 1, !dbg !220
  tail call void @llvm.dbg.value(metadata i64 %179, metadata !69, metadata !DIExpression()), !dbg !182
  %180 = add i64 %175, 1, !dbg !213
  %181 = icmp eq i64 %180, %141, !dbg !213
  br i1 %181, label %182, label %173, !dbg !213, !llvm.loop !223

182:                                              ; preds = %173, %171, %145
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
  %195 = shl nsw i64 %194, 2, !dbg !191
  %196 = getelementptr i8, ptr %12, i64 %195, !dbg !191
  tail call void @llvm.memset.p0.i64(ptr align 4 %196, i8 0, i64 %107, i1 false), !dbg !194, !tbaa !197
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !69, metadata !DIExpression()), !dbg !182
  br label %197, !dbg !201

197:                                              ; preds = %192, %187, %182, %132, %102
  br i1 %85, label %603, label %198, !dbg !228

198:                                              ; preds = %197
  %199 = icmp eq i32 %98, 111, !dbg !229
  %200 = icmp eq i32 %100, 111
  %201 = and i1 %199, %200, !dbg !230
  br i1 %201, label %202, label %279, !dbg !230

202:                                              ; preds = %198
  tail call void @llvm.dbg.value(metadata i32 0, metadata !70, metadata !DIExpression()), !dbg !182
  %203 = icmp sgt i32 %5, 0, !dbg !231
  br i1 %203, label %204, label %603, !dbg !232

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

217:                                              ; preds = %276, %204
  %218 = phi i64 [ 0, %204 ], [ %277, %276 ]
  tail call void @llvm.dbg.value(metadata i64 %218, metadata !70, metadata !DIExpression()), !dbg !182
  tail call void @llvm.dbg.value(metadata i32 0, metadata !66, metadata !DIExpression()), !dbg !182
  br i1 %205, label %219, label %276, !dbg !233

219:                                              ; preds = %217
  %220 = mul nsw i64 %218, %209
  %221 = getelementptr float, ptr %95, i64 %218, !dbg !233
  %222 = getelementptr float, ptr %96, i64 %220
  %223 = getelementptr float, ptr %96, i64 %220
  %224 = getelementptr float, ptr %96, i64 %220, !dbg !233
  br label %225, !dbg !233

225:                                              ; preds = %273, %219
  %226 = phi i64 [ 0, %219 ], [ %274, %273 ]
  tail call void @llvm.dbg.value(metadata i64 %226, metadata !66, metadata !DIExpression()), !dbg !182
  %227 = mul nsw i64 %226, %207, !dbg !234
  %228 = getelementptr float, ptr %221, i64 %227, !dbg !235
  %229 = load float, ptr %228, align 4, !dbg !235, !tbaa !197
  %230 = fmul float %229, %6, !dbg !236
  tail call void @llvm.dbg.value(metadata float %230, metadata !84, metadata !DIExpression()), !dbg !237
  %231 = fcmp oeq float %230, 0.000000e+00, !dbg !238
  %232 = or i1 %231, %206, !dbg !240
  br i1 %232, label %273, label %233, !dbg !240

233:                                              ; preds = %225
  %234 = mul nsw i64 %226, %208
  %235 = getelementptr float, ptr %12, i64 %234, !dbg !241
  br i1 %214, label %261, label %236, !dbg !241

236:                                              ; preds = %236, %233
  %237 = phi i64 [ %258, %236 ], [ 0, %233 ]
  %238 = phi i64 [ %259, %236 ], [ 0, %233 ]
  tail call void @llvm.dbg.value(metadata i64 %237, metadata !69, metadata !DIExpression()), !dbg !182
  %239 = getelementptr float, ptr %222, i64 %237, !dbg !244
  %240 = load float, ptr %239, align 4, !dbg !244, !tbaa !197
  %241 = fmul float %230, %240, !dbg !247
  %242 = getelementptr float, ptr %235, i64 %237, !dbg !248
  %243 = load float, ptr %242, align 4, !dbg !249, !tbaa !197
  %244 = fpext float %243 to double, !dbg !249
  %245 = fpext float %241 to double, !dbg !249
  %246 = fptrunc double %244 to float, !dbg !249
  %247 = fptrunc double %245 to float, !dbg !249
  %handler_result = call float @fAddHandlerFloat(float %246, float %247), !dbg !249
  store float %handler_result, ptr %242, align 4, !dbg !249, !tbaa !197
  %248 = or disjoint i64 %237, 1, !dbg !250
  tail call void @llvm.dbg.value(metadata i64 %248, metadata !69, metadata !DIExpression()), !dbg !182
  tail call void @llvm.dbg.value(metadata i64 %248, metadata !69, metadata !DIExpression()), !dbg !182
  %249 = getelementptr float, ptr %223, i64 %248, !dbg !244
  %250 = load float, ptr %249, align 4, !dbg !244, !tbaa !197
  %251 = fmul float %230, %250, !dbg !247
  %252 = getelementptr float, ptr %235, i64 %248, !dbg !248
  %253 = load float, ptr %252, align 4, !dbg !249, !tbaa !197
  %254 = fpext float %253 to double, !dbg !249
  %255 = fpext float %251 to double, !dbg !249
  %256 = fptrunc double %254 to float, !dbg !249
  %257 = fptrunc double %255 to float, !dbg !249
  %handler_result1 = call float @fAddHandlerFloat(float %256, float %257), !dbg !249
  store float %handler_result1, ptr %252, align 4, !dbg !249, !tbaa !197
  %258 = add nuw nsw i64 %237, 2, !dbg !250
  tail call void @llvm.dbg.value(metadata i64 %258, metadata !69, metadata !DIExpression()), !dbg !182
  %259 = add i64 %238, 2, !dbg !241
  %260 = icmp eq i64 %259, %215, !dbg !241
  br i1 %260, label %261, label %236, !dbg !241, !llvm.loop !251

261:                                              ; preds = %236, %233
  %262 = phi i64 [ 0, %233 ], [ %258, %236 ]
  br i1 %216, label %273, label %263, !dbg !241

263:                                              ; preds = %261
  tail call void @llvm.dbg.value(metadata i64 %262, metadata !69, metadata !DIExpression()), !dbg !182
  %264 = getelementptr float, ptr %224, i64 %262, !dbg !244
  %265 = load float, ptr %264, align 4, !dbg !244, !tbaa !197
  %266 = fmul float %230, %265, !dbg !247
  %267 = getelementptr float, ptr %235, i64 %262, !dbg !248
  %268 = load float, ptr %267, align 4, !dbg !249, !tbaa !197
  %269 = fpext float %268 to double, !dbg !249
  %270 = fpext float %266 to double, !dbg !249
  %271 = fptrunc double %269 to float, !dbg !249
  %272 = fptrunc double %270 to float, !dbg !249
  %handler_result2 = call float @fAddHandlerFloat(float %271, float %272), !dbg !249
  store float %handler_result2, ptr %267, align 4, !dbg !249, !tbaa !197
  tail call void @llvm.dbg.value(metadata i64 %262, metadata !69, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !182
  br label %273, !dbg !253

273:                                              ; preds = %263, %261, %225
  %274 = add nuw nsw i64 %226, 1, !dbg !253
  tail call void @llvm.dbg.value(metadata i64 %274, metadata !66, metadata !DIExpression()), !dbg !182
  %275 = icmp eq i64 %274, %211, !dbg !254
  br i1 %275, label %276, label %225, !dbg !233, !llvm.loop !255

276:                                              ; preds = %273, %217
  %277 = add nuw nsw i64 %218, 1, !dbg !257
  tail call void @llvm.dbg.value(metadata i64 %277, metadata !70, metadata !DIExpression()), !dbg !182
  %278 = icmp eq i64 %277, %210, !dbg !231
  br i1 %278, label %603, label %217, !dbg !232, !llvm.loop !258

279:                                              ; preds = %198
  %280 = icmp eq i32 %100, 112
  %281 = and i1 %199, %280, !dbg !260
  br i1 %281, label %282, label %399, !dbg !260

282:                                              ; preds = %279
  tail call void @llvm.dbg.value(metadata i32 0, metadata !66, metadata !DIExpression()), !dbg !182
  %283 = icmp sgt i32 %91, 0, !dbg !261
  br i1 %283, label %284, label %603, !dbg !262

284:                                              ; preds = %282
  %285 = icmp sgt i32 %92, 0
  %286 = icmp sgt i32 %5, 0
  %287 = sext i32 %94 to i64, !dbg !262
  %288 = sext i32 %93 to i64, !dbg !262
  %289 = sext i32 %13 to i64, !dbg !262
  %290 = zext nneg i32 %91 to i64, !dbg !261
  %291 = zext nneg i32 %92 to i64
  %292 = zext i32 %5 to i64
  %293 = and i64 %292, 3
  %294 = icmp ult i32 %5, 4
  %295 = and i64 %292, 2147483644
  %296 = icmp eq i64 %293, 0
  br label %297, !dbg !262

297:                                              ; preds = %396, %284
  %298 = phi i64 [ 0, %284 ], [ %397, %396 ]
  tail call void @llvm.dbg.value(metadata i64 %298, metadata !66, metadata !DIExpression()), !dbg !182
  tail call void @llvm.dbg.value(metadata i32 0, metadata !69, metadata !DIExpression()), !dbg !182
  br i1 %285, label %299, label %396, !dbg !263

299:                                              ; preds = %297
  %300 = mul nsw i64 %298, %288
  %301 = mul nsw i64 %298, %289
  %302 = getelementptr float, ptr %12, i64 %301, !dbg !263
  %303 = getelementptr float, ptr %95, i64 %300
  %304 = getelementptr float, ptr %95, i64 %300
  %305 = getelementptr float, ptr %95, i64 %300
  %306 = getelementptr float, ptr %95, i64 %300
  %307 = getelementptr float, ptr %95, i64 %300
  br label %308, !dbg !263

308:                                              ; preds = %385, %299
  %309 = phi i64 [ 0, %299 ], [ %394, %385 ]
  tail call void @llvm.dbg.value(metadata i64 %309, metadata !69, metadata !DIExpression()), !dbg !182
  tail call void @llvm.dbg.value(metadata float 0.000000e+00, metadata !93, metadata !DIExpression()), !dbg !264
  tail call void @llvm.dbg.value(metadata i32 0, metadata !70, metadata !DIExpression()), !dbg !182
  br i1 %286, label %310, label %385, !dbg !265

310:                                              ; preds = %308
  %311 = mul nsw i64 %309, %287
  br i1 %294, label %363, label %312, !dbg !265

312:                                              ; preds = %310
  %313 = getelementptr float, ptr %96, i64 %311, !dbg !265
  %314 = getelementptr float, ptr %96, i64 %311, !dbg !265
  %315 = getelementptr float, ptr %96, i64 %311, !dbg !265
  %316 = getelementptr float, ptr %96, i64 %311, !dbg !265
  br label %317, !dbg !265

317:                                              ; preds = %317, %312
  %318 = phi i64 [ 0, %312 ], [ %360, %317 ]
  %319 = phi float [ 0.000000e+00, %312 ], [ %handler_result6, %317 ]
  %320 = phi i64 [ 0, %312 ], [ %361, %317 ]
  tail call void @llvm.dbg.value(metadata float %319, metadata !93, metadata !DIExpression()), !dbg !264
  tail call void @llvm.dbg.value(metadata i64 %318, metadata !70, metadata !DIExpression()), !dbg !182
  %321 = getelementptr float, ptr %303, i64 %318, !dbg !267
  %322 = load float, ptr %321, align 4, !dbg !267, !tbaa !197
  %323 = getelementptr float, ptr %313, i64 %318, !dbg !270
  %324 = load float, ptr %323, align 4, !dbg !270, !tbaa !197
  %325 = fmul float %322, %324, !dbg !271
  %326 = fpext float %319 to double, !dbg !272
  %327 = fpext float %325 to double, !dbg !272
  %328 = fptrunc double %326 to float, !dbg !272
  %329 = fptrunc double %327 to float, !dbg !272
  %handler_result3 = call float @fAddHandlerFloat(float %328, float %329), !dbg !272
  tail call void @llvm.dbg.value(metadata float %handler_result3, metadata !93, metadata !DIExpression()), !dbg !264
  %330 = or disjoint i64 %318, 1, !dbg !272
  tail call void @llvm.dbg.value(metadata i64 %330, metadata !70, metadata !DIExpression()), !dbg !182
  tail call void @llvm.dbg.value(metadata float %handler_result3, metadata !93, metadata !DIExpression()), !dbg !264
  tail call void @llvm.dbg.value(metadata i64 %330, metadata !70, metadata !DIExpression()), !dbg !182
  %331 = getelementptr float, ptr %304, i64 %330, !dbg !267
  %332 = load float, ptr %331, align 4, !dbg !267, !tbaa !197
  %333 = getelementptr float, ptr %314, i64 %330, !dbg !270
  %334 = load float, ptr %333, align 4, !dbg !270, !tbaa !197
  %335 = fmul float %332, %334, !dbg !271
  %336 = fpext float %handler_result3 to double, !dbg !272
  %337 = fpext float %335 to double, !dbg !272
  %338 = fptrunc double %336 to float, !dbg !272
  %339 = fptrunc double %337 to float, !dbg !272
  %handler_result4 = call float @fAddHandlerFloat(float %338, float %339), !dbg !272
  tail call void @llvm.dbg.value(metadata float %handler_result4, metadata !93, metadata !DIExpression()), !dbg !264
  %340 = or disjoint i64 %318, 2, !dbg !272
  tail call void @llvm.dbg.value(metadata i64 %340, metadata !70, metadata !DIExpression()), !dbg !182
  tail call void @llvm.dbg.value(metadata float %handler_result4, metadata !93, metadata !DIExpression()), !dbg !264
  tail call void @llvm.dbg.value(metadata i64 %340, metadata !70, metadata !DIExpression()), !dbg !182
  %341 = getelementptr float, ptr %305, i64 %340, !dbg !267
  %342 = load float, ptr %341, align 4, !dbg !267, !tbaa !197
  %343 = getelementptr float, ptr %315, i64 %340, !dbg !270
  %344 = load float, ptr %343, align 4, !dbg !270, !tbaa !197
  %345 = fmul float %342, %344, !dbg !271
  %346 = fpext float %handler_result4 to double, !dbg !272
  %347 = fpext float %345 to double, !dbg !272
  %348 = fptrunc double %346 to float, !dbg !272
  %349 = fptrunc double %347 to float, !dbg !272
  %handler_result5 = call float @fAddHandlerFloat(float %348, float %349), !dbg !272
  tail call void @llvm.dbg.value(metadata float %handler_result5, metadata !93, metadata !DIExpression()), !dbg !264
  %350 = or disjoint i64 %318, 3, !dbg !272
  tail call void @llvm.dbg.value(metadata i64 %350, metadata !70, metadata !DIExpression()), !dbg !182
  tail call void @llvm.dbg.value(metadata float %handler_result5, metadata !93, metadata !DIExpression()), !dbg !264
  tail call void @llvm.dbg.value(metadata i64 %350, metadata !70, metadata !DIExpression()), !dbg !182
  %351 = getelementptr float, ptr %306, i64 %350, !dbg !267
  %352 = load float, ptr %351, align 4, !dbg !267, !tbaa !197
  %353 = getelementptr float, ptr %316, i64 %350, !dbg !270
  %354 = load float, ptr %353, align 4, !dbg !270, !tbaa !197
  %355 = fmul float %352, %354, !dbg !271
  %356 = fpext float %handler_result5 to double, !dbg !272
  %357 = fpext float %355 to double, !dbg !272
  %358 = fptrunc double %356 to float, !dbg !272
  %359 = fptrunc double %357 to float, !dbg !272
  %handler_result6 = call float @fAddHandlerFloat(float %358, float %359), !dbg !272
  tail call void @llvm.dbg.value(metadata float %handler_result6, metadata !93, metadata !DIExpression()), !dbg !264
  %360 = add nuw nsw i64 %318, 4, !dbg !272
  tail call void @llvm.dbg.value(metadata i64 %360, metadata !70, metadata !DIExpression()), !dbg !182
  %361 = add i64 %320, 4, !dbg !265
  %362 = icmp eq i64 %361, %295, !dbg !265
  br i1 %362, label %363, label %317, !dbg !265, !llvm.loop !273

363:                                              ; preds = %317, %310
  %364 = phi float [ undef, %310 ], [ %handler_result6, %317 ]
  %365 = phi i64 [ 0, %310 ], [ %360, %317 ]
  %366 = phi float [ 0.000000e+00, %310 ], [ %handler_result6, %317 ]
  br i1 %296, label %385, label %367, !dbg !265

367:                                              ; preds = %363
  %368 = getelementptr float, ptr %96, i64 %311, !dbg !265
  br label %369, !dbg !265

369:                                              ; preds = %369, %367
  %370 = phi i64 [ %365, %367 ], [ %382, %369 ]
  %371 = phi float [ %366, %367 ], [ %handler_result7, %369 ]
  %372 = phi i64 [ 0, %367 ], [ %383, %369 ]
  tail call void @llvm.dbg.value(metadata float %371, metadata !93, metadata !DIExpression()), !dbg !264
  tail call void @llvm.dbg.value(metadata i64 %370, metadata !70, metadata !DIExpression()), !dbg !182
  %373 = getelementptr float, ptr %307, i64 %370, !dbg !267
  %374 = load float, ptr %373, align 4, !dbg !267, !tbaa !197
  %375 = getelementptr float, ptr %368, i64 %370, !dbg !270
  %376 = load float, ptr %375, align 4, !dbg !270, !tbaa !197
  %377 = fmul float %374, %376, !dbg !271
  %378 = fpext float %371 to double, !dbg !272
  %379 = fpext float %377 to double, !dbg !272
  %380 = fptrunc double %378 to float, !dbg !272
  %381 = fptrunc double %379 to float, !dbg !272
  %handler_result7 = call float @fAddHandlerFloat(float %380, float %381), !dbg !272
  tail call void @llvm.dbg.value(metadata float %handler_result7, metadata !93, metadata !DIExpression()), !dbg !264
  %382 = add nuw nsw i64 %370, 1, !dbg !272
  tail call void @llvm.dbg.value(metadata i64 %382, metadata !70, metadata !DIExpression()), !dbg !182
  %383 = add i64 %372, 1, !dbg !265
  %384 = icmp eq i64 %383, %293, !dbg !265
  br i1 %384, label %385, label %369, !dbg !265, !llvm.loop !275

385:                                              ; preds = %369, %363, %308
  %386 = phi float [ 0.000000e+00, %308 ], [ %364, %363 ], [ %handler_result7, %369 ], !dbg !264
  %387 = fmul float %386, %6, !dbg !276
  %388 = getelementptr float, ptr %302, i64 %309, !dbg !277
  %389 = load float, ptr %388, align 4, !dbg !278, !tbaa !197
  %390 = fpext float %387 to double, !dbg !278
  %391 = fpext float %389 to double, !dbg !278
  %392 = fptrunc double %390 to float, !dbg !278
  %393 = fptrunc double %391 to float, !dbg !278
  %handler_result8 = call float @fAddHandlerFloat(float %392, float %393), !dbg !278
  store float %handler_result8, ptr %388, align 4, !dbg !278, !tbaa !197
  %394 = add nuw nsw i64 %309, 1, !dbg !279
  tail call void @llvm.dbg.value(metadata i64 %394, metadata !69, metadata !DIExpression()), !dbg !182
  %395 = icmp eq i64 %394, %291, !dbg !280
  br i1 %395, label %396, label %308, !dbg !263, !llvm.loop !281

396:                                              ; preds = %385, %297
  %397 = add nuw nsw i64 %298, 1, !dbg !283
  tail call void @llvm.dbg.value(metadata i64 %397, metadata !66, metadata !DIExpression()), !dbg !182
  %398 = icmp eq i64 %397, %290, !dbg !261
  br i1 %398, label %603, label %297, !dbg !262, !llvm.loop !284

399:                                              ; preds = %279
  %400 = icmp eq i32 %98, 112, !dbg !286
  %401 = and i1 %400, %200, !dbg !287
  br i1 %401, label %402, label %479, !dbg !287

402:                                              ; preds = %399
  tail call void @llvm.dbg.value(metadata i32 0, metadata !70, metadata !DIExpression()), !dbg !182
  %403 = icmp sgt i32 %5, 0, !dbg !288
  br i1 %403, label %404, label %603, !dbg !289

404:                                              ; preds = %402
  %405 = icmp sgt i32 %91, 0
  %406 = icmp slt i32 %92, 1
  %407 = sext i32 %13 to i64, !dbg !289
  %408 = sext i32 %93 to i64, !dbg !289
  %409 = sext i32 %94 to i64, !dbg !289
  %410 = zext nneg i32 %5 to i64, !dbg !288
  %411 = zext nneg i32 %91 to i64
  %412 = zext i32 %92 to i64
  %413 = and i64 %412, 1
  %414 = icmp eq i32 %92, 1
  %415 = and i64 %412, 4294967294
  %416 = icmp eq i64 %413, 0
  br label %417, !dbg !289

417:                                              ; preds = %476, %404
  %418 = phi i64 [ 0, %404 ], [ %477, %476 ]
  tail call void @llvm.dbg.value(metadata i64 %418, metadata !70, metadata !DIExpression()), !dbg !182
  tail call void @llvm.dbg.value(metadata i32 0, metadata !66, metadata !DIExpression()), !dbg !182
  br i1 %405, label %419, label %476, !dbg !290

419:                                              ; preds = %417
  %420 = mul nsw i64 %418, %408
  %421 = mul nsw i64 %418, %409
  %422 = getelementptr float, ptr %95, i64 %420, !dbg !290
  %423 = getelementptr float, ptr %96, i64 %421
  %424 = getelementptr float, ptr %96, i64 %421
  %425 = getelementptr float, ptr %96, i64 %421, !dbg !290
  br label %426, !dbg !290

426:                                              ; preds = %473, %419
  %427 = phi i64 [ 0, %419 ], [ %474, %473 ]
  tail call void @llvm.dbg.value(metadata i64 %427, metadata !66, metadata !DIExpression()), !dbg !182
  %428 = getelementptr float, ptr %422, i64 %427, !dbg !291
  %429 = load float, ptr %428, align 4, !dbg !291, !tbaa !197
  %430 = fmul float %429, %6, !dbg !292
  tail call void @llvm.dbg.value(metadata float %430, metadata !102, metadata !DIExpression()), !dbg !293
  %431 = fcmp oeq float %430, 0.000000e+00, !dbg !294
  %432 = or i1 %431, %406, !dbg !296
  br i1 %432, label %473, label %433, !dbg !296

433:                                              ; preds = %426
  %434 = mul nsw i64 %427, %407
  %435 = getelementptr float, ptr %12, i64 %434, !dbg !297
  br i1 %414, label %461, label %436, !dbg !297

436:                                              ; preds = %436, %433
  %437 = phi i64 [ %458, %436 ], [ 0, %433 ]
  %438 = phi i64 [ %459, %436 ], [ 0, %433 ]
  tail call void @llvm.dbg.value(metadata i64 %437, metadata !69, metadata !DIExpression()), !dbg !182
  %439 = getelementptr float, ptr %423, i64 %437, !dbg !300
  %440 = load float, ptr %439, align 4, !dbg !300, !tbaa !197
  %441 = fmul float %430, %440, !dbg !303
  %442 = getelementptr float, ptr %435, i64 %437, !dbg !304
  %443 = load float, ptr %442, align 4, !dbg !305, !tbaa !197
  %444 = fpext float %443 to double, !dbg !305
  %445 = fpext float %441 to double, !dbg !305
  %446 = fptrunc double %444 to float, !dbg !305
  %447 = fptrunc double %445 to float, !dbg !305
  %handler_result9 = call float @fAddHandlerFloat(float %446, float %447), !dbg !305
  store float %handler_result9, ptr %442, align 4, !dbg !305, !tbaa !197
  %448 = or disjoint i64 %437, 1, !dbg !306
  tail call void @llvm.dbg.value(metadata i64 %448, metadata !69, metadata !DIExpression()), !dbg !182
  tail call void @llvm.dbg.value(metadata i64 %448, metadata !69, metadata !DIExpression()), !dbg !182
  %449 = getelementptr float, ptr %424, i64 %448, !dbg !300
  %450 = load float, ptr %449, align 4, !dbg !300, !tbaa !197
  %451 = fmul float %430, %450, !dbg !303
  %452 = getelementptr float, ptr %435, i64 %448, !dbg !304
  %453 = load float, ptr %452, align 4, !dbg !305, !tbaa !197
  %454 = fpext float %453 to double, !dbg !305
  %455 = fpext float %451 to double, !dbg !305
  %456 = fptrunc double %454 to float, !dbg !305
  %457 = fptrunc double %455 to float, !dbg !305
  %handler_result10 = call float @fAddHandlerFloat(float %456, float %457), !dbg !305
  store float %handler_result10, ptr %452, align 4, !dbg !305, !tbaa !197
  %458 = add nuw nsw i64 %437, 2, !dbg !306
  tail call void @llvm.dbg.value(metadata i64 %458, metadata !69, metadata !DIExpression()), !dbg !182
  %459 = add i64 %438, 2, !dbg !297
  %460 = icmp eq i64 %459, %415, !dbg !297
  br i1 %460, label %461, label %436, !dbg !297, !llvm.loop !307

461:                                              ; preds = %436, %433
  %462 = phi i64 [ 0, %433 ], [ %458, %436 ]
  br i1 %416, label %473, label %463, !dbg !297

463:                                              ; preds = %461
  tail call void @llvm.dbg.value(metadata i64 %462, metadata !69, metadata !DIExpression()), !dbg !182
  %464 = getelementptr float, ptr %425, i64 %462, !dbg !300
  %465 = load float, ptr %464, align 4, !dbg !300, !tbaa !197
  %466 = fmul float %430, %465, !dbg !303
  %467 = getelementptr float, ptr %435, i64 %462, !dbg !304
  %468 = load float, ptr %467, align 4, !dbg !305, !tbaa !197
  %469 = fpext float %468 to double, !dbg !305
  %470 = fpext float %466 to double, !dbg !305
  %471 = fptrunc double %469 to float, !dbg !305
  %472 = fptrunc double %470 to float, !dbg !305
  %handler_result11 = call float @fAddHandlerFloat(float %471, float %472), !dbg !305
  store float %handler_result11, ptr %467, align 4, !dbg !305, !tbaa !197
  tail call void @llvm.dbg.value(metadata i64 %462, metadata !69, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !182
  br label %473, !dbg !309

473:                                              ; preds = %463, %461, %426
  %474 = add nuw nsw i64 %427, 1, !dbg !309
  tail call void @llvm.dbg.value(metadata i64 %474, metadata !66, metadata !DIExpression()), !dbg !182
  %475 = icmp eq i64 %474, %411, !dbg !310
  br i1 %475, label %476, label %426, !dbg !290, !llvm.loop !311

476:                                              ; preds = %473, %417
  %477 = add nuw nsw i64 %418, 1, !dbg !313
  tail call void @llvm.dbg.value(metadata i64 %477, metadata !70, metadata !DIExpression()), !dbg !182
  %478 = icmp eq i64 %477, %410, !dbg !288
  br i1 %478, label %603, label %417, !dbg !289, !llvm.loop !314

479:                                              ; preds = %399
  %480 = and i1 %400, %280, !dbg !316
  br i1 %480, label %481, label %602, !dbg !316

481:                                              ; preds = %479
  tail call void @llvm.dbg.value(metadata i32 0, metadata !66, metadata !DIExpression()), !dbg !182
  %482 = icmp sgt i32 %91, 0, !dbg !317
  br i1 %482, label %483, label %603, !dbg !318

483:                                              ; preds = %481
  %484 = icmp sgt i32 %92, 0
  %485 = icmp sgt i32 %5, 0
  %486 = sext i32 %93 to i64, !dbg !318
  %487 = sext i32 %94 to i64, !dbg !318
  %488 = sext i32 %13 to i64, !dbg !318
  %489 = zext nneg i32 %91 to i64, !dbg !317
  %490 = zext nneg i32 %92 to i64
  %491 = zext i32 %5 to i64
  %492 = and i64 %491, 3
  %493 = icmp ult i32 %5, 4
  %494 = and i64 %491, 2147483644
  %495 = icmp eq i64 %492, 0
  br label %496, !dbg !318

496:                                              ; preds = %599, %483
  %497 = phi i64 [ 0, %483 ], [ %600, %599 ]
  tail call void @llvm.dbg.value(metadata i64 %497, metadata !66, metadata !DIExpression()), !dbg !182
  tail call void @llvm.dbg.value(metadata i32 0, metadata !69, metadata !DIExpression()), !dbg !182
  br i1 %484, label %498, label %599, !dbg !319

498:                                              ; preds = %496
  %499 = mul nsw i64 %497, %488
  %500 = getelementptr float, ptr %12, i64 %499, !dbg !319
  %501 = getelementptr float, ptr %95, i64 %497
  %502 = getelementptr float, ptr %95, i64 %497
  %503 = getelementptr float, ptr %95, i64 %497
  %504 = getelementptr float, ptr %95, i64 %497
  %505 = getelementptr float, ptr %95, i64 %497
  br label %506, !dbg !319

506:                                              ; preds = %588, %498
  %507 = phi i64 [ 0, %498 ], [ %597, %588 ]
  tail call void @llvm.dbg.value(metadata i64 %507, metadata !69, metadata !DIExpression()), !dbg !182
  tail call void @llvm.dbg.value(metadata float 0.000000e+00, metadata !111, metadata !DIExpression()), !dbg !320
  tail call void @llvm.dbg.value(metadata i32 0, metadata !70, metadata !DIExpression()), !dbg !182
  br i1 %485, label %508, label %588, !dbg !321

508:                                              ; preds = %506
  %509 = mul nsw i64 %507, %487
  br i1 %493, label %565, label %510, !dbg !321

510:                                              ; preds = %508
  %511 = getelementptr float, ptr %96, i64 %509, !dbg !321
  %512 = getelementptr float, ptr %96, i64 %509, !dbg !321
  %513 = getelementptr float, ptr %96, i64 %509, !dbg !321
  %514 = getelementptr float, ptr %96, i64 %509, !dbg !321
  br label %515, !dbg !321

515:                                              ; preds = %515, %510
  %516 = phi i64 [ 0, %510 ], [ %562, %515 ]
  %517 = phi float [ 0.000000e+00, %510 ], [ %handler_result15, %515 ]
  %518 = phi i64 [ 0, %510 ], [ %563, %515 ]
  tail call void @llvm.dbg.value(metadata float %517, metadata !111, metadata !DIExpression()), !dbg !320
  tail call void @llvm.dbg.value(metadata i64 %516, metadata !70, metadata !DIExpression()), !dbg !182
  %519 = mul nsw i64 %516, %486, !dbg !323
  %520 = getelementptr float, ptr %501, i64 %519, !dbg !326
  %521 = load float, ptr %520, align 4, !dbg !326, !tbaa !197
  %522 = getelementptr float, ptr %511, i64 %516, !dbg !327
  %523 = load float, ptr %522, align 4, !dbg !327, !tbaa !197
  %524 = fmul float %521, %523, !dbg !328
  %525 = fpext float %517 to double, !dbg !329
  %526 = fpext float %524 to double, !dbg !329
  %527 = fptrunc double %525 to float, !dbg !329
  %528 = fptrunc double %526 to float, !dbg !329
  %handler_result12 = call float @fAddHandlerFloat(float %527, float %528), !dbg !329
  tail call void @llvm.dbg.value(metadata float %handler_result12, metadata !111, metadata !DIExpression()), !dbg !320
  %529 = or disjoint i64 %516, 1, !dbg !329
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !70, metadata !DIExpression()), !dbg !182
  tail call void @llvm.dbg.value(metadata float %handler_result12, metadata !111, metadata !DIExpression()), !dbg !320
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !70, metadata !DIExpression()), !dbg !182
  %530 = mul nsw i64 %529, %486, !dbg !323
  %531 = getelementptr float, ptr %502, i64 %530, !dbg !326
  %532 = load float, ptr %531, align 4, !dbg !326, !tbaa !197
  %533 = getelementptr float, ptr %512, i64 %529, !dbg !327
  %534 = load float, ptr %533, align 4, !dbg !327, !tbaa !197
  %535 = fmul float %532, %534, !dbg !328
  %536 = fpext float %handler_result12 to double, !dbg !329
  %537 = fpext float %535 to double, !dbg !329
  %538 = fptrunc double %536 to float, !dbg !329
  %539 = fptrunc double %537 to float, !dbg !329
  %handler_result13 = call float @fAddHandlerFloat(float %538, float %539), !dbg !329
  tail call void @llvm.dbg.value(metadata float %handler_result13, metadata !111, metadata !DIExpression()), !dbg !320
  %540 = or disjoint i64 %516, 2, !dbg !329
  tail call void @llvm.dbg.value(metadata i64 %540, metadata !70, metadata !DIExpression()), !dbg !182
  tail call void @llvm.dbg.value(metadata float %handler_result13, metadata !111, metadata !DIExpression()), !dbg !320
  tail call void @llvm.dbg.value(metadata i64 %540, metadata !70, metadata !DIExpression()), !dbg !182
  %541 = mul nsw i64 %540, %486, !dbg !323
  %542 = getelementptr float, ptr %503, i64 %541, !dbg !326
  %543 = load float, ptr %542, align 4, !dbg !326, !tbaa !197
  %544 = getelementptr float, ptr %513, i64 %540, !dbg !327
  %545 = load float, ptr %544, align 4, !dbg !327, !tbaa !197
  %546 = fmul float %543, %545, !dbg !328
  %547 = fpext float %handler_result13 to double, !dbg !329
  %548 = fpext float %546 to double, !dbg !329
  %549 = fptrunc double %547 to float, !dbg !329
  %550 = fptrunc double %548 to float, !dbg !329
  %handler_result14 = call float @fAddHandlerFloat(float %549, float %550), !dbg !329
  tail call void @llvm.dbg.value(metadata float %handler_result14, metadata !111, metadata !DIExpression()), !dbg !320
  %551 = or disjoint i64 %516, 3, !dbg !329
  tail call void @llvm.dbg.value(metadata i64 %551, metadata !70, metadata !DIExpression()), !dbg !182
  tail call void @llvm.dbg.value(metadata float %handler_result14, metadata !111, metadata !DIExpression()), !dbg !320
  tail call void @llvm.dbg.value(metadata i64 %551, metadata !70, metadata !DIExpression()), !dbg !182
  %552 = mul nsw i64 %551, %486, !dbg !323
  %553 = getelementptr float, ptr %504, i64 %552, !dbg !326
  %554 = load float, ptr %553, align 4, !dbg !326, !tbaa !197
  %555 = getelementptr float, ptr %514, i64 %551, !dbg !327
  %556 = load float, ptr %555, align 4, !dbg !327, !tbaa !197
  %557 = fmul float %554, %556, !dbg !328
  %558 = fpext float %handler_result14 to double, !dbg !329
  %559 = fpext float %557 to double, !dbg !329
  %560 = fptrunc double %558 to float, !dbg !329
  %561 = fptrunc double %559 to float, !dbg !329
  %handler_result15 = call float @fAddHandlerFloat(float %560, float %561), !dbg !329
  tail call void @llvm.dbg.value(metadata float %handler_result15, metadata !111, metadata !DIExpression()), !dbg !320
  %562 = add nuw nsw i64 %516, 4, !dbg !329
  tail call void @llvm.dbg.value(metadata i64 %562, metadata !70, metadata !DIExpression()), !dbg !182
  %563 = add i64 %518, 4, !dbg !321
  %564 = icmp eq i64 %563, %494, !dbg !321
  br i1 %564, label %565, label %515, !dbg !321, !llvm.loop !330

565:                                              ; preds = %515, %508
  %566 = phi float [ undef, %508 ], [ %handler_result15, %515 ]
  %567 = phi i64 [ 0, %508 ], [ %562, %515 ]
  %568 = phi float [ 0.000000e+00, %508 ], [ %handler_result15, %515 ]
  br i1 %495, label %588, label %569, !dbg !321

569:                                              ; preds = %565
  %570 = getelementptr float, ptr %96, i64 %509, !dbg !321
  br label %571, !dbg !321

571:                                              ; preds = %571, %569
  %572 = phi i64 [ %567, %569 ], [ %585, %571 ]
  %573 = phi float [ %568, %569 ], [ %handler_result16, %571 ]
  %574 = phi i64 [ 0, %569 ], [ %586, %571 ]
  tail call void @llvm.dbg.value(metadata float %573, metadata !111, metadata !DIExpression()), !dbg !320
  tail call void @llvm.dbg.value(metadata i64 %572, metadata !70, metadata !DIExpression()), !dbg !182
  %575 = mul nsw i64 %572, %486, !dbg !323
  %576 = getelementptr float, ptr %505, i64 %575, !dbg !326
  %577 = load float, ptr %576, align 4, !dbg !326, !tbaa !197
  %578 = getelementptr float, ptr %570, i64 %572, !dbg !327
  %579 = load float, ptr %578, align 4, !dbg !327, !tbaa !197
  %580 = fmul float %577, %579, !dbg !328
  %581 = fpext float %573 to double, !dbg !329
  %582 = fpext float %580 to double, !dbg !329
  %583 = fptrunc double %581 to float, !dbg !329
  %584 = fptrunc double %582 to float, !dbg !329
  %handler_result16 = call float @fAddHandlerFloat(float %583, float %584), !dbg !329
  tail call void @llvm.dbg.value(metadata float %handler_result16, metadata !111, metadata !DIExpression()), !dbg !320
  %585 = add nuw nsw i64 %572, 1, !dbg !329
  tail call void @llvm.dbg.value(metadata i64 %585, metadata !70, metadata !DIExpression()), !dbg !182
  %586 = add i64 %574, 1, !dbg !321
  %587 = icmp eq i64 %586, %492, !dbg !321
  br i1 %587, label %588, label %571, !dbg !321, !llvm.loop !332

588:                                              ; preds = %571, %565, %506
  %589 = phi float [ 0.000000e+00, %506 ], [ %566, %565 ], [ %handler_result16, %571 ], !dbg !320
  %590 = fmul float %589, %6, !dbg !333
  %591 = getelementptr float, ptr %500, i64 %507, !dbg !334
  %592 = load float, ptr %591, align 4, !dbg !335, !tbaa !197
  %593 = fpext float %590 to double, !dbg !335
  %594 = fpext float %592 to double, !dbg !335
  %595 = fptrunc double %593 to float, !dbg !335
  %596 = fptrunc double %594 to float, !dbg !335
  %handler_result17 = call float @fAddHandlerFloat(float %595, float %596), !dbg !335
  store float %handler_result17, ptr %591, align 4, !dbg !335, !tbaa !197
  %597 = add nuw nsw i64 %507, 1, !dbg !336
  tail call void @llvm.dbg.value(metadata i64 %597, metadata !69, metadata !DIExpression()), !dbg !182
  %598 = icmp eq i64 %597, %490, !dbg !337
  br i1 %598, label %599, label %506, !dbg !319, !llvm.loop !338

599:                                              ; preds = %588, %496
  %600 = add nuw nsw i64 %497, 1, !dbg !340
  tail call void @llvm.dbg.value(metadata i64 %600, metadata !66, metadata !DIExpression()), !dbg !182
  %601 = icmp eq i64 %600, %489, !dbg !317
  br i1 %601, label %603, label %496, !dbg !318, !llvm.loop !341

602:                                              ; preds = %479
  tail call void (i32, ptr, ptr, ...) @cblas_xerbla(i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #4, !dbg !343
  br label %603

603:                                              ; preds = %602, %599, %481, %476, %402, %396, %282, %276, %202, %197, %84
  ret void, !dbg !345
}

declare !dbg !347 void @cblas_xerbla(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

declare float @fAddHandlerFloat(float, float)

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
!18 = !DIFile(filename: "sgemm.c", directory: "/PI-detector/external/gsl/gsl-2.5/cblas", checksumkind: CSK_MD5, checksum: "692aea4aa3559212368089d8655e0dea")
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
!40 = distinct !DISubprogram(name: "cblas_sgemm", scope: !18, file: !18, line: 7, type: !41, scopeLine: 12, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !51)
!41 = !DISubroutineType(types: !42)
!42 = !{null, !43, !44, !44, !45, !45, !45, !47, !49, !45, !49, !45, !47, !50, !45}
!43 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!44 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !26)
!45 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!46 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!47 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !48)
!48 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
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
!198 = !{!"float", !199, i64 0}
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
!272 = !DILocation(line: 92, column: 29, scope: !269)
!273 = distinct !{!273, !265, !274, !204}
!274 = !DILocation(line: 94, column: 9, scope: !266)
!275 = distinct !{!275, !224}
!276 = !DILocation(line: 95, column: 33, scope: !94)
!277 = !DILocation(line: 95, column: 9, scope: !94)
!278 = !DILocation(line: 95, column: 24, scope: !94)
!279 = !DILocation(line: 90, column: 28, scope: !95)
!280 = !DILocation(line: 90, column: 21, scope: !95)
!281 = distinct !{!281, !263, !282, !204}
!282 = !DILocation(line: 96, column: 7, scope: !96)
!283 = !DILocation(line: 89, column: 26, scope: !98)
!284 = distinct !{!284, !262, !285, !204}
!285 = !DILocation(line: 97, column: 5, scope: !99)
!286 = !DILocation(line: 99, column: 21, scope: !110)
!287 = !DILocation(line: 99, column: 35, scope: !110)
!288 = !DILocation(line: 101, column: 19, scope: !107)
!289 = !DILocation(line: 101, column: 5, scope: !108)
!290 = !DILocation(line: 102, column: 7, scope: !105)
!291 = !DILocation(line: 103, column: 35, scope: !103)
!292 = !DILocation(line: 103, column: 33, scope: !103)
!293 = !DILocation(line: 0, scope: !103)
!294 = !DILocation(line: 104, column: 18, scope: !295)
!295 = distinct !DILexicalBlock(scope: !103, file: !2, line: 104, column: 13)
!296 = !DILocation(line: 104, column: 13, scope: !103)
!297 = !DILocation(line: 105, column: 11, scope: !298)
!298 = distinct !DILexicalBlock(scope: !299, file: !2, line: 105, column: 11)
!299 = distinct !DILexicalBlock(scope: !295, file: !2, line: 104, column: 26)
!300 = !DILocation(line: 106, column: 38, scope: !301)
!301 = distinct !DILexicalBlock(scope: !302, file: !2, line: 105, column: 36)
!302 = distinct !DILexicalBlock(scope: !298, file: !2, line: 105, column: 11)
!303 = !DILocation(line: 106, column: 36, scope: !301)
!304 = !DILocation(line: 106, column: 13, scope: !301)
!305 = !DILocation(line: 106, column: 28, scope: !301)
!306 = !DILocation(line: 105, column: 32, scope: !302)
!307 = distinct !{!307, !297, !308, !204}
!308 = !DILocation(line: 107, column: 11, scope: !298)
!309 = !DILocation(line: 102, column: 28, scope: !104)
!310 = !DILocation(line: 102, column: 21, scope: !104)
!311 = distinct !{!311, !290, !312, !204}
!312 = !DILocation(line: 109, column: 7, scope: !105)
!313 = !DILocation(line: 101, column: 25, scope: !107)
!314 = distinct !{!314, !289, !315, !204}
!315 = !DILocation(line: 110, column: 5, scope: !108)
!316 = !DILocation(line: 112, column: 35, scope: !119)
!317 = !DILocation(line: 114, column: 19, scope: !116)
!318 = !DILocation(line: 114, column: 5, scope: !117)
!319 = !DILocation(line: 115, column: 7, scope: !114)
!320 = !DILocation(line: 0, scope: !112)
!321 = !DILocation(line: 117, column: 9, scope: !322)
!322 = distinct !DILexicalBlock(scope: !112, file: !2, line: 117, column: 9)
!323 = !DILocation(line: 118, column: 25, scope: !324)
!324 = distinct !DILexicalBlock(scope: !325, file: !2, line: 117, column: 33)
!325 = distinct !DILexicalBlock(scope: !322, file: !2, line: 117, column: 9)
!326 = !DILocation(line: 118, column: 19, scope: !324)
!327 = !DILocation(line: 118, column: 36, scope: !324)
!328 = !DILocation(line: 118, column: 34, scope: !324)
!329 = !DILocation(line: 117, column: 29, scope: !325)
!330 = distinct !{!330, !321, !331, !204}
!331 = !DILocation(line: 119, column: 9, scope: !322)
!332 = distinct !{!332, !224}
!333 = !DILocation(line: 120, column: 33, scope: !112)
!334 = !DILocation(line: 120, column: 9, scope: !112)
!335 = !DILocation(line: 120, column: 24, scope: !112)
!336 = !DILocation(line: 115, column: 28, scope: !113)
!337 = !DILocation(line: 115, column: 21, scope: !113)
!338 = distinct !{!338, !319, !339, !204}
!339 = !DILocation(line: 121, column: 7, scope: !114)
!340 = !DILocation(line: 114, column: 26, scope: !116)
!341 = distinct !{!341, !318, !342, !204}
!342 = !DILocation(line: 122, column: 5, scope: !117)
!343 = !DILocation(line: 125, column: 5, scope: !344)
!344 = distinct !DILexicalBlock(scope: !119, file: !2, line: 124, column: 10)
!345 = !DILocation(line: 16, column: 1, scope: !346)
!346 = !DILexicalBlockFile(scope: !40, file: !18, discriminator: 0)
!347 = !DISubprogram(name: "cblas_xerbla", scope: !21, file: !21, line: 602, type: !348, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!348 = !DISubroutineType(types: !349)
!349 = !{null, !46, !350, !350, null}
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
