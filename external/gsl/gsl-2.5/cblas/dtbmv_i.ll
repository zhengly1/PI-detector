; ModuleID = 'dtbmv.ll'
source_filename = "dtbmv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"./source_tbmv_r.h\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !7

; Function Attrs: nounwind uwtable
define dso_local void @cblas_dtbmv(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr nocapture noundef readonly %6, i32 noundef %7, ptr nocapture noundef %8, i32 noundef %9) local_unnamed_addr #0 !dbg !43 {
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
  br i1 %38, label %359, label %39, !dbg !142

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
  br i1 %50, label %51, label %113, !dbg !146

51:                                               ; preds = %45, %39
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !75, metadata !DIExpression()), !dbg !147
  tail call void @llvm.dbg.value(metadata i32 0, metadata !67, metadata !DIExpression()), !dbg !117
  %52 = icmp sgt i32 %4, 0, !dbg !148
  br i1 %52, label %53, label %359, !dbg !149

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

65:                                               ; preds = %108, %53
  %66 = phi i64 [ %62, %53 ], [ %110, %108 ]
  %67 = phi i64 [ 0, %53 ], [ %81, %108 ]
  %68 = phi i32 [ %57, %53 ], [ %70, %108 ]
  %69 = phi i64 [ 1, %53 ], [ %111, %108 ]
  %70 = add i32 %68, %9, !dbg !149
  tail call void @llvm.dbg.value(metadata i64 %67, metadata !67, metadata !DIExpression()), !dbg !117
  tail call void @llvm.dbg.value(metadata i64 %66, metadata !75, metadata !DIExpression()), !dbg !147
  %71 = sext i32 %70 to i64, !dbg !151
  br i1 %11, label %72, label %76, !dbg !151

72:                                               ; preds = %65
  %73 = mul nsw i64 %67, %59, !dbg !152
  %74 = getelementptr inbounds double, ptr %6, i64 %73, !dbg !153
  %75 = load double, ptr %74, align 8, !dbg !153, !tbaa !154
  br label %76, !dbg !151

76:                                               ; preds = %72, %65
  %77 = phi double [ %75, %72 ], [ 1.000000e+00, %65 ], !dbg !151
  %78 = getelementptr inbounds double, ptr %8, i64 %66, !dbg !158
  %79 = load double, ptr %78, align 8, !dbg !158, !tbaa !154
  %80 = fmul double %77, %79, !dbg !159
  tail call void @llvm.dbg.value(metadata double %80, metadata !78, metadata !DIExpression()), !dbg !160
  %81 = add nuw nsw i64 %67, 1, !dbg !161
  tail call void @llvm.dbg.value(metadata i64 %81, metadata !82, metadata !DIExpression()), !dbg !160
  %82 = add nsw i64 %67, %60, !dbg !162
  %83 = icmp slt i64 %82, %61, !dbg !162
  %84 = trunc i64 %82 to i32, !dbg !162
  %85 = add i32 %84, 1, !dbg !162
  %86 = select i1 %83, i32 %85, i32 %4, !dbg !162
  tail call void @llvm.dbg.value(metadata i32 %86, metadata !83, metadata !DIExpression()), !dbg !160
  tail call void @llvm.dbg.value(metadata !DIArgList(i64 poison, i32 poison, i32 poison), metadata !84, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !160
  tail call void @llvm.dbg.value(metadata i64 %81, metadata !70, metadata !DIExpression()), !dbg !117
  tail call void @llvm.dbg.value(metadata double %80, metadata !78, metadata !DIExpression()), !dbg !160
  %87 = sext i32 %86 to i64, !dbg !163
  %88 = icmp slt i64 %81, %87, !dbg !163
  br i1 %88, label %89, label %108, !dbg !166

89:                                               ; preds = %76
  tail call void @llvm.dbg.value(metadata !DIArgList(i64 poison, i32 poison, i32 poison), metadata !84, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !160
  tail call void @llvm.dbg.value(metadata !DIArgList(i64 poison, i32 poison, i32 poison), metadata !84, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !160
  %90 = trunc i64 %67 to i32
  %91 = mul i32 %64, %90
  %92 = zext i32 %86 to i64, !dbg !163
  br label %93, !dbg !166

93:                                               ; preds = %93, %89
  %94 = phi i64 [ %71, %89 ], [ %105, %93 ]
  %95 = phi i64 [ %69, %89 ], [ %106, %93 ]
  %96 = phi double [ %80, %89 ], [ %handler_result, %93 ]
  tail call void @llvm.dbg.value(metadata i64 %95, metadata !70, metadata !DIExpression()), !dbg !117
  tail call void @llvm.dbg.value(metadata double %96, metadata !78, metadata !DIExpression()), !dbg !160
  tail call void @llvm.dbg.value(metadata i64 %94, metadata !84, metadata !DIExpression()), !dbg !160
  %97 = getelementptr inbounds double, ptr %8, i64 %94, !dbg !167
  %98 = load double, ptr %97, align 8, !dbg !167, !tbaa !154
  %99 = trunc i64 %95 to i32, !dbg !169
  %100 = add i32 %91, %99, !dbg !169
  %101 = sext i32 %100 to i64, !dbg !170
  %102 = getelementptr inbounds double, ptr %6, i64 %101, !dbg !170
  %103 = load double, ptr %102, align 8, !dbg !170, !tbaa !154
  %104 = fmul double %98, %103, !dbg !171
  %handler_result = call double @fAddHandlerDouble(double %96, double %104), !dbg !172
  tail call void @llvm.dbg.value(metadata double %handler_result, metadata !78, metadata !DIExpression()), !dbg !160
  %105 = add i64 %94, %58, !dbg !172
  tail call void @llvm.dbg.value(metadata i64 %105, metadata !84, metadata !DIExpression()), !dbg !160
  %106 = add nuw nsw i64 %95, 1, !dbg !173
  tail call void @llvm.dbg.value(metadata i64 %106, metadata !70, metadata !DIExpression()), !dbg !117
  %107 = icmp eq i64 %106, %92, !dbg !163
  br i1 %107, label %108, label %93, !dbg !166, !llvm.loop !174

108:                                              ; preds = %93, %76
  %109 = phi double [ %80, %76 ], [ %handler_result, %93 ], !dbg !160
  store double %109, ptr %78, align 8, !dbg !177, !tbaa !154
  %110 = add i64 %66, %58, !dbg !178
  tail call void @llvm.dbg.value(metadata i64 %81, metadata !67, metadata !DIExpression()), !dbg !117
  tail call void @llvm.dbg.value(metadata i64 %110, metadata !75, metadata !DIExpression()), !dbg !147
  %111 = add nuw nsw i64 %69, 1, !dbg !149
  %112 = icmp eq i64 %81, %63, !dbg !148
  br i1 %112, label %359, label %65, !dbg !149, !llvm.loop !179

113:                                              ; preds = %45
  %114 = and i1 %49, %42, !dbg !181
  %115 = and i1 %43, %48
  %116 = or i1 %114, %115, !dbg !181
  br i1 %116, label %117, label %187, !dbg !181

117:                                              ; preds = %113
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 poison, i32 poison, i32 poison), metadata !85, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_minus, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !182
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !67, metadata !DIExpression()), !dbg !117
  %118 = icmp sgt i32 %4, 0, !dbg !183
  br i1 %118, label %119, label %359, !dbg !184

119:                                              ; preds = %117
  %120 = icmp sgt i32 %9, 0, !dbg !185
  %121 = sub nsw i32 1, %4, !dbg !185
  %122 = mul i32 %121, %9, !dbg !185
  %123 = select i1 %120, i32 0, i32 %122, !dbg !185
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 %123, i32 %4, i32 %9), metadata !85, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_minus, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !182
  %124 = add nsw i32 %4, -1, !dbg !186
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 %123, i32 %124, i32 %9), metadata !85, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !182
  %125 = mul i32 %124, %9, !dbg !187
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 %123, i32 %125), metadata !85, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !182
  %126 = add nsw i32 %123, %125, !dbg !188
  tail call void @llvm.dbg.value(metadata i32 %126, metadata !85, metadata !DIExpression()), !dbg !182
  %127 = select i1 %120, i32 0, i32 %125
  %128 = sext i32 %9 to i64, !dbg !184
  %129 = zext nneg i32 %4 to i64, !dbg !184
  %130 = sext i32 %7 to i64, !dbg !184
  %131 = sext i32 %5 to i64, !dbg !184
  %132 = getelementptr double, ptr %6, i64 %131, !dbg !184
  br label %133, !dbg !184

133:                                              ; preds = %182, %119
  %134 = phi i64 [ %129, %119 ], [ %143, %182 ]
  %135 = phi i32 [ %124, %119 ], [ %186, %182 ]
  %136 = phi i32 [ %126, %119 ], [ %184, %182 ]
  tail call void @llvm.dbg.value(metadata i64 %134, metadata !67, metadata !DIExpression()), !dbg !117
  tail call void @llvm.dbg.value(metadata i32 %136, metadata !85, metadata !DIExpression()), !dbg !182
  %137 = tail call i32 @llvm.smax.i32(i32 %5, i32 %135), !dbg !189
  %138 = sub i32 %137, %5, !dbg !189
  %139 = sext i32 %138 to i64, !dbg !189
  %140 = mul i32 %138, %9, !dbg !189
  %141 = sub i32 %140, %127, !dbg !189
  %142 = sext i32 %141 to i64, !dbg !189
  %143 = add nsw i64 %134, -1, !dbg !189
  tail call void @llvm.dbg.value(metadata i64 %143, metadata !67, metadata !DIExpression()), !dbg !117
  br i1 %11, label %144, label %148, !dbg !190

144:                                              ; preds = %133
  %145 = mul nsw i64 %143, %130, !dbg !191
  %146 = getelementptr double, ptr %132, i64 %145, !dbg !192
  %147 = load double, ptr %146, align 8, !dbg !192, !tbaa !154
  br label %148, !dbg !190

148:                                              ; preds = %144, %133
  %149 = phi double [ %147, %144 ], [ 1.000000e+00, %133 ], !dbg !190
  %150 = sext i32 %136 to i64, !dbg !193
  %151 = getelementptr inbounds double, ptr %8, i64 %150, !dbg !193
  %152 = load double, ptr %151, align 8, !dbg !193, !tbaa !154
  %153 = fmul double %149, %152, !dbg !194
  tail call void @llvm.dbg.value(metadata double %153, metadata !88, metadata !DIExpression()), !dbg !195
  %154 = icmp sgt i64 %143, %131, !dbg !196
  %155 = trunc i64 %143 to i32, !dbg !197
  %156 = sub i32 %155, %5, !dbg !197
  %157 = sext i32 %156 to i64, !dbg !198
  tail call void @llvm.dbg.value(metadata i64 %143, metadata !93, metadata !DIExpression()), !dbg !195
  %158 = select i1 %154, i64 %157, i64 0, !dbg !198
  tail call void @llvm.dbg.value(metadata !DIArgList(i64 %158, i32 %127, i32 %9), metadata !94, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !195
  tail call void @llvm.dbg.value(metadata i64 %158, metadata !92, metadata !DIExpression()), !dbg !195
  tail call void @llvm.dbg.value(metadata i64 %158, metadata !70, metadata !DIExpression()), !dbg !117
  %159 = icmp slt i64 %158, %143, !dbg !198
  br i1 %159, label %160, label %182, !dbg !201

160:                                              ; preds = %148
  tail call void @llvm.dbg.value(metadata !DIArgList(i64 %158, i32 %127, i32 %9), metadata !94, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !195
  %161 = trunc i64 %134 to i32
  %162 = sub i32 %5, %161
  %163 = add i32 %162, 1
  %164 = trunc i64 %143 to i32
  %165 = mul i32 %164, %7
  %166 = add i32 %163, %165
  br label %167, !dbg !201

167:                                              ; preds = %167, %160
  %168 = phi i64 [ %142, %160 ], [ %179, %167 ]
  %169 = phi i64 [ %139, %160 ], [ %180, %167 ]
  %170 = phi double [ %153, %160 ], [ %handler_result1, %167 ]
  tail call void @llvm.dbg.value(metadata i64 %169, metadata !70, metadata !DIExpression()), !dbg !117
  tail call void @llvm.dbg.value(metadata i64 %168, metadata !94, metadata !DIExpression()), !dbg !195
  tail call void @llvm.dbg.value(metadata double %170, metadata !88, metadata !DIExpression()), !dbg !195
  %171 = getelementptr inbounds double, ptr %8, i64 %168, !dbg !202
  %172 = load double, ptr %171, align 8, !dbg !202, !tbaa !154
  %173 = trunc i64 %169 to i32, !dbg !204
  %174 = add i32 %166, %173, !dbg !204
  %175 = sext i32 %174 to i64, !dbg !205
  %176 = getelementptr inbounds double, ptr %6, i64 %175, !dbg !205
  %177 = load double, ptr %176, align 8, !dbg !205, !tbaa !154
  %178 = fmul double %172, %177, !dbg !206
  %handler_result1 = call double @fAddHandlerDouble(double %170, double %178), !dbg !207
  tail call void @llvm.dbg.value(metadata double %handler_result1, metadata !88, metadata !DIExpression()), !dbg !195
  %179 = add i64 %168, %128, !dbg !207
  tail call void @llvm.dbg.value(metadata i64 %179, metadata !94, metadata !DIExpression()), !dbg !195
  %180 = add nsw i64 %169, 1, !dbg !208
  tail call void @llvm.dbg.value(metadata i64 %180, metadata !70, metadata !DIExpression()), !dbg !117
  %181 = icmp slt i64 %180, %143, !dbg !198
  br i1 %181, label %167, label %182, !dbg !201, !llvm.loop !209

182:                                              ; preds = %167, %148
  %183 = phi double [ %153, %148 ], [ %handler_result1, %167 ], !dbg !195
  store double %183, ptr %151, align 8, !dbg !211, !tbaa !154
  %184 = sub nsw i32 %136, %9, !dbg !212
  tail call void @llvm.dbg.value(metadata i64 %143, metadata !67, metadata !DIExpression()), !dbg !117
  tail call void @llvm.dbg.value(metadata i32 %184, metadata !85, metadata !DIExpression()), !dbg !182
  %185 = icmp sgt i64 %134, 1, !dbg !183
  %186 = add nsw i32 %135, -1, !dbg !184
  br i1 %185, label %133, label %359, !dbg !184, !llvm.loop !213

187:                                              ; preds = %113
  %188 = and i1 %40, %47, !dbg !216
  %189 = and i1 %43, %188, !dbg !216
  br i1 %189, label %193, label %190, !dbg !216

190:                                              ; preds = %187
  %191 = and i1 %46, %41, !dbg !217
  %192 = and i1 %49, %191, !dbg !217
  br i1 %192, label %193, label %293, !dbg !217

193:                                              ; preds = %190, %187
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 poison, i32 poison, i32 poison), metadata !95, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_minus, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !218
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !67, metadata !DIExpression()), !dbg !117
  %194 = icmp sgt i32 %4, 0, !dbg !219
  br i1 %194, label %195, label %359, !dbg !220

195:                                              ; preds = %193
  %196 = icmp sgt i32 %9, 0, !dbg !221
  %197 = sub nsw i32 1, %4, !dbg !221
  %198 = mul i32 %197, %9, !dbg !221
  %199 = select i1 %196, i32 0, i32 %198, !dbg !221
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 %199, i32 %4, i32 %9), metadata !95, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_minus, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !218
  %200 = add nsw i32 %4, -1, !dbg !222
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 %199, i32 %200, i32 %9), metadata !95, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !218
  %201 = mul i32 %200, %9, !dbg !223
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 %199, i32 %201), metadata !95, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !218
  %202 = add nsw i32 %199, %201, !dbg !224
  tail call void @llvm.dbg.value(metadata i32 %202, metadata !95, metadata !DIExpression()), !dbg !218
  %203 = select i1 %196, i32 0, i32 %201
  %204 = sext i32 %7 to i64, !dbg !220
  %205 = sext i32 %9 to i64, !dbg !220
  %206 = zext nneg i32 %4 to i64, !dbg !220
  %207 = sext i32 %5 to i64, !dbg !220
  %208 = add nsw i64 %206, -2, !dbg !220
  br label %209, !dbg !220

209:                                              ; preds = %288, %195
  %210 = phi i64 [ 0, %195 ], [ %292, %288 ]
  %211 = phi i64 [ %206, %195 ], [ %213, %288 ]
  %212 = phi i32 [ %202, %195 ], [ %290, %288 ]
  tail call void @llvm.dbg.value(metadata i64 %211, metadata !67, metadata !DIExpression()), !dbg !117
  tail call void @llvm.dbg.value(metadata i32 %212, metadata !95, metadata !DIExpression()), !dbg !218
  %213 = add nsw i64 %211, -1, !dbg !225
  tail call void @llvm.dbg.value(metadata i64 %213, metadata !67, metadata !DIExpression()), !dbg !117
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !98, metadata !DIExpression()), !dbg !226
  %214 = icmp sgt i64 %211, %207, !dbg !227
  %215 = trunc i64 %213 to i32, !dbg !228
  %216 = sub i32 %215, %5, !dbg !228
  %217 = select i1 %214, i32 %216, i32 0, !dbg !228
  tail call void @llvm.dbg.value(metadata i32 %217, metadata !102, metadata !DIExpression()), !dbg !226
  tail call void @llvm.dbg.value(metadata i64 %213, metadata !103, metadata !DIExpression()), !dbg !226
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 %217, i32 %203, i32 %9), metadata !104, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !226
  tail call void @llvm.dbg.value(metadata i32 %217, metadata !70, metadata !DIExpression()), !dbg !117
  %218 = sext i32 %217 to i64, !dbg !229
  %219 = icmp sgt i64 %213, %218, !dbg !229
  br i1 %219, label %220, label %278, !dbg !232

220:                                              ; preds = %209
  %221 = xor i64 %210, -1, !dbg !225
  %222 = add i64 %221, %206, !dbg !225
  %223 = mul i32 %217, %9, !dbg !233
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 %223, i32 %203), metadata !104, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !226
  %224 = sub i32 %223, %203, !dbg !234
  tail call void @llvm.dbg.value(metadata i32 %224, metadata !104, metadata !DIExpression()), !dbg !226
  %225 = sext i32 %224 to i64, !dbg !232
  %226 = sub i64 %222, %218, !dbg !232
  %227 = add i64 %210, %218, !dbg !232
  %228 = and i64 %226, 1, !dbg !232
  %229 = icmp eq i64 %228, 0, !dbg !232
  br i1 %229, label %243, label %230, !dbg !232

230:                                              ; preds = %220
  tail call void @llvm.dbg.value(metadata i64 %218, metadata !70, metadata !DIExpression()), !dbg !117
  tail call void @llvm.dbg.value(metadata i64 %225, metadata !104, metadata !DIExpression()), !dbg !226
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !98, metadata !DIExpression()), !dbg !226
  %231 = getelementptr inbounds double, ptr %8, i64 %225, !dbg !235
  %232 = load double, ptr %231, align 8, !dbg !235, !tbaa !154
  %233 = mul nsw i64 %218, %204, !dbg !237
  %234 = sub i64 %213, %218, !dbg !238
  %235 = shl i64 %234, 32, !dbg !239
  %236 = ashr exact i64 %235, 32, !dbg !239
  %237 = getelementptr double, ptr %6, i64 %236, !dbg !240
  %238 = getelementptr double, ptr %237, i64 %233, !dbg !240
  %239 = load double, ptr %238, align 8, !dbg !240, !tbaa !154
  %240 = fmul double %232, %239, !dbg !241
  %handler_result2 = call double @fAddHandlerDouble(double %240, double 0.000000e+00), !dbg !242
  tail call void @llvm.dbg.value(metadata double %handler_result2, metadata !98, metadata !DIExpression()), !dbg !226
  %241 = add nsw i64 %225, %205, !dbg !242
  tail call void @llvm.dbg.value(metadata i64 %241, metadata !104, metadata !DIExpression()), !dbg !226
  %242 = add nsw i64 %218, 1, !dbg !243
  tail call void @llvm.dbg.value(metadata i64 %242, metadata !70, metadata !DIExpression()), !dbg !117
  br label %243, !dbg !232

243:                                              ; preds = %230, %220
  %244 = phi i64 [ %225, %220 ], [ %241, %230 ]
  %245 = phi i64 [ %218, %220 ], [ %242, %230 ]
  %246 = phi double [ 0.000000e+00, %220 ], [ %handler_result2, %230 ]
  %247 = phi double [ undef, %220 ], [ %handler_result2, %230 ]
  %248 = icmp eq i64 %208, %227, !dbg !232
  br i1 %248, label %278, label %249, !dbg !232

249:                                              ; preds = %249, %243
  %250 = phi i64 [ %275, %249 ], [ %244, %243 ]
  %251 = phi i64 [ %276, %249 ], [ %245, %243 ]
  %252 = phi double [ %handler_result4, %249 ], [ %246, %243 ]
  tail call void @llvm.dbg.value(metadata i64 %251, metadata !70, metadata !DIExpression()), !dbg !117
  tail call void @llvm.dbg.value(metadata i64 %250, metadata !104, metadata !DIExpression()), !dbg !226
  tail call void @llvm.dbg.value(metadata double %252, metadata !98, metadata !DIExpression()), !dbg !226
  %253 = getelementptr inbounds double, ptr %8, i64 %250, !dbg !235
  %254 = load double, ptr %253, align 8, !dbg !235, !tbaa !154
  %255 = mul nsw i64 %251, %204, !dbg !237
  %256 = sub i64 %213, %251, !dbg !238
  %257 = shl i64 %256, 32, !dbg !239
  %258 = ashr exact i64 %257, 32, !dbg !239
  %259 = getelementptr double, ptr %6, i64 %258, !dbg !240
  %260 = getelementptr double, ptr %259, i64 %255, !dbg !240
  %261 = load double, ptr %260, align 8, !dbg !240, !tbaa !154
  %262 = fmul double %254, %261, !dbg !241
  %handler_result3 = call double @fAddHandlerDouble(double %252, double %262), !dbg !242
  tail call void @llvm.dbg.value(metadata double %handler_result3, metadata !98, metadata !DIExpression()), !dbg !226
  %263 = add i64 %250, %205, !dbg !242
  tail call void @llvm.dbg.value(metadata i64 %263, metadata !104, metadata !DIExpression()), !dbg !226
  %264 = add nsw i64 %251, 1, !dbg !243
  tail call void @llvm.dbg.value(metadata i64 %264, metadata !70, metadata !DIExpression()), !dbg !117
  tail call void @llvm.dbg.value(metadata i64 %264, metadata !70, metadata !DIExpression()), !dbg !117
  tail call void @llvm.dbg.value(metadata i64 %263, metadata !104, metadata !DIExpression()), !dbg !226
  tail call void @llvm.dbg.value(metadata double %handler_result3, metadata !98, metadata !DIExpression()), !dbg !226
  %265 = getelementptr inbounds double, ptr %8, i64 %263, !dbg !235
  %266 = load double, ptr %265, align 8, !dbg !235, !tbaa !154
  %267 = mul nsw i64 %264, %204, !dbg !237
  %268 = sub i64 %213, %264, !dbg !238
  %269 = shl i64 %268, 32, !dbg !239
  %270 = ashr exact i64 %269, 32, !dbg !239
  %271 = getelementptr double, ptr %6, i64 %270, !dbg !240
  %272 = getelementptr double, ptr %271, i64 %267, !dbg !240
  %273 = load double, ptr %272, align 8, !dbg !240, !tbaa !154
  %274 = fmul double %266, %273, !dbg !241
  %handler_result4 = call double @fAddHandlerDouble(double %handler_result3, double %274), !dbg !242
  tail call void @llvm.dbg.value(metadata double %handler_result4, metadata !98, metadata !DIExpression()), !dbg !226
  %275 = add i64 %263, %205, !dbg !242
  tail call void @llvm.dbg.value(metadata i64 %275, metadata !104, metadata !DIExpression()), !dbg !226
  %276 = add nsw i64 %251, 2, !dbg !243
  tail call void @llvm.dbg.value(metadata i64 %276, metadata !70, metadata !DIExpression()), !dbg !117
  %277 = icmp slt i64 %276, %213, !dbg !229
  br i1 %277, label %249, label %278, !dbg !232, !llvm.loop !244

278:                                              ; preds = %249, %243, %209
  %279 = phi double [ 0.000000e+00, %209 ], [ %247, %243 ], [ %handler_result4, %249 ], !dbg !226
  %280 = sext i32 %212 to i64, !dbg !246
  %281 = getelementptr inbounds double, ptr %8, i64 %280, !dbg !246
  %282 = load double, ptr %281, align 8, !dbg !246, !tbaa !154
  br i1 %11, label %283, label %288, !dbg !248

283:                                              ; preds = %278
  %284 = mul nsw i64 %213, %204, !dbg !249
  %285 = getelementptr inbounds double, ptr %6, i64 %284, !dbg !251
  %286 = load double, ptr %285, align 8, !dbg !251, !tbaa !154
  %287 = fmul double %282, %286, !dbg !252
  br label %288, !dbg !253

288:                                              ; preds = %283, %278
  %289 = phi double [ %287, %283 ], [ %282, %278 ]
  %handler_result5 = call double @fAddHandlerDouble(double %279, double %289), !dbg !246
  store double %handler_result5, ptr %281, align 8, !dbg !246, !tbaa !154
  %290 = sub nsw i32 %212, %9, !dbg !254
  tail call void @llvm.dbg.value(metadata i64 %213, metadata !67, metadata !DIExpression()), !dbg !117
  tail call void @llvm.dbg.value(metadata i32 %290, metadata !95, metadata !DIExpression()), !dbg !218
  %291 = icmp sgt i64 %211, 1, !dbg !219
  %292 = add i64 %210, 1, !dbg !220
  br i1 %291, label %209, label %359, !dbg !220, !llvm.loop !255

293:                                              ; preds = %190
  %294 = and i1 %49, %188, !dbg !258
  %295 = and i1 %43, %191
  %296 = or i1 %294, %295, !dbg !258
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !105, metadata !DIExpression()), !dbg !259
  tail call void @llvm.dbg.value(metadata i32 0, metadata !67, metadata !DIExpression()), !dbg !117
  %297 = icmp sgt i32 %4, 0
  %298 = and i1 %296, %297, !dbg !258
  br i1 %298, label %299, label %359, !dbg !258

299:                                              ; preds = %293
  %300 = icmp sgt i32 %9, 0, !dbg !260
  %301 = sub nsw i32 1, %4, !dbg !260
  %302 = mul i32 %301, %9, !dbg !260
  %303 = select i1 %300, i32 0, i32 %302, !dbg !260
  tail call void @llvm.dbg.value(metadata i32 %303, metadata !105, metadata !DIExpression()), !dbg !259
  %304 = sext i32 %9 to i64, !dbg !261
  %305 = sext i32 %7 to i64, !dbg !261
  %306 = sext i32 %5 to i64, !dbg !261
  %307 = zext nneg i32 %4 to i64, !dbg !261
  %308 = sext i32 %303 to i64, !dbg !261
  %309 = zext nneg i32 %4 to i64, !dbg !262
  %310 = getelementptr double, ptr %6, i64 %306, !dbg !261
  br label %311, !dbg !261

311:                                              ; preds = %354, %299
  %312 = phi i64 [ %308, %299 ], [ %356, %354 ]
  %313 = phi i64 [ 0, %299 ], [ %317, %354 ]
  %314 = phi i64 [ 1, %299 ], [ %357, %354 ]
  %315 = phi i32 [ %303, %299 ], [ %316, %354 ]
  %316 = add i32 %315, %9, !dbg !261
  tail call void @llvm.dbg.value(metadata i64 %313, metadata !67, metadata !DIExpression()), !dbg !117
  tail call void @llvm.dbg.value(metadata i64 %312, metadata !105, metadata !DIExpression()), !dbg !259
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !108, metadata !DIExpression()), !dbg !263
  %317 = add nuw nsw i64 %313, 1, !dbg !264
  tail call void @llvm.dbg.value(metadata i64 %317, metadata !112, metadata !DIExpression()), !dbg !263
  %318 = add nsw i64 %313, %306, !dbg !265
  %319 = icmp slt i64 %318, %307, !dbg !265
  %320 = trunc i64 %318 to i32, !dbg !265
  %321 = add i32 %320, 1, !dbg !265
  %322 = select i1 %319, i32 %321, i32 %4, !dbg !265
  tail call void @llvm.dbg.value(metadata i32 %322, metadata !113, metadata !DIExpression()), !dbg !263
  tail call void @llvm.dbg.value(metadata !DIArgList(i64 poison, i32 poison, i32 poison), metadata !114, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !263
  tail call void @llvm.dbg.value(metadata i64 %317, metadata !70, metadata !DIExpression()), !dbg !117
  %323 = sext i32 %322 to i64, !dbg !266
  %324 = icmp slt i64 %317, %323, !dbg !266
  br i1 %324, label %325, label %345, !dbg !269

325:                                              ; preds = %311
  %326 = sext i32 %316 to i64, !dbg !264
  tail call void @llvm.dbg.value(metadata !DIArgList(i64 poison, i32 poison, i32 poison), metadata !114, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !263
  %327 = zext i32 %322 to i64, !dbg !266
  br label %328, !dbg !269

328:                                              ; preds = %328, %325
  %329 = phi i64 [ %314, %325 ], [ %343, %328 ]
  %330 = phi i64 [ %326, %325 ], [ %342, %328 ]
  %331 = phi double [ 0.000000e+00, %325 ], [ %handler_result6, %328 ]
  tail call void @llvm.dbg.value(metadata i64 %330, metadata !114, metadata !DIExpression()), !dbg !263
  tail call void @llvm.dbg.value(metadata i64 %329, metadata !70, metadata !DIExpression()), !dbg !117
  tail call void @llvm.dbg.value(metadata double %331, metadata !108, metadata !DIExpression()), !dbg !263
  %332 = getelementptr inbounds double, ptr %8, i64 %330, !dbg !270
  %333 = load double, ptr %332, align 8, !dbg !270, !tbaa !154
  %334 = mul nsw i64 %329, %305, !dbg !272
  %335 = sub i64 %318, %329, !dbg !273
  %336 = shl i64 %335, 32, !dbg !274
  %337 = ashr exact i64 %336, 32, !dbg !274
  %338 = getelementptr double, ptr %6, i64 %337, !dbg !275
  %339 = getelementptr double, ptr %338, i64 %334, !dbg !275
  %340 = load double, ptr %339, align 8, !dbg !275, !tbaa !154
  %341 = fmul double %333, %340, !dbg !276
  %handler_result6 = call double @fAddHandlerDouble(double %331, double %341), !dbg !277
  tail call void @llvm.dbg.value(metadata double %handler_result6, metadata !108, metadata !DIExpression()), !dbg !263
  %342 = add i64 %330, %304, !dbg !277
  tail call void @llvm.dbg.value(metadata i64 %342, metadata !114, metadata !DIExpression()), !dbg !263
  %343 = add nuw nsw i64 %329, 1, !dbg !278
  tail call void @llvm.dbg.value(metadata i64 %343, metadata !70, metadata !DIExpression()), !dbg !117
  %344 = icmp eq i64 %343, %327, !dbg !266
  br i1 %344, label %345, label %328, !dbg !269, !llvm.loop !279

345:                                              ; preds = %328, %311
  %346 = phi double [ 0.000000e+00, %311 ], [ %handler_result6, %328 ], !dbg !263
  %347 = getelementptr inbounds double, ptr %8, i64 %312, !dbg !281
  %348 = load double, ptr %347, align 8, !dbg !281, !tbaa !154
  br i1 %11, label %349, label %354, !dbg !283

349:                                              ; preds = %345
  %350 = mul nsw i64 %313, %305, !dbg !284
  %351 = getelementptr double, ptr %310, i64 %350, !dbg !286
  %352 = load double, ptr %351, align 8, !dbg !286, !tbaa !154
  %353 = fmul double %348, %352, !dbg !287
  br label %354, !dbg !288

354:                                              ; preds = %349, %345
  %355 = phi double [ %353, %349 ], [ %348, %345 ]
  %handler_result7 = call double @fAddHandlerDouble(double %346, double %355), !dbg !281
  store double %handler_result7, ptr %347, align 8, !dbg !281, !tbaa !154
  %356 = add i64 %312, %304, !dbg !289
  tail call void @llvm.dbg.value(metadata i64 %317, metadata !67, metadata !DIExpression()), !dbg !117
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !105, metadata !DIExpression()), !dbg !259
  %357 = add nuw nsw i64 %314, 1, !dbg !261
  %358 = icmp eq i64 %317, %309, !dbg !262
  br i1 %358, label %359, label %311, !dbg !261, !llvm.loop !290

359:                                              ; preds = %354, %293, %288, %193, %182, %117, %108, %51, %37
  ret void, !dbg !292
}

declare !dbg !294 void @cblas_xerbla(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #2

declare double @fAddHandlerDouble(double, double)

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
!13 = !DIFile(filename: "dtbmv.c", directory: "/PI-detector/external/gsl/gsl-2.5/cblas", checksumkind: CSK_MD5, checksum: "4498ba358e645c0d746d33f15636a181")
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
!43 = distinct !DISubprogram(name: "cblas_dtbmv", scope: !13, file: !13, line: 7, type: !44, scopeLine: 11, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !12, retainedNodes: !56)
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
!54 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
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
!155 = !{!"double", !156, i64 0}
!156 = !{!"omnipotent char", !157, i64 0}
!157 = !{!"Simple C/C++ TBAA"}
!158 = !DILocation(line: 37, column: 54, scope: !79)
!159 = !DILocation(line: 37, column: 52, scope: !79)
!160 = !DILocation(line: 0, scope: !79)
!161 = !DILocation(line: 38, column: 29, scope: !79)
!162 = !DILocation(line: 39, column: 27, scope: !79)
!163 = !DILocation(line: 42, column: 25, scope: !164)
!164 = distinct !DILexicalBlock(scope: !165, file: !2, line: 42, column: 7)
!165 = distinct !DILexicalBlock(scope: !79, file: !2, line: 42, column: 7)
!166 = !DILocation(line: 42, column: 7, scope: !165)
!167 = !DILocation(line: 43, column: 17, scope: !168)
!168 = distinct !DILexicalBlock(scope: !164, file: !2, line: 42, column: 39)
!169 = !DILocation(line: 43, column: 35, scope: !168)
!170 = !DILocation(line: 43, column: 25, scope: !168)
!171 = !DILocation(line: 43, column: 23, scope: !168)
!172 = !DILocation(line: 44, column: 12, scope: !168)
!173 = !DILocation(line: 42, column: 35, scope: !164)
!174 = distinct !{!174, !166, !175, !176}
!175 = !DILocation(line: 45, column: 7, scope: !165)
!176 = !{!"llvm.loop.mustprogress"}
!177 = !DILocation(line: 47, column: 13, scope: !79)
!178 = !DILocation(line: 48, column: 10, scope: !79)
!179 = distinct !{!179, !149, !180, !176}
!180 = !DILocation(line: 49, column: 5, scope: !81)
!181 = !DILocation(line: 50, column: 38, scope: !87)
!182 = !DILocation(line: 0, scope: !86)
!183 = !DILocation(line: 54, column: 19, scope: !90)
!184 = !DILocation(line: 54, column: 23, scope: !90)
!185 = !DILocation(line: 53, column: 16, scope: !86)
!186 = !DILocation(line: 53, column: 37, scope: !86)
!187 = !DILocation(line: 53, column: 42, scope: !86)
!188 = !DILocation(line: 53, column: 32, scope: !86)
!189 = !DILocation(line: 54, column: 27, scope: !90)
!190 = !DILocation(line: 55, column: 20, scope: !89)
!191 = !DILocation(line: 55, column: 36, scope: !89)
!192 = !DILocation(line: 55, column: 30, scope: !89)
!193 = !DILocation(line: 55, column: 54, scope: !89)
!194 = !DILocation(line: 55, column: 52, scope: !89)
!195 = !DILocation(line: 0, scope: !89)
!196 = !DILocation(line: 56, column: 30, scope: !89)
!197 = !DILocation(line: 56, column: 28, scope: !89)
!198 = !DILocation(line: 59, column: 25, scope: !199)
!199 = distinct !DILexicalBlock(scope: !200, file: !2, line: 59, column: 7)
!200 = distinct !DILexicalBlock(scope: !89, file: !2, line: 59, column: 7)
!201 = !DILocation(line: 59, column: 7, scope: !200)
!202 = !DILocation(line: 60, column: 17, scope: !203)
!203 = distinct !DILexicalBlock(scope: !199, file: !2, line: 59, column: 39)
!204 = !DILocation(line: 60, column: 35, scope: !203)
!205 = !DILocation(line: 60, column: 25, scope: !203)
!206 = !DILocation(line: 60, column: 23, scope: !203)
!207 = !DILocation(line: 61, column: 12, scope: !203)
!208 = !DILocation(line: 59, column: 35, scope: !199)
!209 = distinct !{!209, !201, !210, !176}
!210 = !DILocation(line: 62, column: 7, scope: !200)
!211 = !DILocation(line: 63, column: 13, scope: !89)
!212 = !DILocation(line: 64, column: 10, scope: !89)
!213 = distinct !{!213, !214, !215, !176}
!214 = !DILocation(line: 54, column: 5, scope: !91)
!215 = !DILocation(line: 65, column: 5, scope: !91)
!216 = !DILocation(line: 67, column: 38, scope: !97)
!217 = !DILocation(line: 68, column: 41, scope: !97)
!218 = !DILocation(line: 0, scope: !96)
!219 = !DILocation(line: 72, column: 19, scope: !100)
!220 = !DILocation(line: 72, column: 23, scope: !100)
!221 = !DILocation(line: 70, column: 16, scope: !96)
!222 = !DILocation(line: 70, column: 37, scope: !96)
!223 = !DILocation(line: 70, column: 42, scope: !96)
!224 = !DILocation(line: 70, column: 32, scope: !96)
!225 = !DILocation(line: 72, column: 27, scope: !100)
!226 = !DILocation(line: 0, scope: !99)
!227 = !DILocation(line: 74, column: 30, scope: !99)
!228 = !DILocation(line: 74, column: 28, scope: !99)
!229 = !DILocation(line: 77, column: 25, scope: !230)
!230 = distinct !DILexicalBlock(scope: !231, file: !2, line: 77, column: 7)
!231 = distinct !DILexicalBlock(scope: !99, file: !2, line: 77, column: 7)
!232 = !DILocation(line: 77, column: 7, scope: !231)
!233 = !DILocation(line: 76, column: 42, scope: !99)
!234 = !DILocation(line: 76, column: 34, scope: !99)
!235 = !DILocation(line: 78, column: 17, scope: !236)
!236 = distinct !DILexicalBlock(scope: !230, file: !2, line: 77, column: 39)
!237 = !DILocation(line: 78, column: 31, scope: !236)
!238 = !DILocation(line: 78, column: 40, scope: !236)
!239 = !DILocation(line: 78, column: 35, scope: !236)
!240 = !DILocation(line: 78, column: 25, scope: !236)
!241 = !DILocation(line: 78, column: 23, scope: !236)
!242 = !DILocation(line: 79, column: 12, scope: !236)
!243 = !DILocation(line: 77, column: 35, scope: !230)
!244 = distinct !{!244, !232, !245, !176}
!245 = !DILocation(line: 80, column: 7, scope: !231)
!246 = !DILocation(line: 0, scope: !247)
!247 = distinct !DILexicalBlock(scope: !99, file: !2, line: 81, column: 11)
!248 = !DILocation(line: 81, column: 11, scope: !99)
!249 = !DILocation(line: 82, column: 38, scope: !250)
!250 = distinct !DILexicalBlock(scope: !247, file: !2, line: 81, column: 20)
!251 = !DILocation(line: 82, column: 32, scope: !250)
!252 = !DILocation(line: 82, column: 30, scope: !250)
!253 = !DILocation(line: 83, column: 7, scope: !250)
!254 = !DILocation(line: 86, column: 10, scope: !99)
!255 = distinct !{!255, !256, !257, !176}
!256 = !DILocation(line: 72, column: 5, scope: !101)
!257 = !DILocation(line: 87, column: 5, scope: !101)
!258 = !DILocation(line: 88, column: 38, scope: !107)
!259 = !DILocation(line: 0, scope: !106)
!260 = !DILocation(line: 91, column: 16, scope: !106)
!261 = !DILocation(line: 92, column: 5, scope: !111)
!262 = !DILocation(line: 92, column: 19, scope: !110)
!263 = !DILocation(line: 0, scope: !109)
!264 = !DILocation(line: 94, column: 29, scope: !109)
!265 = !DILocation(line: 95, column: 27, scope: !109)
!266 = !DILocation(line: 97, column: 25, scope: !267)
!267 = distinct !DILexicalBlock(scope: !268, file: !2, line: 97, column: 7)
!268 = distinct !DILexicalBlock(scope: !109, file: !2, line: 97, column: 7)
!269 = !DILocation(line: 97, column: 7, scope: !268)
!270 = !DILocation(line: 98, column: 17, scope: !271)
!271 = distinct !DILexicalBlock(scope: !267, file: !2, line: 97, column: 39)
!272 = !DILocation(line: 98, column: 31, scope: !271)
!273 = !DILocation(line: 98, column: 44, scope: !271)
!274 = !DILocation(line: 98, column: 35, scope: !271)
!275 = !DILocation(line: 98, column: 25, scope: !271)
!276 = !DILocation(line: 98, column: 23, scope: !271)
!277 = !DILocation(line: 99, column: 12, scope: !271)
!278 = !DILocation(line: 97, column: 35, scope: !267)
!279 = distinct !{!279, !269, !280, !176}
!280 = !DILocation(line: 100, column: 7, scope: !268)
!281 = !DILocation(line: 0, scope: !282)
!282 = distinct !DILexicalBlock(scope: !109, file: !2, line: 101, column: 11)
!283 = !DILocation(line: 101, column: 11, scope: !109)
!284 = !DILocation(line: 102, column: 38, scope: !285)
!285 = distinct !DILexicalBlock(scope: !282, file: !2, line: 101, column: 20)
!286 = !DILocation(line: 102, column: 32, scope: !285)
!287 = !DILocation(line: 102, column: 30, scope: !285)
!288 = !DILocation(line: 103, column: 7, scope: !285)
!289 = !DILocation(line: 106, column: 10, scope: !109)
!290 = distinct !{!290, !261, !291, !176}
!291 = !DILocation(line: 107, column: 5, scope: !111)
!292 = !DILocation(line: 15, column: 1, scope: !293)
!293 = !DILexicalBlockFile(scope: !43, file: !13, discriminator: 0)
!294 = !DISubprogram(name: "cblas_xerbla", scope: !16, file: !16, line: 602, type: !295, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!295 = !DISubroutineType(types: !296)
!296 = !{null, !51, !297, !297, null}
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
