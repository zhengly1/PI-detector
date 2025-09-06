; ModuleID = 'stpmv.c'
source_filename = "stpmv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"./source_tpmv_r.h\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !7
@.str.2 = private unnamed_addr constant [23 x i8] c"unrecognized operation\00", align 1, !dbg !12

; Function Attrs: nounwind uwtable
define dso_local void @cblas_stpmv(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef readonly %5, ptr nocapture noundef %6, i32 noundef %7) local_unnamed_addr #0 !dbg !48 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !62, metadata !DIExpression()), !dbg !114
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !63, metadata !DIExpression()), !dbg !114
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !64, metadata !DIExpression()), !dbg !114
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !65, metadata !DIExpression()), !dbg !114
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !66, metadata !DIExpression()), !dbg !114
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !67, metadata !DIExpression()), !dbg !114
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !68, metadata !DIExpression()), !dbg !114
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !69, metadata !DIExpression()), !dbg !114
  %9 = icmp eq i32 %3, 131, !dbg !115
  tail call void @llvm.dbg.value(metadata i1 %9, metadata !74, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !116
  %10 = icmp eq i32 %2, 113, !dbg !117
  %11 = select i1 %10, i32 112, i32 %2, !dbg !118
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !75, metadata !DIExpression()), !dbg !116
  tail call void @llvm.dbg.value(metadata i32 0, metadata !76, metadata !DIExpression()), !dbg !119
  %12 = add i32 %0, -103, !dbg !120
  %13 = icmp ult i32 %12, -2, !dbg !120
  %14 = zext i1 %13 to i32, !dbg !120
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !76, metadata !DIExpression()), !dbg !119
  %15 = add i32 %1, -123, !dbg !122
  %16 = icmp ult i32 %15, -2, !dbg !122
  %17 = select i1 %16, i32 2, i32 %14, !dbg !122
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !76, metadata !DIExpression()), !dbg !119
  %18 = add i32 %2, -114, !dbg !124
  %19 = icmp ult i32 %18, -3, !dbg !124
  %20 = select i1 %19, i32 3, i32 %17, !dbg !124
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !76, metadata !DIExpression()), !dbg !119
  %21 = add i32 %3, -133, !dbg !126
  %22 = icmp ult i32 %21, -2, !dbg !126
  %23 = select i1 %22, i32 4, i32 %20, !dbg !126
  tail call void @llvm.dbg.value(metadata i32 %23, metadata !76, metadata !DIExpression()), !dbg !119
  %24 = icmp slt i32 %4, 0, !dbg !128
  %25 = select i1 %24, i32 5, i32 %23, !dbg !130
  tail call void @llvm.dbg.value(metadata i32 %25, metadata !76, metadata !DIExpression()), !dbg !119
  %26 = icmp eq i32 %7, 0, !dbg !131
  %27 = select i1 %26, i32 8, i32 %25, !dbg !130
  tail call void @llvm.dbg.value(metadata i32 %27, metadata !76, metadata !DIExpression()), !dbg !119
  %28 = icmp eq i32 %27, 0, !dbg !133
  br i1 %28, label %30, label %29, !dbg !130

29:                                               ; preds = %8
  tail call void (i32, ptr, ptr, ...) @cblas_xerbla(i32 noundef %27, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #3, !dbg !133
  br label %30, !dbg !133

30:                                               ; preds = %29, %8
  %31 = icmp eq i32 %4, 0, !dbg !135
  br i1 %31, label %398, label %32, !dbg !137

32:                                               ; preds = %30
  %33 = icmp eq i32 %0, 101, !dbg !138
  %34 = icmp eq i32 %11, 111
  %35 = and i1 %33, %34, !dbg !139
  %36 = icmp eq i32 %1, 121
  %37 = and i1 %36, %35, !dbg !139
  br i1 %37, label %44, label %38, !dbg !139

38:                                               ; preds = %32
  %39 = icmp eq i32 %0, 102, !dbg !140
  %40 = icmp eq i32 %11, 112
  %41 = and i1 %39, %40, !dbg !141
  %42 = icmp eq i32 %1, 122
  %43 = and i1 %42, %41, !dbg !141
  br i1 %43, label %44, label %106, !dbg !141

44:                                               ; preds = %38, %32
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !78, metadata !DIExpression()), !dbg !142
  tail call void @llvm.dbg.value(metadata i32 0, metadata !70, metadata !DIExpression()), !dbg !116
  %45 = icmp sgt i32 %4, 0, !dbg !143
  br i1 %45, label %46, label %398, !dbg !144

46:                                               ; preds = %44
  %47 = icmp sgt i32 %7, 0, !dbg !145
  %48 = sub nsw i32 1, %4, !dbg !145
  %49 = mul i32 %48, %7, !dbg !145
  %50 = select i1 %47, i32 0, i32 %49, !dbg !145
  tail call void @llvm.dbg.value(metadata i32 %50, metadata !78, metadata !DIExpression()), !dbg !142
  %51 = shl nuw nsw i32 %4, 1
  %52 = or disjoint i32 %51, 1
  %53 = sext i32 %7 to i64, !dbg !144
  %54 = sext i32 %50 to i64, !dbg !144
  %55 = zext nneg i32 %4 to i64
  br label %56, !dbg !144

56:                                               ; preds = %46, %99
  %57 = phi i64 [ %54, %46 ], [ %102, %99 ]
  %58 = phi i64 [ 1, %46 ], [ %104, %99 ]
  %59 = phi i32 [ %50, %46 ], [ %62, %99 ]
  %60 = phi i32 [ 0, %46 ], [ %103, %99 ]
  %61 = phi i32 [ 0, %46 ], [ %79, %99 ]
  %62 = add i32 %59, %7, !dbg !144
  tail call void @llvm.dbg.value(metadata i64 %57, metadata !78, metadata !DIExpression()), !dbg !142
  tail call void @llvm.dbg.value(metadata i32 %61, metadata !70, metadata !DIExpression()), !dbg !116
  %63 = sext i32 %62 to i64, !dbg !146
  %64 = add i32 %52, %60, !dbg !146
  %65 = mul nsw i32 %64, %61, !dbg !146
  %66 = sdiv i32 %65, 2, !dbg !146
  tail call void @llvm.dbg.value(metadata float poison, metadata !81, metadata !DIExpression()), !dbg !147
  br i1 %9, label %67, label %74, !dbg !148

67:                                               ; preds = %56
  %68 = sext i32 %66 to i64, !dbg !149
  %69 = getelementptr inbounds float, ptr %5, i64 %68, !dbg !149
  %70 = load float, ptr %69, align 4, !dbg !149, !tbaa !150
  tail call void @llvm.dbg.value(metadata float %70, metadata !81, metadata !DIExpression()), !dbg !147
  %71 = getelementptr inbounds float, ptr %6, i64 %57, !dbg !154
  %72 = load float, ptr %71, align 4, !dbg !154, !tbaa !150
  %73 = fmul float %70, %72, !dbg !155
  br label %77, !dbg !148

74:                                               ; preds = %56
  %75 = getelementptr inbounds float, ptr %6, i64 %57, !dbg !156
  %76 = load float, ptr %75, align 4, !dbg !156, !tbaa !150
  br label %77, !dbg !148

77:                                               ; preds = %74, %67
  %78 = phi float [ %73, %67 ], [ %76, %74 ], !dbg !148
  tail call void @llvm.dbg.value(metadata float %78, metadata !85, metadata !DIExpression()), !dbg !147
  %79 = add nuw nsw i32 %61, 1, !dbg !157
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 poison, i32 poison, i32 poison), metadata !86, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !147
  tail call void @llvm.dbg.value(metadata i32 %79, metadata !73, metadata !DIExpression()), !dbg !116
  tail call void @llvm.dbg.value(metadata float %78, metadata !85, metadata !DIExpression()), !dbg !147
  %80 = icmp slt i32 %79, %4, !dbg !158
  br i1 %80, label %81, label %99, !dbg !161

81:                                               ; preds = %77
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 poison, i32 poison, i32 poison), metadata !86, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !147
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 poison, i32 poison, i32 poison), metadata !86, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !147
  %82 = add i32 %66, %60
  br label %83, !dbg !161

83:                                               ; preds = %81, %83
  %84 = phi i64 [ %58, %81 ], [ %97, %83 ]
  %85 = phi i64 [ %63, %81 ], [ %96, %83 ]
  %86 = phi float [ %78, %81 ], [ %95, %83 ]
  tail call void @llvm.dbg.value(metadata i64 %85, metadata !86, metadata !DIExpression()), !dbg !147
  tail call void @llvm.dbg.value(metadata float %86, metadata !85, metadata !DIExpression()), !dbg !147
  tail call void @llvm.dbg.value(metadata i64 %84, metadata !73, metadata !DIExpression()), !dbg !116
  %87 = trunc i64 %84 to i32, !dbg !162
  %88 = add i32 %82, %87, !dbg !162
  %89 = sext i32 %88 to i64, !dbg !164
  %90 = getelementptr inbounds float, ptr %5, i64 %89, !dbg !164
  %91 = load float, ptr %90, align 4, !dbg !164, !tbaa !150
  tail call void @llvm.dbg.value(metadata float %91, metadata !81, metadata !DIExpression()), !dbg !147
  %92 = getelementptr inbounds float, ptr %6, i64 %85, !dbg !165
  %93 = load float, ptr %92, align 4, !dbg !165, !tbaa !150
  %94 = fmul float %91, %93, !dbg !166
  %95 = fadd float %86, %94, !dbg !167
  tail call void @llvm.dbg.value(metadata float %95, metadata !85, metadata !DIExpression()), !dbg !147
  %96 = add i64 %85, %53, !dbg !168
  tail call void @llvm.dbg.value(metadata i64 %96, metadata !86, metadata !DIExpression()), !dbg !147
  %97 = add nuw nsw i64 %84, 1, !dbg !169
  tail call void @llvm.dbg.value(metadata i64 %97, metadata !73, metadata !DIExpression()), !dbg !116
  %98 = icmp eq i64 %97, %55, !dbg !158
  br i1 %98, label %99, label %83, !dbg !161, !llvm.loop !170

99:                                               ; preds = %83, %77
  %100 = phi float [ %78, %77 ], [ %95, %83 ], !dbg !147
  %101 = getelementptr inbounds float, ptr %6, i64 %57, !dbg !173
  store float %100, ptr %101, align 4, !dbg !174, !tbaa !150
  %102 = add i64 %57, %53, !dbg !175
  tail call void @llvm.dbg.value(metadata i64 %102, metadata !78, metadata !DIExpression()), !dbg !142
  tail call void @llvm.dbg.value(metadata i32 %79, metadata !70, metadata !DIExpression()), !dbg !116
  %103 = xor i32 %61, -1
  %104 = add nuw nsw i64 %58, 1, !dbg !144
  %105 = icmp eq i32 %79, %4, !dbg !143
  br i1 %105, label %398, label %56, !dbg !144, !llvm.loop !176

106:                                              ; preds = %38
  %107 = and i1 %42, %35, !dbg !178
  %108 = and i1 %36, %41
  %109 = or i1 %107, %108, !dbg !178
  br i1 %109, label %110, label %227, !dbg !178

110:                                              ; preds = %106
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 poison, i32 poison, i32 poison), metadata !87, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_minus, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !179
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !70, metadata !DIExpression()), !dbg !116
  %111 = icmp sgt i32 %4, 0, !dbg !180
  br i1 %111, label %112, label %398, !dbg !181

112:                                              ; preds = %110
  %113 = icmp sgt i32 %7, 0, !dbg !182
  %114 = sub nsw i32 1, %4, !dbg !182
  %115 = mul i32 %114, %7, !dbg !182
  %116 = select i1 %113, i32 0, i32 %115, !dbg !182
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 %116, i32 %4, i32 %7), metadata !87, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_minus, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !179
  %117 = add nsw i32 %4, -1, !dbg !183
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 %116, i32 %117, i32 %7), metadata !87, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !179
  %118 = mul i32 %117, %7, !dbg !184
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 %116, i32 %118), metadata !87, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !179
  %119 = add nsw i32 %116, %118, !dbg !185
  tail call void @llvm.dbg.value(metadata i32 %119, metadata !87, metadata !DIExpression()), !dbg !179
  %120 = sub i32 0, %118
  %121 = select i1 %113, i32 0, i32 %120
  %122 = sext i32 %121 to i64, !dbg !181
  %123 = sext i32 %7 to i64, !dbg !181
  %124 = zext i32 %117 to i64, !dbg !181
  br label %125, !dbg !181

125:                                              ; preds = %112, %220
  %126 = phi i64 [ 0, %112 ], [ %226, %220 ]
  %127 = phi i64 [ %124, %112 ], [ %225, %220 ]
  %128 = phi i32 [ %119, %112 ], [ %224, %220 ]
  %129 = phi i32 [ %4, %112 ], [ %130, %220 ]
  tail call void @llvm.dbg.value(metadata i32 %128, metadata !87, metadata !DIExpression()), !dbg !179
  tail call void @llvm.dbg.value(metadata i32 %129, metadata !70, metadata !DIExpression()), !dbg !116
  %130 = add nsw i32 %129, -1, !dbg !186
  tail call void @llvm.dbg.value(metadata i32 %130, metadata !70, metadata !DIExpression()), !dbg !116
  %131 = mul nsw i32 %130, %129, !dbg !187
  %132 = sdiv i32 %131, 2, !dbg !187
  tail call void @llvm.dbg.value(metadata float poison, metadata !90, metadata !DIExpression()), !dbg !188
  br i1 %9, label %133, label %142, !dbg !189

133:                                              ; preds = %125
  %134 = add nsw i32 %132, %130, !dbg !187
  %135 = sext i32 %134 to i64, !dbg !190
  %136 = getelementptr inbounds float, ptr %5, i64 %135, !dbg !190
  %137 = load float, ptr %136, align 4, !dbg !190, !tbaa !150
  tail call void @llvm.dbg.value(metadata float %137, metadata !90, metadata !DIExpression()), !dbg !188
  %138 = sext i32 %128 to i64, !dbg !191
  %139 = getelementptr inbounds float, ptr %6, i64 %138, !dbg !191
  %140 = load float, ptr %139, align 4, !dbg !191, !tbaa !150
  %141 = fmul float %137, %140, !dbg !192
  br label %146, !dbg !189

142:                                              ; preds = %125
  %143 = sext i32 %128 to i64, !dbg !193
  %144 = getelementptr inbounds float, ptr %6, i64 %143, !dbg !193
  %145 = load float, ptr %144, align 4, !dbg !193, !tbaa !150
  br label %146, !dbg !189

146:                                              ; preds = %142, %133
  %147 = phi float [ %141, %133 ], [ %145, %142 ], !dbg !189
  tail call void @llvm.dbg.value(metadata i32 %121, metadata !95, metadata !DIExpression()), !dbg !188
  tail call void @llvm.dbg.value(metadata i32 0, metadata !73, metadata !DIExpression()), !dbg !116
  tail call void @llvm.dbg.value(metadata float %147, metadata !94, metadata !DIExpression()), !dbg !188
  %148 = icmp ugt i32 %129, 1, !dbg !194
  br i1 %148, label %152, label %149, !dbg !197

149:                                              ; preds = %146
  %150 = sext i32 %128 to i64, !dbg !198
  %151 = getelementptr inbounds float, ptr %6, i64 %150, !dbg !198
  store float %147, ptr %151, align 4, !dbg !199, !tbaa !150
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 %128, i32 %7), metadata !87, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !179
  tail call void @llvm.dbg.value(metadata i32 %130, metadata !70, metadata !DIExpression()), !dbg !116
  br label %398, !dbg !181

152:                                              ; preds = %146
  %153 = sext i32 %132 to i64, !dbg !197
  %154 = getelementptr float, ptr %5, i64 %153, !dbg !197
  %155 = and i64 %127, 3, !dbg !197
  %156 = sub i64 %126, %124, !dbg !197
  %157 = icmp ugt i64 %156, -4, !dbg !197
  br i1 %157, label %199, label %158, !dbg !197

158:                                              ; preds = %152
  %159 = and i64 %127, -4, !dbg !197
  br label %160, !dbg !197

160:                                              ; preds = %160, %158
  %161 = phi i64 [ 0, %158 ], [ %196, %160 ]
  %162 = phi i64 [ %122, %158 ], [ %195, %160 ]
  %163 = phi float [ %147, %158 ], [ %194, %160 ]
  %164 = phi i64 [ 0, %158 ], [ %197, %160 ]
  tail call void @llvm.dbg.value(metadata i64 %162, metadata !95, metadata !DIExpression()), !dbg !188
  tail call void @llvm.dbg.value(metadata float %163, metadata !94, metadata !DIExpression()), !dbg !188
  tail call void @llvm.dbg.value(metadata i64 %161, metadata !73, metadata !DIExpression()), !dbg !116
  %165 = getelementptr float, ptr %154, i64 %161, !dbg !200
  %166 = load float, ptr %165, align 4, !dbg !200, !tbaa !150
  tail call void @llvm.dbg.value(metadata float %166, metadata !90, metadata !DIExpression()), !dbg !188
  %167 = getelementptr inbounds float, ptr %6, i64 %162, !dbg !202
  %168 = load float, ptr %167, align 4, !dbg !202, !tbaa !150
  %169 = fmul float %166, %168, !dbg !203
  %170 = fadd float %163, %169, !dbg !204
  tail call void @llvm.dbg.value(metadata float %170, metadata !94, metadata !DIExpression()), !dbg !188
  %171 = add i64 %162, %123, !dbg !205
  tail call void @llvm.dbg.value(metadata i64 %171, metadata !95, metadata !DIExpression()), !dbg !188
  %172 = or disjoint i64 %161, 1, !dbg !206
  tail call void @llvm.dbg.value(metadata i64 %172, metadata !73, metadata !DIExpression()), !dbg !116
  tail call void @llvm.dbg.value(metadata i64 %171, metadata !95, metadata !DIExpression()), !dbg !188
  tail call void @llvm.dbg.value(metadata float %170, metadata !94, metadata !DIExpression()), !dbg !188
  tail call void @llvm.dbg.value(metadata i64 %172, metadata !73, metadata !DIExpression()), !dbg !116
  %173 = getelementptr float, ptr %154, i64 %172, !dbg !200
  %174 = load float, ptr %173, align 4, !dbg !200, !tbaa !150
  tail call void @llvm.dbg.value(metadata float %174, metadata !90, metadata !DIExpression()), !dbg !188
  %175 = getelementptr inbounds float, ptr %6, i64 %171, !dbg !202
  %176 = load float, ptr %175, align 4, !dbg !202, !tbaa !150
  %177 = fmul float %174, %176, !dbg !203
  %178 = fadd float %170, %177, !dbg !204
  tail call void @llvm.dbg.value(metadata float %178, metadata !94, metadata !DIExpression()), !dbg !188
  %179 = add i64 %171, %123, !dbg !205
  tail call void @llvm.dbg.value(metadata i64 %179, metadata !95, metadata !DIExpression()), !dbg !188
  %180 = or disjoint i64 %161, 2, !dbg !206
  tail call void @llvm.dbg.value(metadata i64 %180, metadata !73, metadata !DIExpression()), !dbg !116
  tail call void @llvm.dbg.value(metadata i64 %179, metadata !95, metadata !DIExpression()), !dbg !188
  tail call void @llvm.dbg.value(metadata float %178, metadata !94, metadata !DIExpression()), !dbg !188
  tail call void @llvm.dbg.value(metadata i64 %180, metadata !73, metadata !DIExpression()), !dbg !116
  %181 = getelementptr float, ptr %154, i64 %180, !dbg !200
  %182 = load float, ptr %181, align 4, !dbg !200, !tbaa !150
  tail call void @llvm.dbg.value(metadata float %182, metadata !90, metadata !DIExpression()), !dbg !188
  %183 = getelementptr inbounds float, ptr %6, i64 %179, !dbg !202
  %184 = load float, ptr %183, align 4, !dbg !202, !tbaa !150
  %185 = fmul float %182, %184, !dbg !203
  %186 = fadd float %178, %185, !dbg !204
  tail call void @llvm.dbg.value(metadata float %186, metadata !94, metadata !DIExpression()), !dbg !188
  %187 = add i64 %179, %123, !dbg !205
  tail call void @llvm.dbg.value(metadata i64 %187, metadata !95, metadata !DIExpression()), !dbg !188
  %188 = or disjoint i64 %161, 3, !dbg !206
  tail call void @llvm.dbg.value(metadata i64 %188, metadata !73, metadata !DIExpression()), !dbg !116
  tail call void @llvm.dbg.value(metadata i64 %187, metadata !95, metadata !DIExpression()), !dbg !188
  tail call void @llvm.dbg.value(metadata float %186, metadata !94, metadata !DIExpression()), !dbg !188
  tail call void @llvm.dbg.value(metadata i64 %188, metadata !73, metadata !DIExpression()), !dbg !116
  %189 = getelementptr float, ptr %154, i64 %188, !dbg !200
  %190 = load float, ptr %189, align 4, !dbg !200, !tbaa !150
  tail call void @llvm.dbg.value(metadata float %190, metadata !90, metadata !DIExpression()), !dbg !188
  %191 = getelementptr inbounds float, ptr %6, i64 %187, !dbg !202
  %192 = load float, ptr %191, align 4, !dbg !202, !tbaa !150
  %193 = fmul float %190, %192, !dbg !203
  %194 = fadd float %186, %193, !dbg !204
  tail call void @llvm.dbg.value(metadata float %194, metadata !94, metadata !DIExpression()), !dbg !188
  %195 = add i64 %187, %123, !dbg !205
  tail call void @llvm.dbg.value(metadata i64 %195, metadata !95, metadata !DIExpression()), !dbg !188
  %196 = add nuw nsw i64 %161, 4, !dbg !206
  tail call void @llvm.dbg.value(metadata i64 %196, metadata !73, metadata !DIExpression()), !dbg !116
  %197 = add i64 %164, 4, !dbg !197
  %198 = icmp eq i64 %197, %159, !dbg !197
  br i1 %198, label %199, label %160, !dbg !197, !llvm.loop !207

199:                                              ; preds = %160, %152
  %200 = phi float [ undef, %152 ], [ %194, %160 ]
  %201 = phi i64 [ 0, %152 ], [ %196, %160 ]
  %202 = phi i64 [ %122, %152 ], [ %195, %160 ]
  %203 = phi float [ %147, %152 ], [ %194, %160 ]
  %204 = icmp eq i64 %155, 0, !dbg !197
  br i1 %204, label %220, label %205, !dbg !197

205:                                              ; preds = %199, %205
  %206 = phi i64 [ %217, %205 ], [ %201, %199 ]
  %207 = phi i64 [ %216, %205 ], [ %202, %199 ]
  %208 = phi float [ %215, %205 ], [ %203, %199 ]
  %209 = phi i64 [ %218, %205 ], [ 0, %199 ]
  tail call void @llvm.dbg.value(metadata i64 %207, metadata !95, metadata !DIExpression()), !dbg !188
  tail call void @llvm.dbg.value(metadata float %208, metadata !94, metadata !DIExpression()), !dbg !188
  tail call void @llvm.dbg.value(metadata i64 %206, metadata !73, metadata !DIExpression()), !dbg !116
  %210 = getelementptr float, ptr %154, i64 %206, !dbg !200
  %211 = load float, ptr %210, align 4, !dbg !200, !tbaa !150
  tail call void @llvm.dbg.value(metadata float %211, metadata !90, metadata !DIExpression()), !dbg !188
  %212 = getelementptr inbounds float, ptr %6, i64 %207, !dbg !202
  %213 = load float, ptr %212, align 4, !dbg !202, !tbaa !150
  %214 = fmul float %211, %213, !dbg !203
  %215 = fadd float %208, %214, !dbg !204
  tail call void @llvm.dbg.value(metadata float %215, metadata !94, metadata !DIExpression()), !dbg !188
  %216 = add i64 %207, %123, !dbg !205
  tail call void @llvm.dbg.value(metadata i64 %216, metadata !95, metadata !DIExpression()), !dbg !188
  %217 = add nuw nsw i64 %206, 1, !dbg !206
  tail call void @llvm.dbg.value(metadata i64 %217, metadata !73, metadata !DIExpression()), !dbg !116
  %218 = add i64 %209, 1, !dbg !197
  %219 = icmp eq i64 %218, %155, !dbg !197
  br i1 %219, label %220, label %205, !dbg !197, !llvm.loop !209

220:                                              ; preds = %205, %199
  %221 = phi float [ %200, %199 ], [ %215, %205 ], !dbg !204
  %222 = sext i32 %128 to i64, !dbg !198
  %223 = getelementptr inbounds float, ptr %6, i64 %222, !dbg !198
  store float %221, ptr %223, align 4, !dbg !199, !tbaa !150
  %224 = sub nsw i32 %128, %7, !dbg !211
  tail call void @llvm.dbg.value(metadata i32 %224, metadata !87, metadata !DIExpression()), !dbg !179
  tail call void @llvm.dbg.value(metadata i32 %130, metadata !70, metadata !DIExpression()), !dbg !116
  %225 = add nsw i64 %127, -1, !dbg !181
  %226 = add i64 %126, 1, !dbg !181
  br i1 %148, label %125, label %398, !dbg !181, !llvm.loop !212

227:                                              ; preds = %106
  %228 = and i1 %33, %40, !dbg !215
  %229 = and i1 %36, %228, !dbg !215
  br i1 %229, label %233, label %230, !dbg !215

230:                                              ; preds = %227
  %231 = and i1 %39, %34, !dbg !216
  %232 = and i1 %42, %231, !dbg !216
  br i1 %232, label %233, label %302, !dbg !216

233:                                              ; preds = %230, %227
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 poison, i32 poison, i32 poison), metadata !96, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_minus, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !217
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !70, metadata !DIExpression()), !dbg !116
  %234 = icmp sgt i32 %4, 0, !dbg !218
  br i1 %234, label %235, label %398, !dbg !219

235:                                              ; preds = %233
  %236 = icmp sgt i32 %7, 0, !dbg !220
  %237 = sub nsw i32 1, %4, !dbg !220
  %238 = mul i32 %237, %7, !dbg !220
  %239 = select i1 %236, i32 0, i32 %238, !dbg !220
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 %239, i32 %4, i32 %7), metadata !96, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_minus, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !217
  %240 = add nsw i32 %4, -1, !dbg !221
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 %239, i32 %240, i32 %7), metadata !96, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !217
  %241 = mul i32 %240, %7, !dbg !222
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 %239, i32 %241), metadata !96, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !217
  %242 = add nsw i32 %239, %241, !dbg !223
  tail call void @llvm.dbg.value(metadata i32 %242, metadata !96, metadata !DIExpression()), !dbg !217
  %243 = shl nuw nsw i32 %4, 1
  %244 = add nuw i32 %243, 2
  %245 = sub i32 0, %241
  %246 = select i1 %236, i32 0, i32 %245
  %247 = or disjoint i32 %243, 1
  %248 = sext i32 %246 to i64, !dbg !219
  %249 = sext i32 %7 to i64, !dbg !219
  br label %250, !dbg !219

250:                                              ; preds = %235, %297
  %251 = phi i32 [ %240, %235 ], [ %301, %297 ]
  %252 = phi i32 [ %242, %235 ], [ %300, %297 ]
  %253 = phi i32 [ %4, %235 ], [ %254, %297 ]
  tail call void @llvm.dbg.value(metadata i32 %252, metadata !96, metadata !DIExpression()), !dbg !217
  tail call void @llvm.dbg.value(metadata i32 %253, metadata !70, metadata !DIExpression()), !dbg !116
  %254 = add nsw i32 %253, -1, !dbg !224
  tail call void @llvm.dbg.value(metadata i32 %254, metadata !70, metadata !DIExpression()), !dbg !116
  tail call void @llvm.dbg.value(metadata float poison, metadata !99, metadata !DIExpression()), !dbg !225
  br i1 %9, label %255, label %266, !dbg !226

255:                                              ; preds = %250
  %256 = sub i32 %244, %253, !dbg !227
  %257 = mul nsw i32 %254, %256, !dbg !227
  %258 = sdiv i32 %257, 2, !dbg !227
  %259 = sext i32 %258 to i64, !dbg !228
  %260 = getelementptr inbounds float, ptr %5, i64 %259, !dbg !228
  %261 = load float, ptr %260, align 4, !dbg !228, !tbaa !150
  tail call void @llvm.dbg.value(metadata float %261, metadata !99, metadata !DIExpression()), !dbg !225
  %262 = sext i32 %252 to i64, !dbg !229
  %263 = getelementptr inbounds float, ptr %6, i64 %262, !dbg !229
  %264 = load float, ptr %263, align 4, !dbg !229, !tbaa !150
  %265 = fmul float %261, %264, !dbg !230
  br label %270, !dbg !226

266:                                              ; preds = %250
  %267 = sext i32 %252 to i64, !dbg !231
  %268 = getelementptr inbounds float, ptr %6, i64 %267, !dbg !231
  %269 = load float, ptr %268, align 4, !dbg !231, !tbaa !150
  br label %270, !dbg !226

270:                                              ; preds = %266, %255
  %271 = phi float [ %265, %255 ], [ %269, %266 ], !dbg !226
  tail call void @llvm.dbg.value(metadata i32 %246, metadata !104, metadata !DIExpression()), !dbg !225
  tail call void @llvm.dbg.value(metadata i32 0, metadata !73, metadata !DIExpression()), !dbg !116
  tail call void @llvm.dbg.value(metadata float %271, metadata !103, metadata !DIExpression()), !dbg !225
  %272 = icmp ugt i32 %253, 1, !dbg !232
  br i1 %272, label %276, label %273, !dbg !235

273:                                              ; preds = %270
  %274 = sext i32 %252 to i64, !dbg !236
  %275 = getelementptr inbounds float, ptr %6, i64 %274, !dbg !236
  store float %271, ptr %275, align 4, !dbg !237, !tbaa !150
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 %252, i32 %7), metadata !96, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !217
  tail call void @llvm.dbg.value(metadata i32 %254, metadata !70, metadata !DIExpression()), !dbg !116
  br label %398, !dbg !219

276:                                              ; preds = %270, %276
  %277 = phi i64 [ %293, %276 ], [ %248, %270 ]
  %278 = phi i32 [ %295, %276 ], [ 0, %270 ]
  %279 = phi float [ %292, %276 ], [ %271, %270 ]
  %280 = phi i32 [ %294, %276 ], [ 0, %270 ]
  tail call void @llvm.dbg.value(metadata i64 %277, metadata !104, metadata !DIExpression()), !dbg !225
  tail call void @llvm.dbg.value(metadata float %279, metadata !103, metadata !DIExpression()), !dbg !225
  tail call void @llvm.dbg.value(metadata i32 %280, metadata !73, metadata !DIExpression()), !dbg !116
  %281 = add i32 %247, %278, !dbg !238
  %282 = mul nsw i32 %281, %280, !dbg !238
  %283 = sdiv i32 %282, 2, !dbg !238
  %284 = add i32 %278, %254, !dbg !238
  %285 = add i32 %284, %283, !dbg !238
  %286 = sext i32 %285 to i64, !dbg !240
  %287 = getelementptr inbounds float, ptr %5, i64 %286, !dbg !240
  %288 = load float, ptr %287, align 4, !dbg !240, !tbaa !150
  tail call void @llvm.dbg.value(metadata float %288, metadata !99, metadata !DIExpression()), !dbg !225
  %289 = getelementptr inbounds float, ptr %6, i64 %277, !dbg !241
  %290 = load float, ptr %289, align 4, !dbg !241, !tbaa !150
  %291 = fmul float %288, %290, !dbg !242
  %292 = fadd float %279, %291, !dbg !243
  tail call void @llvm.dbg.value(metadata float %292, metadata !103, metadata !DIExpression()), !dbg !225
  %293 = add i64 %277, %249, !dbg !244
  tail call void @llvm.dbg.value(metadata i64 %293, metadata !104, metadata !DIExpression()), !dbg !225
  %294 = add nuw nsw i32 %280, 1, !dbg !245
  tail call void @llvm.dbg.value(metadata i32 %294, metadata !73, metadata !DIExpression()), !dbg !116
  %295 = xor i32 %280, -1
  %296 = icmp eq i32 %294, %251, !dbg !232
  br i1 %296, label %297, label %276, !dbg !235, !llvm.loop !246

297:                                              ; preds = %276
  %298 = sext i32 %252 to i64, !dbg !236
  %299 = getelementptr inbounds float, ptr %6, i64 %298, !dbg !236
  store float %292, ptr %299, align 4, !dbg !237, !tbaa !150
  %300 = sub nsw i32 %252, %7, !dbg !248
  tail call void @llvm.dbg.value(metadata i32 %300, metadata !96, metadata !DIExpression()), !dbg !217
  tail call void @llvm.dbg.value(metadata i32 %254, metadata !70, metadata !DIExpression()), !dbg !116
  %301 = add nsw i32 %251, -1, !dbg !219
  br i1 %272, label %250, label %398, !dbg !219, !llvm.loop !249

302:                                              ; preds = %230
  %303 = and i1 %42, %228, !dbg !252
  %304 = and i1 %36, %231
  %305 = or i1 %303, %304, !dbg !252
  br i1 %305, label %306, label %397, !dbg !252

306:                                              ; preds = %302
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !105, metadata !DIExpression()), !dbg !253
  tail call void @llvm.dbg.value(metadata i32 0, metadata !70, metadata !DIExpression()), !dbg !116
  %307 = icmp sgt i32 %4, 0, !dbg !254
  br i1 %307, label %308, label %398, !dbg !255

308:                                              ; preds = %306
  %309 = icmp sgt i32 %7, 0, !dbg !256
  %310 = sub nsw i32 1, %4, !dbg !256
  %311 = mul i32 %310, %7, !dbg !256
  %312 = select i1 %309, i32 0, i32 %311, !dbg !256
  tail call void @llvm.dbg.value(metadata i32 %312, metadata !105, metadata !DIExpression()), !dbg !253
  %313 = sext i32 %7 to i64, !dbg !255
  %314 = sext i32 %312 to i64, !dbg !255
  %315 = add nsw i32 %4, -2, !dbg !255
  br label %316, !dbg !255

316:                                              ; preds = %308, %392
  %317 = phi i64 [ %314, %308 ], [ %395, %392 ]
  %318 = phi i32 [ %312, %308 ], [ %322, %392 ]
  %319 = phi i32 [ 0, %308 ], [ %324, %392 ]
  %320 = xor i32 %319, -1, !dbg !255
  %321 = add nsw i32 %320, %4, !dbg !255
  %322 = add i32 %318, %7, !dbg !255
  tail call void @llvm.dbg.value(metadata i64 %317, metadata !105, metadata !DIExpression()), !dbg !253
  tail call void @llvm.dbg.value(metadata i32 %319, metadata !70, metadata !DIExpression()), !dbg !116
  %323 = sext i32 %322 to i64, !dbg !257
  %324 = add nuw nsw i32 %319, 1, !dbg !257
  tail call void @llvm.dbg.value(metadata float poison, metadata !108, metadata !DIExpression()), !dbg !258
  br i1 %9, label %325, label %335, !dbg !259

325:                                              ; preds = %316
  %326 = mul nsw i32 %324, %319, !dbg !257
  %327 = lshr i32 %326, 1, !dbg !257
  %328 = add nuw nsw i32 %327, %319, !dbg !257
  %329 = zext nneg i32 %328 to i64, !dbg !260
  %330 = getelementptr inbounds float, ptr %5, i64 %329, !dbg !260
  %331 = load float, ptr %330, align 4, !dbg !260, !tbaa !150
  tail call void @llvm.dbg.value(metadata float %331, metadata !108, metadata !DIExpression()), !dbg !258
  %332 = getelementptr inbounds float, ptr %6, i64 %317, !dbg !261
  %333 = load float, ptr %332, align 4, !dbg !261, !tbaa !150
  %334 = fmul float %331, %333, !dbg !262
  br label %338, !dbg !259

335:                                              ; preds = %316
  %336 = getelementptr inbounds float, ptr %6, i64 %317, !dbg !263
  %337 = load float, ptr %336, align 4, !dbg !263, !tbaa !150
  br label %338, !dbg !259

338:                                              ; preds = %335, %325
  %339 = phi float [ %334, %325 ], [ %337, %335 ], !dbg !259
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 poison, i32 poison, i32 poison), metadata !113, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !258
  tail call void @llvm.dbg.value(metadata i32 %324, metadata !73, metadata !DIExpression()), !dbg !116
  tail call void @llvm.dbg.value(metadata float %339, metadata !112, metadata !DIExpression()), !dbg !258
  %340 = icmp slt i32 %324, %4, !dbg !264
  br i1 %340, label %341, label %392, !dbg !267

341:                                              ; preds = %338
  %342 = and i32 %321, 1, !dbg !267
  %343 = icmp eq i32 %342, 0, !dbg !267
  br i1 %343, label %357, label %344, !dbg !267

344:                                              ; preds = %341
  tail call void @llvm.dbg.value(metadata i64 %323, metadata !113, metadata !DIExpression()), !dbg !258
  tail call void @llvm.dbg.value(metadata float %339, metadata !112, metadata !DIExpression()), !dbg !258
  tail call void @llvm.dbg.value(metadata i32 %324, metadata !73, metadata !DIExpression()), !dbg !116
  %345 = add nuw nsw i32 %319, 2, !dbg !268
  %346 = mul nsw i32 %345, %324, !dbg !268
  %347 = lshr i32 %346, 1, !dbg !268
  %348 = add nuw nsw i32 %347, %319, !dbg !268
  %349 = zext nneg i32 %348 to i64, !dbg !270
  %350 = getelementptr inbounds float, ptr %5, i64 %349, !dbg !270
  %351 = load float, ptr %350, align 4, !dbg !270, !tbaa !150
  tail call void @llvm.dbg.value(metadata float %351, metadata !108, metadata !DIExpression()), !dbg !258
  %352 = getelementptr inbounds float, ptr %6, i64 %323, !dbg !271
  %353 = load float, ptr %352, align 4, !dbg !271, !tbaa !150
  %354 = fmul float %351, %353, !dbg !272
  %355 = fadd float %339, %354, !dbg !273
  tail call void @llvm.dbg.value(metadata float %355, metadata !112, metadata !DIExpression()), !dbg !258
  %356 = add nsw i64 %323, %313, !dbg !274
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !113, metadata !DIExpression()), !dbg !258
  tail call void @llvm.dbg.value(metadata i32 %345, metadata !73, metadata !DIExpression()), !dbg !116
  br label %357, !dbg !267

357:                                              ; preds = %344, %341
  %358 = phi float [ undef, %341 ], [ %355, %344 ]
  %359 = phi i64 [ %323, %341 ], [ %356, %344 ]
  %360 = phi float [ %339, %341 ], [ %355, %344 ]
  %361 = phi i32 [ %324, %341 ], [ %345, %344 ]
  %362 = icmp eq i32 %315, %319, !dbg !267
  br i1 %362, label %392, label %363, !dbg !267

363:                                              ; preds = %357, %363
  %364 = phi i64 [ %390, %363 ], [ %359, %357 ]
  %365 = phi float [ %389, %363 ], [ %360, %357 ]
  %366 = phi i32 [ %379, %363 ], [ %361, %357 ]
  tail call void @llvm.dbg.value(metadata i64 %364, metadata !113, metadata !DIExpression()), !dbg !258
  tail call void @llvm.dbg.value(metadata float %365, metadata !112, metadata !DIExpression()), !dbg !258
  tail call void @llvm.dbg.value(metadata i32 %366, metadata !73, metadata !DIExpression()), !dbg !116
  %367 = add nuw nsw i32 %366, 1, !dbg !268
  %368 = mul nsw i32 %367, %366, !dbg !268
  %369 = lshr i32 %368, 1, !dbg !268
  %370 = add nuw nsw i32 %369, %319, !dbg !268
  %371 = zext nneg i32 %370 to i64, !dbg !270
  %372 = getelementptr inbounds float, ptr %5, i64 %371, !dbg !270
  %373 = load float, ptr %372, align 4, !dbg !270, !tbaa !150
  tail call void @llvm.dbg.value(metadata float %373, metadata !108, metadata !DIExpression()), !dbg !258
  %374 = getelementptr inbounds float, ptr %6, i64 %364, !dbg !271
  %375 = load float, ptr %374, align 4, !dbg !271, !tbaa !150
  %376 = fmul float %373, %375, !dbg !272
  %377 = fadd float %365, %376, !dbg !273
  tail call void @llvm.dbg.value(metadata float %377, metadata !112, metadata !DIExpression()), !dbg !258
  %378 = add i64 %364, %313, !dbg !274
  tail call void @llvm.dbg.value(metadata i64 %378, metadata !113, metadata !DIExpression()), !dbg !258
  tail call void @llvm.dbg.value(metadata i32 %367, metadata !73, metadata !DIExpression()), !dbg !116
  tail call void @llvm.dbg.value(metadata i64 %378, metadata !113, metadata !DIExpression()), !dbg !258
  tail call void @llvm.dbg.value(metadata float %377, metadata !112, metadata !DIExpression()), !dbg !258
  tail call void @llvm.dbg.value(metadata i32 %367, metadata !73, metadata !DIExpression()), !dbg !116
  %379 = add nuw nsw i32 %366, 2, !dbg !268
  %380 = mul nsw i32 %379, %367, !dbg !268
  %381 = lshr i32 %380, 1, !dbg !268
  %382 = add nuw nsw i32 %381, %319, !dbg !268
  %383 = zext nneg i32 %382 to i64, !dbg !270
  %384 = getelementptr inbounds float, ptr %5, i64 %383, !dbg !270
  %385 = load float, ptr %384, align 4, !dbg !270, !tbaa !150
  tail call void @llvm.dbg.value(metadata float %385, metadata !108, metadata !DIExpression()), !dbg !258
  %386 = getelementptr inbounds float, ptr %6, i64 %378, !dbg !271
  %387 = load float, ptr %386, align 4, !dbg !271, !tbaa !150
  %388 = fmul float %385, %387, !dbg !272
  %389 = fadd float %377, %388, !dbg !273
  tail call void @llvm.dbg.value(metadata float %389, metadata !112, metadata !DIExpression()), !dbg !258
  %390 = add i64 %378, %313, !dbg !274
  tail call void @llvm.dbg.value(metadata i64 %390, metadata !113, metadata !DIExpression()), !dbg !258
  tail call void @llvm.dbg.value(metadata i32 %379, metadata !73, metadata !DIExpression()), !dbg !116
  %391 = icmp eq i32 %379, %4, !dbg !264
  br i1 %391, label %392, label %363, !dbg !267, !llvm.loop !275

392:                                              ; preds = %357, %363, %338
  %393 = phi float [ %339, %338 ], [ %358, %357 ], [ %389, %363 ], !dbg !258
  %394 = getelementptr inbounds float, ptr %6, i64 %317, !dbg !277
  store float %393, ptr %394, align 4, !dbg !278, !tbaa !150
  %395 = add i64 %317, %313, !dbg !279
  tail call void @llvm.dbg.value(metadata i64 %395, metadata !105, metadata !DIExpression()), !dbg !253
  tail call void @llvm.dbg.value(metadata i32 %324, metadata !70, metadata !DIExpression()), !dbg !116
  %396 = icmp eq i32 %324, %4, !dbg !254
  br i1 %396, label %398, label %316, !dbg !255, !llvm.loop !280

397:                                              ; preds = %302
  tail call void (i32, ptr, ptr, ...) @cblas_xerbla(i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #3, !dbg !282
  br label %398

398:                                              ; preds = %392, %297, %220, %99, %273, %149, %306, %233, %110, %44, %397, %30
  ret void, !dbg !284
}

declare !dbg !286 void @cblas_xerbla(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!17}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46}
!llvm.ident = !{!47}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 26, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "./source_tpmv_r.h", directory: "/PI-detector/external/gsl/gsl-2.5/cblas", checksumkind: CSK_MD5, checksum: "a743a133518054ae92437c1068c8c5e7")
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
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 98, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 23)
!17 = distinct !DICompileUnit(language: DW_LANG_C11, file: !18, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !19, globals: !39, splitDebugInlining: false, nameTableKind: None)
!18 = !DIFile(filename: "stpmv.c", directory: "/PI-detector/external/gsl/gsl-2.5/cblas", checksumkind: CSK_MD5, checksum: "7f21c34e868ce2a3d81d7bc9f219c4c8")
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
!48 = distinct !DISubprogram(name: "cblas_stpmv", scope: !18, file: !18, line: 7, type: !49, scopeLine: 10, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !61)
!49 = !DISubroutineType(types: !50)
!50 = !{null, !51, !52, !53, !54, !55, !57, !60, !55}
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
!61 = !{!62, !63, !64, !65, !66, !67, !68, !69, !70, !73, !74, !75, !76, !78, !81, !85, !86, !87, !90, !94, !95, !96, !99, !103, !104, !105, !108, !112, !113}
!62 = !DILocalVariable(name: "order", arg: 1, scope: !48, file: !18, line: 7, type: !51)
!63 = !DILocalVariable(name: "Uplo", arg: 2, scope: !48, file: !18, line: 7, type: !52)
!64 = !DILocalVariable(name: "TransA", arg: 3, scope: !48, file: !18, line: 8, type: !53)
!65 = !DILocalVariable(name: "Diag", arg: 4, scope: !48, file: !18, line: 8, type: !54)
!66 = !DILocalVariable(name: "N", arg: 5, scope: !48, file: !18, line: 9, type: !55)
!67 = !DILocalVariable(name: "Ap", arg: 6, scope: !48, file: !18, line: 9, type: !57)
!68 = !DILocalVariable(name: "X", arg: 7, scope: !48, file: !18, line: 9, type: !60)
!69 = !DILocalVariable(name: "incX", arg: 8, scope: !48, file: !18, line: 9, type: !55)
!70 = !DILocalVariable(name: "i", scope: !71, file: !2, line: 21, type: !56)
!71 = distinct !DILexicalBlock(scope: !72, file: !2, line: 20, column: 1)
!72 = !DILexicalBlockFile(scope: !48, file: !2, discriminator: 0)
!73 = !DILocalVariable(name: "j", scope: !71, file: !2, line: 21, type: !56)
!74 = !DILocalVariable(name: "nonunit", scope: !71, file: !2, line: 23, type: !55)
!75 = !DILocalVariable(name: "Trans", scope: !71, file: !2, line: 24, type: !55)
!76 = !DILocalVariable(name: "pos", scope: !77, file: !2, line: 26, type: !56)
!77 = distinct !DILexicalBlock(scope: !71, file: !2, line: 26, column: 3)
!78 = !DILocalVariable(name: "ix", scope: !79, file: !2, line: 35, type: !56)
!79 = distinct !DILexicalBlock(scope: !80, file: !2, line: 32, column: 81)
!80 = distinct !DILexicalBlock(scope: !71, file: !2, line: 31, column: 7)
!81 = !DILocalVariable(name: "atmp", scope: !82, file: !2, line: 37, type: !59)
!82 = distinct !DILexicalBlock(scope: !83, file: !2, line: 36, column: 29)
!83 = distinct !DILexicalBlock(scope: !84, file: !2, line: 36, column: 5)
!84 = distinct !DILexicalBlock(scope: !79, file: !2, line: 36, column: 5)
!85 = !DILocalVariable(name: "temp", scope: !82, file: !2, line: 38, type: !59)
!86 = !DILocalVariable(name: "jx", scope: !82, file: !2, line: 39, type: !56)
!87 = !DILocalVariable(name: "ix", scope: !88, file: !2, line: 51, type: !56)
!88 = distinct !DILexicalBlock(scope: !89, file: !2, line: 49, column: 88)
!89 = distinct !DILexicalBlock(scope: !80, file: !2, line: 48, column: 14)
!90 = !DILocalVariable(name: "atmp", scope: !91, file: !2, line: 53, type: !59)
!91 = distinct !DILexicalBlock(scope: !92, file: !2, line: 52, column: 32)
!92 = distinct !DILexicalBlock(scope: !93, file: !2, line: 52, column: 5)
!93 = distinct !DILexicalBlock(scope: !88, file: !2, line: 52, column: 5)
!94 = !DILocalVariable(name: "temp", scope: !91, file: !2, line: 54, type: !59)
!95 = !DILocalVariable(name: "jx", scope: !91, file: !2, line: 55, type: !56)
!96 = !DILocalVariable(name: "ix", scope: !97, file: !2, line: 68, type: !56)
!97 = distinct !DILexicalBlock(scope: !98, file: !2, line: 65, column: 90)
!98 = distinct !DILexicalBlock(scope: !89, file: !2, line: 64, column: 14)
!99 = !DILocalVariable(name: "atmp", scope: !100, file: !2, line: 70, type: !59)
!100 = distinct !DILexicalBlock(scope: !101, file: !2, line: 69, column: 32)
!101 = distinct !DILexicalBlock(scope: !102, file: !2, line: 69, column: 5)
!102 = distinct !DILexicalBlock(scope: !97, file: !2, line: 69, column: 5)
!103 = !DILocalVariable(name: "temp", scope: !100, file: !2, line: 71, type: !59)
!104 = !DILocalVariable(name: "jx", scope: !100, file: !2, line: 72, type: !56)
!105 = !DILocalVariable(name: "ix", scope: !106, file: !2, line: 84, type: !56)
!106 = distinct !DILexicalBlock(scope: !107, file: !2, line: 82, column: 90)
!107 = distinct !DILexicalBlock(scope: !98, file: !2, line: 81, column: 14)
!108 = !DILocalVariable(name: "atmp", scope: !109, file: !2, line: 86, type: !59)
!109 = distinct !DILexicalBlock(scope: !110, file: !2, line: 85, column: 29)
!110 = distinct !DILexicalBlock(scope: !111, file: !2, line: 85, column: 5)
!111 = distinct !DILexicalBlock(scope: !106, file: !2, line: 85, column: 5)
!112 = !DILocalVariable(name: "temp", scope: !109, file: !2, line: 87, type: !59)
!113 = !DILocalVariable(name: "jx", scope: !109, file: !2, line: 88, type: !56)
!114 = !DILocation(line: 0, scope: !48)
!115 = !DILocation(line: 23, column: 29, scope: !71)
!116 = !DILocation(line: 0, scope: !71)
!117 = !DILocation(line: 24, column: 29, scope: !71)
!118 = !DILocation(line: 24, column: 21, scope: !71)
!119 = !DILocation(line: 0, scope: !77)
!120 = !DILocation(line: 26, column: 3, scope: !121)
!121 = distinct !DILexicalBlock(scope: !77, file: !2, line: 26, column: 3)
!122 = !DILocation(line: 26, column: 3, scope: !123)
!123 = distinct !DILexicalBlock(scope: !77, file: !2, line: 26, column: 3)
!124 = !DILocation(line: 26, column: 3, scope: !125)
!125 = distinct !DILexicalBlock(scope: !77, file: !2, line: 26, column: 3)
!126 = !DILocation(line: 26, column: 3, scope: !127)
!127 = distinct !DILexicalBlock(scope: !77, file: !2, line: 26, column: 3)
!128 = !DILocation(line: 26, column: 3, scope: !129)
!129 = distinct !DILexicalBlock(scope: !77, file: !2, line: 26, column: 3)
!130 = !DILocation(line: 26, column: 3, scope: !77)
!131 = !DILocation(line: 26, column: 3, scope: !132)
!132 = distinct !DILexicalBlock(scope: !77, file: !2, line: 26, column: 3)
!133 = !DILocation(line: 26, column: 3, scope: !134)
!134 = distinct !DILexicalBlock(scope: !77, file: !2, line: 26, column: 3)
!135 = !DILocation(line: 28, column: 9, scope: !136)
!136 = distinct !DILexicalBlock(scope: !71, file: !2, line: 28, column: 7)
!137 = !DILocation(line: 28, column: 7, scope: !71)
!138 = !DILocation(line: 31, column: 14, scope: !80)
!139 = !DILocation(line: 31, column: 31, scope: !80)
!140 = !DILocation(line: 32, column: 17, scope: !80)
!141 = !DILocation(line: 32, column: 34, scope: !80)
!142 = !DILocation(line: 0, scope: !79)
!143 = !DILocation(line: 36, column: 19, scope: !83)
!144 = !DILocation(line: 36, column: 5, scope: !84)
!145 = !DILocation(line: 35, column: 16, scope: !79)
!146 = !DILocation(line: 37, column: 22, scope: !82)
!147 = !DILocation(line: 0, scope: !82)
!148 = !DILocation(line: 38, column: 20, scope: !82)
!149 = !DILocation(line: 37, column: 19, scope: !82)
!150 = !{!151, !151, i64 0}
!151 = !{!"float", !152, i64 0}
!152 = !{!"omnipotent char", !153, i64 0}
!153 = !{!"Simple C/C++ TBAA"}
!154 = !DILocation(line: 38, column: 30, scope: !82)
!155 = !DILocation(line: 38, column: 36, scope: !82)
!156 = !DILocation(line: 38, column: 45, scope: !82)
!157 = !DILocation(line: 39, column: 39, scope: !82)
!158 = !DILocation(line: 40, column: 25, scope: !159)
!159 = distinct !DILexicalBlock(scope: !160, file: !2, line: 40, column: 7)
!160 = distinct !DILexicalBlock(scope: !82, file: !2, line: 40, column: 7)
!161 = !DILocation(line: 40, column: 7, scope: !160)
!162 = !DILocation(line: 41, column: 19, scope: !163)
!163 = distinct !DILexicalBlock(scope: !159, file: !2, line: 40, column: 35)
!164 = !DILocation(line: 41, column: 16, scope: !163)
!165 = !DILocation(line: 42, column: 24, scope: !163)
!166 = !DILocation(line: 42, column: 22, scope: !163)
!167 = !DILocation(line: 42, column: 14, scope: !163)
!168 = !DILocation(line: 43, column: 12, scope: !163)
!169 = !DILocation(line: 40, column: 31, scope: !159)
!170 = distinct !{!170, !161, !171, !172}
!171 = !DILocation(line: 44, column: 7, scope: !160)
!172 = !{!"llvm.loop.mustprogress"}
!173 = !DILocation(line: 45, column: 7, scope: !82)
!174 = !DILocation(line: 45, column: 13, scope: !82)
!175 = !DILocation(line: 46, column: 10, scope: !82)
!176 = distinct !{!176, !144, !177, !172}
!177 = !DILocation(line: 47, column: 5, scope: !84)
!178 = !DILocation(line: 48, column: 38, scope: !89)
!179 = !DILocation(line: 0, scope: !88)
!180 = !DILocation(line: 52, column: 19, scope: !92)
!181 = !DILocation(line: 52, column: 23, scope: !92)
!182 = !DILocation(line: 51, column: 16, scope: !88)
!183 = !DILocation(line: 51, column: 37, scope: !88)
!184 = !DILocation(line: 51, column: 42, scope: !88)
!185 = !DILocation(line: 51, column: 32, scope: !88)
!186 = !DILocation(line: 52, column: 27, scope: !92)
!187 = !DILocation(line: 53, column: 22, scope: !91)
!188 = !DILocation(line: 0, scope: !91)
!189 = !DILocation(line: 54, column: 20, scope: !91)
!190 = !DILocation(line: 53, column: 19, scope: !91)
!191 = !DILocation(line: 54, column: 30, scope: !91)
!192 = !DILocation(line: 54, column: 36, scope: !91)
!193 = !DILocation(line: 54, column: 45, scope: !91)
!194 = !DILocation(line: 56, column: 21, scope: !195)
!195 = distinct !DILexicalBlock(scope: !196, file: !2, line: 56, column: 7)
!196 = distinct !DILexicalBlock(scope: !91, file: !2, line: 56, column: 7)
!197 = !DILocation(line: 56, column: 7, scope: !196)
!198 = !DILocation(line: 61, column: 7, scope: !91)
!199 = !DILocation(line: 61, column: 13, scope: !91)
!200 = !DILocation(line: 57, column: 16, scope: !201)
!201 = distinct !DILexicalBlock(scope: !195, file: !2, line: 56, column: 31)
!202 = !DILocation(line: 58, column: 24, scope: !201)
!203 = !DILocation(line: 58, column: 22, scope: !201)
!204 = !DILocation(line: 58, column: 14, scope: !201)
!205 = !DILocation(line: 59, column: 12, scope: !201)
!206 = !DILocation(line: 56, column: 27, scope: !195)
!207 = distinct !{!207, !197, !208, !172}
!208 = !DILocation(line: 60, column: 7, scope: !196)
!209 = distinct !{!209, !210}
!210 = !{!"llvm.loop.unroll.disable"}
!211 = !DILocation(line: 62, column: 10, scope: !91)
!212 = distinct !{!212, !213, !214, !172}
!213 = !DILocation(line: 52, column: 5, scope: !93)
!214 = !DILocation(line: 63, column: 5, scope: !93)
!215 = !DILocation(line: 64, column: 38, scope: !98)
!216 = !DILocation(line: 65, column: 41, scope: !98)
!217 = !DILocation(line: 0, scope: !97)
!218 = !DILocation(line: 69, column: 19, scope: !101)
!219 = !DILocation(line: 69, column: 23, scope: !101)
!220 = !DILocation(line: 68, column: 16, scope: !97)
!221 = !DILocation(line: 68, column: 37, scope: !97)
!222 = !DILocation(line: 68, column: 42, scope: !97)
!223 = !DILocation(line: 68, column: 32, scope: !97)
!224 = !DILocation(line: 69, column: 27, scope: !101)
!225 = !DILocation(line: 0, scope: !100)
!226 = !DILocation(line: 71, column: 20, scope: !100)
!227 = !DILocation(line: 70, column: 22, scope: !100)
!228 = !DILocation(line: 70, column: 19, scope: !100)
!229 = !DILocation(line: 71, column: 30, scope: !100)
!230 = !DILocation(line: 71, column: 36, scope: !100)
!231 = !DILocation(line: 71, column: 45, scope: !100)
!232 = !DILocation(line: 73, column: 21, scope: !233)
!233 = distinct !DILexicalBlock(scope: !234, file: !2, line: 73, column: 7)
!234 = distinct !DILexicalBlock(scope: !100, file: !2, line: 73, column: 7)
!235 = !DILocation(line: 73, column: 7, scope: !234)
!236 = !DILocation(line: 78, column: 7, scope: !100)
!237 = !DILocation(line: 78, column: 13, scope: !100)
!238 = !DILocation(line: 74, column: 19, scope: !239)
!239 = distinct !DILexicalBlock(scope: !233, file: !2, line: 73, column: 31)
!240 = !DILocation(line: 74, column: 16, scope: !239)
!241 = !DILocation(line: 75, column: 24, scope: !239)
!242 = !DILocation(line: 75, column: 22, scope: !239)
!243 = !DILocation(line: 75, column: 14, scope: !239)
!244 = !DILocation(line: 76, column: 12, scope: !239)
!245 = !DILocation(line: 73, column: 27, scope: !233)
!246 = distinct !{!246, !235, !247, !172}
!247 = !DILocation(line: 77, column: 7, scope: !234)
!248 = !DILocation(line: 79, column: 10, scope: !100)
!249 = distinct !{!249, !250, !251, !172}
!250 = !DILocation(line: 69, column: 5, scope: !102)
!251 = !DILocation(line: 80, column: 5, scope: !102)
!252 = !DILocation(line: 81, column: 38, scope: !107)
!253 = !DILocation(line: 0, scope: !106)
!254 = !DILocation(line: 85, column: 19, scope: !110)
!255 = !DILocation(line: 85, column: 5, scope: !111)
!256 = !DILocation(line: 84, column: 16, scope: !106)
!257 = !DILocation(line: 86, column: 22, scope: !109)
!258 = !DILocation(line: 0, scope: !109)
!259 = !DILocation(line: 87, column: 20, scope: !109)
!260 = !DILocation(line: 86, column: 19, scope: !109)
!261 = !DILocation(line: 87, column: 30, scope: !109)
!262 = !DILocation(line: 87, column: 36, scope: !109)
!263 = !DILocation(line: 87, column: 45, scope: !109)
!264 = !DILocation(line: 89, column: 25, scope: !265)
!265 = distinct !DILexicalBlock(scope: !266, file: !2, line: 89, column: 7)
!266 = distinct !DILexicalBlock(scope: !109, file: !2, line: 89, column: 7)
!267 = !DILocation(line: 89, column: 7, scope: !266)
!268 = !DILocation(line: 90, column: 19, scope: !269)
!269 = distinct !DILexicalBlock(scope: !265, file: !2, line: 89, column: 35)
!270 = !DILocation(line: 90, column: 16, scope: !269)
!271 = !DILocation(line: 91, column: 24, scope: !269)
!272 = !DILocation(line: 91, column: 22, scope: !269)
!273 = !DILocation(line: 91, column: 14, scope: !269)
!274 = !DILocation(line: 92, column: 12, scope: !269)
!275 = distinct !{!275, !267, !276, !172}
!276 = !DILocation(line: 93, column: 7, scope: !266)
!277 = !DILocation(line: 94, column: 7, scope: !109)
!278 = !DILocation(line: 94, column: 13, scope: !109)
!279 = !DILocation(line: 95, column: 10, scope: !109)
!280 = distinct !{!280, !255, !281, !172}
!281 = !DILocation(line: 96, column: 5, scope: !111)
!282 = !DILocation(line: 98, column: 5, scope: !283)
!283 = distinct !DILexicalBlock(scope: !107, file: !2, line: 97, column: 10)
!284 = !DILocation(line: 14, column: 1, scope: !285)
!285 = !DILexicalBlockFile(scope: !48, file: !18, discriminator: 0)
!286 = !DISubprogram(name: "cblas_xerbla", scope: !21, file: !21, line: 602, type: !287, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!287 = !DISubroutineType(types: !288)
!288 = !{null, !56, !289, !289, null}
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
