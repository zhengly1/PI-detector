; ModuleID = 'stbmv.ll'
source_filename = "stbmv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"./source_tbmv_r.h\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !7

; Function Attrs: nounwind uwtable
define dso_local void @cblas_stbmv(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr nocapture noundef readonly %6, i32 noundef %7, ptr nocapture noundef %8, i32 noundef %9) local_unnamed_addr #0 !dbg !43 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !57, metadata !DIExpression()), !dbg !115
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !58, metadata !DIExpression()), !dbg !115
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !59, metadata !DIExpression()), !dbg !115
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !60, metadata !DIExpression()), !dbg !115
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !61, metadata !DIExpression()), !dbg !115
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !62, metadata !DIExpression()), !dbg !115
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !63, metadata !DIExpression()), !dbg !115
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !64, metadata !DIExpression()), !dbg !115
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !65, metadata !DIExpression()), !dbg !115
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !66, metadata !DIExpression()), !dbg !115
  %11 = icmp eq i32 %3, 131, !dbg !116
  tail call void @llvm.dbg.value(metadata i1 %11, metadata !71, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !117
  %12 = icmp eq i32 %2, 113, !dbg !118
  %13 = select i1 %12, i32 112, i32 %2, !dbg !119
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !72, metadata !DIExpression()), !dbg !117
  tail call void @llvm.dbg.value(metadata i32 0, metadata !73, metadata !DIExpression()), !dbg !120
  %14 = add i32 %0, -103, !dbg !121
  %15 = icmp ult i32 %14, -2, !dbg !121
  %16 = zext i1 %15 to i32, !dbg !121
  tail call void @llvm.dbg.value(metadata i32 %16, metadata !73, metadata !DIExpression()), !dbg !120
  %17 = add i32 %1, -123, !dbg !123
  %18 = icmp ult i32 %17, -2, !dbg !123
  %19 = select i1 %18, i32 2, i32 %16, !dbg !123
  tail call void @llvm.dbg.value(metadata i32 %19, metadata !73, metadata !DIExpression()), !dbg !120
  %20 = add i32 %2, -114, !dbg !125
  %21 = icmp ult i32 %20, -3, !dbg !125
  %22 = select i1 %21, i32 3, i32 %19, !dbg !125
  tail call void @llvm.dbg.value(metadata i32 %22, metadata !73, metadata !DIExpression()), !dbg !120
  %23 = add i32 %3, -133, !dbg !127
  %24 = icmp ult i32 %23, -2, !dbg !127
  %25 = select i1 %24, i32 4, i32 %22, !dbg !127
  tail call void @llvm.dbg.value(metadata i32 %25, metadata !73, metadata !DIExpression()), !dbg !120
  %26 = icmp slt i32 %4, 0, !dbg !129
  %27 = select i1 %26, i32 5, i32 %25, !dbg !131
  tail call void @llvm.dbg.value(metadata i32 %27, metadata !73, metadata !DIExpression()), !dbg !120
  %28 = icmp slt i32 %5, 0, !dbg !132
  %29 = select i1 %28, i32 6, i32 %27, !dbg !131
  tail call void @llvm.dbg.value(metadata i32 %29, metadata !73, metadata !DIExpression()), !dbg !120
  %30 = tail call i32 @llvm.smax.i32(i32 %5, i32 0), !dbg !134
  %31 = icmp slt i32 %30, %7, !dbg !134
  %32 = select i1 %31, i32 %29, i32 8, !dbg !131
  tail call void @llvm.dbg.value(metadata i32 %32, metadata !73, metadata !DIExpression()), !dbg !120
  %33 = icmp eq i32 %9, 0, !dbg !136
  %34 = select i1 %33, i32 10, i32 %32, !dbg !131
  tail call void @llvm.dbg.value(metadata i32 %34, metadata !73, metadata !DIExpression()), !dbg !120
  %35 = icmp eq i32 %34, 0, !dbg !138
  br i1 %35, label %37, label %36, !dbg !131

36:                                               ; preds = %10
  tail call void (i32, ptr, ptr, ...) @cblas_xerbla(i32 noundef %34, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #3, !dbg !138
  br label %37, !dbg !138

37:                                               ; preds = %36, %10
  %38 = icmp eq i32 %4, 0, !dbg !140
  br i1 %38, label %395, label %39, !dbg !142

39:                                               ; preds = %37
  %40 = icmp eq i32 %0, 101, !dbg !143
  %41 = icmp eq i32 %13, 111
  %42 = and i1 %40, %41, !dbg !144
  %43 = icmp eq i32 %1, 121
  %44 = and i1 %43, %42, !dbg !144
  br i1 %44, label %51, label %45, !dbg !144

45:                                               ; preds = %39
  %46 = icmp eq i32 %0, 102, !dbg !145
  %47 = icmp eq i32 %13, 112
  %48 = and i1 %46, %47, !dbg !146
  %49 = icmp eq i32 %1, 122
  %50 = and i1 %49, %48, !dbg !146
  br i1 %50, label %51, label %120, !dbg !146

51:                                               ; preds = %45, %39
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !75, metadata !DIExpression()), !dbg !147
  tail call void @llvm.dbg.value(metadata i32 0, metadata !67, metadata !DIExpression()), !dbg !117
  %52 = icmp sgt i32 %4, 0, !dbg !148
  br i1 %52, label %53, label %395, !dbg !149

53:                                               ; preds = %51
  %54 = icmp sgt i32 %9, 0, !dbg !150
  %55 = sub nsw i32 1, %4, !dbg !150
  %56 = mul i32 %55, %9, !dbg !150
  %57 = select i1 %54, i32 0, i32 %56, !dbg !150
  tail call void @llvm.dbg.value(metadata i32 %57, metadata !75, metadata !DIExpression()), !dbg !147
  %58 = sext i32 %9 to i64, !dbg !149
  %59 = sext i32 %7 to i64, !dbg !149
  %60 = sext i32 %5 to i64, !dbg !149
  %61 = zext nneg i32 %4 to i64, !dbg !149
  %62 = sext i32 %57 to i64, !dbg !149
  %63 = zext nneg i32 %4 to i64, !dbg !148
  %64 = add i32 %7, -1
  br label %65, !dbg !149

65:                                               ; preds = %115, %53
  %66 = phi i64 [ %62, %53 ], [ %117, %115 ]
  %67 = phi i64 [ 0, %53 ], [ %84, %115 ]
  %68 = phi i32 [ %57, %53 ], [ %70, %115 ]
  %69 = phi i64 [ 1, %53 ], [ %118, %115 ]
  %70 = add i32 %68, %9, !dbg !149
  tail call void @llvm.dbg.value(metadata i64 %67, metadata !67, metadata !DIExpression()), !dbg !117
  tail call void @llvm.dbg.value(metadata i64 %66, metadata !75, metadata !DIExpression()), !dbg !147
  %71 = sext i32 %70 to i64, !dbg !151
  br i1 %11, label %72, label %77, !dbg !151

72:                                               ; preds = %65
  %73 = mul nsw i64 %67, %59, !dbg !152
  %74 = getelementptr inbounds float, ptr %6, i64 %73, !dbg !153
  %75 = load float, ptr %74, align 4, !dbg !153, !tbaa !154
  %76 = fpext float %75 to double, !dbg !153
  br label %77, !dbg !151

77:                                               ; preds = %72, %65
  %78 = phi double [ %76, %72 ], [ 1.000000e+00, %65 ], !dbg !151
  %79 = getelementptr inbounds float, ptr %8, i64 %66, !dbg !158
  %80 = load float, ptr %79, align 4, !dbg !158, !tbaa !154
  %81 = fpext float %80 to double, !dbg !158
  %82 = fmul double %78, %81, !dbg !159
  %83 = fptrunc double %82 to float, !dbg !160
  tail call void @llvm.dbg.value(metadata float %83, metadata !78, metadata !DIExpression()), !dbg !161
  %84 = add nuw nsw i64 %67, 1, !dbg !162
  tail call void @llvm.dbg.value(metadata i64 %84, metadata !82, metadata !DIExpression()), !dbg !161
  %85 = add nsw i64 %67, %60, !dbg !163
  %86 = icmp slt i64 %85, %61, !dbg !163
  %87 = trunc i64 %85 to i32, !dbg !163
  %88 = add i32 %87, 1, !dbg !163
  %89 = select i1 %86, i32 %88, i32 %4, !dbg !163
  tail call void @llvm.dbg.value(metadata i32 %89, metadata !83, metadata !DIExpression()), !dbg !161
  tail call void @llvm.dbg.value(metadata !DIArgList(i64 poison, i32 poison, i32 poison), metadata !84, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !161
  tail call void @llvm.dbg.value(metadata i64 %84, metadata !70, metadata !DIExpression()), !dbg !117
  tail call void @llvm.dbg.value(metadata float %83, metadata !78, metadata !DIExpression()), !dbg !161
  %90 = sext i32 %89 to i64, !dbg !164
  %91 = icmp slt i64 %84, %90, !dbg !164
  br i1 %91, label %92, label %115, !dbg !167

92:                                               ; preds = %77
  tail call void @llvm.dbg.value(metadata !DIArgList(i64 poison, i32 poison, i32 poison), metadata !84, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !161
  tail call void @llvm.dbg.value(metadata !DIArgList(i64 poison, i32 poison, i32 poison), metadata !84, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !161
  %93 = trunc i64 %67 to i32
  %94 = mul i32 %64, %93
  %95 = zext i32 %89 to i64, !dbg !164
  br label %96, !dbg !167

96:                                               ; preds = %96, %92
  %97 = phi i64 [ %71, %92 ], [ %112, %96 ]
  %98 = phi i64 [ %69, %92 ], [ %113, %96 ]
  %99 = phi float [ %83, %92 ], [ %handler_result, %96 ]
  tail call void @llvm.dbg.value(metadata i64 %98, metadata !70, metadata !DIExpression()), !dbg !117
  tail call void @llvm.dbg.value(metadata float %99, metadata !78, metadata !DIExpression()), !dbg !161
  tail call void @llvm.dbg.value(metadata i64 %97, metadata !84, metadata !DIExpression()), !dbg !161
  %100 = getelementptr inbounds float, ptr %8, i64 %97, !dbg !168
  %101 = load float, ptr %100, align 4, !dbg !168, !tbaa !154
  %102 = trunc i64 %98 to i32, !dbg !170
  %103 = add i32 %94, %102, !dbg !170
  %104 = sext i32 %103 to i64, !dbg !171
  %105 = getelementptr inbounds float, ptr %6, i64 %104, !dbg !171
  %106 = load float, ptr %105, align 4, !dbg !171, !tbaa !154
  %107 = fmul float %101, %106, !dbg !172
  %108 = fpext float %99 to double, !dbg !173
  %109 = fpext float %107 to double, !dbg !173
  %110 = fptrunc double %108 to float, !dbg !173
  %111 = fptrunc double %109 to float, !dbg !173
  %handler_result = call float @fAddHandlerFloat(float %110, float %111), !dbg !173
  tail call void @llvm.dbg.value(metadata float %handler_result, metadata !78, metadata !DIExpression()), !dbg !161
  %112 = add i64 %97, %58, !dbg !173
  tail call void @llvm.dbg.value(metadata i64 %112, metadata !84, metadata !DIExpression()), !dbg !161
  %113 = add nuw nsw i64 %98, 1, !dbg !174
  tail call void @llvm.dbg.value(metadata i64 %113, metadata !70, metadata !DIExpression()), !dbg !117
  %114 = icmp eq i64 %113, %95, !dbg !164
  br i1 %114, label %115, label %96, !dbg !167, !llvm.loop !175

115:                                              ; preds = %96, %77
  %116 = phi float [ %83, %77 ], [ %handler_result, %96 ], !dbg !161
  store float %116, ptr %79, align 4, !dbg !178, !tbaa !154
  %117 = add i64 %66, %58, !dbg !179
  tail call void @llvm.dbg.value(metadata i64 %84, metadata !67, metadata !DIExpression()), !dbg !117
  tail call void @llvm.dbg.value(metadata i64 %117, metadata !75, metadata !DIExpression()), !dbg !147
  %118 = add nuw nsw i64 %69, 1, !dbg !149
  %119 = icmp eq i64 %84, %63, !dbg !148
  br i1 %119, label %395, label %65, !dbg !149, !llvm.loop !180

120:                                              ; preds = %45
  %121 = and i1 %49, %42, !dbg !182
  %122 = and i1 %43, %48
  %123 = or i1 %121, %122, !dbg !182
  br i1 %123, label %124, label %201, !dbg !182

124:                                              ; preds = %120
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 poison, i32 poison, i32 poison), metadata !85, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_minus, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !183
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !67, metadata !DIExpression()), !dbg !117
  %125 = icmp sgt i32 %4, 0, !dbg !184
  br i1 %125, label %126, label %395, !dbg !185

126:                                              ; preds = %124
  %127 = icmp sgt i32 %9, 0, !dbg !186
  %128 = sub nsw i32 1, %4, !dbg !186
  %129 = mul i32 %128, %9, !dbg !186
  %130 = select i1 %127, i32 0, i32 %129, !dbg !186
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 %130, i32 %4, i32 %9), metadata !85, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_minus, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !183
  %131 = add nsw i32 %4, -1, !dbg !187
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 %130, i32 %131, i32 %9), metadata !85, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !183
  %132 = mul i32 %131, %9, !dbg !188
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 %130, i32 %132), metadata !85, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !183
  %133 = add nsw i32 %130, %132, !dbg !189
  tail call void @llvm.dbg.value(metadata i32 %133, metadata !85, metadata !DIExpression()), !dbg !183
  %134 = select i1 %127, i32 0, i32 %132
  %135 = sext i32 %9 to i64, !dbg !185
  %136 = zext nneg i32 %4 to i64, !dbg !185
  %137 = sext i32 %7 to i64, !dbg !185
  %138 = sext i32 %5 to i64, !dbg !185
  %139 = getelementptr float, ptr %6, i64 %138, !dbg !185
  br label %140, !dbg !185

140:                                              ; preds = %196, %126
  %141 = phi i64 [ %136, %126 ], [ %150, %196 ]
  %142 = phi i32 [ %131, %126 ], [ %200, %196 ]
  %143 = phi i32 [ %133, %126 ], [ %198, %196 ]
  tail call void @llvm.dbg.value(metadata i64 %141, metadata !67, metadata !DIExpression()), !dbg !117
  tail call void @llvm.dbg.value(metadata i32 %143, metadata !85, metadata !DIExpression()), !dbg !183
  %144 = tail call i32 @llvm.smax.i32(i32 %5, i32 %142), !dbg !190
  %145 = sub i32 %144, %5, !dbg !190
  %146 = sext i32 %145 to i64, !dbg !190
  %147 = mul i32 %145, %9, !dbg !190
  %148 = sub i32 %147, %134, !dbg !190
  %149 = sext i32 %148 to i64, !dbg !190
  %150 = add nsw i64 %141, -1, !dbg !190
  tail call void @llvm.dbg.value(metadata i64 %150, metadata !67, metadata !DIExpression()), !dbg !117
  br i1 %11, label %151, label %156, !dbg !191

151:                                              ; preds = %140
  %152 = mul nsw i64 %150, %137, !dbg !192
  %153 = getelementptr float, ptr %139, i64 %152, !dbg !193
  %154 = load float, ptr %153, align 4, !dbg !193, !tbaa !154
  %155 = fpext float %154 to double, !dbg !193
  br label %156, !dbg !191

156:                                              ; preds = %151, %140
  %157 = phi double [ %155, %151 ], [ 1.000000e+00, %140 ], !dbg !191
  %158 = sext i32 %143 to i64, !dbg !194
  %159 = getelementptr inbounds float, ptr %8, i64 %158, !dbg !194
  %160 = load float, ptr %159, align 4, !dbg !194, !tbaa !154
  %161 = fpext float %160 to double, !dbg !194
  %162 = fmul double %157, %161, !dbg !195
  %163 = fptrunc double %162 to float, !dbg !196
  tail call void @llvm.dbg.value(metadata float %163, metadata !88, metadata !DIExpression()), !dbg !197
  %164 = icmp sgt i64 %150, %138, !dbg !198
  %165 = trunc i64 %150 to i32, !dbg !199
  %166 = sub i32 %165, %5, !dbg !199
  %167 = sext i32 %166 to i64, !dbg !200
  tail call void @llvm.dbg.value(metadata i64 %150, metadata !93, metadata !DIExpression()), !dbg !197
  %168 = select i1 %164, i64 %167, i64 0, !dbg !200
  tail call void @llvm.dbg.value(metadata !DIArgList(i64 %168, i32 %134, i32 %9), metadata !94, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !197
  tail call void @llvm.dbg.value(metadata i64 %168, metadata !92, metadata !DIExpression()), !dbg !197
  tail call void @llvm.dbg.value(metadata i64 %168, metadata !70, metadata !DIExpression()), !dbg !117
  %169 = icmp slt i64 %168, %150, !dbg !200
  br i1 %169, label %170, label %196, !dbg !203

170:                                              ; preds = %156
  tail call void @llvm.dbg.value(metadata !DIArgList(i64 %168, i32 %134, i32 %9), metadata !94, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !197
  %171 = trunc i64 %141 to i32
  %172 = sub i32 %5, %171
  %173 = add i32 %172, 1
  %174 = trunc i64 %150 to i32
  %175 = mul i32 %174, %7
  %176 = add i32 %173, %175
  br label %177, !dbg !203

177:                                              ; preds = %177, %170
  %178 = phi i64 [ %149, %170 ], [ %193, %177 ]
  %179 = phi i64 [ %146, %170 ], [ %194, %177 ]
  %180 = phi float [ %163, %170 ], [ %handler_result1, %177 ]
  tail call void @llvm.dbg.value(metadata i64 %179, metadata !70, metadata !DIExpression()), !dbg !117
  tail call void @llvm.dbg.value(metadata i64 %178, metadata !94, metadata !DIExpression()), !dbg !197
  tail call void @llvm.dbg.value(metadata float %180, metadata !88, metadata !DIExpression()), !dbg !197
  %181 = getelementptr inbounds float, ptr %8, i64 %178, !dbg !204
  %182 = load float, ptr %181, align 4, !dbg !204, !tbaa !154
  %183 = trunc i64 %179 to i32, !dbg !206
  %184 = add i32 %176, %183, !dbg !206
  %185 = sext i32 %184 to i64, !dbg !207
  %186 = getelementptr inbounds float, ptr %6, i64 %185, !dbg !207
  %187 = load float, ptr %186, align 4, !dbg !207, !tbaa !154
  %188 = fmul float %182, %187, !dbg !208
  %189 = fpext float %180 to double, !dbg !209
  %190 = fpext float %188 to double, !dbg !209
  %191 = fptrunc double %189 to float, !dbg !209
  %192 = fptrunc double %190 to float, !dbg !209
  %handler_result1 = call float @fAddHandlerFloat(float %191, float %192), !dbg !209
  tail call void @llvm.dbg.value(metadata float %handler_result1, metadata !88, metadata !DIExpression()), !dbg !197
  %193 = add i64 %178, %135, !dbg !209
  tail call void @llvm.dbg.value(metadata i64 %193, metadata !94, metadata !DIExpression()), !dbg !197
  %194 = add nsw i64 %179, 1, !dbg !210
  tail call void @llvm.dbg.value(metadata i64 %194, metadata !70, metadata !DIExpression()), !dbg !117
  %195 = icmp slt i64 %194, %150, !dbg !200
  br i1 %195, label %177, label %196, !dbg !203, !llvm.loop !211

196:                                              ; preds = %177, %156
  %197 = phi float [ %163, %156 ], [ %handler_result1, %177 ], !dbg !197
  store float %197, ptr %159, align 4, !dbg !213, !tbaa !154
  %198 = sub nsw i32 %143, %9, !dbg !214
  tail call void @llvm.dbg.value(metadata i64 %150, metadata !67, metadata !DIExpression()), !dbg !117
  tail call void @llvm.dbg.value(metadata i32 %198, metadata !85, metadata !DIExpression()), !dbg !183
  %199 = icmp sgt i64 %141, 1, !dbg !184
  %200 = add nsw i32 %142, -1, !dbg !185
  br i1 %199, label %140, label %395, !dbg !185, !llvm.loop !215

201:                                              ; preds = %120
  %202 = and i1 %40, %47, !dbg !218
  %203 = and i1 %43, %202, !dbg !218
  br i1 %203, label %207, label %204, !dbg !218

204:                                              ; preds = %201
  %205 = and i1 %46, %41, !dbg !219
  %206 = and i1 %49, %205, !dbg !219
  br i1 %206, label %207, label %321, !dbg !219

207:                                              ; preds = %204, %201
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 poison, i32 poison, i32 poison), metadata !95, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_minus, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !220
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !67, metadata !DIExpression()), !dbg !117
  %208 = icmp sgt i32 %4, 0, !dbg !221
  br i1 %208, label %209, label %395, !dbg !222

209:                                              ; preds = %207
  %210 = icmp sgt i32 %9, 0, !dbg !223
  %211 = sub nsw i32 1, %4, !dbg !223
  %212 = mul i32 %211, %9, !dbg !223
  %213 = select i1 %210, i32 0, i32 %212, !dbg !223
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 %213, i32 %4, i32 %9), metadata !95, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_minus, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !220
  %214 = add nsw i32 %4, -1, !dbg !224
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 %213, i32 %214, i32 %9), metadata !95, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !220
  %215 = mul i32 %214, %9, !dbg !225
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 %213, i32 %215), metadata !95, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !220
  %216 = add nsw i32 %213, %215, !dbg !226
  tail call void @llvm.dbg.value(metadata i32 %216, metadata !95, metadata !DIExpression()), !dbg !220
  %217 = select i1 %210, i32 0, i32 %215
  %218 = sext i32 %7 to i64, !dbg !222
  %219 = sext i32 %9 to i64, !dbg !222
  %220 = zext nneg i32 %4 to i64, !dbg !222
  %221 = sext i32 %5 to i64, !dbg !222
  %222 = add nsw i64 %220, -2, !dbg !222
  br label %223, !dbg !222

223:                                              ; preds = %312, %209
  %224 = phi i64 [ 0, %209 ], [ %320, %312 ]
  %225 = phi i64 [ %220, %209 ], [ %227, %312 ]
  %226 = phi i32 [ %216, %209 ], [ %318, %312 ]
  tail call void @llvm.dbg.value(metadata i64 %225, metadata !67, metadata !DIExpression()), !dbg !117
  tail call void @llvm.dbg.value(metadata i32 %226, metadata !95, metadata !DIExpression()), !dbg !220
  %227 = add nsw i64 %225, -1, !dbg !227
  tail call void @llvm.dbg.value(metadata i64 %227, metadata !67, metadata !DIExpression()), !dbg !117
  tail call void @llvm.dbg.value(metadata float 0.000000e+00, metadata !98, metadata !DIExpression()), !dbg !228
  %228 = icmp sgt i64 %225, %221, !dbg !229
  %229 = trunc i64 %227 to i32, !dbg !230
  %230 = sub i32 %229, %5, !dbg !230
  %231 = select i1 %228, i32 %230, i32 0, !dbg !230
  tail call void @llvm.dbg.value(metadata i32 %231, metadata !102, metadata !DIExpression()), !dbg !228
  tail call void @llvm.dbg.value(metadata i64 %227, metadata !103, metadata !DIExpression()), !dbg !228
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 %231, i32 %217, i32 %9), metadata !104, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !228
  tail call void @llvm.dbg.value(metadata i32 %231, metadata !70, metadata !DIExpression()), !dbg !117
  %232 = sext i32 %231 to i64, !dbg !231
  %233 = icmp sgt i64 %227, %232, !dbg !231
  br i1 %233, label %234, label %302, !dbg !234

234:                                              ; preds = %223
  %235 = xor i64 %224, -1, !dbg !227
  %236 = add i64 %235, %220, !dbg !227
  %237 = mul i32 %231, %9, !dbg !235
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 %237, i32 %217), metadata !104, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !228
  %238 = sub i32 %237, %217, !dbg !236
  tail call void @llvm.dbg.value(metadata i32 %238, metadata !104, metadata !DIExpression()), !dbg !228
  %239 = sext i32 %238 to i64, !dbg !234
  %240 = sub i64 %236, %232, !dbg !234
  %241 = add i64 %224, %232, !dbg !234
  %242 = and i64 %240, 1, !dbg !234
  %243 = icmp eq i64 %242, 0, !dbg !234
  br i1 %243, label %259, label %244, !dbg !234

244:                                              ; preds = %234
  tail call void @llvm.dbg.value(metadata i64 %232, metadata !70, metadata !DIExpression()), !dbg !117
  tail call void @llvm.dbg.value(metadata i64 %239, metadata !104, metadata !DIExpression()), !dbg !228
  tail call void @llvm.dbg.value(metadata float 0.000000e+00, metadata !98, metadata !DIExpression()), !dbg !228
  %245 = getelementptr inbounds float, ptr %8, i64 %239, !dbg !237
  %246 = load float, ptr %245, align 4, !dbg !237, !tbaa !154
  %247 = mul nsw i64 %232, %218, !dbg !239
  %248 = sub i64 %227, %232, !dbg !240
  %249 = shl i64 %248, 32, !dbg !241
  %250 = ashr exact i64 %249, 32, !dbg !241
  %251 = getelementptr float, ptr %6, i64 %250, !dbg !242
  %252 = getelementptr float, ptr %251, i64 %247, !dbg !242
  %253 = load float, ptr %252, align 4, !dbg !242, !tbaa !154
  %254 = fmul float %246, %253, !dbg !243
  %255 = fpext float %254 to double, !dbg !244
  %256 = fptrunc double %255 to float, !dbg !244
  %handler_result2 = call float @fAddHandlerFloat(float %256, float 0.000000e+00), !dbg !244
  tail call void @llvm.dbg.value(metadata float %handler_result2, metadata !98, metadata !DIExpression()), !dbg !228
  %257 = add nsw i64 %239, %219, !dbg !244
  tail call void @llvm.dbg.value(metadata i64 %257, metadata !104, metadata !DIExpression()), !dbg !228
  %258 = add nsw i64 %232, 1, !dbg !245
  tail call void @llvm.dbg.value(metadata i64 %258, metadata !70, metadata !DIExpression()), !dbg !117
  br label %259, !dbg !234

259:                                              ; preds = %244, %234
  %260 = phi i64 [ %239, %234 ], [ %257, %244 ]
  %261 = phi i64 [ %232, %234 ], [ %258, %244 ]
  %262 = phi float [ 0.000000e+00, %234 ], [ %handler_result2, %244 ]
  %263 = phi float [ undef, %234 ], [ %handler_result2, %244 ]
  %264 = icmp eq i64 %222, %241, !dbg !234
  br i1 %264, label %302, label %265, !dbg !234

265:                                              ; preds = %265, %259
  %266 = phi i64 [ %299, %265 ], [ %260, %259 ]
  %267 = phi i64 [ %300, %265 ], [ %261, %259 ]
  %268 = phi float [ %handler_result4, %265 ], [ %262, %259 ]
  tail call void @llvm.dbg.value(metadata i64 %267, metadata !70, metadata !DIExpression()), !dbg !117
  tail call void @llvm.dbg.value(metadata i64 %266, metadata !104, metadata !DIExpression()), !dbg !228
  tail call void @llvm.dbg.value(metadata float %268, metadata !98, metadata !DIExpression()), !dbg !228
  %269 = getelementptr inbounds float, ptr %8, i64 %266, !dbg !237
  %270 = load float, ptr %269, align 4, !dbg !237, !tbaa !154
  %271 = mul nsw i64 %267, %218, !dbg !239
  %272 = sub i64 %227, %267, !dbg !240
  %273 = shl i64 %272, 32, !dbg !241
  %274 = ashr exact i64 %273, 32, !dbg !241
  %275 = getelementptr float, ptr %6, i64 %274, !dbg !242
  %276 = getelementptr float, ptr %275, i64 %271, !dbg !242
  %277 = load float, ptr %276, align 4, !dbg !242, !tbaa !154
  %278 = fmul float %270, %277, !dbg !243
  %279 = fpext float %268 to double, !dbg !244
  %280 = fpext float %278 to double, !dbg !244
  %281 = fptrunc double %279 to float, !dbg !244
  %282 = fptrunc double %280 to float, !dbg !244
  %handler_result3 = call float @fAddHandlerFloat(float %281, float %282), !dbg !244
  tail call void @llvm.dbg.value(metadata float %handler_result3, metadata !98, metadata !DIExpression()), !dbg !228
  %283 = add i64 %266, %219, !dbg !244
  tail call void @llvm.dbg.value(metadata i64 %283, metadata !104, metadata !DIExpression()), !dbg !228
  %284 = add nsw i64 %267, 1, !dbg !245
  tail call void @llvm.dbg.value(metadata i64 %284, metadata !70, metadata !DIExpression()), !dbg !117
  tail call void @llvm.dbg.value(metadata i64 %284, metadata !70, metadata !DIExpression()), !dbg !117
  tail call void @llvm.dbg.value(metadata i64 %283, metadata !104, metadata !DIExpression()), !dbg !228
  tail call void @llvm.dbg.value(metadata float %handler_result3, metadata !98, metadata !DIExpression()), !dbg !228
  %285 = getelementptr inbounds float, ptr %8, i64 %283, !dbg !237
  %286 = load float, ptr %285, align 4, !dbg !237, !tbaa !154
  %287 = mul nsw i64 %284, %218, !dbg !239
  %288 = sub i64 %227, %284, !dbg !240
  %289 = shl i64 %288, 32, !dbg !241
  %290 = ashr exact i64 %289, 32, !dbg !241
  %291 = getelementptr float, ptr %6, i64 %290, !dbg !242
  %292 = getelementptr float, ptr %291, i64 %287, !dbg !242
  %293 = load float, ptr %292, align 4, !dbg !242, !tbaa !154
  %294 = fmul float %286, %293, !dbg !243
  %295 = fpext float %handler_result3 to double, !dbg !244
  %296 = fpext float %294 to double, !dbg !244
  %297 = fptrunc double %295 to float, !dbg !244
  %298 = fptrunc double %296 to float, !dbg !244
  %handler_result4 = call float @fAddHandlerFloat(float %297, float %298), !dbg !244
  tail call void @llvm.dbg.value(metadata float %handler_result4, metadata !98, metadata !DIExpression()), !dbg !228
  %299 = add i64 %283, %219, !dbg !244
  tail call void @llvm.dbg.value(metadata i64 %299, metadata !104, metadata !DIExpression()), !dbg !228
  %300 = add nsw i64 %267, 2, !dbg !245
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !70, metadata !DIExpression()), !dbg !117
  %301 = icmp slt i64 %300, %227, !dbg !231
  br i1 %301, label %265, label %302, !dbg !234, !llvm.loop !246

302:                                              ; preds = %265, %259, %223
  %303 = phi float [ 0.000000e+00, %223 ], [ %263, %259 ], [ %handler_result4, %265 ], !dbg !228
  %304 = sext i32 %226 to i64, !dbg !248
  %305 = getelementptr inbounds float, ptr %8, i64 %304, !dbg !248
  %306 = load float, ptr %305, align 4, !dbg !248, !tbaa !154
  br i1 %11, label %307, label %312, !dbg !250

307:                                              ; preds = %302
  %308 = mul nsw i64 %227, %218, !dbg !251
  %309 = getelementptr inbounds float, ptr %6, i64 %308, !dbg !253
  %310 = load float, ptr %309, align 4, !dbg !253, !tbaa !154
  %311 = fmul float %306, %310, !dbg !254
  br label %312, !dbg !255

312:                                              ; preds = %307, %302
  %313 = phi float [ %311, %307 ], [ %306, %302 ]
  %314 = fpext float %303 to double, !dbg !248
  %315 = fpext float %313 to double, !dbg !248
  %316 = fptrunc double %314 to float, !dbg !248
  %317 = fptrunc double %315 to float, !dbg !248
  %handler_result5 = call float @fAddHandlerFloat(float %316, float %317), !dbg !248
  store float %handler_result5, ptr %305, align 4, !dbg !248, !tbaa !154
  %318 = sub nsw i32 %226, %9, !dbg !256
  tail call void @llvm.dbg.value(metadata i64 %227, metadata !67, metadata !DIExpression()), !dbg !117
  tail call void @llvm.dbg.value(metadata i32 %318, metadata !95, metadata !DIExpression()), !dbg !220
  %319 = icmp sgt i64 %225, 1, !dbg !221
  %320 = add i64 %224, 1, !dbg !222
  br i1 %319, label %223, label %395, !dbg !222, !llvm.loop !257

321:                                              ; preds = %204
  %322 = and i1 %49, %202, !dbg !260
  %323 = and i1 %43, %205
  %324 = or i1 %322, %323, !dbg !260
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !105, metadata !DIExpression()), !dbg !261
  tail call void @llvm.dbg.value(metadata i32 0, metadata !67, metadata !DIExpression()), !dbg !117
  %325 = icmp sgt i32 %4, 0
  %326 = and i1 %324, %325, !dbg !260
  br i1 %326, label %327, label %395, !dbg !260

327:                                              ; preds = %321
  %328 = icmp sgt i32 %9, 0, !dbg !262
  %329 = sub nsw i32 1, %4, !dbg !262
  %330 = mul i32 %329, %9, !dbg !262
  %331 = select i1 %328, i32 0, i32 %330, !dbg !262
  tail call void @llvm.dbg.value(metadata i32 %331, metadata !105, metadata !DIExpression()), !dbg !261
  %332 = sext i32 %9 to i64, !dbg !263
  %333 = sext i32 %7 to i64, !dbg !263
  %334 = sext i32 %5 to i64, !dbg !263
  %335 = zext nneg i32 %4 to i64, !dbg !263
  %336 = sext i32 %331 to i64, !dbg !263
  %337 = zext nneg i32 %4 to i64, !dbg !264
  %338 = getelementptr float, ptr %6, i64 %334, !dbg !263
  br label %339, !dbg !263

339:                                              ; preds = %386, %327
  %340 = phi i64 [ %336, %327 ], [ %392, %386 ]
  %341 = phi i64 [ 0, %327 ], [ %345, %386 ]
  %342 = phi i64 [ 1, %327 ], [ %393, %386 ]
  %343 = phi i32 [ %331, %327 ], [ %344, %386 ]
  %344 = add i32 %343, %9, !dbg !263
  tail call void @llvm.dbg.value(metadata i64 %341, metadata !67, metadata !DIExpression()), !dbg !117
  tail call void @llvm.dbg.value(metadata i64 %340, metadata !105, metadata !DIExpression()), !dbg !261
  tail call void @llvm.dbg.value(metadata float 0.000000e+00, metadata !108, metadata !DIExpression()), !dbg !265
  %345 = add nuw nsw i64 %341, 1, !dbg !266
  tail call void @llvm.dbg.value(metadata i64 %345, metadata !112, metadata !DIExpression()), !dbg !265
  %346 = add nsw i64 %341, %334, !dbg !267
  %347 = icmp slt i64 %346, %335, !dbg !267
  %348 = trunc i64 %346 to i32, !dbg !267
  %349 = add i32 %348, 1, !dbg !267
  %350 = select i1 %347, i32 %349, i32 %4, !dbg !267
  tail call void @llvm.dbg.value(metadata i32 %350, metadata !113, metadata !DIExpression()), !dbg !265
  tail call void @llvm.dbg.value(metadata !DIArgList(i64 poison, i32 poison, i32 poison), metadata !114, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !265
  tail call void @llvm.dbg.value(metadata i64 %345, metadata !70, metadata !DIExpression()), !dbg !117
  %351 = sext i32 %350 to i64, !dbg !268
  %352 = icmp slt i64 %345, %351, !dbg !268
  br i1 %352, label %353, label %377, !dbg !271

353:                                              ; preds = %339
  %354 = sext i32 %344 to i64, !dbg !266
  tail call void @llvm.dbg.value(metadata !DIArgList(i64 poison, i32 poison, i32 poison), metadata !114, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !265
  %355 = zext i32 %350 to i64, !dbg !268
  br label %356, !dbg !271

356:                                              ; preds = %356, %353
  %357 = phi i64 [ %342, %353 ], [ %375, %356 ]
  %358 = phi i64 [ %354, %353 ], [ %374, %356 ]
  %359 = phi float [ 0.000000e+00, %353 ], [ %handler_result6, %356 ]
  tail call void @llvm.dbg.value(metadata i64 %358, metadata !114, metadata !DIExpression()), !dbg !265
  tail call void @llvm.dbg.value(metadata i64 %357, metadata !70, metadata !DIExpression()), !dbg !117
  tail call void @llvm.dbg.value(metadata float %359, metadata !108, metadata !DIExpression()), !dbg !265
  %360 = getelementptr inbounds float, ptr %8, i64 %358, !dbg !272
  %361 = load float, ptr %360, align 4, !dbg !272, !tbaa !154
  %362 = mul nsw i64 %357, %333, !dbg !274
  %363 = sub i64 %346, %357, !dbg !275
  %364 = shl i64 %363, 32, !dbg !276
  %365 = ashr exact i64 %364, 32, !dbg !276
  %366 = getelementptr float, ptr %6, i64 %365, !dbg !277
  %367 = getelementptr float, ptr %366, i64 %362, !dbg !277
  %368 = load float, ptr %367, align 4, !dbg !277, !tbaa !154
  %369 = fmul float %361, %368, !dbg !278
  %370 = fpext float %359 to double, !dbg !279
  %371 = fpext float %369 to double, !dbg !279
  %372 = fptrunc double %370 to float, !dbg !279
  %373 = fptrunc double %371 to float, !dbg !279
  %handler_result6 = call float @fAddHandlerFloat(float %372, float %373), !dbg !279
  tail call void @llvm.dbg.value(metadata float %handler_result6, metadata !108, metadata !DIExpression()), !dbg !265
  %374 = add i64 %358, %332, !dbg !279
  tail call void @llvm.dbg.value(metadata i64 %374, metadata !114, metadata !DIExpression()), !dbg !265
  %375 = add nuw nsw i64 %357, 1, !dbg !280
  tail call void @llvm.dbg.value(metadata i64 %375, metadata !70, metadata !DIExpression()), !dbg !117
  %376 = icmp eq i64 %375, %355, !dbg !268
  br i1 %376, label %377, label %356, !dbg !271, !llvm.loop !281

377:                                              ; preds = %356, %339
  %378 = phi float [ 0.000000e+00, %339 ], [ %handler_result6, %356 ], !dbg !265
  %379 = getelementptr inbounds float, ptr %8, i64 %340, !dbg !283
  %380 = load float, ptr %379, align 4, !dbg !283, !tbaa !154
  br i1 %11, label %381, label %386, !dbg !285

381:                                              ; preds = %377
  %382 = mul nsw i64 %341, %333, !dbg !286
  %383 = getelementptr float, ptr %338, i64 %382, !dbg !288
  %384 = load float, ptr %383, align 4, !dbg !288, !tbaa !154
  %385 = fmul float %380, %384, !dbg !289
  br label %386, !dbg !290

386:                                              ; preds = %381, %377
  %387 = phi float [ %385, %381 ], [ %380, %377 ]
  %388 = fpext float %378 to double, !dbg !283
  %389 = fpext float %387 to double, !dbg !283
  %390 = fptrunc double %388 to float, !dbg !283
  %391 = fptrunc double %389 to float, !dbg !283
  %handler_result7 = call float @fAddHandlerFloat(float %390, float %391), !dbg !283
  store float %handler_result7, ptr %379, align 4, !dbg !283, !tbaa !154
  %392 = add i64 %340, %332, !dbg !291
  tail call void @llvm.dbg.value(metadata i64 %345, metadata !67, metadata !DIExpression()), !dbg !117
  tail call void @llvm.dbg.value(metadata i64 %392, metadata !105, metadata !DIExpression()), !dbg !261
  %393 = add nuw nsw i64 %342, 1, !dbg !263
  %394 = icmp eq i64 %345, %337, !dbg !264
  br i1 %394, label %395, label %339, !dbg !263, !llvm.loop !292

395:                                              ; preds = %386, %321, %312, %207, %196, %124, %115, %51, %37
  ret void, !dbg !294
}

declare !dbg !296 void @cblas_xerbla(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #2

declare float @fAddHandlerFloat(float, float)

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!12}
!llvm.module.flags = !{!35, !36, !37, !38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 26, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "./source_tbmv_r.h", directory: "/PI-detector/external/gsl/gsl-2.5/cblas", checksumkind: CSK_MD5, checksum: "79e90e52de0e6c9d291c15fa66e42fef")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 18)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 26, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 1)
!12 = distinct !DICompileUnit(language: DW_LANG_C11, file: !13, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !14, globals: !34, splitDebugInlining: false, nameTableKind: None)
!13 = !DIFile(filename: "stbmv.c", directory: "/PI-detector/external/gsl/gsl-2.5/cblas", checksumkind: CSK_MD5, checksum: "9890b275ea5282696c8414037dc412a6")
!14 = !{!15, !21, !25, !30}
!15 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "CBLAS_ORDER", file: !16, line: 46, baseType: !17, size: 32, elements: !18)
!16 = !DIFile(filename: "../gsl/gsl_cblas.h", directory: "/PI-detector/external/gsl/gsl-2.5/cblas", checksumkind: CSK_MD5, checksum: "03ac5115536daff0db5f3e2b63839634")
!17 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!18 = !{!19, !20}
!19 = !DIEnumerator(name: "CblasRowMajor", value: 101)
!20 = !DIEnumerator(name: "CblasColMajor", value: 102)
!21 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "CBLAS_UPLO", file: !16, line: 48, baseType: !17, size: 32, elements: !22)
!22 = !{!23, !24}
!23 = !DIEnumerator(name: "CblasUpper", value: 121)
!24 = !DIEnumerator(name: "CblasLower", value: 122)
!25 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "CBLAS_TRANSPOSE", file: !16, line: 47, baseType: !17, size: 32, elements: !26)
!26 = !{!27, !28, !29}
!27 = !DIEnumerator(name: "CblasNoTrans", value: 111)
!28 = !DIEnumerator(name: "CblasTrans", value: 112)
!29 = !DIEnumerator(name: "CblasConjTrans", value: 113)
!30 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "CBLAS_DIAG", file: !16, line: 49, baseType: !17, size: 32, elements: !31)
!31 = !{!32, !33}
!32 = !DIEnumerator(name: "CblasNonUnit", value: 131)
!33 = !DIEnumerator(name: "CblasUnit", value: 132)
!34 = !{!0, !7}
!35 = !{i32 7, !"Dwarf Version", i32 5}
!36 = !{i32 2, !"Debug Info Version", i32 3}
!37 = !{i32 1, !"wchar_size", i32 4}
!38 = !{i32 8, !"PIC Level", i32 2}
!39 = !{i32 7, !"PIE Level", i32 2}
!40 = !{i32 7, !"uwtable", i32 2}
!41 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!42 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!43 = distinct !DISubprogram(name: "cblas_stbmv", scope: !13, file: !13, line: 7, type: !44, scopeLine: 11, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !12, retainedNodes: !56)
!44 = !DISubroutineType(types: !45)
!45 = !{null, !46, !47, !48, !49, !50, !50, !52, !50, !55, !50}
!46 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!47 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!48 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !25)
!49 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!50 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !51)
!51 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !54)
!54 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!56 = !{!57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !70, !71, !72, !73, !75, !78, !82, !83, !84, !85, !88, !92, !93, !94, !95, !98, !102, !103, !104, !105, !108, !112, !113, !114}
!57 = !DILocalVariable(name: "order", arg: 1, scope: !43, file: !13, line: 7, type: !46)
!58 = !DILocalVariable(name: "Uplo", arg: 2, scope: !43, file: !13, line: 7, type: !47)
!59 = !DILocalVariable(name: "TransA", arg: 3, scope: !43, file: !13, line: 8, type: !48)
!60 = !DILocalVariable(name: "Diag", arg: 4, scope: !43, file: !13, line: 8, type: !49)
!61 = !DILocalVariable(name: "N", arg: 5, scope: !43, file: !13, line: 9, type: !50)
!62 = !DILocalVariable(name: "K", arg: 6, scope: !43, file: !13, line: 9, type: !50)
!63 = !DILocalVariable(name: "A", arg: 7, scope: !43, file: !13, line: 9, type: !52)
!64 = !DILocalVariable(name: "lda", arg: 8, scope: !43, file: !13, line: 9, type: !50)
!65 = !DILocalVariable(name: "X", arg: 9, scope: !43, file: !13, line: 10, type: !55)
!66 = !DILocalVariable(name: "incX", arg: 10, scope: !43, file: !13, line: 10, type: !50)
!67 = !DILocalVariable(name: "i", scope: !68, file: !2, line: 21, type: !51)
!68 = distinct !DILexicalBlock(scope: !69, file: !2, line: 20, column: 1)
!69 = !DILexicalBlockFile(scope: !43, file: !2, discriminator: 0)
!70 = !DILocalVariable(name: "j", scope: !68, file: !2, line: 21, type: !51)
!71 = !DILocalVariable(name: "nonunit", scope: !68, file: !2, line: 23, type: !50)
!72 = !DILocalVariable(name: "Trans", scope: !68, file: !2, line: 24, type: !50)
!73 = !DILocalVariable(name: "pos", scope: !74, file: !2, line: 26, type: !51)
!74 = distinct !DILexicalBlock(scope: !68, file: !2, line: 26, column: 3)
!75 = !DILocalVariable(name: "ix", scope: !76, file: !2, line: 35, type: !51)
!76 = distinct !DILexicalBlock(scope: !77, file: !2, line: 32, column: 81)
!77 = distinct !DILexicalBlock(scope: !68, file: !2, line: 31, column: 7)
!78 = !DILocalVariable(name: "temp", scope: !79, file: !2, line: 37, type: !54)
!79 = distinct !DILexicalBlock(scope: !80, file: !2, line: 36, column: 29)
!80 = distinct !DILexicalBlock(scope: !81, file: !2, line: 36, column: 5)
!81 = distinct !DILexicalBlock(scope: !76, file: !2, line: 36, column: 5)
!82 = !DILocalVariable(name: "j_min", scope: !79, file: !2, line: 38, type: !50)
!83 = !DILocalVariable(name: "j_max", scope: !79, file: !2, line: 39, type: !50)
!84 = !DILocalVariable(name: "jx", scope: !79, file: !2, line: 40, type: !51)
!85 = !DILocalVariable(name: "ix", scope: !86, file: !2, line: 53, type: !51)
!86 = distinct !DILexicalBlock(scope: !87, file: !2, line: 51, column: 88)
!87 = distinct !DILexicalBlock(scope: !77, file: !2, line: 50, column: 14)
!88 = !DILocalVariable(name: "temp", scope: !89, file: !2, line: 55, type: !54)
!89 = distinct !DILexicalBlock(scope: !90, file: !2, line: 54, column: 32)
!90 = distinct !DILexicalBlock(scope: !91, file: !2, line: 54, column: 5)
!91 = distinct !DILexicalBlock(scope: !86, file: !2, line: 54, column: 5)
!92 = !DILocalVariable(name: "j_min", scope: !89, file: !2, line: 56, type: !50)
!93 = !DILocalVariable(name: "j_max", scope: !89, file: !2, line: 57, type: !50)
!94 = !DILocalVariable(name: "jx", scope: !89, file: !2, line: 58, type: !51)
!95 = !DILocalVariable(name: "ix", scope: !96, file: !2, line: 70, type: !51)
!96 = distinct !DILexicalBlock(scope: !97, file: !2, line: 68, column: 90)
!97 = distinct !DILexicalBlock(scope: !87, file: !2, line: 67, column: 14)
!98 = !DILocalVariable(name: "temp", scope: !99, file: !2, line: 73, type: !54)
!99 = distinct !DILexicalBlock(scope: !100, file: !2, line: 72, column: 32)
!100 = distinct !DILexicalBlock(scope: !101, file: !2, line: 72, column: 5)
!101 = distinct !DILexicalBlock(scope: !96, file: !2, line: 72, column: 5)
!102 = !DILocalVariable(name: "j_min", scope: !99, file: !2, line: 74, type: !50)
!103 = !DILocalVariable(name: "j_max", scope: !99, file: !2, line: 75, type: !50)
!104 = !DILocalVariable(name: "jx", scope: !99, file: !2, line: 76, type: !51)
!105 = !DILocalVariable(name: "ix", scope: !106, file: !2, line: 91, type: !51)
!106 = distinct !DILexicalBlock(scope: !107, file: !2, line: 89, column: 90)
!107 = distinct !DILexicalBlock(scope: !97, file: !2, line: 88, column: 14)
!108 = !DILocalVariable(name: "temp", scope: !109, file: !2, line: 93, type: !54)
!109 = distinct !DILexicalBlock(scope: !110, file: !2, line: 92, column: 29)
!110 = distinct !DILexicalBlock(scope: !111, file: !2, line: 92, column: 5)
!111 = distinct !DILexicalBlock(scope: !106, file: !2, line: 92, column: 5)
!112 = !DILocalVariable(name: "j_min", scope: !109, file: !2, line: 94, type: !50)
!113 = !DILocalVariable(name: "j_max", scope: !109, file: !2, line: 95, type: !50)
!114 = !DILocalVariable(name: "jx", scope: !109, file: !2, line: 96, type: !51)
!115 = !DILocation(line: 0, scope: !43)
!116 = !DILocation(line: 23, column: 29, scope: !68)
!117 = !DILocation(line: 0, scope: !68)
!118 = !DILocation(line: 24, column: 29, scope: !68)
!119 = !DILocation(line: 24, column: 21, scope: !68)
!120 = !DILocation(line: 0, scope: !74)
!121 = !DILocation(line: 26, column: 3, scope: !122)
!122 = distinct !DILexicalBlock(scope: !74, file: !2, line: 26, column: 3)
!123 = !DILocation(line: 26, column: 3, scope: !124)
!124 = distinct !DILexicalBlock(scope: !74, file: !2, line: 26, column: 3)
!125 = !DILocation(line: 26, column: 3, scope: !126)
!126 = distinct !DILexicalBlock(scope: !74, file: !2, line: 26, column: 3)
!127 = !DILocation(line: 26, column: 3, scope: !128)
!128 = distinct !DILexicalBlock(scope: !74, file: !2, line: 26, column: 3)
!129 = !DILocation(line: 26, column: 3, scope: !130)
!130 = distinct !DILexicalBlock(scope: !74, file: !2, line: 26, column: 3)
!131 = !DILocation(line: 26, column: 3, scope: !74)
!132 = !DILocation(line: 26, column: 3, scope: !133)
!133 = distinct !DILexicalBlock(scope: !74, file: !2, line: 26, column: 3)
!134 = !DILocation(line: 26, column: 3, scope: !135)
!135 = distinct !DILexicalBlock(scope: !74, file: !2, line: 26, column: 3)
!136 = !DILocation(line: 26, column: 3, scope: !137)
!137 = distinct !DILexicalBlock(scope: !74, file: !2, line: 26, column: 3)
!138 = !DILocation(line: 26, column: 3, scope: !139)
!139 = distinct !DILexicalBlock(scope: !74, file: !2, line: 26, column: 3)
!140 = !DILocation(line: 28, column: 9, scope: !141)
!141 = distinct !DILexicalBlock(scope: !68, file: !2, line: 28, column: 7)
!142 = !DILocation(line: 28, column: 7, scope: !68)
!143 = !DILocation(line: 31, column: 14, scope: !77)
!144 = !DILocation(line: 31, column: 31, scope: !77)
!145 = !DILocation(line: 32, column: 17, scope: !77)
!146 = !DILocation(line: 32, column: 34, scope: !77)
!147 = !DILocation(line: 0, scope: !76)
!148 = !DILocation(line: 36, column: 19, scope: !80)
!149 = !DILocation(line: 36, column: 5, scope: !81)
!150 = !DILocation(line: 35, column: 16, scope: !76)
!151 = !DILocation(line: 37, column: 20, scope: !79)
!152 = !DILocation(line: 37, column: 36, scope: !79)
!153 = !DILocation(line: 37, column: 30, scope: !79)
!154 = !{!155, !155, i64 0}
!155 = !{!"float", !156, i64 0}
!156 = !{!"omnipotent char", !157, i64 0}
!157 = !{!"Simple C/C++ TBAA"}
!158 = !DILocation(line: 37, column: 54, scope: !79)
!159 = !DILocation(line: 37, column: 52, scope: !79)
!160 = !DILocation(line: 37, column: 19, scope: !79)
!161 = !DILocation(line: 0, scope: !79)
!162 = !DILocation(line: 38, column: 29, scope: !79)
!163 = !DILocation(line: 39, column: 27, scope: !79)
!164 = !DILocation(line: 42, column: 25, scope: !165)
!165 = distinct !DILexicalBlock(scope: !166, file: !2, line: 42, column: 7)
!166 = distinct !DILexicalBlock(scope: !79, file: !2, line: 42, column: 7)
!167 = !DILocation(line: 42, column: 7, scope: !166)
!168 = !DILocation(line: 43, column: 17, scope: !169)
!169 = distinct !DILexicalBlock(scope: !165, file: !2, line: 42, column: 39)
!170 = !DILocation(line: 43, column: 35, scope: !169)
!171 = !DILocation(line: 43, column: 25, scope: !169)
!172 = !DILocation(line: 43, column: 23, scope: !169)
!173 = !DILocation(line: 44, column: 12, scope: !169)
!174 = !DILocation(line: 42, column: 35, scope: !165)
!175 = distinct !{!175, !167, !176, !177}
!176 = !DILocation(line: 45, column: 7, scope: !166)
!177 = !{!"llvm.loop.mustprogress"}
!178 = !DILocation(line: 47, column: 13, scope: !79)
!179 = !DILocation(line: 48, column: 10, scope: !79)
!180 = distinct !{!180, !149, !181, !177}
!181 = !DILocation(line: 49, column: 5, scope: !81)
!182 = !DILocation(line: 50, column: 38, scope: !87)
!183 = !DILocation(line: 0, scope: !86)
!184 = !DILocation(line: 54, column: 19, scope: !90)
!185 = !DILocation(line: 54, column: 23, scope: !90)
!186 = !DILocation(line: 53, column: 16, scope: !86)
!187 = !DILocation(line: 53, column: 37, scope: !86)
!188 = !DILocation(line: 53, column: 42, scope: !86)
!189 = !DILocation(line: 53, column: 32, scope: !86)
!190 = !DILocation(line: 54, column: 27, scope: !90)
!191 = !DILocation(line: 55, column: 20, scope: !89)
!192 = !DILocation(line: 55, column: 36, scope: !89)
!193 = !DILocation(line: 55, column: 30, scope: !89)
!194 = !DILocation(line: 55, column: 54, scope: !89)
!195 = !DILocation(line: 55, column: 52, scope: !89)
!196 = !DILocation(line: 55, column: 19, scope: !89)
!197 = !DILocation(line: 0, scope: !89)
!198 = !DILocation(line: 56, column: 30, scope: !89)
!199 = !DILocation(line: 56, column: 28, scope: !89)
!200 = !DILocation(line: 59, column: 25, scope: !201)
!201 = distinct !DILexicalBlock(scope: !202, file: !2, line: 59, column: 7)
!202 = distinct !DILexicalBlock(scope: !89, file: !2, line: 59, column: 7)
!203 = !DILocation(line: 59, column: 7, scope: !202)
!204 = !DILocation(line: 60, column: 17, scope: !205)
!205 = distinct !DILexicalBlock(scope: !201, file: !2, line: 59, column: 39)
!206 = !DILocation(line: 60, column: 35, scope: !205)
!207 = !DILocation(line: 60, column: 25, scope: !205)
!208 = !DILocation(line: 60, column: 23, scope: !205)
!209 = !DILocation(line: 61, column: 12, scope: !205)
!210 = !DILocation(line: 59, column: 35, scope: !201)
!211 = distinct !{!211, !203, !212, !177}
!212 = !DILocation(line: 62, column: 7, scope: !202)
!213 = !DILocation(line: 63, column: 13, scope: !89)
!214 = !DILocation(line: 64, column: 10, scope: !89)
!215 = distinct !{!215, !216, !217, !177}
!216 = !DILocation(line: 54, column: 5, scope: !91)
!217 = !DILocation(line: 65, column: 5, scope: !91)
!218 = !DILocation(line: 67, column: 38, scope: !97)
!219 = !DILocation(line: 68, column: 41, scope: !97)
!220 = !DILocation(line: 0, scope: !96)
!221 = !DILocation(line: 72, column: 19, scope: !100)
!222 = !DILocation(line: 72, column: 23, scope: !100)
!223 = !DILocation(line: 70, column: 16, scope: !96)
!224 = !DILocation(line: 70, column: 37, scope: !96)
!225 = !DILocation(line: 70, column: 42, scope: !96)
!226 = !DILocation(line: 70, column: 32, scope: !96)
!227 = !DILocation(line: 72, column: 27, scope: !100)
!228 = !DILocation(line: 0, scope: !99)
!229 = !DILocation(line: 74, column: 30, scope: !99)
!230 = !DILocation(line: 74, column: 28, scope: !99)
!231 = !DILocation(line: 77, column: 25, scope: !232)
!232 = distinct !DILexicalBlock(scope: !233, file: !2, line: 77, column: 7)
!233 = distinct !DILexicalBlock(scope: !99, file: !2, line: 77, column: 7)
!234 = !DILocation(line: 77, column: 7, scope: !233)
!235 = !DILocation(line: 76, column: 42, scope: !99)
!236 = !DILocation(line: 76, column: 34, scope: !99)
!237 = !DILocation(line: 78, column: 17, scope: !238)
!238 = distinct !DILexicalBlock(scope: !232, file: !2, line: 77, column: 39)
!239 = !DILocation(line: 78, column: 31, scope: !238)
!240 = !DILocation(line: 78, column: 40, scope: !238)
!241 = !DILocation(line: 78, column: 35, scope: !238)
!242 = !DILocation(line: 78, column: 25, scope: !238)
!243 = !DILocation(line: 78, column: 23, scope: !238)
!244 = !DILocation(line: 79, column: 12, scope: !238)
!245 = !DILocation(line: 77, column: 35, scope: !232)
!246 = distinct !{!246, !234, !247, !177}
!247 = !DILocation(line: 80, column: 7, scope: !233)
!248 = !DILocation(line: 0, scope: !249)
!249 = distinct !DILexicalBlock(scope: !99, file: !2, line: 81, column: 11)
!250 = !DILocation(line: 81, column: 11, scope: !99)
!251 = !DILocation(line: 82, column: 38, scope: !252)
!252 = distinct !DILexicalBlock(scope: !249, file: !2, line: 81, column: 20)
!253 = !DILocation(line: 82, column: 32, scope: !252)
!254 = !DILocation(line: 82, column: 30, scope: !252)
!255 = !DILocation(line: 83, column: 7, scope: !252)
!256 = !DILocation(line: 86, column: 10, scope: !99)
!257 = distinct !{!257, !258, !259, !177}
!258 = !DILocation(line: 72, column: 5, scope: !101)
!259 = !DILocation(line: 87, column: 5, scope: !101)
!260 = !DILocation(line: 88, column: 38, scope: !107)
!261 = !DILocation(line: 0, scope: !106)
!262 = !DILocation(line: 91, column: 16, scope: !106)
!263 = !DILocation(line: 92, column: 5, scope: !111)
!264 = !DILocation(line: 92, column: 19, scope: !110)
!265 = !DILocation(line: 0, scope: !109)
!266 = !DILocation(line: 94, column: 29, scope: !109)
!267 = !DILocation(line: 95, column: 27, scope: !109)
!268 = !DILocation(line: 97, column: 25, scope: !269)
!269 = distinct !DILexicalBlock(scope: !270, file: !2, line: 97, column: 7)
!270 = distinct !DILexicalBlock(scope: !109, file: !2, line: 97, column: 7)
!271 = !DILocation(line: 97, column: 7, scope: !270)
!272 = !DILocation(line: 98, column: 17, scope: !273)
!273 = distinct !DILexicalBlock(scope: !269, file: !2, line: 97, column: 39)
!274 = !DILocation(line: 98, column: 31, scope: !273)
!275 = !DILocation(line: 98, column: 44, scope: !273)
!276 = !DILocation(line: 98, column: 35, scope: !273)
!277 = !DILocation(line: 98, column: 25, scope: !273)
!278 = !DILocation(line: 98, column: 23, scope: !273)
!279 = !DILocation(line: 99, column: 12, scope: !273)
!280 = !DILocation(line: 97, column: 35, scope: !269)
!281 = distinct !{!281, !271, !282, !177}
!282 = !DILocation(line: 100, column: 7, scope: !270)
!283 = !DILocation(line: 0, scope: !284)
!284 = distinct !DILexicalBlock(scope: !109, file: !2, line: 101, column: 11)
!285 = !DILocation(line: 101, column: 11, scope: !109)
!286 = !DILocation(line: 102, column: 38, scope: !287)
!287 = distinct !DILexicalBlock(scope: !284, file: !2, line: 101, column: 20)
!288 = !DILocation(line: 102, column: 32, scope: !287)
!289 = !DILocation(line: 102, column: 30, scope: !287)
!290 = !DILocation(line: 103, column: 7, scope: !287)
!291 = !DILocation(line: 106, column: 10, scope: !109)
!292 = distinct !{!292, !263, !293, !177}
!293 = !DILocation(line: 107, column: 5, scope: !111)
!294 = !DILocation(line: 15, column: 1, scope: !295)
!295 = !DILexicalBlockFile(scope: !43, file: !13, discriminator: 0)
!296 = !DISubprogram(name: "cblas_xerbla", scope: !16, file: !16, line: 602, type: !297, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!297 = !DISubroutineType(types: !298)
!298 = !{null, !51, !299, !299, null}
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!300 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
