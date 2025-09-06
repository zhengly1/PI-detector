; ModuleID = 'sgbmv.ll'
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
  br i1 %44, label %361, label %45, !dbg !133

45:                                               ; preds = %41
  %46 = fcmp oeq float %6, 0.000000e+00, !dbg !134
  %47 = fcmp oeq float %11, 1.000000e+00
  %48 = and i1 %46, %47, !dbg !136
  br i1 %48, label %361, label %49, !dbg !136

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

121:                                              ; preds = %121, %118
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

131:                                              ; preds = %131, %128
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

140:                                              ; preds = %131, %128, %121, %118, %82, %56
  br i1 %46, label %361, label %141, !dbg !174

141:                                              ; preds = %140
  %142 = icmp eq i32 %0, 101, !dbg !175
  %143 = and i1 %142, %50, !dbg !176
  br i1 %143, label %148, label %144, !dbg !176

144:                                              ; preds = %141
  %145 = icmp eq i32 %0, 102, !dbg !177
  %146 = icmp eq i32 %16, 112
  %147 = and i1 %145, %146, !dbg !178
  br i1 %147, label %148, label %254, !dbg !178

148:                                              ; preds = %144, %141
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !83, metadata !DIExpression()), !dbg !179
  tail call void @llvm.dbg.value(metadata i32 0, metadata !66, metadata !DIExpression()), !dbg !108
  %149 = icmp sgt i32 %53, 0, !dbg !180
  br i1 %149, label %150, label %361, !dbg !181

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

162:                                              ; preds = %242, %150
  %163 = phi i64 [ %160, %150 ], [ %251, %242 ]
  %164 = phi i32 [ 0, %150 ], [ %252, %242 ]
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
  br i1 %172, label %173, label %242, !dbg !190

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
  br i1 %189, label %202, label %190, !dbg !190

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
  %198 = fpext float %197 to double, !dbg !196
  %199 = fptrunc double %198 to float, !dbg !196
  %handler_result = call float @fAddHandlerFloat(float %199, float 0.000000e+00), !dbg !196
  tail call void @llvm.dbg.value(metadata float %handler_result, metadata !86, metadata !DIExpression()), !dbg !183
  %200 = add nsw i64 %181, %159, !dbg !196
  tail call void @llvm.dbg.value(metadata i64 %200, metadata !92, metadata !DIExpression()), !dbg !183
  %201 = add nsw i64 %182, 1, !dbg !197
  tail call void @llvm.dbg.value(metadata i64 %201, metadata !69, metadata !DIExpression()), !dbg !108
  br label %202, !dbg !190

202:                                              ; preds = %190, %173
  %203 = phi i64 [ %181, %173 ], [ %200, %190 ]
  %204 = phi i64 [ %182, %173 ], [ %201, %190 ]
  %205 = phi float [ 0.000000e+00, %173 ], [ %handler_result, %190 ]
  %206 = phi float [ undef, %173 ], [ %handler_result, %190 ]
  %207 = add nsw i64 %186, -1, !dbg !190
  %208 = icmp eq i64 %207, %176, !dbg !190
  br i1 %208, label %242, label %209, !dbg !190

209:                                              ; preds = %209, %202
  %210 = phi i64 [ %239, %209 ], [ %203, %202 ]
  %211 = phi i64 [ %240, %209 ], [ %204, %202 ]
  %212 = phi float [ %handler_result2, %209 ], [ %205, %202 ]
  tail call void @llvm.dbg.value(metadata i64 %211, metadata !69, metadata !DIExpression()), !dbg !108
  tail call void @llvm.dbg.value(metadata i64 %210, metadata !92, metadata !DIExpression()), !dbg !183
  tail call void @llvm.dbg.value(metadata float %212, metadata !86, metadata !DIExpression()), !dbg !183
  %213 = getelementptr inbounds float, ptr %9, i64 %210, !dbg !191
  %214 = load float, ptr %213, align 4, !dbg !191, !tbaa !150
  %215 = trunc i64 %211 to i32, !dbg !193
  %216 = add i32 %185, %215, !dbg !193
  %217 = sext i32 %216 to i64, !dbg !194
  %218 = getelementptr inbounds float, ptr %7, i64 %217, !dbg !194
  %219 = load float, ptr %218, align 4, !dbg !194, !tbaa !150
  %220 = fmul float %214, %219, !dbg !195
  %221 = fpext float %212 to double, !dbg !196
  %222 = fpext float %220 to double, !dbg !196
  %223 = fptrunc double %221 to float, !dbg !196
  %224 = fptrunc double %222 to float, !dbg !196
  %handler_result1 = call float @fAddHandlerFloat(float %223, float %224), !dbg !196
  tail call void @llvm.dbg.value(metadata float %handler_result1, metadata !86, metadata !DIExpression()), !dbg !183
  %225 = add i64 %210, %159, !dbg !196
  tail call void @llvm.dbg.value(metadata i64 %225, metadata !92, metadata !DIExpression()), !dbg !183
  tail call void @llvm.dbg.value(metadata i64 %211, metadata !69, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !108
  tail call void @llvm.dbg.value(metadata i64 %211, metadata !69, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !108
  tail call void @llvm.dbg.value(metadata i64 %225, metadata !92, metadata !DIExpression()), !dbg !183
  tail call void @llvm.dbg.value(metadata float %handler_result1, metadata !86, metadata !DIExpression()), !dbg !183
  %226 = getelementptr inbounds float, ptr %9, i64 %225, !dbg !191
  %227 = load float, ptr %226, align 4, !dbg !191, !tbaa !150
  %228 = trunc i64 %211 to i32, !dbg !193
  %229 = add i32 %228, 1, !dbg !193
  %230 = add i32 %185, %229, !dbg !193
  %231 = sext i32 %230 to i64, !dbg !194
  %232 = getelementptr inbounds float, ptr %7, i64 %231, !dbg !194
  %233 = load float, ptr %232, align 4, !dbg !194, !tbaa !150
  %234 = fmul float %227, %233, !dbg !195
  %235 = fpext float %handler_result1 to double, !dbg !196
  %236 = fpext float %234 to double, !dbg !196
  %237 = fptrunc double %235 to float, !dbg !196
  %238 = fptrunc double %236 to float, !dbg !196
  %handler_result2 = call float @fAddHandlerFloat(float %237, float %238), !dbg !196
  tail call void @llvm.dbg.value(metadata float %handler_result2, metadata !86, metadata !DIExpression()), !dbg !183
  %239 = add i64 %225, %159, !dbg !196
  tail call void @llvm.dbg.value(metadata i64 %239, metadata !92, metadata !DIExpression()), !dbg !183
  %240 = add nsw i64 %211, 2, !dbg !197
  tail call void @llvm.dbg.value(metadata i64 %240, metadata !69, metadata !DIExpression()), !dbg !108
  %241 = icmp slt i64 %240, %186, !dbg !187
  br i1 %241, label %209, label %242, !dbg !190, !llvm.loop !198

242:                                              ; preds = %209, %202, %162
  %243 = phi float [ 0.000000e+00, %162 ], [ %206, %202 ], [ %handler_result2, %209 ], !dbg !183
  %244 = fmul float %243, %6, !dbg !200
  %245 = getelementptr inbounds float, ptr %12, i64 %163, !dbg !201
  %246 = load float, ptr %245, align 4, !dbg !202, !tbaa !150
  %247 = fpext float %244 to double, !dbg !202
  %248 = fpext float %246 to double, !dbg !202
  %249 = fptrunc double %247 to float, !dbg !202
  %250 = fptrunc double %248 to float, !dbg !202
  %handler_result3 = call float @fAddHandlerFloat(float %249, float %250), !dbg !202
  store float %handler_result3, ptr %245, align 4, !dbg !202, !tbaa !150
  %251 = add i64 %163, %161, !dbg !203
  tail call void @llvm.dbg.value(metadata i64 %251, metadata !83, metadata !DIExpression()), !dbg !179
  %252 = add nuw nsw i32 %164, 1, !dbg !204
  tail call void @llvm.dbg.value(metadata i32 %252, metadata !66, metadata !DIExpression()), !dbg !108
  %253 = icmp eq i32 %252, %53, !dbg !180
  br i1 %253, label %361, label %162, !dbg !181, !llvm.loop !205

254:                                              ; preds = %144
  %255 = and i1 %142, %146, !dbg !207
  %256 = and i1 %145, %50
  %257 = or i1 %255, %256, !dbg !207
  br i1 %257, label %258, label %360, !dbg !207

258:                                              ; preds = %254
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !93, metadata !DIExpression()), !dbg !208
  tail call void @llvm.dbg.value(metadata i32 0, metadata !69, metadata !DIExpression()), !dbg !108
  %259 = icmp sgt i32 %54, 0, !dbg !209
  br i1 %259, label %260, label %361, !dbg !210

260:                                              ; preds = %258
  %261 = icmp sgt i32 %10, 0, !dbg !211
  %262 = sub nsw i32 1, %54, !dbg !211
  %263 = mul i32 %262, %10, !dbg !211
  %264 = select i1 %261, i32 0, i32 %263, !dbg !211
  tail call void @llvm.dbg.value(metadata i32 %264, metadata !93, metadata !DIExpression()), !dbg !208
  %265 = icmp sgt i32 %13, 0
  %266 = sub i32 1, %53
  %267 = mul i32 %266, %13
  %268 = select i1 %265, i32 0, i32 %267
  %269 = sext i32 %13 to i64, !dbg !210
  %270 = sext i32 %264 to i64, !dbg !210
  %271 = sext i32 %10 to i64, !dbg !210
  br label %272, !dbg !210

272:                                              ; preds = %356, %260
  %273 = phi i64 [ %270, %260 ], [ %357, %356 ]
  %274 = phi i32 [ 0, %260 ], [ %358, %356 ]
  tail call void @llvm.dbg.value(metadata i32 %274, metadata !69, metadata !DIExpression()), !dbg !108
  tail call void @llvm.dbg.value(metadata i64 %273, metadata !93, metadata !DIExpression()), !dbg !208
  %275 = tail call i32 @llvm.smax.i32(i32 %51, i32 %274), !dbg !212
  %276 = sub i32 %275, %51, !dbg !212
  %277 = sext i32 %276 to i64, !dbg !212
  %278 = tail call i32 @llvm.smax.i32(i32 %51, i32 %274), !dbg !212
  %279 = sub i32 %278, %51, !dbg !212
  %280 = mul i32 %279, %13, !dbg !212
  %281 = add i32 %268, %280, !dbg !212
  %282 = sext i32 %281 to i64, !dbg !212
  %283 = sext i32 %279 to i64, !dbg !212
  %284 = getelementptr inbounds float, ptr %9, i64 %273, !dbg !212
  %285 = load float, ptr %284, align 4, !dbg !212, !tbaa !150
  %286 = fmul float %285, %6, !dbg !213
  tail call void @llvm.dbg.value(metadata float %286, metadata !96, metadata !DIExpression()), !dbg !214
  %287 = fcmp une float %286, 0.000000e+00, !dbg !215
  br i1 %287, label %288, label %356, !dbg !216

288:                                              ; preds = %272
  %289 = icmp sgt i32 %274, %51, !dbg !217
  %290 = sub nsw i32 %274, %51, !dbg !218
  %291 = select i1 %289, i32 %290, i32 0, !dbg !218
  tail call void @llvm.dbg.value(metadata i32 %291, metadata !100, metadata !DIExpression()), !dbg !219
  %292 = add nsw i32 %274, %52, !dbg !220
  %293 = icmp sgt i32 %53, %292, !dbg !220
  %294 = add nsw i32 %292, 1, !dbg !220
  %295 = select i1 %293, i32 %294, i32 %53, !dbg !220
  tail call void @llvm.dbg.value(metadata i32 %295, metadata !103, metadata !DIExpression()), !dbg !219
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 %291, i32 %268, i32 %13), metadata !104, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !219
  tail call void @llvm.dbg.value(metadata i32 %291, metadata !66, metadata !DIExpression()), !dbg !108
  %296 = icmp slt i32 %291, %295, !dbg !221
  br i1 %296, label %297, label %356, !dbg !224

297:                                              ; preds = %288
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 %291, i32 %268, i32 %13), metadata !104, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !219
  %298 = mul nsw i32 %274, %8
  %299 = sub i32 %51, %274
  %300 = add i32 %299, %298
  %301 = sext i32 %295 to i64, !dbg !224
  %302 = sub nsw i64 %301, %277, !dbg !224
  %303 = and i64 %302, 1, !dbg !224
  %304 = icmp eq i64 %303, 0, !dbg !224
  br i1 %304, label %319, label %305, !dbg !224

305:                                              ; preds = %297
  tail call void @llvm.dbg.value(metadata i64 %282, metadata !104, metadata !DIExpression()), !dbg !219
  tail call void @llvm.dbg.value(metadata i64 %283, metadata !66, metadata !DIExpression()), !dbg !108
  %306 = add i32 %300, %279, !dbg !225
  %307 = sext i32 %306 to i64, !dbg !227
  %308 = getelementptr inbounds float, ptr %7, i64 %307, !dbg !227
  %309 = load float, ptr %308, align 4, !dbg !227, !tbaa !150
  %310 = fmul float %286, %309, !dbg !228
  %311 = getelementptr inbounds float, ptr %12, i64 %282, !dbg !229
  %312 = load float, ptr %311, align 4, !dbg !230, !tbaa !150
  %313 = fpext float %312 to double, !dbg !230
  %314 = fpext float %310 to double, !dbg !230
  %315 = fptrunc double %313 to float, !dbg !230
  %316 = fptrunc double %314 to float, !dbg !230
  %handler_result4 = call float @fAddHandlerFloat(float %315, float %316), !dbg !230
  store float %handler_result4, ptr %311, align 4, !dbg !230, !tbaa !150
  %317 = add nsw i64 %282, %269, !dbg !231
  tail call void @llvm.dbg.value(metadata i64 %317, metadata !104, metadata !DIExpression()), !dbg !219
  %318 = add nsw i64 %283, 1, !dbg !232
  tail call void @llvm.dbg.value(metadata i64 %318, metadata !66, metadata !DIExpression()), !dbg !108
  br label %319, !dbg !224

319:                                              ; preds = %305, %297
  %320 = phi i64 [ %283, %297 ], [ %318, %305 ]
  %321 = phi i64 [ %282, %297 ], [ %317, %305 ]
  %322 = add nsw i64 %301, -1, !dbg !224
  %323 = icmp eq i64 %322, %277, !dbg !224
  br i1 %323, label %356, label %324, !dbg !224

324:                                              ; preds = %324, %319
  %325 = phi i64 [ %354, %324 ], [ %320, %319 ]
  %326 = phi i64 [ %353, %324 ], [ %321, %319 ]
  tail call void @llvm.dbg.value(metadata i64 %326, metadata !104, metadata !DIExpression()), !dbg !219
  tail call void @llvm.dbg.value(metadata i64 %325, metadata !66, metadata !DIExpression()), !dbg !108
  %327 = trunc i64 %325 to i32, !dbg !225
  %328 = add i32 %300, %327, !dbg !225
  %329 = sext i32 %328 to i64, !dbg !227
  %330 = getelementptr inbounds float, ptr %7, i64 %329, !dbg !227
  %331 = load float, ptr %330, align 4, !dbg !227, !tbaa !150
  %332 = fmul float %286, %331, !dbg !228
  %333 = getelementptr inbounds float, ptr %12, i64 %326, !dbg !229
  %334 = load float, ptr %333, align 4, !dbg !230, !tbaa !150
  %335 = fpext float %334 to double, !dbg !230
  %336 = fpext float %332 to double, !dbg !230
  %337 = fptrunc double %335 to float, !dbg !230
  %338 = fptrunc double %336 to float, !dbg !230
  %handler_result5 = call float @fAddHandlerFloat(float %337, float %338), !dbg !230
  store float %handler_result5, ptr %333, align 4, !dbg !230, !tbaa !150
  %339 = add i64 %326, %269, !dbg !231
  tail call void @llvm.dbg.value(metadata i64 %339, metadata !104, metadata !DIExpression()), !dbg !219
  tail call void @llvm.dbg.value(metadata i64 %325, metadata !66, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !108
  tail call void @llvm.dbg.value(metadata i64 %339, metadata !104, metadata !DIExpression()), !dbg !219
  tail call void @llvm.dbg.value(metadata i64 %325, metadata !66, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !108
  %340 = trunc i64 %325 to i32, !dbg !225
  %341 = add i32 %340, 1, !dbg !225
  %342 = add i32 %300, %341, !dbg !225
  %343 = sext i32 %342 to i64, !dbg !227
  %344 = getelementptr inbounds float, ptr %7, i64 %343, !dbg !227
  %345 = load float, ptr %344, align 4, !dbg !227, !tbaa !150
  %346 = fmul float %286, %345, !dbg !228
  %347 = getelementptr inbounds float, ptr %12, i64 %339, !dbg !229
  %348 = load float, ptr %347, align 4, !dbg !230, !tbaa !150
  %349 = fpext float %348 to double, !dbg !230
  %350 = fpext float %346 to double, !dbg !230
  %351 = fptrunc double %349 to float, !dbg !230
  %352 = fptrunc double %350 to float, !dbg !230
  %handler_result6 = call float @fAddHandlerFloat(float %351, float %352), !dbg !230
  store float %handler_result6, ptr %347, align 4, !dbg !230, !tbaa !150
  %353 = add i64 %339, %269, !dbg !231
  tail call void @llvm.dbg.value(metadata i64 %353, metadata !104, metadata !DIExpression()), !dbg !219
  %354 = add nsw i64 %325, 2, !dbg !232
  tail call void @llvm.dbg.value(metadata i64 %354, metadata !66, metadata !DIExpression()), !dbg !108
  %355 = icmp slt i64 %354, %301, !dbg !221
  br i1 %355, label %324, label %356, !dbg !224, !llvm.loop !233

356:                                              ; preds = %324, %319, %288, %272
  %357 = add i64 %273, %271, !dbg !235
  tail call void @llvm.dbg.value(metadata i64 %357, metadata !93, metadata !DIExpression()), !dbg !208
  %358 = add nuw nsw i32 %274, 1, !dbg !236
  tail call void @llvm.dbg.value(metadata i32 %358, metadata !69, metadata !DIExpression()), !dbg !108
  %359 = icmp eq i32 %358, %54, !dbg !209
  br i1 %359, label %361, label %272, !dbg !210, !llvm.loop !237

360:                                              ; preds = %254
  tail call void (i32, ptr, ptr, ...) @cblas_xerbla(i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #3, !dbg !239
  br label %361

361:                                              ; preds = %360, %356, %258, %242, %148, %140, %45, %41
  ret void, !dbg !241
}

declare !dbg !243 void @cblas_xerbla(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #2

declare float @fAddHandlerFloat(float, float)

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
!196 = !DILocation(line: 75, column: 12, scope: !192)
!197 = !DILocation(line: 73, column: 35, scope: !188)
!198 = distinct !{!198, !190, !199, !157}
!199 = !DILocation(line: 76, column: 7, scope: !189)
!200 = !DILocation(line: 77, column: 22, scope: !87)
!201 = !DILocation(line: 77, column: 7, scope: !87)
!202 = !DILocation(line: 77, column: 13, scope: !87)
!203 = !DILocation(line: 78, column: 10, scope: !87)
!204 = !DILocation(line: 68, column: 28, scope: !88)
!205 = distinct !{!205, !181, !206, !157}
!206 = !DILocation(line: 79, column: 5, scope: !89)
!207 = !DILocation(line: 80, column: 38, scope: !95)
!208 = !DILocation(line: 0, scope: !94)
!209 = !DILocation(line: 84, column: 19, scope: !98)
!210 = !DILocation(line: 84, column: 5, scope: !99)
!211 = !DILocation(line: 83, column: 16, scope: !94)
!212 = !DILocation(line: 85, column: 33, scope: !97)
!213 = !DILocation(line: 85, column: 31, scope: !97)
!214 = !DILocation(line: 0, scope: !97)
!215 = !DILocation(line: 86, column: 16, scope: !102)
!216 = !DILocation(line: 86, column: 11, scope: !97)
!217 = !DILocation(line: 87, column: 32, scope: !101)
!218 = !DILocation(line: 87, column: 30, scope: !101)
!219 = !DILocation(line: 0, scope: !101)
!220 = !DILocation(line: 88, column: 29, scope: !101)
!221 = !DILocation(line: 90, column: 27, scope: !222)
!222 = distinct !DILexicalBlock(scope: !223, file: !2, line: 90, column: 9)
!223 = distinct !DILexicalBlock(scope: !101, file: !2, line: 90, column: 9)
!224 = !DILocation(line: 90, column: 9, scope: !223)
!225 = !DILocation(line: 91, column: 37, scope: !226)
!226 = distinct !DILexicalBlock(scope: !222, file: !2, line: 90, column: 41)
!227 = !DILocation(line: 91, column: 27, scope: !226)
!228 = !DILocation(line: 91, column: 25, scope: !226)
!229 = !DILocation(line: 91, column: 11, scope: !226)
!230 = !DILocation(line: 91, column: 17, scope: !226)
!231 = !DILocation(line: 92, column: 14, scope: !226)
!232 = !DILocation(line: 90, column: 37, scope: !222)
!233 = distinct !{!233, !224, !234, !157}
!234 = !DILocation(line: 93, column: 9, scope: !223)
!235 = !DILocation(line: 95, column: 10, scope: !97)
!236 = !DILocation(line: 84, column: 28, scope: !98)
!237 = distinct !{!237, !210, !238, !157}
!238 = !DILocation(line: 96, column: 5, scope: !99)
!239 = !DILocation(line: 98, column: 5, scope: !240)
!240 = distinct !DILexicalBlock(scope: !95, file: !2, line: 97, column: 10)
!241 = !DILocation(line: 15, column: 1, scope: !242)
!242 = !DILexicalBlockFile(scope: !40, file: !18, discriminator: 0)
!243 = !DISubprogram(name: "cblas_xerbla", scope: !21, file: !21, line: 602, type: !244, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!244 = !DISubroutineType(types: !245)
!245 = !{null, !46, !246, !246, null}
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!247 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
