; ModuleID = 'ssyr2k.ll'
source_filename = "ssyr2k.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"./source_syr2k_r.h\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !7
@.str.2 = private unnamed_addr constant [23 x i8] c"unrecognized operation\00", align 1, !dbg !12

; Function Attrs: nounwind uwtable
define dso_local void @cblas_ssyr2k(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, float noundef %5, ptr nocapture noundef readonly %6, i32 noundef %7, ptr nocapture noundef readonly %8, i32 noundef %9, float noundef %10, ptr nocapture noundef %11, i32 noundef %12) local_unnamed_addr #0 !dbg !44 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !57, metadata !DIExpression()), !dbg !119
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !58, metadata !DIExpression()), !dbg !119
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !59, metadata !DIExpression()), !dbg !119
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !60, metadata !DIExpression()), !dbg !119
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !61, metadata !DIExpression()), !dbg !119
  tail call void @llvm.dbg.value(metadata float %5, metadata !62, metadata !DIExpression()), !dbg !119
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !63, metadata !DIExpression()), !dbg !119
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !64, metadata !DIExpression()), !dbg !119
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !65, metadata !DIExpression()), !dbg !119
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !66, metadata !DIExpression()), !dbg !119
  tail call void @llvm.dbg.value(metadata float %10, metadata !67, metadata !DIExpression()), !dbg !119
  tail call void @llvm.dbg.value(metadata ptr %11, metadata !68, metadata !DIExpression()), !dbg !119
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !69, metadata !DIExpression()), !dbg !119
  tail call void @llvm.dbg.value(metadata i32 0, metadata !77, metadata !DIExpression()), !dbg !120
  tail call void @llvm.dbg.value(metadata i32 0, metadata !79, metadata !DIExpression()), !dbg !121
  %14 = icmp eq i32 %0, 101, !dbg !122
  %15 = icmp eq i32 %2, 111, !dbg !124
  %16 = select i1 %15, i32 %4, i32 %3, !dbg !124
  %17 = select i1 %15, i32 %3, i32 %4, !dbg !124
  %18 = select i1 %14, i32 %16, i32 %17, !dbg !124
  tail call void @llvm.dbg.value(metadata i32 %18, metadata !79, metadata !DIExpression()), !dbg !121
  %19 = add i32 %0, -103, !dbg !125
  %20 = icmp ult i32 %19, -2, !dbg !125
  %21 = zext i1 %20 to i32, !dbg !125
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !77, metadata !DIExpression()), !dbg !120
  %22 = add i32 %1, -123, !dbg !127
  %23 = icmp ult i32 %22, -2, !dbg !127
  %24 = select i1 %23, i32 2, i32 %21, !dbg !127
  tail call void @llvm.dbg.value(metadata i32 %24, metadata !77, metadata !DIExpression()), !dbg !120
  %25 = add i32 %2, -114, !dbg !129
  %26 = icmp ult i32 %25, -3, !dbg !129
  %27 = select i1 %26, i32 3, i32 %24, !dbg !129
  tail call void @llvm.dbg.value(metadata i32 %27, metadata !77, metadata !DIExpression()), !dbg !120
  %28 = icmp slt i32 %3, 0, !dbg !131
  %29 = select i1 %28, i32 4, i32 %27, !dbg !124
  tail call void @llvm.dbg.value(metadata i32 %29, metadata !77, metadata !DIExpression()), !dbg !120
  %30 = icmp slt i32 %4, 0, !dbg !133
  %31 = select i1 %30, i32 5, i32 %29, !dbg !124
  tail call void @llvm.dbg.value(metadata i32 %31, metadata !77, metadata !DIExpression()), !dbg !120
  %32 = tail call i32 @llvm.smax.i32(i32 %18, i32 1), !dbg !135
  %33 = icmp sgt i32 %32, %7, !dbg !135
  %34 = select i1 %33, i32 8, i32 %31, !dbg !124
  tail call void @llvm.dbg.value(metadata i32 %34, metadata !77, metadata !DIExpression()), !dbg !120
  %35 = icmp sgt i32 %32, %9, !dbg !137
  %36 = select i1 %35, i32 11, i32 %34, !dbg !124
  tail call void @llvm.dbg.value(metadata i32 %36, metadata !77, metadata !DIExpression()), !dbg !120
  %37 = tail call i32 @llvm.smax.i32(i32 %3, i32 1), !dbg !139
  %38 = icmp sgt i32 %37, %12, !dbg !139
  %39 = select i1 %38, i32 14, i32 %36, !dbg !124
  tail call void @llvm.dbg.value(metadata i32 %39, metadata !77, metadata !DIExpression()), !dbg !120
  %40 = icmp eq i32 %39, 0, !dbg !141
  br i1 %40, label %42, label %41, !dbg !143

41:                                               ; preds = %13
  tail call void (i32, ptr, ptr, ...) @cblas_xerbla(i32 noundef %39, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #4, !dbg !141
  br label %42, !dbg !141

42:                                               ; preds = %41, %13
  %43 = fcmp oeq float %5, 0.000000e+00, !dbg !144
  %44 = fcmp oeq float %10, 1.000000e+00
  %45 = and i1 %43, %44, !dbg !146
  br i1 %45, label %650, label %46, !dbg !146

46:                                               ; preds = %42
  br i1 %14, label %47, label %50, !dbg !147

47:                                               ; preds = %46
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !75, metadata !DIExpression()), !dbg !148
  %48 = icmp eq i32 %2, 113, !dbg !149
  %49 = select i1 %48, i32 112, i32 %2, !dbg !152
  tail call void @llvm.dbg.value(metadata i32 %49, metadata !76, metadata !DIExpression()), !dbg !148
  br label %56, !dbg !153

50:                                               ; preds = %46
  %51 = icmp eq i32 %1, 121, !dbg !154
  %52 = select i1 %51, i32 122, i32 121, !dbg !156
  tail call void @llvm.dbg.value(metadata i32 %52, metadata !75, metadata !DIExpression()), !dbg !148
  %53 = and i32 %2, -2, !dbg !157
  %54 = icmp eq i32 %53, 112, !dbg !157
  %55 = select i1 %54, i32 111, i32 112
  br label %56

56:                                               ; preds = %50, %47
  %57 = phi i32 [ %49, %47 ], [ %55, %50 ], !dbg !159
  %58 = phi i32 [ %1, %47 ], [ %52, %50 ], !dbg !159
  tail call void @llvm.dbg.value(metadata i32 %58, metadata !75, metadata !DIExpression()), !dbg !148
  tail call void @llvm.dbg.value(metadata i32 %57, metadata !76, metadata !DIExpression()), !dbg !148
  %59 = fcmp oeq float %10, 0.000000e+00, !dbg !160
  br i1 %59, label %60, label %134, !dbg !162

60:                                               ; preds = %56
  %61 = icmp eq i32 %58, 121, !dbg !163
  tail call void @llvm.dbg.value(metadata i32 0, metadata !70, metadata !DIExpression()), !dbg !148
  tail call void @llvm.dbg.value(metadata i32 0, metadata !70, metadata !DIExpression()), !dbg !148
  tail call void @llvm.dbg.value(metadata i32 0, metadata !70, metadata !DIExpression()), !dbg !148
  tail call void @llvm.dbg.value(metadata i32 0, metadata !70, metadata !DIExpression()), !dbg !148
  %62 = icmp sgt i32 %3, 0, !dbg !166
  br i1 %61, label %72, label %63, !dbg !167

63:                                               ; preds = %60
  br i1 %62, label %64, label %265, !dbg !168

64:                                               ; preds = %63
  %65 = sext i32 %12 to i64, !dbg !168
  %66 = shl nsw i64 %65, 2
  %67 = zext nneg i32 %3 to i64, !dbg !171
  %68 = and i64 %67, 3, !dbg !168
  %69 = icmp ult i32 %3, 4, !dbg !168
  br i1 %69, label %239, label %70, !dbg !168

70:                                               ; preds = %64
  %71 = and i64 %67, 2147483644, !dbg !168
  br label %109, !dbg !168

72:                                               ; preds = %60
  br i1 %62, label %73, label %265, !dbg !173

73:                                               ; preds = %72
  %74 = add i32 %12, 1, !dbg !173
  %75 = zext nneg i32 %3 to i64, !dbg !176
  %76 = and i64 %75, 1, !dbg !173
  %77 = icmp eq i32 %3, 1, !dbg !173
  br i1 %77, label %226, label %78, !dbg !173

78:                                               ; preds = %73
  %79 = and i64 %75, 2147483646, !dbg !173
  br label %80, !dbg !173

80:                                               ; preds = %80, %78
  %81 = phi i64 [ 0, %78 ], [ %106, %80 ]
  %82 = phi i64 [ 0, %78 ], [ %107, %80 ]
  tail call void @llvm.dbg.value(metadata i64 %81, metadata !70, metadata !DIExpression()), !dbg !148
  tail call void @llvm.dbg.value(metadata i64 %81, metadata !73, metadata !DIExpression()), !dbg !148
  %83 = trunc i64 %81 to i32
  %84 = mul i32 %74, %83
  %85 = sext i32 %84 to i64
  %86 = shl nsw i64 %85, 2
  %87 = getelementptr i8, ptr %11, i64 %86
  %88 = trunc i64 %81 to i32
  %89 = xor i32 %88, -1
  %90 = add i32 %89, %3
  %91 = zext i32 %90 to i64
  %92 = shl nuw nsw i64 %91, 2
  %93 = add nuw nsw i64 %92, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %87, i8 0, i64 %93, i1 false), !dbg !178, !tbaa !183
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !73, metadata !DIExpression()), !dbg !148
  %94 = or disjoint i64 %81, 1, !dbg !187
  tail call void @llvm.dbg.value(metadata i64 %94, metadata !70, metadata !DIExpression()), !dbg !148
  tail call void @llvm.dbg.value(metadata i64 %94, metadata !70, metadata !DIExpression()), !dbg !148
  tail call void @llvm.dbg.value(metadata i64 %94, metadata !73, metadata !DIExpression()), !dbg !148
  %95 = trunc i64 %94 to i32
  %96 = mul i32 %74, %95
  %97 = sext i32 %96 to i64
  %98 = shl nsw i64 %97, 2
  %99 = getelementptr i8, ptr %11, i64 %98
  %100 = trunc i64 %94 to i32
  %101 = xor i32 %100, -1
  %102 = add i32 %101, %3
  %103 = zext i32 %102 to i64
  %104 = shl nuw nsw i64 %103, 2
  %105 = add nuw nsw i64 %104, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %99, i8 0, i64 %105, i1 false), !dbg !178, !tbaa !183
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !73, metadata !DIExpression()), !dbg !148
  %106 = add nuw nsw i64 %81, 2, !dbg !187
  tail call void @llvm.dbg.value(metadata i64 %106, metadata !70, metadata !DIExpression()), !dbg !148
  %107 = add i64 %82, 2, !dbg !173
  %108 = icmp eq i64 %107, %79, !dbg !173
  br i1 %108, label %224, label %80, !dbg !173, !llvm.loop !188

109:                                              ; preds = %109, %70
  %110 = phi i64 [ 0, %70 ], [ %131, %109 ]
  %111 = phi i64 [ 0, %70 ], [ %132, %109 ]
  tail call void @llvm.dbg.value(metadata i64 %110, metadata !70, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !148
  %112 = mul i64 %66, %110
  %113 = getelementptr i8, ptr %11, i64 %112
  %114 = shl nuw nsw i64 %110, 2
  %115 = or disjoint i64 %114, 4
  tail call void @llvm.dbg.value(metadata i32 0, metadata !73, metadata !DIExpression()), !dbg !148
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %113, i8 0, i64 %115, i1 false), !dbg !191, !tbaa !183
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !73, metadata !DIExpression()), !dbg !148
  %116 = or disjoint i64 %110, 1, !dbg !168
  tail call void @llvm.dbg.value(metadata i64 %116, metadata !70, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !148
  tail call void @llvm.dbg.value(metadata i64 %116, metadata !70, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !148
  %117 = mul i64 %66, %116
  %118 = getelementptr i8, ptr %11, i64 %117
  %119 = shl nuw nsw i64 %116, 2
  %120 = add nuw nsw i64 %119, 4
  tail call void @llvm.dbg.value(metadata i32 0, metadata !73, metadata !DIExpression()), !dbg !148
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %118, i8 0, i64 %120, i1 false), !dbg !191, !tbaa !183
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !73, metadata !DIExpression()), !dbg !148
  %121 = or disjoint i64 %110, 2, !dbg !168
  tail call void @llvm.dbg.value(metadata i64 %121, metadata !70, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !148
  tail call void @llvm.dbg.value(metadata i64 %121, metadata !70, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !148
  %122 = mul i64 %66, %121
  %123 = getelementptr i8, ptr %11, i64 %122
  %124 = shl nuw nsw i64 %121, 2
  %125 = or disjoint i64 %124, 4
  tail call void @llvm.dbg.value(metadata i32 0, metadata !73, metadata !DIExpression()), !dbg !148
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %123, i8 0, i64 %125, i1 false), !dbg !191, !tbaa !183
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !73, metadata !DIExpression()), !dbg !148
  %126 = or disjoint i64 %110, 3, !dbg !168
  tail call void @llvm.dbg.value(metadata i64 %126, metadata !70, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !148
  tail call void @llvm.dbg.value(metadata i64 %126, metadata !70, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !148
  %127 = mul i64 %66, %126
  %128 = getelementptr i8, ptr %11, i64 %127
  %129 = shl nuw nsw i64 %126, 2
  %130 = add nuw nsw i64 %129, 4
  tail call void @llvm.dbg.value(metadata i32 0, metadata !73, metadata !DIExpression()), !dbg !148
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %128, i8 0, i64 %130, i1 false), !dbg !191, !tbaa !183
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !73, metadata !DIExpression()), !dbg !148
  %131 = add nuw nsw i64 %110, 4, !dbg !168
  tail call void @llvm.dbg.value(metadata i64 %131, metadata !70, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !148
  %132 = add i64 %111, 4, !dbg !168
  %133 = icmp eq i64 %132, %71, !dbg !168
  br i1 %133, label %239, label %109, !dbg !168, !llvm.loop !196

134:                                              ; preds = %56
  %135 = fcmp une float %10, 1.000000e+00, !dbg !198
  br i1 %135, label %136, label %265, !dbg !200

136:                                              ; preds = %134
  %137 = icmp eq i32 %58, 121, !dbg !201
  tail call void @llvm.dbg.value(metadata i32 0, metadata !70, metadata !DIExpression()), !dbg !148
  tail call void @llvm.dbg.value(metadata i32 0, metadata !70, metadata !DIExpression()), !dbg !148
  tail call void @llvm.dbg.value(metadata i32 0, metadata !70, metadata !DIExpression()), !dbg !148
  tail call void @llvm.dbg.value(metadata i32 0, metadata !70, metadata !DIExpression()), !dbg !148
  %138 = icmp sgt i32 %3, 0, !dbg !204
  br i1 %137, label %143, label %139, !dbg !205

139:                                              ; preds = %136
  br i1 %138, label %140, label %265, !dbg !206

140:                                              ; preds = %139
  %141 = sext i32 %12 to i64, !dbg !206
  %142 = zext nneg i32 %3 to i64, !dbg !209
  br label %178, !dbg !206

143:                                              ; preds = %136
  br i1 %138, label %144, label %265, !dbg !211

144:                                              ; preds = %143
  %145 = sext i32 %12 to i64, !dbg !211
  %146 = zext nneg i32 %3 to i64, !dbg !214
  %147 = and i64 %146, 1, !dbg !211
  %148 = icmp eq i32 %3, 1, !dbg !211
  br i1 %148, label %252, label %149, !dbg !211

149:                                              ; preds = %144
  %150 = and i64 %146, 2147483646, !dbg !211
  br label %151, !dbg !211

151:                                              ; preds = %174, %149
  %152 = phi i64 [ 0, %149 ], [ %175, %174 ]
  %153 = phi i64 [ 0, %149 ], [ %176, %174 ]
  tail call void @llvm.dbg.value(metadata i64 %152, metadata !70, metadata !DIExpression()), !dbg !148
  tail call void @llvm.dbg.value(metadata i64 %152, metadata !73, metadata !DIExpression()), !dbg !148
  %154 = mul nsw i64 %152, %145
  %155 = getelementptr float, ptr %11, i64 %154, !dbg !216
  br label %156, !dbg !216

156:                                              ; preds = %156, %151
  %157 = phi i64 [ %152, %151 ], [ %161, %156 ]
  tail call void @llvm.dbg.value(metadata i64 %157, metadata !73, metadata !DIExpression()), !dbg !148
  %158 = getelementptr float, ptr %155, i64 %157, !dbg !219
  %159 = load float, ptr %158, align 4, !dbg !222, !tbaa !183
  %160 = fmul float %159, %10, !dbg !222
  store float %160, ptr %158, align 4, !dbg !222, !tbaa !183
  %161 = add nuw nsw i64 %157, 1, !dbg !223
  tail call void @llvm.dbg.value(metadata i64 %161, metadata !73, metadata !DIExpression()), !dbg !148
  %162 = icmp eq i64 %161, %146, !dbg !224
  br i1 %162, label %163, label %156, !dbg !216, !llvm.loop !225

163:                                              ; preds = %156
  %164 = or disjoint i64 %152, 1, !dbg !227
  tail call void @llvm.dbg.value(metadata i64 %164, metadata !70, metadata !DIExpression()), !dbg !148
  tail call void @llvm.dbg.value(metadata i64 %164, metadata !70, metadata !DIExpression()), !dbg !148
  tail call void @llvm.dbg.value(metadata i64 %164, metadata !73, metadata !DIExpression()), !dbg !148
  %165 = mul nsw i64 %164, %145
  %166 = getelementptr float, ptr %11, i64 %165, !dbg !216
  br label %167, !dbg !216

167:                                              ; preds = %167, %163
  %168 = phi i64 [ %164, %163 ], [ %172, %167 ]
  tail call void @llvm.dbg.value(metadata i64 %168, metadata !73, metadata !DIExpression()), !dbg !148
  %169 = getelementptr float, ptr %166, i64 %168, !dbg !219
  %170 = load float, ptr %169, align 4, !dbg !222, !tbaa !183
  %171 = fmul float %170, %10, !dbg !222
  store float %171, ptr %169, align 4, !dbg !222, !tbaa !183
  %172 = add nuw nsw i64 %168, 1, !dbg !223
  tail call void @llvm.dbg.value(metadata i64 %172, metadata !73, metadata !DIExpression()), !dbg !148
  %173 = icmp eq i64 %172, %146, !dbg !224
  br i1 %173, label %174, label %167, !dbg !216, !llvm.loop !225

174:                                              ; preds = %167
  %175 = add nuw nsw i64 %152, 2, !dbg !227
  tail call void @llvm.dbg.value(metadata i64 %175, metadata !70, metadata !DIExpression()), !dbg !148
  %176 = add i64 %153, 2, !dbg !211
  %177 = icmp eq i64 %176, %150, !dbg !211
  br i1 %177, label %252, label %151, !dbg !211, !llvm.loop !228

178:                                              ; preds = %220, %140
  %179 = phi i64 [ 0, %140 ], [ %221, %220 ]
  %180 = phi i64 [ 1, %140 ], [ %222, %220 ]
  tail call void @llvm.dbg.value(metadata i64 %179, metadata !70, metadata !DIExpression()), !dbg !148
  %181 = mul nsw i64 %179, %141
  tail call void @llvm.dbg.value(metadata i32 0, metadata !73, metadata !DIExpression()), !dbg !148
  %182 = getelementptr float, ptr %11, i64 %181, !dbg !230
  %183 = and i64 %180, 3, !dbg !230
  %184 = icmp ult i64 %179, 3, !dbg !230
  br i1 %184, label %208, label %185, !dbg !230

185:                                              ; preds = %178
  %186 = and i64 %180, 9223372036854775804, !dbg !230
  br label %187, !dbg !230

187:                                              ; preds = %187, %185
  %188 = phi i64 [ 0, %185 ], [ %205, %187 ]
  %189 = phi i64 [ 0, %185 ], [ %206, %187 ]
  tail call void @llvm.dbg.value(metadata i64 %188, metadata !73, metadata !DIExpression()), !dbg !148
  %190 = getelementptr float, ptr %182, i64 %188, !dbg !233
  %191 = load float, ptr %190, align 4, !dbg !236, !tbaa !183
  %192 = fmul float %191, %10, !dbg !236
  store float %192, ptr %190, align 4, !dbg !236, !tbaa !183
  %193 = or disjoint i64 %188, 1, !dbg !237
  tail call void @llvm.dbg.value(metadata i64 %193, metadata !73, metadata !DIExpression()), !dbg !148
  tail call void @llvm.dbg.value(metadata i64 %193, metadata !73, metadata !DIExpression()), !dbg !148
  %194 = getelementptr float, ptr %182, i64 %193, !dbg !233
  %195 = load float, ptr %194, align 4, !dbg !236, !tbaa !183
  %196 = fmul float %195, %10, !dbg !236
  store float %196, ptr %194, align 4, !dbg !236, !tbaa !183
  %197 = or disjoint i64 %188, 2, !dbg !237
  tail call void @llvm.dbg.value(metadata i64 %197, metadata !73, metadata !DIExpression()), !dbg !148
  tail call void @llvm.dbg.value(metadata i64 %197, metadata !73, metadata !DIExpression()), !dbg !148
  %198 = getelementptr float, ptr %182, i64 %197, !dbg !233
  %199 = load float, ptr %198, align 4, !dbg !236, !tbaa !183
  %200 = fmul float %199, %10, !dbg !236
  store float %200, ptr %198, align 4, !dbg !236, !tbaa !183
  %201 = or disjoint i64 %188, 3, !dbg !237
  tail call void @llvm.dbg.value(metadata i64 %201, metadata !73, metadata !DIExpression()), !dbg !148
  tail call void @llvm.dbg.value(metadata i64 %201, metadata !73, metadata !DIExpression()), !dbg !148
  %202 = getelementptr float, ptr %182, i64 %201, !dbg !233
  %203 = load float, ptr %202, align 4, !dbg !236, !tbaa !183
  %204 = fmul float %203, %10, !dbg !236
  store float %204, ptr %202, align 4, !dbg !236, !tbaa !183
  %205 = add nuw nsw i64 %188, 4, !dbg !237
  tail call void @llvm.dbg.value(metadata i64 %205, metadata !73, metadata !DIExpression()), !dbg !148
  %206 = add i64 %189, 4, !dbg !230
  %207 = icmp eq i64 %206, %186, !dbg !230
  br i1 %207, label %208, label %187, !dbg !230, !llvm.loop !238

208:                                              ; preds = %187, %178
  %209 = phi i64 [ 0, %178 ], [ %205, %187 ]
  %210 = icmp eq i64 %183, 0, !dbg !230
  br i1 %210, label %220, label %211, !dbg !230

211:                                              ; preds = %211, %208
  %212 = phi i64 [ %217, %211 ], [ %209, %208 ]
  %213 = phi i64 [ %218, %211 ], [ 0, %208 ]
  tail call void @llvm.dbg.value(metadata i64 %212, metadata !73, metadata !DIExpression()), !dbg !148
  %214 = getelementptr float, ptr %182, i64 %212, !dbg !233
  %215 = load float, ptr %214, align 4, !dbg !236, !tbaa !183
  %216 = fmul float %215, %10, !dbg !236
  store float %216, ptr %214, align 4, !dbg !236, !tbaa !183
  %217 = add nuw nsw i64 %212, 1, !dbg !237
  tail call void @llvm.dbg.value(metadata i64 %217, metadata !73, metadata !DIExpression()), !dbg !148
  %218 = add i64 %213, 1, !dbg !230
  %219 = icmp eq i64 %218, %183, !dbg !230
  br i1 %219, label %220, label %211, !dbg !230, !llvm.loop !240

220:                                              ; preds = %211, %208
  %221 = add nuw nsw i64 %179, 1, !dbg !242
  tail call void @llvm.dbg.value(metadata i64 %221, metadata !70, metadata !DIExpression()), !dbg !148
  %222 = add nuw nsw i64 %180, 1, !dbg !206
  %223 = icmp eq i64 %221, %142, !dbg !209
  br i1 %223, label %265, label %178, !dbg !206, !llvm.loop !243

224:                                              ; preds = %80
  %225 = trunc i64 %106 to i32
  br label %226, !dbg !173

226:                                              ; preds = %224, %73
  %227 = phi i32 [ 0, %73 ], [ %225, %224 ]
  %228 = icmp eq i64 %76, 0, !dbg !173
  br i1 %228, label %265, label %229, !dbg !173

229:                                              ; preds = %226
  tail call void @llvm.dbg.value(metadata i32 %227, metadata !70, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)), !dbg !148
  tail call void @llvm.dbg.value(metadata i32 %227, metadata !73, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)), !dbg !148
  %230 = mul i32 %74, %227
  %231 = sext i32 %230 to i64
  %232 = shl nsw i64 %231, 2
  %233 = getelementptr i8, ptr %11, i64 %232
  %234 = xor i32 %227, -1
  %235 = add i32 %234, %3
  %236 = zext i32 %235 to i64
  %237 = shl nuw nsw i64 %236, 2
  %238 = add nuw nsw i64 %237, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %233, i8 0, i64 %238, i1 false), !dbg !178, !tbaa !183
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !73, metadata !DIExpression()), !dbg !148
  tail call void @llvm.dbg.value(metadata i32 %227, metadata !70, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)), !dbg !148
  br label %265, !dbg !245

239:                                              ; preds = %109, %64
  %240 = phi i64 [ 0, %64 ], [ %131, %109 ]
  %241 = icmp eq i64 %68, 0, !dbg !168
  br i1 %241, label %265, label %242, !dbg !168

242:                                              ; preds = %242, %239
  %243 = phi i64 [ %249, %242 ], [ %240, %239 ]
  %244 = phi i64 [ %250, %242 ], [ 0, %239 ]
  tail call void @llvm.dbg.value(metadata i64 %243, metadata !70, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !148
  %245 = mul i64 %66, %243
  %246 = getelementptr i8, ptr %11, i64 %245
  %247 = shl nuw nsw i64 %243, 2
  %248 = add nuw nsw i64 %247, 4
  tail call void @llvm.dbg.value(metadata i32 0, metadata !73, metadata !DIExpression()), !dbg !148
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %246, i8 0, i64 %248, i1 false), !dbg !191, !tbaa !183
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !73, metadata !DIExpression()), !dbg !148
  %249 = add nuw nsw i64 %243, 1, !dbg !168
  tail call void @llvm.dbg.value(metadata i64 %249, metadata !70, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !148
  %250 = add i64 %244, 1, !dbg !168
  %251 = icmp eq i64 %250, %68, !dbg !168
  br i1 %251, label %265, label %242, !dbg !168, !llvm.loop !246

252:                                              ; preds = %174, %144
  %253 = phi i64 [ 0, %144 ], [ %175, %174 ]
  %254 = icmp eq i64 %147, 0, !dbg !216
  br i1 %254, label %265, label %255, !dbg !216

255:                                              ; preds = %252
  tail call void @llvm.dbg.value(metadata i64 %253, metadata !70, metadata !DIExpression()), !dbg !148
  tail call void @llvm.dbg.value(metadata i64 %253, metadata !73, metadata !DIExpression()), !dbg !148
  %256 = mul nsw i64 %253, %145
  %257 = getelementptr float, ptr %11, i64 %256, !dbg !216
  br label %258, !dbg !216

258:                                              ; preds = %258, %255
  %259 = phi i64 [ %253, %255 ], [ %263, %258 ]
  tail call void @llvm.dbg.value(metadata i64 %259, metadata !73, metadata !DIExpression()), !dbg !148
  %260 = getelementptr float, ptr %257, i64 %259, !dbg !219
  %261 = load float, ptr %260, align 4, !dbg !222, !tbaa !183
  %262 = fmul float %261, %10, !dbg !222
  store float %262, ptr %260, align 4, !dbg !222, !tbaa !183
  %263 = add nuw nsw i64 %259, 1, !dbg !223
  tail call void @llvm.dbg.value(metadata i64 %263, metadata !73, metadata !DIExpression()), !dbg !148
  %264 = icmp eq i64 %263, %146, !dbg !224
  br i1 %264, label %265, label %258, !dbg !216, !llvm.loop !225

265:                                              ; preds = %258, %252, %242, %239, %229, %226, %220, %143, %139, %134, %72, %63
  br i1 %43, label %650, label %266, !dbg !245

266:                                              ; preds = %265
  %267 = icmp eq i32 %58, 121, !dbg !247
  %268 = icmp eq i32 %57, 111
  %269 = and i1 %268, %267, !dbg !248
  br i1 %269, label %270, label %379, !dbg !248

270:                                              ; preds = %266
  tail call void @llvm.dbg.value(metadata i32 0, metadata !70, metadata !DIExpression()), !dbg !148
  %271 = icmp sgt i32 %3, 0, !dbg !249
  br i1 %271, label %272, label %650, !dbg !250

272:                                              ; preds = %270
  %273 = icmp sgt i32 %4, 0
  %274 = sext i32 %9 to i64, !dbg !250
  %275 = sext i32 %7 to i64, !dbg !250
  %276 = sext i32 %12 to i64, !dbg !250
  %277 = zext nneg i32 %3 to i64, !dbg !249
  %278 = zext i32 %4 to i64
  %279 = and i64 %278, 1
  %280 = icmp eq i32 %4, 1
  %281 = and i64 %278, 2147483646
  %282 = icmp eq i64 %279, 0
  br label %283, !dbg !250

283:                                              ; preds = %376, %272
  %284 = phi i64 [ 0, %272 ], [ %377, %376 ]
  tail call void @llvm.dbg.value(metadata i64 %284, metadata !70, metadata !DIExpression()), !dbg !148
  tail call void @llvm.dbg.value(metadata i64 %284, metadata !73, metadata !DIExpression()), !dbg !148
  %285 = mul nsw i64 %284, %275
  %286 = mul nsw i64 %284, %274
  %287 = mul nsw i64 %284, %276
  %288 = getelementptr float, ptr %6, i64 %285
  %289 = getelementptr float, ptr %8, i64 %286
  %290 = getelementptr float, ptr %11, i64 %287, !dbg !251
  br label %291, !dbg !251

291:                                              ; preds = %365, %283
  %292 = phi i64 [ %284, %283 ], [ %374, %365 ]
  tail call void @llvm.dbg.value(metadata i64 %292, metadata !73, metadata !DIExpression()), !dbg !148
  tail call void @llvm.dbg.value(metadata i32 0, metadata !74, metadata !DIExpression()), !dbg !148
  tail call void @llvm.dbg.value(metadata float 0.000000e+00, metadata !81, metadata !DIExpression()), !dbg !252
  br i1 %273, label %293, label %365, !dbg !253

293:                                              ; preds = %291
  %294 = mul nsw i64 %292, %274
  %295 = mul nsw i64 %292, %275
  %296 = getelementptr float, ptr %8, i64 %294, !dbg !253
  %297 = getelementptr float, ptr %6, i64 %295, !dbg !253
  br i1 %280, label %342, label %298, !dbg !253

298:                                              ; preds = %298, %293
  %299 = phi i64 [ %339, %298 ], [ 0, %293 ]
  %300 = phi float [ %handler_result3, %298 ], [ 0.000000e+00, %293 ]
  %301 = phi i64 [ %340, %298 ], [ 0, %293 ]
  tail call void @llvm.dbg.value(metadata i64 %299, metadata !74, metadata !DIExpression()), !dbg !148
  tail call void @llvm.dbg.value(metadata float %300, metadata !81, metadata !DIExpression()), !dbg !252
  %302 = getelementptr float, ptr %288, i64 %299, !dbg !255
  %303 = load float, ptr %302, align 4, !dbg !255, !tbaa !183
  %304 = getelementptr float, ptr %296, i64 %299, !dbg !258
  %305 = load float, ptr %304, align 4, !dbg !258, !tbaa !183
  %306 = fmul float %303, %305, !dbg !259
  %307 = getelementptr float, ptr %289, i64 %299, !dbg !260
  %308 = load float, ptr %307, align 4, !dbg !260, !tbaa !183
  %309 = getelementptr float, ptr %297, i64 %299, !dbg !261
  %310 = load float, ptr %309, align 4, !dbg !261, !tbaa !183
  %311 = fmul float %308, %310, !dbg !262
  %312 = fpext float %306 to double, !dbg !263
  %313 = fpext float %311 to double, !dbg !263
  %314 = fptrunc double %312 to float, !dbg !263
  %315 = fptrunc double %313 to float, !dbg !263
  %handler_result = call float @fAddHandlerFloat(float %314, float %315), !dbg !263
  %316 = fpext float %300 to double, !dbg !264
  %317 = fpext float %handler_result to double, !dbg !264
  %318 = fptrunc double %316 to float, !dbg !264
  %319 = fptrunc double %317 to float, !dbg !264
  %handler_result1 = call float @fAddHandlerFloat(float %318, float %319), !dbg !264
  tail call void @llvm.dbg.value(metadata float %handler_result1, metadata !81, metadata !DIExpression()), !dbg !252
  %320 = or disjoint i64 %299, 1, !dbg !264
  tail call void @llvm.dbg.value(metadata i64 %320, metadata !74, metadata !DIExpression()), !dbg !148
  tail call void @llvm.dbg.value(metadata i64 %320, metadata !74, metadata !DIExpression()), !dbg !148
  tail call void @llvm.dbg.value(metadata float %handler_result1, metadata !81, metadata !DIExpression()), !dbg !252
  %321 = getelementptr float, ptr %288, i64 %320, !dbg !255
  %322 = load float, ptr %321, align 4, !dbg !255, !tbaa !183
  %323 = getelementptr float, ptr %296, i64 %320, !dbg !258
  %324 = load float, ptr %323, align 4, !dbg !258, !tbaa !183
  %325 = fmul float %322, %324, !dbg !259
  %326 = getelementptr float, ptr %289, i64 %320, !dbg !260
  %327 = load float, ptr %326, align 4, !dbg !260, !tbaa !183
  %328 = getelementptr float, ptr %297, i64 %320, !dbg !261
  %329 = load float, ptr %328, align 4, !dbg !261, !tbaa !183
  %330 = fmul float %327, %329, !dbg !262
  %331 = fpext float %325 to double, !dbg !263
  %332 = fpext float %330 to double, !dbg !263
  %333 = fptrunc double %331 to float, !dbg !263
  %334 = fptrunc double %332 to float, !dbg !263
  %handler_result2 = call float @fAddHandlerFloat(float %333, float %334), !dbg !263
  %335 = fpext float %handler_result1 to double, !dbg !264
  %336 = fpext float %handler_result2 to double, !dbg !264
  %337 = fptrunc double %335 to float, !dbg !264
  %338 = fptrunc double %336 to float, !dbg !264
  %handler_result3 = call float @fAddHandlerFloat(float %337, float %338), !dbg !264
  tail call void @llvm.dbg.value(metadata float %handler_result3, metadata !81, metadata !DIExpression()), !dbg !252
  %339 = add nuw nsw i64 %299, 2, !dbg !264
  tail call void @llvm.dbg.value(metadata i64 %339, metadata !74, metadata !DIExpression()), !dbg !148
  %340 = add i64 %301, 2, !dbg !253
  %341 = icmp eq i64 %340, %281, !dbg !253
  br i1 %341, label %342, label %298, !dbg !253, !llvm.loop !265

342:                                              ; preds = %298, %293
  %343 = phi float [ undef, %293 ], [ %handler_result3, %298 ]
  %344 = phi i64 [ 0, %293 ], [ %339, %298 ]
  %345 = phi float [ 0.000000e+00, %293 ], [ %handler_result3, %298 ]
  br i1 %282, label %365, label %346, !dbg !253

346:                                              ; preds = %342
  tail call void @llvm.dbg.value(metadata i64 %344, metadata !74, metadata !DIExpression()), !dbg !148
  tail call void @llvm.dbg.value(metadata float %345, metadata !81, metadata !DIExpression()), !dbg !252
  %347 = getelementptr float, ptr %288, i64 %344, !dbg !255
  %348 = load float, ptr %347, align 4, !dbg !255, !tbaa !183
  %349 = getelementptr float, ptr %296, i64 %344, !dbg !258
  %350 = load float, ptr %349, align 4, !dbg !258, !tbaa !183
  %351 = fmul float %348, %350, !dbg !259
  %352 = getelementptr float, ptr %289, i64 %344, !dbg !260
  %353 = load float, ptr %352, align 4, !dbg !260, !tbaa !183
  %354 = getelementptr float, ptr %297, i64 %344, !dbg !261
  %355 = load float, ptr %354, align 4, !dbg !261, !tbaa !183
  %356 = fmul float %353, %355, !dbg !262
  %357 = fpext float %351 to double, !dbg !263
  %358 = fpext float %356 to double, !dbg !263
  %359 = fptrunc double %357 to float, !dbg !263
  %360 = fptrunc double %358 to float, !dbg !263
  %handler_result4 = call float @fAddHandlerFloat(float %359, float %360), !dbg !263
  %361 = fpext float %345 to double, !dbg !267
  %362 = fpext float %handler_result4 to double, !dbg !267
  %363 = fptrunc double %361 to float, !dbg !267
  %364 = fptrunc double %362 to float, !dbg !267
  %handler_result5 = call float @fAddHandlerFloat(float %363, float %364), !dbg !267
  tail call void @llvm.dbg.value(metadata float %handler_result5, metadata !81, metadata !DIExpression()), !dbg !252
  tail call void @llvm.dbg.value(metadata i64 %344, metadata !74, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !148
  br label %365, !dbg !267

365:                                              ; preds = %346, %342, %291
  %366 = phi float [ 0.000000e+00, %291 ], [ %343, %342 ], [ %handler_result5, %346 ], !dbg !252
  %367 = fmul float %366, %5, !dbg !267
  %368 = getelementptr float, ptr %290, i64 %292, !dbg !268
  %369 = load float, ptr %368, align 4, !dbg !269, !tbaa !183
  %370 = fpext float %367 to double, !dbg !269
  %371 = fpext float %369 to double, !dbg !269
  %372 = fptrunc double %370 to float, !dbg !269
  %373 = fptrunc double %371 to float, !dbg !269
  %handler_result6 = call float @fAddHandlerFloat(float %372, float %373), !dbg !269
  store float %handler_result6, ptr %368, align 4, !dbg !269, !tbaa !183
  %374 = add nuw nsw i64 %292, 1, !dbg !270
  tail call void @llvm.dbg.value(metadata i64 %374, metadata !73, metadata !DIExpression()), !dbg !148
  %375 = icmp eq i64 %374, %277, !dbg !271
  br i1 %375, label %376, label %291, !dbg !251, !llvm.loop !272

376:                                              ; preds = %365
  %377 = add nuw nsw i64 %284, 1, !dbg !274
  tail call void @llvm.dbg.value(metadata i64 %377, metadata !70, metadata !DIExpression()), !dbg !148
  %378 = icmp eq i64 %377, %277, !dbg !249
  br i1 %378, label %650, label %283, !dbg !250, !llvm.loop !275

379:                                              ; preds = %266
  %380 = icmp eq i32 %57, 112
  %381 = and i1 %380, %267, !dbg !277
  br i1 %381, label %382, label %435, !dbg !277

382:                                              ; preds = %379
  tail call void @llvm.dbg.value(metadata i32 0, metadata !74, metadata !DIExpression()), !dbg !148
  %383 = icmp sgt i32 %4, 0, !dbg !278
  br i1 %383, label %384, label %650, !dbg !279

384:                                              ; preds = %382
  %385 = icmp sgt i32 %3, 0
  %386 = sext i32 %7 to i64, !dbg !279
  %387 = sext i32 %9 to i64, !dbg !279
  %388 = zext nneg i32 %4 to i64, !dbg !278
  %389 = zext nneg i32 %3 to i64
  br label %390, !dbg !279

390:                                              ; preds = %432, %384
  %391 = phi i64 [ 0, %384 ], [ %433, %432 ]
  tail call void @llvm.dbg.value(metadata i64 %391, metadata !74, metadata !DIExpression()), !dbg !148
  tail call void @llvm.dbg.value(metadata i32 0, metadata !70, metadata !DIExpression()), !dbg !148
  br i1 %385, label %392, label %432, !dbg !280

392:                                              ; preds = %390
  %393 = mul nsw i64 %391, %386
  %394 = mul nsw i64 %391, %387
  %395 = getelementptr float, ptr %6, i64 %393, !dbg !280
  %396 = getelementptr float, ptr %8, i64 %394, !dbg !280
  %397 = getelementptr float, ptr %8, i64 %394
  %398 = getelementptr float, ptr %6, i64 %393
  br label %399, !dbg !280

399:                                              ; preds = %429, %392
  %400 = phi i64 [ 0, %392 ], [ %430, %429 ]
  tail call void @llvm.dbg.value(metadata i64 %400, metadata !70, metadata !DIExpression()), !dbg !148
  %401 = getelementptr float, ptr %395, i64 %400, !dbg !281
  %402 = load float, ptr %401, align 4, !dbg !281, !tbaa !183
  %403 = fmul float %402, %5, !dbg !282
  tail call void @llvm.dbg.value(metadata float %403, metadata !90, metadata !DIExpression()), !dbg !283
  %404 = getelementptr float, ptr %396, i64 %400, !dbg !284
  %405 = load float, ptr %404, align 4, !dbg !284, !tbaa !183
  %406 = fmul float %405, %5, !dbg !285
  tail call void @llvm.dbg.value(metadata float %406, metadata !99, metadata !DIExpression()), !dbg !283
  tail call void @llvm.dbg.value(metadata i64 %400, metadata !73, metadata !DIExpression()), !dbg !148
  %407 = mul nsw i64 %400, %386
  %408 = getelementptr float, ptr %11, i64 %407, !dbg !286
  br label %409, !dbg !286

409:                                              ; preds = %409, %399
  %410 = phi i64 [ %400, %399 ], [ %427, %409 ]
  tail call void @llvm.dbg.value(metadata i64 %410, metadata !73, metadata !DIExpression()), !dbg !148
  %411 = getelementptr float, ptr %397, i64 %410, !dbg !288
  %412 = load float, ptr %411, align 4, !dbg !288, !tbaa !183
  %413 = fmul float %403, %412, !dbg !291
  %414 = getelementptr float, ptr %398, i64 %410, !dbg !292
  %415 = load float, ptr %414, align 4, !dbg !292, !tbaa !183
  %416 = fmul float %406, %415, !dbg !293
  %417 = fpext float %413 to double, !dbg !294
  %418 = fpext float %416 to double, !dbg !294
  %419 = fptrunc double %417 to float, !dbg !294
  %420 = fptrunc double %418 to float, !dbg !294
  %handler_result7 = call float @fAddHandlerFloat(float %419, float %420), !dbg !294
  %421 = getelementptr float, ptr %408, i64 %410, !dbg !294
  %422 = load float, ptr %421, align 4, !dbg !295, !tbaa !183
  %423 = fpext float %422 to double, !dbg !295
  %424 = fpext float %handler_result7 to double, !dbg !295
  %425 = fptrunc double %423 to float, !dbg !295
  %426 = fptrunc double %424 to float, !dbg !295
  %handler_result8 = call float @fAddHandlerFloat(float %425, float %426), !dbg !295
  store float %handler_result8, ptr %421, align 4, !dbg !295, !tbaa !183
  %427 = add nuw nsw i64 %410, 1, !dbg !296
  tail call void @llvm.dbg.value(metadata i64 %427, metadata !73, metadata !DIExpression()), !dbg !148
  %428 = icmp eq i64 %427, %389, !dbg !297
  br i1 %428, label %429, label %409, !dbg !286, !llvm.loop !298

429:                                              ; preds = %409
  %430 = add nuw nsw i64 %400, 1, !dbg !300
  tail call void @llvm.dbg.value(metadata i64 %430, metadata !70, metadata !DIExpression()), !dbg !148
  %431 = icmp eq i64 %430, %389, !dbg !301
  br i1 %431, label %432, label %399, !dbg !280, !llvm.loop !302

432:                                              ; preds = %429, %390
  %433 = add nuw nsw i64 %391, 1, !dbg !304
  tail call void @llvm.dbg.value(metadata i64 %433, metadata !74, metadata !DIExpression()), !dbg !148
  %434 = icmp eq i64 %433, %388, !dbg !278
  br i1 %434, label %650, label %390, !dbg !279, !llvm.loop !305

435:                                              ; preds = %379
  %436 = icmp eq i32 %58, 122, !dbg !307
  %437 = and i1 %268, %436, !dbg !308
  br i1 %437, label %438, label %549, !dbg !308

438:                                              ; preds = %435
  tail call void @llvm.dbg.value(metadata i32 0, metadata !70, metadata !DIExpression()), !dbg !148
  %439 = icmp sgt i32 %3, 0, !dbg !309
  br i1 %439, label %440, label %650, !dbg !310

440:                                              ; preds = %438
  %441 = icmp sgt i32 %4, 0
  %442 = sext i32 %9 to i64, !dbg !310
  %443 = sext i32 %7 to i64, !dbg !310
  %444 = sext i32 %12 to i64, !dbg !310
  %445 = zext nneg i32 %3 to i64, !dbg !309
  %446 = zext i32 %4 to i64
  %447 = and i64 %446, 1
  %448 = icmp eq i32 %4, 1
  %449 = and i64 %446, 2147483646
  %450 = icmp eq i64 %447, 0
  br label %451, !dbg !310

451:                                              ; preds = %545, %440
  %452 = phi i64 [ 0, %440 ], [ %546, %545 ]
  %453 = phi i64 [ 1, %440 ], [ %547, %545 ]
  tail call void @llvm.dbg.value(metadata i64 %452, metadata !70, metadata !DIExpression()), !dbg !148
  %454 = mul nsw i64 %452, %444
  tail call void @llvm.dbg.value(metadata i32 0, metadata !73, metadata !DIExpression()), !dbg !148
  %455 = mul nsw i64 %452, %443
  %456 = mul nsw i64 %452, %442
  %457 = getelementptr float, ptr %6, i64 %455
  %458 = getelementptr float, ptr %8, i64 %456
  %459 = getelementptr float, ptr %11, i64 %454, !dbg !311
  br label %460, !dbg !311

460:                                              ; preds = %534, %451
  %461 = phi i64 [ 0, %451 ], [ %543, %534 ]
  tail call void @llvm.dbg.value(metadata i64 %461, metadata !73, metadata !DIExpression()), !dbg !148
  tail call void @llvm.dbg.value(metadata float 0.000000e+00, metadata !100, metadata !DIExpression()), !dbg !312
  tail call void @llvm.dbg.value(metadata i32 0, metadata !74, metadata !DIExpression()), !dbg !148
  br i1 %441, label %462, label %534, !dbg !313

462:                                              ; preds = %460
  %463 = mul nsw i64 %461, %442
  %464 = mul nsw i64 %461, %443
  %465 = getelementptr float, ptr %8, i64 %463, !dbg !313
  %466 = getelementptr float, ptr %6, i64 %464, !dbg !313
  br i1 %448, label %511, label %467, !dbg !313

467:                                              ; preds = %467, %462
  %468 = phi i64 [ %508, %467 ], [ 0, %462 ]
  %469 = phi float [ %handler_result12, %467 ], [ 0.000000e+00, %462 ]
  %470 = phi i64 [ %509, %467 ], [ 0, %462 ]
  tail call void @llvm.dbg.value(metadata float %469, metadata !100, metadata !DIExpression()), !dbg !312
  tail call void @llvm.dbg.value(metadata i64 %468, metadata !74, metadata !DIExpression()), !dbg !148
  %471 = getelementptr float, ptr %457, i64 %468, !dbg !315
  %472 = load float, ptr %471, align 4, !dbg !315, !tbaa !183
  %473 = getelementptr float, ptr %465, i64 %468, !dbg !318
  %474 = load float, ptr %473, align 4, !dbg !318, !tbaa !183
  %475 = fmul float %472, %474, !dbg !319
  %476 = getelementptr float, ptr %458, i64 %468, !dbg !320
  %477 = load float, ptr %476, align 4, !dbg !320, !tbaa !183
  %478 = getelementptr float, ptr %466, i64 %468, !dbg !321
  %479 = load float, ptr %478, align 4, !dbg !321, !tbaa !183
  %480 = fmul float %477, %479, !dbg !322
  %481 = fpext float %475 to double, !dbg !323
  %482 = fpext float %480 to double, !dbg !323
  %483 = fptrunc double %481 to float, !dbg !323
  %484 = fptrunc double %482 to float, !dbg !323
  %handler_result9 = call float @fAddHandlerFloat(float %483, float %484), !dbg !323
  %485 = fpext float %469 to double, !dbg !324
  %486 = fpext float %handler_result9 to double, !dbg !324
  %487 = fptrunc double %485 to float, !dbg !324
  %488 = fptrunc double %486 to float, !dbg !324
  %handler_result10 = call float @fAddHandlerFloat(float %487, float %488), !dbg !324
  tail call void @llvm.dbg.value(metadata float %handler_result10, metadata !100, metadata !DIExpression()), !dbg !312
  %489 = or disjoint i64 %468, 1, !dbg !324
  tail call void @llvm.dbg.value(metadata i64 %489, metadata !74, metadata !DIExpression()), !dbg !148
  tail call void @llvm.dbg.value(metadata float %handler_result10, metadata !100, metadata !DIExpression()), !dbg !312
  tail call void @llvm.dbg.value(metadata i64 %489, metadata !74, metadata !DIExpression()), !dbg !148
  %490 = getelementptr float, ptr %457, i64 %489, !dbg !315
  %491 = load float, ptr %490, align 4, !dbg !315, !tbaa !183
  %492 = getelementptr float, ptr %465, i64 %489, !dbg !318
  %493 = load float, ptr %492, align 4, !dbg !318, !tbaa !183
  %494 = fmul float %491, %493, !dbg !319
  %495 = getelementptr float, ptr %458, i64 %489, !dbg !320
  %496 = load float, ptr %495, align 4, !dbg !320, !tbaa !183
  %497 = getelementptr float, ptr %466, i64 %489, !dbg !321
  %498 = load float, ptr %497, align 4, !dbg !321, !tbaa !183
  %499 = fmul float %496, %498, !dbg !322
  %500 = fpext float %494 to double, !dbg !323
  %501 = fpext float %499 to double, !dbg !323
  %502 = fptrunc double %500 to float, !dbg !323
  %503 = fptrunc double %501 to float, !dbg !323
  %handler_result11 = call float @fAddHandlerFloat(float %502, float %503), !dbg !323
  %504 = fpext float %handler_result10 to double, !dbg !324
  %505 = fpext float %handler_result11 to double, !dbg !324
  %506 = fptrunc double %504 to float, !dbg !324
  %507 = fptrunc double %505 to float, !dbg !324
  %handler_result12 = call float @fAddHandlerFloat(float %506, float %507), !dbg !324
  tail call void @llvm.dbg.value(metadata float %handler_result12, metadata !100, metadata !DIExpression()), !dbg !312
  %508 = add nuw nsw i64 %468, 2, !dbg !324
  tail call void @llvm.dbg.value(metadata i64 %508, metadata !74, metadata !DIExpression()), !dbg !148
  %509 = add i64 %470, 2, !dbg !313
  %510 = icmp eq i64 %509, %449, !dbg !313
  br i1 %510, label %511, label %467, !dbg !313, !llvm.loop !325

511:                                              ; preds = %467, %462
  %512 = phi float [ undef, %462 ], [ %handler_result12, %467 ]
  %513 = phi i64 [ 0, %462 ], [ %508, %467 ]
  %514 = phi float [ 0.000000e+00, %462 ], [ %handler_result12, %467 ]
  br i1 %450, label %534, label %515, !dbg !313

515:                                              ; preds = %511
  tail call void @llvm.dbg.value(metadata float %514, metadata !100, metadata !DIExpression()), !dbg !312
  tail call void @llvm.dbg.value(metadata i64 %513, metadata !74, metadata !DIExpression()), !dbg !148
  %516 = getelementptr float, ptr %457, i64 %513, !dbg !315
  %517 = load float, ptr %516, align 4, !dbg !315, !tbaa !183
  %518 = getelementptr float, ptr %465, i64 %513, !dbg !318
  %519 = load float, ptr %518, align 4, !dbg !318, !tbaa !183
  %520 = fmul float %517, %519, !dbg !319
  %521 = getelementptr float, ptr %458, i64 %513, !dbg !320
  %522 = load float, ptr %521, align 4, !dbg !320, !tbaa !183
  %523 = getelementptr float, ptr %466, i64 %513, !dbg !321
  %524 = load float, ptr %523, align 4, !dbg !321, !tbaa !183
  %525 = fmul float %522, %524, !dbg !322
  %526 = fpext float %520 to double, !dbg !323
  %527 = fpext float %525 to double, !dbg !323
  %528 = fptrunc double %526 to float, !dbg !323
  %529 = fptrunc double %527 to float, !dbg !323
  %handler_result13 = call float @fAddHandlerFloat(float %528, float %529), !dbg !323
  %530 = fpext float %514 to double, !dbg !327
  %531 = fpext float %handler_result13 to double, !dbg !327
  %532 = fptrunc double %530 to float, !dbg !327
  %533 = fptrunc double %531 to float, !dbg !327
  %handler_result14 = call float @fAddHandlerFloat(float %532, float %533), !dbg !327
  tail call void @llvm.dbg.value(metadata float %handler_result14, metadata !100, metadata !DIExpression()), !dbg !312
  tail call void @llvm.dbg.value(metadata i64 %513, metadata !74, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !148
  br label %534, !dbg !327

534:                                              ; preds = %515, %511, %460
  %535 = phi float [ 0.000000e+00, %460 ], [ %512, %511 ], [ %handler_result14, %515 ], !dbg !312
  %536 = fmul float %535, %5, !dbg !327
  %537 = getelementptr float, ptr %459, i64 %461, !dbg !328
  %538 = load float, ptr %537, align 4, !dbg !329, !tbaa !183
  %539 = fpext float %536 to double, !dbg !329
  %540 = fpext float %538 to double, !dbg !329
  %541 = fptrunc double %539 to float, !dbg !329
  %542 = fptrunc double %540 to float, !dbg !329
  %handler_result15 = call float @fAddHandlerFloat(float %541, float %542), !dbg !329
  store float %handler_result15, ptr %537, align 4, !dbg !329, !tbaa !183
  %543 = add nuw nsw i64 %461, 1, !dbg !330
  tail call void @llvm.dbg.value(metadata i64 %543, metadata !73, metadata !DIExpression()), !dbg !148
  %544 = icmp eq i64 %543, %453, !dbg !331
  br i1 %544, label %545, label %460, !dbg !311, !llvm.loop !332

545:                                              ; preds = %534
  %546 = add nuw nsw i64 %452, 1, !dbg !334
  tail call void @llvm.dbg.value(metadata i64 %546, metadata !70, metadata !DIExpression()), !dbg !148
  %547 = add nuw nsw i64 %453, 1, !dbg !310
  %548 = icmp eq i64 %546, %445, !dbg !309
  br i1 %548, label %650, label %451, !dbg !310, !llvm.loop !335

549:                                              ; preds = %435
  %550 = and i1 %380, %436, !dbg !337
  br i1 %550, label %551, label %649, !dbg !337

551:                                              ; preds = %549
  tail call void @llvm.dbg.value(metadata i32 0, metadata !74, metadata !DIExpression()), !dbg !148
  %552 = icmp sgt i32 %4, 0, !dbg !338
  br i1 %552, label %553, label %650, !dbg !339

553:                                              ; preds = %551
  %554 = icmp sgt i32 %3, 0
  %555 = sext i32 %7 to i64, !dbg !339
  %556 = sext i32 %9 to i64, !dbg !339
  %557 = zext nneg i32 %4 to i64, !dbg !338
  %558 = zext nneg i32 %3 to i64
  br label %559, !dbg !339

559:                                              ; preds = %646, %553
  %560 = phi i64 [ 0, %553 ], [ %647, %646 ]
  tail call void @llvm.dbg.value(metadata i64 %560, metadata !74, metadata !DIExpression()), !dbg !148
  tail call void @llvm.dbg.value(metadata i32 0, metadata !70, metadata !DIExpression()), !dbg !148
  br i1 %554, label %561, label %646, !dbg !340

561:                                              ; preds = %559
  %562 = mul nsw i64 %560, %555
  %563 = mul nsw i64 %560, %556
  %564 = getelementptr float, ptr %6, i64 %562, !dbg !340
  %565 = getelementptr float, ptr %8, i64 %563, !dbg !340
  %566 = getelementptr float, ptr %8, i64 %563
  %567 = getelementptr float, ptr %6, i64 %562
  br label %568, !dbg !340

568:                                              ; preds = %642, %561
  %569 = phi i64 [ 0, %561 ], [ %643, %642 ]
  %570 = phi i64 [ 1, %561 ], [ %644, %642 ]
  tail call void @llvm.dbg.value(metadata i64 %569, metadata !70, metadata !DIExpression()), !dbg !148
  %571 = getelementptr float, ptr %564, i64 %569, !dbg !341
  %572 = load float, ptr %571, align 4, !dbg !341, !tbaa !183
  %573 = fmul float %572, %5, !dbg !342
  tail call void @llvm.dbg.value(metadata float %573, metadata !109, metadata !DIExpression()), !dbg !343
  %574 = getelementptr float, ptr %565, i64 %569, !dbg !344
  %575 = load float, ptr %574, align 4, !dbg !344, !tbaa !183
  %576 = fmul float %575, %5, !dbg !345
  tail call void @llvm.dbg.value(metadata float %576, metadata !118, metadata !DIExpression()), !dbg !343
  tail call void @llvm.dbg.value(metadata i32 0, metadata !73, metadata !DIExpression()), !dbg !148
  %577 = mul nsw i64 %569, %555
  %578 = getelementptr float, ptr %11, i64 %577, !dbg !346
  %579 = and i64 %570, 1, !dbg !346
  %580 = icmp eq i64 %569, 0, !dbg !346
  br i1 %580, label %622, label %581, !dbg !346

581:                                              ; preds = %568
  %582 = and i64 %570, 9223372036854775806, !dbg !346
  br label %583, !dbg !346

583:                                              ; preds = %583, %581
  %584 = phi i64 [ 0, %581 ], [ %619, %583 ]
  %585 = phi i64 [ 0, %581 ], [ %620, %583 ]
  tail call void @llvm.dbg.value(metadata i64 %584, metadata !73, metadata !DIExpression()), !dbg !148
  %586 = getelementptr float, ptr %566, i64 %584, !dbg !348
  %587 = load float, ptr %586, align 4, !dbg !348, !tbaa !183
  %588 = fmul float %573, %587, !dbg !351
  %589 = getelementptr float, ptr %567, i64 %584, !dbg !352
  %590 = load float, ptr %589, align 4, !dbg !352, !tbaa !183
  %591 = fmul float %576, %590, !dbg !353
  %592 = fpext float %588 to double, !dbg !354
  %593 = fpext float %591 to double, !dbg !354
  %594 = fptrunc double %592 to float, !dbg !354
  %595 = fptrunc double %593 to float, !dbg !354
  %handler_result16 = call float @fAddHandlerFloat(float %594, float %595), !dbg !354
  %596 = getelementptr float, ptr %578, i64 %584, !dbg !354
  %597 = load float, ptr %596, align 4, !dbg !355, !tbaa !183
  %598 = fpext float %597 to double, !dbg !355
  %599 = fpext float %handler_result16 to double, !dbg !355
  %600 = fptrunc double %598 to float, !dbg !355
  %601 = fptrunc double %599 to float, !dbg !355
  %handler_result17 = call float @fAddHandlerFloat(float %600, float %601), !dbg !355
  store float %handler_result17, ptr %596, align 4, !dbg !355, !tbaa !183
  %602 = or disjoint i64 %584, 1, !dbg !356
  tail call void @llvm.dbg.value(metadata i64 %602, metadata !73, metadata !DIExpression()), !dbg !148
  tail call void @llvm.dbg.value(metadata i64 %602, metadata !73, metadata !DIExpression()), !dbg !148
  %603 = getelementptr float, ptr %566, i64 %602, !dbg !348
  %604 = load float, ptr %603, align 4, !dbg !348, !tbaa !183
  %605 = fmul float %573, %604, !dbg !351
  %606 = getelementptr float, ptr %567, i64 %602, !dbg !352
  %607 = load float, ptr %606, align 4, !dbg !352, !tbaa !183
  %608 = fmul float %576, %607, !dbg !353
  %609 = fpext float %605 to double, !dbg !354
  %610 = fpext float %608 to double, !dbg !354
  %611 = fptrunc double %609 to float, !dbg !354
  %612 = fptrunc double %610 to float, !dbg !354
  %handler_result18 = call float @fAddHandlerFloat(float %611, float %612), !dbg !354
  %613 = getelementptr float, ptr %578, i64 %602, !dbg !354
  %614 = load float, ptr %613, align 4, !dbg !355, !tbaa !183
  %615 = fpext float %614 to double, !dbg !355
  %616 = fpext float %handler_result18 to double, !dbg !355
  %617 = fptrunc double %615 to float, !dbg !355
  %618 = fptrunc double %616 to float, !dbg !355
  %handler_result19 = call float @fAddHandlerFloat(float %617, float %618), !dbg !355
  store float %handler_result19, ptr %613, align 4, !dbg !355, !tbaa !183
  %619 = add nuw nsw i64 %584, 2, !dbg !356
  tail call void @llvm.dbg.value(metadata i64 %619, metadata !73, metadata !DIExpression()), !dbg !148
  %620 = add i64 %585, 2, !dbg !346
  %621 = icmp eq i64 %620, %582, !dbg !346
  br i1 %621, label %622, label %583, !dbg !346, !llvm.loop !357

622:                                              ; preds = %583, %568
  %623 = phi i64 [ 0, %568 ], [ %619, %583 ]
  %624 = icmp eq i64 %579, 0, !dbg !346
  br i1 %624, label %642, label %625, !dbg !346

625:                                              ; preds = %622
  tail call void @llvm.dbg.value(metadata i64 %623, metadata !73, metadata !DIExpression()), !dbg !148
  %626 = getelementptr float, ptr %566, i64 %623, !dbg !348
  %627 = load float, ptr %626, align 4, !dbg !348, !tbaa !183
  %628 = fmul float %573, %627, !dbg !351
  %629 = getelementptr float, ptr %567, i64 %623, !dbg !352
  %630 = load float, ptr %629, align 4, !dbg !352, !tbaa !183
  %631 = fmul float %576, %630, !dbg !353
  %632 = fpext float %628 to double, !dbg !354
  %633 = fpext float %631 to double, !dbg !354
  %634 = fptrunc double %632 to float, !dbg !354
  %635 = fptrunc double %633 to float, !dbg !354
  %handler_result20 = call float @fAddHandlerFloat(float %634, float %635), !dbg !354
  %636 = getelementptr float, ptr %578, i64 %623, !dbg !354
  %637 = load float, ptr %636, align 4, !dbg !355, !tbaa !183
  %638 = fpext float %637 to double, !dbg !355
  %639 = fpext float %handler_result20 to double, !dbg !355
  %640 = fptrunc double %638 to float, !dbg !355
  %641 = fptrunc double %639 to float, !dbg !355
  %handler_result21 = call float @fAddHandlerFloat(float %640, float %641), !dbg !355
  store float %handler_result21, ptr %636, align 4, !dbg !355, !tbaa !183
  tail call void @llvm.dbg.value(metadata i64 %623, metadata !73, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !148
  br label %642, !dbg !359

642:                                              ; preds = %625, %622
  %643 = add nuw nsw i64 %569, 1, !dbg !359
  tail call void @llvm.dbg.value(metadata i64 %643, metadata !70, metadata !DIExpression()), !dbg !148
  %644 = add nuw nsw i64 %570, 1, !dbg !340
  %645 = icmp eq i64 %643, %558, !dbg !360
  br i1 %645, label %646, label %568, !dbg !340, !llvm.loop !361

646:                                              ; preds = %642, %559
  %647 = add nuw nsw i64 %560, 1, !dbg !363
  tail call void @llvm.dbg.value(metadata i64 %647, metadata !74, metadata !DIExpression()), !dbg !148
  %648 = icmp eq i64 %647, %557, !dbg !338
  br i1 %648, label %650, label %559, !dbg !339, !llvm.loop !364

649:                                              ; preds = %549
  tail call void (i32, ptr, ptr, ...) @cblas_xerbla(i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #4, !dbg !366
  br label %650

650:                                              ; preds = %649, %646, %551, %545, %438, %432, %382, %376, %270, %265, %42
  ret void, !dbg !368
}

declare !dbg !370 void @cblas_xerbla(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

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
!llvm.module.flags = !{!36, !37, !38, !39, !40, !41, !42}
!llvm.ident = !{!43}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 24, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "./source_syr2k_r.h", directory: "/PI-detector/external/gsl/gsl-2.5/cblas", checksumkind: CSK_MD5, checksum: "76960e5b422d2dfb7c1191bbd7b747ba")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 152, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 19)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 24, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 1)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 129, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 23)
!17 = distinct !DICompileUnit(language: DW_LANG_C11, file: !18, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !19, globals: !35, splitDebugInlining: false, nameTableKind: None)
!18 = !DIFile(filename: "ssyr2k.c", directory: "/PI-detector/external/gsl/gsl-2.5/cblas", checksumkind: CSK_MD5, checksum: "d648a91ced78b8eca0b9f14388485226")
!19 = !{!20, !26, !30}
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
!35 = !{!0, !7, !12}
!36 = !{i32 7, !"Dwarf Version", i32 5}
!37 = !{i32 2, !"Debug Info Version", i32 3}
!38 = !{i32 1, !"wchar_size", i32 4}
!39 = !{i32 8, !"PIC Level", i32 2}
!40 = !{i32 7, !"PIE Level", i32 2}
!41 = !{i32 7, !"uwtable", i32 2}
!42 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!43 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!44 = distinct !DISubprogram(name: "cblas_ssyr2k", scope: !18, file: !18, line: 7, type: !45, scopeLine: 12, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !56)
!45 = !DISubroutineType(types: !46)
!46 = !{null, !47, !48, !49, !50, !50, !52, !54, !50, !54, !50, !52, !55, !50}
!47 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!48 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !26)
!49 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!50 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !51)
!51 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!52 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !53)
!53 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!56 = !{!57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !73, !74, !75, !76, !77, !79, !81, !90, !99, !100, !109, !118}
!57 = !DILocalVariable(name: "Order", arg: 1, scope: !44, file: !18, line: 7, type: !47)
!58 = !DILocalVariable(name: "Uplo", arg: 2, scope: !44, file: !18, line: 7, type: !48)
!59 = !DILocalVariable(name: "Trans", arg: 3, scope: !44, file: !18, line: 8, type: !49)
!60 = !DILocalVariable(name: "N", arg: 4, scope: !44, file: !18, line: 8, type: !50)
!61 = !DILocalVariable(name: "K", arg: 5, scope: !44, file: !18, line: 8, type: !50)
!62 = !DILocalVariable(name: "alpha", arg: 6, scope: !44, file: !18, line: 9, type: !52)
!63 = !DILocalVariable(name: "A", arg: 7, scope: !44, file: !18, line: 9, type: !54)
!64 = !DILocalVariable(name: "lda", arg: 8, scope: !44, file: !18, line: 9, type: !50)
!65 = !DILocalVariable(name: "B", arg: 9, scope: !44, file: !18, line: 10, type: !54)
!66 = !DILocalVariable(name: "ldb", arg: 10, scope: !44, file: !18, line: 10, type: !50)
!67 = !DILocalVariable(name: "beta", arg: 11, scope: !44, file: !18, line: 10, type: !52)
!68 = !DILocalVariable(name: "C", arg: 12, scope: !44, file: !18, line: 10, type: !55)
!69 = !DILocalVariable(name: "ldc", arg: 13, scope: !44, file: !18, line: 11, type: !50)
!70 = !DILocalVariable(name: "i", scope: !71, file: !2, line: 21, type: !51)
!71 = distinct !DILexicalBlock(scope: !72, file: !2, line: 20, column: 1)
!72 = !DILexicalBlockFile(scope: !44, file: !2, discriminator: 0)
!73 = !DILocalVariable(name: "j", scope: !71, file: !2, line: 21, type: !51)
!74 = !DILocalVariable(name: "k", scope: !71, file: !2, line: 21, type: !51)
!75 = !DILocalVariable(name: "uplo", scope: !71, file: !2, line: 22, type: !51)
!76 = !DILocalVariable(name: "trans", scope: !71, file: !2, line: 22, type: !51)
!77 = !DILocalVariable(name: "pos", scope: !78, file: !2, line: 24, type: !51)
!78 = distinct !DILexicalBlock(scope: !71, file: !2, line: 24, column: 3)
!79 = !DILocalVariable(name: "__dim", scope: !80, file: !2, line: 24, type: !51)
!80 = distinct !DILexicalBlock(scope: !78, file: !2, line: 24, column: 3)
!81 = !DILocalVariable(name: "temp", scope: !82, file: !2, line: 80, type: !53)
!82 = distinct !DILexicalBlock(scope: !83, file: !2, line: 79, column: 31)
!83 = distinct !DILexicalBlock(scope: !84, file: !2, line: 79, column: 7)
!84 = distinct !DILexicalBlock(scope: !85, file: !2, line: 79, column: 7)
!85 = distinct !DILexicalBlock(scope: !86, file: !2, line: 78, column: 29)
!86 = distinct !DILexicalBlock(scope: !87, file: !2, line: 78, column: 5)
!87 = distinct !DILexicalBlock(scope: !88, file: !2, line: 78, column: 5)
!88 = distinct !DILexicalBlock(scope: !89, file: !2, line: 76, column: 52)
!89 = distinct !DILexicalBlock(scope: !71, file: !2, line: 76, column: 7)
!90 = !DILocalVariable(name: "temp1", scope: !91, file: !2, line: 93, type: !53)
!91 = distinct !DILexicalBlock(scope: !92, file: !2, line: 92, column: 31)
!92 = distinct !DILexicalBlock(scope: !93, file: !2, line: 92, column: 7)
!93 = distinct !DILexicalBlock(scope: !94, file: !2, line: 92, column: 7)
!94 = distinct !DILexicalBlock(scope: !95, file: !2, line: 91, column: 29)
!95 = distinct !DILexicalBlock(scope: !96, file: !2, line: 91, column: 5)
!96 = distinct !DILexicalBlock(scope: !97, file: !2, line: 91, column: 5)
!97 = distinct !DILexicalBlock(scope: !98, file: !2, line: 89, column: 57)
!98 = distinct !DILexicalBlock(scope: !89, file: !2, line: 89, column: 14)
!99 = !DILocalVariable(name: "temp2", scope: !91, file: !2, line: 94, type: !53)
!100 = !DILocalVariable(name: "temp", scope: !101, file: !2, line: 106, type: !53)
!101 = distinct !DILexicalBlock(scope: !102, file: !2, line: 105, column: 32)
!102 = distinct !DILexicalBlock(scope: !103, file: !2, line: 105, column: 7)
!103 = distinct !DILexicalBlock(scope: !104, file: !2, line: 105, column: 7)
!104 = distinct !DILexicalBlock(scope: !105, file: !2, line: 104, column: 29)
!105 = distinct !DILexicalBlock(scope: !106, file: !2, line: 104, column: 5)
!106 = distinct !DILexicalBlock(scope: !107, file: !2, line: 104, column: 5)
!107 = distinct !DILexicalBlock(scope: !108, file: !2, line: 101, column: 59)
!108 = distinct !DILexicalBlock(scope: !98, file: !2, line: 101, column: 14)
!109 = !DILocalVariable(name: "temp1", scope: !110, file: !2, line: 119, type: !53)
!110 = distinct !DILexicalBlock(scope: !111, file: !2, line: 118, column: 31)
!111 = distinct !DILexicalBlock(scope: !112, file: !2, line: 118, column: 7)
!112 = distinct !DILexicalBlock(scope: !113, file: !2, line: 118, column: 7)
!113 = distinct !DILexicalBlock(scope: !114, file: !2, line: 117, column: 29)
!114 = distinct !DILexicalBlock(scope: !115, file: !2, line: 117, column: 5)
!115 = distinct !DILexicalBlock(scope: !116, file: !2, line: 117, column: 5)
!116 = distinct !DILexicalBlock(scope: !117, file: !2, line: 115, column: 57)
!117 = distinct !DILexicalBlock(scope: !108, file: !2, line: 115, column: 14)
!118 = !DILocalVariable(name: "temp2", scope: !110, file: !2, line: 120, type: !53)
!119 = !DILocation(line: 0, scope: !44)
!120 = !DILocation(line: 0, scope: !78)
!121 = !DILocation(line: 0, scope: !80)
!122 = !DILocation(line: 24, column: 3, scope: !123)
!123 = distinct !DILexicalBlock(scope: !80, file: !2, line: 24, column: 3)
!124 = !DILocation(line: 24, column: 3, scope: !80)
!125 = !DILocation(line: 24, column: 3, scope: !126)
!126 = distinct !DILexicalBlock(scope: !80, file: !2, line: 24, column: 3)
!127 = !DILocation(line: 24, column: 3, scope: !128)
!128 = distinct !DILexicalBlock(scope: !80, file: !2, line: 24, column: 3)
!129 = !DILocation(line: 24, column: 3, scope: !130)
!130 = distinct !DILexicalBlock(scope: !80, file: !2, line: 24, column: 3)
!131 = !DILocation(line: 24, column: 3, scope: !132)
!132 = distinct !DILexicalBlock(scope: !80, file: !2, line: 24, column: 3)
!133 = !DILocation(line: 24, column: 3, scope: !134)
!134 = distinct !DILexicalBlock(scope: !80, file: !2, line: 24, column: 3)
!135 = !DILocation(line: 24, column: 3, scope: !136)
!136 = distinct !DILexicalBlock(scope: !80, file: !2, line: 24, column: 3)
!137 = !DILocation(line: 24, column: 3, scope: !138)
!138 = distinct !DILexicalBlock(scope: !80, file: !2, line: 24, column: 3)
!139 = !DILocation(line: 24, column: 3, scope: !140)
!140 = distinct !DILexicalBlock(scope: !80, file: !2, line: 24, column: 3)
!141 = !DILocation(line: 24, column: 3, scope: !142)
!142 = distinct !DILexicalBlock(scope: !78, file: !2, line: 24, column: 3)
!143 = !DILocation(line: 24, column: 3, scope: !78)
!144 = !DILocation(line: 26, column: 13, scope: !145)
!145 = distinct !DILexicalBlock(scope: !71, file: !2, line: 26, column: 7)
!146 = !DILocation(line: 26, column: 20, scope: !145)
!147 = !DILocation(line: 29, column: 7, scope: !71)
!148 = !DILocation(line: 0, scope: !71)
!149 = !DILocation(line: 31, column: 20, scope: !150)
!150 = distinct !DILexicalBlock(scope: !151, file: !2, line: 29, column: 31)
!151 = distinct !DILexicalBlock(scope: !71, file: !2, line: 29, column: 7)
!152 = !DILocation(line: 31, column: 13, scope: !150)
!153 = !DILocation(line: 32, column: 3, scope: !150)
!154 = !DILocation(line: 33, column: 18, scope: !155)
!155 = distinct !DILexicalBlock(scope: !151, file: !2, line: 32, column: 10)
!156 = !DILocation(line: 33, column: 12, scope: !155)
!157 = !DILocation(line: 35, column: 29, scope: !158)
!158 = distinct !DILexicalBlock(scope: !155, file: !2, line: 35, column: 9)
!159 = !DILocation(line: 0, scope: !151)
!160 = !DILocation(line: 43, column: 12, scope: !161)
!161 = distinct !DILexicalBlock(scope: !71, file: !2, line: 43, column: 7)
!162 = !DILocation(line: 43, column: 7, scope: !71)
!163 = !DILocation(line: 44, column: 14, scope: !164)
!164 = distinct !DILexicalBlock(scope: !165, file: !2, line: 44, column: 9)
!165 = distinct !DILexicalBlock(scope: !161, file: !2, line: 43, column: 20)
!166 = !DILocation(line: 0, scope: !164)
!167 = !DILocation(line: 44, column: 9, scope: !165)
!168 = !DILocation(line: 51, column: 7, scope: !169)
!169 = distinct !DILexicalBlock(scope: !170, file: !2, line: 51, column: 7)
!170 = distinct !DILexicalBlock(scope: !164, file: !2, line: 50, column: 12)
!171 = !DILocation(line: 51, column: 21, scope: !172)
!172 = distinct !DILexicalBlock(scope: !169, file: !2, line: 51, column: 7)
!173 = !DILocation(line: 45, column: 7, scope: !174)
!174 = distinct !DILexicalBlock(scope: !175, file: !2, line: 45, column: 7)
!175 = distinct !DILexicalBlock(scope: !164, file: !2, line: 44, column: 29)
!176 = !DILocation(line: 45, column: 21, scope: !177)
!177 = distinct !DILexicalBlock(scope: !174, file: !2, line: 45, column: 7)
!178 = !DILocation(line: 47, column: 26, scope: !179)
!179 = distinct !DILexicalBlock(scope: !180, file: !2, line: 46, column: 33)
!180 = distinct !DILexicalBlock(scope: !181, file: !2, line: 46, column: 9)
!181 = distinct !DILexicalBlock(scope: !182, file: !2, line: 46, column: 9)
!182 = distinct !DILexicalBlock(scope: !177, file: !2, line: 45, column: 31)
!183 = !{!184, !184, i64 0}
!184 = !{!"float", !185, i64 0}
!185 = !{!"omnipotent char", !186, i64 0}
!186 = !{!"Simple C/C++ TBAA"}
!187 = !DILocation(line: 45, column: 27, scope: !177)
!188 = distinct !{!188, !173, !189, !190}
!189 = !DILocation(line: 49, column: 7, scope: !174)
!190 = !{!"llvm.loop.mustprogress"}
!191 = !DILocation(line: 53, column: 26, scope: !192)
!192 = distinct !DILexicalBlock(scope: !193, file: !2, line: 52, column: 34)
!193 = distinct !DILexicalBlock(scope: !194, file: !2, line: 52, column: 9)
!194 = distinct !DILexicalBlock(scope: !195, file: !2, line: 52, column: 9)
!195 = distinct !DILexicalBlock(scope: !172, file: !2, line: 51, column: 31)
!196 = distinct !{!196, !168, !197, !190}
!197 = !DILocation(line: 55, column: 7, scope: !169)
!198 = !DILocation(line: 57, column: 19, scope: !199)
!199 = distinct !DILexicalBlock(scope: !161, file: !2, line: 57, column: 14)
!200 = !DILocation(line: 57, column: 14, scope: !161)
!201 = !DILocation(line: 58, column: 14, scope: !202)
!202 = distinct !DILexicalBlock(scope: !203, file: !2, line: 58, column: 9)
!203 = distinct !DILexicalBlock(scope: !199, file: !2, line: 57, column: 27)
!204 = !DILocation(line: 0, scope: !202)
!205 = !DILocation(line: 58, column: 9, scope: !203)
!206 = !DILocation(line: 65, column: 7, scope: !207)
!207 = distinct !DILexicalBlock(scope: !208, file: !2, line: 65, column: 7)
!208 = distinct !DILexicalBlock(scope: !202, file: !2, line: 64, column: 12)
!209 = !DILocation(line: 65, column: 21, scope: !210)
!210 = distinct !DILexicalBlock(scope: !207, file: !2, line: 65, column: 7)
!211 = !DILocation(line: 59, column: 7, scope: !212)
!212 = distinct !DILexicalBlock(scope: !213, file: !2, line: 59, column: 7)
!213 = distinct !DILexicalBlock(scope: !202, file: !2, line: 58, column: 29)
!214 = !DILocation(line: 59, column: 21, scope: !215)
!215 = distinct !DILexicalBlock(scope: !212, file: !2, line: 59, column: 7)
!216 = !DILocation(line: 60, column: 9, scope: !217)
!217 = distinct !DILexicalBlock(scope: !218, file: !2, line: 60, column: 9)
!218 = distinct !DILexicalBlock(scope: !215, file: !2, line: 59, column: 31)
!219 = !DILocation(line: 61, column: 11, scope: !220)
!220 = distinct !DILexicalBlock(scope: !221, file: !2, line: 60, column: 33)
!221 = distinct !DILexicalBlock(scope: !217, file: !2, line: 60, column: 9)
!222 = !DILocation(line: 61, column: 26, scope: !220)
!223 = !DILocation(line: 60, column: 29, scope: !221)
!224 = !DILocation(line: 60, column: 23, scope: !221)
!225 = distinct !{!225, !216, !226, !190}
!226 = !DILocation(line: 62, column: 9, scope: !217)
!227 = !DILocation(line: 59, column: 27, scope: !215)
!228 = distinct !{!228, !211, !229, !190}
!229 = !DILocation(line: 63, column: 7, scope: !212)
!230 = !DILocation(line: 66, column: 9, scope: !231)
!231 = distinct !DILexicalBlock(scope: !232, file: !2, line: 66, column: 9)
!232 = distinct !DILexicalBlock(scope: !210, file: !2, line: 65, column: 31)
!233 = !DILocation(line: 67, column: 11, scope: !234)
!234 = distinct !DILexicalBlock(scope: !235, file: !2, line: 66, column: 34)
!235 = distinct !DILexicalBlock(scope: !231, file: !2, line: 66, column: 9)
!236 = !DILocation(line: 67, column: 26, scope: !234)
!237 = !DILocation(line: 66, column: 30, scope: !235)
!238 = distinct !{!238, !230, !239, !190}
!239 = !DILocation(line: 68, column: 9, scope: !231)
!240 = distinct !{!240, !241}
!241 = !{!"llvm.loop.unroll.disable"}
!242 = !DILocation(line: 65, column: 27, scope: !210)
!243 = distinct !{!243, !206, !244, !190}
!244 = !DILocation(line: 69, column: 7, scope: !207)
!245 = !DILocation(line: 73, column: 7, scope: !71)
!246 = distinct !{!246, !241}
!247 = !DILocation(line: 76, column: 12, scope: !89)
!248 = !DILocation(line: 76, column: 26, scope: !89)
!249 = !DILocation(line: 78, column: 19, scope: !86)
!250 = !DILocation(line: 78, column: 5, scope: !87)
!251 = !DILocation(line: 79, column: 7, scope: !84)
!252 = !DILocation(line: 0, scope: !82)
!253 = !DILocation(line: 81, column: 9, scope: !254)
!254 = distinct !DILexicalBlock(scope: !82, file: !2, line: 81, column: 9)
!255 = !DILocation(line: 82, column: 20, scope: !256)
!256 = distinct !DILexicalBlock(scope: !257, file: !2, line: 81, column: 33)
!257 = distinct !DILexicalBlock(scope: !254, file: !2, line: 81, column: 9)
!258 = !DILocation(line: 82, column: 37, scope: !256)
!259 = !DILocation(line: 82, column: 35, scope: !256)
!260 = !DILocation(line: 83, column: 22, scope: !256)
!261 = !DILocation(line: 83, column: 39, scope: !256)
!262 = !DILocation(line: 83, column: 37, scope: !256)
!263 = !DILocation(line: 82, column: 16, scope: !256)
!264 = !DILocation(line: 81, column: 29, scope: !257)
!265 = distinct !{!265, !253, !266, !190}
!266 = !DILocation(line: 84, column: 9, scope: !254)
!267 = !DILocation(line: 85, column: 33, scope: !82)
!268 = !DILocation(line: 85, column: 9, scope: !82)
!269 = !DILocation(line: 85, column: 24, scope: !82)
!270 = !DILocation(line: 79, column: 27, scope: !83)
!271 = !DILocation(line: 79, column: 21, scope: !83)
!272 = distinct !{!272, !251, !273, !190}
!273 = !DILocation(line: 86, column: 7, scope: !84)
!274 = !DILocation(line: 78, column: 25, scope: !86)
!275 = distinct !{!275, !250, !276, !190}
!276 = !DILocation(line: 87, column: 5, scope: !87)
!277 = !DILocation(line: 89, column: 33, scope: !98)
!278 = !DILocation(line: 91, column: 19, scope: !95)
!279 = !DILocation(line: 91, column: 5, scope: !96)
!280 = !DILocation(line: 92, column: 7, scope: !93)
!281 = !DILocation(line: 93, column: 30, scope: !91)
!282 = !DILocation(line: 93, column: 28, scope: !91)
!283 = !DILocation(line: 0, scope: !91)
!284 = !DILocation(line: 94, column: 30, scope: !91)
!285 = !DILocation(line: 94, column: 28, scope: !91)
!286 = !DILocation(line: 95, column: 9, scope: !287)
!287 = distinct !DILexicalBlock(scope: !91, file: !2, line: 95, column: 9)
!288 = !DILocation(line: 96, column: 37, scope: !289)
!289 = distinct !DILexicalBlock(scope: !290, file: !2, line: 95, column: 33)
!290 = distinct !DILexicalBlock(scope: !287, file: !2, line: 95, column: 9)
!291 = !DILocation(line: 96, column: 35, scope: !289)
!292 = !DILocation(line: 96, column: 62, scope: !289)
!293 = !DILocation(line: 96, column: 60, scope: !289)
!294 = !DILocation(line: 96, column: 11, scope: !289)
!295 = !DILocation(line: 96, column: 26, scope: !289)
!296 = !DILocation(line: 95, column: 29, scope: !290)
!297 = !DILocation(line: 95, column: 23, scope: !290)
!298 = distinct !{!298, !286, !299, !190}
!299 = !DILocation(line: 97, column: 9, scope: !287)
!300 = !DILocation(line: 92, column: 27, scope: !92)
!301 = !DILocation(line: 92, column: 21, scope: !92)
!302 = distinct !{!302, !280, !303, !190}
!303 = !DILocation(line: 98, column: 7, scope: !93)
!304 = !DILocation(line: 91, column: 25, scope: !95)
!305 = distinct !{!305, !279, !306, !190}
!306 = !DILocation(line: 99, column: 5, scope: !96)
!307 = !DILocation(line: 101, column: 19, scope: !108)
!308 = !DILocation(line: 101, column: 33, scope: !108)
!309 = !DILocation(line: 104, column: 19, scope: !105)
!310 = !DILocation(line: 104, column: 5, scope: !106)
!311 = !DILocation(line: 105, column: 7, scope: !103)
!312 = !DILocation(line: 0, scope: !101)
!313 = !DILocation(line: 107, column: 9, scope: !314)
!314 = distinct !DILexicalBlock(scope: !101, file: !2, line: 107, column: 9)
!315 = !DILocation(line: 108, column: 20, scope: !316)
!316 = distinct !DILexicalBlock(scope: !317, file: !2, line: 107, column: 33)
!317 = distinct !DILexicalBlock(scope: !314, file: !2, line: 107, column: 9)
!318 = !DILocation(line: 108, column: 37, scope: !316)
!319 = !DILocation(line: 108, column: 35, scope: !316)
!320 = !DILocation(line: 109, column: 22, scope: !316)
!321 = !DILocation(line: 109, column: 39, scope: !316)
!322 = !DILocation(line: 109, column: 37, scope: !316)
!323 = !DILocation(line: 108, column: 16, scope: !316)
!324 = !DILocation(line: 107, column: 29, scope: !317)
!325 = distinct !{!325, !313, !326, !190}
!326 = !DILocation(line: 110, column: 9, scope: !314)
!327 = !DILocation(line: 111, column: 33, scope: !101)
!328 = !DILocation(line: 111, column: 9, scope: !101)
!329 = !DILocation(line: 111, column: 24, scope: !101)
!330 = !DILocation(line: 105, column: 28, scope: !102)
!331 = !DILocation(line: 105, column: 21, scope: !102)
!332 = distinct !{!332, !311, !333, !190}
!333 = !DILocation(line: 112, column: 7, scope: !103)
!334 = !DILocation(line: 104, column: 25, scope: !105)
!335 = distinct !{!335, !310, !336, !190}
!336 = !DILocation(line: 113, column: 5, scope: !106)
!337 = !DILocation(line: 115, column: 33, scope: !117)
!338 = !DILocation(line: 117, column: 19, scope: !114)
!339 = !DILocation(line: 117, column: 5, scope: !115)
!340 = !DILocation(line: 118, column: 7, scope: !112)
!341 = !DILocation(line: 119, column: 30, scope: !110)
!342 = !DILocation(line: 119, column: 28, scope: !110)
!343 = !DILocation(line: 0, scope: !110)
!344 = !DILocation(line: 120, column: 30, scope: !110)
!345 = !DILocation(line: 120, column: 28, scope: !110)
!346 = !DILocation(line: 121, column: 9, scope: !347)
!347 = distinct !DILexicalBlock(scope: !110, file: !2, line: 121, column: 9)
!348 = !DILocation(line: 122, column: 37, scope: !349)
!349 = distinct !DILexicalBlock(scope: !350, file: !2, line: 121, column: 34)
!350 = distinct !DILexicalBlock(scope: !347, file: !2, line: 121, column: 9)
!351 = !DILocation(line: 122, column: 35, scope: !349)
!352 = !DILocation(line: 122, column: 62, scope: !349)
!353 = !DILocation(line: 122, column: 60, scope: !349)
!354 = !DILocation(line: 122, column: 11, scope: !349)
!355 = !DILocation(line: 122, column: 26, scope: !349)
!356 = !DILocation(line: 121, column: 30, scope: !350)
!357 = distinct !{!357, !346, !358, !190}
!358 = !DILocation(line: 123, column: 9, scope: !347)
!359 = !DILocation(line: 118, column: 27, scope: !111)
!360 = !DILocation(line: 118, column: 21, scope: !111)
!361 = distinct !{!361, !340, !362, !190}
!362 = !DILocation(line: 124, column: 7, scope: !112)
!363 = !DILocation(line: 117, column: 25, scope: !114)
!364 = distinct !{!364, !339, !365, !190}
!365 = !DILocation(line: 125, column: 5, scope: !115)
!366 = !DILocation(line: 129, column: 5, scope: !367)
!367 = distinct !DILexicalBlock(scope: !117, file: !2, line: 128, column: 10)
!368 = !DILocation(line: 16, column: 1, scope: !369)
!369 = !DILexicalBlockFile(scope: !44, file: !18, discriminator: 0)
!370 = !DISubprogram(name: "cblas_xerbla", scope: !21, file: !21, line: 602, type: !371, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!371 = !DISubroutineType(types: !372)
!372 = !{null, !51, !373, !373, null}
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!374 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
