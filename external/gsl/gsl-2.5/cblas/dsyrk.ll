; ModuleID = 'dsyrk.c'
source_filename = "dsyrk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"./source_syrk_r.h\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !7
@.str.2 = private unnamed_addr constant [23 x i8] c"unrecognized operation\00", align 1, !dbg !12

; Function Attrs: nounwind uwtable
define dso_local void @cblas_dsyrk(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, double noundef %5, ptr nocapture noundef readonly %6, i32 noundef %7, double noundef %8, ptr nocapture noundef %9, i32 noundef %10) local_unnamed_addr #0 !dbg !44 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !57, metadata !DIExpression()), !dbg !115
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !58, metadata !DIExpression()), !dbg !115
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !59, metadata !DIExpression()), !dbg !115
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !60, metadata !DIExpression()), !dbg !115
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !61, metadata !DIExpression()), !dbg !115
  tail call void @llvm.dbg.value(metadata double %5, metadata !62, metadata !DIExpression()), !dbg !115
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !63, metadata !DIExpression()), !dbg !115
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !64, metadata !DIExpression()), !dbg !115
  tail call void @llvm.dbg.value(metadata double %8, metadata !65, metadata !DIExpression()), !dbg !115
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !66, metadata !DIExpression()), !dbg !115
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !67, metadata !DIExpression()), !dbg !115
  tail call void @llvm.dbg.value(metadata i32 0, metadata !75, metadata !DIExpression()), !dbg !116
  tail call void @llvm.dbg.value(metadata i32 0, metadata !77, metadata !DIExpression()), !dbg !117
  %12 = icmp eq i32 %0, 101, !dbg !118
  %13 = icmp eq i32 %2, 111, !dbg !120
  %14 = select i1 %13, i32 %4, i32 %3, !dbg !120
  %15 = select i1 %13, i32 %3, i32 %4, !dbg !120
  %16 = select i1 %12, i32 %14, i32 %15, !dbg !120
  tail call void @llvm.dbg.value(metadata i32 %16, metadata !77, metadata !DIExpression()), !dbg !117
  %17 = add i32 %0, -103, !dbg !121
  %18 = icmp ult i32 %17, -2, !dbg !121
  %19 = zext i1 %18 to i32, !dbg !121
  tail call void @llvm.dbg.value(metadata i32 %19, metadata !75, metadata !DIExpression()), !dbg !116
  %20 = add i32 %1, -123, !dbg !123
  %21 = icmp ult i32 %20, -2, !dbg !123
  %22 = select i1 %21, i32 2, i32 %19, !dbg !123
  tail call void @llvm.dbg.value(metadata i32 %22, metadata !75, metadata !DIExpression()), !dbg !116
  %23 = add i32 %2, -114, !dbg !125
  %24 = icmp ult i32 %23, -3, !dbg !125
  %25 = select i1 %24, i32 3, i32 %22, !dbg !125
  tail call void @llvm.dbg.value(metadata i32 %25, metadata !75, metadata !DIExpression()), !dbg !116
  %26 = icmp slt i32 %3, 0, !dbg !127
  %27 = select i1 %26, i32 4, i32 %25, !dbg !120
  tail call void @llvm.dbg.value(metadata i32 %27, metadata !75, metadata !DIExpression()), !dbg !116
  %28 = icmp slt i32 %4, 0, !dbg !129
  %29 = select i1 %28, i32 5, i32 %27, !dbg !120
  tail call void @llvm.dbg.value(metadata i32 %29, metadata !75, metadata !DIExpression()), !dbg !116
  %30 = tail call i32 @llvm.smax.i32(i32 %16, i32 1), !dbg !131
  %31 = icmp sgt i32 %30, %7, !dbg !131
  %32 = select i1 %31, i32 8, i32 %29, !dbg !120
  tail call void @llvm.dbg.value(metadata i32 %32, metadata !75, metadata !DIExpression()), !dbg !116
  %33 = tail call i32 @llvm.smax.i32(i32 %3, i32 1), !dbg !133
  %34 = icmp sgt i32 %33, %10, !dbg !133
  %35 = select i1 %34, i32 11, i32 %32, !dbg !120
  tail call void @llvm.dbg.value(metadata i32 %35, metadata !75, metadata !DIExpression()), !dbg !116
  %36 = icmp eq i32 %35, 0, !dbg !135
  br i1 %36, label %38, label %37, !dbg !137

37:                                               ; preds = %11
  tail call void (i32, ptr, ptr, ...) @cblas_xerbla(i32 noundef %35, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #4, !dbg !135
  br label %38, !dbg !135

38:                                               ; preds = %37, %11
  %39 = fcmp oeq double %5, 0.000000e+00, !dbg !138
  %40 = fcmp oeq double %8, 1.000000e+00
  %41 = and i1 %39, %40, !dbg !140
  br i1 %41, label %625, label %42, !dbg !140

42:                                               ; preds = %38
  br i1 %12, label %43, label %46, !dbg !141

43:                                               ; preds = %42
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !73, metadata !DIExpression()), !dbg !142
  %44 = icmp eq i32 %2, 113, !dbg !143
  %45 = select i1 %44, i32 112, i32 %2, !dbg !146
  tail call void @llvm.dbg.value(metadata i32 %45, metadata !74, metadata !DIExpression()), !dbg !142
  br label %52, !dbg !147

46:                                               ; preds = %42
  %47 = icmp eq i32 %1, 121, !dbg !148
  %48 = select i1 %47, i32 122, i32 121, !dbg !150
  tail call void @llvm.dbg.value(metadata i32 %48, metadata !73, metadata !DIExpression()), !dbg !142
  %49 = and i32 %2, -2, !dbg !151
  %50 = icmp eq i32 %49, 112, !dbg !151
  %51 = select i1 %50, i32 111, i32 112
  br label %52

52:                                               ; preds = %46, %43
  %53 = phi i32 [ %1, %43 ], [ %48, %46 ], !dbg !153
  %54 = phi i32 [ %45, %43 ], [ %51, %46 ], !dbg !153
  tail call void @llvm.dbg.value(metadata i32 %54, metadata !74, metadata !DIExpression()), !dbg !142
  tail call void @llvm.dbg.value(metadata i32 %53, metadata !73, metadata !DIExpression()), !dbg !142
  %55 = fcmp oeq double %8, 0.000000e+00, !dbg !154
  br i1 %55, label %56, label %130, !dbg !156

56:                                               ; preds = %52
  %57 = icmp eq i32 %53, 121, !dbg !157
  tail call void @llvm.dbg.value(metadata i32 0, metadata !68, metadata !DIExpression()), !dbg !142
  tail call void @llvm.dbg.value(metadata i32 0, metadata !68, metadata !DIExpression()), !dbg !142
  tail call void @llvm.dbg.value(metadata i32 0, metadata !68, metadata !DIExpression()), !dbg !142
  tail call void @llvm.dbg.value(metadata i32 0, metadata !68, metadata !DIExpression()), !dbg !142
  %58 = icmp sgt i32 %3, 0, !dbg !160
  br i1 %57, label %68, label %59, !dbg !161

59:                                               ; preds = %56
  br i1 %58, label %60, label %261, !dbg !162

60:                                               ; preds = %59
  %61 = sext i32 %10 to i64, !dbg !162
  %62 = shl nsw i64 %61, 3
  %63 = zext nneg i32 %3 to i64, !dbg !165
  %64 = and i64 %63, 3, !dbg !162
  %65 = icmp ult i32 %3, 4, !dbg !162
  br i1 %65, label %235, label %66, !dbg !162

66:                                               ; preds = %60
  %67 = and i64 %63, 2147483644, !dbg !162
  br label %105, !dbg !162

68:                                               ; preds = %56
  br i1 %58, label %69, label %261, !dbg !167

69:                                               ; preds = %68
  %70 = add i32 %10, 1, !dbg !167
  %71 = zext nneg i32 %3 to i64, !dbg !170
  %72 = and i64 %71, 1, !dbg !167
  %73 = icmp eq i32 %3, 1, !dbg !167
  br i1 %73, label %222, label %74, !dbg !167

74:                                               ; preds = %69
  %75 = and i64 %71, 2147483646, !dbg !167
  br label %76, !dbg !167

76:                                               ; preds = %76, %74
  %77 = phi i64 [ 0, %74 ], [ %102, %76 ]
  %78 = phi i64 [ 0, %74 ], [ %103, %76 ]
  tail call void @llvm.dbg.value(metadata i64 %77, metadata !68, metadata !DIExpression()), !dbg !142
  tail call void @llvm.dbg.value(metadata i64 %77, metadata !71, metadata !DIExpression()), !dbg !142
  %79 = trunc i64 %77 to i32
  %80 = mul i32 %70, %79
  %81 = sext i32 %80 to i64
  %82 = shl nsw i64 %81, 3
  %83 = getelementptr i8, ptr %9, i64 %82
  %84 = trunc i64 %77 to i32
  %85 = xor i32 %84, -1
  %86 = add i32 %85, %3
  %87 = zext i32 %86 to i64
  %88 = shl nuw nsw i64 %87, 3
  %89 = add nuw nsw i64 %88, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %83, i8 0, i64 %89, i1 false), !dbg !172, !tbaa !177
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !71, metadata !DIExpression()), !dbg !142
  %90 = or disjoint i64 %77, 1, !dbg !181
  tail call void @llvm.dbg.value(metadata i64 %90, metadata !68, metadata !DIExpression()), !dbg !142
  tail call void @llvm.dbg.value(metadata i64 %90, metadata !68, metadata !DIExpression()), !dbg !142
  tail call void @llvm.dbg.value(metadata i64 %90, metadata !71, metadata !DIExpression()), !dbg !142
  %91 = trunc i64 %90 to i32
  %92 = mul i32 %70, %91
  %93 = sext i32 %92 to i64
  %94 = shl nsw i64 %93, 3
  %95 = getelementptr i8, ptr %9, i64 %94
  %96 = trunc i64 %90 to i32
  %97 = xor i32 %96, -1
  %98 = add i32 %97, %3
  %99 = zext i32 %98 to i64
  %100 = shl nuw nsw i64 %99, 3
  %101 = add nuw nsw i64 %100, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %95, i8 0, i64 %101, i1 false), !dbg !172, !tbaa !177
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !71, metadata !DIExpression()), !dbg !142
  %102 = add nuw nsw i64 %77, 2, !dbg !181
  tail call void @llvm.dbg.value(metadata i64 %102, metadata !68, metadata !DIExpression()), !dbg !142
  %103 = add i64 %78, 2, !dbg !167
  %104 = icmp eq i64 %103, %75, !dbg !167
  br i1 %104, label %220, label %76, !dbg !167, !llvm.loop !182

105:                                              ; preds = %105, %66
  %106 = phi i64 [ 0, %66 ], [ %127, %105 ]
  %107 = phi i64 [ 0, %66 ], [ %128, %105 ]
  tail call void @llvm.dbg.value(metadata i64 %106, metadata !68, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !142
  %108 = mul i64 %62, %106
  %109 = getelementptr i8, ptr %9, i64 %108
  %110 = shl nuw nsw i64 %106, 3
  %111 = or disjoint i64 %110, 8
  tail call void @llvm.dbg.value(metadata i32 0, metadata !71, metadata !DIExpression()), !dbg !142
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %109, i8 0, i64 %111, i1 false), !dbg !185, !tbaa !177
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !71, metadata !DIExpression()), !dbg !142
  %112 = or disjoint i64 %106, 1, !dbg !162
  tail call void @llvm.dbg.value(metadata i64 %112, metadata !68, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !142
  tail call void @llvm.dbg.value(metadata i64 %112, metadata !68, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !142
  %113 = mul i64 %62, %112
  %114 = getelementptr i8, ptr %9, i64 %113
  %115 = shl nuw nsw i64 %112, 3
  %116 = add nuw nsw i64 %115, 8
  tail call void @llvm.dbg.value(metadata i32 0, metadata !71, metadata !DIExpression()), !dbg !142
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %114, i8 0, i64 %116, i1 false), !dbg !185, !tbaa !177
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !71, metadata !DIExpression()), !dbg !142
  %117 = or disjoint i64 %106, 2, !dbg !162
  tail call void @llvm.dbg.value(metadata i64 %117, metadata !68, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !142
  tail call void @llvm.dbg.value(metadata i64 %117, metadata !68, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !142
  %118 = mul i64 %62, %117
  %119 = getelementptr i8, ptr %9, i64 %118
  %120 = shl nuw nsw i64 %117, 3
  %121 = or disjoint i64 %120, 8
  tail call void @llvm.dbg.value(metadata i32 0, metadata !71, metadata !DIExpression()), !dbg !142
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %119, i8 0, i64 %121, i1 false), !dbg !185, !tbaa !177
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !71, metadata !DIExpression()), !dbg !142
  %122 = or disjoint i64 %106, 3, !dbg !162
  tail call void @llvm.dbg.value(metadata i64 %122, metadata !68, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !142
  tail call void @llvm.dbg.value(metadata i64 %122, metadata !68, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !142
  %123 = mul i64 %62, %122
  %124 = getelementptr i8, ptr %9, i64 %123
  %125 = shl nuw nsw i64 %122, 3
  %126 = add nuw nsw i64 %125, 8
  tail call void @llvm.dbg.value(metadata i32 0, metadata !71, metadata !DIExpression()), !dbg !142
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %124, i8 0, i64 %126, i1 false), !dbg !185, !tbaa !177
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !71, metadata !DIExpression()), !dbg !142
  %127 = add nuw nsw i64 %106, 4, !dbg !162
  tail call void @llvm.dbg.value(metadata i64 %127, metadata !68, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !142
  %128 = add i64 %107, 4, !dbg !162
  %129 = icmp eq i64 %128, %67, !dbg !162
  br i1 %129, label %235, label %105, !dbg !162, !llvm.loop !190

130:                                              ; preds = %52
  %131 = fcmp une double %8, 1.000000e+00, !dbg !192
  br i1 %131, label %132, label %261, !dbg !194

132:                                              ; preds = %130
  %133 = icmp eq i32 %53, 121, !dbg !195
  tail call void @llvm.dbg.value(metadata i32 0, metadata !68, metadata !DIExpression()), !dbg !142
  tail call void @llvm.dbg.value(metadata i32 0, metadata !68, metadata !DIExpression()), !dbg !142
  tail call void @llvm.dbg.value(metadata i32 0, metadata !68, metadata !DIExpression()), !dbg !142
  tail call void @llvm.dbg.value(metadata i32 0, metadata !68, metadata !DIExpression()), !dbg !142
  %134 = icmp sgt i32 %3, 0, !dbg !198
  br i1 %133, label %139, label %135, !dbg !199

135:                                              ; preds = %132
  br i1 %134, label %136, label %261, !dbg !200

136:                                              ; preds = %135
  %137 = sext i32 %10 to i64, !dbg !200
  %138 = zext nneg i32 %3 to i64, !dbg !203
  br label %174, !dbg !200

139:                                              ; preds = %132
  br i1 %134, label %140, label %261, !dbg !205

140:                                              ; preds = %139
  %141 = sext i32 %10 to i64, !dbg !205
  %142 = zext nneg i32 %3 to i64, !dbg !208
  %143 = and i64 %142, 1, !dbg !205
  %144 = icmp eq i32 %3, 1, !dbg !205
  br i1 %144, label %248, label %145, !dbg !205

145:                                              ; preds = %140
  %146 = and i64 %142, 2147483646, !dbg !205
  br label %147, !dbg !205

147:                                              ; preds = %170, %145
  %148 = phi i64 [ 0, %145 ], [ %171, %170 ]
  %149 = phi i64 [ 0, %145 ], [ %172, %170 ]
  tail call void @llvm.dbg.value(metadata i64 %148, metadata !68, metadata !DIExpression()), !dbg !142
  tail call void @llvm.dbg.value(metadata i64 %148, metadata !71, metadata !DIExpression()), !dbg !142
  %150 = mul nsw i64 %148, %141
  %151 = getelementptr double, ptr %9, i64 %150, !dbg !210
  br label %152, !dbg !210

152:                                              ; preds = %147, %152
  %153 = phi i64 [ %148, %147 ], [ %157, %152 ]
  tail call void @llvm.dbg.value(metadata i64 %153, metadata !71, metadata !DIExpression()), !dbg !142
  %154 = getelementptr double, ptr %151, i64 %153, !dbg !213
  %155 = load double, ptr %154, align 8, !dbg !216, !tbaa !177
  %156 = fmul double %155, %8, !dbg !216
  store double %156, ptr %154, align 8, !dbg !216, !tbaa !177
  %157 = add nuw nsw i64 %153, 1, !dbg !217
  tail call void @llvm.dbg.value(metadata i64 %157, metadata !71, metadata !DIExpression()), !dbg !142
  %158 = icmp eq i64 %157, %142, !dbg !218
  br i1 %158, label %159, label %152, !dbg !210, !llvm.loop !219

159:                                              ; preds = %152
  %160 = or disjoint i64 %148, 1, !dbg !221
  tail call void @llvm.dbg.value(metadata i64 %160, metadata !68, metadata !DIExpression()), !dbg !142
  tail call void @llvm.dbg.value(metadata i64 %160, metadata !68, metadata !DIExpression()), !dbg !142
  tail call void @llvm.dbg.value(metadata i64 %160, metadata !71, metadata !DIExpression()), !dbg !142
  %161 = mul nsw i64 %160, %141
  %162 = getelementptr double, ptr %9, i64 %161, !dbg !210
  br label %163, !dbg !210

163:                                              ; preds = %163, %159
  %164 = phi i64 [ %160, %159 ], [ %168, %163 ]
  tail call void @llvm.dbg.value(metadata i64 %164, metadata !71, metadata !DIExpression()), !dbg !142
  %165 = getelementptr double, ptr %162, i64 %164, !dbg !213
  %166 = load double, ptr %165, align 8, !dbg !216, !tbaa !177
  %167 = fmul double %166, %8, !dbg !216
  store double %167, ptr %165, align 8, !dbg !216, !tbaa !177
  %168 = add nuw nsw i64 %164, 1, !dbg !217
  tail call void @llvm.dbg.value(metadata i64 %168, metadata !71, metadata !DIExpression()), !dbg !142
  %169 = icmp eq i64 %168, %142, !dbg !218
  br i1 %169, label %170, label %163, !dbg !210, !llvm.loop !219

170:                                              ; preds = %163
  %171 = add nuw nsw i64 %148, 2, !dbg !221
  tail call void @llvm.dbg.value(metadata i64 %171, metadata !68, metadata !DIExpression()), !dbg !142
  %172 = add i64 %149, 2, !dbg !205
  %173 = icmp eq i64 %172, %146, !dbg !205
  br i1 %173, label %248, label %147, !dbg !205, !llvm.loop !222

174:                                              ; preds = %136, %216
  %175 = phi i64 [ 0, %136 ], [ %217, %216 ]
  %176 = phi i64 [ 1, %136 ], [ %218, %216 ]
  tail call void @llvm.dbg.value(metadata i64 %175, metadata !68, metadata !DIExpression()), !dbg !142
  %177 = mul nsw i64 %175, %137
  tail call void @llvm.dbg.value(metadata i32 0, metadata !71, metadata !DIExpression()), !dbg !142
  %178 = getelementptr double, ptr %9, i64 %177, !dbg !224
  %179 = and i64 %176, 3, !dbg !224
  %180 = icmp ult i64 %175, 3, !dbg !224
  br i1 %180, label %204, label %181, !dbg !224

181:                                              ; preds = %174
  %182 = and i64 %176, 9223372036854775804, !dbg !224
  br label %183, !dbg !224

183:                                              ; preds = %183, %181
  %184 = phi i64 [ 0, %181 ], [ %201, %183 ]
  %185 = phi i64 [ 0, %181 ], [ %202, %183 ]
  tail call void @llvm.dbg.value(metadata i64 %184, metadata !71, metadata !DIExpression()), !dbg !142
  %186 = getelementptr double, ptr %178, i64 %184, !dbg !227
  %187 = load double, ptr %186, align 8, !dbg !230, !tbaa !177
  %188 = fmul double %187, %8, !dbg !230
  store double %188, ptr %186, align 8, !dbg !230, !tbaa !177
  %189 = or disjoint i64 %184, 1, !dbg !231
  tail call void @llvm.dbg.value(metadata i64 %189, metadata !71, metadata !DIExpression()), !dbg !142
  tail call void @llvm.dbg.value(metadata i64 %189, metadata !71, metadata !DIExpression()), !dbg !142
  %190 = getelementptr double, ptr %178, i64 %189, !dbg !227
  %191 = load double, ptr %190, align 8, !dbg !230, !tbaa !177
  %192 = fmul double %191, %8, !dbg !230
  store double %192, ptr %190, align 8, !dbg !230, !tbaa !177
  %193 = or disjoint i64 %184, 2, !dbg !231
  tail call void @llvm.dbg.value(metadata i64 %193, metadata !71, metadata !DIExpression()), !dbg !142
  tail call void @llvm.dbg.value(metadata i64 %193, metadata !71, metadata !DIExpression()), !dbg !142
  %194 = getelementptr double, ptr %178, i64 %193, !dbg !227
  %195 = load double, ptr %194, align 8, !dbg !230, !tbaa !177
  %196 = fmul double %195, %8, !dbg !230
  store double %196, ptr %194, align 8, !dbg !230, !tbaa !177
  %197 = or disjoint i64 %184, 3, !dbg !231
  tail call void @llvm.dbg.value(metadata i64 %197, metadata !71, metadata !DIExpression()), !dbg !142
  tail call void @llvm.dbg.value(metadata i64 %197, metadata !71, metadata !DIExpression()), !dbg !142
  %198 = getelementptr double, ptr %178, i64 %197, !dbg !227
  %199 = load double, ptr %198, align 8, !dbg !230, !tbaa !177
  %200 = fmul double %199, %8, !dbg !230
  store double %200, ptr %198, align 8, !dbg !230, !tbaa !177
  %201 = add nuw nsw i64 %184, 4, !dbg !231
  tail call void @llvm.dbg.value(metadata i64 %201, metadata !71, metadata !DIExpression()), !dbg !142
  %202 = add i64 %185, 4, !dbg !224
  %203 = icmp eq i64 %202, %182, !dbg !224
  br i1 %203, label %204, label %183, !dbg !224, !llvm.loop !232

204:                                              ; preds = %183, %174
  %205 = phi i64 [ 0, %174 ], [ %201, %183 ]
  %206 = icmp eq i64 %179, 0, !dbg !224
  br i1 %206, label %216, label %207, !dbg !224

207:                                              ; preds = %204, %207
  %208 = phi i64 [ %213, %207 ], [ %205, %204 ]
  %209 = phi i64 [ %214, %207 ], [ 0, %204 ]
  tail call void @llvm.dbg.value(metadata i64 %208, metadata !71, metadata !DIExpression()), !dbg !142
  %210 = getelementptr double, ptr %178, i64 %208, !dbg !227
  %211 = load double, ptr %210, align 8, !dbg !230, !tbaa !177
  %212 = fmul double %211, %8, !dbg !230
  store double %212, ptr %210, align 8, !dbg !230, !tbaa !177
  %213 = add nuw nsw i64 %208, 1, !dbg !231
  tail call void @llvm.dbg.value(metadata i64 %213, metadata !71, metadata !DIExpression()), !dbg !142
  %214 = add i64 %209, 1, !dbg !224
  %215 = icmp eq i64 %214, %179, !dbg !224
  br i1 %215, label %216, label %207, !dbg !224, !llvm.loop !234

216:                                              ; preds = %207, %204
  %217 = add nuw nsw i64 %175, 1, !dbg !236
  tail call void @llvm.dbg.value(metadata i64 %217, metadata !68, metadata !DIExpression()), !dbg !142
  %218 = add nuw nsw i64 %176, 1, !dbg !200
  %219 = icmp eq i64 %217, %138, !dbg !203
  br i1 %219, label %261, label %174, !dbg !200, !llvm.loop !237

220:                                              ; preds = %76
  %221 = trunc i64 %102 to i32
  br label %222, !dbg !167

222:                                              ; preds = %220, %69
  %223 = phi i32 [ 0, %69 ], [ %221, %220 ]
  %224 = icmp eq i64 %72, 0, !dbg !167
  br i1 %224, label %261, label %225, !dbg !167

225:                                              ; preds = %222
  tail call void @llvm.dbg.value(metadata i32 %223, metadata !68, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)), !dbg !142
  tail call void @llvm.dbg.value(metadata i32 %223, metadata !71, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)), !dbg !142
  %226 = mul i32 %70, %223
  %227 = sext i32 %226 to i64
  %228 = shl nsw i64 %227, 3
  %229 = getelementptr i8, ptr %9, i64 %228
  %230 = xor i32 %223, -1
  %231 = add i32 %230, %3
  %232 = zext i32 %231 to i64
  %233 = shl nuw nsw i64 %232, 3
  %234 = add nuw nsw i64 %233, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %229, i8 0, i64 %234, i1 false), !dbg !172, !tbaa !177
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !71, metadata !DIExpression()), !dbg !142
  tail call void @llvm.dbg.value(metadata i32 %223, metadata !68, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)), !dbg !142
  br label %261, !dbg !239

235:                                              ; preds = %105, %60
  %236 = phi i64 [ 0, %60 ], [ %127, %105 ]
  %237 = icmp eq i64 %64, 0, !dbg !162
  br i1 %237, label %261, label %238, !dbg !162

238:                                              ; preds = %235, %238
  %239 = phi i64 [ %245, %238 ], [ %236, %235 ]
  %240 = phi i64 [ %246, %238 ], [ 0, %235 ]
  tail call void @llvm.dbg.value(metadata i64 %239, metadata !68, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !142
  %241 = mul i64 %62, %239
  %242 = getelementptr i8, ptr %9, i64 %241
  %243 = shl nuw nsw i64 %239, 3
  %244 = add nuw nsw i64 %243, 8
  tail call void @llvm.dbg.value(metadata i32 0, metadata !71, metadata !DIExpression()), !dbg !142
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %242, i8 0, i64 %244, i1 false), !dbg !185, !tbaa !177
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !71, metadata !DIExpression()), !dbg !142
  %245 = add nuw nsw i64 %239, 1, !dbg !162
  tail call void @llvm.dbg.value(metadata i64 %245, metadata !68, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !142
  %246 = add i64 %240, 1, !dbg !162
  %247 = icmp eq i64 %246, %64, !dbg !162
  br i1 %247, label %261, label %238, !dbg !162, !llvm.loop !240

248:                                              ; preds = %170, %140
  %249 = phi i64 [ 0, %140 ], [ %171, %170 ]
  %250 = icmp eq i64 %143, 0, !dbg !210
  br i1 %250, label %261, label %251, !dbg !210

251:                                              ; preds = %248
  tail call void @llvm.dbg.value(metadata i64 %249, metadata !68, metadata !DIExpression()), !dbg !142
  tail call void @llvm.dbg.value(metadata i64 %249, metadata !71, metadata !DIExpression()), !dbg !142
  %252 = mul nsw i64 %249, %141
  %253 = getelementptr double, ptr %9, i64 %252, !dbg !210
  br label %254, !dbg !210

254:                                              ; preds = %254, %251
  %255 = phi i64 [ %249, %251 ], [ %259, %254 ]
  tail call void @llvm.dbg.value(metadata i64 %255, metadata !71, metadata !DIExpression()), !dbg !142
  %256 = getelementptr double, ptr %253, i64 %255, !dbg !213
  %257 = load double, ptr %256, align 8, !dbg !216, !tbaa !177
  %258 = fmul double %257, %8, !dbg !216
  store double %258, ptr %256, align 8, !dbg !216, !tbaa !177
  %259 = add nuw nsw i64 %255, 1, !dbg !217
  tail call void @llvm.dbg.value(metadata i64 %259, metadata !71, metadata !DIExpression()), !dbg !142
  %260 = icmp eq i64 %259, %142, !dbg !218
  br i1 %260, label %261, label %254, !dbg !210, !llvm.loop !219

261:                                              ; preds = %216, %248, %254, %235, %238, %225, %222, %135, %139, %59, %68, %130
  br i1 %39, label %625, label %262, !dbg !239

262:                                              ; preds = %261
  %263 = icmp eq i32 %53, 121, !dbg !241
  %264 = icmp eq i32 %54, 111
  %265 = and i1 %263, %264, !dbg !242
  br i1 %265, label %266, label %351, !dbg !242

266:                                              ; preds = %262
  tail call void @llvm.dbg.value(metadata i32 0, metadata !68, metadata !DIExpression()), !dbg !142
  %267 = icmp sgt i32 %3, 0, !dbg !243
  br i1 %267, label %268, label %625, !dbg !244

268:                                              ; preds = %266
  %269 = icmp sgt i32 %4, 0
  %270 = sext i32 %7 to i64, !dbg !244
  %271 = sext i32 %10 to i64, !dbg !244
  %272 = zext nneg i32 %3 to i64, !dbg !243
  %273 = zext i32 %4 to i64
  %274 = and i64 %273, 3
  %275 = icmp ult i32 %4, 4
  %276 = and i64 %273, 2147483644
  %277 = icmp eq i64 %274, 0
  br label %278, !dbg !244

278:                                              ; preds = %268, %348
  %279 = phi i64 [ 0, %268 ], [ %349, %348 ]
  tail call void @llvm.dbg.value(metadata i64 %279, metadata !68, metadata !DIExpression()), !dbg !142
  tail call void @llvm.dbg.value(metadata i64 %279, metadata !71, metadata !DIExpression()), !dbg !142
  %280 = mul nsw i64 %279, %270
  %281 = mul nsw i64 %279, %271
  %282 = getelementptr double, ptr %6, i64 %280
  %283 = getelementptr double, ptr %9, i64 %281, !dbg !245
  br label %284, !dbg !245

284:                                              ; preds = %278, %340
  %285 = phi i64 [ %279, %278 ], [ %346, %340 ]
  tail call void @llvm.dbg.value(metadata i64 %285, metadata !71, metadata !DIExpression()), !dbg !142
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !79, metadata !DIExpression()), !dbg !246
  tail call void @llvm.dbg.value(metadata i32 0, metadata !72, metadata !DIExpression()), !dbg !142
  br i1 %269, label %286, label %340, !dbg !247

286:                                              ; preds = %284
  %287 = mul nsw i64 %285, %270
  %288 = getelementptr double, ptr %6, i64 %287, !dbg !247
  br i1 %275, label %323, label %289, !dbg !247

289:                                              ; preds = %286, %289
  %290 = phi i64 [ %320, %289 ], [ 0, %286 ]
  %291 = phi double [ %319, %289 ], [ 0.000000e+00, %286 ]
  %292 = phi i64 [ %321, %289 ], [ 0, %286 ]
  tail call void @llvm.dbg.value(metadata double %291, metadata !79, metadata !DIExpression()), !dbg !246
  tail call void @llvm.dbg.value(metadata i64 %290, metadata !72, metadata !DIExpression()), !dbg !142
  %293 = getelementptr double, ptr %282, i64 %290, !dbg !249
  %294 = load double, ptr %293, align 8, !dbg !249, !tbaa !177
  %295 = getelementptr double, ptr %288, i64 %290, !dbg !252
  %296 = load double, ptr %295, align 8, !dbg !252, !tbaa !177
  %297 = fmul double %294, %296, !dbg !253
  %298 = fadd double %291, %297, !dbg !254
  tail call void @llvm.dbg.value(metadata double %298, metadata !79, metadata !DIExpression()), !dbg !246
  %299 = or disjoint i64 %290, 1, !dbg !255
  tail call void @llvm.dbg.value(metadata i64 %299, metadata !72, metadata !DIExpression()), !dbg !142
  tail call void @llvm.dbg.value(metadata double %298, metadata !79, metadata !DIExpression()), !dbg !246
  tail call void @llvm.dbg.value(metadata i64 %299, metadata !72, metadata !DIExpression()), !dbg !142
  %300 = getelementptr double, ptr %282, i64 %299, !dbg !249
  %301 = load double, ptr %300, align 8, !dbg !249, !tbaa !177
  %302 = getelementptr double, ptr %288, i64 %299, !dbg !252
  %303 = load double, ptr %302, align 8, !dbg !252, !tbaa !177
  %304 = fmul double %301, %303, !dbg !253
  %305 = fadd double %298, %304, !dbg !254
  tail call void @llvm.dbg.value(metadata double %305, metadata !79, metadata !DIExpression()), !dbg !246
  %306 = or disjoint i64 %290, 2, !dbg !255
  tail call void @llvm.dbg.value(metadata i64 %306, metadata !72, metadata !DIExpression()), !dbg !142
  tail call void @llvm.dbg.value(metadata double %305, metadata !79, metadata !DIExpression()), !dbg !246
  tail call void @llvm.dbg.value(metadata i64 %306, metadata !72, metadata !DIExpression()), !dbg !142
  %307 = getelementptr double, ptr %282, i64 %306, !dbg !249
  %308 = load double, ptr %307, align 8, !dbg !249, !tbaa !177
  %309 = getelementptr double, ptr %288, i64 %306, !dbg !252
  %310 = load double, ptr %309, align 8, !dbg !252, !tbaa !177
  %311 = fmul double %308, %310, !dbg !253
  %312 = fadd double %305, %311, !dbg !254
  tail call void @llvm.dbg.value(metadata double %312, metadata !79, metadata !DIExpression()), !dbg !246
  %313 = or disjoint i64 %290, 3, !dbg !255
  tail call void @llvm.dbg.value(metadata i64 %313, metadata !72, metadata !DIExpression()), !dbg !142
  tail call void @llvm.dbg.value(metadata double %312, metadata !79, metadata !DIExpression()), !dbg !246
  tail call void @llvm.dbg.value(metadata i64 %313, metadata !72, metadata !DIExpression()), !dbg !142
  %314 = getelementptr double, ptr %282, i64 %313, !dbg !249
  %315 = load double, ptr %314, align 8, !dbg !249, !tbaa !177
  %316 = getelementptr double, ptr %288, i64 %313, !dbg !252
  %317 = load double, ptr %316, align 8, !dbg !252, !tbaa !177
  %318 = fmul double %315, %317, !dbg !253
  %319 = fadd double %312, %318, !dbg !254
  tail call void @llvm.dbg.value(metadata double %319, metadata !79, metadata !DIExpression()), !dbg !246
  %320 = add nuw nsw i64 %290, 4, !dbg !255
  tail call void @llvm.dbg.value(metadata i64 %320, metadata !72, metadata !DIExpression()), !dbg !142
  %321 = add i64 %292, 4, !dbg !247
  %322 = icmp eq i64 %321, %276, !dbg !247
  br i1 %322, label %323, label %289, !dbg !247, !llvm.loop !256

323:                                              ; preds = %289, %286
  %324 = phi double [ undef, %286 ], [ %319, %289 ]
  %325 = phi i64 [ 0, %286 ], [ %320, %289 ]
  %326 = phi double [ 0.000000e+00, %286 ], [ %319, %289 ]
  br i1 %277, label %340, label %327, !dbg !247

327:                                              ; preds = %323, %327
  %328 = phi i64 [ %337, %327 ], [ %325, %323 ]
  %329 = phi double [ %336, %327 ], [ %326, %323 ]
  %330 = phi i64 [ %338, %327 ], [ 0, %323 ]
  tail call void @llvm.dbg.value(metadata double %329, metadata !79, metadata !DIExpression()), !dbg !246
  tail call void @llvm.dbg.value(metadata i64 %328, metadata !72, metadata !DIExpression()), !dbg !142
  %331 = getelementptr double, ptr %282, i64 %328, !dbg !249
  %332 = load double, ptr %331, align 8, !dbg !249, !tbaa !177
  %333 = getelementptr double, ptr %288, i64 %328, !dbg !252
  %334 = load double, ptr %333, align 8, !dbg !252, !tbaa !177
  %335 = fmul double %332, %334, !dbg !253
  %336 = fadd double %329, %335, !dbg !254
  tail call void @llvm.dbg.value(metadata double %336, metadata !79, metadata !DIExpression()), !dbg !246
  %337 = add nuw nsw i64 %328, 1, !dbg !255
  tail call void @llvm.dbg.value(metadata i64 %337, metadata !72, metadata !DIExpression()), !dbg !142
  %338 = add i64 %330, 1, !dbg !247
  %339 = icmp eq i64 %338, %274, !dbg !247
  br i1 %339, label %340, label %327, !dbg !247, !llvm.loop !258

340:                                              ; preds = %323, %327, %284
  %341 = phi double [ 0.000000e+00, %284 ], [ %324, %323 ], [ %336, %327 ], !dbg !246
  %342 = fmul double %341, %5, !dbg !259
  %343 = getelementptr double, ptr %283, i64 %285, !dbg !260
  %344 = load double, ptr %343, align 8, !dbg !261, !tbaa !177
  %345 = fadd double %342, %344, !dbg !261
  store double %345, ptr %343, align 8, !dbg !261, !tbaa !177
  %346 = add nuw nsw i64 %285, 1, !dbg !262
  tail call void @llvm.dbg.value(metadata i64 %346, metadata !71, metadata !DIExpression()), !dbg !142
  %347 = icmp eq i64 %346, %272, !dbg !263
  br i1 %347, label %348, label %284, !dbg !245, !llvm.loop !264

348:                                              ; preds = %340
  %349 = add nuw nsw i64 %279, 1, !dbg !266
  tail call void @llvm.dbg.value(metadata i64 %349, metadata !68, metadata !DIExpression()), !dbg !142
  %350 = icmp eq i64 %349, %272, !dbg !243
  br i1 %350, label %625, label %278, !dbg !244, !llvm.loop !267

351:                                              ; preds = %262
  %352 = icmp eq i32 %54, 112
  %353 = and i1 %263, %352, !dbg !269
  br i1 %353, label %354, label %442, !dbg !269

354:                                              ; preds = %351
  tail call void @llvm.dbg.value(metadata i32 0, metadata !68, metadata !DIExpression()), !dbg !142
  %355 = icmp sgt i32 %3, 0, !dbg !270
  br i1 %355, label %356, label %625, !dbg !271

356:                                              ; preds = %354
  %357 = icmp sgt i32 %4, 0
  %358 = sext i32 %7 to i64, !dbg !271
  %359 = sext i32 %10 to i64, !dbg !271
  %360 = zext nneg i32 %3 to i64, !dbg !270
  %361 = zext i32 %4 to i64
  %362 = and i64 %361, 3
  %363 = icmp ult i32 %4, 4
  %364 = and i64 %361, 2147483644
  %365 = icmp eq i64 %362, 0
  br label %366, !dbg !271

366:                                              ; preds = %356, %439
  %367 = phi i64 [ 0, %356 ], [ %440, %439 ]
  tail call void @llvm.dbg.value(metadata i64 %367, metadata !68, metadata !DIExpression()), !dbg !142
  tail call void @llvm.dbg.value(metadata i64 %367, metadata !71, metadata !DIExpression()), !dbg !142
  %368 = mul nsw i64 %367, %359
  %369 = getelementptr double, ptr %6, i64 %367
  %370 = getelementptr double, ptr %9, i64 %368, !dbg !272
  br label %371, !dbg !272

371:                                              ; preds = %366, %431
  %372 = phi i64 [ %367, %366 ], [ %437, %431 ]
  tail call void @llvm.dbg.value(metadata i64 %372, metadata !71, metadata !DIExpression()), !dbg !142
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !88, metadata !DIExpression()), !dbg !273
  tail call void @llvm.dbg.value(metadata i32 0, metadata !72, metadata !DIExpression()), !dbg !142
  br i1 %357, label %373, label %431, !dbg !274

373:                                              ; preds = %371
  %374 = getelementptr double, ptr %6, i64 %372, !dbg !274
  br i1 %363, label %413, label %375, !dbg !274

375:                                              ; preds = %373, %375
  %376 = phi i64 [ %410, %375 ], [ 0, %373 ]
  %377 = phi double [ %409, %375 ], [ 0.000000e+00, %373 ]
  %378 = phi i64 [ %411, %375 ], [ 0, %373 ]
  tail call void @llvm.dbg.value(metadata double %377, metadata !88, metadata !DIExpression()), !dbg !273
  tail call void @llvm.dbg.value(metadata i64 %376, metadata !72, metadata !DIExpression()), !dbg !142
  %379 = mul nsw i64 %376, %358, !dbg !276
  %380 = getelementptr double, ptr %369, i64 %379, !dbg !279
  %381 = load double, ptr %380, align 8, !dbg !279, !tbaa !177
  %382 = getelementptr double, ptr %374, i64 %379, !dbg !280
  %383 = load double, ptr %382, align 8, !dbg !280, !tbaa !177
  %384 = fmul double %381, %383, !dbg !281
  %385 = fadd double %377, %384, !dbg !282
  tail call void @llvm.dbg.value(metadata double %385, metadata !88, metadata !DIExpression()), !dbg !273
  %386 = or disjoint i64 %376, 1, !dbg !283
  tail call void @llvm.dbg.value(metadata i64 %386, metadata !72, metadata !DIExpression()), !dbg !142
  tail call void @llvm.dbg.value(metadata double %385, metadata !88, metadata !DIExpression()), !dbg !273
  tail call void @llvm.dbg.value(metadata i64 %386, metadata !72, metadata !DIExpression()), !dbg !142
  %387 = mul nsw i64 %386, %358, !dbg !276
  %388 = getelementptr double, ptr %369, i64 %387, !dbg !279
  %389 = load double, ptr %388, align 8, !dbg !279, !tbaa !177
  %390 = getelementptr double, ptr %374, i64 %387, !dbg !280
  %391 = load double, ptr %390, align 8, !dbg !280, !tbaa !177
  %392 = fmul double %389, %391, !dbg !281
  %393 = fadd double %385, %392, !dbg !282
  tail call void @llvm.dbg.value(metadata double %393, metadata !88, metadata !DIExpression()), !dbg !273
  %394 = or disjoint i64 %376, 2, !dbg !283
  tail call void @llvm.dbg.value(metadata i64 %394, metadata !72, metadata !DIExpression()), !dbg !142
  tail call void @llvm.dbg.value(metadata double %393, metadata !88, metadata !DIExpression()), !dbg !273
  tail call void @llvm.dbg.value(metadata i64 %394, metadata !72, metadata !DIExpression()), !dbg !142
  %395 = mul nsw i64 %394, %358, !dbg !276
  %396 = getelementptr double, ptr %369, i64 %395, !dbg !279
  %397 = load double, ptr %396, align 8, !dbg !279, !tbaa !177
  %398 = getelementptr double, ptr %374, i64 %395, !dbg !280
  %399 = load double, ptr %398, align 8, !dbg !280, !tbaa !177
  %400 = fmul double %397, %399, !dbg !281
  %401 = fadd double %393, %400, !dbg !282
  tail call void @llvm.dbg.value(metadata double %401, metadata !88, metadata !DIExpression()), !dbg !273
  %402 = or disjoint i64 %376, 3, !dbg !283
  tail call void @llvm.dbg.value(metadata i64 %402, metadata !72, metadata !DIExpression()), !dbg !142
  tail call void @llvm.dbg.value(metadata double %401, metadata !88, metadata !DIExpression()), !dbg !273
  tail call void @llvm.dbg.value(metadata i64 %402, metadata !72, metadata !DIExpression()), !dbg !142
  %403 = mul nsw i64 %402, %358, !dbg !276
  %404 = getelementptr double, ptr %369, i64 %403, !dbg !279
  %405 = load double, ptr %404, align 8, !dbg !279, !tbaa !177
  %406 = getelementptr double, ptr %374, i64 %403, !dbg !280
  %407 = load double, ptr %406, align 8, !dbg !280, !tbaa !177
  %408 = fmul double %405, %407, !dbg !281
  %409 = fadd double %401, %408, !dbg !282
  tail call void @llvm.dbg.value(metadata double %409, metadata !88, metadata !DIExpression()), !dbg !273
  %410 = add nuw nsw i64 %376, 4, !dbg !283
  tail call void @llvm.dbg.value(metadata i64 %410, metadata !72, metadata !DIExpression()), !dbg !142
  %411 = add i64 %378, 4, !dbg !274
  %412 = icmp eq i64 %411, %364, !dbg !274
  br i1 %412, label %413, label %375, !dbg !274, !llvm.loop !284

413:                                              ; preds = %375, %373
  %414 = phi double [ undef, %373 ], [ %409, %375 ]
  %415 = phi i64 [ 0, %373 ], [ %410, %375 ]
  %416 = phi double [ 0.000000e+00, %373 ], [ %409, %375 ]
  br i1 %365, label %431, label %417, !dbg !274

417:                                              ; preds = %413, %417
  %418 = phi i64 [ %428, %417 ], [ %415, %413 ]
  %419 = phi double [ %427, %417 ], [ %416, %413 ]
  %420 = phi i64 [ %429, %417 ], [ 0, %413 ]
  tail call void @llvm.dbg.value(metadata double %419, metadata !88, metadata !DIExpression()), !dbg !273
  tail call void @llvm.dbg.value(metadata i64 %418, metadata !72, metadata !DIExpression()), !dbg !142
  %421 = mul nsw i64 %418, %358, !dbg !276
  %422 = getelementptr double, ptr %369, i64 %421, !dbg !279
  %423 = load double, ptr %422, align 8, !dbg !279, !tbaa !177
  %424 = getelementptr double, ptr %374, i64 %421, !dbg !280
  %425 = load double, ptr %424, align 8, !dbg !280, !tbaa !177
  %426 = fmul double %423, %425, !dbg !281
  %427 = fadd double %419, %426, !dbg !282
  tail call void @llvm.dbg.value(metadata double %427, metadata !88, metadata !DIExpression()), !dbg !273
  %428 = add nuw nsw i64 %418, 1, !dbg !283
  tail call void @llvm.dbg.value(metadata i64 %428, metadata !72, metadata !DIExpression()), !dbg !142
  %429 = add i64 %420, 1, !dbg !274
  %430 = icmp eq i64 %429, %362, !dbg !274
  br i1 %430, label %431, label %417, !dbg !274, !llvm.loop !286

431:                                              ; preds = %413, %417, %371
  %432 = phi double [ 0.000000e+00, %371 ], [ %414, %413 ], [ %427, %417 ], !dbg !273
  %433 = fmul double %432, %5, !dbg !287
  %434 = getelementptr double, ptr %370, i64 %372, !dbg !288
  %435 = load double, ptr %434, align 8, !dbg !289, !tbaa !177
  %436 = fadd double %433, %435, !dbg !289
  store double %436, ptr %434, align 8, !dbg !289, !tbaa !177
  %437 = add nuw nsw i64 %372, 1, !dbg !290
  tail call void @llvm.dbg.value(metadata i64 %437, metadata !71, metadata !DIExpression()), !dbg !142
  %438 = icmp eq i64 %437, %360, !dbg !291
  br i1 %438, label %439, label %371, !dbg !272, !llvm.loop !292

439:                                              ; preds = %431
  %440 = add nuw nsw i64 %367, 1, !dbg !294
  tail call void @llvm.dbg.value(metadata i64 %440, metadata !68, metadata !DIExpression()), !dbg !142
  %441 = icmp eq i64 %440, %360, !dbg !270
  br i1 %441, label %625, label %366, !dbg !271, !llvm.loop !295

442:                                              ; preds = %351
  %443 = icmp eq i32 %53, 122, !dbg !297
  %444 = and i1 %443, %264, !dbg !298
  br i1 %444, label %445, label %532, !dbg !298

445:                                              ; preds = %442
  tail call void @llvm.dbg.value(metadata i32 0, metadata !68, metadata !DIExpression()), !dbg !142
  %446 = icmp sgt i32 %3, 0, !dbg !299
  br i1 %446, label %447, label %625, !dbg !300

447:                                              ; preds = %445
  %448 = icmp sgt i32 %4, 0
  %449 = sext i32 %7 to i64, !dbg !300
  %450 = sext i32 %10 to i64, !dbg !300
  %451 = zext nneg i32 %3 to i64, !dbg !299
  %452 = zext i32 %4 to i64
  %453 = and i64 %452, 3
  %454 = icmp ult i32 %4, 4
  %455 = and i64 %452, 2147483644
  %456 = icmp eq i64 %453, 0
  br label %457, !dbg !300

457:                                              ; preds = %447, %528
  %458 = phi i64 [ 0, %447 ], [ %529, %528 ]
  %459 = phi i64 [ 1, %447 ], [ %530, %528 ]
  tail call void @llvm.dbg.value(metadata i64 %458, metadata !68, metadata !DIExpression()), !dbg !142
  %460 = mul nsw i64 %458, %450
  tail call void @llvm.dbg.value(metadata i32 0, metadata !71, metadata !DIExpression()), !dbg !142
  %461 = mul nsw i64 %458, %449
  %462 = getelementptr double, ptr %6, i64 %461
  %463 = getelementptr double, ptr %9, i64 %460, !dbg !301
  br label %464, !dbg !301

464:                                              ; preds = %457, %520
  %465 = phi i64 [ 0, %457 ], [ %526, %520 ]
  tail call void @llvm.dbg.value(metadata i64 %465, metadata !71, metadata !DIExpression()), !dbg !142
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !97, metadata !DIExpression()), !dbg !302
  tail call void @llvm.dbg.value(metadata i32 0, metadata !72, metadata !DIExpression()), !dbg !142
  br i1 %448, label %466, label %520, !dbg !303

466:                                              ; preds = %464
  %467 = mul nsw i64 %465, %449
  %468 = getelementptr double, ptr %6, i64 %467, !dbg !303
  br i1 %454, label %503, label %469, !dbg !303

469:                                              ; preds = %466, %469
  %470 = phi i64 [ %500, %469 ], [ 0, %466 ]
  %471 = phi double [ %499, %469 ], [ 0.000000e+00, %466 ]
  %472 = phi i64 [ %501, %469 ], [ 0, %466 ]
  tail call void @llvm.dbg.value(metadata double %471, metadata !97, metadata !DIExpression()), !dbg !302
  tail call void @llvm.dbg.value(metadata i64 %470, metadata !72, metadata !DIExpression()), !dbg !142
  %473 = getelementptr double, ptr %462, i64 %470, !dbg !305
  %474 = load double, ptr %473, align 8, !dbg !305, !tbaa !177
  %475 = getelementptr double, ptr %468, i64 %470, !dbg !308
  %476 = load double, ptr %475, align 8, !dbg !308, !tbaa !177
  %477 = fmul double %474, %476, !dbg !309
  %478 = fadd double %471, %477, !dbg !310
  tail call void @llvm.dbg.value(metadata double %478, metadata !97, metadata !DIExpression()), !dbg !302
  %479 = or disjoint i64 %470, 1, !dbg !311
  tail call void @llvm.dbg.value(metadata i64 %479, metadata !72, metadata !DIExpression()), !dbg !142
  tail call void @llvm.dbg.value(metadata double %478, metadata !97, metadata !DIExpression()), !dbg !302
  tail call void @llvm.dbg.value(metadata i64 %479, metadata !72, metadata !DIExpression()), !dbg !142
  %480 = getelementptr double, ptr %462, i64 %479, !dbg !305
  %481 = load double, ptr %480, align 8, !dbg !305, !tbaa !177
  %482 = getelementptr double, ptr %468, i64 %479, !dbg !308
  %483 = load double, ptr %482, align 8, !dbg !308, !tbaa !177
  %484 = fmul double %481, %483, !dbg !309
  %485 = fadd double %478, %484, !dbg !310
  tail call void @llvm.dbg.value(metadata double %485, metadata !97, metadata !DIExpression()), !dbg !302
  %486 = or disjoint i64 %470, 2, !dbg !311
  tail call void @llvm.dbg.value(metadata i64 %486, metadata !72, metadata !DIExpression()), !dbg !142
  tail call void @llvm.dbg.value(metadata double %485, metadata !97, metadata !DIExpression()), !dbg !302
  tail call void @llvm.dbg.value(metadata i64 %486, metadata !72, metadata !DIExpression()), !dbg !142
  %487 = getelementptr double, ptr %462, i64 %486, !dbg !305
  %488 = load double, ptr %487, align 8, !dbg !305, !tbaa !177
  %489 = getelementptr double, ptr %468, i64 %486, !dbg !308
  %490 = load double, ptr %489, align 8, !dbg !308, !tbaa !177
  %491 = fmul double %488, %490, !dbg !309
  %492 = fadd double %485, %491, !dbg !310
  tail call void @llvm.dbg.value(metadata double %492, metadata !97, metadata !DIExpression()), !dbg !302
  %493 = or disjoint i64 %470, 3, !dbg !311
  tail call void @llvm.dbg.value(metadata i64 %493, metadata !72, metadata !DIExpression()), !dbg !142
  tail call void @llvm.dbg.value(metadata double %492, metadata !97, metadata !DIExpression()), !dbg !302
  tail call void @llvm.dbg.value(metadata i64 %493, metadata !72, metadata !DIExpression()), !dbg !142
  %494 = getelementptr double, ptr %462, i64 %493, !dbg !305
  %495 = load double, ptr %494, align 8, !dbg !305, !tbaa !177
  %496 = getelementptr double, ptr %468, i64 %493, !dbg !308
  %497 = load double, ptr %496, align 8, !dbg !308, !tbaa !177
  %498 = fmul double %495, %497, !dbg !309
  %499 = fadd double %492, %498, !dbg !310
  tail call void @llvm.dbg.value(metadata double %499, metadata !97, metadata !DIExpression()), !dbg !302
  %500 = add nuw nsw i64 %470, 4, !dbg !311
  tail call void @llvm.dbg.value(metadata i64 %500, metadata !72, metadata !DIExpression()), !dbg !142
  %501 = add i64 %472, 4, !dbg !303
  %502 = icmp eq i64 %501, %455, !dbg !303
  br i1 %502, label %503, label %469, !dbg !303, !llvm.loop !312

503:                                              ; preds = %469, %466
  %504 = phi double [ undef, %466 ], [ %499, %469 ]
  %505 = phi i64 [ 0, %466 ], [ %500, %469 ]
  %506 = phi double [ 0.000000e+00, %466 ], [ %499, %469 ]
  br i1 %456, label %520, label %507, !dbg !303

507:                                              ; preds = %503, %507
  %508 = phi i64 [ %517, %507 ], [ %505, %503 ]
  %509 = phi double [ %516, %507 ], [ %506, %503 ]
  %510 = phi i64 [ %518, %507 ], [ 0, %503 ]
  tail call void @llvm.dbg.value(metadata double %509, metadata !97, metadata !DIExpression()), !dbg !302
  tail call void @llvm.dbg.value(metadata i64 %508, metadata !72, metadata !DIExpression()), !dbg !142
  %511 = getelementptr double, ptr %462, i64 %508, !dbg !305
  %512 = load double, ptr %511, align 8, !dbg !305, !tbaa !177
  %513 = getelementptr double, ptr %468, i64 %508, !dbg !308
  %514 = load double, ptr %513, align 8, !dbg !308, !tbaa !177
  %515 = fmul double %512, %514, !dbg !309
  %516 = fadd double %509, %515, !dbg !310
  tail call void @llvm.dbg.value(metadata double %516, metadata !97, metadata !DIExpression()), !dbg !302
  %517 = add nuw nsw i64 %508, 1, !dbg !311
  tail call void @llvm.dbg.value(metadata i64 %517, metadata !72, metadata !DIExpression()), !dbg !142
  %518 = add i64 %510, 1, !dbg !303
  %519 = icmp eq i64 %518, %453, !dbg !303
  br i1 %519, label %520, label %507, !dbg !303, !llvm.loop !314

520:                                              ; preds = %503, %507, %464
  %521 = phi double [ 0.000000e+00, %464 ], [ %504, %503 ], [ %516, %507 ], !dbg !302
  %522 = fmul double %521, %5, !dbg !315
  %523 = getelementptr double, ptr %463, i64 %465, !dbg !316
  %524 = load double, ptr %523, align 8, !dbg !317, !tbaa !177
  %525 = fadd double %522, %524, !dbg !317
  store double %525, ptr %523, align 8, !dbg !317, !tbaa !177
  %526 = add nuw nsw i64 %465, 1, !dbg !318
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !71, metadata !DIExpression()), !dbg !142
  %527 = icmp eq i64 %526, %459, !dbg !319
  br i1 %527, label %528, label %464, !dbg !301, !llvm.loop !320

528:                                              ; preds = %520
  %529 = add nuw nsw i64 %458, 1, !dbg !322
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !68, metadata !DIExpression()), !dbg !142
  %530 = add nuw nsw i64 %459, 1, !dbg !300
  %531 = icmp eq i64 %529, %451, !dbg !299
  br i1 %531, label %625, label %457, !dbg !300, !llvm.loop !323

532:                                              ; preds = %442
  %533 = and i1 %443, %352, !dbg !325
  br i1 %533, label %534, label %624, !dbg !325

534:                                              ; preds = %532
  tail call void @llvm.dbg.value(metadata i32 0, metadata !68, metadata !DIExpression()), !dbg !142
  %535 = icmp sgt i32 %3, 0, !dbg !326
  br i1 %535, label %536, label %625, !dbg !327

536:                                              ; preds = %534
  %537 = icmp sgt i32 %4, 0
  %538 = sext i32 %7 to i64, !dbg !327
  %539 = sext i32 %10 to i64, !dbg !327
  %540 = zext nneg i32 %3 to i64, !dbg !326
  %541 = zext i32 %4 to i64
  %542 = and i64 %541, 3
  %543 = icmp ult i32 %4, 4
  %544 = and i64 %541, 2147483644
  %545 = icmp eq i64 %542, 0
  br label %546, !dbg !327

546:                                              ; preds = %536, %620
  %547 = phi i64 [ 0, %536 ], [ %621, %620 ]
  %548 = phi i64 [ 1, %536 ], [ %622, %620 ]
  tail call void @llvm.dbg.value(metadata i64 %547, metadata !68, metadata !DIExpression()), !dbg !142
  %549 = mul nsw i64 %547, %539
  tail call void @llvm.dbg.value(metadata i32 0, metadata !71, metadata !DIExpression()), !dbg !142
  %550 = getelementptr double, ptr %6, i64 %547
  %551 = getelementptr double, ptr %9, i64 %549, !dbg !328
  br label %552, !dbg !328

552:                                              ; preds = %546, %612
  %553 = phi i64 [ 0, %546 ], [ %618, %612 ]
  tail call void @llvm.dbg.value(metadata i64 %553, metadata !71, metadata !DIExpression()), !dbg !142
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !106, metadata !DIExpression()), !dbg !329
  tail call void @llvm.dbg.value(metadata i32 0, metadata !72, metadata !DIExpression()), !dbg !142
  br i1 %537, label %554, label %612, !dbg !330

554:                                              ; preds = %552
  %555 = getelementptr double, ptr %6, i64 %553, !dbg !330
  br i1 %543, label %594, label %556, !dbg !330

556:                                              ; preds = %554, %556
  %557 = phi i64 [ %591, %556 ], [ 0, %554 ]
  %558 = phi double [ %590, %556 ], [ 0.000000e+00, %554 ]
  %559 = phi i64 [ %592, %556 ], [ 0, %554 ]
  tail call void @llvm.dbg.value(metadata double %558, metadata !106, metadata !DIExpression()), !dbg !329
  tail call void @llvm.dbg.value(metadata i64 %557, metadata !72, metadata !DIExpression()), !dbg !142
  %560 = mul nsw i64 %557, %538, !dbg !332
  %561 = getelementptr double, ptr %550, i64 %560, !dbg !335
  %562 = load double, ptr %561, align 8, !dbg !335, !tbaa !177
  %563 = getelementptr double, ptr %555, i64 %560, !dbg !336
  %564 = load double, ptr %563, align 8, !dbg !336, !tbaa !177
  %565 = fmul double %562, %564, !dbg !337
  %566 = fadd double %558, %565, !dbg !338
  tail call void @llvm.dbg.value(metadata double %566, metadata !106, metadata !DIExpression()), !dbg !329
  %567 = or disjoint i64 %557, 1, !dbg !339
  tail call void @llvm.dbg.value(metadata i64 %567, metadata !72, metadata !DIExpression()), !dbg !142
  tail call void @llvm.dbg.value(metadata double %566, metadata !106, metadata !DIExpression()), !dbg !329
  tail call void @llvm.dbg.value(metadata i64 %567, metadata !72, metadata !DIExpression()), !dbg !142
  %568 = mul nsw i64 %567, %538, !dbg !332
  %569 = getelementptr double, ptr %550, i64 %568, !dbg !335
  %570 = load double, ptr %569, align 8, !dbg !335, !tbaa !177
  %571 = getelementptr double, ptr %555, i64 %568, !dbg !336
  %572 = load double, ptr %571, align 8, !dbg !336, !tbaa !177
  %573 = fmul double %570, %572, !dbg !337
  %574 = fadd double %566, %573, !dbg !338
  tail call void @llvm.dbg.value(metadata double %574, metadata !106, metadata !DIExpression()), !dbg !329
  %575 = or disjoint i64 %557, 2, !dbg !339
  tail call void @llvm.dbg.value(metadata i64 %575, metadata !72, metadata !DIExpression()), !dbg !142
  tail call void @llvm.dbg.value(metadata double %574, metadata !106, metadata !DIExpression()), !dbg !329
  tail call void @llvm.dbg.value(metadata i64 %575, metadata !72, metadata !DIExpression()), !dbg !142
  %576 = mul nsw i64 %575, %538, !dbg !332
  %577 = getelementptr double, ptr %550, i64 %576, !dbg !335
  %578 = load double, ptr %577, align 8, !dbg !335, !tbaa !177
  %579 = getelementptr double, ptr %555, i64 %576, !dbg !336
  %580 = load double, ptr %579, align 8, !dbg !336, !tbaa !177
  %581 = fmul double %578, %580, !dbg !337
  %582 = fadd double %574, %581, !dbg !338
  tail call void @llvm.dbg.value(metadata double %582, metadata !106, metadata !DIExpression()), !dbg !329
  %583 = or disjoint i64 %557, 3, !dbg !339
  tail call void @llvm.dbg.value(metadata i64 %583, metadata !72, metadata !DIExpression()), !dbg !142
  tail call void @llvm.dbg.value(metadata double %582, metadata !106, metadata !DIExpression()), !dbg !329
  tail call void @llvm.dbg.value(metadata i64 %583, metadata !72, metadata !DIExpression()), !dbg !142
  %584 = mul nsw i64 %583, %538, !dbg !332
  %585 = getelementptr double, ptr %550, i64 %584, !dbg !335
  %586 = load double, ptr %585, align 8, !dbg !335, !tbaa !177
  %587 = getelementptr double, ptr %555, i64 %584, !dbg !336
  %588 = load double, ptr %587, align 8, !dbg !336, !tbaa !177
  %589 = fmul double %586, %588, !dbg !337
  %590 = fadd double %582, %589, !dbg !338
  tail call void @llvm.dbg.value(metadata double %590, metadata !106, metadata !DIExpression()), !dbg !329
  %591 = add nuw nsw i64 %557, 4, !dbg !339
  tail call void @llvm.dbg.value(metadata i64 %591, metadata !72, metadata !DIExpression()), !dbg !142
  %592 = add i64 %559, 4, !dbg !330
  %593 = icmp eq i64 %592, %544, !dbg !330
  br i1 %593, label %594, label %556, !dbg !330, !llvm.loop !340

594:                                              ; preds = %556, %554
  %595 = phi double [ undef, %554 ], [ %590, %556 ]
  %596 = phi i64 [ 0, %554 ], [ %591, %556 ]
  %597 = phi double [ 0.000000e+00, %554 ], [ %590, %556 ]
  br i1 %545, label %612, label %598, !dbg !330

598:                                              ; preds = %594, %598
  %599 = phi i64 [ %609, %598 ], [ %596, %594 ]
  %600 = phi double [ %608, %598 ], [ %597, %594 ]
  %601 = phi i64 [ %610, %598 ], [ 0, %594 ]
  tail call void @llvm.dbg.value(metadata double %600, metadata !106, metadata !DIExpression()), !dbg !329
  tail call void @llvm.dbg.value(metadata i64 %599, metadata !72, metadata !DIExpression()), !dbg !142
  %602 = mul nsw i64 %599, %538, !dbg !332
  %603 = getelementptr double, ptr %550, i64 %602, !dbg !335
  %604 = load double, ptr %603, align 8, !dbg !335, !tbaa !177
  %605 = getelementptr double, ptr %555, i64 %602, !dbg !336
  %606 = load double, ptr %605, align 8, !dbg !336, !tbaa !177
  %607 = fmul double %604, %606, !dbg !337
  %608 = fadd double %600, %607, !dbg !338
  tail call void @llvm.dbg.value(metadata double %608, metadata !106, metadata !DIExpression()), !dbg !329
  %609 = add nuw nsw i64 %599, 1, !dbg !339
  tail call void @llvm.dbg.value(metadata i64 %609, metadata !72, metadata !DIExpression()), !dbg !142
  %610 = add i64 %601, 1, !dbg !330
  %611 = icmp eq i64 %610, %542, !dbg !330
  br i1 %611, label %612, label %598, !dbg !330, !llvm.loop !342

612:                                              ; preds = %594, %598, %552
  %613 = phi double [ 0.000000e+00, %552 ], [ %595, %594 ], [ %608, %598 ], !dbg !329
  %614 = fmul double %613, %5, !dbg !343
  %615 = getelementptr double, ptr %551, i64 %553, !dbg !344
  %616 = load double, ptr %615, align 8, !dbg !345, !tbaa !177
  %617 = fadd double %614, %616, !dbg !345
  store double %617, ptr %615, align 8, !dbg !345, !tbaa !177
  %618 = add nuw nsw i64 %553, 1, !dbg !346
  tail call void @llvm.dbg.value(metadata i64 %618, metadata !71, metadata !DIExpression()), !dbg !142
  %619 = icmp eq i64 %618, %548, !dbg !347
  br i1 %619, label %620, label %552, !dbg !328, !llvm.loop !348

620:                                              ; preds = %612
  %621 = add nuw nsw i64 %547, 1, !dbg !350
  tail call void @llvm.dbg.value(metadata i64 %621, metadata !68, metadata !DIExpression()), !dbg !142
  %622 = add nuw nsw i64 %548, 1, !dbg !327
  %623 = icmp eq i64 %621, %540, !dbg !326
  br i1 %623, label %625, label %546, !dbg !327, !llvm.loop !351

624:                                              ; preds = %532
  tail call void (i32, ptr, ptr, ...) @cblas_xerbla(i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #4, !dbg !353
  br label %625

625:                                              ; preds = %620, %528, %439, %348, %534, %445, %354, %266, %624, %261, %38
  ret void, !dbg !355
}

declare !dbg !357 void @cblas_xerbla(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

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
!2 = !DIFile(filename: "./source_syrk_r.h", directory: "/PI-detector/external/gsl/gsl-2.5/cblas", checksumkind: CSK_MD5, checksum: "0f2e69364a9b2cd73bdcb6fd0f5c2ad2")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 18)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 24, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 1)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 125, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 23)
!17 = distinct !DICompileUnit(language: DW_LANG_C11, file: !18, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !19, globals: !35, splitDebugInlining: false, nameTableKind: None)
!18 = !DIFile(filename: "dsyrk.c", directory: "/PI-detector/external/gsl/gsl-2.5/cblas", checksumkind: CSK_MD5, checksum: "2d566898974f4e2d8abdeb7f45fc4025")
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
!44 = distinct !DISubprogram(name: "cblas_dsyrk", scope: !18, file: !18, line: 7, type: !45, scopeLine: 11, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !56)
!45 = !DISubroutineType(types: !46)
!46 = !{null, !47, !48, !49, !50, !50, !52, !54, !50, !52, !55, !50}
!47 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!48 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !26)
!49 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!50 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !51)
!51 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!52 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !53)
!53 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!56 = !{!57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !71, !72, !73, !74, !75, !77, !79, !88, !97, !106}
!57 = !DILocalVariable(name: "Order", arg: 1, scope: !44, file: !18, line: 7, type: !47)
!58 = !DILocalVariable(name: "Uplo", arg: 2, scope: !44, file: !18, line: 7, type: !48)
!59 = !DILocalVariable(name: "Trans", arg: 3, scope: !44, file: !18, line: 8, type: !49)
!60 = !DILocalVariable(name: "N", arg: 4, scope: !44, file: !18, line: 8, type: !50)
!61 = !DILocalVariable(name: "K", arg: 5, scope: !44, file: !18, line: 8, type: !50)
!62 = !DILocalVariable(name: "alpha", arg: 6, scope: !44, file: !18, line: 9, type: !52)
!63 = !DILocalVariable(name: "A", arg: 7, scope: !44, file: !18, line: 9, type: !54)
!64 = !DILocalVariable(name: "lda", arg: 8, scope: !44, file: !18, line: 9, type: !50)
!65 = !DILocalVariable(name: "beta", arg: 9, scope: !44, file: !18, line: 10, type: !52)
!66 = !DILocalVariable(name: "C", arg: 10, scope: !44, file: !18, line: 10, type: !55)
!67 = !DILocalVariable(name: "ldc", arg: 11, scope: !44, file: !18, line: 10, type: !50)
!68 = !DILocalVariable(name: "i", scope: !69, file: !2, line: 21, type: !51)
!69 = distinct !DILexicalBlock(scope: !70, file: !2, line: 20, column: 1)
!70 = !DILexicalBlockFile(scope: !44, file: !2, discriminator: 0)
!71 = !DILocalVariable(name: "j", scope: !69, file: !2, line: 21, type: !51)
!72 = !DILocalVariable(name: "k", scope: !69, file: !2, line: 21, type: !51)
!73 = !DILocalVariable(name: "uplo", scope: !69, file: !2, line: 22, type: !51)
!74 = !DILocalVariable(name: "trans", scope: !69, file: !2, line: 22, type: !51)
!75 = !DILocalVariable(name: "pos", scope: !76, file: !2, line: 24, type: !51)
!76 = distinct !DILexicalBlock(scope: !69, file: !2, line: 24, column: 3)
!77 = !DILocalVariable(name: "__dimA", scope: !78, file: !2, line: 24, type: !51)
!78 = distinct !DILexicalBlock(scope: !76, file: !2, line: 24, column: 3)
!79 = !DILocalVariable(name: "temp", scope: !80, file: !2, line: 80, type: !53)
!80 = distinct !DILexicalBlock(scope: !81, file: !2, line: 79, column: 31)
!81 = distinct !DILexicalBlock(scope: !82, file: !2, line: 79, column: 7)
!82 = distinct !DILexicalBlock(scope: !83, file: !2, line: 79, column: 7)
!83 = distinct !DILexicalBlock(scope: !84, file: !2, line: 78, column: 29)
!84 = distinct !DILexicalBlock(scope: !85, file: !2, line: 78, column: 5)
!85 = distinct !DILexicalBlock(scope: !86, file: !2, line: 78, column: 5)
!86 = distinct !DILexicalBlock(scope: !87, file: !2, line: 76, column: 52)
!87 = distinct !DILexicalBlock(scope: !69, file: !2, line: 76, column: 7)
!88 = !DILocalVariable(name: "temp", scope: !89, file: !2, line: 92, type: !53)
!89 = distinct !DILexicalBlock(scope: !90, file: !2, line: 91, column: 31)
!90 = distinct !DILexicalBlock(scope: !91, file: !2, line: 91, column: 7)
!91 = distinct !DILexicalBlock(scope: !92, file: !2, line: 91, column: 7)
!92 = distinct !DILexicalBlock(scope: !93, file: !2, line: 90, column: 29)
!93 = distinct !DILexicalBlock(scope: !94, file: !2, line: 90, column: 5)
!94 = distinct !DILexicalBlock(scope: !95, file: !2, line: 90, column: 5)
!95 = distinct !DILexicalBlock(scope: !96, file: !2, line: 88, column: 57)
!96 = distinct !DILexicalBlock(scope: !87, file: !2, line: 88, column: 14)
!97 = !DILocalVariable(name: "temp", scope: !98, file: !2, line: 104, type: !53)
!98 = distinct !DILexicalBlock(scope: !99, file: !2, line: 103, column: 32)
!99 = distinct !DILexicalBlock(scope: !100, file: !2, line: 103, column: 7)
!100 = distinct !DILexicalBlock(scope: !101, file: !2, line: 103, column: 7)
!101 = distinct !DILexicalBlock(scope: !102, file: !2, line: 102, column: 29)
!102 = distinct !DILexicalBlock(scope: !103, file: !2, line: 102, column: 5)
!103 = distinct !DILexicalBlock(scope: !104, file: !2, line: 102, column: 5)
!104 = distinct !DILexicalBlock(scope: !105, file: !2, line: 100, column: 59)
!105 = distinct !DILexicalBlock(scope: !96, file: !2, line: 100, column: 14)
!106 = !DILocalVariable(name: "temp", scope: !107, file: !2, line: 116, type: !53)
!107 = distinct !DILexicalBlock(scope: !108, file: !2, line: 115, column: 32)
!108 = distinct !DILexicalBlock(scope: !109, file: !2, line: 115, column: 7)
!109 = distinct !DILexicalBlock(scope: !110, file: !2, line: 115, column: 7)
!110 = distinct !DILexicalBlock(scope: !111, file: !2, line: 114, column: 29)
!111 = distinct !DILexicalBlock(scope: !112, file: !2, line: 114, column: 5)
!112 = distinct !DILexicalBlock(scope: !113, file: !2, line: 114, column: 5)
!113 = distinct !DILexicalBlock(scope: !114, file: !2, line: 112, column: 57)
!114 = distinct !DILexicalBlock(scope: !105, file: !2, line: 112, column: 14)
!115 = !DILocation(line: 0, scope: !44)
!116 = !DILocation(line: 0, scope: !76)
!117 = !DILocation(line: 0, scope: !78)
!118 = !DILocation(line: 24, column: 3, scope: !119)
!119 = distinct !DILexicalBlock(scope: !78, file: !2, line: 24, column: 3)
!120 = !DILocation(line: 24, column: 3, scope: !78)
!121 = !DILocation(line: 24, column: 3, scope: !122)
!122 = distinct !DILexicalBlock(scope: !78, file: !2, line: 24, column: 3)
!123 = !DILocation(line: 24, column: 3, scope: !124)
!124 = distinct !DILexicalBlock(scope: !78, file: !2, line: 24, column: 3)
!125 = !DILocation(line: 24, column: 3, scope: !126)
!126 = distinct !DILexicalBlock(scope: !78, file: !2, line: 24, column: 3)
!127 = !DILocation(line: 24, column: 3, scope: !128)
!128 = distinct !DILexicalBlock(scope: !78, file: !2, line: 24, column: 3)
!129 = !DILocation(line: 24, column: 3, scope: !130)
!130 = distinct !DILexicalBlock(scope: !78, file: !2, line: 24, column: 3)
!131 = !DILocation(line: 24, column: 3, scope: !132)
!132 = distinct !DILexicalBlock(scope: !78, file: !2, line: 24, column: 3)
!133 = !DILocation(line: 24, column: 3, scope: !134)
!134 = distinct !DILexicalBlock(scope: !78, file: !2, line: 24, column: 3)
!135 = !DILocation(line: 24, column: 3, scope: !136)
!136 = distinct !DILexicalBlock(scope: !76, file: !2, line: 24, column: 3)
!137 = !DILocation(line: 24, column: 3, scope: !76)
!138 = !DILocation(line: 26, column: 13, scope: !139)
!139 = distinct !DILexicalBlock(scope: !69, file: !2, line: 26, column: 7)
!140 = !DILocation(line: 26, column: 20, scope: !139)
!141 = !DILocation(line: 29, column: 7, scope: !69)
!142 = !DILocation(line: 0, scope: !69)
!143 = !DILocation(line: 31, column: 20, scope: !144)
!144 = distinct !DILexicalBlock(scope: !145, file: !2, line: 29, column: 31)
!145 = distinct !DILexicalBlock(scope: !69, file: !2, line: 29, column: 7)
!146 = !DILocation(line: 31, column: 13, scope: !144)
!147 = !DILocation(line: 32, column: 3, scope: !144)
!148 = !DILocation(line: 33, column: 18, scope: !149)
!149 = distinct !DILexicalBlock(scope: !145, file: !2, line: 32, column: 10)
!150 = !DILocation(line: 33, column: 12, scope: !149)
!151 = !DILocation(line: 35, column: 29, scope: !152)
!152 = distinct !DILexicalBlock(scope: !149, file: !2, line: 35, column: 9)
!153 = !DILocation(line: 0, scope: !145)
!154 = !DILocation(line: 43, column: 12, scope: !155)
!155 = distinct !DILexicalBlock(scope: !69, file: !2, line: 43, column: 7)
!156 = !DILocation(line: 43, column: 7, scope: !69)
!157 = !DILocation(line: 44, column: 14, scope: !158)
!158 = distinct !DILexicalBlock(scope: !159, file: !2, line: 44, column: 9)
!159 = distinct !DILexicalBlock(scope: !155, file: !2, line: 43, column: 20)
!160 = !DILocation(line: 0, scope: !158)
!161 = !DILocation(line: 44, column: 9, scope: !159)
!162 = !DILocation(line: 51, column: 7, scope: !163)
!163 = distinct !DILexicalBlock(scope: !164, file: !2, line: 51, column: 7)
!164 = distinct !DILexicalBlock(scope: !158, file: !2, line: 50, column: 12)
!165 = !DILocation(line: 51, column: 21, scope: !166)
!166 = distinct !DILexicalBlock(scope: !163, file: !2, line: 51, column: 7)
!167 = !DILocation(line: 45, column: 7, scope: !168)
!168 = distinct !DILexicalBlock(scope: !169, file: !2, line: 45, column: 7)
!169 = distinct !DILexicalBlock(scope: !158, file: !2, line: 44, column: 29)
!170 = !DILocation(line: 45, column: 21, scope: !171)
!171 = distinct !DILexicalBlock(scope: !168, file: !2, line: 45, column: 7)
!172 = !DILocation(line: 47, column: 26, scope: !173)
!173 = distinct !DILexicalBlock(scope: !174, file: !2, line: 46, column: 33)
!174 = distinct !DILexicalBlock(scope: !175, file: !2, line: 46, column: 9)
!175 = distinct !DILexicalBlock(scope: !176, file: !2, line: 46, column: 9)
!176 = distinct !DILexicalBlock(scope: !171, file: !2, line: 45, column: 31)
!177 = !{!178, !178, i64 0}
!178 = !{!"double", !179, i64 0}
!179 = !{!"omnipotent char", !180, i64 0}
!180 = !{!"Simple C/C++ TBAA"}
!181 = !DILocation(line: 45, column: 27, scope: !171)
!182 = distinct !{!182, !167, !183, !184}
!183 = !DILocation(line: 49, column: 7, scope: !168)
!184 = !{!"llvm.loop.mustprogress"}
!185 = !DILocation(line: 53, column: 26, scope: !186)
!186 = distinct !DILexicalBlock(scope: !187, file: !2, line: 52, column: 34)
!187 = distinct !DILexicalBlock(scope: !188, file: !2, line: 52, column: 9)
!188 = distinct !DILexicalBlock(scope: !189, file: !2, line: 52, column: 9)
!189 = distinct !DILexicalBlock(scope: !166, file: !2, line: 51, column: 31)
!190 = distinct !{!190, !162, !191, !184}
!191 = !DILocation(line: 55, column: 7, scope: !163)
!192 = !DILocation(line: 57, column: 19, scope: !193)
!193 = distinct !DILexicalBlock(scope: !155, file: !2, line: 57, column: 14)
!194 = !DILocation(line: 57, column: 14, scope: !155)
!195 = !DILocation(line: 58, column: 14, scope: !196)
!196 = distinct !DILexicalBlock(scope: !197, file: !2, line: 58, column: 9)
!197 = distinct !DILexicalBlock(scope: !193, file: !2, line: 57, column: 27)
!198 = !DILocation(line: 0, scope: !196)
!199 = !DILocation(line: 58, column: 9, scope: !197)
!200 = !DILocation(line: 65, column: 7, scope: !201)
!201 = distinct !DILexicalBlock(scope: !202, file: !2, line: 65, column: 7)
!202 = distinct !DILexicalBlock(scope: !196, file: !2, line: 64, column: 12)
!203 = !DILocation(line: 65, column: 21, scope: !204)
!204 = distinct !DILexicalBlock(scope: !201, file: !2, line: 65, column: 7)
!205 = !DILocation(line: 59, column: 7, scope: !206)
!206 = distinct !DILexicalBlock(scope: !207, file: !2, line: 59, column: 7)
!207 = distinct !DILexicalBlock(scope: !196, file: !2, line: 58, column: 29)
!208 = !DILocation(line: 59, column: 21, scope: !209)
!209 = distinct !DILexicalBlock(scope: !206, file: !2, line: 59, column: 7)
!210 = !DILocation(line: 60, column: 9, scope: !211)
!211 = distinct !DILexicalBlock(scope: !212, file: !2, line: 60, column: 9)
!212 = distinct !DILexicalBlock(scope: !209, file: !2, line: 59, column: 31)
!213 = !DILocation(line: 61, column: 11, scope: !214)
!214 = distinct !DILexicalBlock(scope: !215, file: !2, line: 60, column: 33)
!215 = distinct !DILexicalBlock(scope: !211, file: !2, line: 60, column: 9)
!216 = !DILocation(line: 61, column: 26, scope: !214)
!217 = !DILocation(line: 60, column: 29, scope: !215)
!218 = !DILocation(line: 60, column: 23, scope: !215)
!219 = distinct !{!219, !210, !220, !184}
!220 = !DILocation(line: 62, column: 9, scope: !211)
!221 = !DILocation(line: 59, column: 27, scope: !209)
!222 = distinct !{!222, !205, !223, !184}
!223 = !DILocation(line: 63, column: 7, scope: !206)
!224 = !DILocation(line: 66, column: 9, scope: !225)
!225 = distinct !DILexicalBlock(scope: !226, file: !2, line: 66, column: 9)
!226 = distinct !DILexicalBlock(scope: !204, file: !2, line: 65, column: 31)
!227 = !DILocation(line: 67, column: 11, scope: !228)
!228 = distinct !DILexicalBlock(scope: !229, file: !2, line: 66, column: 34)
!229 = distinct !DILexicalBlock(scope: !225, file: !2, line: 66, column: 9)
!230 = !DILocation(line: 67, column: 26, scope: !228)
!231 = !DILocation(line: 66, column: 30, scope: !229)
!232 = distinct !{!232, !224, !233, !184}
!233 = !DILocation(line: 68, column: 9, scope: !225)
!234 = distinct !{!234, !235}
!235 = !{!"llvm.loop.unroll.disable"}
!236 = !DILocation(line: 65, column: 27, scope: !204)
!237 = distinct !{!237, !200, !238, !184}
!238 = !DILocation(line: 69, column: 7, scope: !201)
!239 = !DILocation(line: 73, column: 7, scope: !69)
!240 = distinct !{!240, !235}
!241 = !DILocation(line: 76, column: 12, scope: !87)
!242 = !DILocation(line: 76, column: 26, scope: !87)
!243 = !DILocation(line: 78, column: 19, scope: !84)
!244 = !DILocation(line: 78, column: 5, scope: !85)
!245 = !DILocation(line: 79, column: 7, scope: !82)
!246 = !DILocation(line: 0, scope: !80)
!247 = !DILocation(line: 81, column: 9, scope: !248)
!248 = distinct !DILexicalBlock(scope: !80, file: !2, line: 81, column: 9)
!249 = !DILocation(line: 82, column: 19, scope: !250)
!250 = distinct !DILexicalBlock(scope: !251, file: !2, line: 81, column: 33)
!251 = distinct !DILexicalBlock(scope: !248, file: !2, line: 81, column: 9)
!252 = !DILocation(line: 82, column: 36, scope: !250)
!253 = !DILocation(line: 82, column: 34, scope: !250)
!254 = !DILocation(line: 82, column: 16, scope: !250)
!255 = !DILocation(line: 81, column: 29, scope: !251)
!256 = distinct !{!256, !247, !257, !184}
!257 = !DILocation(line: 83, column: 9, scope: !248)
!258 = distinct !{!258, !235}
!259 = !DILocation(line: 84, column: 33, scope: !80)
!260 = !DILocation(line: 84, column: 9, scope: !80)
!261 = !DILocation(line: 84, column: 24, scope: !80)
!262 = !DILocation(line: 79, column: 27, scope: !81)
!263 = !DILocation(line: 79, column: 21, scope: !81)
!264 = distinct !{!264, !245, !265, !184}
!265 = !DILocation(line: 85, column: 7, scope: !82)
!266 = !DILocation(line: 78, column: 25, scope: !84)
!267 = distinct !{!267, !244, !268, !184}
!268 = !DILocation(line: 86, column: 5, scope: !85)
!269 = !DILocation(line: 88, column: 33, scope: !96)
!270 = !DILocation(line: 90, column: 19, scope: !93)
!271 = !DILocation(line: 90, column: 5, scope: !94)
!272 = !DILocation(line: 91, column: 7, scope: !91)
!273 = !DILocation(line: 0, scope: !89)
!274 = !DILocation(line: 93, column: 9, scope: !275)
!275 = distinct !DILexicalBlock(scope: !89, file: !2, line: 93, column: 9)
!276 = !DILocation(line: 94, column: 23, scope: !277)
!277 = distinct !DILexicalBlock(scope: !278, file: !2, line: 93, column: 33)
!278 = distinct !DILexicalBlock(scope: !275, file: !2, line: 93, column: 9)
!279 = !DILocation(line: 94, column: 19, scope: !277)
!280 = !DILocation(line: 94, column: 36, scope: !277)
!281 = !DILocation(line: 94, column: 34, scope: !277)
!282 = !DILocation(line: 94, column: 16, scope: !277)
!283 = !DILocation(line: 93, column: 29, scope: !278)
!284 = distinct !{!284, !274, !285, !184}
!285 = !DILocation(line: 95, column: 9, scope: !275)
!286 = distinct !{!286, !235}
!287 = !DILocation(line: 96, column: 33, scope: !89)
!288 = !DILocation(line: 96, column: 9, scope: !89)
!289 = !DILocation(line: 96, column: 24, scope: !89)
!290 = !DILocation(line: 91, column: 27, scope: !90)
!291 = !DILocation(line: 91, column: 21, scope: !90)
!292 = distinct !{!292, !272, !293, !184}
!293 = !DILocation(line: 97, column: 7, scope: !91)
!294 = !DILocation(line: 90, column: 25, scope: !93)
!295 = distinct !{!295, !271, !296, !184}
!296 = !DILocation(line: 98, column: 5, scope: !94)
!297 = !DILocation(line: 100, column: 19, scope: !105)
!298 = !DILocation(line: 100, column: 33, scope: !105)
!299 = !DILocation(line: 102, column: 19, scope: !102)
!300 = !DILocation(line: 102, column: 5, scope: !103)
!301 = !DILocation(line: 103, column: 7, scope: !100)
!302 = !DILocation(line: 0, scope: !98)
!303 = !DILocation(line: 105, column: 9, scope: !304)
!304 = distinct !DILexicalBlock(scope: !98, file: !2, line: 105, column: 9)
!305 = !DILocation(line: 106, column: 19, scope: !306)
!306 = distinct !DILexicalBlock(scope: !307, file: !2, line: 105, column: 33)
!307 = distinct !DILexicalBlock(scope: !304, file: !2, line: 105, column: 9)
!308 = !DILocation(line: 106, column: 36, scope: !306)
!309 = !DILocation(line: 106, column: 34, scope: !306)
!310 = !DILocation(line: 106, column: 16, scope: !306)
!311 = !DILocation(line: 105, column: 29, scope: !307)
!312 = distinct !{!312, !303, !313, !184}
!313 = !DILocation(line: 107, column: 9, scope: !304)
!314 = distinct !{!314, !235}
!315 = !DILocation(line: 108, column: 33, scope: !98)
!316 = !DILocation(line: 108, column: 9, scope: !98)
!317 = !DILocation(line: 108, column: 24, scope: !98)
!318 = !DILocation(line: 103, column: 28, scope: !99)
!319 = !DILocation(line: 103, column: 21, scope: !99)
!320 = distinct !{!320, !301, !321, !184}
!321 = !DILocation(line: 109, column: 7, scope: !100)
!322 = !DILocation(line: 102, column: 25, scope: !102)
!323 = distinct !{!323, !300, !324, !184}
!324 = !DILocation(line: 110, column: 5, scope: !103)
!325 = !DILocation(line: 112, column: 33, scope: !114)
!326 = !DILocation(line: 114, column: 19, scope: !111)
!327 = !DILocation(line: 114, column: 5, scope: !112)
!328 = !DILocation(line: 115, column: 7, scope: !109)
!329 = !DILocation(line: 0, scope: !107)
!330 = !DILocation(line: 117, column: 9, scope: !331)
!331 = distinct !DILexicalBlock(scope: !107, file: !2, line: 117, column: 9)
!332 = !DILocation(line: 118, column: 23, scope: !333)
!333 = distinct !DILexicalBlock(scope: !334, file: !2, line: 117, column: 33)
!334 = distinct !DILexicalBlock(scope: !331, file: !2, line: 117, column: 9)
!335 = !DILocation(line: 118, column: 19, scope: !333)
!336 = !DILocation(line: 118, column: 36, scope: !333)
!337 = !DILocation(line: 118, column: 34, scope: !333)
!338 = !DILocation(line: 118, column: 16, scope: !333)
!339 = !DILocation(line: 117, column: 29, scope: !334)
!340 = distinct !{!340, !330, !341, !184}
!341 = !DILocation(line: 119, column: 9, scope: !331)
!342 = distinct !{!342, !235}
!343 = !DILocation(line: 120, column: 33, scope: !107)
!344 = !DILocation(line: 120, column: 9, scope: !107)
!345 = !DILocation(line: 120, column: 24, scope: !107)
!346 = !DILocation(line: 115, column: 28, scope: !108)
!347 = !DILocation(line: 115, column: 21, scope: !108)
!348 = distinct !{!348, !328, !349, !184}
!349 = !DILocation(line: 121, column: 7, scope: !109)
!350 = !DILocation(line: 114, column: 25, scope: !111)
!351 = distinct !{!351, !327, !352, !184}
!352 = !DILocation(line: 122, column: 5, scope: !112)
!353 = !DILocation(line: 125, column: 5, scope: !354)
!354 = distinct !DILexicalBlock(scope: !114, file: !2, line: 124, column: 10)
!355 = !DILocation(line: 15, column: 1, scope: !356)
!356 = !DILexicalBlockFile(scope: !44, file: !18, discriminator: 0)
!357 = !DISubprogram(name: "cblas_xerbla", scope: !21, file: !21, line: 602, type: !358, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!358 = !DISubroutineType(types: !359)
!359 = !{null, !51, !360, !360, null}
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
