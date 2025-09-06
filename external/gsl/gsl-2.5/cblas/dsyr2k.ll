; ModuleID = 'dsyr2k.c'
source_filename = "dsyr2k.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"./source_syr2k_r.h\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !7
@.str.2 = private unnamed_addr constant [23 x i8] c"unrecognized operation\00", align 1, !dbg !12

; Function Attrs: nounwind uwtable
define dso_local void @cblas_dsyr2k(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, double noundef %5, ptr nocapture noundef readonly %6, i32 noundef %7, ptr nocapture noundef readonly %8, i32 noundef %9, double noundef %10, ptr nocapture noundef %11, i32 noundef %12) local_unnamed_addr #0 !dbg !44 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !57, metadata !DIExpression()), !dbg !119
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !58, metadata !DIExpression()), !dbg !119
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !59, metadata !DIExpression()), !dbg !119
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !60, metadata !DIExpression()), !dbg !119
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !61, metadata !DIExpression()), !dbg !119
  tail call void @llvm.dbg.value(metadata double %5, metadata !62, metadata !DIExpression()), !dbg !119
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !63, metadata !DIExpression()), !dbg !119
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !64, metadata !DIExpression()), !dbg !119
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !65, metadata !DIExpression()), !dbg !119
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !66, metadata !DIExpression()), !dbg !119
  tail call void @llvm.dbg.value(metadata double %10, metadata !67, metadata !DIExpression()), !dbg !119
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
  %43 = fcmp oeq double %5, 0.000000e+00, !dbg !144
  %44 = fcmp oeq double %10, 1.000000e+00
  %45 = and i1 %43, %44, !dbg !146
  br i1 %45, label %584, label %46, !dbg !146

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
  %59 = fcmp oeq double %10, 0.000000e+00, !dbg !160
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
  %66 = shl nsw i64 %65, 3
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
  %86 = shl nsw i64 %85, 3
  %87 = getelementptr i8, ptr %11, i64 %86
  %88 = trunc i64 %81 to i32
  %89 = xor i32 %88, -1
  %90 = add i32 %89, %3
  %91 = zext i32 %90 to i64
  %92 = shl nuw nsw i64 %91, 3
  %93 = add nuw nsw i64 %92, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %87, i8 0, i64 %93, i1 false), !dbg !178, !tbaa !183
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !73, metadata !DIExpression()), !dbg !148
  %94 = or disjoint i64 %81, 1, !dbg !187
  tail call void @llvm.dbg.value(metadata i64 %94, metadata !70, metadata !DIExpression()), !dbg !148
  tail call void @llvm.dbg.value(metadata i64 %94, metadata !70, metadata !DIExpression()), !dbg !148
  tail call void @llvm.dbg.value(metadata i64 %94, metadata !73, metadata !DIExpression()), !dbg !148
  %95 = trunc i64 %94 to i32
  %96 = mul i32 %74, %95
  %97 = sext i32 %96 to i64
  %98 = shl nsw i64 %97, 3
  %99 = getelementptr i8, ptr %11, i64 %98
  %100 = trunc i64 %94 to i32
  %101 = xor i32 %100, -1
  %102 = add i32 %101, %3
  %103 = zext i32 %102 to i64
  %104 = shl nuw nsw i64 %103, 3
  %105 = add nuw nsw i64 %104, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %99, i8 0, i64 %105, i1 false), !dbg !178, !tbaa !183
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
  %114 = shl nuw nsw i64 %110, 3
  %115 = or disjoint i64 %114, 8
  tail call void @llvm.dbg.value(metadata i32 0, metadata !73, metadata !DIExpression()), !dbg !148
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %113, i8 0, i64 %115, i1 false), !dbg !191, !tbaa !183
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !73, metadata !DIExpression()), !dbg !148
  %116 = or disjoint i64 %110, 1, !dbg !168
  tail call void @llvm.dbg.value(metadata i64 %116, metadata !70, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !148
  tail call void @llvm.dbg.value(metadata i64 %116, metadata !70, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !148
  %117 = mul i64 %66, %116
  %118 = getelementptr i8, ptr %11, i64 %117
  %119 = shl nuw nsw i64 %116, 3
  %120 = add nuw nsw i64 %119, 8
  tail call void @llvm.dbg.value(metadata i32 0, metadata !73, metadata !DIExpression()), !dbg !148
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %118, i8 0, i64 %120, i1 false), !dbg !191, !tbaa !183
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !73, metadata !DIExpression()), !dbg !148
  %121 = or disjoint i64 %110, 2, !dbg !168
  tail call void @llvm.dbg.value(metadata i64 %121, metadata !70, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !148
  tail call void @llvm.dbg.value(metadata i64 %121, metadata !70, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !148
  %122 = mul i64 %66, %121
  %123 = getelementptr i8, ptr %11, i64 %122
  %124 = shl nuw nsw i64 %121, 3
  %125 = or disjoint i64 %124, 8
  tail call void @llvm.dbg.value(metadata i32 0, metadata !73, metadata !DIExpression()), !dbg !148
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %123, i8 0, i64 %125, i1 false), !dbg !191, !tbaa !183
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !73, metadata !DIExpression()), !dbg !148
  %126 = or disjoint i64 %110, 3, !dbg !168
  tail call void @llvm.dbg.value(metadata i64 %126, metadata !70, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !148
  tail call void @llvm.dbg.value(metadata i64 %126, metadata !70, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !148
  %127 = mul i64 %66, %126
  %128 = getelementptr i8, ptr %11, i64 %127
  %129 = shl nuw nsw i64 %126, 3
  %130 = add nuw nsw i64 %129, 8
  tail call void @llvm.dbg.value(metadata i32 0, metadata !73, metadata !DIExpression()), !dbg !148
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %128, i8 0, i64 %130, i1 false), !dbg !191, !tbaa !183
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !73, metadata !DIExpression()), !dbg !148
  %131 = add nuw nsw i64 %110, 4, !dbg !168
  tail call void @llvm.dbg.value(metadata i64 %131, metadata !70, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !148
  %132 = add i64 %111, 4, !dbg !168
  %133 = icmp eq i64 %132, %71, !dbg !168
  br i1 %133, label %239, label %109, !dbg !168, !llvm.loop !196

134:                                              ; preds = %56
  %135 = fcmp une double %10, 1.000000e+00, !dbg !198
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
  %155 = getelementptr double, ptr %11, i64 %154, !dbg !216
  br label %156, !dbg !216

156:                                              ; preds = %151, %156
  %157 = phi i64 [ %152, %151 ], [ %161, %156 ]
  tail call void @llvm.dbg.value(metadata i64 %157, metadata !73, metadata !DIExpression()), !dbg !148
  %158 = getelementptr double, ptr %155, i64 %157, !dbg !219
  %159 = load double, ptr %158, align 8, !dbg !222, !tbaa !183
  %160 = fmul double %159, %10, !dbg !222
  store double %160, ptr %158, align 8, !dbg !222, !tbaa !183
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
  %166 = getelementptr double, ptr %11, i64 %165, !dbg !216
  br label %167, !dbg !216

167:                                              ; preds = %167, %163
  %168 = phi i64 [ %164, %163 ], [ %172, %167 ]
  tail call void @llvm.dbg.value(metadata i64 %168, metadata !73, metadata !DIExpression()), !dbg !148
  %169 = getelementptr double, ptr %166, i64 %168, !dbg !219
  %170 = load double, ptr %169, align 8, !dbg !222, !tbaa !183
  %171 = fmul double %170, %10, !dbg !222
  store double %171, ptr %169, align 8, !dbg !222, !tbaa !183
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

178:                                              ; preds = %140, %220
  %179 = phi i64 [ 0, %140 ], [ %221, %220 ]
  %180 = phi i64 [ 1, %140 ], [ %222, %220 ]
  tail call void @llvm.dbg.value(metadata i64 %179, metadata !70, metadata !DIExpression()), !dbg !148
  %181 = mul nsw i64 %179, %141
  tail call void @llvm.dbg.value(metadata i32 0, metadata !73, metadata !DIExpression()), !dbg !148
  %182 = getelementptr double, ptr %11, i64 %181, !dbg !230
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
  %190 = getelementptr double, ptr %182, i64 %188, !dbg !233
  %191 = load double, ptr %190, align 8, !dbg !236, !tbaa !183
  %192 = fmul double %191, %10, !dbg !236
  store double %192, ptr %190, align 8, !dbg !236, !tbaa !183
  %193 = or disjoint i64 %188, 1, !dbg !237
  tail call void @llvm.dbg.value(metadata i64 %193, metadata !73, metadata !DIExpression()), !dbg !148
  tail call void @llvm.dbg.value(metadata i64 %193, metadata !73, metadata !DIExpression()), !dbg !148
  %194 = getelementptr double, ptr %182, i64 %193, !dbg !233
  %195 = load double, ptr %194, align 8, !dbg !236, !tbaa !183
  %196 = fmul double %195, %10, !dbg !236
  store double %196, ptr %194, align 8, !dbg !236, !tbaa !183
  %197 = or disjoint i64 %188, 2, !dbg !237
  tail call void @llvm.dbg.value(metadata i64 %197, metadata !73, metadata !DIExpression()), !dbg !148
  tail call void @llvm.dbg.value(metadata i64 %197, metadata !73, metadata !DIExpression()), !dbg !148
  %198 = getelementptr double, ptr %182, i64 %197, !dbg !233
  %199 = load double, ptr %198, align 8, !dbg !236, !tbaa !183
  %200 = fmul double %199, %10, !dbg !236
  store double %200, ptr %198, align 8, !dbg !236, !tbaa !183
  %201 = or disjoint i64 %188, 3, !dbg !237
  tail call void @llvm.dbg.value(metadata i64 %201, metadata !73, metadata !DIExpression()), !dbg !148
  tail call void @llvm.dbg.value(metadata i64 %201, metadata !73, metadata !DIExpression()), !dbg !148
  %202 = getelementptr double, ptr %182, i64 %201, !dbg !233
  %203 = load double, ptr %202, align 8, !dbg !236, !tbaa !183
  %204 = fmul double %203, %10, !dbg !236
  store double %204, ptr %202, align 8, !dbg !236, !tbaa !183
  %205 = add nuw nsw i64 %188, 4, !dbg !237
  tail call void @llvm.dbg.value(metadata i64 %205, metadata !73, metadata !DIExpression()), !dbg !148
  %206 = add i64 %189, 4, !dbg !230
  %207 = icmp eq i64 %206, %186, !dbg !230
  br i1 %207, label %208, label %187, !dbg !230, !llvm.loop !238

208:                                              ; preds = %187, %178
  %209 = phi i64 [ 0, %178 ], [ %205, %187 ]
  %210 = icmp eq i64 %183, 0, !dbg !230
  br i1 %210, label %220, label %211, !dbg !230

211:                                              ; preds = %208, %211
  %212 = phi i64 [ %217, %211 ], [ %209, %208 ]
  %213 = phi i64 [ %218, %211 ], [ 0, %208 ]
  tail call void @llvm.dbg.value(metadata i64 %212, metadata !73, metadata !DIExpression()), !dbg !148
  %214 = getelementptr double, ptr %182, i64 %212, !dbg !233
  %215 = load double, ptr %214, align 8, !dbg !236, !tbaa !183
  %216 = fmul double %215, %10, !dbg !236
  store double %216, ptr %214, align 8, !dbg !236, !tbaa !183
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
  %232 = shl nsw i64 %231, 3
  %233 = getelementptr i8, ptr %11, i64 %232
  %234 = xor i32 %227, -1
  %235 = add i32 %234, %3
  %236 = zext i32 %235 to i64
  %237 = shl nuw nsw i64 %236, 3
  %238 = add nuw nsw i64 %237, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %233, i8 0, i64 %238, i1 false), !dbg !178, !tbaa !183
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !73, metadata !DIExpression()), !dbg !148
  tail call void @llvm.dbg.value(metadata i32 %227, metadata !70, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)), !dbg !148
  br label %265, !dbg !245

239:                                              ; preds = %109, %64
  %240 = phi i64 [ 0, %64 ], [ %131, %109 ]
  %241 = icmp eq i64 %68, 0, !dbg !168
  br i1 %241, label %265, label %242, !dbg !168

242:                                              ; preds = %239, %242
  %243 = phi i64 [ %249, %242 ], [ %240, %239 ]
  %244 = phi i64 [ %250, %242 ], [ 0, %239 ]
  tail call void @llvm.dbg.value(metadata i64 %243, metadata !70, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !148
  %245 = mul i64 %66, %243
  %246 = getelementptr i8, ptr %11, i64 %245
  %247 = shl nuw nsw i64 %243, 3
  %248 = add nuw nsw i64 %247, 8
  tail call void @llvm.dbg.value(metadata i32 0, metadata !73, metadata !DIExpression()), !dbg !148
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %246, i8 0, i64 %248, i1 false), !dbg !191, !tbaa !183
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
  %257 = getelementptr double, ptr %11, i64 %256, !dbg !216
  br label %258, !dbg !216

258:                                              ; preds = %258, %255
  %259 = phi i64 [ %253, %255 ], [ %263, %258 ]
  tail call void @llvm.dbg.value(metadata i64 %259, metadata !73, metadata !DIExpression()), !dbg !148
  %260 = getelementptr double, ptr %257, i64 %259, !dbg !219
  %261 = load double, ptr %260, align 8, !dbg !222, !tbaa !183
  %262 = fmul double %261, %10, !dbg !222
  store double %262, ptr %260, align 8, !dbg !222, !tbaa !183
  %263 = add nuw nsw i64 %259, 1, !dbg !223
  tail call void @llvm.dbg.value(metadata i64 %263, metadata !73, metadata !DIExpression()), !dbg !148
  %264 = icmp eq i64 %263, %146, !dbg !224
  br i1 %264, label %265, label %258, !dbg !216, !llvm.loop !225

265:                                              ; preds = %220, %252, %258, %239, %242, %229, %226, %139, %143, %63, %72, %134
  br i1 %43, label %584, label %266, !dbg !245

266:                                              ; preds = %265
  %267 = icmp eq i32 %58, 121, !dbg !247
  %268 = icmp eq i32 %57, 111
  %269 = and i1 %268, %267, !dbg !248
  br i1 %269, label %270, label %358, !dbg !248

270:                                              ; preds = %266
  tail call void @llvm.dbg.value(metadata i32 0, metadata !70, metadata !DIExpression()), !dbg !148
  %271 = icmp sgt i32 %3, 0, !dbg !249
  br i1 %271, label %272, label %584, !dbg !250

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

283:                                              ; preds = %272, %355
  %284 = phi i64 [ 0, %272 ], [ %356, %355 ]
  tail call void @llvm.dbg.value(metadata i64 %284, metadata !70, metadata !DIExpression()), !dbg !148
  tail call void @llvm.dbg.value(metadata i64 %284, metadata !73, metadata !DIExpression()), !dbg !148
  %285 = mul nsw i64 %284, %275
  %286 = mul nsw i64 %284, %274
  %287 = mul nsw i64 %284, %276
  %288 = getelementptr double, ptr %6, i64 %285
  %289 = getelementptr double, ptr %8, i64 %286
  %290 = getelementptr double, ptr %11, i64 %287, !dbg !251
  br label %291, !dbg !251

291:                                              ; preds = %283, %347
  %292 = phi i64 [ %284, %283 ], [ %353, %347 ]
  tail call void @llvm.dbg.value(metadata i64 %292, metadata !73, metadata !DIExpression()), !dbg !148
  tail call void @llvm.dbg.value(metadata i32 0, metadata !74, metadata !DIExpression()), !dbg !148
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !81, metadata !DIExpression()), !dbg !252
  br i1 %273, label %293, label %347, !dbg !253

293:                                              ; preds = %291
  %294 = mul nsw i64 %292, %274
  %295 = mul nsw i64 %292, %275
  %296 = getelementptr double, ptr %8, i64 %294, !dbg !253
  %297 = getelementptr double, ptr %6, i64 %295, !dbg !253
  br i1 %280, label %330, label %298, !dbg !253

298:                                              ; preds = %293, %298
  %299 = phi i64 [ %327, %298 ], [ 0, %293 ]
  %300 = phi double [ %326, %298 ], [ 0.000000e+00, %293 ]
  %301 = phi i64 [ %328, %298 ], [ 0, %293 ]
  tail call void @llvm.dbg.value(metadata i64 %299, metadata !74, metadata !DIExpression()), !dbg !148
  tail call void @llvm.dbg.value(metadata double %300, metadata !81, metadata !DIExpression()), !dbg !252
  %302 = getelementptr double, ptr %288, i64 %299, !dbg !255
  %303 = load double, ptr %302, align 8, !dbg !255, !tbaa !183
  %304 = getelementptr double, ptr %296, i64 %299, !dbg !258
  %305 = load double, ptr %304, align 8, !dbg !258, !tbaa !183
  %306 = fmul double %303, %305, !dbg !259
  %307 = getelementptr double, ptr %289, i64 %299, !dbg !260
  %308 = load double, ptr %307, align 8, !dbg !260, !tbaa !183
  %309 = getelementptr double, ptr %297, i64 %299, !dbg !261
  %310 = load double, ptr %309, align 8, !dbg !261, !tbaa !183
  %311 = fmul double %308, %310, !dbg !262
  %312 = fadd double %306, %311, !dbg !263
  %313 = fadd double %300, %312, !dbg !264
  tail call void @llvm.dbg.value(metadata double %313, metadata !81, metadata !DIExpression()), !dbg !252
  %314 = or disjoint i64 %299, 1, !dbg !265
  tail call void @llvm.dbg.value(metadata i64 %314, metadata !74, metadata !DIExpression()), !dbg !148
  tail call void @llvm.dbg.value(metadata i64 %314, metadata !74, metadata !DIExpression()), !dbg !148
  tail call void @llvm.dbg.value(metadata double %313, metadata !81, metadata !DIExpression()), !dbg !252
  %315 = getelementptr double, ptr %288, i64 %314, !dbg !255
  %316 = load double, ptr %315, align 8, !dbg !255, !tbaa !183
  %317 = getelementptr double, ptr %296, i64 %314, !dbg !258
  %318 = load double, ptr %317, align 8, !dbg !258, !tbaa !183
  %319 = fmul double %316, %318, !dbg !259
  %320 = getelementptr double, ptr %289, i64 %314, !dbg !260
  %321 = load double, ptr %320, align 8, !dbg !260, !tbaa !183
  %322 = getelementptr double, ptr %297, i64 %314, !dbg !261
  %323 = load double, ptr %322, align 8, !dbg !261, !tbaa !183
  %324 = fmul double %321, %323, !dbg !262
  %325 = fadd double %319, %324, !dbg !263
  %326 = fadd double %313, %325, !dbg !264
  tail call void @llvm.dbg.value(metadata double %326, metadata !81, metadata !DIExpression()), !dbg !252
  %327 = add nuw nsw i64 %299, 2, !dbg !265
  tail call void @llvm.dbg.value(metadata i64 %327, metadata !74, metadata !DIExpression()), !dbg !148
  %328 = add i64 %301, 2, !dbg !253
  %329 = icmp eq i64 %328, %281, !dbg !253
  br i1 %329, label %330, label %298, !dbg !253, !llvm.loop !266

330:                                              ; preds = %298, %293
  %331 = phi double [ undef, %293 ], [ %326, %298 ]
  %332 = phi i64 [ 0, %293 ], [ %327, %298 ]
  %333 = phi double [ 0.000000e+00, %293 ], [ %326, %298 ]
  br i1 %282, label %347, label %334, !dbg !253

334:                                              ; preds = %330
  tail call void @llvm.dbg.value(metadata i64 %332, metadata !74, metadata !DIExpression()), !dbg !148
  tail call void @llvm.dbg.value(metadata double %333, metadata !81, metadata !DIExpression()), !dbg !252
  %335 = getelementptr double, ptr %288, i64 %332, !dbg !255
  %336 = load double, ptr %335, align 8, !dbg !255, !tbaa !183
  %337 = getelementptr double, ptr %296, i64 %332, !dbg !258
  %338 = load double, ptr %337, align 8, !dbg !258, !tbaa !183
  %339 = fmul double %336, %338, !dbg !259
  %340 = getelementptr double, ptr %289, i64 %332, !dbg !260
  %341 = load double, ptr %340, align 8, !dbg !260, !tbaa !183
  %342 = getelementptr double, ptr %297, i64 %332, !dbg !261
  %343 = load double, ptr %342, align 8, !dbg !261, !tbaa !183
  %344 = fmul double %341, %343, !dbg !262
  %345 = fadd double %339, %344, !dbg !263
  %346 = fadd double %333, %345, !dbg !264
  tail call void @llvm.dbg.value(metadata double %346, metadata !81, metadata !DIExpression()), !dbg !252
  tail call void @llvm.dbg.value(metadata i64 %332, metadata !74, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !148
  br label %347, !dbg !268

347:                                              ; preds = %334, %330, %291
  %348 = phi double [ 0.000000e+00, %291 ], [ %331, %330 ], [ %346, %334 ], !dbg !252
  %349 = fmul double %348, %5, !dbg !268
  %350 = getelementptr double, ptr %290, i64 %292, !dbg !269
  %351 = load double, ptr %350, align 8, !dbg !270, !tbaa !183
  %352 = fadd double %349, %351, !dbg !270
  store double %352, ptr %350, align 8, !dbg !270, !tbaa !183
  %353 = add nuw nsw i64 %292, 1, !dbg !271
  tail call void @llvm.dbg.value(metadata i64 %353, metadata !73, metadata !DIExpression()), !dbg !148
  %354 = icmp eq i64 %353, %277, !dbg !272
  br i1 %354, label %355, label %291, !dbg !251, !llvm.loop !273

355:                                              ; preds = %347
  %356 = add nuw nsw i64 %284, 1, !dbg !275
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !70, metadata !DIExpression()), !dbg !148
  %357 = icmp eq i64 %356, %277, !dbg !249
  br i1 %357, label %584, label %283, !dbg !250, !llvm.loop !276

358:                                              ; preds = %266
  %359 = icmp eq i32 %57, 112
  %360 = and i1 %359, %267, !dbg !278
  br i1 %360, label %361, label %408, !dbg !278

361:                                              ; preds = %358
  tail call void @llvm.dbg.value(metadata i32 0, metadata !74, metadata !DIExpression()), !dbg !148
  %362 = icmp sgt i32 %4, 0, !dbg !279
  br i1 %362, label %363, label %584, !dbg !280

363:                                              ; preds = %361
  %364 = icmp sgt i32 %3, 0
  %365 = sext i32 %7 to i64, !dbg !280
  %366 = sext i32 %9 to i64, !dbg !280
  %367 = zext nneg i32 %4 to i64, !dbg !279
  %368 = zext nneg i32 %3 to i64
  br label %369, !dbg !280

369:                                              ; preds = %363, %405
  %370 = phi i64 [ 0, %363 ], [ %406, %405 ]
  tail call void @llvm.dbg.value(metadata i64 %370, metadata !74, metadata !DIExpression()), !dbg !148
  tail call void @llvm.dbg.value(metadata i32 0, metadata !70, metadata !DIExpression()), !dbg !148
  br i1 %364, label %371, label %405, !dbg !281

371:                                              ; preds = %369
  %372 = mul nsw i64 %370, %365
  %373 = mul nsw i64 %370, %366
  %374 = getelementptr double, ptr %6, i64 %372, !dbg !281
  %375 = getelementptr double, ptr %8, i64 %373, !dbg !281
  %376 = getelementptr double, ptr %8, i64 %373
  %377 = getelementptr double, ptr %6, i64 %372
  br label %378, !dbg !281

378:                                              ; preds = %371, %402
  %379 = phi i64 [ 0, %371 ], [ %403, %402 ]
  tail call void @llvm.dbg.value(metadata i64 %379, metadata !70, metadata !DIExpression()), !dbg !148
  %380 = getelementptr double, ptr %374, i64 %379, !dbg !282
  %381 = load double, ptr %380, align 8, !dbg !282, !tbaa !183
  %382 = fmul double %381, %5, !dbg !283
  tail call void @llvm.dbg.value(metadata double %382, metadata !90, metadata !DIExpression()), !dbg !284
  %383 = getelementptr double, ptr %375, i64 %379, !dbg !285
  %384 = load double, ptr %383, align 8, !dbg !285, !tbaa !183
  %385 = fmul double %384, %5, !dbg !286
  tail call void @llvm.dbg.value(metadata double %385, metadata !99, metadata !DIExpression()), !dbg !284
  tail call void @llvm.dbg.value(metadata i64 %379, metadata !73, metadata !DIExpression()), !dbg !148
  %386 = mul nsw i64 %379, %365
  %387 = getelementptr double, ptr %11, i64 %386, !dbg !287
  br label %388, !dbg !287

388:                                              ; preds = %378, %388
  %389 = phi i64 [ %379, %378 ], [ %400, %388 ]
  tail call void @llvm.dbg.value(metadata i64 %389, metadata !73, metadata !DIExpression()), !dbg !148
  %390 = getelementptr double, ptr %376, i64 %389, !dbg !289
  %391 = load double, ptr %390, align 8, !dbg !289, !tbaa !183
  %392 = fmul double %382, %391, !dbg !292
  %393 = getelementptr double, ptr %377, i64 %389, !dbg !293
  %394 = load double, ptr %393, align 8, !dbg !293, !tbaa !183
  %395 = fmul double %385, %394, !dbg !294
  %396 = fadd double %392, %395, !dbg !295
  %397 = getelementptr double, ptr %387, i64 %389, !dbg !296
  %398 = load double, ptr %397, align 8, !dbg !297, !tbaa !183
  %399 = fadd double %398, %396, !dbg !297
  store double %399, ptr %397, align 8, !dbg !297, !tbaa !183
  %400 = add nuw nsw i64 %389, 1, !dbg !298
  tail call void @llvm.dbg.value(metadata i64 %400, metadata !73, metadata !DIExpression()), !dbg !148
  %401 = icmp eq i64 %400, %368, !dbg !299
  br i1 %401, label %402, label %388, !dbg !287, !llvm.loop !300

402:                                              ; preds = %388
  %403 = add nuw nsw i64 %379, 1, !dbg !302
  tail call void @llvm.dbg.value(metadata i64 %403, metadata !70, metadata !DIExpression()), !dbg !148
  %404 = icmp eq i64 %403, %368, !dbg !303
  br i1 %404, label %405, label %378, !dbg !281, !llvm.loop !304

405:                                              ; preds = %402, %369
  %406 = add nuw nsw i64 %370, 1, !dbg !306
  tail call void @llvm.dbg.value(metadata i64 %406, metadata !74, metadata !DIExpression()), !dbg !148
  %407 = icmp eq i64 %406, %367, !dbg !279
  br i1 %407, label %584, label %369, !dbg !280, !llvm.loop !307

408:                                              ; preds = %358
  %409 = icmp eq i32 %58, 122, !dbg !309
  %410 = and i1 %268, %409, !dbg !310
  br i1 %410, label %411, label %501, !dbg !310

411:                                              ; preds = %408
  tail call void @llvm.dbg.value(metadata i32 0, metadata !70, metadata !DIExpression()), !dbg !148
  %412 = icmp sgt i32 %3, 0, !dbg !311
  br i1 %412, label %413, label %584, !dbg !312

413:                                              ; preds = %411
  %414 = icmp sgt i32 %4, 0
  %415 = sext i32 %9 to i64, !dbg !312
  %416 = sext i32 %7 to i64, !dbg !312
  %417 = sext i32 %12 to i64, !dbg !312
  %418 = zext nneg i32 %3 to i64, !dbg !311
  %419 = zext i32 %4 to i64
  %420 = and i64 %419, 1
  %421 = icmp eq i32 %4, 1
  %422 = and i64 %419, 2147483646
  %423 = icmp eq i64 %420, 0
  br label %424, !dbg !312

424:                                              ; preds = %413, %497
  %425 = phi i64 [ 0, %413 ], [ %498, %497 ]
  %426 = phi i64 [ 1, %413 ], [ %499, %497 ]
  tail call void @llvm.dbg.value(metadata i64 %425, metadata !70, metadata !DIExpression()), !dbg !148
  %427 = mul nsw i64 %425, %417
  tail call void @llvm.dbg.value(metadata i32 0, metadata !73, metadata !DIExpression()), !dbg !148
  %428 = mul nsw i64 %425, %416
  %429 = mul nsw i64 %425, %415
  %430 = getelementptr double, ptr %6, i64 %428
  %431 = getelementptr double, ptr %8, i64 %429
  %432 = getelementptr double, ptr %11, i64 %427, !dbg !313
  br label %433, !dbg !313

433:                                              ; preds = %424, %489
  %434 = phi i64 [ 0, %424 ], [ %495, %489 ]
  tail call void @llvm.dbg.value(metadata i64 %434, metadata !73, metadata !DIExpression()), !dbg !148
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !100, metadata !DIExpression()), !dbg !314
  tail call void @llvm.dbg.value(metadata i32 0, metadata !74, metadata !DIExpression()), !dbg !148
  br i1 %414, label %435, label %489, !dbg !315

435:                                              ; preds = %433
  %436 = mul nsw i64 %434, %415
  %437 = mul nsw i64 %434, %416
  %438 = getelementptr double, ptr %8, i64 %436, !dbg !315
  %439 = getelementptr double, ptr %6, i64 %437, !dbg !315
  br i1 %421, label %472, label %440, !dbg !315

440:                                              ; preds = %435, %440
  %441 = phi i64 [ %469, %440 ], [ 0, %435 ]
  %442 = phi double [ %468, %440 ], [ 0.000000e+00, %435 ]
  %443 = phi i64 [ %470, %440 ], [ 0, %435 ]
  tail call void @llvm.dbg.value(metadata double %442, metadata !100, metadata !DIExpression()), !dbg !314
  tail call void @llvm.dbg.value(metadata i64 %441, metadata !74, metadata !DIExpression()), !dbg !148
  %444 = getelementptr double, ptr %430, i64 %441, !dbg !317
  %445 = load double, ptr %444, align 8, !dbg !317, !tbaa !183
  %446 = getelementptr double, ptr %438, i64 %441, !dbg !320
  %447 = load double, ptr %446, align 8, !dbg !320, !tbaa !183
  %448 = fmul double %445, %447, !dbg !321
  %449 = getelementptr double, ptr %431, i64 %441, !dbg !322
  %450 = load double, ptr %449, align 8, !dbg !322, !tbaa !183
  %451 = getelementptr double, ptr %439, i64 %441, !dbg !323
  %452 = load double, ptr %451, align 8, !dbg !323, !tbaa !183
  %453 = fmul double %450, %452, !dbg !324
  %454 = fadd double %448, %453, !dbg !325
  %455 = fadd double %442, %454, !dbg !326
  tail call void @llvm.dbg.value(metadata double %455, metadata !100, metadata !DIExpression()), !dbg !314
  %456 = or disjoint i64 %441, 1, !dbg !327
  tail call void @llvm.dbg.value(metadata i64 %456, metadata !74, metadata !DIExpression()), !dbg !148
  tail call void @llvm.dbg.value(metadata double %455, metadata !100, metadata !DIExpression()), !dbg !314
  tail call void @llvm.dbg.value(metadata i64 %456, metadata !74, metadata !DIExpression()), !dbg !148
  %457 = getelementptr double, ptr %430, i64 %456, !dbg !317
  %458 = load double, ptr %457, align 8, !dbg !317, !tbaa !183
  %459 = getelementptr double, ptr %438, i64 %456, !dbg !320
  %460 = load double, ptr %459, align 8, !dbg !320, !tbaa !183
  %461 = fmul double %458, %460, !dbg !321
  %462 = getelementptr double, ptr %431, i64 %456, !dbg !322
  %463 = load double, ptr %462, align 8, !dbg !322, !tbaa !183
  %464 = getelementptr double, ptr %439, i64 %456, !dbg !323
  %465 = load double, ptr %464, align 8, !dbg !323, !tbaa !183
  %466 = fmul double %463, %465, !dbg !324
  %467 = fadd double %461, %466, !dbg !325
  %468 = fadd double %455, %467, !dbg !326
  tail call void @llvm.dbg.value(metadata double %468, metadata !100, metadata !DIExpression()), !dbg !314
  %469 = add nuw nsw i64 %441, 2, !dbg !327
  tail call void @llvm.dbg.value(metadata i64 %469, metadata !74, metadata !DIExpression()), !dbg !148
  %470 = add i64 %443, 2, !dbg !315
  %471 = icmp eq i64 %470, %422, !dbg !315
  br i1 %471, label %472, label %440, !dbg !315, !llvm.loop !328

472:                                              ; preds = %440, %435
  %473 = phi double [ undef, %435 ], [ %468, %440 ]
  %474 = phi i64 [ 0, %435 ], [ %469, %440 ]
  %475 = phi double [ 0.000000e+00, %435 ], [ %468, %440 ]
  br i1 %423, label %489, label %476, !dbg !315

476:                                              ; preds = %472
  tail call void @llvm.dbg.value(metadata double %475, metadata !100, metadata !DIExpression()), !dbg !314
  tail call void @llvm.dbg.value(metadata i64 %474, metadata !74, metadata !DIExpression()), !dbg !148
  %477 = getelementptr double, ptr %430, i64 %474, !dbg !317
  %478 = load double, ptr %477, align 8, !dbg !317, !tbaa !183
  %479 = getelementptr double, ptr %438, i64 %474, !dbg !320
  %480 = load double, ptr %479, align 8, !dbg !320, !tbaa !183
  %481 = fmul double %478, %480, !dbg !321
  %482 = getelementptr double, ptr %431, i64 %474, !dbg !322
  %483 = load double, ptr %482, align 8, !dbg !322, !tbaa !183
  %484 = getelementptr double, ptr %439, i64 %474, !dbg !323
  %485 = load double, ptr %484, align 8, !dbg !323, !tbaa !183
  %486 = fmul double %483, %485, !dbg !324
  %487 = fadd double %481, %486, !dbg !325
  %488 = fadd double %475, %487, !dbg !326
  tail call void @llvm.dbg.value(metadata double %488, metadata !100, metadata !DIExpression()), !dbg !314
  tail call void @llvm.dbg.value(metadata i64 %474, metadata !74, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !148
  br label %489, !dbg !330

489:                                              ; preds = %476, %472, %433
  %490 = phi double [ 0.000000e+00, %433 ], [ %473, %472 ], [ %488, %476 ], !dbg !314
  %491 = fmul double %490, %5, !dbg !330
  %492 = getelementptr double, ptr %432, i64 %434, !dbg !331
  %493 = load double, ptr %492, align 8, !dbg !332, !tbaa !183
  %494 = fadd double %491, %493, !dbg !332
  store double %494, ptr %492, align 8, !dbg !332, !tbaa !183
  %495 = add nuw nsw i64 %434, 1, !dbg !333
  tail call void @llvm.dbg.value(metadata i64 %495, metadata !73, metadata !DIExpression()), !dbg !148
  %496 = icmp eq i64 %495, %426, !dbg !334
  br i1 %496, label %497, label %433, !dbg !313, !llvm.loop !335

497:                                              ; preds = %489
  %498 = add nuw nsw i64 %425, 1, !dbg !337
  tail call void @llvm.dbg.value(metadata i64 %498, metadata !70, metadata !DIExpression()), !dbg !148
  %499 = add nuw nsw i64 %426, 1, !dbg !312
  %500 = icmp eq i64 %498, %418, !dbg !311
  br i1 %500, label %584, label %424, !dbg !312, !llvm.loop !338

501:                                              ; preds = %408
  %502 = and i1 %359, %409, !dbg !340
  br i1 %502, label %503, label %583, !dbg !340

503:                                              ; preds = %501
  tail call void @llvm.dbg.value(metadata i32 0, metadata !74, metadata !DIExpression()), !dbg !148
  %504 = icmp sgt i32 %4, 0, !dbg !341
  br i1 %504, label %505, label %584, !dbg !342

505:                                              ; preds = %503
  %506 = icmp sgt i32 %3, 0
  %507 = sext i32 %7 to i64, !dbg !342
  %508 = sext i32 %9 to i64, !dbg !342
  %509 = zext nneg i32 %4 to i64, !dbg !341
  %510 = zext nneg i32 %3 to i64
  br label %511, !dbg !342

511:                                              ; preds = %505, %580
  %512 = phi i64 [ 0, %505 ], [ %581, %580 ]
  tail call void @llvm.dbg.value(metadata i64 %512, metadata !74, metadata !DIExpression()), !dbg !148
  tail call void @llvm.dbg.value(metadata i32 0, metadata !70, metadata !DIExpression()), !dbg !148
  br i1 %506, label %513, label %580, !dbg !343

513:                                              ; preds = %511
  %514 = mul nsw i64 %512, %507
  %515 = mul nsw i64 %512, %508
  %516 = getelementptr double, ptr %6, i64 %514, !dbg !343
  %517 = getelementptr double, ptr %8, i64 %515, !dbg !343
  %518 = getelementptr double, ptr %8, i64 %515
  %519 = getelementptr double, ptr %6, i64 %514
  br label %520, !dbg !343

520:                                              ; preds = %513, %576
  %521 = phi i64 [ 0, %513 ], [ %577, %576 ]
  %522 = phi i64 [ 1, %513 ], [ %578, %576 ]
  tail call void @llvm.dbg.value(metadata i64 %521, metadata !70, metadata !DIExpression()), !dbg !148
  %523 = getelementptr double, ptr %516, i64 %521, !dbg !344
  %524 = load double, ptr %523, align 8, !dbg !344, !tbaa !183
  %525 = fmul double %524, %5, !dbg !345
  tail call void @llvm.dbg.value(metadata double %525, metadata !109, metadata !DIExpression()), !dbg !346
  %526 = getelementptr double, ptr %517, i64 %521, !dbg !347
  %527 = load double, ptr %526, align 8, !dbg !347, !tbaa !183
  %528 = fmul double %527, %5, !dbg !348
  tail call void @llvm.dbg.value(metadata double %528, metadata !118, metadata !DIExpression()), !dbg !346
  tail call void @llvm.dbg.value(metadata i32 0, metadata !73, metadata !DIExpression()), !dbg !148
  %529 = mul nsw i64 %521, %507
  %530 = getelementptr double, ptr %11, i64 %529, !dbg !349
  %531 = and i64 %522, 1, !dbg !349
  %532 = icmp eq i64 %521, 0, !dbg !349
  br i1 %532, label %562, label %533, !dbg !349

533:                                              ; preds = %520
  %534 = and i64 %522, 9223372036854775806, !dbg !349
  br label %535, !dbg !349

535:                                              ; preds = %535, %533
  %536 = phi i64 [ 0, %533 ], [ %559, %535 ]
  %537 = phi i64 [ 0, %533 ], [ %560, %535 ]
  tail call void @llvm.dbg.value(metadata i64 %536, metadata !73, metadata !DIExpression()), !dbg !148
  %538 = getelementptr double, ptr %518, i64 %536, !dbg !351
  %539 = load double, ptr %538, align 8, !dbg !351, !tbaa !183
  %540 = fmul double %525, %539, !dbg !354
  %541 = getelementptr double, ptr %519, i64 %536, !dbg !355
  %542 = load double, ptr %541, align 8, !dbg !355, !tbaa !183
  %543 = fmul double %528, %542, !dbg !356
  %544 = fadd double %540, %543, !dbg !357
  %545 = getelementptr double, ptr %530, i64 %536, !dbg !358
  %546 = load double, ptr %545, align 8, !dbg !359, !tbaa !183
  %547 = fadd double %546, %544, !dbg !359
  store double %547, ptr %545, align 8, !dbg !359, !tbaa !183
  %548 = or disjoint i64 %536, 1, !dbg !360
  tail call void @llvm.dbg.value(metadata i64 %548, metadata !73, metadata !DIExpression()), !dbg !148
  tail call void @llvm.dbg.value(metadata i64 %548, metadata !73, metadata !DIExpression()), !dbg !148
  %549 = getelementptr double, ptr %518, i64 %548, !dbg !351
  %550 = load double, ptr %549, align 8, !dbg !351, !tbaa !183
  %551 = fmul double %525, %550, !dbg !354
  %552 = getelementptr double, ptr %519, i64 %548, !dbg !355
  %553 = load double, ptr %552, align 8, !dbg !355, !tbaa !183
  %554 = fmul double %528, %553, !dbg !356
  %555 = fadd double %551, %554, !dbg !357
  %556 = getelementptr double, ptr %530, i64 %548, !dbg !358
  %557 = load double, ptr %556, align 8, !dbg !359, !tbaa !183
  %558 = fadd double %557, %555, !dbg !359
  store double %558, ptr %556, align 8, !dbg !359, !tbaa !183
  %559 = add nuw nsw i64 %536, 2, !dbg !360
  tail call void @llvm.dbg.value(metadata i64 %559, metadata !73, metadata !DIExpression()), !dbg !148
  %560 = add i64 %537, 2, !dbg !349
  %561 = icmp eq i64 %560, %534, !dbg !349
  br i1 %561, label %562, label %535, !dbg !349, !llvm.loop !361

562:                                              ; preds = %535, %520
  %563 = phi i64 [ 0, %520 ], [ %559, %535 ]
  %564 = icmp eq i64 %531, 0, !dbg !349
  br i1 %564, label %576, label %565, !dbg !349

565:                                              ; preds = %562
  tail call void @llvm.dbg.value(metadata i64 %563, metadata !73, metadata !DIExpression()), !dbg !148
  %566 = getelementptr double, ptr %518, i64 %563, !dbg !351
  %567 = load double, ptr %566, align 8, !dbg !351, !tbaa !183
  %568 = fmul double %525, %567, !dbg !354
  %569 = getelementptr double, ptr %519, i64 %563, !dbg !355
  %570 = load double, ptr %569, align 8, !dbg !355, !tbaa !183
  %571 = fmul double %528, %570, !dbg !356
  %572 = fadd double %568, %571, !dbg !357
  %573 = getelementptr double, ptr %530, i64 %563, !dbg !358
  %574 = load double, ptr %573, align 8, !dbg !359, !tbaa !183
  %575 = fadd double %574, %572, !dbg !359
  store double %575, ptr %573, align 8, !dbg !359, !tbaa !183
  tail call void @llvm.dbg.value(metadata i64 %563, metadata !73, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !148
  br label %576, !dbg !363

576:                                              ; preds = %562, %565
  %577 = add nuw nsw i64 %521, 1, !dbg !363
  tail call void @llvm.dbg.value(metadata i64 %577, metadata !70, metadata !DIExpression()), !dbg !148
  %578 = add nuw nsw i64 %522, 1, !dbg !343
  %579 = icmp eq i64 %577, %510, !dbg !364
  br i1 %579, label %580, label %520, !dbg !343, !llvm.loop !365

580:                                              ; preds = %576, %511
  %581 = add nuw nsw i64 %512, 1, !dbg !367
  tail call void @llvm.dbg.value(metadata i64 %581, metadata !74, metadata !DIExpression()), !dbg !148
  %582 = icmp eq i64 %581, %509, !dbg !341
  br i1 %582, label %584, label %511, !dbg !342, !llvm.loop !368

583:                                              ; preds = %501
  tail call void (i32, ptr, ptr, ...) @cblas_xerbla(i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #4, !dbg !370
  br label %584

584:                                              ; preds = %580, %497, %405, %355, %503, %411, %361, %270, %583, %265, %42
  ret void, !dbg !372
}

declare !dbg !374 void @cblas_xerbla(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

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
!18 = !DIFile(filename: "dsyr2k.c", directory: "/PI-detector/external/gsl/gsl-2.5/cblas", checksumkind: CSK_MD5, checksum: "b126b21469124f1f81d2898ffc2f42c0")
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
!44 = distinct !DISubprogram(name: "cblas_dsyr2k", scope: !18, file: !18, line: 7, type: !45, scopeLine: 12, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !56)
!45 = !DISubroutineType(types: !46)
!46 = !{null, !47, !48, !49, !50, !50, !52, !54, !50, !54, !50, !52, !55, !50}
!47 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!48 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !26)
!49 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!50 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !51)
!51 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!52 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !53)
!53 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
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
!184 = !{!"double", !185, i64 0}
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
!263 = !DILocation(line: 83, column: 20, scope: !256)
!264 = !DILocation(line: 82, column: 16, scope: !256)
!265 = !DILocation(line: 81, column: 29, scope: !257)
!266 = distinct !{!266, !253, !267, !190}
!267 = !DILocation(line: 84, column: 9, scope: !254)
!268 = !DILocation(line: 85, column: 33, scope: !82)
!269 = !DILocation(line: 85, column: 9, scope: !82)
!270 = !DILocation(line: 85, column: 24, scope: !82)
!271 = !DILocation(line: 79, column: 27, scope: !83)
!272 = !DILocation(line: 79, column: 21, scope: !83)
!273 = distinct !{!273, !251, !274, !190}
!274 = !DILocation(line: 86, column: 7, scope: !84)
!275 = !DILocation(line: 78, column: 25, scope: !86)
!276 = distinct !{!276, !250, !277, !190}
!277 = !DILocation(line: 87, column: 5, scope: !87)
!278 = !DILocation(line: 89, column: 33, scope: !98)
!279 = !DILocation(line: 91, column: 19, scope: !95)
!280 = !DILocation(line: 91, column: 5, scope: !96)
!281 = !DILocation(line: 92, column: 7, scope: !93)
!282 = !DILocation(line: 93, column: 30, scope: !91)
!283 = !DILocation(line: 93, column: 28, scope: !91)
!284 = !DILocation(line: 0, scope: !91)
!285 = !DILocation(line: 94, column: 30, scope: !91)
!286 = !DILocation(line: 94, column: 28, scope: !91)
!287 = !DILocation(line: 95, column: 9, scope: !288)
!288 = distinct !DILexicalBlock(scope: !91, file: !2, line: 95, column: 9)
!289 = !DILocation(line: 96, column: 37, scope: !290)
!290 = distinct !DILexicalBlock(scope: !291, file: !2, line: 95, column: 33)
!291 = distinct !DILexicalBlock(scope: !288, file: !2, line: 95, column: 9)
!292 = !DILocation(line: 96, column: 35, scope: !290)
!293 = !DILocation(line: 96, column: 62, scope: !290)
!294 = !DILocation(line: 96, column: 60, scope: !290)
!295 = !DILocation(line: 96, column: 52, scope: !290)
!296 = !DILocation(line: 96, column: 11, scope: !290)
!297 = !DILocation(line: 96, column: 26, scope: !290)
!298 = !DILocation(line: 95, column: 29, scope: !291)
!299 = !DILocation(line: 95, column: 23, scope: !291)
!300 = distinct !{!300, !287, !301, !190}
!301 = !DILocation(line: 97, column: 9, scope: !288)
!302 = !DILocation(line: 92, column: 27, scope: !92)
!303 = !DILocation(line: 92, column: 21, scope: !92)
!304 = distinct !{!304, !281, !305, !190}
!305 = !DILocation(line: 98, column: 7, scope: !93)
!306 = !DILocation(line: 91, column: 25, scope: !95)
!307 = distinct !{!307, !280, !308, !190}
!308 = !DILocation(line: 99, column: 5, scope: !96)
!309 = !DILocation(line: 101, column: 19, scope: !108)
!310 = !DILocation(line: 101, column: 33, scope: !108)
!311 = !DILocation(line: 104, column: 19, scope: !105)
!312 = !DILocation(line: 104, column: 5, scope: !106)
!313 = !DILocation(line: 105, column: 7, scope: !103)
!314 = !DILocation(line: 0, scope: !101)
!315 = !DILocation(line: 107, column: 9, scope: !316)
!316 = distinct !DILexicalBlock(scope: !101, file: !2, line: 107, column: 9)
!317 = !DILocation(line: 108, column: 20, scope: !318)
!318 = distinct !DILexicalBlock(scope: !319, file: !2, line: 107, column: 33)
!319 = distinct !DILexicalBlock(scope: !316, file: !2, line: 107, column: 9)
!320 = !DILocation(line: 108, column: 37, scope: !318)
!321 = !DILocation(line: 108, column: 35, scope: !318)
!322 = !DILocation(line: 109, column: 22, scope: !318)
!323 = !DILocation(line: 109, column: 39, scope: !318)
!324 = !DILocation(line: 109, column: 37, scope: !318)
!325 = !DILocation(line: 109, column: 20, scope: !318)
!326 = !DILocation(line: 108, column: 16, scope: !318)
!327 = !DILocation(line: 107, column: 29, scope: !319)
!328 = distinct !{!328, !315, !329, !190}
!329 = !DILocation(line: 110, column: 9, scope: !316)
!330 = !DILocation(line: 111, column: 33, scope: !101)
!331 = !DILocation(line: 111, column: 9, scope: !101)
!332 = !DILocation(line: 111, column: 24, scope: !101)
!333 = !DILocation(line: 105, column: 28, scope: !102)
!334 = !DILocation(line: 105, column: 21, scope: !102)
!335 = distinct !{!335, !313, !336, !190}
!336 = !DILocation(line: 112, column: 7, scope: !103)
!337 = !DILocation(line: 104, column: 25, scope: !105)
!338 = distinct !{!338, !312, !339, !190}
!339 = !DILocation(line: 113, column: 5, scope: !106)
!340 = !DILocation(line: 115, column: 33, scope: !117)
!341 = !DILocation(line: 117, column: 19, scope: !114)
!342 = !DILocation(line: 117, column: 5, scope: !115)
!343 = !DILocation(line: 118, column: 7, scope: !112)
!344 = !DILocation(line: 119, column: 30, scope: !110)
!345 = !DILocation(line: 119, column: 28, scope: !110)
!346 = !DILocation(line: 0, scope: !110)
!347 = !DILocation(line: 120, column: 30, scope: !110)
!348 = !DILocation(line: 120, column: 28, scope: !110)
!349 = !DILocation(line: 121, column: 9, scope: !350)
!350 = distinct !DILexicalBlock(scope: !110, file: !2, line: 121, column: 9)
!351 = !DILocation(line: 122, column: 37, scope: !352)
!352 = distinct !DILexicalBlock(scope: !353, file: !2, line: 121, column: 34)
!353 = distinct !DILexicalBlock(scope: !350, file: !2, line: 121, column: 9)
!354 = !DILocation(line: 122, column: 35, scope: !352)
!355 = !DILocation(line: 122, column: 62, scope: !352)
!356 = !DILocation(line: 122, column: 60, scope: !352)
!357 = !DILocation(line: 122, column: 52, scope: !352)
!358 = !DILocation(line: 122, column: 11, scope: !352)
!359 = !DILocation(line: 122, column: 26, scope: !352)
!360 = !DILocation(line: 121, column: 30, scope: !353)
!361 = distinct !{!361, !349, !362, !190}
!362 = !DILocation(line: 123, column: 9, scope: !350)
!363 = !DILocation(line: 118, column: 27, scope: !111)
!364 = !DILocation(line: 118, column: 21, scope: !111)
!365 = distinct !{!365, !343, !366, !190}
!366 = !DILocation(line: 124, column: 7, scope: !112)
!367 = !DILocation(line: 117, column: 25, scope: !114)
!368 = distinct !{!368, !342, !369, !190}
!369 = !DILocation(line: 125, column: 5, scope: !115)
!370 = !DILocation(line: 129, column: 5, scope: !371)
!371 = distinct !DILexicalBlock(scope: !117, file: !2, line: 128, column: 10)
!372 = !DILocation(line: 16, column: 1, scope: !373)
!373 = !DILexicalBlockFile(scope: !44, file: !18, discriminator: 0)
!374 = !DISubprogram(name: "cblas_xerbla", scope: !21, file: !21, line: 602, type: !375, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!375 = !DISubroutineType(types: !376)
!376 = !{null, !51, !377, !377, null}
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!378 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
