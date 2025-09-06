; ModuleID = 'stbmv.c'
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
  br i1 %38, label %373, label %39, !dbg !142

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
  br i1 %50, label %51, label %117, !dbg !146

51:                                               ; preds = %45, %39
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !75, metadata !DIExpression()), !dbg !147
  tail call void @llvm.dbg.value(metadata i32 0, metadata !67, metadata !DIExpression()), !dbg !117
  %52 = icmp sgt i32 %4, 0, !dbg !148
  br i1 %52, label %53, label %373, !dbg !149

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

65:                                               ; preds = %53, %112
  %66 = phi i64 [ %62, %53 ], [ %114, %112 ]
  %67 = phi i64 [ 0, %53 ], [ %84, %112 ]
  %68 = phi i32 [ %57, %53 ], [ %70, %112 ]
  %69 = phi i64 [ 1, %53 ], [ %115, %112 ]
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

77:                                               ; preds = %65, %72
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
  br i1 %91, label %92, label %112, !dbg !167

92:                                               ; preds = %77
  tail call void @llvm.dbg.value(metadata !DIArgList(i64 poison, i32 poison, i32 poison), metadata !84, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !161
  tail call void @llvm.dbg.value(metadata !DIArgList(i64 poison, i32 poison, i32 poison), metadata !84, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !161
  %93 = trunc i64 %67 to i32
  %94 = mul i32 %64, %93
  %95 = zext i32 %89 to i64, !dbg !164
  br label %96, !dbg !167

96:                                               ; preds = %92, %96
  %97 = phi i64 [ %71, %92 ], [ %109, %96 ]
  %98 = phi i64 [ %69, %92 ], [ %110, %96 ]
  %99 = phi float [ %83, %92 ], [ %108, %96 ]
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
  %108 = fadd float %99, %107, !dbg !173
  tail call void @llvm.dbg.value(metadata float %108, metadata !78, metadata !DIExpression()), !dbg !161
  %109 = add i64 %97, %58, !dbg !174
  tail call void @llvm.dbg.value(metadata i64 %109, metadata !84, metadata !DIExpression()), !dbg !161
  %110 = add nuw nsw i64 %98, 1, !dbg !175
  tail call void @llvm.dbg.value(metadata i64 %110, metadata !70, metadata !DIExpression()), !dbg !117
  %111 = icmp eq i64 %110, %95, !dbg !164
  br i1 %111, label %112, label %96, !dbg !167, !llvm.loop !176

112:                                              ; preds = %96, %77
  %113 = phi float [ %83, %77 ], [ %108, %96 ], !dbg !161
  store float %113, ptr %79, align 4, !dbg !179, !tbaa !154
  %114 = add i64 %66, %58, !dbg !180
  tail call void @llvm.dbg.value(metadata i64 %84, metadata !67, metadata !DIExpression()), !dbg !117
  tail call void @llvm.dbg.value(metadata i64 %114, metadata !75, metadata !DIExpression()), !dbg !147
  %115 = add nuw nsw i64 %69, 1, !dbg !149
  %116 = icmp eq i64 %84, %63, !dbg !148
  br i1 %116, label %373, label %65, !dbg !149, !llvm.loop !181

117:                                              ; preds = %45
  %118 = and i1 %49, %42, !dbg !183
  %119 = and i1 %43, %48
  %120 = or i1 %118, %119, !dbg !183
  br i1 %120, label %121, label %195, !dbg !183

121:                                              ; preds = %117
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 poison, i32 poison, i32 poison), metadata !85, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_minus, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !184
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !67, metadata !DIExpression()), !dbg !117
  %122 = icmp sgt i32 %4, 0, !dbg !185
  br i1 %122, label %123, label %373, !dbg !186

123:                                              ; preds = %121
  %124 = icmp sgt i32 %9, 0, !dbg !187
  %125 = sub nsw i32 1, %4, !dbg !187
  %126 = mul i32 %125, %9, !dbg !187
  %127 = select i1 %124, i32 0, i32 %126, !dbg !187
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 %127, i32 %4, i32 %9), metadata !85, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_minus, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !184
  %128 = add nsw i32 %4, -1, !dbg !188
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 %127, i32 %128, i32 %9), metadata !85, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !184
  %129 = mul i32 %128, %9, !dbg !189
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 %127, i32 %129), metadata !85, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !184
  %130 = add nsw i32 %127, %129, !dbg !190
  tail call void @llvm.dbg.value(metadata i32 %130, metadata !85, metadata !DIExpression()), !dbg !184
  %131 = select i1 %124, i32 0, i32 %129
  %132 = sext i32 %9 to i64, !dbg !186
  %133 = zext nneg i32 %4 to i64, !dbg !186
  %134 = sext i32 %7 to i64, !dbg !186
  %135 = sext i32 %5 to i64, !dbg !186
  %136 = getelementptr float, ptr %6, i64 %135, !dbg !186
  br label %137, !dbg !186

137:                                              ; preds = %123, %190
  %138 = phi i64 [ %133, %123 ], [ %147, %190 ]
  %139 = phi i32 [ %128, %123 ], [ %194, %190 ]
  %140 = phi i32 [ %130, %123 ], [ %192, %190 ]
  tail call void @llvm.dbg.value(metadata i64 %138, metadata !67, metadata !DIExpression()), !dbg !117
  tail call void @llvm.dbg.value(metadata i32 %140, metadata !85, metadata !DIExpression()), !dbg !184
  %141 = tail call i32 @llvm.smax.i32(i32 %5, i32 %139), !dbg !191
  %142 = sub i32 %141, %5, !dbg !191
  %143 = sext i32 %142 to i64, !dbg !191
  %144 = mul i32 %142, %9, !dbg !191
  %145 = sub i32 %144, %131, !dbg !191
  %146 = sext i32 %145 to i64, !dbg !191
  %147 = add nsw i64 %138, -1, !dbg !191
  tail call void @llvm.dbg.value(metadata i64 %147, metadata !67, metadata !DIExpression()), !dbg !117
  br i1 %11, label %148, label %153, !dbg !192

148:                                              ; preds = %137
  %149 = mul nsw i64 %147, %134, !dbg !193
  %150 = getelementptr float, ptr %136, i64 %149, !dbg !194
  %151 = load float, ptr %150, align 4, !dbg !194, !tbaa !154
  %152 = fpext float %151 to double, !dbg !194
  br label %153, !dbg !192

153:                                              ; preds = %137, %148
  %154 = phi double [ %152, %148 ], [ 1.000000e+00, %137 ], !dbg !192
  %155 = sext i32 %140 to i64, !dbg !195
  %156 = getelementptr inbounds float, ptr %8, i64 %155, !dbg !195
  %157 = load float, ptr %156, align 4, !dbg !195, !tbaa !154
  %158 = fpext float %157 to double, !dbg !195
  %159 = fmul double %154, %158, !dbg !196
  %160 = fptrunc double %159 to float, !dbg !197
  tail call void @llvm.dbg.value(metadata float %160, metadata !88, metadata !DIExpression()), !dbg !198
  %161 = icmp sgt i64 %147, %135, !dbg !199
  %162 = trunc i64 %147 to i32, !dbg !200
  %163 = sub i32 %162, %5, !dbg !200
  %164 = sext i32 %163 to i64, !dbg !201
  tail call void @llvm.dbg.value(metadata i64 %147, metadata !93, metadata !DIExpression()), !dbg !198
  %165 = select i1 %161, i64 %164, i64 0, !dbg !201
  tail call void @llvm.dbg.value(metadata !DIArgList(i64 %165, i32 %131, i32 %9), metadata !94, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !198
  tail call void @llvm.dbg.value(metadata i64 %165, metadata !92, metadata !DIExpression()), !dbg !198
  tail call void @llvm.dbg.value(metadata i64 %165, metadata !70, metadata !DIExpression()), !dbg !117
  %166 = icmp slt i64 %165, %147, !dbg !201
  br i1 %166, label %167, label %190, !dbg !204

167:                                              ; preds = %153
  tail call void @llvm.dbg.value(metadata !DIArgList(i64 %165, i32 %131, i32 %9), metadata !94, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !198
  %168 = trunc i64 %138 to i32
  %169 = sub i32 %5, %168
  %170 = add i32 %169, 1
  %171 = trunc i64 %147 to i32
  %172 = mul i32 %171, %7
  %173 = add i32 %170, %172
  br label %174, !dbg !204

174:                                              ; preds = %167, %174
  %175 = phi i64 [ %146, %167 ], [ %187, %174 ]
  %176 = phi i64 [ %143, %167 ], [ %188, %174 ]
  %177 = phi float [ %160, %167 ], [ %186, %174 ]
  tail call void @llvm.dbg.value(metadata i64 %176, metadata !70, metadata !DIExpression()), !dbg !117
  tail call void @llvm.dbg.value(metadata i64 %175, metadata !94, metadata !DIExpression()), !dbg !198
  tail call void @llvm.dbg.value(metadata float %177, metadata !88, metadata !DIExpression()), !dbg !198
  %178 = getelementptr inbounds float, ptr %8, i64 %175, !dbg !205
  %179 = load float, ptr %178, align 4, !dbg !205, !tbaa !154
  %180 = trunc i64 %176 to i32, !dbg !207
  %181 = add i32 %173, %180, !dbg !207
  %182 = sext i32 %181 to i64, !dbg !208
  %183 = getelementptr inbounds float, ptr %6, i64 %182, !dbg !208
  %184 = load float, ptr %183, align 4, !dbg !208, !tbaa !154
  %185 = fmul float %179, %184, !dbg !209
  %186 = fadd float %177, %185, !dbg !210
  tail call void @llvm.dbg.value(metadata float %186, metadata !88, metadata !DIExpression()), !dbg !198
  %187 = add i64 %175, %132, !dbg !211
  tail call void @llvm.dbg.value(metadata i64 %187, metadata !94, metadata !DIExpression()), !dbg !198
  %188 = add nsw i64 %176, 1, !dbg !212
  tail call void @llvm.dbg.value(metadata i64 %188, metadata !70, metadata !DIExpression()), !dbg !117
  %189 = icmp slt i64 %188, %147, !dbg !201
  br i1 %189, label %174, label %190, !dbg !204, !llvm.loop !213

190:                                              ; preds = %174, %153
  %191 = phi float [ %160, %153 ], [ %186, %174 ], !dbg !198
  store float %191, ptr %156, align 4, !dbg !215, !tbaa !154
  %192 = sub nsw i32 %140, %9, !dbg !216
  tail call void @llvm.dbg.value(metadata i64 %147, metadata !67, metadata !DIExpression()), !dbg !117
  tail call void @llvm.dbg.value(metadata i32 %192, metadata !85, metadata !DIExpression()), !dbg !184
  %193 = icmp sgt i64 %138, 1, !dbg !185
  %194 = add nsw i32 %139, -1, !dbg !186
  br i1 %193, label %137, label %373, !dbg !186, !llvm.loop !217

195:                                              ; preds = %117
  %196 = and i1 %40, %47, !dbg !220
  %197 = and i1 %43, %196, !dbg !220
  br i1 %197, label %201, label %198, !dbg !220

198:                                              ; preds = %195
  %199 = and i1 %46, %41, !dbg !221
  %200 = and i1 %49, %199, !dbg !221
  br i1 %200, label %201, label %305, !dbg !221

201:                                              ; preds = %198, %195
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 poison, i32 poison, i32 poison), metadata !95, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_minus, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !222
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !67, metadata !DIExpression()), !dbg !117
  %202 = icmp sgt i32 %4, 0, !dbg !223
  br i1 %202, label %203, label %373, !dbg !224

203:                                              ; preds = %201
  %204 = icmp sgt i32 %9, 0, !dbg !225
  %205 = sub nsw i32 1, %4, !dbg !225
  %206 = mul i32 %205, %9, !dbg !225
  %207 = select i1 %204, i32 0, i32 %206, !dbg !225
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 %207, i32 %4, i32 %9), metadata !95, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_minus, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !222
  %208 = add nsw i32 %4, -1, !dbg !226
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 %207, i32 %208, i32 %9), metadata !95, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !222
  %209 = mul i32 %208, %9, !dbg !227
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 %207, i32 %209), metadata !95, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !222
  %210 = add nsw i32 %207, %209, !dbg !228
  tail call void @llvm.dbg.value(metadata i32 %210, metadata !95, metadata !DIExpression()), !dbg !222
  %211 = select i1 %204, i32 0, i32 %209
  %212 = sext i32 %7 to i64, !dbg !224
  %213 = sext i32 %9 to i64, !dbg !224
  %214 = zext nneg i32 %4 to i64, !dbg !224
  %215 = sext i32 %5 to i64, !dbg !224
  %216 = add nsw i64 %214, -2, !dbg !224
  br label %217, !dbg !224

217:                                              ; preds = %203, %299
  %218 = phi i64 [ 0, %203 ], [ %304, %299 ]
  %219 = phi i64 [ %214, %203 ], [ %221, %299 ]
  %220 = phi i32 [ %210, %203 ], [ %302, %299 ]
  tail call void @llvm.dbg.value(metadata i64 %219, metadata !67, metadata !DIExpression()), !dbg !117
  tail call void @llvm.dbg.value(metadata i32 %220, metadata !95, metadata !DIExpression()), !dbg !222
  %221 = add nsw i64 %219, -1, !dbg !229
  tail call void @llvm.dbg.value(metadata i64 %221, metadata !67, metadata !DIExpression()), !dbg !117
  tail call void @llvm.dbg.value(metadata float 0.000000e+00, metadata !98, metadata !DIExpression()), !dbg !230
  %222 = icmp sgt i64 %219, %215, !dbg !231
  %223 = trunc i64 %221 to i32, !dbg !232
  %224 = sub i32 %223, %5, !dbg !232
  %225 = select i1 %222, i32 %224, i32 0, !dbg !232
  tail call void @llvm.dbg.value(metadata i32 %225, metadata !102, metadata !DIExpression()), !dbg !230
  tail call void @llvm.dbg.value(metadata i64 %221, metadata !103, metadata !DIExpression()), !dbg !230
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 %225, i32 %211, i32 %9), metadata !104, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !230
  tail call void @llvm.dbg.value(metadata i32 %225, metadata !70, metadata !DIExpression()), !dbg !117
  %226 = sext i32 %225 to i64, !dbg !233
  %227 = icmp sgt i64 %221, %226, !dbg !233
  br i1 %227, label %228, label %289, !dbg !236

228:                                              ; preds = %217
  %229 = xor i64 %218, -1, !dbg !229
  %230 = add i64 %229, %214, !dbg !229
  %231 = mul i32 %225, %9, !dbg !237
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 %231, i32 %211), metadata !104, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !230
  %232 = sub i32 %231, %211, !dbg !238
  tail call void @llvm.dbg.value(metadata i32 %232, metadata !104, metadata !DIExpression()), !dbg !230
  %233 = sext i32 %232 to i64, !dbg !236
  %234 = sub i64 %230, %226, !dbg !236
  %235 = add i64 %218, %226, !dbg !236
  %236 = and i64 %234, 1, !dbg !236
  %237 = icmp eq i64 %236, 0, !dbg !236
  br i1 %237, label %252, label %238, !dbg !236

238:                                              ; preds = %228
  tail call void @llvm.dbg.value(metadata i64 %226, metadata !70, metadata !DIExpression()), !dbg !117
  tail call void @llvm.dbg.value(metadata i64 %233, metadata !104, metadata !DIExpression()), !dbg !230
  tail call void @llvm.dbg.value(metadata float 0.000000e+00, metadata !98, metadata !DIExpression()), !dbg !230
  %239 = getelementptr inbounds float, ptr %8, i64 %233, !dbg !239
  %240 = load float, ptr %239, align 4, !dbg !239, !tbaa !154
  %241 = mul nsw i64 %226, %212, !dbg !241
  %242 = sub i64 %221, %226, !dbg !242
  %243 = shl i64 %242, 32, !dbg !243
  %244 = ashr exact i64 %243, 32, !dbg !243
  %245 = getelementptr float, ptr %6, i64 %244, !dbg !244
  %246 = getelementptr float, ptr %245, i64 %241, !dbg !244
  %247 = load float, ptr %246, align 4, !dbg !244, !tbaa !154
  %248 = fmul float %240, %247, !dbg !245
  %249 = fadd float %248, 0.000000e+00, !dbg !246
  tail call void @llvm.dbg.value(metadata float %249, metadata !98, metadata !DIExpression()), !dbg !230
  %250 = add nsw i64 %233, %213, !dbg !247
  tail call void @llvm.dbg.value(metadata i64 %250, metadata !104, metadata !DIExpression()), !dbg !230
  %251 = add nsw i64 %226, 1, !dbg !248
  tail call void @llvm.dbg.value(metadata i64 %251, metadata !70, metadata !DIExpression()), !dbg !117
  br label %252, !dbg !236

252:                                              ; preds = %238, %228
  %253 = phi i64 [ %233, %228 ], [ %250, %238 ]
  %254 = phi i64 [ %226, %228 ], [ %251, %238 ]
  %255 = phi float [ 0.000000e+00, %228 ], [ %249, %238 ]
  %256 = phi float [ undef, %228 ], [ %249, %238 ]
  %257 = icmp eq i64 %216, %235, !dbg !236
  br i1 %257, label %289, label %258, !dbg !236

258:                                              ; preds = %252, %258
  %259 = phi i64 [ %286, %258 ], [ %253, %252 ]
  %260 = phi i64 [ %287, %258 ], [ %254, %252 ]
  %261 = phi float [ %285, %258 ], [ %255, %252 ]
  tail call void @llvm.dbg.value(metadata i64 %260, metadata !70, metadata !DIExpression()), !dbg !117
  tail call void @llvm.dbg.value(metadata i64 %259, metadata !104, metadata !DIExpression()), !dbg !230
  tail call void @llvm.dbg.value(metadata float %261, metadata !98, metadata !DIExpression()), !dbg !230
  %262 = getelementptr inbounds float, ptr %8, i64 %259, !dbg !239
  %263 = load float, ptr %262, align 4, !dbg !239, !tbaa !154
  %264 = mul nsw i64 %260, %212, !dbg !241
  %265 = sub i64 %221, %260, !dbg !242
  %266 = shl i64 %265, 32, !dbg !243
  %267 = ashr exact i64 %266, 32, !dbg !243
  %268 = getelementptr float, ptr %6, i64 %267, !dbg !244
  %269 = getelementptr float, ptr %268, i64 %264, !dbg !244
  %270 = load float, ptr %269, align 4, !dbg !244, !tbaa !154
  %271 = fmul float %263, %270, !dbg !245
  %272 = fadd float %261, %271, !dbg !246
  tail call void @llvm.dbg.value(metadata float %272, metadata !98, metadata !DIExpression()), !dbg !230
  %273 = add i64 %259, %213, !dbg !247
  tail call void @llvm.dbg.value(metadata i64 %273, metadata !104, metadata !DIExpression()), !dbg !230
  %274 = add nsw i64 %260, 1, !dbg !248
  tail call void @llvm.dbg.value(metadata i64 %274, metadata !70, metadata !DIExpression()), !dbg !117
  tail call void @llvm.dbg.value(metadata i64 %274, metadata !70, metadata !DIExpression()), !dbg !117
  tail call void @llvm.dbg.value(metadata i64 %273, metadata !104, metadata !DIExpression()), !dbg !230
  tail call void @llvm.dbg.value(metadata float %272, metadata !98, metadata !DIExpression()), !dbg !230
  %275 = getelementptr inbounds float, ptr %8, i64 %273, !dbg !239
  %276 = load float, ptr %275, align 4, !dbg !239, !tbaa !154
  %277 = mul nsw i64 %274, %212, !dbg !241
  %278 = sub i64 %221, %274, !dbg !242
  %279 = shl i64 %278, 32, !dbg !243
  %280 = ashr exact i64 %279, 32, !dbg !243
  %281 = getelementptr float, ptr %6, i64 %280, !dbg !244
  %282 = getelementptr float, ptr %281, i64 %277, !dbg !244
  %283 = load float, ptr %282, align 4, !dbg !244, !tbaa !154
  %284 = fmul float %276, %283, !dbg !245
  %285 = fadd float %272, %284, !dbg !246
  tail call void @llvm.dbg.value(metadata float %285, metadata !98, metadata !DIExpression()), !dbg !230
  %286 = add i64 %273, %213, !dbg !247
  tail call void @llvm.dbg.value(metadata i64 %286, metadata !104, metadata !DIExpression()), !dbg !230
  %287 = add nsw i64 %260, 2, !dbg !248
  tail call void @llvm.dbg.value(metadata i64 %287, metadata !70, metadata !DIExpression()), !dbg !117
  %288 = icmp slt i64 %287, %221, !dbg !233
  br i1 %288, label %258, label %289, !dbg !236, !llvm.loop !249

289:                                              ; preds = %252, %258, %217
  %290 = phi float [ 0.000000e+00, %217 ], [ %256, %252 ], [ %285, %258 ], !dbg !230
  %291 = sext i32 %220 to i64, !dbg !251
  %292 = getelementptr inbounds float, ptr %8, i64 %291, !dbg !251
  %293 = load float, ptr %292, align 4, !dbg !251, !tbaa !154
  br i1 %11, label %294, label %299, !dbg !253

294:                                              ; preds = %289
  %295 = mul nsw i64 %221, %212, !dbg !254
  %296 = getelementptr inbounds float, ptr %6, i64 %295, !dbg !256
  %297 = load float, ptr %296, align 4, !dbg !256, !tbaa !154
  %298 = fmul float %293, %297, !dbg !257
  br label %299, !dbg !258

299:                                              ; preds = %289, %294
  %300 = phi float [ %298, %294 ], [ %293, %289 ]
  %301 = fadd float %290, %300, !dbg !251
  store float %301, ptr %292, align 4, !dbg !251, !tbaa !154
  %302 = sub nsw i32 %220, %9, !dbg !259
  tail call void @llvm.dbg.value(metadata i64 %221, metadata !67, metadata !DIExpression()), !dbg !117
  tail call void @llvm.dbg.value(metadata i32 %302, metadata !95, metadata !DIExpression()), !dbg !222
  %303 = icmp sgt i64 %219, 1, !dbg !223
  %304 = add i64 %218, 1, !dbg !224
  br i1 %303, label %217, label %373, !dbg !224, !llvm.loop !260

305:                                              ; preds = %198
  %306 = and i1 %49, %196, !dbg !263
  %307 = and i1 %43, %199
  %308 = or i1 %306, %307, !dbg !263
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !105, metadata !DIExpression()), !dbg !264
  tail call void @llvm.dbg.value(metadata i32 0, metadata !67, metadata !DIExpression()), !dbg !117
  %309 = icmp sgt i32 %4, 0
  %310 = and i1 %308, %309, !dbg !263
  br i1 %310, label %311, label %373, !dbg !263

311:                                              ; preds = %305
  %312 = icmp sgt i32 %9, 0, !dbg !265
  %313 = sub nsw i32 1, %4, !dbg !265
  %314 = mul i32 %313, %9, !dbg !265
  %315 = select i1 %312, i32 0, i32 %314, !dbg !265
  tail call void @llvm.dbg.value(metadata i32 %315, metadata !105, metadata !DIExpression()), !dbg !264
  %316 = sext i32 %9 to i64, !dbg !266
  %317 = sext i32 %7 to i64, !dbg !266
  %318 = sext i32 %5 to i64, !dbg !266
  %319 = zext nneg i32 %4 to i64, !dbg !266
  %320 = sext i32 %315 to i64, !dbg !266
  %321 = zext nneg i32 %4 to i64, !dbg !267
  %322 = getelementptr float, ptr %6, i64 %318, !dbg !266
  br label %323, !dbg !266

323:                                              ; preds = %311, %367
  %324 = phi i64 [ %320, %311 ], [ %370, %367 ]
  %325 = phi i64 [ 0, %311 ], [ %329, %367 ]
  %326 = phi i64 [ 1, %311 ], [ %371, %367 ]
  %327 = phi i32 [ %315, %311 ], [ %328, %367 ]
  %328 = add i32 %327, %9, !dbg !266
  tail call void @llvm.dbg.value(metadata i64 %325, metadata !67, metadata !DIExpression()), !dbg !117
  tail call void @llvm.dbg.value(metadata i64 %324, metadata !105, metadata !DIExpression()), !dbg !264
  tail call void @llvm.dbg.value(metadata float 0.000000e+00, metadata !108, metadata !DIExpression()), !dbg !268
  %329 = add nuw nsw i64 %325, 1, !dbg !269
  tail call void @llvm.dbg.value(metadata i64 %329, metadata !112, metadata !DIExpression()), !dbg !268
  %330 = add nsw i64 %325, %318, !dbg !270
  %331 = icmp slt i64 %330, %319, !dbg !270
  %332 = trunc i64 %330 to i32, !dbg !270
  %333 = add i32 %332, 1, !dbg !270
  %334 = select i1 %331, i32 %333, i32 %4, !dbg !270
  tail call void @llvm.dbg.value(metadata i32 %334, metadata !113, metadata !DIExpression()), !dbg !268
  tail call void @llvm.dbg.value(metadata !DIArgList(i64 poison, i32 poison, i32 poison), metadata !114, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !268
  tail call void @llvm.dbg.value(metadata i64 %329, metadata !70, metadata !DIExpression()), !dbg !117
  %335 = sext i32 %334 to i64, !dbg !271
  %336 = icmp slt i64 %329, %335, !dbg !271
  br i1 %336, label %337, label %358, !dbg !274

337:                                              ; preds = %323
  %338 = sext i32 %328 to i64, !dbg !269
  tail call void @llvm.dbg.value(metadata !DIArgList(i64 poison, i32 poison, i32 poison), metadata !114, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !268
  %339 = zext i32 %334 to i64, !dbg !271
  br label %340, !dbg !274

340:                                              ; preds = %337, %340
  %341 = phi i64 [ %326, %337 ], [ %356, %340 ]
  %342 = phi i64 [ %338, %337 ], [ %355, %340 ]
  %343 = phi float [ 0.000000e+00, %337 ], [ %354, %340 ]
  tail call void @llvm.dbg.value(metadata i64 %342, metadata !114, metadata !DIExpression()), !dbg !268
  tail call void @llvm.dbg.value(metadata i64 %341, metadata !70, metadata !DIExpression()), !dbg !117
  tail call void @llvm.dbg.value(metadata float %343, metadata !108, metadata !DIExpression()), !dbg !268
  %344 = getelementptr inbounds float, ptr %8, i64 %342, !dbg !275
  %345 = load float, ptr %344, align 4, !dbg !275, !tbaa !154
  %346 = mul nsw i64 %341, %317, !dbg !277
  %347 = sub i64 %330, %341, !dbg !278
  %348 = shl i64 %347, 32, !dbg !279
  %349 = ashr exact i64 %348, 32, !dbg !279
  %350 = getelementptr float, ptr %6, i64 %349, !dbg !280
  %351 = getelementptr float, ptr %350, i64 %346, !dbg !280
  %352 = load float, ptr %351, align 4, !dbg !280, !tbaa !154
  %353 = fmul float %345, %352, !dbg !281
  %354 = fadd float %343, %353, !dbg !282
  tail call void @llvm.dbg.value(metadata float %354, metadata !108, metadata !DIExpression()), !dbg !268
  %355 = add i64 %342, %316, !dbg !283
  tail call void @llvm.dbg.value(metadata i64 %355, metadata !114, metadata !DIExpression()), !dbg !268
  %356 = add nuw nsw i64 %341, 1, !dbg !284
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !70, metadata !DIExpression()), !dbg !117
  %357 = icmp eq i64 %356, %339, !dbg !271
  br i1 %357, label %358, label %340, !dbg !274, !llvm.loop !285

358:                                              ; preds = %340, %323
  %359 = phi float [ 0.000000e+00, %323 ], [ %354, %340 ], !dbg !268
  %360 = getelementptr inbounds float, ptr %8, i64 %324, !dbg !287
  %361 = load float, ptr %360, align 4, !dbg !287, !tbaa !154
  br i1 %11, label %362, label %367, !dbg !289

362:                                              ; preds = %358
  %363 = mul nsw i64 %325, %317, !dbg !290
  %364 = getelementptr float, ptr %322, i64 %363, !dbg !292
  %365 = load float, ptr %364, align 4, !dbg !292, !tbaa !154
  %366 = fmul float %361, %365, !dbg !293
  br label %367, !dbg !294

367:                                              ; preds = %358, %362
  %368 = phi float [ %366, %362 ], [ %361, %358 ]
  %369 = fadd float %359, %368, !dbg !287
  store float %369, ptr %360, align 4, !dbg !287, !tbaa !154
  %370 = add i64 %324, %316, !dbg !295
  tail call void @llvm.dbg.value(metadata i64 %329, metadata !67, metadata !DIExpression()), !dbg !117
  tail call void @llvm.dbg.value(metadata i64 %370, metadata !105, metadata !DIExpression()), !dbg !264
  %371 = add nuw nsw i64 %326, 1, !dbg !266
  %372 = icmp eq i64 %329, %321, !dbg !267
  br i1 %372, label %373, label %323, !dbg !266, !llvm.loop !296

373:                                              ; preds = %367, %299, %190, %112, %201, %121, %51, %305, %37
  ret void, !dbg !298
}

declare !dbg !300 void @cblas_xerbla(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #2

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
!173 = !DILocation(line: 43, column: 14, scope: !169)
!174 = !DILocation(line: 44, column: 12, scope: !169)
!175 = !DILocation(line: 42, column: 35, scope: !165)
!176 = distinct !{!176, !167, !177, !178}
!177 = !DILocation(line: 45, column: 7, scope: !166)
!178 = !{!"llvm.loop.mustprogress"}
!179 = !DILocation(line: 47, column: 13, scope: !79)
!180 = !DILocation(line: 48, column: 10, scope: !79)
!181 = distinct !{!181, !149, !182, !178}
!182 = !DILocation(line: 49, column: 5, scope: !81)
!183 = !DILocation(line: 50, column: 38, scope: !87)
!184 = !DILocation(line: 0, scope: !86)
!185 = !DILocation(line: 54, column: 19, scope: !90)
!186 = !DILocation(line: 54, column: 23, scope: !90)
!187 = !DILocation(line: 53, column: 16, scope: !86)
!188 = !DILocation(line: 53, column: 37, scope: !86)
!189 = !DILocation(line: 53, column: 42, scope: !86)
!190 = !DILocation(line: 53, column: 32, scope: !86)
!191 = !DILocation(line: 54, column: 27, scope: !90)
!192 = !DILocation(line: 55, column: 20, scope: !89)
!193 = !DILocation(line: 55, column: 36, scope: !89)
!194 = !DILocation(line: 55, column: 30, scope: !89)
!195 = !DILocation(line: 55, column: 54, scope: !89)
!196 = !DILocation(line: 55, column: 52, scope: !89)
!197 = !DILocation(line: 55, column: 19, scope: !89)
!198 = !DILocation(line: 0, scope: !89)
!199 = !DILocation(line: 56, column: 30, scope: !89)
!200 = !DILocation(line: 56, column: 28, scope: !89)
!201 = !DILocation(line: 59, column: 25, scope: !202)
!202 = distinct !DILexicalBlock(scope: !203, file: !2, line: 59, column: 7)
!203 = distinct !DILexicalBlock(scope: !89, file: !2, line: 59, column: 7)
!204 = !DILocation(line: 59, column: 7, scope: !203)
!205 = !DILocation(line: 60, column: 17, scope: !206)
!206 = distinct !DILexicalBlock(scope: !202, file: !2, line: 59, column: 39)
!207 = !DILocation(line: 60, column: 35, scope: !206)
!208 = !DILocation(line: 60, column: 25, scope: !206)
!209 = !DILocation(line: 60, column: 23, scope: !206)
!210 = !DILocation(line: 60, column: 14, scope: !206)
!211 = !DILocation(line: 61, column: 12, scope: !206)
!212 = !DILocation(line: 59, column: 35, scope: !202)
!213 = distinct !{!213, !204, !214, !178}
!214 = !DILocation(line: 62, column: 7, scope: !203)
!215 = !DILocation(line: 63, column: 13, scope: !89)
!216 = !DILocation(line: 64, column: 10, scope: !89)
!217 = distinct !{!217, !218, !219, !178}
!218 = !DILocation(line: 54, column: 5, scope: !91)
!219 = !DILocation(line: 65, column: 5, scope: !91)
!220 = !DILocation(line: 67, column: 38, scope: !97)
!221 = !DILocation(line: 68, column: 41, scope: !97)
!222 = !DILocation(line: 0, scope: !96)
!223 = !DILocation(line: 72, column: 19, scope: !100)
!224 = !DILocation(line: 72, column: 23, scope: !100)
!225 = !DILocation(line: 70, column: 16, scope: !96)
!226 = !DILocation(line: 70, column: 37, scope: !96)
!227 = !DILocation(line: 70, column: 42, scope: !96)
!228 = !DILocation(line: 70, column: 32, scope: !96)
!229 = !DILocation(line: 72, column: 27, scope: !100)
!230 = !DILocation(line: 0, scope: !99)
!231 = !DILocation(line: 74, column: 30, scope: !99)
!232 = !DILocation(line: 74, column: 28, scope: !99)
!233 = !DILocation(line: 77, column: 25, scope: !234)
!234 = distinct !DILexicalBlock(scope: !235, file: !2, line: 77, column: 7)
!235 = distinct !DILexicalBlock(scope: !99, file: !2, line: 77, column: 7)
!236 = !DILocation(line: 77, column: 7, scope: !235)
!237 = !DILocation(line: 76, column: 42, scope: !99)
!238 = !DILocation(line: 76, column: 34, scope: !99)
!239 = !DILocation(line: 78, column: 17, scope: !240)
!240 = distinct !DILexicalBlock(scope: !234, file: !2, line: 77, column: 39)
!241 = !DILocation(line: 78, column: 31, scope: !240)
!242 = !DILocation(line: 78, column: 40, scope: !240)
!243 = !DILocation(line: 78, column: 35, scope: !240)
!244 = !DILocation(line: 78, column: 25, scope: !240)
!245 = !DILocation(line: 78, column: 23, scope: !240)
!246 = !DILocation(line: 78, column: 14, scope: !240)
!247 = !DILocation(line: 79, column: 12, scope: !240)
!248 = !DILocation(line: 77, column: 35, scope: !234)
!249 = distinct !{!249, !236, !250, !178}
!250 = !DILocation(line: 80, column: 7, scope: !235)
!251 = !DILocation(line: 0, scope: !252)
!252 = distinct !DILexicalBlock(scope: !99, file: !2, line: 81, column: 11)
!253 = !DILocation(line: 81, column: 11, scope: !99)
!254 = !DILocation(line: 82, column: 38, scope: !255)
!255 = distinct !DILexicalBlock(scope: !252, file: !2, line: 81, column: 20)
!256 = !DILocation(line: 82, column: 32, scope: !255)
!257 = !DILocation(line: 82, column: 30, scope: !255)
!258 = !DILocation(line: 83, column: 7, scope: !255)
!259 = !DILocation(line: 86, column: 10, scope: !99)
!260 = distinct !{!260, !261, !262, !178}
!261 = !DILocation(line: 72, column: 5, scope: !101)
!262 = !DILocation(line: 87, column: 5, scope: !101)
!263 = !DILocation(line: 88, column: 38, scope: !107)
!264 = !DILocation(line: 0, scope: !106)
!265 = !DILocation(line: 91, column: 16, scope: !106)
!266 = !DILocation(line: 92, column: 5, scope: !111)
!267 = !DILocation(line: 92, column: 19, scope: !110)
!268 = !DILocation(line: 0, scope: !109)
!269 = !DILocation(line: 94, column: 29, scope: !109)
!270 = !DILocation(line: 95, column: 27, scope: !109)
!271 = !DILocation(line: 97, column: 25, scope: !272)
!272 = distinct !DILexicalBlock(scope: !273, file: !2, line: 97, column: 7)
!273 = distinct !DILexicalBlock(scope: !109, file: !2, line: 97, column: 7)
!274 = !DILocation(line: 97, column: 7, scope: !273)
!275 = !DILocation(line: 98, column: 17, scope: !276)
!276 = distinct !DILexicalBlock(scope: !272, file: !2, line: 97, column: 39)
!277 = !DILocation(line: 98, column: 31, scope: !276)
!278 = !DILocation(line: 98, column: 44, scope: !276)
!279 = !DILocation(line: 98, column: 35, scope: !276)
!280 = !DILocation(line: 98, column: 25, scope: !276)
!281 = !DILocation(line: 98, column: 23, scope: !276)
!282 = !DILocation(line: 98, column: 14, scope: !276)
!283 = !DILocation(line: 99, column: 12, scope: !276)
!284 = !DILocation(line: 97, column: 35, scope: !272)
!285 = distinct !{!285, !274, !286, !178}
!286 = !DILocation(line: 100, column: 7, scope: !273)
!287 = !DILocation(line: 0, scope: !288)
!288 = distinct !DILexicalBlock(scope: !109, file: !2, line: 101, column: 11)
!289 = !DILocation(line: 101, column: 11, scope: !109)
!290 = !DILocation(line: 102, column: 38, scope: !291)
!291 = distinct !DILexicalBlock(scope: !288, file: !2, line: 101, column: 20)
!292 = !DILocation(line: 102, column: 32, scope: !291)
!293 = !DILocation(line: 102, column: 30, scope: !291)
!294 = !DILocation(line: 103, column: 7, scope: !291)
!295 = !DILocation(line: 106, column: 10, scope: !109)
!296 = distinct !{!296, !266, !297, !178}
!297 = !DILocation(line: 107, column: 5, scope: !111)
!298 = !DILocation(line: 15, column: 1, scope: !299)
!299 = !DILexicalBlockFile(scope: !43, file: !13, discriminator: 0)
!300 = !DISubprogram(name: "cblas_xerbla", scope: !16, file: !16, line: 602, type: !301, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!301 = !DISubroutineType(types: !302)
!302 = !{null, !51, !303, !303, null}
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
