; ModuleID = 'sgbmv.c'
source_filename = "sgbmv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"./source_gbmv_r.h\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !7
@.str.2 = private unnamed_addr constant [23 x i8] c"unrecognized operation\00", align 1, !dbg !12

; Function Attrs: nounwind uwtable
define dso_local void @cblas_sgbmv(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, float noundef %6, ptr nocapture noundef readonly %7, i32 noundef %8, ptr nocapture noundef readonly %9, i32 noundef %10, float noundef %11, ptr nocapture noundef %12, i32 noundef %13) local_unnamed_addr #0 !dbg !40 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !52, metadata !DIExpression()), !dbg !105
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !53, metadata !DIExpression()), !dbg !105
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !54, metadata !DIExpression()), !dbg !105
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !55, metadata !DIExpression()), !dbg !105
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !56, metadata !DIExpression()), !dbg !105
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !57, metadata !DIExpression()), !dbg !105
  tail call void @llvm.dbg.value(metadata float %6, metadata !58, metadata !DIExpression()), !dbg !105
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !59, metadata !DIExpression()), !dbg !105
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !60, metadata !DIExpression()), !dbg !105
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !61, metadata !DIExpression()), !dbg !105
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !62, metadata !DIExpression()), !dbg !105
  tail call void @llvm.dbg.value(metadata float %11, metadata !63, metadata !DIExpression()), !dbg !105
  tail call void @llvm.dbg.value(metadata ptr %12, metadata !64, metadata !DIExpression()), !dbg !105
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !65, metadata !DIExpression()), !dbg !105
  %15 = icmp eq i32 %1, 113, !dbg !106
  %16 = select i1 %15, i32 112, i32 %1, !dbg !107
  tail call void @llvm.dbg.value(metadata i32 %16, metadata !74, metadata !DIExpression()), !dbg !108
  tail call void @llvm.dbg.value(metadata i32 0, metadata !75, metadata !DIExpression()), !dbg !109
  %17 = add i32 %0, -103, !dbg !110
  %18 = icmp ult i32 %17, -2, !dbg !110
  %19 = zext i1 %18 to i32, !dbg !110
  tail call void @llvm.dbg.value(metadata i32 %19, metadata !75, metadata !DIExpression()), !dbg !109
  %20 = add i32 %1, -114, !dbg !112
  %21 = icmp ult i32 %20, -3, !dbg !112
  %22 = select i1 %21, i32 2, i32 %19, !dbg !112
  tail call void @llvm.dbg.value(metadata i32 %22, metadata !75, metadata !DIExpression()), !dbg !109
  %23 = icmp slt i32 %2, 0, !dbg !114
  %24 = select i1 %23, i32 3, i32 %22, !dbg !116
  tail call void @llvm.dbg.value(metadata i32 %24, metadata !75, metadata !DIExpression()), !dbg !109
  %25 = icmp slt i32 %3, 0, !dbg !117
  %26 = select i1 %25, i32 4, i32 %24, !dbg !116
  tail call void @llvm.dbg.value(metadata i32 %26, metadata !75, metadata !DIExpression()), !dbg !109
  %27 = icmp slt i32 %4, 0, !dbg !119
  %28 = select i1 %27, i32 5, i32 %26, !dbg !116
  tail call void @llvm.dbg.value(metadata i32 %28, metadata !75, metadata !DIExpression()), !dbg !109
  %29 = icmp slt i32 %5, 0, !dbg !121
  %30 = select i1 %29, i32 6, i32 %28, !dbg !116
  tail call void @llvm.dbg.value(metadata i32 %30, metadata !75, metadata !DIExpression()), !dbg !109
  %31 = add nsw i32 %5, %4, !dbg !123
  %32 = tail call i32 @llvm.smax.i32(i32 %31, i32 0), !dbg !123
  %33 = icmp slt i32 %32, %8, !dbg !123
  %34 = select i1 %33, i32 %30, i32 9, !dbg !116
  tail call void @llvm.dbg.value(metadata i32 %34, metadata !75, metadata !DIExpression()), !dbg !109
  %35 = icmp eq i32 %10, 0, !dbg !125
  %36 = select i1 %35, i32 11, i32 %34, !dbg !116
  tail call void @llvm.dbg.value(metadata i32 %36, metadata !75, metadata !DIExpression()), !dbg !109
  %37 = icmp eq i32 %13, 0, !dbg !127
  %38 = select i1 %37, i32 14, i32 %36, !dbg !116
  tail call void @llvm.dbg.value(metadata i32 %38, metadata !75, metadata !DIExpression()), !dbg !109
  %39 = icmp eq i32 %38, 0, !dbg !129
  br i1 %39, label %41, label %40, !dbg !116

40:                                               ; preds = %14
  tail call void (i32, ptr, ptr, ...) @cblas_xerbla(i32 noundef %38, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #3, !dbg !129
  br label %41, !dbg !129

41:                                               ; preds = %40, %14
  %42 = icmp eq i32 %2, 0, !dbg !131
  %43 = icmp eq i32 %3, 0
  %44 = or i1 %42, %43, !dbg !133
  br i1 %44, label %342, label %45, !dbg !133

45:                                               ; preds = %41
  %46 = fcmp oeq float %6, 0.000000e+00, !dbg !134
  %47 = fcmp oeq float %11, 1.000000e+00
  %48 = and i1 %46, %47, !dbg !136
  br i1 %48, label %342, label %49, !dbg !136

49:                                               ; preds = %45
  %50 = icmp eq i32 %16, 111, !dbg !137
  %51 = select i1 %50, i32 %5, i32 %4
  %52 = select i1 %50, i32 %4, i32 %5
  %53 = select i1 %50, i32 %2, i32 %3
  %54 = select i1 %50, i32 %3, i32 %2
  tail call void @llvm.dbg.value(metadata i32 %54, metadata !70, metadata !DIExpression()), !dbg !108
  tail call void @llvm.dbg.value(metadata i32 %53, metadata !71, metadata !DIExpression()), !dbg !108
  tail call void @llvm.dbg.value(metadata i32 %52, metadata !72, metadata !DIExpression()), !dbg !108
  tail call void @llvm.dbg.value(metadata i32 %51, metadata !73, metadata !DIExpression()), !dbg !108
  %55 = fcmp oeq float %11, 0.000000e+00, !dbg !139
  br i1 %55, label %56, label %82, !dbg !140

56:                                               ; preds = %49
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !77, metadata !DIExpression()), !dbg !141
  tail call void @llvm.dbg.value(metadata i32 0, metadata !66, metadata !DIExpression()), !dbg !108
  %57 = icmp sgt i32 %53, 0, !dbg !142
  br i1 %57, label %58, label %140, !dbg !145

58:                                               ; preds = %56
  %59 = icmp sgt i32 %13, 0, !dbg !146
  %60 = sub nsw i32 1, %53, !dbg !146
  %61 = mul i32 %60, %13, !dbg !146
  %62 = select i1 %59, i32 0, i32 %61, !dbg !146
  tail call void @llvm.dbg.value(metadata i32 %62, metadata !77, metadata !DIExpression()), !dbg !141
  %63 = sext i32 %62 to i64, !dbg !145
  %64 = sext i32 %13 to i64, !dbg !145
  %65 = and i32 %53, 3, !dbg !145
  %66 = icmp ult i32 %53, 4, !dbg !145
  br i1 %66, label %118, label %67, !dbg !145

67:                                               ; preds = %58
  %68 = and i32 %53, 2147483644, !dbg !145
  br label %69, !dbg !145

69:                                               ; preds = %69, %67
  %70 = phi i64 [ %63, %67 ], [ %79, %69 ]
  %71 = phi i32 [ 0, %67 ], [ %80, %69 ]
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !66, metadata !DIExpression()), !dbg !108
  tail call void @llvm.dbg.value(metadata i64 %70, metadata !77, metadata !DIExpression()), !dbg !141
  %72 = getelementptr inbounds float, ptr %12, i64 %70, !dbg !147
  store float 0.000000e+00, ptr %72, align 4, !dbg !149, !tbaa !150
  %73 = add i64 %70, %64, !dbg !154
  tail call void @llvm.dbg.value(metadata i64 %73, metadata !77, metadata !DIExpression()), !dbg !141
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !66, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !108
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !66, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !108
  tail call void @llvm.dbg.value(metadata i64 %73, metadata !77, metadata !DIExpression()), !dbg !141
  %74 = getelementptr inbounds float, ptr %12, i64 %73, !dbg !147
  store float 0.000000e+00, ptr %74, align 4, !dbg !149, !tbaa !150
  %75 = add i64 %73, %64, !dbg !154
  tail call void @llvm.dbg.value(metadata i64 %75, metadata !77, metadata !DIExpression()), !dbg !141
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !66, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !108
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !66, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !108
  tail call void @llvm.dbg.value(metadata i64 %75, metadata !77, metadata !DIExpression()), !dbg !141
  %76 = getelementptr inbounds float, ptr %12, i64 %75, !dbg !147
  store float 0.000000e+00, ptr %76, align 4, !dbg !149, !tbaa !150
  %77 = add i64 %75, %64, !dbg !154
  tail call void @llvm.dbg.value(metadata i64 %77, metadata !77, metadata !DIExpression()), !dbg !141
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !66, metadata !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value)), !dbg !108
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !66, metadata !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value)), !dbg !108
  tail call void @llvm.dbg.value(metadata i64 %77, metadata !77, metadata !DIExpression()), !dbg !141
  %78 = getelementptr inbounds float, ptr %12, i64 %77, !dbg !147
  store float 0.000000e+00, ptr %78, align 4, !dbg !149, !tbaa !150
  %79 = add i64 %77, %64, !dbg !154
  tail call void @llvm.dbg.value(metadata i64 %79, metadata !77, metadata !DIExpression()), !dbg !141
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !66, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !108
  %80 = add i32 %71, 4, !dbg !145
  %81 = icmp eq i32 %80, %68, !dbg !145
  br i1 %81, label %118, label %69, !dbg !145, !llvm.loop !155

82:                                               ; preds = %49
  %83 = fcmp une float %11, 1.000000e+00, !dbg !158
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !80, metadata !DIExpression()), !dbg !159
  tail call void @llvm.dbg.value(metadata i32 0, metadata !66, metadata !DIExpression()), !dbg !108
  %84 = icmp sgt i32 %53, 0
  %85 = and i1 %83, %84, !dbg !160
  br i1 %85, label %86, label %140, !dbg !160

86:                                               ; preds = %82
  %87 = icmp sgt i32 %13, 0, !dbg !161
  %88 = sub nsw i32 1, %53, !dbg !161
  %89 = mul i32 %88, %13, !dbg !161
  %90 = select i1 %87, i32 0, i32 %89, !dbg !161
  tail call void @llvm.dbg.value(metadata i32 %90, metadata !80, metadata !DIExpression()), !dbg !159
  %91 = sext i32 %90 to i64, !dbg !162
  %92 = sext i32 %13 to i64, !dbg !162
  %93 = and i32 %53, 3, !dbg !162
  %94 = icmp ult i32 %53, 4, !dbg !162
  br i1 %94, label %128, label %95, !dbg !162

95:                                               ; preds = %86
  %96 = and i32 %53, -4, !dbg !162
  br label %97, !dbg !162

97:                                               ; preds = %97, %95
  %98 = phi i64 [ %91, %95 ], [ %115, %97 ]
  %99 = phi i32 [ 0, %95 ], [ %116, %97 ]
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !66, metadata !DIExpression()), !dbg !108
  tail call void @llvm.dbg.value(metadata i64 %98, metadata !80, metadata !DIExpression()), !dbg !159
  %100 = getelementptr inbounds float, ptr %12, i64 %98, !dbg !164
  %101 = load float, ptr %100, align 4, !dbg !167, !tbaa !150
  %102 = fmul float %101, %11, !dbg !167
  store float %102, ptr %100, align 4, !dbg !167, !tbaa !150
  %103 = add i64 %98, %92, !dbg !168
  tail call void @llvm.dbg.value(metadata i64 %103, metadata !80, metadata !DIExpression()), !dbg !159
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !66, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !108
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !66, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !108
  tail call void @llvm.dbg.value(metadata i64 %103, metadata !80, metadata !DIExpression()), !dbg !159
  %104 = getelementptr inbounds float, ptr %12, i64 %103, !dbg !164
  %105 = load float, ptr %104, align 4, !dbg !167, !tbaa !150
  %106 = fmul float %105, %11, !dbg !167
  store float %106, ptr %104, align 4, !dbg !167, !tbaa !150
  %107 = add i64 %103, %92, !dbg !168
  tail call void @llvm.dbg.value(metadata i64 %107, metadata !80, metadata !DIExpression()), !dbg !159
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !66, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !108
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !66, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !108
  tail call void @llvm.dbg.value(metadata i64 %107, metadata !80, metadata !DIExpression()), !dbg !159
  %108 = getelementptr inbounds float, ptr %12, i64 %107, !dbg !164
  %109 = load float, ptr %108, align 4, !dbg !167, !tbaa !150
  %110 = fmul float %109, %11, !dbg !167
  store float %110, ptr %108, align 4, !dbg !167, !tbaa !150
  %111 = add i64 %107, %92, !dbg !168
  tail call void @llvm.dbg.value(metadata i64 %111, metadata !80, metadata !DIExpression()), !dbg !159
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !66, metadata !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value)), !dbg !108
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !66, metadata !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value)), !dbg !108
  tail call void @llvm.dbg.value(metadata i64 %111, metadata !80, metadata !DIExpression()), !dbg !159
  %112 = getelementptr inbounds float, ptr %12, i64 %111, !dbg !164
  %113 = load float, ptr %112, align 4, !dbg !167, !tbaa !150
  %114 = fmul float %113, %11, !dbg !167
  store float %114, ptr %112, align 4, !dbg !167, !tbaa !150
  %115 = add i64 %111, %92, !dbg !168
  tail call void @llvm.dbg.value(metadata i64 %115, metadata !80, metadata !DIExpression()), !dbg !159
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !66, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !108
  %116 = add i32 %99, 4, !dbg !162
  %117 = icmp eq i32 %116, %96, !dbg !162
  br i1 %117, label %128, label %97, !dbg !162, !llvm.loop !169

118:                                              ; preds = %69, %58
  %119 = phi i64 [ %63, %58 ], [ %79, %69 ]
  %120 = icmp eq i32 %65, 0, !dbg !145
  br i1 %120, label %140, label %121, !dbg !145

121:                                              ; preds = %118, %121
  %122 = phi i64 [ %125, %121 ], [ %119, %118 ]
  %123 = phi i32 [ %126, %121 ], [ 0, %118 ]
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !66, metadata !DIExpression()), !dbg !108
  tail call void @llvm.dbg.value(metadata i64 %122, metadata !77, metadata !DIExpression()), !dbg !141
  %124 = getelementptr inbounds float, ptr %12, i64 %122, !dbg !147
  store float 0.000000e+00, ptr %124, align 4, !dbg !149, !tbaa !150
  %125 = add i64 %122, %64, !dbg !154
  tail call void @llvm.dbg.value(metadata i64 %125, metadata !77, metadata !DIExpression()), !dbg !141
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !66, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !108
  %126 = add i32 %123, 1, !dbg !145
  %127 = icmp eq i32 %126, %65, !dbg !145
  br i1 %127, label %140, label %121, !dbg !145, !llvm.loop !171

128:                                              ; preds = %97, %86
  %129 = phi i64 [ %91, %86 ], [ %115, %97 ]
  %130 = icmp eq i32 %93, 0, !dbg !162
  br i1 %130, label %140, label %131, !dbg !162

131:                                              ; preds = %128, %131
  %132 = phi i64 [ %137, %131 ], [ %129, %128 ]
  %133 = phi i32 [ %138, %131 ], [ 0, %128 ]
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !66, metadata !DIExpression()), !dbg !108
  tail call void @llvm.dbg.value(metadata i64 %132, metadata !80, metadata !DIExpression()), !dbg !159
  %134 = getelementptr inbounds float, ptr %12, i64 %132, !dbg !164
  %135 = load float, ptr %134, align 4, !dbg !167, !tbaa !150
  %136 = fmul float %135, %11, !dbg !167
  store float %136, ptr %134, align 4, !dbg !167, !tbaa !150
  %137 = add i64 %132, %92, !dbg !168
  tail call void @llvm.dbg.value(metadata i64 %137, metadata !80, metadata !DIExpression()), !dbg !159
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !66, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !108
  %138 = add i32 %133, 1, !dbg !162
  %139 = icmp eq i32 %138, %93, !dbg !162
  br i1 %139, label %140, label %131, !dbg !162, !llvm.loop !173

140:                                              ; preds = %128, %131, %118, %121, %56, %82
  br i1 %46, label %342, label %141, !dbg !174

141:                                              ; preds = %140
  %142 = icmp eq i32 %0, 101, !dbg !175
  %143 = and i1 %142, %50, !dbg !176
  br i1 %143, label %148, label %144, !dbg !176

144:                                              ; preds = %141
  %145 = icmp eq i32 %0, 102, !dbg !177
  %146 = icmp eq i32 %16, 112
  %147 = and i1 %145, %146, !dbg !178
  br i1 %147, label %148, label %244, !dbg !178

148:                                              ; preds = %144, %141
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !83, metadata !DIExpression()), !dbg !179
  tail call void @llvm.dbg.value(metadata i32 0, metadata !66, metadata !DIExpression()), !dbg !108
  %149 = icmp sgt i32 %53, 0, !dbg !180
  br i1 %149, label %150, label %342, !dbg !181

150:                                              ; preds = %148
  %151 = icmp sgt i32 %13, 0, !dbg !182
  %152 = sub nsw i32 1, %53, !dbg !182
  %153 = mul i32 %152, %13, !dbg !182
  %154 = select i1 %151, i32 0, i32 %153, !dbg !182
  tail call void @llvm.dbg.value(metadata i32 %154, metadata !83, metadata !DIExpression()), !dbg !179
  %155 = icmp sgt i32 %10, 0
  %156 = sub i32 1, %54
  %157 = mul i32 %156, %10
  %158 = select i1 %155, i32 0, i32 %157
  %159 = sext i32 %10 to i64, !dbg !181
  %160 = sext i32 %154 to i64, !dbg !181
  %161 = sext i32 %13 to i64, !dbg !181
  br label %162, !dbg !181

162:                                              ; preds = %150, %235
  %163 = phi i64 [ %160, %150 ], [ %241, %235 ]
  %164 = phi i32 [ 0, %150 ], [ %242, %235 ]
  tail call void @llvm.dbg.value(metadata i32 %164, metadata !66, metadata !DIExpression()), !dbg !108
  tail call void @llvm.dbg.value(metadata i64 %163, metadata !83, metadata !DIExpression()), !dbg !179
  tail call void @llvm.dbg.value(metadata float 0.000000e+00, metadata !86, metadata !DIExpression()), !dbg !183
  %165 = icmp sgt i32 %164, %52, !dbg !184
  %166 = sub nsw i32 %164, %52, !dbg !185
  %167 = select i1 %165, i32 %166, i32 0, !dbg !185
  tail call void @llvm.dbg.value(metadata i32 %167, metadata !90, metadata !DIExpression()), !dbg !183
  %168 = add nsw i32 %164, %51, !dbg !186
  %169 = icmp sgt i32 %54, %168, !dbg !186
  %170 = add nsw i32 %168, 1, !dbg !186
  %171 = select i1 %169, i32 %170, i32 %54, !dbg !186
  tail call void @llvm.dbg.value(metadata i32 %171, metadata !91, metadata !DIExpression()), !dbg !183
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 %167, i32 %158, i32 %10), metadata !92, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !183
  tail call void @llvm.dbg.value(metadata i32 %167, metadata !69, metadata !DIExpression()), !dbg !108
  %172 = icmp slt i32 %167, %171, !dbg !187
  br i1 %172, label %173, label %235, !dbg !190

173:                                              ; preds = %162
  %174 = tail call i32 @llvm.smax.i32(i32 %52, i32 %164), !dbg !184
  %175 = sub i32 %174, %52, !dbg !184
  %176 = sext i32 %175 to i64, !dbg !184
  %177 = tail call i32 @llvm.smax.i32(i32 %52, i32 %164), !dbg !184
  %178 = sub i32 %177, %52, !dbg !184
  %179 = mul i32 %178, %10, !dbg !184
  %180 = add i32 %158, %179, !dbg !184
  %181 = sext i32 %180 to i64, !dbg !184
  %182 = sext i32 %178 to i64, !dbg !184
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 %167, i32 %158, i32 %10), metadata !92, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !183
  %183 = sub i32 %52, %164
  %184 = mul nsw i32 %164, %8
  %185 = add i32 %183, %184
  %186 = sext i32 %171 to i64, !dbg !190
  %187 = sub nsw i64 %186, %176, !dbg !190
  %188 = and i64 %187, 1, !dbg !190
  %189 = icmp eq i64 %188, 0, !dbg !190
  br i1 %189, label %201, label %190, !dbg !190

190:                                              ; preds = %173
  tail call void @llvm.dbg.value(metadata i64 %182, metadata !69, metadata !DIExpression()), !dbg !108
  tail call void @llvm.dbg.value(metadata i64 %181, metadata !92, metadata !DIExpression()), !dbg !183
  tail call void @llvm.dbg.value(metadata float 0.000000e+00, metadata !86, metadata !DIExpression()), !dbg !183
  %191 = getelementptr inbounds float, ptr %9, i64 %181, !dbg !191
  %192 = load float, ptr %191, align 4, !dbg !191, !tbaa !150
  %193 = add i32 %185, %178, !dbg !193
  %194 = sext i32 %193 to i64, !dbg !194
  %195 = getelementptr inbounds float, ptr %7, i64 %194, !dbg !194
  %196 = load float, ptr %195, align 4, !dbg !194, !tbaa !150
  %197 = fmul float %192, %196, !dbg !195
  %198 = fadd float %197, 0.000000e+00, !dbg !196
  tail call void @llvm.dbg.value(metadata float %198, metadata !86, metadata !DIExpression()), !dbg !183
  %199 = add nsw i64 %181, %159, !dbg !197
  tail call void @llvm.dbg.value(metadata i64 %199, metadata !92, metadata !DIExpression()), !dbg !183
  %200 = add nsw i64 %182, 1, !dbg !198
  tail call void @llvm.dbg.value(metadata i64 %200, metadata !69, metadata !DIExpression()), !dbg !108
  br label %201, !dbg !190

201:                                              ; preds = %190, %173
  %202 = phi i64 [ %181, %173 ], [ %199, %190 ]
  %203 = phi i64 [ %182, %173 ], [ %200, %190 ]
  %204 = phi float [ 0.000000e+00, %173 ], [ %198, %190 ]
  %205 = phi float [ undef, %173 ], [ %198, %190 ]
  %206 = add nsw i64 %186, -1, !dbg !190
  %207 = icmp eq i64 %206, %176, !dbg !190
  br i1 %207, label %235, label %208, !dbg !190

208:                                              ; preds = %201, %208
  %209 = phi i64 [ %232, %208 ], [ %202, %201 ]
  %210 = phi i64 [ %233, %208 ], [ %203, %201 ]
  %211 = phi float [ %231, %208 ], [ %204, %201 ]
  tail call void @llvm.dbg.value(metadata i64 %210, metadata !69, metadata !DIExpression()), !dbg !108
  tail call void @llvm.dbg.value(metadata i64 %209, metadata !92, metadata !DIExpression()), !dbg !183
  tail call void @llvm.dbg.value(metadata float %211, metadata !86, metadata !DIExpression()), !dbg !183
  %212 = getelementptr inbounds float, ptr %9, i64 %209, !dbg !191
  %213 = load float, ptr %212, align 4, !dbg !191, !tbaa !150
  %214 = trunc i64 %210 to i32, !dbg !193
  %215 = add i32 %185, %214, !dbg !193
  %216 = sext i32 %215 to i64, !dbg !194
  %217 = getelementptr inbounds float, ptr %7, i64 %216, !dbg !194
  %218 = load float, ptr %217, align 4, !dbg !194, !tbaa !150
  %219 = fmul float %213, %218, !dbg !195
  %220 = fadd float %211, %219, !dbg !196
  tail call void @llvm.dbg.value(metadata float %220, metadata !86, metadata !DIExpression()), !dbg !183
  %221 = add i64 %209, %159, !dbg !197
  tail call void @llvm.dbg.value(metadata i64 %221, metadata !92, metadata !DIExpression()), !dbg !183
  tail call void @llvm.dbg.value(metadata i64 %210, metadata !69, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !108
  tail call void @llvm.dbg.value(metadata i64 %210, metadata !69, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !108
  tail call void @llvm.dbg.value(metadata i64 %221, metadata !92, metadata !DIExpression()), !dbg !183
  tail call void @llvm.dbg.value(metadata float %220, metadata !86, metadata !DIExpression()), !dbg !183
  %222 = getelementptr inbounds float, ptr %9, i64 %221, !dbg !191
  %223 = load float, ptr %222, align 4, !dbg !191, !tbaa !150
  %224 = trunc i64 %210 to i32, !dbg !193
  %225 = add i32 %224, 1, !dbg !193
  %226 = add i32 %185, %225, !dbg !193
  %227 = sext i32 %226 to i64, !dbg !194
  %228 = getelementptr inbounds float, ptr %7, i64 %227, !dbg !194
  %229 = load float, ptr %228, align 4, !dbg !194, !tbaa !150
  %230 = fmul float %223, %229, !dbg !195
  %231 = fadd float %220, %230, !dbg !196
  tail call void @llvm.dbg.value(metadata float %231, metadata !86, metadata !DIExpression()), !dbg !183
  %232 = add i64 %221, %159, !dbg !197
  tail call void @llvm.dbg.value(metadata i64 %232, metadata !92, metadata !DIExpression()), !dbg !183
  %233 = add nsw i64 %210, 2, !dbg !198
  tail call void @llvm.dbg.value(metadata i64 %233, metadata !69, metadata !DIExpression()), !dbg !108
  %234 = icmp slt i64 %233, %186, !dbg !187
  br i1 %234, label %208, label %235, !dbg !190, !llvm.loop !199

235:                                              ; preds = %201, %208, %162
  %236 = phi float [ 0.000000e+00, %162 ], [ %205, %201 ], [ %231, %208 ], !dbg !183
  %237 = fmul float %236, %6, !dbg !201
  %238 = getelementptr inbounds float, ptr %12, i64 %163, !dbg !202
  %239 = load float, ptr %238, align 4, !dbg !203, !tbaa !150
  %240 = fadd float %237, %239, !dbg !203
  store float %240, ptr %238, align 4, !dbg !203, !tbaa !150
  %241 = add i64 %163, %161, !dbg !204
  tail call void @llvm.dbg.value(metadata i64 %241, metadata !83, metadata !DIExpression()), !dbg !179
  %242 = add nuw nsw i32 %164, 1, !dbg !205
  tail call void @llvm.dbg.value(metadata i32 %242, metadata !66, metadata !DIExpression()), !dbg !108
  %243 = icmp eq i32 %242, %53, !dbg !180
  br i1 %243, label %342, label %162, !dbg !181, !llvm.loop !206

244:                                              ; preds = %144
  %245 = and i1 %142, %146, !dbg !208
  %246 = and i1 %145, %50
  %247 = or i1 %245, %246, !dbg !208
  br i1 %247, label %248, label %341, !dbg !208

248:                                              ; preds = %244
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !93, metadata !DIExpression()), !dbg !209
  tail call void @llvm.dbg.value(metadata i32 0, metadata !69, metadata !DIExpression()), !dbg !108
  %249 = icmp sgt i32 %54, 0, !dbg !210
  br i1 %249, label %250, label %342, !dbg !211

250:                                              ; preds = %248
  %251 = icmp sgt i32 %10, 0, !dbg !212
  %252 = sub nsw i32 1, %54, !dbg !212
  %253 = mul i32 %252, %10, !dbg !212
  %254 = select i1 %251, i32 0, i32 %253, !dbg !212
  tail call void @llvm.dbg.value(metadata i32 %254, metadata !93, metadata !DIExpression()), !dbg !209
  %255 = icmp sgt i32 %13, 0
  %256 = sub i32 1, %53
  %257 = mul i32 %256, %13
  %258 = select i1 %255, i32 0, i32 %257
  %259 = sext i32 %13 to i64, !dbg !211
  %260 = sext i32 %254 to i64, !dbg !211
  %261 = sext i32 %10 to i64, !dbg !211
  br label %262, !dbg !211

262:                                              ; preds = %250, %337
  %263 = phi i64 [ %260, %250 ], [ %338, %337 ]
  %264 = phi i32 [ 0, %250 ], [ %339, %337 ]
  tail call void @llvm.dbg.value(metadata i32 %264, metadata !69, metadata !DIExpression()), !dbg !108
  tail call void @llvm.dbg.value(metadata i64 %263, metadata !93, metadata !DIExpression()), !dbg !209
  %265 = tail call i32 @llvm.smax.i32(i32 %51, i32 %264), !dbg !213
  %266 = sub i32 %265, %51, !dbg !213
  %267 = sext i32 %266 to i64, !dbg !213
  %268 = tail call i32 @llvm.smax.i32(i32 %51, i32 %264), !dbg !213
  %269 = sub i32 %268, %51, !dbg !213
  %270 = mul i32 %269, %13, !dbg !213
  %271 = add i32 %258, %270, !dbg !213
  %272 = sext i32 %271 to i64, !dbg !213
  %273 = sext i32 %269 to i64, !dbg !213
  %274 = getelementptr inbounds float, ptr %9, i64 %263, !dbg !213
  %275 = load float, ptr %274, align 4, !dbg !213, !tbaa !150
  %276 = fmul float %275, %6, !dbg !214
  tail call void @llvm.dbg.value(metadata float %276, metadata !96, metadata !DIExpression()), !dbg !215
  %277 = fcmp une float %276, 0.000000e+00, !dbg !216
  br i1 %277, label %278, label %337, !dbg !217

278:                                              ; preds = %262
  %279 = icmp sgt i32 %264, %51, !dbg !218
  %280 = sub nsw i32 %264, %51, !dbg !219
  %281 = select i1 %279, i32 %280, i32 0, !dbg !219
  tail call void @llvm.dbg.value(metadata i32 %281, metadata !100, metadata !DIExpression()), !dbg !220
  %282 = add nsw i32 %264, %52, !dbg !221
  %283 = icmp sgt i32 %53, %282, !dbg !221
  %284 = add nsw i32 %282, 1, !dbg !221
  %285 = select i1 %283, i32 %284, i32 %53, !dbg !221
  tail call void @llvm.dbg.value(metadata i32 %285, metadata !103, metadata !DIExpression()), !dbg !220
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 %281, i32 %258, i32 %13), metadata !104, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !220
  tail call void @llvm.dbg.value(metadata i32 %281, metadata !66, metadata !DIExpression()), !dbg !108
  %286 = icmp slt i32 %281, %285, !dbg !222
  br i1 %286, label %287, label %337, !dbg !225

287:                                              ; preds = %278
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 %281, i32 %258, i32 %13), metadata !104, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !220
  %288 = mul nsw i32 %264, %8
  %289 = sub i32 %51, %264
  %290 = add i32 %289, %288
  %291 = sext i32 %285 to i64, !dbg !225
  %292 = sub nsw i64 %291, %267, !dbg !225
  %293 = and i64 %292, 1, !dbg !225
  %294 = icmp eq i64 %293, 0, !dbg !225
  br i1 %294, label %306, label %295, !dbg !225

295:                                              ; preds = %287
  tail call void @llvm.dbg.value(metadata i64 %272, metadata !104, metadata !DIExpression()), !dbg !220
  tail call void @llvm.dbg.value(metadata i64 %273, metadata !66, metadata !DIExpression()), !dbg !108
  %296 = add i32 %290, %269, !dbg !226
  %297 = sext i32 %296 to i64, !dbg !228
  %298 = getelementptr inbounds float, ptr %7, i64 %297, !dbg !228
  %299 = load float, ptr %298, align 4, !dbg !228, !tbaa !150
  %300 = fmul float %276, %299, !dbg !229
  %301 = getelementptr inbounds float, ptr %12, i64 %272, !dbg !230
  %302 = load float, ptr %301, align 4, !dbg !231, !tbaa !150
  %303 = fadd float %302, %300, !dbg !231
  store float %303, ptr %301, align 4, !dbg !231, !tbaa !150
  %304 = add nsw i64 %272, %259, !dbg !232
  tail call void @llvm.dbg.value(metadata i64 %304, metadata !104, metadata !DIExpression()), !dbg !220
  %305 = add nsw i64 %273, 1, !dbg !233
  tail call void @llvm.dbg.value(metadata i64 %305, metadata !66, metadata !DIExpression()), !dbg !108
  br label %306, !dbg !225

306:                                              ; preds = %295, %287
  %307 = phi i64 [ %273, %287 ], [ %305, %295 ]
  %308 = phi i64 [ %272, %287 ], [ %304, %295 ]
  %309 = add nsw i64 %291, -1, !dbg !225
  %310 = icmp eq i64 %309, %267, !dbg !225
  br i1 %310, label %337, label %311, !dbg !225

311:                                              ; preds = %306, %311
  %312 = phi i64 [ %335, %311 ], [ %307, %306 ]
  %313 = phi i64 [ %334, %311 ], [ %308, %306 ]
  tail call void @llvm.dbg.value(metadata i64 %313, metadata !104, metadata !DIExpression()), !dbg !220
  tail call void @llvm.dbg.value(metadata i64 %312, metadata !66, metadata !DIExpression()), !dbg !108
  %314 = trunc i64 %312 to i32, !dbg !226
  %315 = add i32 %290, %314, !dbg !226
  %316 = sext i32 %315 to i64, !dbg !228
  %317 = getelementptr inbounds float, ptr %7, i64 %316, !dbg !228
  %318 = load float, ptr %317, align 4, !dbg !228, !tbaa !150
  %319 = fmul float %276, %318, !dbg !229
  %320 = getelementptr inbounds float, ptr %12, i64 %313, !dbg !230
  %321 = load float, ptr %320, align 4, !dbg !231, !tbaa !150
  %322 = fadd float %321, %319, !dbg !231
  store float %322, ptr %320, align 4, !dbg !231, !tbaa !150
  %323 = add i64 %313, %259, !dbg !232
  tail call void @llvm.dbg.value(metadata i64 %323, metadata !104, metadata !DIExpression()), !dbg !220
  tail call void @llvm.dbg.value(metadata i64 %312, metadata !66, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !108
  tail call void @llvm.dbg.value(metadata i64 %323, metadata !104, metadata !DIExpression()), !dbg !220
  tail call void @llvm.dbg.value(metadata i64 %312, metadata !66, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !108
  %324 = trunc i64 %312 to i32, !dbg !226
  %325 = add i32 %324, 1, !dbg !226
  %326 = add i32 %290, %325, !dbg !226
  %327 = sext i32 %326 to i64, !dbg !228
  %328 = getelementptr inbounds float, ptr %7, i64 %327, !dbg !228
  %329 = load float, ptr %328, align 4, !dbg !228, !tbaa !150
  %330 = fmul float %276, %329, !dbg !229
  %331 = getelementptr inbounds float, ptr %12, i64 %323, !dbg !230
  %332 = load float, ptr %331, align 4, !dbg !231, !tbaa !150
  %333 = fadd float %332, %330, !dbg !231
  store float %333, ptr %331, align 4, !dbg !231, !tbaa !150
  %334 = add i64 %323, %259, !dbg !232
  tail call void @llvm.dbg.value(metadata i64 %334, metadata !104, metadata !DIExpression()), !dbg !220
  %335 = add nsw i64 %312, 2, !dbg !233
  tail call void @llvm.dbg.value(metadata i64 %335, metadata !66, metadata !DIExpression()), !dbg !108
  %336 = icmp slt i64 %335, %291, !dbg !222
  br i1 %336, label %311, label %337, !dbg !225, !llvm.loop !234

337:                                              ; preds = %306, %311, %278, %262
  %338 = add i64 %263, %261, !dbg !236
  tail call void @llvm.dbg.value(metadata i64 %338, metadata !93, metadata !DIExpression()), !dbg !209
  %339 = add nuw nsw i32 %264, 1, !dbg !237
  tail call void @llvm.dbg.value(metadata i32 %339, metadata !69, metadata !DIExpression()), !dbg !108
  %340 = icmp eq i32 %339, %54, !dbg !210
  br i1 %340, label %342, label %262, !dbg !211, !llvm.loop !238

341:                                              ; preds = %244
  tail call void (i32, ptr, ptr, ...) @cblas_xerbla(i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #3, !dbg !240
  br label %342

342:                                              ; preds = %337, %235, %248, %148, %341, %140, %45, %41
  ret void, !dbg !242
}

declare !dbg !244 void @cblas_xerbla(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!17}
!llvm.module.flags = !{!32, !33, !34, !35, !36, !37, !38}
!llvm.ident = !{!39}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 26, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "./source_gbmv_r.h", directory: "/PI-detector/external/gsl/gsl-2.5/cblas", checksumkind: CSK_MD5, checksum: "c52157dabfc78e39849c56e5f13a0ed5")
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
!17 = distinct !DICompileUnit(language: DW_LANG_C11, file: !18, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !19, globals: !31, splitDebugInlining: false, nameTableKind: None)
!18 = !DIFile(filename: "sgbmv.c", directory: "/PI-detector/external/gsl/gsl-2.5/cblas", checksumkind: CSK_MD5, checksum: "7495f66dd562b103fe0c60871b27704a")
!19 = !{!20, !26}
!20 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "CBLAS_ORDER", file: !21, line: 46, baseType: !22, size: 32, elements: !23)
!21 = !DIFile(filename: "../gsl/gsl_cblas.h", directory: "/PI-detector/external/gsl/gsl-2.5/cblas", checksumkind: CSK_MD5, checksum: "03ac5115536daff0db5f3e2b63839634")
!22 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!23 = !{!24, !25}
!24 = !DIEnumerator(name: "CblasRowMajor", value: 101)
!25 = !DIEnumerator(name: "CblasColMajor", value: 102)
!26 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "CBLAS_TRANSPOSE", file: !21, line: 47, baseType: !22, size: 32, elements: !27)
!27 = !{!28, !29, !30}
!28 = !DIEnumerator(name: "CblasNoTrans", value: 111)
!29 = !DIEnumerator(name: "CblasTrans", value: 112)
!30 = !DIEnumerator(name: "CblasConjTrans", value: 113)
!31 = !{!0, !7, !12}
!32 = !{i32 7, !"Dwarf Version", i32 5}
!33 = !{i32 2, !"Debug Info Version", i32 3}
!34 = !{i32 1, !"wchar_size", i32 4}
!35 = !{i32 8, !"PIC Level", i32 2}
!36 = !{i32 7, !"PIE Level", i32 2}
!37 = !{i32 7, !"uwtable", i32 2}
!38 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!39 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!40 = distinct !DISubprogram(name: "cblas_sgbmv", scope: !18, file: !18, line: 7, type: !41, scopeLine: 11, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !51)
!41 = !DISubroutineType(types: !42)
!42 = !{null, !43, !44, !45, !45, !45, !45, !47, !49, !45, !49, !45, !47, !50, !45}
!43 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!44 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !26)
!45 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!46 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!47 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !48)
!48 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!51 = !{!52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !69, !70, !71, !72, !73, !74, !75, !77, !80, !83, !86, !90, !91, !92, !93, !96, !100, !103, !104}
!52 = !DILocalVariable(name: "order", arg: 1, scope: !40, file: !18, line: 7, type: !43)
!53 = !DILocalVariable(name: "TransA", arg: 2, scope: !40, file: !18, line: 7, type: !44)
!54 = !DILocalVariable(name: "M", arg: 3, scope: !40, file: !18, line: 8, type: !45)
!55 = !DILocalVariable(name: "N", arg: 4, scope: !40, file: !18, line: 8, type: !45)
!56 = !DILocalVariable(name: "KL", arg: 5, scope: !40, file: !18, line: 8, type: !45)
!57 = !DILocalVariable(name: "KU", arg: 6, scope: !40, file: !18, line: 8, type: !45)
!58 = !DILocalVariable(name: "alpha", arg: 7, scope: !40, file: !18, line: 9, type: !47)
!59 = !DILocalVariable(name: "A", arg: 8, scope: !40, file: !18, line: 9, type: !49)
!60 = !DILocalVariable(name: "lda", arg: 9, scope: !40, file: !18, line: 9, type: !45)
!61 = !DILocalVariable(name: "X", arg: 10, scope: !40, file: !18, line: 9, type: !49)
!62 = !DILocalVariable(name: "incX", arg: 11, scope: !40, file: !18, line: 10, type: !45)
!63 = !DILocalVariable(name: "beta", arg: 12, scope: !40, file: !18, line: 10, type: !47)
!64 = !DILocalVariable(name: "Y", arg: 13, scope: !40, file: !18, line: 10, type: !50)
!65 = !DILocalVariable(name: "incY", arg: 14, scope: !40, file: !18, line: 10, type: !45)
!66 = !DILocalVariable(name: "i", scope: !67, file: !2, line: 21, type: !46)
!67 = distinct !DILexicalBlock(scope: !68, file: !2, line: 20, column: 1)
!68 = !DILexicalBlockFile(scope: !40, file: !2, discriminator: 0)
!69 = !DILocalVariable(name: "j", scope: !67, file: !2, line: 21, type: !46)
!70 = !DILocalVariable(name: "lenX", scope: !67, file: !2, line: 22, type: !46)
!71 = !DILocalVariable(name: "lenY", scope: !67, file: !2, line: 22, type: !46)
!72 = !DILocalVariable(name: "L", scope: !67, file: !2, line: 22, type: !46)
!73 = !DILocalVariable(name: "U", scope: !67, file: !2, line: 22, type: !46)
!74 = !DILocalVariable(name: "Trans", scope: !67, file: !2, line: 24, type: !45)
!75 = !DILocalVariable(name: "pos", scope: !76, file: !2, line: 26, type: !46)
!76 = distinct !DILexicalBlock(scope: !67, file: !2, line: 26, column: 3)
!77 = !DILocalVariable(name: "iy", scope: !78, file: !2, line: 48, type: !46)
!78 = distinct !DILexicalBlock(scope: !79, file: !2, line: 47, column: 20)
!79 = distinct !DILexicalBlock(scope: !67, file: !2, line: 47, column: 7)
!80 = !DILocalVariable(name: "iy", scope: !81, file: !2, line: 54, type: !46)
!81 = distinct !DILexicalBlock(scope: !82, file: !2, line: 53, column: 27)
!82 = distinct !DILexicalBlock(scope: !79, file: !2, line: 53, column: 14)
!83 = !DILocalVariable(name: "iy", scope: !84, file: !2, line: 67, type: !46)
!84 = distinct !DILexicalBlock(scope: !85, file: !2, line: 65, column: 59)
!85 = distinct !DILexicalBlock(scope: !67, file: !2, line: 64, column: 7)
!86 = !DILocalVariable(name: "temp", scope: !87, file: !2, line: 69, type: !48)
!87 = distinct !DILexicalBlock(scope: !88, file: !2, line: 68, column: 32)
!88 = distinct !DILexicalBlock(scope: !89, file: !2, line: 68, column: 5)
!89 = distinct !DILexicalBlock(scope: !84, file: !2, line: 68, column: 5)
!90 = !DILocalVariable(name: "j_min", scope: !87, file: !2, line: 70, type: !45)
!91 = !DILocalVariable(name: "j_max", scope: !87, file: !2, line: 71, type: !45)
!92 = !DILocalVariable(name: "jx", scope: !87, file: !2, line: 72, type: !46)
!93 = !DILocalVariable(name: "jx", scope: !94, file: !2, line: 83, type: !46)
!94 = distinct !DILexicalBlock(scope: !95, file: !2, line: 81, column: 68)
!95 = distinct !DILexicalBlock(scope: !85, file: !2, line: 80, column: 14)
!96 = !DILocalVariable(name: "temp", scope: !97, file: !2, line: 85, type: !47)
!97 = distinct !DILexicalBlock(scope: !98, file: !2, line: 84, column: 32)
!98 = distinct !DILexicalBlock(scope: !99, file: !2, line: 84, column: 5)
!99 = distinct !DILexicalBlock(scope: !94, file: !2, line: 84, column: 5)
!100 = !DILocalVariable(name: "i_min", scope: !101, file: !2, line: 87, type: !45)
!101 = distinct !DILexicalBlock(scope: !102, file: !2, line: 86, column: 24)
!102 = distinct !DILexicalBlock(scope: !97, file: !2, line: 86, column: 11)
!103 = !DILocalVariable(name: "i_max", scope: !101, file: !2, line: 88, type: !45)
!104 = !DILocalVariable(name: "iy", scope: !101, file: !2, line: 89, type: !46)
!105 = !DILocation(line: 0, scope: !40)
!106 = !DILocation(line: 24, column: 29, scope: !67)
!107 = !DILocation(line: 24, column: 21, scope: !67)
!108 = !DILocation(line: 0, scope: !67)
!109 = !DILocation(line: 0, scope: !76)
!110 = !DILocation(line: 26, column: 3, scope: !111)
!111 = distinct !DILexicalBlock(scope: !76, file: !2, line: 26, column: 3)
!112 = !DILocation(line: 26, column: 3, scope: !113)
!113 = distinct !DILexicalBlock(scope: !76, file: !2, line: 26, column: 3)
!114 = !DILocation(line: 26, column: 3, scope: !115)
!115 = distinct !DILexicalBlock(scope: !76, file: !2, line: 26, column: 3)
!116 = !DILocation(line: 26, column: 3, scope: !76)
!117 = !DILocation(line: 26, column: 3, scope: !118)
!118 = distinct !DILexicalBlock(scope: !76, file: !2, line: 26, column: 3)
!119 = !DILocation(line: 26, column: 3, scope: !120)
!120 = distinct !DILexicalBlock(scope: !76, file: !2, line: 26, column: 3)
!121 = !DILocation(line: 26, column: 3, scope: !122)
!122 = distinct !DILexicalBlock(scope: !76, file: !2, line: 26, column: 3)
!123 = !DILocation(line: 26, column: 3, scope: !124)
!124 = distinct !DILexicalBlock(scope: !76, file: !2, line: 26, column: 3)
!125 = !DILocation(line: 26, column: 3, scope: !126)
!126 = distinct !DILexicalBlock(scope: !76, file: !2, line: 26, column: 3)
!127 = !DILocation(line: 26, column: 3, scope: !128)
!128 = distinct !DILexicalBlock(scope: !76, file: !2, line: 26, column: 3)
!129 = !DILocation(line: 26, column: 3, scope: !130)
!130 = distinct !DILexicalBlock(scope: !76, file: !2, line: 26, column: 3)
!131 = !DILocation(line: 28, column: 9, scope: !132)
!132 = distinct !DILexicalBlock(scope: !67, file: !2, line: 28, column: 7)
!133 = !DILocation(line: 28, column: 14, scope: !132)
!134 = !DILocation(line: 31, column: 13, scope: !135)
!135 = distinct !DILexicalBlock(scope: !67, file: !2, line: 31, column: 7)
!136 = !DILocation(line: 31, column: 20, scope: !135)
!137 = !DILocation(line: 34, column: 13, scope: !138)
!138 = distinct !DILexicalBlock(scope: !67, file: !2, line: 34, column: 7)
!139 = !DILocation(line: 47, column: 12, scope: !79)
!140 = !DILocation(line: 47, column: 7, scope: !67)
!141 = !DILocation(line: 0, scope: !78)
!142 = !DILocation(line: 49, column: 19, scope: !143)
!143 = distinct !DILexicalBlock(scope: !144, file: !2, line: 49, column: 5)
!144 = distinct !DILexicalBlock(scope: !78, file: !2, line: 49, column: 5)
!145 = !DILocation(line: 49, column: 5, scope: !144)
!146 = !DILocation(line: 48, column: 16, scope: !78)
!147 = !DILocation(line: 50, column: 7, scope: !148)
!148 = distinct !DILexicalBlock(scope: !143, file: !2, line: 49, column: 32)
!149 = !DILocation(line: 50, column: 13, scope: !148)
!150 = !{!151, !151, i64 0}
!151 = !{!"float", !152, i64 0}
!152 = !{!"omnipotent char", !153, i64 0}
!153 = !{!"Simple C/C++ TBAA"}
!154 = !DILocation(line: 51, column: 10, scope: !148)
!155 = distinct !{!155, !145, !156, !157}
!156 = !DILocation(line: 52, column: 5, scope: !144)
!157 = !{!"llvm.loop.mustprogress"}
!158 = !DILocation(line: 53, column: 19, scope: !82)
!159 = !DILocation(line: 0, scope: !81)
!160 = !DILocation(line: 53, column: 14, scope: !79)
!161 = !DILocation(line: 54, column: 16, scope: !81)
!162 = !DILocation(line: 55, column: 5, scope: !163)
!163 = distinct !DILexicalBlock(scope: !81, file: !2, line: 55, column: 5)
!164 = !DILocation(line: 56, column: 7, scope: !165)
!165 = distinct !DILexicalBlock(scope: !166, file: !2, line: 55, column: 32)
!166 = distinct !DILexicalBlock(scope: !163, file: !2, line: 55, column: 5)
!167 = !DILocation(line: 56, column: 13, scope: !165)
!168 = !DILocation(line: 57, column: 10, scope: !165)
!169 = distinct !{!169, !162, !170, !157}
!170 = !DILocation(line: 58, column: 5, scope: !163)
!171 = distinct !{!171, !172}
!172 = !{!"llvm.loop.unroll.disable"}
!173 = distinct !{!173, !172}
!174 = !DILocation(line: 61, column: 7, scope: !67)
!175 = !DILocation(line: 64, column: 14, scope: !85)
!176 = !DILocation(line: 64, column: 31, scope: !85)
!177 = !DILocation(line: 65, column: 17, scope: !85)
!178 = !DILocation(line: 65, column: 34, scope: !85)
!179 = !DILocation(line: 0, scope: !84)
!180 = !DILocation(line: 68, column: 19, scope: !88)
!181 = !DILocation(line: 68, column: 5, scope: !89)
!182 = !DILocation(line: 67, column: 16, scope: !84)
!183 = !DILocation(line: 0, scope: !87)
!184 = !DILocation(line: 70, column: 30, scope: !87)
!185 = !DILocation(line: 70, column: 28, scope: !87)
!186 = !DILocation(line: 71, column: 27, scope: !87)
!187 = !DILocation(line: 73, column: 25, scope: !188)
!188 = distinct !DILexicalBlock(scope: !189, file: !2, line: 73, column: 7)
!189 = distinct !DILexicalBlock(scope: !87, file: !2, line: 73, column: 7)
!190 = !DILocation(line: 73, column: 7, scope: !189)
!191 = !DILocation(line: 74, column: 17, scope: !192)
!192 = distinct !DILexicalBlock(scope: !188, file: !2, line: 73, column: 39)
!193 = !DILocation(line: 74, column: 39, scope: !192)
!194 = !DILocation(line: 74, column: 25, scope: !192)
!195 = !DILocation(line: 74, column: 23, scope: !192)
!196 = !DILocation(line: 74, column: 14, scope: !192)
!197 = !DILocation(line: 75, column: 12, scope: !192)
!198 = !DILocation(line: 73, column: 35, scope: !188)
!199 = distinct !{!199, !190, !200, !157}
!200 = !DILocation(line: 76, column: 7, scope: !189)
!201 = !DILocation(line: 77, column: 22, scope: !87)
!202 = !DILocation(line: 77, column: 7, scope: !87)
!203 = !DILocation(line: 77, column: 13, scope: !87)
!204 = !DILocation(line: 78, column: 10, scope: !87)
!205 = !DILocation(line: 68, column: 28, scope: !88)
!206 = distinct !{!206, !181, !207, !157}
!207 = !DILocation(line: 79, column: 5, scope: !89)
!208 = !DILocation(line: 80, column: 38, scope: !95)
!209 = !DILocation(line: 0, scope: !94)
!210 = !DILocation(line: 84, column: 19, scope: !98)
!211 = !DILocation(line: 84, column: 5, scope: !99)
!212 = !DILocation(line: 83, column: 16, scope: !94)
!213 = !DILocation(line: 85, column: 33, scope: !97)
!214 = !DILocation(line: 85, column: 31, scope: !97)
!215 = !DILocation(line: 0, scope: !97)
!216 = !DILocation(line: 86, column: 16, scope: !102)
!217 = !DILocation(line: 86, column: 11, scope: !97)
!218 = !DILocation(line: 87, column: 32, scope: !101)
!219 = !DILocation(line: 87, column: 30, scope: !101)
!220 = !DILocation(line: 0, scope: !101)
!221 = !DILocation(line: 88, column: 29, scope: !101)
!222 = !DILocation(line: 90, column: 27, scope: !223)
!223 = distinct !DILexicalBlock(scope: !224, file: !2, line: 90, column: 9)
!224 = distinct !DILexicalBlock(scope: !101, file: !2, line: 90, column: 9)
!225 = !DILocation(line: 90, column: 9, scope: !224)
!226 = !DILocation(line: 91, column: 37, scope: !227)
!227 = distinct !DILexicalBlock(scope: !223, file: !2, line: 90, column: 41)
!228 = !DILocation(line: 91, column: 27, scope: !227)
!229 = !DILocation(line: 91, column: 25, scope: !227)
!230 = !DILocation(line: 91, column: 11, scope: !227)
!231 = !DILocation(line: 91, column: 17, scope: !227)
!232 = !DILocation(line: 92, column: 14, scope: !227)
!233 = !DILocation(line: 90, column: 37, scope: !223)
!234 = distinct !{!234, !225, !235, !157}
!235 = !DILocation(line: 93, column: 9, scope: !224)
!236 = !DILocation(line: 95, column: 10, scope: !97)
!237 = !DILocation(line: 84, column: 28, scope: !98)
!238 = distinct !{!238, !211, !239, !157}
!239 = !DILocation(line: 96, column: 5, scope: !99)
!240 = !DILocation(line: 98, column: 5, scope: !241)
!241 = distinct !DILexicalBlock(scope: !95, file: !2, line: 97, column: 10)
!242 = !DILocation(line: 15, column: 1, scope: !243)
!243 = !DILexicalBlockFile(scope: !40, file: !18, discriminator: 0)
!244 = !DISubprogram(name: "cblas_xerbla", scope: !21, file: !21, line: 602, type: !245, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!245 = !DISubroutineType(types: !246)
!246 = !{null, !46, !247, !247, null}
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
