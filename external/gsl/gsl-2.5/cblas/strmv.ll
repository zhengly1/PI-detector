; ModuleID = 'strmv.c'
source_filename = "strmv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"./source_trmv_r.h\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !7
@.str.2 = private unnamed_addr constant [23 x i8] c"unrecognized operation\00", align 1, !dbg !12

; Function Attrs: nounwind uwtable
define dso_local void @cblas_strmv(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef readonly %5, i32 noundef %6, ptr nocapture noundef %7, i32 noundef %8) local_unnamed_addr #0 !dbg !48 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !62, metadata !DIExpression()), !dbg !119
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !63, metadata !DIExpression()), !dbg !119
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !64, metadata !DIExpression()), !dbg !119
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !65, metadata !DIExpression()), !dbg !119
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !66, metadata !DIExpression()), !dbg !119
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !67, metadata !DIExpression()), !dbg !119
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !68, metadata !DIExpression()), !dbg !119
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !69, metadata !DIExpression()), !dbg !119
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !70, metadata !DIExpression()), !dbg !119
  %10 = icmp eq i32 %3, 131, !dbg !120
  tail call void @llvm.dbg.value(metadata i1 %10, metadata !75, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !121
  %11 = icmp eq i32 %2, 113, !dbg !122
  %12 = select i1 %11, i32 112, i32 %2, !dbg !123
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !76, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata i32 0, metadata !77, metadata !DIExpression()), !dbg !124
  %13 = add i32 %0, -103, !dbg !125
  %14 = icmp ult i32 %13, -2, !dbg !125
  %15 = zext i1 %14 to i32, !dbg !125
  tail call void @llvm.dbg.value(metadata i32 %15, metadata !77, metadata !DIExpression()), !dbg !124
  %16 = add i32 %1, -123, !dbg !127
  %17 = icmp ult i32 %16, -2, !dbg !127
  %18 = select i1 %17, i32 2, i32 %15, !dbg !127
  tail call void @llvm.dbg.value(metadata i32 %18, metadata !77, metadata !DIExpression()), !dbg !124
  %19 = add i32 %2, -114, !dbg !129
  %20 = icmp ult i32 %19, -3, !dbg !129
  %21 = select i1 %20, i32 3, i32 %18, !dbg !129
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !77, metadata !DIExpression()), !dbg !124
  %22 = add i32 %3, -133, !dbg !131
  %23 = icmp ult i32 %22, -2, !dbg !131
  %24 = select i1 %23, i32 4, i32 %21, !dbg !131
  tail call void @llvm.dbg.value(metadata i32 %24, metadata !77, metadata !DIExpression()), !dbg !124
  %25 = icmp slt i32 %4, 0, !dbg !133
  %26 = select i1 %25, i32 5, i32 %24, !dbg !135
  tail call void @llvm.dbg.value(metadata i32 %26, metadata !77, metadata !DIExpression()), !dbg !124
  %27 = tail call i32 @llvm.smax.i32(i32 %4, i32 1), !dbg !136
  %28 = icmp sgt i32 %27, %6, !dbg !136
  %29 = select i1 %28, i32 7, i32 %26, !dbg !135
  tail call void @llvm.dbg.value(metadata i32 %29, metadata !77, metadata !DIExpression()), !dbg !124
  %30 = icmp eq i32 %8, 0, !dbg !138
  %31 = select i1 %30, i32 9, i32 %29, !dbg !135
  tail call void @llvm.dbg.value(metadata i32 %31, metadata !77, metadata !DIExpression()), !dbg !124
  %32 = icmp eq i32 %31, 0, !dbg !140
  br i1 %32, label %34, label %33, !dbg !135

33:                                               ; preds = %9
  tail call void (i32, ptr, ptr, ...) @cblas_xerbla(i32 noundef %31, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #3, !dbg !140
  br label %34, !dbg !140

34:                                               ; preds = %33, %9
  %35 = icmp eq i32 %0, 101, !dbg !142
  %36 = icmp eq i32 %12, 111
  %37 = and i1 %35, %36, !dbg !143
  %38 = icmp eq i32 %1, 121
  %39 = and i1 %38, %37, !dbg !143
  br i1 %39, label %46, label %40, !dbg !143

40:                                               ; preds = %34
  %41 = icmp eq i32 %0, 102, !dbg !144
  %42 = icmp eq i32 %12, 112
  %43 = and i1 %41, %42, !dbg !145
  %44 = icmp eq i32 %1, 122
  %45 = and i1 %44, %43, !dbg !145
  br i1 %45, label %46, label %101, !dbg !145

46:                                               ; preds = %40, %34
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !79, metadata !DIExpression()), !dbg !146
  tail call void @llvm.dbg.value(metadata i32 0, metadata !71, metadata !DIExpression()), !dbg !121
  %47 = icmp sgt i32 %4, 0, !dbg !147
  br i1 %47, label %48, label %371, !dbg !148

48:                                               ; preds = %46
  %49 = icmp sgt i32 %8, 0, !dbg !149
  %50 = sub nsw i32 1, %4, !dbg !149
  %51 = mul i32 %50, %8, !dbg !149
  %52 = select i1 %49, i32 0, i32 %51, !dbg !149
  tail call void @llvm.dbg.value(metadata i32 %52, metadata !79, metadata !DIExpression()), !dbg !146
  %53 = add i32 %6, 1
  %54 = sext i32 %8 to i64, !dbg !148
  %55 = zext nneg i32 %4 to i64, !dbg !148
  %56 = sext i32 %6 to i64, !dbg !148
  %57 = sext i32 %52 to i64, !dbg !148
  %58 = zext nneg i32 %4 to i64, !dbg !147
  br label %59, !dbg !148

59:                                               ; preds = %48, %95
  %60 = phi i64 [ %57, %48 ], [ %98, %95 ]
  %61 = phi i64 [ 0, %48 ], [ %65, %95 ]
  %62 = phi i32 [ %52, %48 ], [ %64, %95 ]
  %63 = phi i64 [ 1, %48 ], [ %99, %95 ]
  %64 = add i32 %62, %8, !dbg !148
  tail call void @llvm.dbg.value(metadata i64 %61, metadata !71, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata i64 %60, metadata !79, metadata !DIExpression()), !dbg !146
  tail call void @llvm.dbg.value(metadata float 0.000000e+00, metadata !82, metadata !DIExpression()), !dbg !150
  %65 = add nuw nsw i64 %61, 1, !dbg !151
  tail call void @llvm.dbg.value(metadata i64 %65, metadata !86, metadata !DIExpression()), !dbg !150
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !87, metadata !DIExpression()), !dbg !150
  tail call void @llvm.dbg.value(metadata !DIArgList(i64 poison, i32 poison, i32 poison), metadata !88, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !150
  tail call void @llvm.dbg.value(metadata i64 %65, metadata !74, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata float 0.000000e+00, metadata !82, metadata !DIExpression()), !dbg !150
  %66 = icmp ult i64 %65, %55, !dbg !152
  br i1 %66, label %67, label %84, !dbg !155

67:                                               ; preds = %59
  %68 = sext i32 %64 to i64, !dbg !151
  tail call void @llvm.dbg.value(metadata !DIArgList(i64 poison, i32 poison, i32 poison), metadata !88, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !150
  tail call void @llvm.dbg.value(metadata !DIArgList(i64 poison, i32 poison, i32 poison), metadata !88, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !150
  %69 = mul nsw i64 %61, %56
  %70 = getelementptr float, ptr %5, i64 %69, !dbg !155
  br label %71, !dbg !155

71:                                               ; preds = %67, %71
  %72 = phi i64 [ %68, %67 ], [ %81, %71 ]
  %73 = phi i64 [ %63, %67 ], [ %82, %71 ]
  %74 = phi float [ 0.000000e+00, %67 ], [ %80, %71 ]
  tail call void @llvm.dbg.value(metadata i64 %73, metadata !74, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata float %74, metadata !82, metadata !DIExpression()), !dbg !150
  tail call void @llvm.dbg.value(metadata i64 %72, metadata !88, metadata !DIExpression()), !dbg !150
  %75 = getelementptr inbounds float, ptr %7, i64 %72, !dbg !156
  %76 = load float, ptr %75, align 4, !dbg !156, !tbaa !158
  %77 = getelementptr float, ptr %70, i64 %73, !dbg !162
  %78 = load float, ptr %77, align 4, !dbg !162, !tbaa !158
  %79 = fmul float %76, %78, !dbg !163
  %80 = fadd float %74, %79, !dbg !164
  tail call void @llvm.dbg.value(metadata float %80, metadata !82, metadata !DIExpression()), !dbg !150
  %81 = add i64 %72, %54, !dbg !165
  tail call void @llvm.dbg.value(metadata i64 %81, metadata !88, metadata !DIExpression()), !dbg !150
  %82 = add nuw nsw i64 %73, 1, !dbg !166
  tail call void @llvm.dbg.value(metadata i64 %82, metadata !74, metadata !DIExpression()), !dbg !121
  %83 = icmp eq i64 %82, %58, !dbg !152
  br i1 %83, label %84, label %71, !dbg !155, !llvm.loop !167

84:                                               ; preds = %71, %59
  %85 = phi float [ 0.000000e+00, %59 ], [ %80, %71 ], !dbg !150
  %86 = getelementptr inbounds float, ptr %7, i64 %60, !dbg !170
  %87 = load float, ptr %86, align 4, !dbg !170, !tbaa !158
  br i1 %10, label %88, label %95, !dbg !172

88:                                               ; preds = %84
  %89 = trunc i64 %61 to i32, !dbg !173
  %90 = mul i32 %53, %89, !dbg !173
  %91 = sext i32 %90 to i64, !dbg !175
  %92 = getelementptr inbounds float, ptr %5, i64 %91, !dbg !175
  %93 = load float, ptr %92, align 4, !dbg !175, !tbaa !158
  %94 = fmul float %87, %93, !dbg !176
  br label %95, !dbg !177

95:                                               ; preds = %84, %88
  %96 = phi float [ %94, %88 ], [ %87, %84 ]
  %97 = fadd float %85, %96, !dbg !170
  store float %97, ptr %86, align 4, !dbg !170, !tbaa !158
  %98 = add i64 %60, %54, !dbg !178
  tail call void @llvm.dbg.value(metadata i64 %65, metadata !71, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata i64 %98, metadata !79, metadata !DIExpression()), !dbg !146
  %99 = add nuw nsw i64 %63, 1, !dbg !148
  %100 = icmp eq i64 %65, %58, !dbg !147
  br i1 %100, label %371, label %59, !dbg !148, !llvm.loop !179

101:                                              ; preds = %40
  %102 = and i1 %44, %37, !dbg !181
  %103 = and i1 %38, %43
  %104 = or i1 %102, %103, !dbg !181
  br i1 %104, label %105, label %216, !dbg !181

105:                                              ; preds = %101
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 poison, i32 poison, i32 poison), metadata !89, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_minus, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !182
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !71, metadata !DIExpression()), !dbg !121
  %106 = icmp sgt i32 %4, 0, !dbg !183
  br i1 %106, label %107, label %371, !dbg !184

107:                                              ; preds = %105
  %108 = icmp sgt i32 %8, 0, !dbg !185
  %109 = sub nsw i32 1, %4, !dbg !185
  %110 = mul i32 %109, %8, !dbg !185
  %111 = select i1 %108, i32 0, i32 %110, !dbg !185
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 %111, i32 %4, i32 %8), metadata !89, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_minus, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !182
  %112 = add nsw i32 %4, -1, !dbg !186
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 %111, i32 %112, i32 %8), metadata !89, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !182
  %113 = mul i32 %112, %8, !dbg !187
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 %111, i32 %113), metadata !89, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !182
  %114 = add nsw i32 %111, %113, !dbg !188
  tail call void @llvm.dbg.value(metadata i32 %114, metadata !89, metadata !DIExpression()), !dbg !182
  %115 = sub i32 0, %113
  %116 = select i1 %108, i32 0, i32 %115
  %117 = add i32 %6, 1
  %118 = sext i32 %116 to i64, !dbg !184
  %119 = sext i32 %8 to i64, !dbg !184
  %120 = zext i32 %112 to i64, !dbg !184
  %121 = zext nneg i32 %4 to i64, !dbg !184
  %122 = sext i32 %6 to i64, !dbg !184
  br label %123, !dbg !184

123:                                              ; preds = %107, %210
  %124 = phi i64 [ 0, %107 ], [ %215, %210 ]
  %125 = phi i64 [ %121, %107 ], [ %128, %210 ]
  %126 = phi i64 [ %120, %107 ], [ %214, %210 ]
  %127 = phi i32 [ %114, %107 ], [ %213, %210 ]
  tail call void @llvm.dbg.value(metadata i64 %125, metadata !71, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata i32 %127, metadata !89, metadata !DIExpression()), !dbg !182
  %128 = add nsw i64 %125, -1, !dbg !189
  tail call void @llvm.dbg.value(metadata i64 %128, metadata !71, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata i32 0, metadata !96, metadata !DIExpression()), !dbg !190
  tail call void @llvm.dbg.value(metadata i64 %128, metadata !97, metadata !DIExpression()), !dbg !190
  tail call void @llvm.dbg.value(metadata i32 %116, metadata !98, metadata !DIExpression()), !dbg !190
  tail call void @llvm.dbg.value(metadata i32 0, metadata !74, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata float 0.000000e+00, metadata !92, metadata !DIExpression()), !dbg !190
  %129 = icmp ugt i64 %125, 1, !dbg !191
  br i1 %129, label %130, label %198, !dbg !194

130:                                              ; preds = %123
  %131 = mul nsw i64 %128, %122
  %132 = getelementptr float, ptr %5, i64 %131, !dbg !194
  %133 = and i64 %126, 3, !dbg !194
  %134 = sub i64 %124, %120, !dbg !194
  %135 = icmp ugt i64 %134, -4, !dbg !194
  br i1 %135, label %177, label %136, !dbg !194

136:                                              ; preds = %130
  %137 = and i64 %126, -4, !dbg !194
  br label %138, !dbg !194

138:                                              ; preds = %138, %136
  %139 = phi i64 [ %118, %136 ], [ %173, %138 ]
  %140 = phi i64 [ 0, %136 ], [ %174, %138 ]
  %141 = phi float [ 0.000000e+00, %136 ], [ %172, %138 ]
  %142 = phi i64 [ 0, %136 ], [ %175, %138 ]
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !74, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata i64 %139, metadata !98, metadata !DIExpression()), !dbg !190
  tail call void @llvm.dbg.value(metadata float %141, metadata !92, metadata !DIExpression()), !dbg !190
  %143 = getelementptr inbounds float, ptr %7, i64 %139, !dbg !195
  %144 = load float, ptr %143, align 4, !dbg !195, !tbaa !158
  %145 = getelementptr float, ptr %132, i64 %140, !dbg !197
  %146 = load float, ptr %145, align 4, !dbg !197, !tbaa !158
  %147 = fmul float %144, %146, !dbg !198
  %148 = fadd float %141, %147, !dbg !199
  tail call void @llvm.dbg.value(metadata float %148, metadata !92, metadata !DIExpression()), !dbg !190
  %149 = add i64 %139, %119, !dbg !200
  tail call void @llvm.dbg.value(metadata i64 %149, metadata !98, metadata !DIExpression()), !dbg !190
  %150 = or disjoint i64 %140, 1, !dbg !201
  tail call void @llvm.dbg.value(metadata i64 %150, metadata !74, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata i64 %150, metadata !74, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata i64 %149, metadata !98, metadata !DIExpression()), !dbg !190
  tail call void @llvm.dbg.value(metadata float %148, metadata !92, metadata !DIExpression()), !dbg !190
  %151 = getelementptr inbounds float, ptr %7, i64 %149, !dbg !195
  %152 = load float, ptr %151, align 4, !dbg !195, !tbaa !158
  %153 = getelementptr float, ptr %132, i64 %150, !dbg !197
  %154 = load float, ptr %153, align 4, !dbg !197, !tbaa !158
  %155 = fmul float %152, %154, !dbg !198
  %156 = fadd float %148, %155, !dbg !199
  tail call void @llvm.dbg.value(metadata float %156, metadata !92, metadata !DIExpression()), !dbg !190
  %157 = add i64 %149, %119, !dbg !200
  tail call void @llvm.dbg.value(metadata i64 %157, metadata !98, metadata !DIExpression()), !dbg !190
  %158 = or disjoint i64 %140, 2, !dbg !201
  tail call void @llvm.dbg.value(metadata i64 %158, metadata !74, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata i64 %158, metadata !74, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata i64 %157, metadata !98, metadata !DIExpression()), !dbg !190
  tail call void @llvm.dbg.value(metadata float %156, metadata !92, metadata !DIExpression()), !dbg !190
  %159 = getelementptr inbounds float, ptr %7, i64 %157, !dbg !195
  %160 = load float, ptr %159, align 4, !dbg !195, !tbaa !158
  %161 = getelementptr float, ptr %132, i64 %158, !dbg !197
  %162 = load float, ptr %161, align 4, !dbg !197, !tbaa !158
  %163 = fmul float %160, %162, !dbg !198
  %164 = fadd float %156, %163, !dbg !199
  tail call void @llvm.dbg.value(metadata float %164, metadata !92, metadata !DIExpression()), !dbg !190
  %165 = add i64 %157, %119, !dbg !200
  tail call void @llvm.dbg.value(metadata i64 %165, metadata !98, metadata !DIExpression()), !dbg !190
  %166 = or disjoint i64 %140, 3, !dbg !201
  tail call void @llvm.dbg.value(metadata i64 %166, metadata !74, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata i64 %166, metadata !74, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata i64 %165, metadata !98, metadata !DIExpression()), !dbg !190
  tail call void @llvm.dbg.value(metadata float %164, metadata !92, metadata !DIExpression()), !dbg !190
  %167 = getelementptr inbounds float, ptr %7, i64 %165, !dbg !195
  %168 = load float, ptr %167, align 4, !dbg !195, !tbaa !158
  %169 = getelementptr float, ptr %132, i64 %166, !dbg !197
  %170 = load float, ptr %169, align 4, !dbg !197, !tbaa !158
  %171 = fmul float %168, %170, !dbg !198
  %172 = fadd float %164, %171, !dbg !199
  tail call void @llvm.dbg.value(metadata float %172, metadata !92, metadata !DIExpression()), !dbg !190
  %173 = add i64 %165, %119, !dbg !200
  tail call void @llvm.dbg.value(metadata i64 %173, metadata !98, metadata !DIExpression()), !dbg !190
  %174 = add nuw nsw i64 %140, 4, !dbg !201
  tail call void @llvm.dbg.value(metadata i64 %174, metadata !74, metadata !DIExpression()), !dbg !121
  %175 = add i64 %142, 4, !dbg !194
  %176 = icmp eq i64 %175, %137, !dbg !194
  br i1 %176, label %177, label %138, !dbg !194, !llvm.loop !202

177:                                              ; preds = %138, %130
  %178 = phi float [ undef, %130 ], [ %172, %138 ]
  %179 = phi i64 [ %118, %130 ], [ %173, %138 ]
  %180 = phi i64 [ 0, %130 ], [ %174, %138 ]
  %181 = phi float [ 0.000000e+00, %130 ], [ %172, %138 ]
  %182 = icmp eq i64 %133, 0, !dbg !194
  br i1 %182, label %198, label %183, !dbg !194

183:                                              ; preds = %177, %183
  %184 = phi i64 [ %194, %183 ], [ %179, %177 ]
  %185 = phi i64 [ %195, %183 ], [ %180, %177 ]
  %186 = phi float [ %193, %183 ], [ %181, %177 ]
  %187 = phi i64 [ %196, %183 ], [ 0, %177 ]
  tail call void @llvm.dbg.value(metadata i64 %185, metadata !74, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata i64 %184, metadata !98, metadata !DIExpression()), !dbg !190
  tail call void @llvm.dbg.value(metadata float %186, metadata !92, metadata !DIExpression()), !dbg !190
  %188 = getelementptr inbounds float, ptr %7, i64 %184, !dbg !195
  %189 = load float, ptr %188, align 4, !dbg !195, !tbaa !158
  %190 = getelementptr float, ptr %132, i64 %185, !dbg !197
  %191 = load float, ptr %190, align 4, !dbg !197, !tbaa !158
  %192 = fmul float %189, %191, !dbg !198
  %193 = fadd float %186, %192, !dbg !199
  tail call void @llvm.dbg.value(metadata float %193, metadata !92, metadata !DIExpression()), !dbg !190
  %194 = add i64 %184, %119, !dbg !200
  tail call void @llvm.dbg.value(metadata i64 %194, metadata !98, metadata !DIExpression()), !dbg !190
  %195 = add nuw nsw i64 %185, 1, !dbg !201
  tail call void @llvm.dbg.value(metadata i64 %195, metadata !74, metadata !DIExpression()), !dbg !121
  %196 = add i64 %187, 1, !dbg !194
  %197 = icmp eq i64 %196, %133, !dbg !194
  br i1 %197, label %198, label %183, !dbg !194, !llvm.loop !204

198:                                              ; preds = %177, %183, %123
  %199 = phi float [ 0.000000e+00, %123 ], [ %178, %177 ], [ %193, %183 ], !dbg !190
  %200 = sext i32 %127 to i64, !dbg !206
  %201 = getelementptr inbounds float, ptr %7, i64 %200, !dbg !206
  %202 = load float, ptr %201, align 4, !dbg !206, !tbaa !158
  br i1 %10, label %203, label %210, !dbg !208

203:                                              ; preds = %198
  %204 = trunc i64 %128 to i32, !dbg !209
  %205 = mul i32 %117, %204, !dbg !209
  %206 = sext i32 %205 to i64, !dbg !211
  %207 = getelementptr inbounds float, ptr %5, i64 %206, !dbg !211
  %208 = load float, ptr %207, align 4, !dbg !211, !tbaa !158
  %209 = fmul float %202, %208, !dbg !212
  br label %210, !dbg !213

210:                                              ; preds = %198, %203
  %211 = phi float [ %209, %203 ], [ %202, %198 ]
  %212 = fadd float %199, %211, !dbg !206
  store float %212, ptr %201, align 4, !dbg !206, !tbaa !158
  %213 = sub nsw i32 %127, %8, !dbg !214
  tail call void @llvm.dbg.value(metadata i64 %128, metadata !71, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata i32 %213, metadata !89, metadata !DIExpression()), !dbg !182
  %214 = add nsw i64 %126, -1, !dbg !184
  %215 = add i64 %124, 1, !dbg !184
  br i1 %129, label %123, label %371, !dbg !184, !llvm.loop !215

216:                                              ; preds = %101
  %217 = and i1 %35, %42, !dbg !218
  %218 = and i1 %38, %217, !dbg !218
  br i1 %218, label %222, label %219, !dbg !218

219:                                              ; preds = %216
  %220 = and i1 %41, %36, !dbg !219
  %221 = and i1 %44, %220, !dbg !219
  br i1 %221, label %222, label %311, !dbg !219

222:                                              ; preds = %219, %216
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 poison, i32 poison, i32 poison), metadata !99, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_minus, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !220
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !71, metadata !DIExpression()), !dbg !121
  %223 = icmp sgt i32 %4, 0, !dbg !221
  br i1 %223, label %224, label %371, !dbg !222

224:                                              ; preds = %222
  %225 = icmp sgt i32 %8, 0, !dbg !223
  %226 = sub nsw i32 1, %4, !dbg !223
  %227 = mul i32 %226, %8, !dbg !223
  %228 = select i1 %225, i32 0, i32 %227, !dbg !223
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 %228, i32 %4, i32 %8), metadata !99, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_minus, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !220
  %229 = add nsw i32 %4, -1, !dbg !224
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 %228, i32 %229, i32 %8), metadata !99, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !220
  %230 = mul i32 %229, %8, !dbg !225
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 %228, i32 %230), metadata !99, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !220
  %231 = add nsw i32 %228, %230, !dbg !226
  tail call void @llvm.dbg.value(metadata i32 %231, metadata !99, metadata !DIExpression()), !dbg !220
  %232 = sub i32 0, %230
  %233 = select i1 %225, i32 0, i32 %232
  %234 = add i32 %6, 1
  %235 = sext i32 %6 to i64, !dbg !222
  %236 = sext i32 %233 to i64, !dbg !222
  %237 = sext i32 %8 to i64, !dbg !222
  %238 = zext i32 %229 to i64, !dbg !222
  %239 = zext nneg i32 %4 to i64, !dbg !222
  %240 = add nsw i64 %238, -1
  br label %241, !dbg !222

241:                                              ; preds = %224, %305
  %242 = phi i64 [ 0, %224 ], [ %310, %305 ]
  %243 = phi i64 [ %239, %224 ], [ %246, %305 ]
  %244 = phi i64 [ %238, %224 ], [ %309, %305 ]
  %245 = phi i32 [ %231, %224 ], [ %308, %305 ]
  tail call void @llvm.dbg.value(metadata i64 %243, metadata !71, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata i32 %245, metadata !99, metadata !DIExpression()), !dbg !220
  %246 = add nsw i64 %243, -1, !dbg !227
  tail call void @llvm.dbg.value(metadata i64 %246, metadata !71, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata i32 0, metadata !106, metadata !DIExpression()), !dbg !228
  tail call void @llvm.dbg.value(metadata i64 %246, metadata !107, metadata !DIExpression()), !dbg !228
  tail call void @llvm.dbg.value(metadata i32 %233, metadata !108, metadata !DIExpression()), !dbg !228
  tail call void @llvm.dbg.value(metadata i32 0, metadata !74, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata float 0.000000e+00, metadata !102, metadata !DIExpression()), !dbg !228
  %247 = icmp ugt i64 %243, 1, !dbg !229
  br i1 %247, label %248, label %293, !dbg !232

248:                                              ; preds = %241
  %249 = getelementptr float, ptr %5, i64 %246, !dbg !232
  %250 = and i64 %244, 1, !dbg !232
  %251 = icmp eq i64 %242, %240, !dbg !232
  br i1 %251, label %279, label %252, !dbg !232

252:                                              ; preds = %248
  %253 = and i64 %244, -2, !dbg !232
  br label %254, !dbg !232

254:                                              ; preds = %254, %252
  %255 = phi i64 [ %236, %252 ], [ %275, %254 ]
  %256 = phi i64 [ 0, %252 ], [ %276, %254 ]
  %257 = phi float [ 0.000000e+00, %252 ], [ %274, %254 ]
  %258 = phi i64 [ 0, %252 ], [ %277, %254 ]
  tail call void @llvm.dbg.value(metadata i64 %256, metadata !74, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata i64 %255, metadata !108, metadata !DIExpression()), !dbg !228
  tail call void @llvm.dbg.value(metadata float %257, metadata !102, metadata !DIExpression()), !dbg !228
  %259 = getelementptr inbounds float, ptr %7, i64 %255, !dbg !233
  %260 = load float, ptr %259, align 4, !dbg !233, !tbaa !158
  %261 = mul nsw i64 %256, %235, !dbg !235
  %262 = getelementptr float, ptr %249, i64 %261, !dbg !236
  %263 = load float, ptr %262, align 4, !dbg !236, !tbaa !158
  %264 = fmul float %260, %263, !dbg !237
  %265 = fadd float %257, %264, !dbg !238
  tail call void @llvm.dbg.value(metadata float %265, metadata !102, metadata !DIExpression()), !dbg !228
  %266 = add i64 %255, %237, !dbg !239
  tail call void @llvm.dbg.value(metadata i64 %266, metadata !108, metadata !DIExpression()), !dbg !228
  %267 = or disjoint i64 %256, 1, !dbg !240
  tail call void @llvm.dbg.value(metadata i64 %267, metadata !74, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata i64 %267, metadata !74, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata i64 %266, metadata !108, metadata !DIExpression()), !dbg !228
  tail call void @llvm.dbg.value(metadata float %265, metadata !102, metadata !DIExpression()), !dbg !228
  %268 = getelementptr inbounds float, ptr %7, i64 %266, !dbg !233
  %269 = load float, ptr %268, align 4, !dbg !233, !tbaa !158
  %270 = mul nsw i64 %267, %235, !dbg !235
  %271 = getelementptr float, ptr %249, i64 %270, !dbg !236
  %272 = load float, ptr %271, align 4, !dbg !236, !tbaa !158
  %273 = fmul float %269, %272, !dbg !237
  %274 = fadd float %265, %273, !dbg !238
  tail call void @llvm.dbg.value(metadata float %274, metadata !102, metadata !DIExpression()), !dbg !228
  %275 = add i64 %266, %237, !dbg !239
  tail call void @llvm.dbg.value(metadata i64 %275, metadata !108, metadata !DIExpression()), !dbg !228
  %276 = add nuw nsw i64 %256, 2, !dbg !240
  tail call void @llvm.dbg.value(metadata i64 %276, metadata !74, metadata !DIExpression()), !dbg !121
  %277 = add i64 %258, 2, !dbg !232
  %278 = icmp eq i64 %277, %253, !dbg !232
  br i1 %278, label %279, label %254, !dbg !232, !llvm.loop !241

279:                                              ; preds = %254, %248
  %280 = phi float [ undef, %248 ], [ %274, %254 ]
  %281 = phi i64 [ %236, %248 ], [ %275, %254 ]
  %282 = phi i64 [ 0, %248 ], [ %276, %254 ]
  %283 = phi float [ 0.000000e+00, %248 ], [ %274, %254 ]
  %284 = icmp eq i64 %250, 0, !dbg !232
  br i1 %284, label %293, label %285, !dbg !232

285:                                              ; preds = %279
  tail call void @llvm.dbg.value(metadata i64 %282, metadata !74, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata i64 %281, metadata !108, metadata !DIExpression()), !dbg !228
  tail call void @llvm.dbg.value(metadata float %283, metadata !102, metadata !DIExpression()), !dbg !228
  %286 = getelementptr inbounds float, ptr %7, i64 %281, !dbg !233
  %287 = load float, ptr %286, align 4, !dbg !233, !tbaa !158
  %288 = mul nsw i64 %282, %235, !dbg !235
  %289 = getelementptr float, ptr %249, i64 %288, !dbg !236
  %290 = load float, ptr %289, align 4, !dbg !236, !tbaa !158
  %291 = fmul float %287, %290, !dbg !237
  %292 = fadd float %283, %291, !dbg !238
  tail call void @llvm.dbg.value(metadata float %292, metadata !102, metadata !DIExpression()), !dbg !228
  tail call void @llvm.dbg.value(metadata !DIArgList(i64 %281, i64 %237), metadata !108, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !228
  tail call void @llvm.dbg.value(metadata i64 %282, metadata !74, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !121
  br label %293, !dbg !243

293:                                              ; preds = %285, %279, %241
  %294 = phi float [ 0.000000e+00, %241 ], [ %280, %279 ], [ %292, %285 ], !dbg !228
  %295 = sext i32 %245 to i64, !dbg !243
  %296 = getelementptr inbounds float, ptr %7, i64 %295, !dbg !243
  %297 = load float, ptr %296, align 4, !dbg !243, !tbaa !158
  br i1 %10, label %298, label %305, !dbg !245

298:                                              ; preds = %293
  %299 = trunc i64 %246 to i32, !dbg !246
  %300 = mul i32 %234, %299, !dbg !246
  %301 = sext i32 %300 to i64, !dbg !248
  %302 = getelementptr inbounds float, ptr %5, i64 %301, !dbg !248
  %303 = load float, ptr %302, align 4, !dbg !248, !tbaa !158
  %304 = fmul float %297, %303, !dbg !249
  br label %305, !dbg !250

305:                                              ; preds = %293, %298
  %306 = phi float [ %304, %298 ], [ %297, %293 ]
  %307 = fadd float %294, %306, !dbg !243
  store float %307, ptr %296, align 4, !dbg !243, !tbaa !158
  %308 = sub nsw i32 %245, %8, !dbg !251
  tail call void @llvm.dbg.value(metadata i64 %246, metadata !71, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata i32 %308, metadata !99, metadata !DIExpression()), !dbg !220
  %309 = add nsw i64 %244, -1, !dbg !222
  %310 = add i64 %242, 1, !dbg !222
  br i1 %247, label %241, label %371, !dbg !222, !llvm.loop !252

311:                                              ; preds = %219
  %312 = and i1 %44, %217, !dbg !255
  %313 = and i1 %38, %220
  %314 = or i1 %312, %313, !dbg !255
  br i1 %314, label %315, label %370, !dbg !255

315:                                              ; preds = %311
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !109, metadata !DIExpression()), !dbg !256
  tail call void @llvm.dbg.value(metadata i32 0, metadata !71, metadata !DIExpression()), !dbg !121
  %316 = icmp sgt i32 %4, 0, !dbg !257
  br i1 %316, label %317, label %371, !dbg !258

317:                                              ; preds = %315
  %318 = icmp sgt i32 %8, 0, !dbg !259
  %319 = sub nsw i32 1, %4, !dbg !259
  %320 = mul i32 %319, %8, !dbg !259
  %321 = select i1 %318, i32 0, i32 %320, !dbg !259
  tail call void @llvm.dbg.value(metadata i32 %321, metadata !109, metadata !DIExpression()), !dbg !256
  %322 = add i32 %6, 1
  %323 = sext i32 %8 to i64, !dbg !258
  %324 = sext i32 %6 to i64, !dbg !258
  %325 = zext nneg i32 %4 to i64, !dbg !258
  %326 = sext i32 %321 to i64, !dbg !258
  %327 = zext nneg i32 %4 to i64, !dbg !257
  br label %328, !dbg !258

328:                                              ; preds = %317, %364
  %329 = phi i64 [ %326, %317 ], [ %367, %364 ]
  %330 = phi i64 [ 0, %317 ], [ %334, %364 ]
  %331 = phi i64 [ 1, %317 ], [ %368, %364 ]
  %332 = phi i32 [ %321, %317 ], [ %333, %364 ]
  %333 = add i32 %332, %8, !dbg !258
  tail call void @llvm.dbg.value(metadata i64 %330, metadata !71, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata i64 %329, metadata !109, metadata !DIExpression()), !dbg !256
  tail call void @llvm.dbg.value(metadata float 0.000000e+00, metadata !112, metadata !DIExpression()), !dbg !260
  %334 = add nuw nsw i64 %330, 1, !dbg !261
  tail call void @llvm.dbg.value(metadata i64 %334, metadata !116, metadata !DIExpression()), !dbg !260
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !117, metadata !DIExpression()), !dbg !260
  tail call void @llvm.dbg.value(metadata !DIArgList(i64 poison, i32 poison, i32 poison), metadata !118, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !260
  tail call void @llvm.dbg.value(metadata i64 %334, metadata !74, metadata !DIExpression()), !dbg !121
  %335 = icmp ult i64 %334, %325, !dbg !262
  br i1 %335, label %336, label %353, !dbg !265

336:                                              ; preds = %328
  %337 = sext i32 %333 to i64, !dbg !261
  %338 = getelementptr float, ptr %5, i64 %330, !dbg !265
  br label %339, !dbg !265

339:                                              ; preds = %336, %339
  %340 = phi i64 [ %331, %336 ], [ %351, %339 ]
  %341 = phi i64 [ %337, %336 ], [ %350, %339 ]
  %342 = phi float [ 0.000000e+00, %336 ], [ %349, %339 ]
  tail call void @llvm.dbg.value(metadata i64 %341, metadata !118, metadata !DIExpression()), !dbg !260
  tail call void @llvm.dbg.value(metadata i64 %340, metadata !74, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata float %342, metadata !112, metadata !DIExpression()), !dbg !260
  %343 = getelementptr inbounds float, ptr %7, i64 %341, !dbg !266
  %344 = load float, ptr %343, align 4, !dbg !266, !tbaa !158
  %345 = mul nsw i64 %340, %324, !dbg !268
  %346 = getelementptr float, ptr %338, i64 %345, !dbg !269
  %347 = load float, ptr %346, align 4, !dbg !269, !tbaa !158
  %348 = fmul float %344, %347, !dbg !270
  %349 = fadd float %342, %348, !dbg !271
  tail call void @llvm.dbg.value(metadata float %349, metadata !112, metadata !DIExpression()), !dbg !260
  %350 = add i64 %341, %323, !dbg !272
  tail call void @llvm.dbg.value(metadata i64 %350, metadata !118, metadata !DIExpression()), !dbg !260
  %351 = add nuw nsw i64 %340, 1, !dbg !273
  tail call void @llvm.dbg.value(metadata i64 %351, metadata !74, metadata !DIExpression()), !dbg !121
  %352 = icmp eq i64 %351, %327, !dbg !262
  br i1 %352, label %353, label %339, !dbg !265, !llvm.loop !274

353:                                              ; preds = %339, %328
  %354 = phi float [ 0.000000e+00, %328 ], [ %349, %339 ], !dbg !260
  %355 = getelementptr inbounds float, ptr %7, i64 %329, !dbg !276
  %356 = load float, ptr %355, align 4, !dbg !276, !tbaa !158
  br i1 %10, label %357, label %364, !dbg !278

357:                                              ; preds = %353
  %358 = trunc i64 %330 to i32, !dbg !279
  %359 = mul i32 %322, %358, !dbg !279
  %360 = sext i32 %359 to i64, !dbg !281
  %361 = getelementptr inbounds float, ptr %5, i64 %360, !dbg !281
  %362 = load float, ptr %361, align 4, !dbg !281, !tbaa !158
  %363 = fmul float %356, %362, !dbg !282
  br label %364, !dbg !283

364:                                              ; preds = %353, %357
  %365 = phi float [ %363, %357 ], [ %356, %353 ]
  %366 = fadd float %354, %365, !dbg !276
  store float %366, ptr %355, align 4, !dbg !276, !tbaa !158
  %367 = add i64 %329, %323, !dbg !284
  tail call void @llvm.dbg.value(metadata i64 %334, metadata !71, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata i64 %367, metadata !109, metadata !DIExpression()), !dbg !256
  %368 = add nuw nsw i64 %331, 1, !dbg !258
  %369 = icmp eq i64 %334, %327, !dbg !257
  br i1 %369, label %371, label %328, !dbg !258, !llvm.loop !285

370:                                              ; preds = %311
  tail call void (i32, ptr, ptr, ...) @cblas_xerbla(i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #3, !dbg !287
  br label %371

371:                                              ; preds = %364, %305, %210, %95, %315, %222, %105, %46, %370
  ret void, !dbg !289
}

declare !dbg !291 void @cblas_xerbla(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!17}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46}
!llvm.ident = !{!47}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 26, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "./source_trmv_r.h", directory: "/PI-detector/external/gsl/gsl-2.5/cblas", checksumkind: CSK_MD5, checksum: "a2b4a34e1c21241f17286a21398f4289")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 18)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 26, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 1)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 108, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 23)
!17 = distinct !DICompileUnit(language: DW_LANG_C11, file: !18, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !19, globals: !39, splitDebugInlining: false, nameTableKind: None)
!18 = !DIFile(filename: "strmv.c", directory: "/PI-detector/external/gsl/gsl-2.5/cblas", checksumkind: CSK_MD5, checksum: "2ea460a7371a8f1c04ef41dceac1804a")
!19 = !{!20, !26, !30, !35}
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
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "CBLAS_DIAG", file: !21, line: 49, baseType: !22, size: 32, elements: !36)
!36 = !{!37, !38}
!37 = !DIEnumerator(name: "CblasNonUnit", value: 131)
!38 = !DIEnumerator(name: "CblasUnit", value: 132)
!39 = !{!0, !7, !12}
!40 = !{i32 7, !"Dwarf Version", i32 5}
!41 = !{i32 2, !"Debug Info Version", i32 3}
!42 = !{i32 1, !"wchar_size", i32 4}
!43 = !{i32 8, !"PIC Level", i32 2}
!44 = !{i32 7, !"PIE Level", i32 2}
!45 = !{i32 7, !"uwtable", i32 2}
!46 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!47 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!48 = distinct !DISubprogram(name: "cblas_strmv", scope: !18, file: !18, line: 7, type: !49, scopeLine: 11, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !61)
!49 = !DISubroutineType(types: !50)
!50 = !{null, !51, !52, !53, !54, !55, !57, !55, !60, !55}
!51 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!52 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !26)
!53 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!54 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!55 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !56)
!56 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !59)
!59 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!61 = !{!62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !74, !75, !76, !77, !79, !82, !86, !87, !88, !89, !92, !96, !97, !98, !99, !102, !106, !107, !108, !109, !112, !116, !117, !118}
!62 = !DILocalVariable(name: "order", arg: 1, scope: !48, file: !18, line: 7, type: !51)
!63 = !DILocalVariable(name: "Uplo", arg: 2, scope: !48, file: !18, line: 7, type: !52)
!64 = !DILocalVariable(name: "TransA", arg: 3, scope: !48, file: !18, line: 8, type: !53)
!65 = !DILocalVariable(name: "Diag", arg: 4, scope: !48, file: !18, line: 8, type: !54)
!66 = !DILocalVariable(name: "N", arg: 5, scope: !48, file: !18, line: 9, type: !55)
!67 = !DILocalVariable(name: "A", arg: 6, scope: !48, file: !18, line: 9, type: !57)
!68 = !DILocalVariable(name: "lda", arg: 7, scope: !48, file: !18, line: 9, type: !55)
!69 = !DILocalVariable(name: "X", arg: 8, scope: !48, file: !18, line: 9, type: !60)
!70 = !DILocalVariable(name: "incX", arg: 9, scope: !48, file: !18, line: 10, type: !55)
!71 = !DILocalVariable(name: "i", scope: !72, file: !2, line: 21, type: !56)
!72 = distinct !DILexicalBlock(scope: !73, file: !2, line: 20, column: 1)
!73 = !DILexicalBlockFile(scope: !48, file: !2, discriminator: 0)
!74 = !DILocalVariable(name: "j", scope: !72, file: !2, line: 21, type: !56)
!75 = !DILocalVariable(name: "nonunit", scope: !72, file: !2, line: 23, type: !55)
!76 = !DILocalVariable(name: "Trans", scope: !72, file: !2, line: 24, type: !55)
!77 = !DILocalVariable(name: "pos", scope: !78, file: !2, line: 26, type: !56)
!78 = distinct !DILexicalBlock(scope: !72, file: !2, line: 26, column: 3)
!79 = !DILocalVariable(name: "ix", scope: !80, file: !2, line: 32, type: !56)
!80 = distinct !DILexicalBlock(scope: !81, file: !2, line: 29, column: 81)
!81 = distinct !DILexicalBlock(scope: !72, file: !2, line: 28, column: 7)
!82 = !DILocalVariable(name: "temp", scope: !83, file: !2, line: 34, type: !59)
!83 = distinct !DILexicalBlock(scope: !84, file: !2, line: 33, column: 29)
!84 = distinct !DILexicalBlock(scope: !85, file: !2, line: 33, column: 5)
!85 = distinct !DILexicalBlock(scope: !80, file: !2, line: 33, column: 5)
!86 = !DILocalVariable(name: "j_min", scope: !83, file: !2, line: 35, type: !55)
!87 = !DILocalVariable(name: "j_max", scope: !83, file: !2, line: 36, type: !55)
!88 = !DILocalVariable(name: "jx", scope: !83, file: !2, line: 37, type: !56)
!89 = !DILocalVariable(name: "ix", scope: !90, file: !2, line: 51, type: !56)
!90 = distinct !DILexicalBlock(scope: !91, file: !2, line: 50, column: 88)
!91 = distinct !DILexicalBlock(scope: !81, file: !2, line: 49, column: 14)
!92 = !DILocalVariable(name: "temp", scope: !93, file: !2, line: 53, type: !59)
!93 = distinct !DILexicalBlock(scope: !94, file: !2, line: 52, column: 32)
!94 = distinct !DILexicalBlock(scope: !95, file: !2, line: 52, column: 5)
!95 = distinct !DILexicalBlock(scope: !90, file: !2, line: 52, column: 5)
!96 = !DILocalVariable(name: "j_min", scope: !93, file: !2, line: 54, type: !55)
!97 = !DILocalVariable(name: "j_max", scope: !93, file: !2, line: 55, type: !55)
!98 = !DILocalVariable(name: "jx", scope: !93, file: !2, line: 56, type: !56)
!99 = !DILocalVariable(name: "ix", scope: !100, file: !2, line: 71, type: !56)
!100 = distinct !DILexicalBlock(scope: !101, file: !2, line: 69, column: 90)
!101 = distinct !DILexicalBlock(scope: !91, file: !2, line: 68, column: 14)
!102 = !DILocalVariable(name: "temp", scope: !103, file: !2, line: 73, type: !59)
!103 = distinct !DILexicalBlock(scope: !104, file: !2, line: 72, column: 32)
!104 = distinct !DILexicalBlock(scope: !105, file: !2, line: 72, column: 5)
!105 = distinct !DILexicalBlock(scope: !100, file: !2, line: 72, column: 5)
!106 = !DILocalVariable(name: "j_min", scope: !103, file: !2, line: 74, type: !55)
!107 = !DILocalVariable(name: "j_max", scope: !103, file: !2, line: 75, type: !55)
!108 = !DILocalVariable(name: "jx", scope: !103, file: !2, line: 76, type: !56)
!109 = !DILocalVariable(name: "ix", scope: !110, file: !2, line: 90, type: !56)
!110 = distinct !DILexicalBlock(scope: !111, file: !2, line: 89, column: 90)
!111 = distinct !DILexicalBlock(scope: !101, file: !2, line: 88, column: 14)
!112 = !DILocalVariable(name: "temp", scope: !113, file: !2, line: 92, type: !59)
!113 = distinct !DILexicalBlock(scope: !114, file: !2, line: 91, column: 29)
!114 = distinct !DILexicalBlock(scope: !115, file: !2, line: 91, column: 5)
!115 = distinct !DILexicalBlock(scope: !110, file: !2, line: 91, column: 5)
!116 = !DILocalVariable(name: "j_min", scope: !113, file: !2, line: 93, type: !55)
!117 = !DILocalVariable(name: "j_max", scope: !113, file: !2, line: 94, type: !55)
!118 = !DILocalVariable(name: "jx", scope: !113, file: !2, line: 95, type: !56)
!119 = !DILocation(line: 0, scope: !48)
!120 = !DILocation(line: 23, column: 29, scope: !72)
!121 = !DILocation(line: 0, scope: !72)
!122 = !DILocation(line: 24, column: 29, scope: !72)
!123 = !DILocation(line: 24, column: 21, scope: !72)
!124 = !DILocation(line: 0, scope: !78)
!125 = !DILocation(line: 26, column: 3, scope: !126)
!126 = distinct !DILexicalBlock(scope: !78, file: !2, line: 26, column: 3)
!127 = !DILocation(line: 26, column: 3, scope: !128)
!128 = distinct !DILexicalBlock(scope: !78, file: !2, line: 26, column: 3)
!129 = !DILocation(line: 26, column: 3, scope: !130)
!130 = distinct !DILexicalBlock(scope: !78, file: !2, line: 26, column: 3)
!131 = !DILocation(line: 26, column: 3, scope: !132)
!132 = distinct !DILexicalBlock(scope: !78, file: !2, line: 26, column: 3)
!133 = !DILocation(line: 26, column: 3, scope: !134)
!134 = distinct !DILexicalBlock(scope: !78, file: !2, line: 26, column: 3)
!135 = !DILocation(line: 26, column: 3, scope: !78)
!136 = !DILocation(line: 26, column: 3, scope: !137)
!137 = distinct !DILexicalBlock(scope: !78, file: !2, line: 26, column: 3)
!138 = !DILocation(line: 26, column: 3, scope: !139)
!139 = distinct !DILexicalBlock(scope: !78, file: !2, line: 26, column: 3)
!140 = !DILocation(line: 26, column: 3, scope: !141)
!141 = distinct !DILexicalBlock(scope: !78, file: !2, line: 26, column: 3)
!142 = !DILocation(line: 28, column: 14, scope: !81)
!143 = !DILocation(line: 28, column: 31, scope: !81)
!144 = !DILocation(line: 29, column: 17, scope: !81)
!145 = !DILocation(line: 29, column: 34, scope: !81)
!146 = !DILocation(line: 0, scope: !80)
!147 = !DILocation(line: 33, column: 19, scope: !84)
!148 = !DILocation(line: 33, column: 5, scope: !85)
!149 = !DILocation(line: 32, column: 16, scope: !80)
!150 = !DILocation(line: 0, scope: !83)
!151 = !DILocation(line: 35, column: 29, scope: !83)
!152 = !DILocation(line: 38, column: 25, scope: !153)
!153 = distinct !DILexicalBlock(scope: !154, file: !2, line: 38, column: 7)
!154 = distinct !DILexicalBlock(scope: !83, file: !2, line: 38, column: 7)
!155 = !DILocation(line: 38, column: 7, scope: !154)
!156 = !DILocation(line: 39, column: 17, scope: !157)
!157 = distinct !DILexicalBlock(scope: !153, file: !2, line: 38, column: 39)
!158 = !{!159, !159, i64 0}
!159 = !{!"float", !160, i64 0}
!160 = !{!"omnipotent char", !161, i64 0}
!161 = !{!"Simple C/C++ TBAA"}
!162 = !DILocation(line: 39, column: 25, scope: !157)
!163 = !DILocation(line: 39, column: 23, scope: !157)
!164 = !DILocation(line: 39, column: 14, scope: !157)
!165 = !DILocation(line: 40, column: 12, scope: !157)
!166 = !DILocation(line: 38, column: 35, scope: !153)
!167 = distinct !{!167, !155, !168, !169}
!168 = !DILocation(line: 41, column: 7, scope: !154)
!169 = !{!"llvm.loop.mustprogress"}
!170 = !DILocation(line: 0, scope: !171)
!171 = distinct !DILexicalBlock(scope: !83, file: !2, line: 42, column: 11)
!172 = !DILocation(line: 42, column: 11, scope: !83)
!173 = !DILocation(line: 43, column: 42, scope: !174)
!174 = distinct !DILexicalBlock(scope: !171, file: !2, line: 42, column: 20)
!175 = !DILocation(line: 43, column: 32, scope: !174)
!176 = !DILocation(line: 43, column: 30, scope: !174)
!177 = !DILocation(line: 44, column: 7, scope: !174)
!178 = !DILocation(line: 47, column: 10, scope: !83)
!179 = distinct !{!179, !148, !180, !169}
!180 = !DILocation(line: 48, column: 5, scope: !85)
!181 = !DILocation(line: 49, column: 38, scope: !91)
!182 = !DILocation(line: 0, scope: !90)
!183 = !DILocation(line: 52, column: 19, scope: !94)
!184 = !DILocation(line: 52, column: 23, scope: !94)
!185 = !DILocation(line: 51, column: 16, scope: !90)
!186 = !DILocation(line: 51, column: 37, scope: !90)
!187 = !DILocation(line: 51, column: 42, scope: !90)
!188 = !DILocation(line: 51, column: 32, scope: !90)
!189 = !DILocation(line: 52, column: 27, scope: !94)
!190 = !DILocation(line: 0, scope: !93)
!191 = !DILocation(line: 57, column: 25, scope: !192)
!192 = distinct !DILexicalBlock(scope: !193, file: !2, line: 57, column: 7)
!193 = distinct !DILexicalBlock(scope: !93, file: !2, line: 57, column: 7)
!194 = !DILocation(line: 57, column: 7, scope: !193)
!195 = !DILocation(line: 58, column: 17, scope: !196)
!196 = distinct !DILexicalBlock(scope: !192, file: !2, line: 57, column: 39)
!197 = !DILocation(line: 58, column: 25, scope: !196)
!198 = !DILocation(line: 58, column: 23, scope: !196)
!199 = !DILocation(line: 58, column: 14, scope: !196)
!200 = !DILocation(line: 59, column: 12, scope: !196)
!201 = !DILocation(line: 57, column: 35, scope: !192)
!202 = distinct !{!202, !194, !203, !169}
!203 = !DILocation(line: 60, column: 7, scope: !193)
!204 = distinct !{!204, !205}
!205 = !{!"llvm.loop.unroll.disable"}
!206 = !DILocation(line: 0, scope: !207)
!207 = distinct !DILexicalBlock(scope: !93, file: !2, line: 61, column: 11)
!208 = !DILocation(line: 61, column: 11, scope: !93)
!209 = !DILocation(line: 62, column: 42, scope: !210)
!210 = distinct !DILexicalBlock(scope: !207, file: !2, line: 61, column: 20)
!211 = !DILocation(line: 62, column: 32, scope: !210)
!212 = !DILocation(line: 62, column: 30, scope: !210)
!213 = !DILocation(line: 63, column: 7, scope: !210)
!214 = !DILocation(line: 66, column: 10, scope: !93)
!215 = distinct !{!215, !216, !217, !169}
!216 = !DILocation(line: 52, column: 5, scope: !95)
!217 = !DILocation(line: 67, column: 5, scope: !95)
!218 = !DILocation(line: 68, column: 38, scope: !101)
!219 = !DILocation(line: 69, column: 41, scope: !101)
!220 = !DILocation(line: 0, scope: !100)
!221 = !DILocation(line: 72, column: 19, scope: !104)
!222 = !DILocation(line: 72, column: 23, scope: !104)
!223 = !DILocation(line: 71, column: 16, scope: !100)
!224 = !DILocation(line: 71, column: 37, scope: !100)
!225 = !DILocation(line: 71, column: 42, scope: !100)
!226 = !DILocation(line: 71, column: 32, scope: !100)
!227 = !DILocation(line: 72, column: 27, scope: !104)
!228 = !DILocation(line: 0, scope: !103)
!229 = !DILocation(line: 77, column: 25, scope: !230)
!230 = distinct !DILexicalBlock(scope: !231, file: !2, line: 77, column: 7)
!231 = distinct !DILexicalBlock(scope: !103, file: !2, line: 77, column: 7)
!232 = !DILocation(line: 77, column: 7, scope: !231)
!233 = !DILocation(line: 78, column: 17, scope: !234)
!234 = distinct !DILexicalBlock(scope: !230, file: !2, line: 77, column: 39)
!235 = !DILocation(line: 78, column: 31, scope: !234)
!236 = !DILocation(line: 78, column: 25, scope: !234)
!237 = !DILocation(line: 78, column: 23, scope: !234)
!238 = !DILocation(line: 78, column: 14, scope: !234)
!239 = !DILocation(line: 79, column: 12, scope: !234)
!240 = !DILocation(line: 77, column: 35, scope: !230)
!241 = distinct !{!241, !232, !242, !169}
!242 = !DILocation(line: 80, column: 7, scope: !231)
!243 = !DILocation(line: 0, scope: !244)
!244 = distinct !DILexicalBlock(scope: !103, file: !2, line: 81, column: 11)
!245 = !DILocation(line: 81, column: 11, scope: !103)
!246 = !DILocation(line: 82, column: 42, scope: !247)
!247 = distinct !DILexicalBlock(scope: !244, file: !2, line: 81, column: 20)
!248 = !DILocation(line: 82, column: 32, scope: !247)
!249 = !DILocation(line: 82, column: 30, scope: !247)
!250 = !DILocation(line: 83, column: 7, scope: !247)
!251 = !DILocation(line: 86, column: 10, scope: !103)
!252 = distinct !{!252, !253, !254, !169}
!253 = !DILocation(line: 72, column: 5, scope: !105)
!254 = !DILocation(line: 87, column: 5, scope: !105)
!255 = !DILocation(line: 88, column: 38, scope: !111)
!256 = !DILocation(line: 0, scope: !110)
!257 = !DILocation(line: 91, column: 19, scope: !114)
!258 = !DILocation(line: 91, column: 5, scope: !115)
!259 = !DILocation(line: 90, column: 16, scope: !110)
!260 = !DILocation(line: 0, scope: !113)
!261 = !DILocation(line: 93, column: 29, scope: !113)
!262 = !DILocation(line: 96, column: 25, scope: !263)
!263 = distinct !DILexicalBlock(scope: !264, file: !2, line: 96, column: 7)
!264 = distinct !DILexicalBlock(scope: !113, file: !2, line: 96, column: 7)
!265 = !DILocation(line: 96, column: 7, scope: !264)
!266 = !DILocation(line: 97, column: 17, scope: !267)
!267 = distinct !DILexicalBlock(scope: !263, file: !2, line: 96, column: 39)
!268 = !DILocation(line: 97, column: 31, scope: !267)
!269 = !DILocation(line: 97, column: 25, scope: !267)
!270 = !DILocation(line: 97, column: 23, scope: !267)
!271 = !DILocation(line: 97, column: 14, scope: !267)
!272 = !DILocation(line: 98, column: 12, scope: !267)
!273 = !DILocation(line: 96, column: 35, scope: !263)
!274 = distinct !{!274, !265, !275, !169}
!275 = !DILocation(line: 99, column: 7, scope: !264)
!276 = !DILocation(line: 0, scope: !277)
!277 = distinct !DILexicalBlock(scope: !113, file: !2, line: 100, column: 11)
!278 = !DILocation(line: 100, column: 11, scope: !113)
!279 = !DILocation(line: 101, column: 42, scope: !280)
!280 = distinct !DILexicalBlock(scope: !277, file: !2, line: 100, column: 20)
!281 = !DILocation(line: 101, column: 32, scope: !280)
!282 = !DILocation(line: 101, column: 30, scope: !280)
!283 = !DILocation(line: 102, column: 7, scope: !280)
!284 = !DILocation(line: 105, column: 10, scope: !113)
!285 = distinct !{!285, !258, !286, !169}
!286 = !DILocation(line: 106, column: 5, scope: !115)
!287 = !DILocation(line: 108, column: 5, scope: !288)
!288 = distinct !DILexicalBlock(scope: !111, file: !2, line: 107, column: 10)
!289 = !DILocation(line: 15, column: 1, scope: !290)
!290 = !DILexicalBlockFile(scope: !48, file: !18, discriminator: 0)
!291 = !DISubprogram(name: "cblas_xerbla", scope: !21, file: !21, line: 602, type: !292, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!292 = !DISubroutineType(types: !293)
!293 = !{null, !56, !294, !294, null}
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
