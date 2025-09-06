; ModuleID = 'dsyrk.ll'
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
  br i1 %41, label %601, label %42, !dbg !140

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

152:                                              ; preds = %152, %147
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

174:                                              ; preds = %216, %136
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

207:                                              ; preds = %207, %204
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

238:                                              ; preds = %238, %235
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

261:                                              ; preds = %254, %248, %238, %235, %225, %222, %216, %139, %135, %130, %68, %59
  br i1 %39, label %601, label %262, !dbg !239

262:                                              ; preds = %261
  %263 = icmp eq i32 %53, 121, !dbg !241
  %264 = icmp eq i32 %54, 111
  %265 = and i1 %263, %264, !dbg !242
  br i1 %265, label %266, label %345, !dbg !242

266:                                              ; preds = %262
  tail call void @llvm.dbg.value(metadata i32 0, metadata !68, metadata !DIExpression()), !dbg !142
  %267 = icmp sgt i32 %3, 0, !dbg !243
  br i1 %267, label %268, label %601, !dbg !244

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

278:                                              ; preds = %342, %268
  %279 = phi i64 [ 0, %268 ], [ %343, %342 ]
  tail call void @llvm.dbg.value(metadata i64 %279, metadata !68, metadata !DIExpression()), !dbg !142
  tail call void @llvm.dbg.value(metadata i64 %279, metadata !71, metadata !DIExpression()), !dbg !142
  %280 = mul nsw i64 %279, %270
  %281 = mul nsw i64 %279, %271
  %282 = getelementptr double, ptr %6, i64 %280
  %283 = getelementptr double, ptr %9, i64 %281, !dbg !245
  br label %284, !dbg !245

284:                                              ; preds = %335, %278
  %285 = phi i64 [ %279, %278 ], [ %340, %335 ]
  tail call void @llvm.dbg.value(metadata i64 %285, metadata !71, metadata !DIExpression()), !dbg !142
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !79, metadata !DIExpression()), !dbg !246
  tail call void @llvm.dbg.value(metadata i32 0, metadata !72, metadata !DIExpression()), !dbg !142
  br i1 %269, label %286, label %335, !dbg !247

286:                                              ; preds = %284
  %287 = mul nsw i64 %285, %270
  %288 = getelementptr double, ptr %6, i64 %287, !dbg !247
  br i1 %275, label %319, label %289, !dbg !247

289:                                              ; preds = %289, %286
  %290 = phi i64 [ %316, %289 ], [ 0, %286 ]
  %291 = phi double [ %handler_result3, %289 ], [ 0.000000e+00, %286 ]
  %292 = phi i64 [ %317, %289 ], [ 0, %286 ]
  tail call void @llvm.dbg.value(metadata double %291, metadata !79, metadata !DIExpression()), !dbg !246
  tail call void @llvm.dbg.value(metadata i64 %290, metadata !72, metadata !DIExpression()), !dbg !142
  %293 = getelementptr double, ptr %282, i64 %290, !dbg !249
  %294 = load double, ptr %293, align 8, !dbg !249, !tbaa !177
  %295 = getelementptr double, ptr %288, i64 %290, !dbg !252
  %296 = load double, ptr %295, align 8, !dbg !252, !tbaa !177
  %297 = fmul double %294, %296, !dbg !253
  %handler_result = call double @fAddHandlerDouble(double %291, double %297), !dbg !254
  tail call void @llvm.dbg.value(metadata double %handler_result, metadata !79, metadata !DIExpression()), !dbg !246
  %298 = or disjoint i64 %290, 1, !dbg !254
  tail call void @llvm.dbg.value(metadata i64 %298, metadata !72, metadata !DIExpression()), !dbg !142
  tail call void @llvm.dbg.value(metadata double %handler_result, metadata !79, metadata !DIExpression()), !dbg !246
  tail call void @llvm.dbg.value(metadata i64 %298, metadata !72, metadata !DIExpression()), !dbg !142
  %299 = getelementptr double, ptr %282, i64 %298, !dbg !249
  %300 = load double, ptr %299, align 8, !dbg !249, !tbaa !177
  %301 = getelementptr double, ptr %288, i64 %298, !dbg !252
  %302 = load double, ptr %301, align 8, !dbg !252, !tbaa !177
  %303 = fmul double %300, %302, !dbg !253
  %handler_result1 = call double @fAddHandlerDouble(double %handler_result, double %303), !dbg !254
  tail call void @llvm.dbg.value(metadata double %handler_result1, metadata !79, metadata !DIExpression()), !dbg !246
  %304 = or disjoint i64 %290, 2, !dbg !254
  tail call void @llvm.dbg.value(metadata i64 %304, metadata !72, metadata !DIExpression()), !dbg !142
  tail call void @llvm.dbg.value(metadata double %handler_result1, metadata !79, metadata !DIExpression()), !dbg !246
  tail call void @llvm.dbg.value(metadata i64 %304, metadata !72, metadata !DIExpression()), !dbg !142
  %305 = getelementptr double, ptr %282, i64 %304, !dbg !249
  %306 = load double, ptr %305, align 8, !dbg !249, !tbaa !177
  %307 = getelementptr double, ptr %288, i64 %304, !dbg !252
  %308 = load double, ptr %307, align 8, !dbg !252, !tbaa !177
  %309 = fmul double %306, %308, !dbg !253
  %handler_result2 = call double @fAddHandlerDouble(double %handler_result1, double %309), !dbg !254
  tail call void @llvm.dbg.value(metadata double %handler_result2, metadata !79, metadata !DIExpression()), !dbg !246
  %310 = or disjoint i64 %290, 3, !dbg !254
  tail call void @llvm.dbg.value(metadata i64 %310, metadata !72, metadata !DIExpression()), !dbg !142
  tail call void @llvm.dbg.value(metadata double %handler_result2, metadata !79, metadata !DIExpression()), !dbg !246
  tail call void @llvm.dbg.value(metadata i64 %310, metadata !72, metadata !DIExpression()), !dbg !142
  %311 = getelementptr double, ptr %282, i64 %310, !dbg !249
  %312 = load double, ptr %311, align 8, !dbg !249, !tbaa !177
  %313 = getelementptr double, ptr %288, i64 %310, !dbg !252
  %314 = load double, ptr %313, align 8, !dbg !252, !tbaa !177
  %315 = fmul double %312, %314, !dbg !253
  %handler_result3 = call double @fAddHandlerDouble(double %handler_result2, double %315), !dbg !254
  tail call void @llvm.dbg.value(metadata double %handler_result3, metadata !79, metadata !DIExpression()), !dbg !246
  %316 = add nuw nsw i64 %290, 4, !dbg !254
  tail call void @llvm.dbg.value(metadata i64 %316, metadata !72, metadata !DIExpression()), !dbg !142
  %317 = add i64 %292, 4, !dbg !247
  %318 = icmp eq i64 %317, %276, !dbg !247
  br i1 %318, label %319, label %289, !dbg !247, !llvm.loop !255

319:                                              ; preds = %289, %286
  %320 = phi double [ undef, %286 ], [ %handler_result3, %289 ]
  %321 = phi i64 [ 0, %286 ], [ %316, %289 ]
  %322 = phi double [ 0.000000e+00, %286 ], [ %handler_result3, %289 ]
  br i1 %277, label %335, label %323, !dbg !247

323:                                              ; preds = %323, %319
  %324 = phi i64 [ %332, %323 ], [ %321, %319 ]
  %325 = phi double [ %handler_result4, %323 ], [ %322, %319 ]
  %326 = phi i64 [ %333, %323 ], [ 0, %319 ]
  tail call void @llvm.dbg.value(metadata double %325, metadata !79, metadata !DIExpression()), !dbg !246
  tail call void @llvm.dbg.value(metadata i64 %324, metadata !72, metadata !DIExpression()), !dbg !142
  %327 = getelementptr double, ptr %282, i64 %324, !dbg !249
  %328 = load double, ptr %327, align 8, !dbg !249, !tbaa !177
  %329 = getelementptr double, ptr %288, i64 %324, !dbg !252
  %330 = load double, ptr %329, align 8, !dbg !252, !tbaa !177
  %331 = fmul double %328, %330, !dbg !253
  %handler_result4 = call double @fAddHandlerDouble(double %325, double %331), !dbg !254
  tail call void @llvm.dbg.value(metadata double %handler_result4, metadata !79, metadata !DIExpression()), !dbg !246
  %332 = add nuw nsw i64 %324, 1, !dbg !254
  tail call void @llvm.dbg.value(metadata i64 %332, metadata !72, metadata !DIExpression()), !dbg !142
  %333 = add i64 %326, 1, !dbg !247
  %334 = icmp eq i64 %333, %274, !dbg !247
  br i1 %334, label %335, label %323, !dbg !247, !llvm.loop !257

335:                                              ; preds = %323, %319, %284
  %336 = phi double [ 0.000000e+00, %284 ], [ %320, %319 ], [ %handler_result4, %323 ], !dbg !246
  %337 = fmul double %336, %5, !dbg !258
  %338 = getelementptr double, ptr %283, i64 %285, !dbg !259
  %339 = load double, ptr %338, align 8, !dbg !260, !tbaa !177
  %handler_result5 = call double @fAddHandlerDouble(double %337, double %339), !dbg !260
  store double %handler_result5, ptr %338, align 8, !dbg !260, !tbaa !177
  %340 = add nuw nsw i64 %285, 1, !dbg !261
  tail call void @llvm.dbg.value(metadata i64 %340, metadata !71, metadata !DIExpression()), !dbg !142
  %341 = icmp eq i64 %340, %272, !dbg !262
  br i1 %341, label %342, label %284, !dbg !245, !llvm.loop !263

342:                                              ; preds = %335
  %343 = add nuw nsw i64 %279, 1, !dbg !265
  tail call void @llvm.dbg.value(metadata i64 %343, metadata !68, metadata !DIExpression()), !dbg !142
  %344 = icmp eq i64 %343, %272, !dbg !243
  br i1 %344, label %601, label %278, !dbg !244, !llvm.loop !266

345:                                              ; preds = %262
  %346 = icmp eq i32 %54, 112
  %347 = and i1 %263, %346, !dbg !268
  br i1 %347, label %348, label %430, !dbg !268

348:                                              ; preds = %345
  tail call void @llvm.dbg.value(metadata i32 0, metadata !68, metadata !DIExpression()), !dbg !142
  %349 = icmp sgt i32 %3, 0, !dbg !269
  br i1 %349, label %350, label %601, !dbg !270

350:                                              ; preds = %348
  %351 = icmp sgt i32 %4, 0
  %352 = sext i32 %7 to i64, !dbg !270
  %353 = sext i32 %10 to i64, !dbg !270
  %354 = zext nneg i32 %3 to i64, !dbg !269
  %355 = zext i32 %4 to i64
  %356 = and i64 %355, 3
  %357 = icmp ult i32 %4, 4
  %358 = and i64 %355, 2147483644
  %359 = icmp eq i64 %356, 0
  br label %360, !dbg !270

360:                                              ; preds = %427, %350
  %361 = phi i64 [ 0, %350 ], [ %428, %427 ]
  tail call void @llvm.dbg.value(metadata i64 %361, metadata !68, metadata !DIExpression()), !dbg !142
  tail call void @llvm.dbg.value(metadata i64 %361, metadata !71, metadata !DIExpression()), !dbg !142
  %362 = mul nsw i64 %361, %353
  %363 = getelementptr double, ptr %6, i64 %361
  %364 = getelementptr double, ptr %9, i64 %362, !dbg !271
  br label %365, !dbg !271

365:                                              ; preds = %420, %360
  %366 = phi i64 [ %361, %360 ], [ %425, %420 ]
  tail call void @llvm.dbg.value(metadata i64 %366, metadata !71, metadata !DIExpression()), !dbg !142
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !88, metadata !DIExpression()), !dbg !272
  tail call void @llvm.dbg.value(metadata i32 0, metadata !72, metadata !DIExpression()), !dbg !142
  br i1 %351, label %367, label %420, !dbg !273

367:                                              ; preds = %365
  %368 = getelementptr double, ptr %6, i64 %366, !dbg !273
  br i1 %357, label %403, label %369, !dbg !273

369:                                              ; preds = %369, %367
  %370 = phi i64 [ %400, %369 ], [ 0, %367 ]
  %371 = phi double [ %handler_result9, %369 ], [ 0.000000e+00, %367 ]
  %372 = phi i64 [ %401, %369 ], [ 0, %367 ]
  tail call void @llvm.dbg.value(metadata double %371, metadata !88, metadata !DIExpression()), !dbg !272
  tail call void @llvm.dbg.value(metadata i64 %370, metadata !72, metadata !DIExpression()), !dbg !142
  %373 = mul nsw i64 %370, %352, !dbg !275
  %374 = getelementptr double, ptr %363, i64 %373, !dbg !278
  %375 = load double, ptr %374, align 8, !dbg !278, !tbaa !177
  %376 = getelementptr double, ptr %368, i64 %373, !dbg !279
  %377 = load double, ptr %376, align 8, !dbg !279, !tbaa !177
  %378 = fmul double %375, %377, !dbg !280
  %handler_result6 = call double @fAddHandlerDouble(double %371, double %378), !dbg !281
  tail call void @llvm.dbg.value(metadata double %handler_result6, metadata !88, metadata !DIExpression()), !dbg !272
  %379 = or disjoint i64 %370, 1, !dbg !281
  tail call void @llvm.dbg.value(metadata i64 %379, metadata !72, metadata !DIExpression()), !dbg !142
  tail call void @llvm.dbg.value(metadata double %handler_result6, metadata !88, metadata !DIExpression()), !dbg !272
  tail call void @llvm.dbg.value(metadata i64 %379, metadata !72, metadata !DIExpression()), !dbg !142
  %380 = mul nsw i64 %379, %352, !dbg !275
  %381 = getelementptr double, ptr %363, i64 %380, !dbg !278
  %382 = load double, ptr %381, align 8, !dbg !278, !tbaa !177
  %383 = getelementptr double, ptr %368, i64 %380, !dbg !279
  %384 = load double, ptr %383, align 8, !dbg !279, !tbaa !177
  %385 = fmul double %382, %384, !dbg !280
  %handler_result7 = call double @fAddHandlerDouble(double %handler_result6, double %385), !dbg !281
  tail call void @llvm.dbg.value(metadata double %handler_result7, metadata !88, metadata !DIExpression()), !dbg !272
  %386 = or disjoint i64 %370, 2, !dbg !281
  tail call void @llvm.dbg.value(metadata i64 %386, metadata !72, metadata !DIExpression()), !dbg !142
  tail call void @llvm.dbg.value(metadata double %handler_result7, metadata !88, metadata !DIExpression()), !dbg !272
  tail call void @llvm.dbg.value(metadata i64 %386, metadata !72, metadata !DIExpression()), !dbg !142
  %387 = mul nsw i64 %386, %352, !dbg !275
  %388 = getelementptr double, ptr %363, i64 %387, !dbg !278
  %389 = load double, ptr %388, align 8, !dbg !278, !tbaa !177
  %390 = getelementptr double, ptr %368, i64 %387, !dbg !279
  %391 = load double, ptr %390, align 8, !dbg !279, !tbaa !177
  %392 = fmul double %389, %391, !dbg !280
  %handler_result8 = call double @fAddHandlerDouble(double %handler_result7, double %392), !dbg !281
  tail call void @llvm.dbg.value(metadata double %handler_result8, metadata !88, metadata !DIExpression()), !dbg !272
  %393 = or disjoint i64 %370, 3, !dbg !281
  tail call void @llvm.dbg.value(metadata i64 %393, metadata !72, metadata !DIExpression()), !dbg !142
  tail call void @llvm.dbg.value(metadata double %handler_result8, metadata !88, metadata !DIExpression()), !dbg !272
  tail call void @llvm.dbg.value(metadata i64 %393, metadata !72, metadata !DIExpression()), !dbg !142
  %394 = mul nsw i64 %393, %352, !dbg !275
  %395 = getelementptr double, ptr %363, i64 %394, !dbg !278
  %396 = load double, ptr %395, align 8, !dbg !278, !tbaa !177
  %397 = getelementptr double, ptr %368, i64 %394, !dbg !279
  %398 = load double, ptr %397, align 8, !dbg !279, !tbaa !177
  %399 = fmul double %396, %398, !dbg !280
  %handler_result9 = call double @fAddHandlerDouble(double %handler_result8, double %399), !dbg !281
  tail call void @llvm.dbg.value(metadata double %handler_result9, metadata !88, metadata !DIExpression()), !dbg !272
  %400 = add nuw nsw i64 %370, 4, !dbg !281
  tail call void @llvm.dbg.value(metadata i64 %400, metadata !72, metadata !DIExpression()), !dbg !142
  %401 = add i64 %372, 4, !dbg !273
  %402 = icmp eq i64 %401, %358, !dbg !273
  br i1 %402, label %403, label %369, !dbg !273, !llvm.loop !282

403:                                              ; preds = %369, %367
  %404 = phi double [ undef, %367 ], [ %handler_result9, %369 ]
  %405 = phi i64 [ 0, %367 ], [ %400, %369 ]
  %406 = phi double [ 0.000000e+00, %367 ], [ %handler_result9, %369 ]
  br i1 %359, label %420, label %407, !dbg !273

407:                                              ; preds = %407, %403
  %408 = phi i64 [ %417, %407 ], [ %405, %403 ]
  %409 = phi double [ %handler_result10, %407 ], [ %406, %403 ]
  %410 = phi i64 [ %418, %407 ], [ 0, %403 ]
  tail call void @llvm.dbg.value(metadata double %409, metadata !88, metadata !DIExpression()), !dbg !272
  tail call void @llvm.dbg.value(metadata i64 %408, metadata !72, metadata !DIExpression()), !dbg !142
  %411 = mul nsw i64 %408, %352, !dbg !275
  %412 = getelementptr double, ptr %363, i64 %411, !dbg !278
  %413 = load double, ptr %412, align 8, !dbg !278, !tbaa !177
  %414 = getelementptr double, ptr %368, i64 %411, !dbg !279
  %415 = load double, ptr %414, align 8, !dbg !279, !tbaa !177
  %416 = fmul double %413, %415, !dbg !280
  %handler_result10 = call double @fAddHandlerDouble(double %409, double %416), !dbg !281
  tail call void @llvm.dbg.value(metadata double %handler_result10, metadata !88, metadata !DIExpression()), !dbg !272
  %417 = add nuw nsw i64 %408, 1, !dbg !281
  tail call void @llvm.dbg.value(metadata i64 %417, metadata !72, metadata !DIExpression()), !dbg !142
  %418 = add i64 %410, 1, !dbg !273
  %419 = icmp eq i64 %418, %356, !dbg !273
  br i1 %419, label %420, label %407, !dbg !273, !llvm.loop !284

420:                                              ; preds = %407, %403, %365
  %421 = phi double [ 0.000000e+00, %365 ], [ %404, %403 ], [ %handler_result10, %407 ], !dbg !272
  %422 = fmul double %421, %5, !dbg !285
  %423 = getelementptr double, ptr %364, i64 %366, !dbg !286
  %424 = load double, ptr %423, align 8, !dbg !287, !tbaa !177
  %handler_result11 = call double @fAddHandlerDouble(double %422, double %424), !dbg !287
  store double %handler_result11, ptr %423, align 8, !dbg !287, !tbaa !177
  %425 = add nuw nsw i64 %366, 1, !dbg !288
  tail call void @llvm.dbg.value(metadata i64 %425, metadata !71, metadata !DIExpression()), !dbg !142
  %426 = icmp eq i64 %425, %354, !dbg !289
  br i1 %426, label %427, label %365, !dbg !271, !llvm.loop !290

427:                                              ; preds = %420
  %428 = add nuw nsw i64 %361, 1, !dbg !292
  tail call void @llvm.dbg.value(metadata i64 %428, metadata !68, metadata !DIExpression()), !dbg !142
  %429 = icmp eq i64 %428, %354, !dbg !269
  br i1 %429, label %601, label %360, !dbg !270, !llvm.loop !293

430:                                              ; preds = %345
  %431 = icmp eq i32 %53, 122, !dbg !295
  %432 = and i1 %431, %264, !dbg !296
  br i1 %432, label %433, label %514, !dbg !296

433:                                              ; preds = %430
  tail call void @llvm.dbg.value(metadata i32 0, metadata !68, metadata !DIExpression()), !dbg !142
  %434 = icmp sgt i32 %3, 0, !dbg !297
  br i1 %434, label %435, label %601, !dbg !298

435:                                              ; preds = %433
  %436 = icmp sgt i32 %4, 0
  %437 = sext i32 %7 to i64, !dbg !298
  %438 = sext i32 %10 to i64, !dbg !298
  %439 = zext nneg i32 %3 to i64, !dbg !297
  %440 = zext i32 %4 to i64
  %441 = and i64 %440, 3
  %442 = icmp ult i32 %4, 4
  %443 = and i64 %440, 2147483644
  %444 = icmp eq i64 %441, 0
  br label %445, !dbg !298

445:                                              ; preds = %510, %435
  %446 = phi i64 [ 0, %435 ], [ %511, %510 ]
  %447 = phi i64 [ 1, %435 ], [ %512, %510 ]
  tail call void @llvm.dbg.value(metadata i64 %446, metadata !68, metadata !DIExpression()), !dbg !142
  %448 = mul nsw i64 %446, %438
  tail call void @llvm.dbg.value(metadata i32 0, metadata !71, metadata !DIExpression()), !dbg !142
  %449 = mul nsw i64 %446, %437
  %450 = getelementptr double, ptr %6, i64 %449
  %451 = getelementptr double, ptr %9, i64 %448, !dbg !299
  br label %452, !dbg !299

452:                                              ; preds = %503, %445
  %453 = phi i64 [ 0, %445 ], [ %508, %503 ]
  tail call void @llvm.dbg.value(metadata i64 %453, metadata !71, metadata !DIExpression()), !dbg !142
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !97, metadata !DIExpression()), !dbg !300
  tail call void @llvm.dbg.value(metadata i32 0, metadata !72, metadata !DIExpression()), !dbg !142
  br i1 %436, label %454, label %503, !dbg !301

454:                                              ; preds = %452
  %455 = mul nsw i64 %453, %437
  %456 = getelementptr double, ptr %6, i64 %455, !dbg !301
  br i1 %442, label %487, label %457, !dbg !301

457:                                              ; preds = %457, %454
  %458 = phi i64 [ %484, %457 ], [ 0, %454 ]
  %459 = phi double [ %handler_result15, %457 ], [ 0.000000e+00, %454 ]
  %460 = phi i64 [ %485, %457 ], [ 0, %454 ]
  tail call void @llvm.dbg.value(metadata double %459, metadata !97, metadata !DIExpression()), !dbg !300
  tail call void @llvm.dbg.value(metadata i64 %458, metadata !72, metadata !DIExpression()), !dbg !142
  %461 = getelementptr double, ptr %450, i64 %458, !dbg !303
  %462 = load double, ptr %461, align 8, !dbg !303, !tbaa !177
  %463 = getelementptr double, ptr %456, i64 %458, !dbg !306
  %464 = load double, ptr %463, align 8, !dbg !306, !tbaa !177
  %465 = fmul double %462, %464, !dbg !307
  %handler_result12 = call double @fAddHandlerDouble(double %459, double %465), !dbg !308
  tail call void @llvm.dbg.value(metadata double %handler_result12, metadata !97, metadata !DIExpression()), !dbg !300
  %466 = or disjoint i64 %458, 1, !dbg !308
  tail call void @llvm.dbg.value(metadata i64 %466, metadata !72, metadata !DIExpression()), !dbg !142
  tail call void @llvm.dbg.value(metadata double %handler_result12, metadata !97, metadata !DIExpression()), !dbg !300
  tail call void @llvm.dbg.value(metadata i64 %466, metadata !72, metadata !DIExpression()), !dbg !142
  %467 = getelementptr double, ptr %450, i64 %466, !dbg !303
  %468 = load double, ptr %467, align 8, !dbg !303, !tbaa !177
  %469 = getelementptr double, ptr %456, i64 %466, !dbg !306
  %470 = load double, ptr %469, align 8, !dbg !306, !tbaa !177
  %471 = fmul double %468, %470, !dbg !307
  %handler_result13 = call double @fAddHandlerDouble(double %handler_result12, double %471), !dbg !308
  tail call void @llvm.dbg.value(metadata double %handler_result13, metadata !97, metadata !DIExpression()), !dbg !300
  %472 = or disjoint i64 %458, 2, !dbg !308
  tail call void @llvm.dbg.value(metadata i64 %472, metadata !72, metadata !DIExpression()), !dbg !142
  tail call void @llvm.dbg.value(metadata double %handler_result13, metadata !97, metadata !DIExpression()), !dbg !300
  tail call void @llvm.dbg.value(metadata i64 %472, metadata !72, metadata !DIExpression()), !dbg !142
  %473 = getelementptr double, ptr %450, i64 %472, !dbg !303
  %474 = load double, ptr %473, align 8, !dbg !303, !tbaa !177
  %475 = getelementptr double, ptr %456, i64 %472, !dbg !306
  %476 = load double, ptr %475, align 8, !dbg !306, !tbaa !177
  %477 = fmul double %474, %476, !dbg !307
  %handler_result14 = call double @fAddHandlerDouble(double %handler_result13, double %477), !dbg !308
  tail call void @llvm.dbg.value(metadata double %handler_result14, metadata !97, metadata !DIExpression()), !dbg !300
  %478 = or disjoint i64 %458, 3, !dbg !308
  tail call void @llvm.dbg.value(metadata i64 %478, metadata !72, metadata !DIExpression()), !dbg !142
  tail call void @llvm.dbg.value(metadata double %handler_result14, metadata !97, metadata !DIExpression()), !dbg !300
  tail call void @llvm.dbg.value(metadata i64 %478, metadata !72, metadata !DIExpression()), !dbg !142
  %479 = getelementptr double, ptr %450, i64 %478, !dbg !303
  %480 = load double, ptr %479, align 8, !dbg !303, !tbaa !177
  %481 = getelementptr double, ptr %456, i64 %478, !dbg !306
  %482 = load double, ptr %481, align 8, !dbg !306, !tbaa !177
  %483 = fmul double %480, %482, !dbg !307
  %handler_result15 = call double @fAddHandlerDouble(double %handler_result14, double %483), !dbg !308
  tail call void @llvm.dbg.value(metadata double %handler_result15, metadata !97, metadata !DIExpression()), !dbg !300
  %484 = add nuw nsw i64 %458, 4, !dbg !308
  tail call void @llvm.dbg.value(metadata i64 %484, metadata !72, metadata !DIExpression()), !dbg !142
  %485 = add i64 %460, 4, !dbg !301
  %486 = icmp eq i64 %485, %443, !dbg !301
  br i1 %486, label %487, label %457, !dbg !301, !llvm.loop !309

487:                                              ; preds = %457, %454
  %488 = phi double [ undef, %454 ], [ %handler_result15, %457 ]
  %489 = phi i64 [ 0, %454 ], [ %484, %457 ]
  %490 = phi double [ 0.000000e+00, %454 ], [ %handler_result15, %457 ]
  br i1 %444, label %503, label %491, !dbg !301

491:                                              ; preds = %491, %487
  %492 = phi i64 [ %500, %491 ], [ %489, %487 ]
  %493 = phi double [ %handler_result16, %491 ], [ %490, %487 ]
  %494 = phi i64 [ %501, %491 ], [ 0, %487 ]
  tail call void @llvm.dbg.value(metadata double %493, metadata !97, metadata !DIExpression()), !dbg !300
  tail call void @llvm.dbg.value(metadata i64 %492, metadata !72, metadata !DIExpression()), !dbg !142
  %495 = getelementptr double, ptr %450, i64 %492, !dbg !303
  %496 = load double, ptr %495, align 8, !dbg !303, !tbaa !177
  %497 = getelementptr double, ptr %456, i64 %492, !dbg !306
  %498 = load double, ptr %497, align 8, !dbg !306, !tbaa !177
  %499 = fmul double %496, %498, !dbg !307
  %handler_result16 = call double @fAddHandlerDouble(double %493, double %499), !dbg !308
  tail call void @llvm.dbg.value(metadata double %handler_result16, metadata !97, metadata !DIExpression()), !dbg !300
  %500 = add nuw nsw i64 %492, 1, !dbg !308
  tail call void @llvm.dbg.value(metadata i64 %500, metadata !72, metadata !DIExpression()), !dbg !142
  %501 = add i64 %494, 1, !dbg !301
  %502 = icmp eq i64 %501, %441, !dbg !301
  br i1 %502, label %503, label %491, !dbg !301, !llvm.loop !311

503:                                              ; preds = %491, %487, %452
  %504 = phi double [ 0.000000e+00, %452 ], [ %488, %487 ], [ %handler_result16, %491 ], !dbg !300
  %505 = fmul double %504, %5, !dbg !312
  %506 = getelementptr double, ptr %451, i64 %453, !dbg !313
  %507 = load double, ptr %506, align 8, !dbg !314, !tbaa !177
  %handler_result17 = call double @fAddHandlerDouble(double %505, double %507), !dbg !314
  store double %handler_result17, ptr %506, align 8, !dbg !314, !tbaa !177
  %508 = add nuw nsw i64 %453, 1, !dbg !315
  tail call void @llvm.dbg.value(metadata i64 %508, metadata !71, metadata !DIExpression()), !dbg !142
  %509 = icmp eq i64 %508, %447, !dbg !316
  br i1 %509, label %510, label %452, !dbg !299, !llvm.loop !317

510:                                              ; preds = %503
  %511 = add nuw nsw i64 %446, 1, !dbg !319
  tail call void @llvm.dbg.value(metadata i64 %511, metadata !68, metadata !DIExpression()), !dbg !142
  %512 = add nuw nsw i64 %447, 1, !dbg !298
  %513 = icmp eq i64 %511, %439, !dbg !297
  br i1 %513, label %601, label %445, !dbg !298, !llvm.loop !320

514:                                              ; preds = %430
  %515 = and i1 %431, %346, !dbg !322
  br i1 %515, label %516, label %600, !dbg !322

516:                                              ; preds = %514
  tail call void @llvm.dbg.value(metadata i32 0, metadata !68, metadata !DIExpression()), !dbg !142
  %517 = icmp sgt i32 %3, 0, !dbg !323
  br i1 %517, label %518, label %601, !dbg !324

518:                                              ; preds = %516
  %519 = icmp sgt i32 %4, 0
  %520 = sext i32 %7 to i64, !dbg !324
  %521 = sext i32 %10 to i64, !dbg !324
  %522 = zext nneg i32 %3 to i64, !dbg !323
  %523 = zext i32 %4 to i64
  %524 = and i64 %523, 3
  %525 = icmp ult i32 %4, 4
  %526 = and i64 %523, 2147483644
  %527 = icmp eq i64 %524, 0
  br label %528, !dbg !324

528:                                              ; preds = %596, %518
  %529 = phi i64 [ 0, %518 ], [ %597, %596 ]
  %530 = phi i64 [ 1, %518 ], [ %598, %596 ]
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !68, metadata !DIExpression()), !dbg !142
  %531 = mul nsw i64 %529, %521
  tail call void @llvm.dbg.value(metadata i32 0, metadata !71, metadata !DIExpression()), !dbg !142
  %532 = getelementptr double, ptr %6, i64 %529
  %533 = getelementptr double, ptr %9, i64 %531, !dbg !325
  br label %534, !dbg !325

534:                                              ; preds = %589, %528
  %535 = phi i64 [ 0, %528 ], [ %594, %589 ]
  tail call void @llvm.dbg.value(metadata i64 %535, metadata !71, metadata !DIExpression()), !dbg !142
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !106, metadata !DIExpression()), !dbg !326
  tail call void @llvm.dbg.value(metadata i32 0, metadata !72, metadata !DIExpression()), !dbg !142
  br i1 %519, label %536, label %589, !dbg !327

536:                                              ; preds = %534
  %537 = getelementptr double, ptr %6, i64 %535, !dbg !327
  br i1 %525, label %572, label %538, !dbg !327

538:                                              ; preds = %538, %536
  %539 = phi i64 [ %569, %538 ], [ 0, %536 ]
  %540 = phi double [ %handler_result21, %538 ], [ 0.000000e+00, %536 ]
  %541 = phi i64 [ %570, %538 ], [ 0, %536 ]
  tail call void @llvm.dbg.value(metadata double %540, metadata !106, metadata !DIExpression()), !dbg !326
  tail call void @llvm.dbg.value(metadata i64 %539, metadata !72, metadata !DIExpression()), !dbg !142
  %542 = mul nsw i64 %539, %520, !dbg !329
  %543 = getelementptr double, ptr %532, i64 %542, !dbg !332
  %544 = load double, ptr %543, align 8, !dbg !332, !tbaa !177
  %545 = getelementptr double, ptr %537, i64 %542, !dbg !333
  %546 = load double, ptr %545, align 8, !dbg !333, !tbaa !177
  %547 = fmul double %544, %546, !dbg !334
  %handler_result18 = call double @fAddHandlerDouble(double %540, double %547), !dbg !335
  tail call void @llvm.dbg.value(metadata double %handler_result18, metadata !106, metadata !DIExpression()), !dbg !326
  %548 = or disjoint i64 %539, 1, !dbg !335
  tail call void @llvm.dbg.value(metadata i64 %548, metadata !72, metadata !DIExpression()), !dbg !142
  tail call void @llvm.dbg.value(metadata double %handler_result18, metadata !106, metadata !DIExpression()), !dbg !326
  tail call void @llvm.dbg.value(metadata i64 %548, metadata !72, metadata !DIExpression()), !dbg !142
  %549 = mul nsw i64 %548, %520, !dbg !329
  %550 = getelementptr double, ptr %532, i64 %549, !dbg !332
  %551 = load double, ptr %550, align 8, !dbg !332, !tbaa !177
  %552 = getelementptr double, ptr %537, i64 %549, !dbg !333
  %553 = load double, ptr %552, align 8, !dbg !333, !tbaa !177
  %554 = fmul double %551, %553, !dbg !334
  %handler_result19 = call double @fAddHandlerDouble(double %handler_result18, double %554), !dbg !335
  tail call void @llvm.dbg.value(metadata double %handler_result19, metadata !106, metadata !DIExpression()), !dbg !326
  %555 = or disjoint i64 %539, 2, !dbg !335
  tail call void @llvm.dbg.value(metadata i64 %555, metadata !72, metadata !DIExpression()), !dbg !142
  tail call void @llvm.dbg.value(metadata double %handler_result19, metadata !106, metadata !DIExpression()), !dbg !326
  tail call void @llvm.dbg.value(metadata i64 %555, metadata !72, metadata !DIExpression()), !dbg !142
  %556 = mul nsw i64 %555, %520, !dbg !329
  %557 = getelementptr double, ptr %532, i64 %556, !dbg !332
  %558 = load double, ptr %557, align 8, !dbg !332, !tbaa !177
  %559 = getelementptr double, ptr %537, i64 %556, !dbg !333
  %560 = load double, ptr %559, align 8, !dbg !333, !tbaa !177
  %561 = fmul double %558, %560, !dbg !334
  %handler_result20 = call double @fAddHandlerDouble(double %handler_result19, double %561), !dbg !335
  tail call void @llvm.dbg.value(metadata double %handler_result20, metadata !106, metadata !DIExpression()), !dbg !326
  %562 = or disjoint i64 %539, 3, !dbg !335
  tail call void @llvm.dbg.value(metadata i64 %562, metadata !72, metadata !DIExpression()), !dbg !142
  tail call void @llvm.dbg.value(metadata double %handler_result20, metadata !106, metadata !DIExpression()), !dbg !326
  tail call void @llvm.dbg.value(metadata i64 %562, metadata !72, metadata !DIExpression()), !dbg !142
  %563 = mul nsw i64 %562, %520, !dbg !329
  %564 = getelementptr double, ptr %532, i64 %563, !dbg !332
  %565 = load double, ptr %564, align 8, !dbg !332, !tbaa !177
  %566 = getelementptr double, ptr %537, i64 %563, !dbg !333
  %567 = load double, ptr %566, align 8, !dbg !333, !tbaa !177
  %568 = fmul double %565, %567, !dbg !334
  %handler_result21 = call double @fAddHandlerDouble(double %handler_result20, double %568), !dbg !335
  tail call void @llvm.dbg.value(metadata double %handler_result21, metadata !106, metadata !DIExpression()), !dbg !326
  %569 = add nuw nsw i64 %539, 4, !dbg !335
  tail call void @llvm.dbg.value(metadata i64 %569, metadata !72, metadata !DIExpression()), !dbg !142
  %570 = add i64 %541, 4, !dbg !327
  %571 = icmp eq i64 %570, %526, !dbg !327
  br i1 %571, label %572, label %538, !dbg !327, !llvm.loop !336

572:                                              ; preds = %538, %536
  %573 = phi double [ undef, %536 ], [ %handler_result21, %538 ]
  %574 = phi i64 [ 0, %536 ], [ %569, %538 ]
  %575 = phi double [ 0.000000e+00, %536 ], [ %handler_result21, %538 ]
  br i1 %527, label %589, label %576, !dbg !327

576:                                              ; preds = %576, %572
  %577 = phi i64 [ %586, %576 ], [ %574, %572 ]
  %578 = phi double [ %handler_result22, %576 ], [ %575, %572 ]
  %579 = phi i64 [ %587, %576 ], [ 0, %572 ]
  tail call void @llvm.dbg.value(metadata double %578, metadata !106, metadata !DIExpression()), !dbg !326
  tail call void @llvm.dbg.value(metadata i64 %577, metadata !72, metadata !DIExpression()), !dbg !142
  %580 = mul nsw i64 %577, %520, !dbg !329
  %581 = getelementptr double, ptr %532, i64 %580, !dbg !332
  %582 = load double, ptr %581, align 8, !dbg !332, !tbaa !177
  %583 = getelementptr double, ptr %537, i64 %580, !dbg !333
  %584 = load double, ptr %583, align 8, !dbg !333, !tbaa !177
  %585 = fmul double %582, %584, !dbg !334
  %handler_result22 = call double @fAddHandlerDouble(double %578, double %585), !dbg !335
  tail call void @llvm.dbg.value(metadata double %handler_result22, metadata !106, metadata !DIExpression()), !dbg !326
  %586 = add nuw nsw i64 %577, 1, !dbg !335
  tail call void @llvm.dbg.value(metadata i64 %586, metadata !72, metadata !DIExpression()), !dbg !142
  %587 = add i64 %579, 1, !dbg !327
  %588 = icmp eq i64 %587, %524, !dbg !327
  br i1 %588, label %589, label %576, !dbg !327, !llvm.loop !338

589:                                              ; preds = %576, %572, %534
  %590 = phi double [ 0.000000e+00, %534 ], [ %573, %572 ], [ %handler_result22, %576 ], !dbg !326
  %591 = fmul double %590, %5, !dbg !339
  %592 = getelementptr double, ptr %533, i64 %535, !dbg !340
  %593 = load double, ptr %592, align 8, !dbg !341, !tbaa !177
  %handler_result23 = call double @fAddHandlerDouble(double %591, double %593), !dbg !341
  store double %handler_result23, ptr %592, align 8, !dbg !341, !tbaa !177
  %594 = add nuw nsw i64 %535, 1, !dbg !342
  tail call void @llvm.dbg.value(metadata i64 %594, metadata !71, metadata !DIExpression()), !dbg !142
  %595 = icmp eq i64 %594, %530, !dbg !343
  br i1 %595, label %596, label %534, !dbg !325, !llvm.loop !344

596:                                              ; preds = %589
  %597 = add nuw nsw i64 %529, 1, !dbg !346
  tail call void @llvm.dbg.value(metadata i64 %597, metadata !68, metadata !DIExpression()), !dbg !142
  %598 = add nuw nsw i64 %530, 1, !dbg !324
  %599 = icmp eq i64 %597, %522, !dbg !323
  br i1 %599, label %601, label %528, !dbg !324, !llvm.loop !347

600:                                              ; preds = %514
  tail call void (i32, ptr, ptr, ...) @cblas_xerbla(i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #4, !dbg !349
  br label %601

601:                                              ; preds = %600, %596, %516, %510, %433, %427, %348, %342, %266, %261, %38
  ret void, !dbg !351
}

declare !dbg !353 void @cblas_xerbla(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

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
!254 = !DILocation(line: 81, column: 29, scope: !251)
!255 = distinct !{!255, !247, !256, !184}
!256 = !DILocation(line: 83, column: 9, scope: !248)
!257 = distinct !{!257, !235}
!258 = !DILocation(line: 84, column: 33, scope: !80)
!259 = !DILocation(line: 84, column: 9, scope: !80)
!260 = !DILocation(line: 84, column: 24, scope: !80)
!261 = !DILocation(line: 79, column: 27, scope: !81)
!262 = !DILocation(line: 79, column: 21, scope: !81)
!263 = distinct !{!263, !245, !264, !184}
!264 = !DILocation(line: 85, column: 7, scope: !82)
!265 = !DILocation(line: 78, column: 25, scope: !84)
!266 = distinct !{!266, !244, !267, !184}
!267 = !DILocation(line: 86, column: 5, scope: !85)
!268 = !DILocation(line: 88, column: 33, scope: !96)
!269 = !DILocation(line: 90, column: 19, scope: !93)
!270 = !DILocation(line: 90, column: 5, scope: !94)
!271 = !DILocation(line: 91, column: 7, scope: !91)
!272 = !DILocation(line: 0, scope: !89)
!273 = !DILocation(line: 93, column: 9, scope: !274)
!274 = distinct !DILexicalBlock(scope: !89, file: !2, line: 93, column: 9)
!275 = !DILocation(line: 94, column: 23, scope: !276)
!276 = distinct !DILexicalBlock(scope: !277, file: !2, line: 93, column: 33)
!277 = distinct !DILexicalBlock(scope: !274, file: !2, line: 93, column: 9)
!278 = !DILocation(line: 94, column: 19, scope: !276)
!279 = !DILocation(line: 94, column: 36, scope: !276)
!280 = !DILocation(line: 94, column: 34, scope: !276)
!281 = !DILocation(line: 93, column: 29, scope: !277)
!282 = distinct !{!282, !273, !283, !184}
!283 = !DILocation(line: 95, column: 9, scope: !274)
!284 = distinct !{!284, !235}
!285 = !DILocation(line: 96, column: 33, scope: !89)
!286 = !DILocation(line: 96, column: 9, scope: !89)
!287 = !DILocation(line: 96, column: 24, scope: !89)
!288 = !DILocation(line: 91, column: 27, scope: !90)
!289 = !DILocation(line: 91, column: 21, scope: !90)
!290 = distinct !{!290, !271, !291, !184}
!291 = !DILocation(line: 97, column: 7, scope: !91)
!292 = !DILocation(line: 90, column: 25, scope: !93)
!293 = distinct !{!293, !270, !294, !184}
!294 = !DILocation(line: 98, column: 5, scope: !94)
!295 = !DILocation(line: 100, column: 19, scope: !105)
!296 = !DILocation(line: 100, column: 33, scope: !105)
!297 = !DILocation(line: 102, column: 19, scope: !102)
!298 = !DILocation(line: 102, column: 5, scope: !103)
!299 = !DILocation(line: 103, column: 7, scope: !100)
!300 = !DILocation(line: 0, scope: !98)
!301 = !DILocation(line: 105, column: 9, scope: !302)
!302 = distinct !DILexicalBlock(scope: !98, file: !2, line: 105, column: 9)
!303 = !DILocation(line: 106, column: 19, scope: !304)
!304 = distinct !DILexicalBlock(scope: !305, file: !2, line: 105, column: 33)
!305 = distinct !DILexicalBlock(scope: !302, file: !2, line: 105, column: 9)
!306 = !DILocation(line: 106, column: 36, scope: !304)
!307 = !DILocation(line: 106, column: 34, scope: !304)
!308 = !DILocation(line: 105, column: 29, scope: !305)
!309 = distinct !{!309, !301, !310, !184}
!310 = !DILocation(line: 107, column: 9, scope: !302)
!311 = distinct !{!311, !235}
!312 = !DILocation(line: 108, column: 33, scope: !98)
!313 = !DILocation(line: 108, column: 9, scope: !98)
!314 = !DILocation(line: 108, column: 24, scope: !98)
!315 = !DILocation(line: 103, column: 28, scope: !99)
!316 = !DILocation(line: 103, column: 21, scope: !99)
!317 = distinct !{!317, !299, !318, !184}
!318 = !DILocation(line: 109, column: 7, scope: !100)
!319 = !DILocation(line: 102, column: 25, scope: !102)
!320 = distinct !{!320, !298, !321, !184}
!321 = !DILocation(line: 110, column: 5, scope: !103)
!322 = !DILocation(line: 112, column: 33, scope: !114)
!323 = !DILocation(line: 114, column: 19, scope: !111)
!324 = !DILocation(line: 114, column: 5, scope: !112)
!325 = !DILocation(line: 115, column: 7, scope: !109)
!326 = !DILocation(line: 0, scope: !107)
!327 = !DILocation(line: 117, column: 9, scope: !328)
!328 = distinct !DILexicalBlock(scope: !107, file: !2, line: 117, column: 9)
!329 = !DILocation(line: 118, column: 23, scope: !330)
!330 = distinct !DILexicalBlock(scope: !331, file: !2, line: 117, column: 33)
!331 = distinct !DILexicalBlock(scope: !328, file: !2, line: 117, column: 9)
!332 = !DILocation(line: 118, column: 19, scope: !330)
!333 = !DILocation(line: 118, column: 36, scope: !330)
!334 = !DILocation(line: 118, column: 34, scope: !330)
!335 = !DILocation(line: 117, column: 29, scope: !331)
!336 = distinct !{!336, !327, !337, !184}
!337 = !DILocation(line: 119, column: 9, scope: !328)
!338 = distinct !{!338, !235}
!339 = !DILocation(line: 120, column: 33, scope: !107)
!340 = !DILocation(line: 120, column: 9, scope: !107)
!341 = !DILocation(line: 120, column: 24, scope: !107)
!342 = !DILocation(line: 115, column: 28, scope: !108)
!343 = !DILocation(line: 115, column: 21, scope: !108)
!344 = distinct !{!344, !325, !345, !184}
!345 = !DILocation(line: 121, column: 7, scope: !109)
!346 = !DILocation(line: 114, column: 25, scope: !111)
!347 = distinct !{!347, !324, !348, !184}
!348 = !DILocation(line: 122, column: 5, scope: !112)
!349 = !DILocation(line: 125, column: 5, scope: !350)
!350 = distinct !DILexicalBlock(scope: !114, file: !2, line: 124, column: 10)
!351 = !DILocation(line: 15, column: 1, scope: !352)
!352 = !DILexicalBlockFile(scope: !44, file: !18, discriminator: 0)
!353 = !DISubprogram(name: "cblas_xerbla", scope: !21, file: !21, line: 602, type: !354, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!354 = !DISubroutineType(types: !355)
!355 = !{null, !51, !356, !356, null}
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!357 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
