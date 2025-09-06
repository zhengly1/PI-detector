; ModuleID = 'dsbmv.ll'
source_filename = "dsbmv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"./source_sbmv.h\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !7
@.str.2 = private unnamed_addr constant [23 x i8] c"unrecognized operation\00", align 1, !dbg !12

; Function Attrs: nounwind uwtable
define dso_local void @cblas_dsbmv(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, double noundef %4, ptr nocapture noundef readonly %5, i32 noundef %6, ptr nocapture noundef readonly %7, i32 noundef %8, double noundef %9, ptr nocapture noundef %10, i32 noundef %11) local_unnamed_addr #0 !dbg !39 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !51, metadata !DIExpression()), !dbg !109
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !52, metadata !DIExpression()), !dbg !109
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !53, metadata !DIExpression()), !dbg !109
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !54, metadata !DIExpression()), !dbg !109
  tail call void @llvm.dbg.value(metadata double %4, metadata !55, metadata !DIExpression()), !dbg !109
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !56, metadata !DIExpression()), !dbg !109
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !57, metadata !DIExpression()), !dbg !109
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !58, metadata !DIExpression()), !dbg !109
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !59, metadata !DIExpression()), !dbg !109
  tail call void @llvm.dbg.value(metadata double %9, metadata !60, metadata !DIExpression()), !dbg !109
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
  br i1 %33, label %300, label %34, !dbg !130

34:                                               ; preds = %32
  %35 = fcmp oeq double %4, 0.000000e+00, !dbg !131
  %36 = fcmp oeq double %9, 1.000000e+00
  %37 = and i1 %35, %36, !dbg !133
  br i1 %37, label %300, label %38, !dbg !133

38:                                               ; preds = %34
  %39 = fcmp oeq double %9, 0.000000e+00, !dbg !134
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
  %56 = getelementptr inbounds double, ptr %10, i64 %54, !dbg !143
  store double 0.000000e+00, ptr %56, align 8, !dbg !145, !tbaa !146
  %57 = add i64 %54, %48, !dbg !150
  tail call void @llvm.dbg.value(metadata i64 %57, metadata !69, metadata !DIExpression()), !dbg !136
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !63, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !137
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !63, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !137
  tail call void @llvm.dbg.value(metadata i64 %57, metadata !69, metadata !DIExpression()), !dbg !136
  %58 = getelementptr inbounds double, ptr %10, i64 %57, !dbg !143
  store double 0.000000e+00, ptr %58, align 8, !dbg !145, !tbaa !146
  %59 = add i64 %57, %48, !dbg !150
  tail call void @llvm.dbg.value(metadata i64 %59, metadata !69, metadata !DIExpression()), !dbg !136
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !63, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !137
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !63, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !137
  tail call void @llvm.dbg.value(metadata i64 %59, metadata !69, metadata !DIExpression()), !dbg !136
  %60 = getelementptr inbounds double, ptr %10, i64 %59, !dbg !143
  store double 0.000000e+00, ptr %60, align 8, !dbg !145, !tbaa !146
  %61 = add i64 %59, %48, !dbg !150
  tail call void @llvm.dbg.value(metadata i64 %61, metadata !69, metadata !DIExpression()), !dbg !136
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !63, metadata !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value)), !dbg !137
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !63, metadata !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value)), !dbg !137
  tail call void @llvm.dbg.value(metadata i64 %61, metadata !69, metadata !DIExpression()), !dbg !136
  %62 = getelementptr inbounds double, ptr %10, i64 %61, !dbg !143
  store double 0.000000e+00, ptr %62, align 8, !dbg !145, !tbaa !146
  %63 = add i64 %61, %48, !dbg !150
  tail call void @llvm.dbg.value(metadata i64 %63, metadata !69, metadata !DIExpression()), !dbg !136
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !63, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !137
  %64 = add i32 %55, 4, !dbg !141
  %65 = icmp eq i32 %64, %52, !dbg !141
  br i1 %65, label %102, label %53, !dbg !141, !llvm.loop !151

66:                                               ; preds = %38
  %67 = fcmp une double %9, 1.000000e+00, !dbg !154
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
  %84 = getelementptr inbounds double, ptr %10, i64 %82, !dbg !160
  %85 = load double, ptr %84, align 8, !dbg !163, !tbaa !146
  %86 = fmul double %85, %9, !dbg !163
  store double %86, ptr %84, align 8, !dbg !163, !tbaa !146
  %87 = add i64 %82, %76, !dbg !164
  tail call void @llvm.dbg.value(metadata i64 %87, metadata !72, metadata !DIExpression()), !dbg !155
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !63, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !137
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !63, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !137
  tail call void @llvm.dbg.value(metadata i64 %87, metadata !72, metadata !DIExpression()), !dbg !155
  %88 = getelementptr inbounds double, ptr %10, i64 %87, !dbg !160
  %89 = load double, ptr %88, align 8, !dbg !163, !tbaa !146
  %90 = fmul double %89, %9, !dbg !163
  store double %90, ptr %88, align 8, !dbg !163, !tbaa !146
  %91 = add i64 %87, %76, !dbg !164
  tail call void @llvm.dbg.value(metadata i64 %91, metadata !72, metadata !DIExpression()), !dbg !155
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !63, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !137
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !63, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !137
  tail call void @llvm.dbg.value(metadata i64 %91, metadata !72, metadata !DIExpression()), !dbg !155
  %92 = getelementptr inbounds double, ptr %10, i64 %91, !dbg !160
  %93 = load double, ptr %92, align 8, !dbg !163, !tbaa !146
  %94 = fmul double %93, %9, !dbg !163
  store double %94, ptr %92, align 8, !dbg !163, !tbaa !146
  %95 = add i64 %91, %76, !dbg !164
  tail call void @llvm.dbg.value(metadata i64 %95, metadata !72, metadata !DIExpression()), !dbg !155
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !63, metadata !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value)), !dbg !137
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !63, metadata !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value)), !dbg !137
  tail call void @llvm.dbg.value(metadata i64 %95, metadata !72, metadata !DIExpression()), !dbg !155
  %96 = getelementptr inbounds double, ptr %10, i64 %95, !dbg !160
  %97 = load double, ptr %96, align 8, !dbg !163, !tbaa !146
  %98 = fmul double %97, %9, !dbg !163
  store double %98, ptr %96, align 8, !dbg !163, !tbaa !146
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

105:                                              ; preds = %105, %102
  %106 = phi i64 [ %109, %105 ], [ %103, %102 ]
  %107 = phi i32 [ %110, %105 ], [ 0, %102 ]
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !63, metadata !DIExpression()), !dbg !137
  tail call void @llvm.dbg.value(metadata i64 %106, metadata !69, metadata !DIExpression()), !dbg !136
  %108 = getelementptr inbounds double, ptr %10, i64 %106, !dbg !143
  store double 0.000000e+00, ptr %108, align 8, !dbg !145, !tbaa !146
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

115:                                              ; preds = %115, %112
  %116 = phi i64 [ %121, %115 ], [ %113, %112 ]
  %117 = phi i32 [ %122, %115 ], [ 0, %112 ]
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !63, metadata !DIExpression()), !dbg !137
  tail call void @llvm.dbg.value(metadata i64 %116, metadata !72, metadata !DIExpression()), !dbg !155
  %118 = getelementptr inbounds double, ptr %10, i64 %116, !dbg !160
  %119 = load double, ptr %118, align 8, !dbg !163, !tbaa !146
  %120 = fmul double %119, %9, !dbg !163
  store double %120, ptr %118, align 8, !dbg !163, !tbaa !146
  %121 = add i64 %116, %76, !dbg !164
  tail call void @llvm.dbg.value(metadata i64 %121, metadata !72, metadata !DIExpression()), !dbg !155
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !63, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !137
  %122 = add i32 %117, 1, !dbg !158
  %123 = icmp eq i32 %122, %77, !dbg !158
  br i1 %123, label %124, label %115, !dbg !158, !llvm.loop !169

124:                                              ; preds = %115, %112, %105, %102, %66, %40
  br i1 %35, label %300, label %125, !dbg !170

125:                                              ; preds = %124
  %126 = icmp eq i32 %0, 101, !dbg !171
  %127 = icmp eq i32 %1, 121
  %128 = and i1 %126, %127, !dbg !172
  br i1 %128, label %133, label %129, !dbg !172

129:                                              ; preds = %125
  %130 = icmp eq i32 %0, 102, !dbg !173
  %131 = icmp eq i32 %1, 122
  %132 = and i1 %130, %131, !dbg !174
  br i1 %132, label %133, label %214, !dbg !174

133:                                              ; preds = %129, %125
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !78, metadata !DIExpression()), !dbg !175
  tail call void @llvm.dbg.value(metadata i32 0, metadata !63, metadata !DIExpression()), !dbg !137
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !75, metadata !DIExpression()), !dbg !175
  %134 = icmp sgt i32 %2, 0, !dbg !176
  br i1 %134, label %135, label %300, !dbg !177

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

152:                                              ; preds = %206, %135
  %153 = phi i64 [ %149, %135 ], [ %211, %206 ]
  %154 = phi i64 [ %148, %135 ], [ %210, %206 ]
  %155 = phi i64 [ 0, %135 ], [ %164, %206 ]
  %156 = phi i32 [ %142, %135 ], [ %160, %206 ]
  %157 = phi i32 [ %139, %135 ], [ %159, %206 ]
  %158 = phi i64 [ 1, %135 ], [ %212, %206 ]
  %159 = add i32 %157, %11, !dbg !177
  %160 = add i32 %156, %8, !dbg !177
  tail call void @llvm.dbg.value(metadata i64 %155, metadata !63, metadata !DIExpression()), !dbg !137
  tail call void @llvm.dbg.value(metadata i64 %154, metadata !75, metadata !DIExpression()), !dbg !175
  tail call void @llvm.dbg.value(metadata i64 %153, metadata !78, metadata !DIExpression()), !dbg !175
  %161 = getelementptr inbounds double, ptr %7, i64 %154, !dbg !180
  %162 = load double, ptr %161, align 8, !dbg !180, !tbaa !146
  %163 = fmul double %162, %4, !dbg !181
  tail call void @llvm.dbg.value(metadata double %163, metadata !79, metadata !DIExpression()), !dbg !182
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !83, metadata !DIExpression()), !dbg !182
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
  %171 = getelementptr inbounds double, ptr %5, i64 %170, !dbg !186
  %172 = load double, ptr %171, align 8, !dbg !186, !tbaa !146
  %173 = fmul double %163, %172, !dbg !187
  %174 = getelementptr inbounds double, ptr %10, i64 %153, !dbg !188
  %175 = load double, ptr %174, align 8, !dbg !189, !tbaa !146
  %handler_result = call double @fAddHandlerDouble(double %175, double %173), !dbg !189
  store double %handler_result, ptr %174, align 8, !dbg !189, !tbaa !146
  tail call void @llvm.dbg.value(metadata i64 %164, metadata !66, metadata !DIExpression()), !dbg !137
  %176 = sext i32 %169 to i64, !dbg !190
  %177 = icmp slt i64 %164, %176, !dbg !190
  br i1 %177, label %178, label %206, !dbg !191

178:                                              ; preds = %152
  %179 = trunc i64 %155 to i32
  %180 = sext i32 %160 to i64, !dbg !180
  %181 = sext i32 %159 to i64, !dbg !180
  tail call void @llvm.dbg.value(metadata !DIArgList(i64 poison, i32 poison, i32 poison), metadata !87, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !182
  tail call void @llvm.dbg.value(metadata !DIArgList(i64 poison, i32 poison, i32 poison), metadata !86, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !182
  %182 = mul i32 %151, %179
  %183 = zext i32 %169 to i64, !dbg !190
  br label %184, !dbg !191

184:                                              ; preds = %184, %178
  %185 = phi i64 [ %180, %178 ], [ %200, %184 ]
  %186 = phi i64 [ %181, %178 ], [ %201, %184 ]
  %187 = phi i64 [ %158, %178 ], [ %202, %184 ]
  %188 = phi double [ 0.000000e+00, %178 ], [ %handler_result2, %184 ]
  tail call void @llvm.dbg.value(metadata i64 %187, metadata !66, metadata !DIExpression()), !dbg !137
  tail call void @llvm.dbg.value(metadata i64 %186, metadata !87, metadata !DIExpression()), !dbg !182
  tail call void @llvm.dbg.value(metadata i64 %185, metadata !86, metadata !DIExpression()), !dbg !182
  tail call void @llvm.dbg.value(metadata double %188, metadata !83, metadata !DIExpression()), !dbg !182
  %189 = trunc i64 %187 to i32, !dbg !192
  %190 = add i32 %182, %189, !dbg !192
  %191 = sext i32 %190 to i64, !dbg !193
  %192 = getelementptr inbounds double, ptr %5, i64 %191, !dbg !193
  %193 = load double, ptr %192, align 8, !dbg !193, !tbaa !146
  tail call void @llvm.dbg.value(metadata double %193, metadata !88, metadata !DIExpression()), !dbg !194
  %194 = fmul double %163, %193, !dbg !195
  %195 = getelementptr inbounds double, ptr %10, i64 %186, !dbg !196
  %196 = load double, ptr %195, align 8, !dbg !197, !tbaa !146
  %handler_result1 = call double @fAddHandlerDouble(double %196, double %194), !dbg !197
  store double %handler_result1, ptr %195, align 8, !dbg !197, !tbaa !146
  %197 = getelementptr inbounds double, ptr %7, i64 %185, !dbg !198
  %198 = load double, ptr %197, align 8, !dbg !198, !tbaa !146
  %199 = fmul double %193, %198, !dbg !199
  %handler_result2 = call double @fAddHandlerDouble(double %188, double %199), !dbg !200
  tail call void @llvm.dbg.value(metadata double %handler_result2, metadata !83, metadata !DIExpression()), !dbg !182
  %200 = add i64 %185, %144, !dbg !200
  tail call void @llvm.dbg.value(metadata i64 %200, metadata !86, metadata !DIExpression()), !dbg !182
  %201 = add i64 %186, %143, !dbg !201
  tail call void @llvm.dbg.value(metadata i64 %201, metadata !87, metadata !DIExpression()), !dbg !182
  %202 = add nuw nsw i64 %187, 1, !dbg !202
  tail call void @llvm.dbg.value(metadata i64 %202, metadata !66, metadata !DIExpression()), !dbg !137
  %203 = icmp eq i64 %202, %183, !dbg !190
  br i1 %203, label %204, label %184, !dbg !191, !llvm.loop !203

204:                                              ; preds = %184
  %205 = load double, ptr %174, align 8, !dbg !205, !tbaa !146
  br label %206, !dbg !206

206:                                              ; preds = %204, %152
  %207 = phi double [ %handler_result, %152 ], [ %205, %204 ], !dbg !205
  %208 = phi double [ 0.000000e+00, %152 ], [ %handler_result2, %204 ], !dbg !182
  %209 = fmul double %208, %4, !dbg !206
  %handler_result3 = call double @fAddHandlerDouble(double %209, double %207), !dbg !205
  store double %handler_result3, ptr %174, align 8, !dbg !205, !tbaa !146
  %210 = add i64 %154, %144, !dbg !207
  tail call void @llvm.dbg.value(metadata i64 %210, metadata !75, metadata !DIExpression()), !dbg !175
  %211 = add i64 %153, %143, !dbg !208
  tail call void @llvm.dbg.value(metadata i64 %164, metadata !63, metadata !DIExpression()), !dbg !137
  tail call void @llvm.dbg.value(metadata i64 %211, metadata !78, metadata !DIExpression()), !dbg !175
  %212 = add nuw nsw i64 %158, 1, !dbg !177
  %213 = icmp eq i64 %164, %150, !dbg !176
  br i1 %213, label %300, label %152, !dbg !177, !llvm.loop !209

214:                                              ; preds = %129
  %215 = and i1 %126, %131, !dbg !211
  %216 = and i1 %130, %127
  %217 = or i1 %215, %216, !dbg !211
  br i1 %217, label %218, label %299, !dbg !211

218:                                              ; preds = %214
  %219 = icmp sgt i32 %8, 0, !dbg !212
  %220 = sub i32 1, %2, !dbg !212
  %221 = mul i32 %220, %8, !dbg !212
  %222 = select i1 %219, i32 0, i32 %221, !dbg !212
  tail call void @llvm.dbg.value(metadata i32 %222, metadata !92, metadata !DIExpression()), !dbg !213
  %223 = icmp sgt i32 %11, 0, !dbg !214
  %224 = mul i32 %220, %11, !dbg !214
  %225 = select i1 %223, i32 0, i32 %224, !dbg !214
  tail call void @llvm.dbg.value(metadata i32 %225, metadata !95, metadata !DIExpression()), !dbg !213
  tail call void @llvm.dbg.value(metadata i32 0, metadata !63, metadata !DIExpression()), !dbg !137
  %226 = icmp sgt i32 %2, 0, !dbg !215
  br i1 %226, label %227, label %300, !dbg !216

227:                                              ; preds = %218
  %228 = sext i32 %11 to i64, !dbg !216
  %229 = sext i32 %8 to i64, !dbg !216
  %230 = sext i32 %6 to i64, !dbg !216
  %231 = sext i32 %3 to i64, !dbg !216
  %232 = sext i32 %225 to i64, !dbg !216
  %233 = sext i32 %222 to i64, !dbg !216
  %234 = zext nneg i32 %2 to i64, !dbg !215
  %235 = getelementptr double, ptr %5, i64 %231, !dbg !216
  br label %236, !dbg !216

236:                                              ; preds = %286, %227
  %237 = phi i64 [ %233, %227 ], [ %295, %286 ]
  %238 = phi i64 [ %232, %227 ], [ %296, %286 ]
  %239 = phi i64 [ 0, %227 ], [ %297, %286 ]
  tail call void @llvm.dbg.value(metadata i64 %239, metadata !63, metadata !DIExpression()), !dbg !137
  tail call void @llvm.dbg.value(metadata i64 %238, metadata !95, metadata !DIExpression()), !dbg !213
  tail call void @llvm.dbg.value(metadata i64 %237, metadata !92, metadata !DIExpression()), !dbg !213
  %240 = getelementptr inbounds double, ptr %7, i64 %237, !dbg !217
  %241 = load double, ptr %240, align 8, !dbg !217, !tbaa !146
  %242 = fmul double %241, %4, !dbg !218
  tail call void @llvm.dbg.value(metadata double %242, metadata !96, metadata !DIExpression()), !dbg !219
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !100, metadata !DIExpression()), !dbg !219
  %243 = icmp sgt i64 %239, %231, !dbg !220
  %244 = trunc i64 %239 to i32, !dbg !221
  %245 = sub i32 %244, %3, !dbg !221
  %246 = sext i32 %245 to i64, !dbg !222
  tail call void @llvm.dbg.value(metadata i64 %239, metadata !102, metadata !DIExpression()), !dbg !219
  %247 = select i1 %243, i64 %246, i64 0, !dbg !222
  tail call void @llvm.dbg.value(metadata !DIArgList(i64 %247, i32 %225, i32 %11), metadata !104, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !219
  tail call void @llvm.dbg.value(metadata !DIArgList(i64 %247, i32 %222, i32 %8), metadata !103, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !219
  tail call void @llvm.dbg.value(metadata i64 %247, metadata !101, metadata !DIExpression()), !dbg !219
  tail call void @llvm.dbg.value(metadata i64 %247, metadata !66, metadata !DIExpression()), !dbg !137
  %248 = icmp slt i64 %247, %239, !dbg !222
  br i1 %248, label %251, label %249, !dbg !223

249:                                              ; preds = %236
  %250 = mul nsw i64 %239, %230, !dbg !224
  br label %286, !dbg !223

251:                                              ; preds = %236
  %252 = trunc i64 %239 to i32, !dbg !217
  %253 = tail call i32 @llvm.smax.i32(i32 %3, i32 %252), !dbg !217
  %254 = sub i32 %253, %3, !dbg !217
  %255 = sext i32 %254 to i64, !dbg !217
  %256 = mul i32 %254, %8, !dbg !217
  %257 = add i32 %222, %256, !dbg !217
  %258 = sext i32 %257 to i64, !dbg !217
  %259 = mul i32 %254, %11, !dbg !217
  %260 = add i32 %225, %259, !dbg !217
  %261 = sext i32 %260 to i64, !dbg !217
  tail call void @llvm.dbg.value(metadata !DIArgList(i64 %247, i32 %225, i32 %11), metadata !104, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !219
  tail call void @llvm.dbg.value(metadata !DIArgList(i64 %247, i32 %222, i32 %8), metadata !103, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !219
  %262 = sub i32 %3, %252
  %263 = mul nsw i64 %239, %230
  %264 = trunc i64 %263 to i32
  %265 = add i32 %262, %264
  br label %266, !dbg !223

266:                                              ; preds = %266, %251
  %267 = phi i64 [ %255, %251 ], [ %284, %266 ]
  %268 = phi i64 [ %258, %251 ], [ %282, %266 ]
  %269 = phi i64 [ %261, %251 ], [ %283, %266 ]
  %270 = phi double [ 0.000000e+00, %251 ], [ %handler_result5, %266 ]
  tail call void @llvm.dbg.value(metadata i64 %269, metadata !104, metadata !DIExpression()), !dbg !219
  tail call void @llvm.dbg.value(metadata i64 %268, metadata !103, metadata !DIExpression()), !dbg !219
  tail call void @llvm.dbg.value(metadata i64 %267, metadata !66, metadata !DIExpression()), !dbg !137
  tail call void @llvm.dbg.value(metadata double %270, metadata !100, metadata !DIExpression()), !dbg !219
  %271 = trunc i64 %267 to i32, !dbg !225
  %272 = add i32 %265, %271, !dbg !225
  %273 = sext i32 %272 to i64, !dbg !226
  %274 = getelementptr inbounds double, ptr %5, i64 %273, !dbg !226
  %275 = load double, ptr %274, align 8, !dbg !226, !tbaa !146
  tail call void @llvm.dbg.value(metadata double %275, metadata !105, metadata !DIExpression()), !dbg !227
  %276 = fmul double %242, %275, !dbg !228
  %277 = getelementptr inbounds double, ptr %10, i64 %269, !dbg !229
  %278 = load double, ptr %277, align 8, !dbg !230, !tbaa !146
  %handler_result4 = call double @fAddHandlerDouble(double %278, double %276), !dbg !230
  store double %handler_result4, ptr %277, align 8, !dbg !230, !tbaa !146
  %279 = getelementptr inbounds double, ptr %7, i64 %268, !dbg !231
  %280 = load double, ptr %279, align 8, !dbg !231, !tbaa !146
  %281 = fmul double %275, %280, !dbg !232
  %handler_result5 = call double @fAddHandlerDouble(double %270, double %281), !dbg !233
  tail call void @llvm.dbg.value(metadata double %handler_result5, metadata !100, metadata !DIExpression()), !dbg !219
  %282 = add i64 %268, %229, !dbg !233
  tail call void @llvm.dbg.value(metadata i64 %282, metadata !103, metadata !DIExpression()), !dbg !219
  %283 = add i64 %269, %228, !dbg !234
  tail call void @llvm.dbg.value(metadata i64 %283, metadata !104, metadata !DIExpression()), !dbg !219
  %284 = add nsw i64 %267, 1, !dbg !235
  tail call void @llvm.dbg.value(metadata i64 %284, metadata !66, metadata !DIExpression()), !dbg !137
  %285 = icmp slt i64 %284, %239, !dbg !222
  br i1 %285, label %266, label %286, !dbg !223, !llvm.loop !236

286:                                              ; preds = %266, %249
  %287 = phi i64 [ %250, %249 ], [ %263, %266 ], !dbg !224
  %288 = phi double [ 0.000000e+00, %249 ], [ %handler_result5, %266 ], !dbg !219
  %289 = getelementptr double, ptr %235, i64 %287, !dbg !238
  %290 = load double, ptr %289, align 8, !dbg !238, !tbaa !146
  %291 = fmul double %242, %290, !dbg !239
  %292 = fmul double %288, %4, !dbg !240
  %handler_result6 = call double @fAddHandlerDouble(double %292, double %291), !dbg !241
  %293 = getelementptr inbounds double, ptr %10, i64 %238, !dbg !241
  %294 = load double, ptr %293, align 8, !dbg !242, !tbaa !146
  %handler_result7 = call double @fAddHandlerDouble(double %294, double %handler_result6), !dbg !242
  store double %handler_result7, ptr %293, align 8, !dbg !242, !tbaa !146
  %295 = add i64 %237, %229, !dbg !243
  tail call void @llvm.dbg.value(metadata i64 %295, metadata !92, metadata !DIExpression()), !dbg !213
  %296 = add i64 %238, %228, !dbg !244
  tail call void @llvm.dbg.value(metadata i64 %296, metadata !95, metadata !DIExpression()), !dbg !213
  %297 = add nuw nsw i64 %239, 1, !dbg !245
  tail call void @llvm.dbg.value(metadata i64 %297, metadata !63, metadata !DIExpression()), !dbg !137
  %298 = icmp eq i64 %297, %234, !dbg !215
  br i1 %298, label %300, label %236, !dbg !216, !llvm.loop !246

299:                                              ; preds = %214
  tail call void (i32, ptr, ptr, ...) @cblas_xerbla(i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #3, !dbg !248
  br label %300

300:                                              ; preds = %299, %286, %218, %206, %133, %124, %34, %32
  ret void, !dbg !250
}

declare !dbg !252 void @cblas_xerbla(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #2

declare double @fAddHandlerDouble(double, double)

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
!18 = !DIFile(filename: "dsbmv.c", directory: "/PI-detector/external/gsl/gsl-2.5/cblas", checksumkind: CSK_MD5, checksum: "63c9ada17d0c18111593c2c55500c2fc")
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
!39 = distinct !DISubprogram(name: "cblas_dsbmv", scope: !18, file: !18, line: 7, type: !40, scopeLine: 11, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !50)
!40 = !DISubroutineType(types: !41)
!41 = !{null, !42, !43, !44, !44, !46, !48, !44, !48, !44, !46, !49, !44}
!42 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!43 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !26)
!44 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!45 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!46 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !47)
!47 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
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
!60 = !DILocalVariable(name: "beta", arg: 10, scope: !39, file: !18, line: 10, type: !46)
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
!147 = !{!"double", !148, i64 0}
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
!200 = !DILocation(line: 68, column: 12, scope: !89)
!201 = !DILocation(line: 69, column: 12, scope: !89)
!202 = !DILocation(line: 64, column: 35, scope: !90)
!203 = distinct !{!203, !191, !204, !153}
!204 = !DILocation(line: 70, column: 7, scope: !91)
!205 = !DILocation(line: 71, column: 13, scope: !80)
!206 = !DILocation(line: 71, column: 22, scope: !80)
!207 = !DILocation(line: 72, column: 10, scope: !80)
!208 = !DILocation(line: 73, column: 10, scope: !80)
!209 = distinct !{!209, !177, !210, !153}
!210 = !DILocation(line: 74, column: 5, scope: !82)
!211 = !DILocation(line: 75, column: 38, scope: !94)
!212 = !DILocation(line: 77, column: 16, scope: !93)
!213 = !DILocation(line: 0, scope: !93)
!214 = !DILocation(line: 78, column: 16, scope: !93)
!215 = !DILocation(line: 80, column: 19, scope: !98)
!216 = !DILocation(line: 80, column: 5, scope: !99)
!217 = !DILocation(line: 81, column: 27, scope: !97)
!218 = !DILocation(line: 81, column: 25, scope: !97)
!219 = !DILocation(line: 0, scope: !97)
!220 = !DILocation(line: 83, column: 30, scope: !97)
!221 = !DILocation(line: 83, column: 27, scope: !97)
!222 = !DILocation(line: 87, column: 25, scope: !107)
!223 = !DILocation(line: 87, column: 7, scope: !108)
!224 = !DILocation(line: 94, column: 31, scope: !97)
!225 = !DILocation(line: 88, column: 34, scope: !106)
!226 = !DILocation(line: 88, column: 20, scope: !106)
!227 = !DILocation(line: 0, scope: !106)
!228 = !DILocation(line: 89, column: 23, scope: !106)
!229 = !DILocation(line: 89, column: 9, scope: !106)
!230 = !DILocation(line: 89, column: 15, scope: !106)
!231 = !DILocation(line: 90, column: 23, scope: !106)
!232 = !DILocation(line: 90, column: 21, scope: !106)
!233 = !DILocation(line: 91, column: 12, scope: !106)
!234 = !DILocation(line: 92, column: 12, scope: !106)
!235 = !DILocation(line: 87, column: 35, scope: !107)
!236 = distinct !{!236, !223, !237, !153}
!237 = !DILocation(line: 93, column: 7, scope: !108)
!238 = !DILocation(line: 94, column: 23, scope: !97)
!239 = !DILocation(line: 94, column: 21, scope: !97)
!240 = !DILocation(line: 94, column: 46, scope: !97)
!241 = !DILocation(line: 94, column: 7, scope: !97)
!242 = !DILocation(line: 94, column: 13, scope: !97)
!243 = !DILocation(line: 95, column: 10, scope: !97)
!244 = !DILocation(line: 96, column: 10, scope: !97)
!245 = !DILocation(line: 80, column: 25, scope: !98)
!246 = distinct !{!246, !216, !247, !153}
!247 = !DILocation(line: 97, column: 5, scope: !99)
!248 = !DILocation(line: 99, column: 5, scope: !249)
!249 = distinct !DILexicalBlock(scope: !94, file: !2, line: 98, column: 10)
!250 = !DILocation(line: 15, column: 1, scope: !251)
!251 = !DILexicalBlockFile(scope: !39, file: !18, discriminator: 0)
!252 = !DISubprogram(name: "cblas_xerbla", scope: !21, file: !21, line: 602, type: !253, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!253 = !DISubroutineType(types: !254)
!254 = !{null, !45, !255, !255, null}
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!256 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
