; ModuleID = 'dsyr2k.ll'
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
  br i1 %45, label %562, label %46, !dbg !146

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

156:                                              ; preds = %156, %151
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

178:                                              ; preds = %220, %140
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

211:                                              ; preds = %211, %208
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

242:                                              ; preds = %242, %239
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

265:                                              ; preds = %258, %252, %242, %239, %229, %226, %220, %143, %139, %134, %72, %63
  br i1 %43, label %562, label %266, !dbg !245

266:                                              ; preds = %265
  %267 = icmp eq i32 %58, 121, !dbg !247
  %268 = icmp eq i32 %57, 111
  %269 = and i1 %268, %267, !dbg !248
  br i1 %269, label %270, label %351, !dbg !248

270:                                              ; preds = %266
  tail call void @llvm.dbg.value(metadata i32 0, metadata !70, metadata !DIExpression()), !dbg !148
  %271 = icmp sgt i32 %3, 0, !dbg !249
  br i1 %271, label %272, label %562, !dbg !250

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

283:                                              ; preds = %348, %272
  %284 = phi i64 [ 0, %272 ], [ %349, %348 ]
  tail call void @llvm.dbg.value(metadata i64 %284, metadata !70, metadata !DIExpression()), !dbg !148
  tail call void @llvm.dbg.value(metadata i64 %284, metadata !73, metadata !DIExpression()), !dbg !148
  %285 = mul nsw i64 %284, %275
  %286 = mul nsw i64 %284, %274
  %287 = mul nsw i64 %284, %276
  %288 = getelementptr double, ptr %6, i64 %285
  %289 = getelementptr double, ptr %8, i64 %286
  %290 = getelementptr double, ptr %11, i64 %287, !dbg !251
  br label %291, !dbg !251

291:                                              ; preds = %341, %283
  %292 = phi i64 [ %284, %283 ], [ %346, %341 ]
  tail call void @llvm.dbg.value(metadata i64 %292, metadata !73, metadata !DIExpression()), !dbg !148
  tail call void @llvm.dbg.value(metadata i32 0, metadata !74, metadata !DIExpression()), !dbg !148
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !81, metadata !DIExpression()), !dbg !252
  br i1 %273, label %293, label %341, !dbg !253

293:                                              ; preds = %291
  %294 = mul nsw i64 %292, %274
  %295 = mul nsw i64 %292, %275
  %296 = getelementptr double, ptr %8, i64 %294, !dbg !253
  %297 = getelementptr double, ptr %6, i64 %295, !dbg !253
  br i1 %280, label %326, label %298, !dbg !253

298:                                              ; preds = %298, %293
  %299 = phi i64 [ %323, %298 ], [ 0, %293 ]
  %300 = phi double [ %handler_result3, %298 ], [ 0.000000e+00, %293 ]
  %301 = phi i64 [ %324, %298 ], [ 0, %293 ]
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
  %handler_result = call double @fAddHandlerDouble(double %306, double %311), !dbg !263
  %handler_result1 = call double @fAddHandlerDouble(double %300, double %handler_result), !dbg !264
  tail call void @llvm.dbg.value(metadata double %handler_result1, metadata !81, metadata !DIExpression()), !dbg !252
  %312 = or disjoint i64 %299, 1, !dbg !264
  tail call void @llvm.dbg.value(metadata i64 %312, metadata !74, metadata !DIExpression()), !dbg !148
  tail call void @llvm.dbg.value(metadata i64 %312, metadata !74, metadata !DIExpression()), !dbg !148
  tail call void @llvm.dbg.value(metadata double %handler_result1, metadata !81, metadata !DIExpression()), !dbg !252
  %313 = getelementptr double, ptr %288, i64 %312, !dbg !255
  %314 = load double, ptr %313, align 8, !dbg !255, !tbaa !183
  %315 = getelementptr double, ptr %296, i64 %312, !dbg !258
  %316 = load double, ptr %315, align 8, !dbg !258, !tbaa !183
  %317 = fmul double %314, %316, !dbg !259
  %318 = getelementptr double, ptr %289, i64 %312, !dbg !260
  %319 = load double, ptr %318, align 8, !dbg !260, !tbaa !183
  %320 = getelementptr double, ptr %297, i64 %312, !dbg !261
  %321 = load double, ptr %320, align 8, !dbg !261, !tbaa !183
  %322 = fmul double %319, %321, !dbg !262
  %handler_result2 = call double @fAddHandlerDouble(double %317, double %322), !dbg !263
  %handler_result3 = call double @fAddHandlerDouble(double %handler_result1, double %handler_result2), !dbg !264
  tail call void @llvm.dbg.value(metadata double %handler_result3, metadata !81, metadata !DIExpression()), !dbg !252
  %323 = add nuw nsw i64 %299, 2, !dbg !264
  tail call void @llvm.dbg.value(metadata i64 %323, metadata !74, metadata !DIExpression()), !dbg !148
  %324 = add i64 %301, 2, !dbg !253
  %325 = icmp eq i64 %324, %281, !dbg !253
  br i1 %325, label %326, label %298, !dbg !253, !llvm.loop !265

326:                                              ; preds = %298, %293
  %327 = phi double [ undef, %293 ], [ %handler_result3, %298 ]
  %328 = phi i64 [ 0, %293 ], [ %323, %298 ]
  %329 = phi double [ 0.000000e+00, %293 ], [ %handler_result3, %298 ]
  br i1 %282, label %341, label %330, !dbg !253

330:                                              ; preds = %326
  tail call void @llvm.dbg.value(metadata i64 %328, metadata !74, metadata !DIExpression()), !dbg !148
  tail call void @llvm.dbg.value(metadata double %329, metadata !81, metadata !DIExpression()), !dbg !252
  %331 = getelementptr double, ptr %288, i64 %328, !dbg !255
  %332 = load double, ptr %331, align 8, !dbg !255, !tbaa !183
  %333 = getelementptr double, ptr %296, i64 %328, !dbg !258
  %334 = load double, ptr %333, align 8, !dbg !258, !tbaa !183
  %335 = fmul double %332, %334, !dbg !259
  %336 = getelementptr double, ptr %289, i64 %328, !dbg !260
  %337 = load double, ptr %336, align 8, !dbg !260, !tbaa !183
  %338 = getelementptr double, ptr %297, i64 %328, !dbg !261
  %339 = load double, ptr %338, align 8, !dbg !261, !tbaa !183
  %340 = fmul double %337, %339, !dbg !262
  %handler_result4 = call double @fAddHandlerDouble(double %335, double %340), !dbg !263
  %handler_result5 = call double @fAddHandlerDouble(double %329, double %handler_result4), !dbg !267
  tail call void @llvm.dbg.value(metadata double %handler_result5, metadata !81, metadata !DIExpression()), !dbg !252
  tail call void @llvm.dbg.value(metadata i64 %328, metadata !74, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !148
  br label %341, !dbg !267

341:                                              ; preds = %330, %326, %291
  %342 = phi double [ 0.000000e+00, %291 ], [ %327, %326 ], [ %handler_result5, %330 ], !dbg !252
  %343 = fmul double %342, %5, !dbg !267
  %344 = getelementptr double, ptr %290, i64 %292, !dbg !268
  %345 = load double, ptr %344, align 8, !dbg !269, !tbaa !183
  %handler_result6 = call double @fAddHandlerDouble(double %343, double %345), !dbg !269
  store double %handler_result6, ptr %344, align 8, !dbg !269, !tbaa !183
  %346 = add nuw nsw i64 %292, 1, !dbg !270
  tail call void @llvm.dbg.value(metadata i64 %346, metadata !73, metadata !DIExpression()), !dbg !148
  %347 = icmp eq i64 %346, %277, !dbg !271
  br i1 %347, label %348, label %291, !dbg !251, !llvm.loop !272

348:                                              ; preds = %341
  %349 = add nuw nsw i64 %284, 1, !dbg !274
  tail call void @llvm.dbg.value(metadata i64 %349, metadata !70, metadata !DIExpression()), !dbg !148
  %350 = icmp eq i64 %349, %277, !dbg !249
  br i1 %350, label %562, label %283, !dbg !250, !llvm.loop !275

351:                                              ; preds = %266
  %352 = icmp eq i32 %57, 112
  %353 = and i1 %352, %267, !dbg !277
  br i1 %353, label %354, label %399, !dbg !277

354:                                              ; preds = %351
  tail call void @llvm.dbg.value(metadata i32 0, metadata !74, metadata !DIExpression()), !dbg !148
  %355 = icmp sgt i32 %4, 0, !dbg !278
  br i1 %355, label %356, label %562, !dbg !279

356:                                              ; preds = %354
  %357 = icmp sgt i32 %3, 0
  %358 = sext i32 %7 to i64, !dbg !279
  %359 = sext i32 %9 to i64, !dbg !279
  %360 = zext nneg i32 %4 to i64, !dbg !278
  %361 = zext nneg i32 %3 to i64
  br label %362, !dbg !279

362:                                              ; preds = %396, %356
  %363 = phi i64 [ 0, %356 ], [ %397, %396 ]
  tail call void @llvm.dbg.value(metadata i64 %363, metadata !74, metadata !DIExpression()), !dbg !148
  tail call void @llvm.dbg.value(metadata i32 0, metadata !70, metadata !DIExpression()), !dbg !148
  br i1 %357, label %364, label %396, !dbg !280

364:                                              ; preds = %362
  %365 = mul nsw i64 %363, %358
  %366 = mul nsw i64 %363, %359
  %367 = getelementptr double, ptr %6, i64 %365, !dbg !280
  %368 = getelementptr double, ptr %8, i64 %366, !dbg !280
  %369 = getelementptr double, ptr %8, i64 %366
  %370 = getelementptr double, ptr %6, i64 %365
  br label %371, !dbg !280

371:                                              ; preds = %393, %364
  %372 = phi i64 [ 0, %364 ], [ %394, %393 ]
  tail call void @llvm.dbg.value(metadata i64 %372, metadata !70, metadata !DIExpression()), !dbg !148
  %373 = getelementptr double, ptr %367, i64 %372, !dbg !281
  %374 = load double, ptr %373, align 8, !dbg !281, !tbaa !183
  %375 = fmul double %374, %5, !dbg !282
  tail call void @llvm.dbg.value(metadata double %375, metadata !90, metadata !DIExpression()), !dbg !283
  %376 = getelementptr double, ptr %368, i64 %372, !dbg !284
  %377 = load double, ptr %376, align 8, !dbg !284, !tbaa !183
  %378 = fmul double %377, %5, !dbg !285
  tail call void @llvm.dbg.value(metadata double %378, metadata !99, metadata !DIExpression()), !dbg !283
  tail call void @llvm.dbg.value(metadata i64 %372, metadata !73, metadata !DIExpression()), !dbg !148
  %379 = mul nsw i64 %372, %358
  %380 = getelementptr double, ptr %11, i64 %379, !dbg !286
  br label %381, !dbg !286

381:                                              ; preds = %381, %371
  %382 = phi i64 [ %372, %371 ], [ %391, %381 ]
  tail call void @llvm.dbg.value(metadata i64 %382, metadata !73, metadata !DIExpression()), !dbg !148
  %383 = getelementptr double, ptr %369, i64 %382, !dbg !288
  %384 = load double, ptr %383, align 8, !dbg !288, !tbaa !183
  %385 = fmul double %375, %384, !dbg !291
  %386 = getelementptr double, ptr %370, i64 %382, !dbg !292
  %387 = load double, ptr %386, align 8, !dbg !292, !tbaa !183
  %388 = fmul double %378, %387, !dbg !293
  %handler_result7 = call double @fAddHandlerDouble(double %385, double %388), !dbg !294
  %389 = getelementptr double, ptr %380, i64 %382, !dbg !294
  %390 = load double, ptr %389, align 8, !dbg !295, !tbaa !183
  %handler_result8 = call double @fAddHandlerDouble(double %390, double %handler_result7), !dbg !295
  store double %handler_result8, ptr %389, align 8, !dbg !295, !tbaa !183
  %391 = add nuw nsw i64 %382, 1, !dbg !296
  tail call void @llvm.dbg.value(metadata i64 %391, metadata !73, metadata !DIExpression()), !dbg !148
  %392 = icmp eq i64 %391, %361, !dbg !297
  br i1 %392, label %393, label %381, !dbg !286, !llvm.loop !298

393:                                              ; preds = %381
  %394 = add nuw nsw i64 %372, 1, !dbg !300
  tail call void @llvm.dbg.value(metadata i64 %394, metadata !70, metadata !DIExpression()), !dbg !148
  %395 = icmp eq i64 %394, %361, !dbg !301
  br i1 %395, label %396, label %371, !dbg !280, !llvm.loop !302

396:                                              ; preds = %393, %362
  %397 = add nuw nsw i64 %363, 1, !dbg !304
  tail call void @llvm.dbg.value(metadata i64 %397, metadata !74, metadata !DIExpression()), !dbg !148
  %398 = icmp eq i64 %397, %360, !dbg !278
  br i1 %398, label %562, label %362, !dbg !279, !llvm.loop !305

399:                                              ; preds = %351
  %400 = icmp eq i32 %58, 122, !dbg !307
  %401 = and i1 %268, %400, !dbg !308
  br i1 %401, label %402, label %485, !dbg !308

402:                                              ; preds = %399
  tail call void @llvm.dbg.value(metadata i32 0, metadata !70, metadata !DIExpression()), !dbg !148
  %403 = icmp sgt i32 %3, 0, !dbg !309
  br i1 %403, label %404, label %562, !dbg !310

404:                                              ; preds = %402
  %405 = icmp sgt i32 %4, 0
  %406 = sext i32 %9 to i64, !dbg !310
  %407 = sext i32 %7 to i64, !dbg !310
  %408 = sext i32 %12 to i64, !dbg !310
  %409 = zext nneg i32 %3 to i64, !dbg !309
  %410 = zext i32 %4 to i64
  %411 = and i64 %410, 1
  %412 = icmp eq i32 %4, 1
  %413 = and i64 %410, 2147483646
  %414 = icmp eq i64 %411, 0
  br label %415, !dbg !310

415:                                              ; preds = %481, %404
  %416 = phi i64 [ 0, %404 ], [ %482, %481 ]
  %417 = phi i64 [ 1, %404 ], [ %483, %481 ]
  tail call void @llvm.dbg.value(metadata i64 %416, metadata !70, metadata !DIExpression()), !dbg !148
  %418 = mul nsw i64 %416, %408
  tail call void @llvm.dbg.value(metadata i32 0, metadata !73, metadata !DIExpression()), !dbg !148
  %419 = mul nsw i64 %416, %407
  %420 = mul nsw i64 %416, %406
  %421 = getelementptr double, ptr %6, i64 %419
  %422 = getelementptr double, ptr %8, i64 %420
  %423 = getelementptr double, ptr %11, i64 %418, !dbg !311
  br label %424, !dbg !311

424:                                              ; preds = %474, %415
  %425 = phi i64 [ 0, %415 ], [ %479, %474 ]
  tail call void @llvm.dbg.value(metadata i64 %425, metadata !73, metadata !DIExpression()), !dbg !148
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !100, metadata !DIExpression()), !dbg !312
  tail call void @llvm.dbg.value(metadata i32 0, metadata !74, metadata !DIExpression()), !dbg !148
  br i1 %405, label %426, label %474, !dbg !313

426:                                              ; preds = %424
  %427 = mul nsw i64 %425, %406
  %428 = mul nsw i64 %425, %407
  %429 = getelementptr double, ptr %8, i64 %427, !dbg !313
  %430 = getelementptr double, ptr %6, i64 %428, !dbg !313
  br i1 %412, label %459, label %431, !dbg !313

431:                                              ; preds = %431, %426
  %432 = phi i64 [ %456, %431 ], [ 0, %426 ]
  %433 = phi double [ %handler_result12, %431 ], [ 0.000000e+00, %426 ]
  %434 = phi i64 [ %457, %431 ], [ 0, %426 ]
  tail call void @llvm.dbg.value(metadata double %433, metadata !100, metadata !DIExpression()), !dbg !312
  tail call void @llvm.dbg.value(metadata i64 %432, metadata !74, metadata !DIExpression()), !dbg !148
  %435 = getelementptr double, ptr %421, i64 %432, !dbg !315
  %436 = load double, ptr %435, align 8, !dbg !315, !tbaa !183
  %437 = getelementptr double, ptr %429, i64 %432, !dbg !318
  %438 = load double, ptr %437, align 8, !dbg !318, !tbaa !183
  %439 = fmul double %436, %438, !dbg !319
  %440 = getelementptr double, ptr %422, i64 %432, !dbg !320
  %441 = load double, ptr %440, align 8, !dbg !320, !tbaa !183
  %442 = getelementptr double, ptr %430, i64 %432, !dbg !321
  %443 = load double, ptr %442, align 8, !dbg !321, !tbaa !183
  %444 = fmul double %441, %443, !dbg !322
  %handler_result9 = call double @fAddHandlerDouble(double %439, double %444), !dbg !323
  %handler_result10 = call double @fAddHandlerDouble(double %433, double %handler_result9), !dbg !324
  tail call void @llvm.dbg.value(metadata double %handler_result10, metadata !100, metadata !DIExpression()), !dbg !312
  %445 = or disjoint i64 %432, 1, !dbg !324
  tail call void @llvm.dbg.value(metadata i64 %445, metadata !74, metadata !DIExpression()), !dbg !148
  tail call void @llvm.dbg.value(metadata double %handler_result10, metadata !100, metadata !DIExpression()), !dbg !312
  tail call void @llvm.dbg.value(metadata i64 %445, metadata !74, metadata !DIExpression()), !dbg !148
  %446 = getelementptr double, ptr %421, i64 %445, !dbg !315
  %447 = load double, ptr %446, align 8, !dbg !315, !tbaa !183
  %448 = getelementptr double, ptr %429, i64 %445, !dbg !318
  %449 = load double, ptr %448, align 8, !dbg !318, !tbaa !183
  %450 = fmul double %447, %449, !dbg !319
  %451 = getelementptr double, ptr %422, i64 %445, !dbg !320
  %452 = load double, ptr %451, align 8, !dbg !320, !tbaa !183
  %453 = getelementptr double, ptr %430, i64 %445, !dbg !321
  %454 = load double, ptr %453, align 8, !dbg !321, !tbaa !183
  %455 = fmul double %452, %454, !dbg !322
  %handler_result11 = call double @fAddHandlerDouble(double %450, double %455), !dbg !323
  %handler_result12 = call double @fAddHandlerDouble(double %handler_result10, double %handler_result11), !dbg !324
  tail call void @llvm.dbg.value(metadata double %handler_result12, metadata !100, metadata !DIExpression()), !dbg !312
  %456 = add nuw nsw i64 %432, 2, !dbg !324
  tail call void @llvm.dbg.value(metadata i64 %456, metadata !74, metadata !DIExpression()), !dbg !148
  %457 = add i64 %434, 2, !dbg !313
  %458 = icmp eq i64 %457, %413, !dbg !313
  br i1 %458, label %459, label %431, !dbg !313, !llvm.loop !325

459:                                              ; preds = %431, %426
  %460 = phi double [ undef, %426 ], [ %handler_result12, %431 ]
  %461 = phi i64 [ 0, %426 ], [ %456, %431 ]
  %462 = phi double [ 0.000000e+00, %426 ], [ %handler_result12, %431 ]
  br i1 %414, label %474, label %463, !dbg !313

463:                                              ; preds = %459
  tail call void @llvm.dbg.value(metadata double %462, metadata !100, metadata !DIExpression()), !dbg !312
  tail call void @llvm.dbg.value(metadata i64 %461, metadata !74, metadata !DIExpression()), !dbg !148
  %464 = getelementptr double, ptr %421, i64 %461, !dbg !315
  %465 = load double, ptr %464, align 8, !dbg !315, !tbaa !183
  %466 = getelementptr double, ptr %429, i64 %461, !dbg !318
  %467 = load double, ptr %466, align 8, !dbg !318, !tbaa !183
  %468 = fmul double %465, %467, !dbg !319
  %469 = getelementptr double, ptr %422, i64 %461, !dbg !320
  %470 = load double, ptr %469, align 8, !dbg !320, !tbaa !183
  %471 = getelementptr double, ptr %430, i64 %461, !dbg !321
  %472 = load double, ptr %471, align 8, !dbg !321, !tbaa !183
  %473 = fmul double %470, %472, !dbg !322
  %handler_result13 = call double @fAddHandlerDouble(double %468, double %473), !dbg !323
  %handler_result14 = call double @fAddHandlerDouble(double %462, double %handler_result13), !dbg !327
  tail call void @llvm.dbg.value(metadata double %handler_result14, metadata !100, metadata !DIExpression()), !dbg !312
  tail call void @llvm.dbg.value(metadata i64 %461, metadata !74, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !148
  br label %474, !dbg !327

474:                                              ; preds = %463, %459, %424
  %475 = phi double [ 0.000000e+00, %424 ], [ %460, %459 ], [ %handler_result14, %463 ], !dbg !312
  %476 = fmul double %475, %5, !dbg !327
  %477 = getelementptr double, ptr %423, i64 %425, !dbg !328
  %478 = load double, ptr %477, align 8, !dbg !329, !tbaa !183
  %handler_result15 = call double @fAddHandlerDouble(double %476, double %478), !dbg !329
  store double %handler_result15, ptr %477, align 8, !dbg !329, !tbaa !183
  %479 = add nuw nsw i64 %425, 1, !dbg !330
  tail call void @llvm.dbg.value(metadata i64 %479, metadata !73, metadata !DIExpression()), !dbg !148
  %480 = icmp eq i64 %479, %417, !dbg !331
  br i1 %480, label %481, label %424, !dbg !311, !llvm.loop !332

481:                                              ; preds = %474
  %482 = add nuw nsw i64 %416, 1, !dbg !334
  tail call void @llvm.dbg.value(metadata i64 %482, metadata !70, metadata !DIExpression()), !dbg !148
  %483 = add nuw nsw i64 %417, 1, !dbg !310
  %484 = icmp eq i64 %482, %409, !dbg !309
  br i1 %484, label %562, label %415, !dbg !310, !llvm.loop !335

485:                                              ; preds = %399
  %486 = and i1 %352, %400, !dbg !337
  br i1 %486, label %487, label %561, !dbg !337

487:                                              ; preds = %485
  tail call void @llvm.dbg.value(metadata i32 0, metadata !74, metadata !DIExpression()), !dbg !148
  %488 = icmp sgt i32 %4, 0, !dbg !338
  br i1 %488, label %489, label %562, !dbg !339

489:                                              ; preds = %487
  %490 = icmp sgt i32 %3, 0
  %491 = sext i32 %7 to i64, !dbg !339
  %492 = sext i32 %9 to i64, !dbg !339
  %493 = zext nneg i32 %4 to i64, !dbg !338
  %494 = zext nneg i32 %3 to i64
  br label %495, !dbg !339

495:                                              ; preds = %558, %489
  %496 = phi i64 [ 0, %489 ], [ %559, %558 ]
  tail call void @llvm.dbg.value(metadata i64 %496, metadata !74, metadata !DIExpression()), !dbg !148
  tail call void @llvm.dbg.value(metadata i32 0, metadata !70, metadata !DIExpression()), !dbg !148
  br i1 %490, label %497, label %558, !dbg !340

497:                                              ; preds = %495
  %498 = mul nsw i64 %496, %491
  %499 = mul nsw i64 %496, %492
  %500 = getelementptr double, ptr %6, i64 %498, !dbg !340
  %501 = getelementptr double, ptr %8, i64 %499, !dbg !340
  %502 = getelementptr double, ptr %8, i64 %499
  %503 = getelementptr double, ptr %6, i64 %498
  br label %504, !dbg !340

504:                                              ; preds = %554, %497
  %505 = phi i64 [ 0, %497 ], [ %555, %554 ]
  %506 = phi i64 [ 1, %497 ], [ %556, %554 ]
  tail call void @llvm.dbg.value(metadata i64 %505, metadata !70, metadata !DIExpression()), !dbg !148
  %507 = getelementptr double, ptr %500, i64 %505, !dbg !341
  %508 = load double, ptr %507, align 8, !dbg !341, !tbaa !183
  %509 = fmul double %508, %5, !dbg !342
  tail call void @llvm.dbg.value(metadata double %509, metadata !109, metadata !DIExpression()), !dbg !343
  %510 = getelementptr double, ptr %501, i64 %505, !dbg !344
  %511 = load double, ptr %510, align 8, !dbg !344, !tbaa !183
  %512 = fmul double %511, %5, !dbg !345
  tail call void @llvm.dbg.value(metadata double %512, metadata !118, metadata !DIExpression()), !dbg !343
  tail call void @llvm.dbg.value(metadata i32 0, metadata !73, metadata !DIExpression()), !dbg !148
  %513 = mul nsw i64 %505, %491
  %514 = getelementptr double, ptr %11, i64 %513, !dbg !346
  %515 = and i64 %506, 1, !dbg !346
  %516 = icmp eq i64 %505, 0, !dbg !346
  br i1 %516, label %542, label %517, !dbg !346

517:                                              ; preds = %504
  %518 = and i64 %506, 9223372036854775806, !dbg !346
  br label %519, !dbg !346

519:                                              ; preds = %519, %517
  %520 = phi i64 [ 0, %517 ], [ %539, %519 ]
  %521 = phi i64 [ 0, %517 ], [ %540, %519 ]
  tail call void @llvm.dbg.value(metadata i64 %520, metadata !73, metadata !DIExpression()), !dbg !148
  %522 = getelementptr double, ptr %502, i64 %520, !dbg !348
  %523 = load double, ptr %522, align 8, !dbg !348, !tbaa !183
  %524 = fmul double %509, %523, !dbg !351
  %525 = getelementptr double, ptr %503, i64 %520, !dbg !352
  %526 = load double, ptr %525, align 8, !dbg !352, !tbaa !183
  %527 = fmul double %512, %526, !dbg !353
  %handler_result16 = call double @fAddHandlerDouble(double %524, double %527), !dbg !354
  %528 = getelementptr double, ptr %514, i64 %520, !dbg !354
  %529 = load double, ptr %528, align 8, !dbg !355, !tbaa !183
  %handler_result17 = call double @fAddHandlerDouble(double %529, double %handler_result16), !dbg !355
  store double %handler_result17, ptr %528, align 8, !dbg !355, !tbaa !183
  %530 = or disjoint i64 %520, 1, !dbg !356
  tail call void @llvm.dbg.value(metadata i64 %530, metadata !73, metadata !DIExpression()), !dbg !148
  tail call void @llvm.dbg.value(metadata i64 %530, metadata !73, metadata !DIExpression()), !dbg !148
  %531 = getelementptr double, ptr %502, i64 %530, !dbg !348
  %532 = load double, ptr %531, align 8, !dbg !348, !tbaa !183
  %533 = fmul double %509, %532, !dbg !351
  %534 = getelementptr double, ptr %503, i64 %530, !dbg !352
  %535 = load double, ptr %534, align 8, !dbg !352, !tbaa !183
  %536 = fmul double %512, %535, !dbg !353
  %handler_result18 = call double @fAddHandlerDouble(double %533, double %536), !dbg !354
  %537 = getelementptr double, ptr %514, i64 %530, !dbg !354
  %538 = load double, ptr %537, align 8, !dbg !355, !tbaa !183
  %handler_result19 = call double @fAddHandlerDouble(double %538, double %handler_result18), !dbg !355
  store double %handler_result19, ptr %537, align 8, !dbg !355, !tbaa !183
  %539 = add nuw nsw i64 %520, 2, !dbg !356
  tail call void @llvm.dbg.value(metadata i64 %539, metadata !73, metadata !DIExpression()), !dbg !148
  %540 = add i64 %521, 2, !dbg !346
  %541 = icmp eq i64 %540, %518, !dbg !346
  br i1 %541, label %542, label %519, !dbg !346, !llvm.loop !357

542:                                              ; preds = %519, %504
  %543 = phi i64 [ 0, %504 ], [ %539, %519 ]
  %544 = icmp eq i64 %515, 0, !dbg !346
  br i1 %544, label %554, label %545, !dbg !346

545:                                              ; preds = %542
  tail call void @llvm.dbg.value(metadata i64 %543, metadata !73, metadata !DIExpression()), !dbg !148
  %546 = getelementptr double, ptr %502, i64 %543, !dbg !348
  %547 = load double, ptr %546, align 8, !dbg !348, !tbaa !183
  %548 = fmul double %509, %547, !dbg !351
  %549 = getelementptr double, ptr %503, i64 %543, !dbg !352
  %550 = load double, ptr %549, align 8, !dbg !352, !tbaa !183
  %551 = fmul double %512, %550, !dbg !353
  %handler_result20 = call double @fAddHandlerDouble(double %548, double %551), !dbg !354
  %552 = getelementptr double, ptr %514, i64 %543, !dbg !354
  %553 = load double, ptr %552, align 8, !dbg !355, !tbaa !183
  %handler_result21 = call double @fAddHandlerDouble(double %553, double %handler_result20), !dbg !355
  store double %handler_result21, ptr %552, align 8, !dbg !355, !tbaa !183
  tail call void @llvm.dbg.value(metadata i64 %543, metadata !73, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !148
  br label %554, !dbg !359

554:                                              ; preds = %545, %542
  %555 = add nuw nsw i64 %505, 1, !dbg !359
  tail call void @llvm.dbg.value(metadata i64 %555, metadata !70, metadata !DIExpression()), !dbg !148
  %556 = add nuw nsw i64 %506, 1, !dbg !340
  %557 = icmp eq i64 %555, %494, !dbg !360
  br i1 %557, label %558, label %504, !dbg !340, !llvm.loop !361

558:                                              ; preds = %554, %495
  %559 = add nuw nsw i64 %496, 1, !dbg !363
  tail call void @llvm.dbg.value(metadata i64 %559, metadata !74, metadata !DIExpression()), !dbg !148
  %560 = icmp eq i64 %559, %493, !dbg !338
  br i1 %560, label %562, label %495, !dbg !339, !llvm.loop !364

561:                                              ; preds = %485
  tail call void (i32, ptr, ptr, ...) @cblas_xerbla(i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #4, !dbg !366
  br label %562

562:                                              ; preds = %561, %558, %487, %481, %402, %396, %354, %348, %270, %265, %42
  ret void, !dbg !368
}

declare !dbg !370 void @cblas_xerbla(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

declare double @fAddHandlerDouble(double, double)

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
