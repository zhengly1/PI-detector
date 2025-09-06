; ModuleID = 'ssbmv.c'
source_filename = "ssbmv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"./source_sbmv.h\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !7
@.str.2 = private unnamed_addr constant [23 x i8] c"unrecognized operation\00", align 1, !dbg !12

; Function Attrs: nounwind uwtable
define dso_local void @cblas_ssbmv(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, float noundef %4, ptr nocapture noundef readonly %5, i32 noundef %6, ptr nocapture noundef readonly %7, i32 noundef %8, float noundef %9, ptr nocapture noundef %10, i32 noundef %11) local_unnamed_addr #0 !dbg !39 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !51, metadata !DIExpression()), !dbg !109
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !52, metadata !DIExpression()), !dbg !109
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !53, metadata !DIExpression()), !dbg !109
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !54, metadata !DIExpression()), !dbg !109
  tail call void @llvm.dbg.value(metadata float %4, metadata !55, metadata !DIExpression()), !dbg !109
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !56, metadata !DIExpression()), !dbg !109
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !57, metadata !DIExpression()), !dbg !109
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !58, metadata !DIExpression()), !dbg !109
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !59, metadata !DIExpression()), !dbg !109
  tail call void @llvm.dbg.value(metadata float %9, metadata !60, metadata !DIExpression()), !dbg !109
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !61, metadata !DIExpression()), !dbg !109
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !62, metadata !DIExpression()), !dbg !109
  tail call void @llvm.dbg.value(metadata i32 0, metadata !67, metadata !DIExpression()), !dbg !110
  %13 = add i32 %0, -103, !dbg !111
  %14 = icmp ult i32 %13, -2, !dbg !111
  %15 = zext i1 %14 to i32, !dbg !111
  tail call void @llvm.dbg.value(metadata i32 %15, metadata !67, metadata !DIExpression()), !dbg !110
  %16 = add i32 %1, -123, !dbg !113
  %17 = icmp ult i32 %16, -2, !dbg !113
  %18 = select i1 %17, i32 2, i32 %15, !dbg !113
  tail call void @llvm.dbg.value(metadata i32 %18, metadata !67, metadata !DIExpression()), !dbg !110
  %19 = icmp slt i32 %2, 0, !dbg !115
  %20 = select i1 %19, i32 3, i32 %18, !dbg !117
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !67, metadata !DIExpression()), !dbg !110
  %21 = icmp slt i32 %3, 0, !dbg !118
  %22 = select i1 %21, i32 4, i32 %20, !dbg !117
  tail call void @llvm.dbg.value(metadata i32 %22, metadata !67, metadata !DIExpression()), !dbg !110
  %23 = tail call i32 @llvm.smax.i32(i32 %3, i32 0), !dbg !120
  %24 = icmp slt i32 %23, %6, !dbg !120
  %25 = select i1 %24, i32 %22, i32 7, !dbg !117
  tail call void @llvm.dbg.value(metadata i32 %25, metadata !67, metadata !DIExpression()), !dbg !110
  %26 = icmp eq i32 %8, 0, !dbg !122
  %27 = select i1 %26, i32 9, i32 %25, !dbg !117
  tail call void @llvm.dbg.value(metadata i32 %27, metadata !67, metadata !DIExpression()), !dbg !110
  %28 = icmp eq i32 %11, 0, !dbg !124
  %29 = select i1 %28, i32 12, i32 %27, !dbg !117
  tail call void @llvm.dbg.value(metadata i32 %29, metadata !67, metadata !DIExpression()), !dbg !110
  %30 = icmp eq i32 %29, 0, !dbg !126
  br i1 %30, label %32, label %31, !dbg !117

31:                                               ; preds = %12
  tail call void (i32, ptr, ptr, ...) @cblas_xerbla(i32 noundef %29, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #3, !dbg !126
  br label %32, !dbg !126

32:                                               ; preds = %31, %12
  %33 = icmp eq i32 %2, 0, !dbg !128
  br i1 %33, label %308, label %34, !dbg !130

34:                                               ; preds = %32
  %35 = fcmp oeq float %4, 0.000000e+00, !dbg !131
  %36 = fcmp oeq float %9, 1.000000e+00
  %37 = and i1 %35, %36, !dbg !133
  br i1 %37, label %308, label %38, !dbg !133

38:                                               ; preds = %34
  %39 = fcmp oeq float %9, 0.000000e+00, !dbg !134
  br i1 %39, label %40, label %66, !dbg !135

40:                                               ; preds = %38
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !69, metadata !DIExpression()), !dbg !136
  tail call void @llvm.dbg.value(metadata i32 0, metadata !63, metadata !DIExpression()), !dbg !137
  %41 = icmp sgt i32 %2, 0, !dbg !138
  br i1 %41, label %42, label %124, !dbg !141

42:                                               ; preds = %40
  %43 = icmp sgt i32 %11, 0, !dbg !142
  %44 = sub nsw i32 1, %2, !dbg !142
  %45 = mul i32 %44, %11, !dbg !142
  %46 = select i1 %43, i32 0, i32 %45, !dbg !142
  tail call void @llvm.dbg.value(metadata i32 %46, metadata !69, metadata !DIExpression()), !dbg !136
  %47 = sext i32 %46 to i64, !dbg !141
  %48 = sext i32 %11 to i64, !dbg !141
  %49 = and i32 %2, 3, !dbg !141
  %50 = icmp ult i32 %2, 4, !dbg !141
  br i1 %50, label %102, label %51, !dbg !141

51:                                               ; preds = %42
  %52 = and i32 %2, 2147483644, !dbg !141
  br label %53, !dbg !141

53:                                               ; preds = %53, %51
  %54 = phi i64 [ %47, %51 ], [ %63, %53 ]
  %55 = phi i32 [ 0, %51 ], [ %64, %53 ]
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !63, metadata !DIExpression()), !dbg !137
  tail call void @llvm.dbg.value(metadata i64 %54, metadata !69, metadata !DIExpression()), !dbg !136
  %56 = getelementptr inbounds float, ptr %10, i64 %54, !dbg !143
  store float 0.000000e+00, ptr %56, align 4, !dbg !145, !tbaa !146
  %57 = add i64 %54, %48, !dbg !150
  tail call void @llvm.dbg.value(metadata i64 %57, metadata !69, metadata !DIExpression()), !dbg !136
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !63, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !137
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !63, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !137
  tail call void @llvm.dbg.value(metadata i64 %57, metadata !69, metadata !DIExpression()), !dbg !136
  %58 = getelementptr inbounds float, ptr %10, i64 %57, !dbg !143
  store float 0.000000e+00, ptr %58, align 4, !dbg !145, !tbaa !146
  %59 = add i64 %57, %48, !dbg !150
  tail call void @llvm.dbg.value(metadata i64 %59, metadata !69, metadata !DIExpression()), !dbg !136
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !63, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !137
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !63, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !137
  tail call void @llvm.dbg.value(metadata i64 %59, metadata !69, metadata !DIExpression()), !dbg !136
  %60 = getelementptr inbounds float, ptr %10, i64 %59, !dbg !143
  store float 0.000000e+00, ptr %60, align 4, !dbg !145, !tbaa !146
  %61 = add i64 %59, %48, !dbg !150
  tail call void @llvm.dbg.value(metadata i64 %61, metadata !69, metadata !DIExpression()), !dbg !136
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !63, metadata !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value)), !dbg !137
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !63, metadata !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value)), !dbg !137
  tail call void @llvm.dbg.value(metadata i64 %61, metadata !69, metadata !DIExpression()), !dbg !136
  %62 = getelementptr inbounds float, ptr %10, i64 %61, !dbg !143
  store float 0.000000e+00, ptr %62, align 4, !dbg !145, !tbaa !146
  %63 = add i64 %61, %48, !dbg !150
  tail call void @llvm.dbg.value(metadata i64 %63, metadata !69, metadata !DIExpression()), !dbg !136
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !63, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !137
  %64 = add i32 %55, 4, !dbg !141
  %65 = icmp eq i32 %64, %52, !dbg !141
  br i1 %65, label %102, label %53, !dbg !141, !llvm.loop !151

66:                                               ; preds = %38
  %67 = fcmp une float %9, 1.000000e+00, !dbg !154
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !72, metadata !DIExpression()), !dbg !155
  tail call void @llvm.dbg.value(metadata i32 0, metadata !63, metadata !DIExpression()), !dbg !137
  %68 = icmp sgt i32 %2, 0
  %69 = and i1 %67, %68, !dbg !156
  br i1 %69, label %70, label %124, !dbg !156

70:                                               ; preds = %66
  %71 = icmp sgt i32 %11, 0, !dbg !157
  %72 = sub nsw i32 1, %2, !dbg !157
  %73 = mul i32 %72, %11, !dbg !157
  %74 = select i1 %71, i32 0, i32 %73, !dbg !157
  tail call void @llvm.dbg.value(metadata i32 %74, metadata !72, metadata !DIExpression()), !dbg !155
  %75 = sext i32 %74 to i64, !dbg !158
  %76 = sext i32 %11 to i64, !dbg !158
  %77 = and i32 %2, 3, !dbg !158
  %78 = icmp ult i32 %2, 4, !dbg !158
  br i1 %78, label %112, label %79, !dbg !158

79:                                               ; preds = %70
  %80 = and i32 %2, -4, !dbg !158
  br label %81, !dbg !158

81:                                               ; preds = %81, %79
  %82 = phi i64 [ %75, %79 ], [ %99, %81 ]
  %83 = phi i32 [ 0, %79 ], [ %100, %81 ]
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !63, metadata !DIExpression()), !dbg !137
  tail call void @llvm.dbg.value(metadata i64 %82, metadata !72, metadata !DIExpression()), !dbg !155
  %84 = getelementptr inbounds float, ptr %10, i64 %82, !dbg !160
  %85 = load float, ptr %84, align 4, !dbg !163, !tbaa !146
  %86 = fmul float %85, %9, !dbg !163
  store float %86, ptr %84, align 4, !dbg !163, !tbaa !146
  %87 = add i64 %82, %76, !dbg !164
  tail call void @llvm.dbg.value(metadata i64 %87, metadata !72, metadata !DIExpression()), !dbg !155
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !63, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !137
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !63, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !137
  tail call void @llvm.dbg.value(metadata i64 %87, metadata !72, metadata !DIExpression()), !dbg !155
  %88 = getelementptr inbounds float, ptr %10, i64 %87, !dbg !160
  %89 = load float, ptr %88, align 4, !dbg !163, !tbaa !146
  %90 = fmul float %89, %9, !dbg !163
  store float %90, ptr %88, align 4, !dbg !163, !tbaa !146
  %91 = add i64 %87, %76, !dbg !164
  tail call void @llvm.dbg.value(metadata i64 %91, metadata !72, metadata !DIExpression()), !dbg !155
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !63, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !137
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !63, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !137
  tail call void @llvm.dbg.value(metadata i64 %91, metadata !72, metadata !DIExpression()), !dbg !155
  %92 = getelementptr inbounds float, ptr %10, i64 %91, !dbg !160
  %93 = load float, ptr %92, align 4, !dbg !163, !tbaa !146
  %94 = fmul float %93, %9, !dbg !163
  store float %94, ptr %92, align 4, !dbg !163, !tbaa !146
  %95 = add i64 %91, %76, !dbg !164
  tail call void @llvm.dbg.value(metadata i64 %95, metadata !72, metadata !DIExpression()), !dbg !155
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !63, metadata !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value)), !dbg !137
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !63, metadata !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value)), !dbg !137
  tail call void @llvm.dbg.value(metadata i64 %95, metadata !72, metadata !DIExpression()), !dbg !155
  %96 = getelementptr inbounds float, ptr %10, i64 %95, !dbg !160
  %97 = load float, ptr %96, align 4, !dbg !163, !tbaa !146
  %98 = fmul float %97, %9, !dbg !163
  store float %98, ptr %96, align 4, !dbg !163, !tbaa !146
  %99 = add i64 %95, %76, !dbg !164
  tail call void @llvm.dbg.value(metadata i64 %99, metadata !72, metadata !DIExpression()), !dbg !155
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !63, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !137
  %100 = add i32 %83, 4, !dbg !158
  %101 = icmp eq i32 %100, %80, !dbg !158
  br i1 %101, label %112, label %81, !dbg !158, !llvm.loop !165

102:                                              ; preds = %53, %42
  %103 = phi i64 [ %47, %42 ], [ %63, %53 ]
  %104 = icmp eq i32 %49, 0, !dbg !141
  br i1 %104, label %124, label %105, !dbg !141

105:                                              ; preds = %102, %105
  %106 = phi i64 [ %109, %105 ], [ %103, %102 ]
  %107 = phi i32 [ %110, %105 ], [ 0, %102 ]
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !63, metadata !DIExpression()), !dbg !137
  tail call void @llvm.dbg.value(metadata i64 %106, metadata !69, metadata !DIExpression()), !dbg !136
  %108 = getelementptr inbounds float, ptr %10, i64 %106, !dbg !143
  store float 0.000000e+00, ptr %108, align 4, !dbg !145, !tbaa !146
  %109 = add i64 %106, %48, !dbg !150
  tail call void @llvm.dbg.value(metadata i64 %109, metadata !69, metadata !DIExpression()), !dbg !136
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !63, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !137
  %110 = add i32 %107, 1, !dbg !141
  %111 = icmp eq i32 %110, %49, !dbg !141
  br i1 %111, label %124, label %105, !dbg !141, !llvm.loop !167

112:                                              ; preds = %81, %70
  %113 = phi i64 [ %75, %70 ], [ %99, %81 ]
  %114 = icmp eq i32 %77, 0, !dbg !158
  br i1 %114, label %124, label %115, !dbg !158

115:                                              ; preds = %112, %115
  %116 = phi i64 [ %121, %115 ], [ %113, %112 ]
  %117 = phi i32 [ %122, %115 ], [ 0, %112 ]
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !63, metadata !DIExpression()), !dbg !137
  tail call void @llvm.dbg.value(metadata i64 %116, metadata !72, metadata !DIExpression()), !dbg !155
  %118 = getelementptr inbounds float, ptr %10, i64 %116, !dbg !160
  %119 = load float, ptr %118, align 4, !dbg !163, !tbaa !146
  %120 = fmul float %119, %9, !dbg !163
  store float %120, ptr %118, align 4, !dbg !163, !tbaa !146
  %121 = add i64 %116, %76, !dbg !164
  tail call void @llvm.dbg.value(metadata i64 %121, metadata !72, metadata !DIExpression()), !dbg !155
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !63, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !137
  %122 = add i32 %117, 1, !dbg !158
  %123 = icmp eq i32 %122, %77, !dbg !158
  br i1 %123, label %124, label %115, !dbg !158, !llvm.loop !169

124:                                              ; preds = %112, %115, %102, %105, %40, %66
  br i1 %35, label %308, label %125, !dbg !170

125:                                              ; preds = %124
  %126 = icmp eq i32 %0, 101, !dbg !171
  %127 = icmp eq i32 %1, 121
  %128 = and i1 %126, %127, !dbg !172
  br i1 %128, label %133, label %129, !dbg !172

129:                                              ; preds = %125
  %130 = icmp eq i32 %0, 102, !dbg !173
  %131 = icmp eq i32 %1, 122
  %132 = and i1 %130, %131, !dbg !174
  br i1 %132, label %133, label %218, !dbg !174

133:                                              ; preds = %129, %125
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !78, metadata !DIExpression()), !dbg !175
  tail call void @llvm.dbg.value(metadata i32 0, metadata !63, metadata !DIExpression()), !dbg !137
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !75, metadata !DIExpression()), !dbg !175
  %134 = icmp sgt i32 %2, 0, !dbg !176
  br i1 %134, label %135, label %308, !dbg !177

135:                                              ; preds = %133
  %136 = icmp sgt i32 %11, 0, !dbg !178
  %137 = sub nsw i32 1, %2, !dbg !179
  %138 = mul i32 %137, %11, !dbg !178
  %139 = select i1 %136, i32 0, i32 %138, !dbg !178
  tail call void @llvm.dbg.value(metadata i32 %139, metadata !78, metadata !DIExpression()), !dbg !175
  %140 = icmp sgt i32 %8, 0, !dbg !179
  %141 = mul i32 %137, %8, !dbg !179
  %142 = select i1 %140, i32 0, i32 %141, !dbg !179
  tail call void @llvm.dbg.value(metadata i32 %142, metadata !75, metadata !DIExpression()), !dbg !175
  %143 = sext i32 %11 to i64, !dbg !177
  %144 = sext i32 %8 to i64, !dbg !177
  %145 = sext i32 %3 to i64, !dbg !177
  %146 = zext nneg i32 %2 to i64, !dbg !177
  %147 = sext i32 %6 to i64, !dbg !177
  %148 = sext i32 %142 to i64, !dbg !177
  %149 = sext i32 %139 to i64, !dbg !177
  %150 = zext nneg i32 %2 to i64, !dbg !176
  %151 = add i32 %6, -1
  br label %152, !dbg !177

152:                                              ; preds = %135, %209
  %153 = phi i64 [ %149, %135 ], [ %215, %209 ]
  %154 = phi i64 [ %148, %135 ], [ %214, %209 ]
  %155 = phi i64 [ 0, %135 ], [ %164, %209 ]
  %156 = phi i32 [ %142, %135 ], [ %160, %209 ]
  %157 = phi i32 [ %139, %135 ], [ %159, %209 ]
  %158 = phi i64 [ 1, %135 ], [ %216, %209 ]
  %159 = add i32 %157, %11, !dbg !177
  %160 = add i32 %156, %8, !dbg !177
  tail call void @llvm.dbg.value(metadata i64 %155, metadata !63, metadata !DIExpression()), !dbg !137
  tail call void @llvm.dbg.value(metadata i64 %154, metadata !75, metadata !DIExpression()), !dbg !175
  tail call void @llvm.dbg.value(metadata i64 %153, metadata !78, metadata !DIExpression()), !dbg !175
  %161 = getelementptr inbounds float, ptr %7, i64 %154, !dbg !180
  %162 = load float, ptr %161, align 4, !dbg !180, !tbaa !146
  %163 = fmul float %162, %4, !dbg !181
  tail call void @llvm.dbg.value(metadata float %163, metadata !79, metadata !DIExpression()), !dbg !182
  tail call void @llvm.dbg.value(metadata float 0.000000e+00, metadata !83, metadata !DIExpression()), !dbg !182
  %164 = add nuw nsw i64 %155, 1, !dbg !183
  tail call void @llvm.dbg.value(metadata i64 %164, metadata !84, metadata !DIExpression()), !dbg !182
  %165 = add nsw i64 %155, %145, !dbg !184
  %166 = icmp slt i64 %165, %146, !dbg !184
  %167 = trunc i64 %165 to i32, !dbg !184
  %168 = add i32 %167, 1, !dbg !184
  %169 = select i1 %166, i32 %168, i32 %2, !dbg !184
  tail call void @llvm.dbg.value(metadata i32 %169, metadata !85, metadata !DIExpression()), !dbg !182
  tail call void @llvm.dbg.value(metadata !DIArgList(i64 poison, i32 poison, i32 poison), metadata !86, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !182
  tail call void @llvm.dbg.value(metadata !DIArgList(i64 poison, i32 poison, i32 poison), metadata !87, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !182
  %170 = mul nsw i64 %155, %147, !dbg !185
  %171 = getelementptr inbounds float, ptr %5, i64 %170, !dbg !186
  %172 = load float, ptr %171, align 4, !dbg !186, !tbaa !146
  %173 = fmul float %163, %172, !dbg !187
  %174 = getelementptr inbounds float, ptr %10, i64 %153, !dbg !188
  %175 = load float, ptr %174, align 4, !dbg !189, !tbaa !146
  %176 = fadd float %175, %173, !dbg !189
  store float %176, ptr %174, align 4, !dbg !189, !tbaa !146
  tail call void @llvm.dbg.value(metadata i64 %164, metadata !66, metadata !DIExpression()), !dbg !137
  %177 = sext i32 %169 to i64, !dbg !190
  %178 = icmp slt i64 %164, %177, !dbg !190
  br i1 %178, label %179, label %209, !dbg !191

179:                                              ; preds = %152
  %180 = trunc i64 %155 to i32
  %181 = sext i32 %160 to i64, !dbg !180
  %182 = sext i32 %159 to i64, !dbg !180
  tail call void @llvm.dbg.value(metadata !DIArgList(i64 poison, i32 poison, i32 poison), metadata !87, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !182
  tail call void @llvm.dbg.value(metadata !DIArgList(i64 poison, i32 poison, i32 poison), metadata !86, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !182
  %183 = mul i32 %151, %180
  %184 = zext i32 %169 to i64, !dbg !190
  br label %185, !dbg !191

185:                                              ; preds = %179, %185
  %186 = phi i64 [ %181, %179 ], [ %203, %185 ]
  %187 = phi i64 [ %182, %179 ], [ %204, %185 ]
  %188 = phi i64 [ %158, %179 ], [ %205, %185 ]
  %189 = phi float [ 0.000000e+00, %179 ], [ %202, %185 ]
  tail call void @llvm.dbg.value(metadata i64 %188, metadata !66, metadata !DIExpression()), !dbg !137
  tail call void @llvm.dbg.value(metadata i64 %187, metadata !87, metadata !DIExpression()), !dbg !182
  tail call void @llvm.dbg.value(metadata i64 %186, metadata !86, metadata !DIExpression()), !dbg !182
  tail call void @llvm.dbg.value(metadata float %189, metadata !83, metadata !DIExpression()), !dbg !182
  %190 = trunc i64 %188 to i32, !dbg !192
  %191 = add i32 %183, %190, !dbg !192
  %192 = sext i32 %191 to i64, !dbg !193
  %193 = getelementptr inbounds float, ptr %5, i64 %192, !dbg !193
  %194 = load float, ptr %193, align 4, !dbg !193, !tbaa !146
  tail call void @llvm.dbg.value(metadata float %194, metadata !88, metadata !DIExpression()), !dbg !194
  %195 = fmul float %163, %194, !dbg !195
  %196 = getelementptr inbounds float, ptr %10, i64 %187, !dbg !196
  %197 = load float, ptr %196, align 4, !dbg !197, !tbaa !146
  %198 = fadd float %197, %195, !dbg !197
  store float %198, ptr %196, align 4, !dbg !197, !tbaa !146
  %199 = getelementptr inbounds float, ptr %7, i64 %186, !dbg !198
  %200 = load float, ptr %199, align 4, !dbg !198, !tbaa !146
  %201 = fmul float %194, %200, !dbg !199
  %202 = fadd float %189, %201, !dbg !200
  tail call void @llvm.dbg.value(metadata float %202, metadata !83, metadata !DIExpression()), !dbg !182
  %203 = add i64 %186, %144, !dbg !201
  tail call void @llvm.dbg.value(metadata i64 %203, metadata !86, metadata !DIExpression()), !dbg !182
  %204 = add i64 %187, %143, !dbg !202
  tail call void @llvm.dbg.value(metadata i64 %204, metadata !87, metadata !DIExpression()), !dbg !182
  %205 = add nuw nsw i64 %188, 1, !dbg !203
  tail call void @llvm.dbg.value(metadata i64 %205, metadata !66, metadata !DIExpression()), !dbg !137
  %206 = icmp eq i64 %205, %184, !dbg !190
  br i1 %206, label %207, label %185, !dbg !191, !llvm.loop !204

207:                                              ; preds = %185
  %208 = load float, ptr %174, align 4, !dbg !206, !tbaa !146
  br label %209, !dbg !207

209:                                              ; preds = %207, %152
  %210 = phi float [ %176, %152 ], [ %208, %207 ], !dbg !206
  %211 = phi float [ 0.000000e+00, %152 ], [ %202, %207 ], !dbg !182
  %212 = fmul float %211, %4, !dbg !207
  %213 = fadd float %212, %210, !dbg !206
  store float %213, ptr %174, align 4, !dbg !206, !tbaa !146
  %214 = add i64 %154, %144, !dbg !208
  tail call void @llvm.dbg.value(metadata i64 %214, metadata !75, metadata !DIExpression()), !dbg !175
  %215 = add i64 %153, %143, !dbg !209
  tail call void @llvm.dbg.value(metadata i64 %164, metadata !63, metadata !DIExpression()), !dbg !137
  tail call void @llvm.dbg.value(metadata i64 %215, metadata !78, metadata !DIExpression()), !dbg !175
  %216 = add nuw nsw i64 %158, 1, !dbg !177
  %217 = icmp eq i64 %164, %150, !dbg !176
  br i1 %217, label %308, label %152, !dbg !177, !llvm.loop !210

218:                                              ; preds = %129
  %219 = and i1 %126, %131, !dbg !212
  %220 = and i1 %130, %127
  %221 = or i1 %219, %220, !dbg !212
  br i1 %221, label %222, label %307, !dbg !212

222:                                              ; preds = %218
  %223 = icmp sgt i32 %8, 0, !dbg !213
  %224 = sub i32 1, %2, !dbg !213
  %225 = mul i32 %224, %8, !dbg !213
  %226 = select i1 %223, i32 0, i32 %225, !dbg !213
  tail call void @llvm.dbg.value(metadata i32 %226, metadata !92, metadata !DIExpression()), !dbg !214
  %227 = icmp sgt i32 %11, 0, !dbg !215
  %228 = mul i32 %224, %11, !dbg !215
  %229 = select i1 %227, i32 0, i32 %228, !dbg !215
  tail call void @llvm.dbg.value(metadata i32 %229, metadata !95, metadata !DIExpression()), !dbg !214
  tail call void @llvm.dbg.value(metadata i32 0, metadata !63, metadata !DIExpression()), !dbg !137
  %230 = icmp sgt i32 %2, 0, !dbg !216
  br i1 %230, label %231, label %308, !dbg !217

231:                                              ; preds = %222
  %232 = sext i32 %11 to i64, !dbg !217
  %233 = sext i32 %8 to i64, !dbg !217
  %234 = sext i32 %6 to i64, !dbg !217
  %235 = sext i32 %3 to i64, !dbg !217
  %236 = sext i32 %229 to i64, !dbg !217
  %237 = sext i32 %226 to i64, !dbg !217
  %238 = zext nneg i32 %2 to i64, !dbg !216
  %239 = getelementptr float, ptr %5, i64 %235, !dbg !217
  br label %240, !dbg !217

240:                                              ; preds = %231, %292
  %241 = phi i64 [ %237, %231 ], [ %303, %292 ]
  %242 = phi i64 [ %236, %231 ], [ %304, %292 ]
  %243 = phi i64 [ 0, %231 ], [ %305, %292 ]
  tail call void @llvm.dbg.value(metadata i64 %243, metadata !63, metadata !DIExpression()), !dbg !137
  tail call void @llvm.dbg.value(metadata i64 %242, metadata !95, metadata !DIExpression()), !dbg !214
  tail call void @llvm.dbg.value(metadata i64 %241, metadata !92, metadata !DIExpression()), !dbg !214
  %244 = getelementptr inbounds float, ptr %7, i64 %241, !dbg !218
  %245 = load float, ptr %244, align 4, !dbg !218, !tbaa !146
  %246 = fmul float %245, %4, !dbg !219
  tail call void @llvm.dbg.value(metadata float %246, metadata !96, metadata !DIExpression()), !dbg !220
  tail call void @llvm.dbg.value(metadata float 0.000000e+00, metadata !100, metadata !DIExpression()), !dbg !220
  %247 = icmp sgt i64 %243, %235, !dbg !221
  %248 = trunc i64 %243 to i32, !dbg !222
  %249 = sub i32 %248, %3, !dbg !222
  %250 = sext i32 %249 to i64, !dbg !223
  tail call void @llvm.dbg.value(metadata i64 %243, metadata !102, metadata !DIExpression()), !dbg !220
  %251 = select i1 %247, i64 %250, i64 0, !dbg !223
  tail call void @llvm.dbg.value(metadata !DIArgList(i64 %251, i32 %229, i32 %11), metadata !104, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !220
  tail call void @llvm.dbg.value(metadata !DIArgList(i64 %251, i32 %226, i32 %8), metadata !103, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !220
  tail call void @llvm.dbg.value(metadata i64 %251, metadata !101, metadata !DIExpression()), !dbg !220
  tail call void @llvm.dbg.value(metadata i64 %251, metadata !66, metadata !DIExpression()), !dbg !137
  %252 = icmp slt i64 %251, %243, !dbg !223
  br i1 %252, label %255, label %253, !dbg !224

253:                                              ; preds = %240
  %254 = mul nsw i64 %243, %234, !dbg !225
  br label %292, !dbg !224

255:                                              ; preds = %240
  %256 = trunc i64 %243 to i32, !dbg !218
  %257 = tail call i32 @llvm.smax.i32(i32 %3, i32 %256), !dbg !218
  %258 = sub i32 %257, %3, !dbg !218
  %259 = sext i32 %258 to i64, !dbg !218
  %260 = mul i32 %258, %8, !dbg !218
  %261 = add i32 %226, %260, !dbg !218
  %262 = sext i32 %261 to i64, !dbg !218
  %263 = mul i32 %258, %11, !dbg !218
  %264 = add i32 %229, %263, !dbg !218
  %265 = sext i32 %264 to i64, !dbg !218
  tail call void @llvm.dbg.value(metadata !DIArgList(i64 %251, i32 %229, i32 %11), metadata !104, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !220
  tail call void @llvm.dbg.value(metadata !DIArgList(i64 %251, i32 %226, i32 %8), metadata !103, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !220
  %266 = sub i32 %3, %256
  %267 = mul nsw i64 %243, %234
  %268 = trunc i64 %267 to i32
  %269 = add i32 %266, %268
  br label %270, !dbg !224

270:                                              ; preds = %255, %270
  %271 = phi i64 [ %259, %255 ], [ %290, %270 ]
  %272 = phi i64 [ %262, %255 ], [ %288, %270 ]
  %273 = phi i64 [ %265, %255 ], [ %289, %270 ]
  %274 = phi float [ 0.000000e+00, %255 ], [ %287, %270 ]
  tail call void @llvm.dbg.value(metadata i64 %273, metadata !104, metadata !DIExpression()), !dbg !220
  tail call void @llvm.dbg.value(metadata i64 %272, metadata !103, metadata !DIExpression()), !dbg !220
  tail call void @llvm.dbg.value(metadata i64 %271, metadata !66, metadata !DIExpression()), !dbg !137
  tail call void @llvm.dbg.value(metadata float %274, metadata !100, metadata !DIExpression()), !dbg !220
  %275 = trunc i64 %271 to i32, !dbg !226
  %276 = add i32 %269, %275, !dbg !226
  %277 = sext i32 %276 to i64, !dbg !227
  %278 = getelementptr inbounds float, ptr %5, i64 %277, !dbg !227
  %279 = load float, ptr %278, align 4, !dbg !227, !tbaa !146
  tail call void @llvm.dbg.value(metadata float %279, metadata !105, metadata !DIExpression()), !dbg !228
  %280 = fmul float %246, %279, !dbg !229
  %281 = getelementptr inbounds float, ptr %10, i64 %273, !dbg !230
  %282 = load float, ptr %281, align 4, !dbg !231, !tbaa !146
  %283 = fadd float %282, %280, !dbg !231
  store float %283, ptr %281, align 4, !dbg !231, !tbaa !146
  %284 = getelementptr inbounds float, ptr %7, i64 %272, !dbg !232
  %285 = load float, ptr %284, align 4, !dbg !232, !tbaa !146
  %286 = fmul float %279, %285, !dbg !233
  %287 = fadd float %274, %286, !dbg !234
  tail call void @llvm.dbg.value(metadata float %287, metadata !100, metadata !DIExpression()), !dbg !220
  %288 = add i64 %272, %233, !dbg !235
  tail call void @llvm.dbg.value(metadata i64 %288, metadata !103, metadata !DIExpression()), !dbg !220
  %289 = add i64 %273, %232, !dbg !236
  tail call void @llvm.dbg.value(metadata i64 %289, metadata !104, metadata !DIExpression()), !dbg !220
  %290 = add nsw i64 %271, 1, !dbg !237
  tail call void @llvm.dbg.value(metadata i64 %290, metadata !66, metadata !DIExpression()), !dbg !137
  %291 = icmp slt i64 %290, %243, !dbg !223
  br i1 %291, label %270, label %292, !dbg !224, !llvm.loop !238

292:                                              ; preds = %270, %253
  %293 = phi i64 [ %254, %253 ], [ %267, %270 ], !dbg !225
  %294 = phi float [ 0.000000e+00, %253 ], [ %287, %270 ], !dbg !220
  %295 = getelementptr float, ptr %239, i64 %293, !dbg !240
  %296 = load float, ptr %295, align 4, !dbg !240, !tbaa !146
  %297 = fmul float %246, %296, !dbg !241
  %298 = fmul float %294, %4, !dbg !242
  %299 = fadd float %298, %297, !dbg !243
  %300 = getelementptr inbounds float, ptr %10, i64 %242, !dbg !244
  %301 = load float, ptr %300, align 4, !dbg !245, !tbaa !146
  %302 = fadd float %301, %299, !dbg !245
  store float %302, ptr %300, align 4, !dbg !245, !tbaa !146
  %303 = add i64 %241, %233, !dbg !246
  tail call void @llvm.dbg.value(metadata i64 %303, metadata !92, metadata !DIExpression()), !dbg !214
  %304 = add i64 %242, %232, !dbg !247
  tail call void @llvm.dbg.value(metadata i64 %304, metadata !95, metadata !DIExpression()), !dbg !214
  %305 = add nuw nsw i64 %243, 1, !dbg !248
  tail call void @llvm.dbg.value(metadata i64 %305, metadata !63, metadata !DIExpression()), !dbg !137
  %306 = icmp eq i64 %305, %238, !dbg !216
  br i1 %306, label %308, label %240, !dbg !217, !llvm.loop !249

307:                                              ; preds = %218
  tail call void (i32, ptr, ptr, ...) @cblas_xerbla(i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #3, !dbg !251
  br label %308

308:                                              ; preds = %292, %209, %222, %133, %307, %124, %34, %32
  ret void, !dbg !253
}

declare !dbg !255 void @cblas_xerbla(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!17}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 23, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "./source_sbmv.h", directory: "/PI-detector/external/gsl/gsl-2.5/cblas", checksumkind: CSK_MD5, checksum: "3a20ce6d920d9ab4f7d00cd36eb5502d")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 16)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 23, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 1)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 99, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 23)
!17 = distinct !DICompileUnit(language: DW_LANG_C11, file: !18, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !19, globals: !30, splitDebugInlining: false, nameTableKind: None)
!18 = !DIFile(filename: "ssbmv.c", directory: "/PI-detector/external/gsl/gsl-2.5/cblas", checksumkind: CSK_MD5, checksum: "68a0b4955ae5eb58dda3ccd808fcba96")
!19 = !{!20, !26}
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
!30 = !{!0, !7, !12}
!31 = !{i32 7, !"Dwarf Version", i32 5}
!32 = !{i32 2, !"Debug Info Version", i32 3}
!33 = !{i32 1, !"wchar_size", i32 4}
!34 = !{i32 8, !"PIC Level", i32 2}
!35 = !{i32 7, !"PIE Level", i32 2}
!36 = !{i32 7, !"uwtable", i32 2}
!37 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!38 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!39 = distinct !DISubprogram(name: "cblas_ssbmv", scope: !18, file: !18, line: 7, type: !40, scopeLine: 11, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !50)
!40 = !DISubroutineType(types: !41)
!41 = !{null, !42, !43, !44, !44, !46, !48, !44, !48, !44, !46, !49, !44}
!42 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!43 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !26)
!44 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!45 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!46 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !47)
!47 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!50 = !{!51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !66, !67, !69, !72, !75, !78, !79, !83, !84, !85, !86, !87, !88, !92, !95, !96, !100, !101, !102, !103, !104, !105}
!51 = !DILocalVariable(name: "order", arg: 1, scope: !39, file: !18, line: 7, type: !42)
!52 = !DILocalVariable(name: "Uplo", arg: 2, scope: !39, file: !18, line: 7, type: !43)
!53 = !DILocalVariable(name: "N", arg: 3, scope: !39, file: !18, line: 8, type: !44)
!54 = !DILocalVariable(name: "K", arg: 4, scope: !39, file: !18, line: 8, type: !44)
!55 = !DILocalVariable(name: "alpha", arg: 5, scope: !39, file: !18, line: 8, type: !46)
!56 = !DILocalVariable(name: "A", arg: 6, scope: !39, file: !18, line: 8, type: !48)
!57 = !DILocalVariable(name: "lda", arg: 7, scope: !39, file: !18, line: 9, type: !44)
!58 = !DILocalVariable(name: "X", arg: 8, scope: !39, file: !18, line: 9, type: !48)
!59 = !DILocalVariable(name: "incX", arg: 9, scope: !39, file: !18, line: 9, type: !44)
!60 = !DILocalVariable(name: "beta", arg: 10, scope: !39, file: !18, line: 9, type: !46)
!61 = !DILocalVariable(name: "Y", arg: 11, scope: !39, file: !18, line: 10, type: !49)
!62 = !DILocalVariable(name: "incY", arg: 12, scope: !39, file: !18, line: 10, type: !44)
!63 = !DILocalVariable(name: "i", scope: !64, file: !2, line: 21, type: !45)
!64 = distinct !DILexicalBlock(scope: !65, file: !2, line: 20, column: 1)
!65 = !DILexicalBlockFile(scope: !39, file: !2, discriminator: 0)
!66 = !DILocalVariable(name: "j", scope: !64, file: !2, line: 21, type: !45)
!67 = !DILocalVariable(name: "pos", scope: !68, file: !2, line: 23, type: !45)
!68 = distinct !DILexicalBlock(scope: !64, file: !2, line: 23, column: 3)
!69 = !DILocalVariable(name: "iy", scope: !70, file: !2, line: 33, type: !45)
!70 = distinct !DILexicalBlock(scope: !71, file: !2, line: 32, column: 20)
!71 = distinct !DILexicalBlock(scope: !64, file: !2, line: 32, column: 7)
!72 = !DILocalVariable(name: "iy", scope: !73, file: !2, line: 39, type: !45)
!73 = distinct !DILexicalBlock(scope: !74, file: !2, line: 38, column: 27)
!74 = distinct !DILexicalBlock(scope: !71, file: !2, line: 38, column: 14)
!75 = !DILocalVariable(name: "ix", scope: !76, file: !2, line: 53, type: !45)
!76 = distinct !DILexicalBlock(scope: !77, file: !2, line: 52, column: 58)
!77 = distinct !DILexicalBlock(scope: !64, file: !2, line: 51, column: 7)
!78 = !DILocalVariable(name: "iy", scope: !76, file: !2, line: 54, type: !45)
!79 = !DILocalVariable(name: "tmp1", scope: !80, file: !2, line: 57, type: !47)
!80 = distinct !DILexicalBlock(scope: !81, file: !2, line: 56, column: 29)
!81 = distinct !DILexicalBlock(scope: !82, file: !2, line: 56, column: 5)
!82 = distinct !DILexicalBlock(scope: !76, file: !2, line: 56, column: 5)
!83 = !DILocalVariable(name: "tmp2", scope: !80, file: !2, line: 58, type: !47)
!84 = !DILocalVariable(name: "j_min", scope: !80, file: !2, line: 59, type: !44)
!85 = !DILocalVariable(name: "j_max", scope: !80, file: !2, line: 60, type: !44)
!86 = !DILocalVariable(name: "jx", scope: !80, file: !2, line: 61, type: !45)
!87 = !DILocalVariable(name: "jy", scope: !80, file: !2, line: 62, type: !45)
!88 = !DILocalVariable(name: "Aij", scope: !89, file: !2, line: 65, type: !47)
!89 = distinct !DILexicalBlock(scope: !90, file: !2, line: 64, column: 39)
!90 = distinct !DILexicalBlock(scope: !91, file: !2, line: 64, column: 7)
!91 = distinct !DILexicalBlock(scope: !80, file: !2, line: 64, column: 7)
!92 = !DILocalVariable(name: "ix", scope: !93, file: !2, line: 77, type: !45)
!93 = distinct !DILexicalBlock(scope: !94, file: !2, line: 76, column: 65)
!94 = distinct !DILexicalBlock(scope: !77, file: !2, line: 75, column: 14)
!95 = !DILocalVariable(name: "iy", scope: !93, file: !2, line: 78, type: !45)
!96 = !DILocalVariable(name: "tmp1", scope: !97, file: !2, line: 81, type: !47)
!97 = distinct !DILexicalBlock(scope: !98, file: !2, line: 80, column: 29)
!98 = distinct !DILexicalBlock(scope: !99, file: !2, line: 80, column: 5)
!99 = distinct !DILexicalBlock(scope: !93, file: !2, line: 80, column: 5)
!100 = !DILocalVariable(name: "tmp2", scope: !97, file: !2, line: 82, type: !47)
!101 = !DILocalVariable(name: "j_min", scope: !97, file: !2, line: 83, type: !44)
!102 = !DILocalVariable(name: "j_max", scope: !97, file: !2, line: 84, type: !44)
!103 = !DILocalVariable(name: "jx", scope: !97, file: !2, line: 85, type: !45)
!104 = !DILocalVariable(name: "jy", scope: !97, file: !2, line: 86, type: !45)
!105 = !DILocalVariable(name: "Aij", scope: !106, file: !2, line: 88, type: !47)
!106 = distinct !DILexicalBlock(scope: !107, file: !2, line: 87, column: 39)
!107 = distinct !DILexicalBlock(scope: !108, file: !2, line: 87, column: 7)
!108 = distinct !DILexicalBlock(scope: !97, file: !2, line: 87, column: 7)
!109 = !DILocation(line: 0, scope: !39)
!110 = !DILocation(line: 0, scope: !68)
!111 = !DILocation(line: 23, column: 3, scope: !112)
!112 = distinct !DILexicalBlock(scope: !68, file: !2, line: 23, column: 3)
!113 = !DILocation(line: 23, column: 3, scope: !114)
!114 = distinct !DILexicalBlock(scope: !68, file: !2, line: 23, column: 3)
!115 = !DILocation(line: 23, column: 3, scope: !116)
!116 = distinct !DILexicalBlock(scope: !68, file: !2, line: 23, column: 3)
!117 = !DILocation(line: 23, column: 3, scope: !68)
!118 = !DILocation(line: 23, column: 3, scope: !119)
!119 = distinct !DILexicalBlock(scope: !68, file: !2, line: 23, column: 3)
!120 = !DILocation(line: 23, column: 3, scope: !121)
!121 = distinct !DILexicalBlock(scope: !68, file: !2, line: 23, column: 3)
!122 = !DILocation(line: 23, column: 3, scope: !123)
!123 = distinct !DILexicalBlock(scope: !68, file: !2, line: 23, column: 3)
!124 = !DILocation(line: 23, column: 3, scope: !125)
!125 = distinct !DILexicalBlock(scope: !68, file: !2, line: 23, column: 3)
!126 = !DILocation(line: 23, column: 3, scope: !127)
!127 = distinct !DILexicalBlock(scope: !68, file: !2, line: 23, column: 3)
!128 = !DILocation(line: 25, column: 9, scope: !129)
!129 = distinct !DILexicalBlock(scope: !64, file: !2, line: 25, column: 7)
!130 = !DILocation(line: 25, column: 7, scope: !64)
!131 = !DILocation(line: 28, column: 13, scope: !132)
!132 = distinct !DILexicalBlock(scope: !64, file: !2, line: 28, column: 7)
!133 = !DILocation(line: 28, column: 20, scope: !132)
!134 = !DILocation(line: 32, column: 12, scope: !71)
!135 = !DILocation(line: 32, column: 7, scope: !64)
!136 = !DILocation(line: 0, scope: !70)
!137 = !DILocation(line: 0, scope: !64)
!138 = !DILocation(line: 34, column: 19, scope: !139)
!139 = distinct !DILexicalBlock(scope: !140, file: !2, line: 34, column: 5)
!140 = distinct !DILexicalBlock(scope: !70, file: !2, line: 34, column: 5)
!141 = !DILocation(line: 34, column: 5, scope: !140)
!142 = !DILocation(line: 33, column: 16, scope: !70)
!143 = !DILocation(line: 35, column: 7, scope: !144)
!144 = distinct !DILexicalBlock(scope: !139, file: !2, line: 34, column: 29)
!145 = !DILocation(line: 35, column: 13, scope: !144)
!146 = !{!147, !147, i64 0}
!147 = !{!"float", !148, i64 0}
!148 = !{!"omnipotent char", !149, i64 0}
!149 = !{!"Simple C/C++ TBAA"}
!150 = !DILocation(line: 36, column: 10, scope: !144)
!151 = distinct !{!151, !141, !152, !153}
!152 = !DILocation(line: 37, column: 5, scope: !140)
!153 = !{!"llvm.loop.mustprogress"}
!154 = !DILocation(line: 38, column: 19, scope: !74)
!155 = !DILocation(line: 0, scope: !73)
!156 = !DILocation(line: 38, column: 14, scope: !71)
!157 = !DILocation(line: 39, column: 16, scope: !73)
!158 = !DILocation(line: 40, column: 5, scope: !159)
!159 = distinct !DILexicalBlock(scope: !73, file: !2, line: 40, column: 5)
!160 = !DILocation(line: 41, column: 7, scope: !161)
!161 = distinct !DILexicalBlock(scope: !162, file: !2, line: 40, column: 29)
!162 = distinct !DILexicalBlock(scope: !159, file: !2, line: 40, column: 5)
!163 = !DILocation(line: 41, column: 13, scope: !161)
!164 = !DILocation(line: 42, column: 10, scope: !161)
!165 = distinct !{!165, !158, !166, !153}
!166 = !DILocation(line: 43, column: 5, scope: !159)
!167 = distinct !{!167, !168}
!168 = !{!"llvm.loop.unroll.disable"}
!169 = distinct !{!169, !168}
!170 = !DILocation(line: 46, column: 7, scope: !64)
!171 = !DILocation(line: 51, column: 14, scope: !77)
!172 = !DILocation(line: 51, column: 31, scope: !77)
!173 = !DILocation(line: 52, column: 17, scope: !77)
!174 = !DILocation(line: 52, column: 34, scope: !77)
!175 = !DILocation(line: 0, scope: !76)
!176 = !DILocation(line: 56, column: 19, scope: !81)
!177 = !DILocation(line: 56, column: 5, scope: !82)
!178 = !DILocation(line: 54, column: 16, scope: !76)
!179 = !DILocation(line: 53, column: 16, scope: !76)
!180 = !DILocation(line: 57, column: 27, scope: !80)
!181 = !DILocation(line: 57, column: 25, scope: !80)
!182 = !DILocation(line: 0, scope: !80)
!183 = !DILocation(line: 59, column: 29, scope: !80)
!184 = !DILocation(line: 60, column: 27, scope: !80)
!185 = !DILocation(line: 63, column: 31, scope: !80)
!186 = !DILocation(line: 63, column: 23, scope: !80)
!187 = !DILocation(line: 63, column: 21, scope: !80)
!188 = !DILocation(line: 63, column: 7, scope: !80)
!189 = !DILocation(line: 63, column: 13, scope: !80)
!190 = !DILocation(line: 64, column: 25, scope: !90)
!191 = !DILocation(line: 64, column: 7, scope: !91)
!192 = !DILocation(line: 65, column: 30, scope: !89)
!193 = !DILocation(line: 65, column: 20, scope: !89)
!194 = !DILocation(line: 0, scope: !89)
!195 = !DILocation(line: 66, column: 23, scope: !89)
!196 = !DILocation(line: 66, column: 9, scope: !89)
!197 = !DILocation(line: 66, column: 15, scope: !89)
!198 = !DILocation(line: 67, column: 23, scope: !89)
!199 = !DILocation(line: 67, column: 21, scope: !89)
!200 = !DILocation(line: 67, column: 14, scope: !89)
!201 = !DILocation(line: 68, column: 12, scope: !89)
!202 = !DILocation(line: 69, column: 12, scope: !89)
!203 = !DILocation(line: 64, column: 35, scope: !90)
!204 = distinct !{!204, !191, !205, !153}
!205 = !DILocation(line: 70, column: 7, scope: !91)
!206 = !DILocation(line: 71, column: 13, scope: !80)
!207 = !DILocation(line: 71, column: 22, scope: !80)
!208 = !DILocation(line: 72, column: 10, scope: !80)
!209 = !DILocation(line: 73, column: 10, scope: !80)
!210 = distinct !{!210, !177, !211, !153}
!211 = !DILocation(line: 74, column: 5, scope: !82)
!212 = !DILocation(line: 75, column: 38, scope: !94)
!213 = !DILocation(line: 77, column: 16, scope: !93)
!214 = !DILocation(line: 0, scope: !93)
!215 = !DILocation(line: 78, column: 16, scope: !93)
!216 = !DILocation(line: 80, column: 19, scope: !98)
!217 = !DILocation(line: 80, column: 5, scope: !99)
!218 = !DILocation(line: 81, column: 27, scope: !97)
!219 = !DILocation(line: 81, column: 25, scope: !97)
!220 = !DILocation(line: 0, scope: !97)
!221 = !DILocation(line: 83, column: 30, scope: !97)
!222 = !DILocation(line: 83, column: 27, scope: !97)
!223 = !DILocation(line: 87, column: 25, scope: !107)
!224 = !DILocation(line: 87, column: 7, scope: !108)
!225 = !DILocation(line: 94, column: 31, scope: !97)
!226 = !DILocation(line: 88, column: 34, scope: !106)
!227 = !DILocation(line: 88, column: 20, scope: !106)
!228 = !DILocation(line: 0, scope: !106)
!229 = !DILocation(line: 89, column: 23, scope: !106)
!230 = !DILocation(line: 89, column: 9, scope: !106)
!231 = !DILocation(line: 89, column: 15, scope: !106)
!232 = !DILocation(line: 90, column: 23, scope: !106)
!233 = !DILocation(line: 90, column: 21, scope: !106)
!234 = !DILocation(line: 90, column: 14, scope: !106)
!235 = !DILocation(line: 91, column: 12, scope: !106)
!236 = !DILocation(line: 92, column: 12, scope: !106)
!237 = !DILocation(line: 87, column: 35, scope: !107)
!238 = distinct !{!238, !224, !239, !153}
!239 = !DILocation(line: 93, column: 7, scope: !108)
!240 = !DILocation(line: 94, column: 23, scope: !97)
!241 = !DILocation(line: 94, column: 21, scope: !97)
!242 = !DILocation(line: 94, column: 46, scope: !97)
!243 = !DILocation(line: 94, column: 38, scope: !97)
!244 = !DILocation(line: 94, column: 7, scope: !97)
!245 = !DILocation(line: 94, column: 13, scope: !97)
!246 = !DILocation(line: 95, column: 10, scope: !97)
!247 = !DILocation(line: 96, column: 10, scope: !97)
!248 = !DILocation(line: 80, column: 25, scope: !98)
!249 = distinct !{!249, !217, !250, !153}
!250 = !DILocation(line: 97, column: 5, scope: !99)
!251 = !DILocation(line: 99, column: 5, scope: !252)
!252 = distinct !DILexicalBlock(scope: !94, file: !2, line: 98, column: 10)
!253 = !DILocation(line: 15, column: 1, scope: !254)
!254 = !DILexicalBlockFile(scope: !39, file: !18, discriminator: 0)
!255 = !DISubprogram(name: "cblas_xerbla", scope: !21, file: !21, line: 602, type: !256, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!256 = !DISubroutineType(types: !257)
!257 = !{null, !45, !258, !258, null}
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
