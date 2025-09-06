; ModuleID = 'sgemv.c'
source_filename = "sgemv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"./source_gemv_r.h\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !7
@.str.2 = private unnamed_addr constant [23 x i8] c"unrecognized operation\00", align 1, !dbg !12

; Function Attrs: nounwind uwtable
define dso_local void @cblas_sgemv(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, float noundef %4, ptr nocapture noundef readonly %5, i32 noundef %6, ptr nocapture noundef readonly %7, i32 noundef %8, float noundef %9, ptr nocapture noundef %10, i32 noundef %11) local_unnamed_addr #0 !dbg !40 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !52, metadata !DIExpression()), !dbg !97
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !53, metadata !DIExpression()), !dbg !97
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !54, metadata !DIExpression()), !dbg !97
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !55, metadata !DIExpression()), !dbg !97
  tail call void @llvm.dbg.value(metadata float %4, metadata !56, metadata !DIExpression()), !dbg !97
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !57, metadata !DIExpression()), !dbg !97
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !58, metadata !DIExpression()), !dbg !97
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !59, metadata !DIExpression()), !dbg !97
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !60, metadata !DIExpression()), !dbg !97
  tail call void @llvm.dbg.value(metadata float %9, metadata !61, metadata !DIExpression()), !dbg !97
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !62, metadata !DIExpression()), !dbg !97
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !63, metadata !DIExpression()), !dbg !97
  %13 = icmp eq i32 %1, 113, !dbg !98
  %14 = select i1 %13, i32 112, i32 %1, !dbg !99
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !70, metadata !DIExpression()), !dbg !100
  tail call void @llvm.dbg.value(metadata i32 0, metadata !71, metadata !DIExpression()), !dbg !101
  %15 = add i32 %0, -103, !dbg !102
  %16 = icmp ult i32 %15, -2, !dbg !102
  %17 = zext i1 %16 to i32, !dbg !102
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !71, metadata !DIExpression()), !dbg !101
  %18 = add i32 %1, -114, !dbg !104
  %19 = icmp ult i32 %18, -3, !dbg !104
  %20 = select i1 %19, i32 2, i32 %17, !dbg !104
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !71, metadata !DIExpression()), !dbg !101
  %21 = icmp slt i32 %2, 0, !dbg !106
  %22 = select i1 %21, i32 3, i32 %20, !dbg !108
  tail call void @llvm.dbg.value(metadata i32 %22, metadata !71, metadata !DIExpression()), !dbg !101
  %23 = icmp slt i32 %3, 0, !dbg !109
  %24 = select i1 %23, i32 4, i32 %22, !dbg !108
  tail call void @llvm.dbg.value(metadata i32 %24, metadata !71, metadata !DIExpression()), !dbg !101
  %25 = icmp eq i32 %0, 101, !dbg !111
  br i1 %25, label %26, label %29, !dbg !108

26:                                               ; preds = %12
  %27 = tail call i32 @llvm.smax.i32(i32 %3, i32 1), !dbg !113
  %28 = icmp sgt i32 %27, %6, !dbg !113
  br label %34, !dbg !116

29:                                               ; preds = %12
  %30 = icmp eq i32 %0, 102, !dbg !117
  %31 = tail call i32 @llvm.smax.i32(i32 %2, i32 1)
  %32 = icmp sgt i32 %31, %6
  %33 = and i1 %30, %32, !dbg !111
  br label %34, !dbg !111

34:                                               ; preds = %29, %26
  %35 = phi i1 [ %33, %29 ], [ %28, %26 ]
  %36 = select i1 %35, i32 7, i32 %24, !dbg !111
  tail call void @llvm.dbg.value(metadata i32 %36, metadata !71, metadata !DIExpression()), !dbg !101
  %37 = icmp eq i32 %8, 0, !dbg !119
  %38 = select i1 %37, i32 9, i32 %36, !dbg !108
  tail call void @llvm.dbg.value(metadata i32 %38, metadata !71, metadata !DIExpression()), !dbg !101
  %39 = icmp eq i32 %11, 0, !dbg !121
  %40 = select i1 %39, i32 12, i32 %38, !dbg !108
  tail call void @llvm.dbg.value(metadata i32 %40, metadata !71, metadata !DIExpression()), !dbg !101
  %41 = icmp eq i32 %40, 0, !dbg !123
  br i1 %41, label %43, label %42, !dbg !108

42:                                               ; preds = %34
  tail call void (i32, ptr, ptr, ...) @cblas_xerbla(i32 noundef %40, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #3, !dbg !123
  br label %43, !dbg !123

43:                                               ; preds = %42, %34
  %44 = icmp eq i32 %2, 0, !dbg !125
  %45 = icmp eq i32 %3, 0
  %46 = or i1 %44, %45, !dbg !127
  br i1 %46, label %319, label %47, !dbg !127

47:                                               ; preds = %43
  %48 = fcmp oeq float %4, 0.000000e+00, !dbg !128
  %49 = fcmp oeq float %9, 1.000000e+00
  %50 = and i1 %48, %49, !dbg !130
  br i1 %50, label %319, label %51, !dbg !130

51:                                               ; preds = %47
  %52 = icmp eq i32 %14, 111, !dbg !131
  %53 = select i1 %52, i32 %3, i32 %2
  %54 = select i1 %52, i32 %2, i32 %3
  tail call void @llvm.dbg.value(metadata i32 %54, metadata !69, metadata !DIExpression()), !dbg !100
  tail call void @llvm.dbg.value(metadata i32 %53, metadata !68, metadata !DIExpression()), !dbg !100
  %55 = fcmp oeq float %9, 0.000000e+00, !dbg !133
  br i1 %55, label %56, label %82, !dbg !134

56:                                               ; preds = %51
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !73, metadata !DIExpression()), !dbg !135
  tail call void @llvm.dbg.value(metadata i32 0, metadata !64, metadata !DIExpression()), !dbg !100
  %57 = icmp sgt i32 %54, 0, !dbg !136
  br i1 %57, label %58, label %140, !dbg !139

58:                                               ; preds = %56
  %59 = icmp sgt i32 %11, 0, !dbg !140
  %60 = sub nsw i32 1, %54, !dbg !140
  %61 = mul i32 %60, %11, !dbg !140
  %62 = select i1 %59, i32 0, i32 %61, !dbg !140
  tail call void @llvm.dbg.value(metadata i32 %62, metadata !73, metadata !DIExpression()), !dbg !135
  %63 = sext i32 %62 to i64, !dbg !139
  %64 = sext i32 %11 to i64, !dbg !139
  %65 = and i32 %54, 3, !dbg !139
  %66 = icmp ult i32 %54, 4, !dbg !139
  br i1 %66, label %118, label %67, !dbg !139

67:                                               ; preds = %58
  %68 = and i32 %54, 2147483644, !dbg !139
  br label %69, !dbg !139

69:                                               ; preds = %69, %67
  %70 = phi i64 [ %63, %67 ], [ %79, %69 ]
  %71 = phi i32 [ 0, %67 ], [ %80, %69 ]
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !64, metadata !DIExpression()), !dbg !100
  tail call void @llvm.dbg.value(metadata i64 %70, metadata !73, metadata !DIExpression()), !dbg !135
  %72 = getelementptr inbounds float, ptr %10, i64 %70, !dbg !141
  store float 0.000000e+00, ptr %72, align 4, !dbg !143, !tbaa !144
  %73 = add i64 %70, %64, !dbg !148
  tail call void @llvm.dbg.value(metadata i64 %73, metadata !73, metadata !DIExpression()), !dbg !135
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !64, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !100
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !64, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !100
  tail call void @llvm.dbg.value(metadata i64 %73, metadata !73, metadata !DIExpression()), !dbg !135
  %74 = getelementptr inbounds float, ptr %10, i64 %73, !dbg !141
  store float 0.000000e+00, ptr %74, align 4, !dbg !143, !tbaa !144
  %75 = add i64 %73, %64, !dbg !148
  tail call void @llvm.dbg.value(metadata i64 %75, metadata !73, metadata !DIExpression()), !dbg !135
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !64, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !100
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !64, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !100
  tail call void @llvm.dbg.value(metadata i64 %75, metadata !73, metadata !DIExpression()), !dbg !135
  %76 = getelementptr inbounds float, ptr %10, i64 %75, !dbg !141
  store float 0.000000e+00, ptr %76, align 4, !dbg !143, !tbaa !144
  %77 = add i64 %75, %64, !dbg !148
  tail call void @llvm.dbg.value(metadata i64 %77, metadata !73, metadata !DIExpression()), !dbg !135
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !64, metadata !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value)), !dbg !100
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !64, metadata !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value)), !dbg !100
  tail call void @llvm.dbg.value(metadata i64 %77, metadata !73, metadata !DIExpression()), !dbg !135
  %78 = getelementptr inbounds float, ptr %10, i64 %77, !dbg !141
  store float 0.000000e+00, ptr %78, align 4, !dbg !143, !tbaa !144
  %79 = add i64 %77, %64, !dbg !148
  tail call void @llvm.dbg.value(metadata i64 %79, metadata !73, metadata !DIExpression()), !dbg !135
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !64, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !100
  %80 = add i32 %71, 4, !dbg !139
  %81 = icmp eq i32 %80, %68, !dbg !139
  br i1 %81, label %118, label %69, !dbg !139, !llvm.loop !149

82:                                               ; preds = %51
  %83 = fcmp une float %9, 1.000000e+00, !dbg !152
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !76, metadata !DIExpression()), !dbg !153
  tail call void @llvm.dbg.value(metadata i32 0, metadata !64, metadata !DIExpression()), !dbg !100
  %84 = icmp sgt i32 %54, 0
  %85 = and i1 %83, %84, !dbg !154
  br i1 %85, label %86, label %140, !dbg !154

86:                                               ; preds = %82
  %87 = icmp sgt i32 %11, 0, !dbg !155
  %88 = sub nsw i32 1, %54, !dbg !155
  %89 = mul i32 %88, %11, !dbg !155
  %90 = select i1 %87, i32 0, i32 %89, !dbg !155
  tail call void @llvm.dbg.value(metadata i32 %90, metadata !76, metadata !DIExpression()), !dbg !153
  %91 = sext i32 %90 to i64, !dbg !156
  %92 = sext i32 %11 to i64, !dbg !156
  %93 = and i32 %54, 3, !dbg !156
  %94 = icmp ult i32 %54, 4, !dbg !156
  br i1 %94, label %128, label %95, !dbg !156

95:                                               ; preds = %86
  %96 = and i32 %54, -4, !dbg !156
  br label %97, !dbg !156

97:                                               ; preds = %97, %95
  %98 = phi i64 [ %91, %95 ], [ %115, %97 ]
  %99 = phi i32 [ 0, %95 ], [ %116, %97 ]
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !64, metadata !DIExpression()), !dbg !100
  tail call void @llvm.dbg.value(metadata i64 %98, metadata !76, metadata !DIExpression()), !dbg !153
  %100 = getelementptr inbounds float, ptr %10, i64 %98, !dbg !158
  %101 = load float, ptr %100, align 4, !dbg !161, !tbaa !144
  %102 = fmul float %101, %9, !dbg !161
  store float %102, ptr %100, align 4, !dbg !161, !tbaa !144
  %103 = add i64 %98, %92, !dbg !162
  tail call void @llvm.dbg.value(metadata i64 %103, metadata !76, metadata !DIExpression()), !dbg !153
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !64, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !100
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !64, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !100
  tail call void @llvm.dbg.value(metadata i64 %103, metadata !76, metadata !DIExpression()), !dbg !153
  %104 = getelementptr inbounds float, ptr %10, i64 %103, !dbg !158
  %105 = load float, ptr %104, align 4, !dbg !161, !tbaa !144
  %106 = fmul float %105, %9, !dbg !161
  store float %106, ptr %104, align 4, !dbg !161, !tbaa !144
  %107 = add i64 %103, %92, !dbg !162
  tail call void @llvm.dbg.value(metadata i64 %107, metadata !76, metadata !DIExpression()), !dbg !153
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !64, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !100
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !64, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !100
  tail call void @llvm.dbg.value(metadata i64 %107, metadata !76, metadata !DIExpression()), !dbg !153
  %108 = getelementptr inbounds float, ptr %10, i64 %107, !dbg !158
  %109 = load float, ptr %108, align 4, !dbg !161, !tbaa !144
  %110 = fmul float %109, %9, !dbg !161
  store float %110, ptr %108, align 4, !dbg !161, !tbaa !144
  %111 = add i64 %107, %92, !dbg !162
  tail call void @llvm.dbg.value(metadata i64 %111, metadata !76, metadata !DIExpression()), !dbg !153
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !64, metadata !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value)), !dbg !100
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !64, metadata !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value)), !dbg !100
  tail call void @llvm.dbg.value(metadata i64 %111, metadata !76, metadata !DIExpression()), !dbg !153
  %112 = getelementptr inbounds float, ptr %10, i64 %111, !dbg !158
  %113 = load float, ptr %112, align 4, !dbg !161, !tbaa !144
  %114 = fmul float %113, %9, !dbg !161
  store float %114, ptr %112, align 4, !dbg !161, !tbaa !144
  %115 = add i64 %111, %92, !dbg !162
  tail call void @llvm.dbg.value(metadata i64 %115, metadata !76, metadata !DIExpression()), !dbg !153
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !64, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !100
  %116 = add i32 %99, 4, !dbg !156
  %117 = icmp eq i32 %116, %96, !dbg !156
  br i1 %117, label %128, label %97, !dbg !156, !llvm.loop !163

118:                                              ; preds = %69, %58
  %119 = phi i64 [ %63, %58 ], [ %79, %69 ]
  %120 = icmp eq i32 %65, 0, !dbg !139
  br i1 %120, label %140, label %121, !dbg !139

121:                                              ; preds = %118, %121
  %122 = phi i64 [ %125, %121 ], [ %119, %118 ]
  %123 = phi i32 [ %126, %121 ], [ 0, %118 ]
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !64, metadata !DIExpression()), !dbg !100
  tail call void @llvm.dbg.value(metadata i64 %122, metadata !73, metadata !DIExpression()), !dbg !135
  %124 = getelementptr inbounds float, ptr %10, i64 %122, !dbg !141
  store float 0.000000e+00, ptr %124, align 4, !dbg !143, !tbaa !144
  %125 = add i64 %122, %64, !dbg !148
  tail call void @llvm.dbg.value(metadata i64 %125, metadata !73, metadata !DIExpression()), !dbg !135
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !64, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !100
  %126 = add i32 %123, 1, !dbg !139
  %127 = icmp eq i32 %126, %65, !dbg !139
  br i1 %127, label %140, label %121, !dbg !139, !llvm.loop !165

128:                                              ; preds = %97, %86
  %129 = phi i64 [ %91, %86 ], [ %115, %97 ]
  %130 = icmp eq i32 %93, 0, !dbg !156
  br i1 %130, label %140, label %131, !dbg !156

131:                                              ; preds = %128, %131
  %132 = phi i64 [ %137, %131 ], [ %129, %128 ]
  %133 = phi i32 [ %138, %131 ], [ 0, %128 ]
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !64, metadata !DIExpression()), !dbg !100
  tail call void @llvm.dbg.value(metadata i64 %132, metadata !76, metadata !DIExpression()), !dbg !153
  %134 = getelementptr inbounds float, ptr %10, i64 %132, !dbg !158
  %135 = load float, ptr %134, align 4, !dbg !161, !tbaa !144
  %136 = fmul float %135, %9, !dbg !161
  store float %136, ptr %134, align 4, !dbg !161, !tbaa !144
  %137 = add i64 %132, %92, !dbg !162
  tail call void @llvm.dbg.value(metadata i64 %137, metadata !76, metadata !DIExpression()), !dbg !153
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !64, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !100
  %138 = add i32 %133, 1, !dbg !156
  %139 = icmp eq i32 %138, %93, !dbg !156
  br i1 %139, label %140, label %131, !dbg !156, !llvm.loop !167

140:                                              ; preds = %128, %131, %118, %121, %56, %82
  br i1 %48, label %319, label %141, !dbg !168

141:                                              ; preds = %140
  %142 = and i1 %25, %52, !dbg !169
  br i1 %142, label %147, label %143, !dbg !169

143:                                              ; preds = %141
  %144 = icmp eq i32 %0, 102, !dbg !170
  %145 = icmp eq i32 %14, 112
  %146 = and i1 %144, %145, !dbg !171
  br i1 %146, label %147, label %244, !dbg !171

147:                                              ; preds = %143, %141
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !79, metadata !DIExpression()), !dbg !172
  tail call void @llvm.dbg.value(metadata i32 0, metadata !64, metadata !DIExpression()), !dbg !100
  %148 = icmp sgt i32 %54, 0, !dbg !173
  br i1 %148, label %149, label %319, !dbg !174

149:                                              ; preds = %147
  %150 = icmp sgt i32 %11, 0, !dbg !175
  %151 = sub nsw i32 1, %54, !dbg !175
  %152 = mul i32 %151, %11, !dbg !175
  %153 = select i1 %150, i32 0, i32 %152, !dbg !175
  tail call void @llvm.dbg.value(metadata i32 %153, metadata !79, metadata !DIExpression()), !dbg !172
  %154 = icmp sgt i32 %8, 0
  %155 = sub i32 1, %53
  %156 = mul i32 %155, %8
  %157 = select i1 %154, i32 0, i32 %156
  %158 = icmp sgt i32 %53, 0
  %159 = sext i32 %157 to i64, !dbg !174
  %160 = sext i32 %8 to i64, !dbg !174
  %161 = sext i32 %6 to i64, !dbg !174
  %162 = sext i32 %153 to i64, !dbg !174
  %163 = sext i32 %11 to i64, !dbg !174
  %164 = zext nneg i32 %54 to i64, !dbg !173
  %165 = zext i32 %53 to i64
  %166 = and i64 %165, 3
  %167 = icmp ult i32 %53, 4
  %168 = and i64 %165, 2147483644
  %169 = icmp eq i64 %166, 0
  br label %170, !dbg !174

170:                                              ; preds = %149, %235
  %171 = phi i64 [ %162, %149 ], [ %241, %235 ]
  %172 = phi i64 [ 0, %149 ], [ %242, %235 ]
  tail call void @llvm.dbg.value(metadata i64 %172, metadata !64, metadata !DIExpression()), !dbg !100
  tail call void @llvm.dbg.value(metadata i64 %171, metadata !79, metadata !DIExpression()), !dbg !172
  tail call void @llvm.dbg.value(metadata i32 %157, metadata !86, metadata !DIExpression()), !dbg !176
  tail call void @llvm.dbg.value(metadata i32 0, metadata !67, metadata !DIExpression()), !dbg !100
  tail call void @llvm.dbg.value(metadata float 0.000000e+00, metadata !82, metadata !DIExpression()), !dbg !176
  br i1 %158, label %173, label %235, !dbg !177

173:                                              ; preds = %170
  %174 = mul nsw i64 %172, %161
  %175 = getelementptr float, ptr %5, i64 %174, !dbg !177
  br i1 %167, label %215, label %176, !dbg !177

176:                                              ; preds = %173, %176
  %177 = phi i64 [ %212, %176 ], [ 0, %173 ]
  %178 = phi i64 [ %211, %176 ], [ %159, %173 ]
  %179 = phi float [ %210, %176 ], [ 0.000000e+00, %173 ]
  %180 = phi i64 [ %213, %176 ], [ 0, %173 ]
  tail call void @llvm.dbg.value(metadata i64 %178, metadata !86, metadata !DIExpression()), !dbg !176
  tail call void @llvm.dbg.value(metadata float %179, metadata !82, metadata !DIExpression()), !dbg !176
  tail call void @llvm.dbg.value(metadata i64 %177, metadata !67, metadata !DIExpression()), !dbg !100
  %181 = getelementptr inbounds float, ptr %7, i64 %178, !dbg !179
  %182 = load float, ptr %181, align 4, !dbg !179, !tbaa !144
  %183 = getelementptr float, ptr %175, i64 %177, !dbg !182
  %184 = load float, ptr %183, align 4, !dbg !182, !tbaa !144
  %185 = fmul float %182, %184, !dbg !183
  %186 = fadd float %179, %185, !dbg !184
  tail call void @llvm.dbg.value(metadata float %186, metadata !82, metadata !DIExpression()), !dbg !176
  %187 = add i64 %178, %160, !dbg !185
  tail call void @llvm.dbg.value(metadata i64 %187, metadata !86, metadata !DIExpression()), !dbg !176
  %188 = or disjoint i64 %177, 1, !dbg !186
  tail call void @llvm.dbg.value(metadata i64 %188, metadata !67, metadata !DIExpression()), !dbg !100
  tail call void @llvm.dbg.value(metadata i64 %187, metadata !86, metadata !DIExpression()), !dbg !176
  tail call void @llvm.dbg.value(metadata float %186, metadata !82, metadata !DIExpression()), !dbg !176
  tail call void @llvm.dbg.value(metadata i64 %188, metadata !67, metadata !DIExpression()), !dbg !100
  %189 = getelementptr inbounds float, ptr %7, i64 %187, !dbg !179
  %190 = load float, ptr %189, align 4, !dbg !179, !tbaa !144
  %191 = getelementptr float, ptr %175, i64 %188, !dbg !182
  %192 = load float, ptr %191, align 4, !dbg !182, !tbaa !144
  %193 = fmul float %190, %192, !dbg !183
  %194 = fadd float %186, %193, !dbg !184
  tail call void @llvm.dbg.value(metadata float %194, metadata !82, metadata !DIExpression()), !dbg !176
  %195 = add i64 %187, %160, !dbg !185
  tail call void @llvm.dbg.value(metadata i64 %195, metadata !86, metadata !DIExpression()), !dbg !176
  %196 = or disjoint i64 %177, 2, !dbg !186
  tail call void @llvm.dbg.value(metadata i64 %196, metadata !67, metadata !DIExpression()), !dbg !100
  tail call void @llvm.dbg.value(metadata i64 %195, metadata !86, metadata !DIExpression()), !dbg !176
  tail call void @llvm.dbg.value(metadata float %194, metadata !82, metadata !DIExpression()), !dbg !176
  tail call void @llvm.dbg.value(metadata i64 %196, metadata !67, metadata !DIExpression()), !dbg !100
  %197 = getelementptr inbounds float, ptr %7, i64 %195, !dbg !179
  %198 = load float, ptr %197, align 4, !dbg !179, !tbaa !144
  %199 = getelementptr float, ptr %175, i64 %196, !dbg !182
  %200 = load float, ptr %199, align 4, !dbg !182, !tbaa !144
  %201 = fmul float %198, %200, !dbg !183
  %202 = fadd float %194, %201, !dbg !184
  tail call void @llvm.dbg.value(metadata float %202, metadata !82, metadata !DIExpression()), !dbg !176
  %203 = add i64 %195, %160, !dbg !185
  tail call void @llvm.dbg.value(metadata i64 %203, metadata !86, metadata !DIExpression()), !dbg !176
  %204 = or disjoint i64 %177, 3, !dbg !186
  tail call void @llvm.dbg.value(metadata i64 %204, metadata !67, metadata !DIExpression()), !dbg !100
  tail call void @llvm.dbg.value(metadata i64 %203, metadata !86, metadata !DIExpression()), !dbg !176
  tail call void @llvm.dbg.value(metadata float %202, metadata !82, metadata !DIExpression()), !dbg !176
  tail call void @llvm.dbg.value(metadata i64 %204, metadata !67, metadata !DIExpression()), !dbg !100
  %205 = getelementptr inbounds float, ptr %7, i64 %203, !dbg !179
  %206 = load float, ptr %205, align 4, !dbg !179, !tbaa !144
  %207 = getelementptr float, ptr %175, i64 %204, !dbg !182
  %208 = load float, ptr %207, align 4, !dbg !182, !tbaa !144
  %209 = fmul float %206, %208, !dbg !183
  %210 = fadd float %202, %209, !dbg !184
  tail call void @llvm.dbg.value(metadata float %210, metadata !82, metadata !DIExpression()), !dbg !176
  %211 = add i64 %203, %160, !dbg !185
  tail call void @llvm.dbg.value(metadata i64 %211, metadata !86, metadata !DIExpression()), !dbg !176
  %212 = add nuw nsw i64 %177, 4, !dbg !186
  tail call void @llvm.dbg.value(metadata i64 %212, metadata !67, metadata !DIExpression()), !dbg !100
  %213 = add i64 %180, 4, !dbg !177
  %214 = icmp eq i64 %213, %168, !dbg !177
  br i1 %214, label %215, label %176, !dbg !177, !llvm.loop !187

215:                                              ; preds = %176, %173
  %216 = phi float [ undef, %173 ], [ %210, %176 ]
  %217 = phi i64 [ 0, %173 ], [ %212, %176 ]
  %218 = phi i64 [ %159, %173 ], [ %211, %176 ]
  %219 = phi float [ 0.000000e+00, %173 ], [ %210, %176 ]
  br i1 %169, label %235, label %220, !dbg !177

220:                                              ; preds = %215, %220
  %221 = phi i64 [ %232, %220 ], [ %217, %215 ]
  %222 = phi i64 [ %231, %220 ], [ %218, %215 ]
  %223 = phi float [ %230, %220 ], [ %219, %215 ]
  %224 = phi i64 [ %233, %220 ], [ 0, %215 ]
  tail call void @llvm.dbg.value(metadata i64 %222, metadata !86, metadata !DIExpression()), !dbg !176
  tail call void @llvm.dbg.value(metadata float %223, metadata !82, metadata !DIExpression()), !dbg !176
  tail call void @llvm.dbg.value(metadata i64 %221, metadata !67, metadata !DIExpression()), !dbg !100
  %225 = getelementptr inbounds float, ptr %7, i64 %222, !dbg !179
  %226 = load float, ptr %225, align 4, !dbg !179, !tbaa !144
  %227 = getelementptr float, ptr %175, i64 %221, !dbg !182
  %228 = load float, ptr %227, align 4, !dbg !182, !tbaa !144
  %229 = fmul float %226, %228, !dbg !183
  %230 = fadd float %223, %229, !dbg !184
  tail call void @llvm.dbg.value(metadata float %230, metadata !82, metadata !DIExpression()), !dbg !176
  %231 = add i64 %222, %160, !dbg !185
  tail call void @llvm.dbg.value(metadata i64 %231, metadata !86, metadata !DIExpression()), !dbg !176
  %232 = add nuw nsw i64 %221, 1, !dbg !186
  tail call void @llvm.dbg.value(metadata i64 %232, metadata !67, metadata !DIExpression()), !dbg !100
  %233 = add i64 %224, 1, !dbg !177
  %234 = icmp eq i64 %233, %166, !dbg !177
  br i1 %234, label %235, label %220, !dbg !177, !llvm.loop !189

235:                                              ; preds = %215, %220, %170
  %236 = phi float [ 0.000000e+00, %170 ], [ %216, %215 ], [ %230, %220 ], !dbg !176
  %237 = fmul float %236, %4, !dbg !190
  %238 = getelementptr inbounds float, ptr %10, i64 %171, !dbg !191
  %239 = load float, ptr %238, align 4, !dbg !192, !tbaa !144
  %240 = fadd float %237, %239, !dbg !192
  store float %240, ptr %238, align 4, !dbg !192, !tbaa !144
  %241 = add i64 %171, %163, !dbg !193
  tail call void @llvm.dbg.value(metadata i64 %241, metadata !79, metadata !DIExpression()), !dbg !172
  %242 = add nuw nsw i64 %172, 1, !dbg !194
  tail call void @llvm.dbg.value(metadata i64 %242, metadata !64, metadata !DIExpression()), !dbg !100
  %243 = icmp eq i64 %242, %164, !dbg !173
  br i1 %243, label %319, label %170, !dbg !174, !llvm.loop !195

244:                                              ; preds = %143
  %245 = and i1 %25, %145, !dbg !197
  %246 = and i1 %144, %52
  %247 = or i1 %245, %246, !dbg !197
  br i1 %247, label %248, label %318, !dbg !197

248:                                              ; preds = %244
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !87, metadata !DIExpression()), !dbg !198
  tail call void @llvm.dbg.value(metadata i32 0, metadata !67, metadata !DIExpression()), !dbg !100
  %249 = icmp sgt i32 %53, 0, !dbg !199
  br i1 %249, label %250, label %319, !dbg !200

250:                                              ; preds = %248
  %251 = icmp sgt i32 %8, 0, !dbg !201
  %252 = sub nsw i32 1, %53, !dbg !201
  %253 = mul i32 %252, %8, !dbg !201
  %254 = select i1 %251, i32 0, i32 %253, !dbg !201
  tail call void @llvm.dbg.value(metadata i32 %254, metadata !87, metadata !DIExpression()), !dbg !198
  %255 = icmp sgt i32 %11, 0
  %256 = sub i32 1, %54
  %257 = mul i32 %256, %11
  %258 = select i1 %255, i32 0, i32 %257
  %259 = icmp slt i32 %54, 1
  %260 = sext i32 %258 to i64, !dbg !200
  %261 = sext i32 %11 to i64, !dbg !200
  %262 = sext i32 %254 to i64, !dbg !200
  %263 = sext i32 %8 to i64, !dbg !200
  %264 = sext i32 %6 to i64, !dbg !200
  %265 = zext nneg i32 %53 to i64, !dbg !199
  %266 = zext i32 %54 to i64
  %267 = and i64 %266, 1
  %268 = icmp eq i32 %54, 1
  %269 = and i64 %266, 4294967294
  %270 = icmp eq i64 %267, 0
  br label %271, !dbg !200

271:                                              ; preds = %250, %314
  %272 = phi i64 [ 0, %250 ], [ %316, %314 ]
  %273 = phi i64 [ %262, %250 ], [ %315, %314 ]
  tail call void @llvm.dbg.value(metadata i64 %273, metadata !87, metadata !DIExpression()), !dbg !198
  tail call void @llvm.dbg.value(metadata i64 %272, metadata !67, metadata !DIExpression()), !dbg !100
  %274 = getelementptr inbounds float, ptr %7, i64 %273, !dbg !202
  %275 = load float, ptr %274, align 4, !dbg !202, !tbaa !144
  %276 = fmul float %275, %4, !dbg !203
  tail call void @llvm.dbg.value(metadata float %276, metadata !90, metadata !DIExpression()), !dbg !204
  %277 = fcmp oeq float %276, 0.000000e+00, !dbg !205
  %278 = or i1 %277, %259, !dbg !206
  br i1 %278, label %314, label %279, !dbg !206

279:                                              ; preds = %271
  %280 = mul nsw i64 %272, %264
  %281 = getelementptr float, ptr %5, i64 %280, !dbg !207
  br i1 %268, label %304, label %282, !dbg !207

282:                                              ; preds = %279, %282
  %283 = phi i64 [ %301, %282 ], [ 0, %279 ]
  %284 = phi i64 [ %300, %282 ], [ %260, %279 ]
  %285 = phi i64 [ %302, %282 ], [ 0, %279 ]
  tail call void @llvm.dbg.value(metadata i64 %284, metadata !94, metadata !DIExpression()), !dbg !209
  tail call void @llvm.dbg.value(metadata i64 %283, metadata !64, metadata !DIExpression()), !dbg !100
  %286 = getelementptr float, ptr %281, i64 %283, !dbg !210
  %287 = load float, ptr %286, align 4, !dbg !210, !tbaa !144
  %288 = fmul float %276, %287, !dbg !213
  %289 = getelementptr inbounds float, ptr %10, i64 %284, !dbg !214
  %290 = load float, ptr %289, align 4, !dbg !215, !tbaa !144
  %291 = fadd float %290, %288, !dbg !215
  store float %291, ptr %289, align 4, !dbg !215, !tbaa !144
  %292 = add i64 %284, %261, !dbg !216
  tail call void @llvm.dbg.value(metadata i64 %292, metadata !94, metadata !DIExpression()), !dbg !209
  %293 = or disjoint i64 %283, 1, !dbg !217
  tail call void @llvm.dbg.value(metadata i64 %293, metadata !64, metadata !DIExpression()), !dbg !100
  tail call void @llvm.dbg.value(metadata i64 %292, metadata !94, metadata !DIExpression()), !dbg !209
  tail call void @llvm.dbg.value(metadata i64 %293, metadata !64, metadata !DIExpression()), !dbg !100
  %294 = getelementptr float, ptr %281, i64 %293, !dbg !210
  %295 = load float, ptr %294, align 4, !dbg !210, !tbaa !144
  %296 = fmul float %276, %295, !dbg !213
  %297 = getelementptr inbounds float, ptr %10, i64 %292, !dbg !214
  %298 = load float, ptr %297, align 4, !dbg !215, !tbaa !144
  %299 = fadd float %298, %296, !dbg !215
  store float %299, ptr %297, align 4, !dbg !215, !tbaa !144
  %300 = add i64 %292, %261, !dbg !216
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !94, metadata !DIExpression()), !dbg !209
  %301 = add nuw nsw i64 %283, 2, !dbg !217
  tail call void @llvm.dbg.value(metadata i64 %301, metadata !64, metadata !DIExpression()), !dbg !100
  %302 = add i64 %285, 2, !dbg !207
  %303 = icmp eq i64 %302, %269, !dbg !207
  br i1 %303, label %304, label %282, !dbg !207, !llvm.loop !218

304:                                              ; preds = %282, %279
  %305 = phi i64 [ 0, %279 ], [ %301, %282 ]
  %306 = phi i64 [ %260, %279 ], [ %300, %282 ]
  br i1 %270, label %314, label %307, !dbg !207

307:                                              ; preds = %304
  tail call void @llvm.dbg.value(metadata i64 %306, metadata !94, metadata !DIExpression()), !dbg !209
  tail call void @llvm.dbg.value(metadata i64 %305, metadata !64, metadata !DIExpression()), !dbg !100
  %308 = getelementptr float, ptr %281, i64 %305, !dbg !210
  %309 = load float, ptr %308, align 4, !dbg !210, !tbaa !144
  %310 = fmul float %276, %309, !dbg !213
  %311 = getelementptr inbounds float, ptr %10, i64 %306, !dbg !214
  %312 = load float, ptr %311, align 4, !dbg !215, !tbaa !144
  %313 = fadd float %312, %310, !dbg !215
  store float %313, ptr %311, align 4, !dbg !215, !tbaa !144
  tail call void @llvm.dbg.value(metadata !DIArgList(i64 %306, i64 %261), metadata !94, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !209
  tail call void @llvm.dbg.value(metadata i64 %305, metadata !64, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !100
  br label %314, !dbg !220

314:                                              ; preds = %307, %304, %271
  %315 = add i64 %273, %263, !dbg !220
  tail call void @llvm.dbg.value(metadata i64 %315, metadata !87, metadata !DIExpression()), !dbg !198
  %316 = add nuw nsw i64 %272, 1, !dbg !221
  tail call void @llvm.dbg.value(metadata i64 %316, metadata !67, metadata !DIExpression()), !dbg !100
  %317 = icmp eq i64 %316, %265, !dbg !199
  br i1 %317, label %319, label %271, !dbg !200, !llvm.loop !222

318:                                              ; preds = %244
  tail call void (i32, ptr, ptr, ...) @cblas_xerbla(i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #3, !dbg !224
  br label %319

319:                                              ; preds = %314, %235, %248, %147, %318, %140, %47, %43
  ret void, !dbg !226
}

declare !dbg !228 void @cblas_xerbla(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

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
!2 = !DIFile(filename: "./source_gemv_r.h", directory: "/PI-detector/external/gsl/gsl-2.5/cblas", checksumkind: CSK_MD5, checksum: "e39519aa511a1f4078a9ad995157930a")
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
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 90, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 23)
!17 = distinct !DICompileUnit(language: DW_LANG_C11, file: !18, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !19, globals: !31, splitDebugInlining: false, nameTableKind: None)
!18 = !DIFile(filename: "sgemv.c", directory: "/PI-detector/external/gsl/gsl-2.5/cblas", checksumkind: CSK_MD5, checksum: "1c15d1e3396ea956d74e8ac5da95f9e5")
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
!40 = distinct !DISubprogram(name: "cblas_sgemv", scope: !18, file: !18, line: 7, type: !41, scopeLine: 11, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !51)
!41 = !DISubroutineType(types: !42)
!42 = !{null, !43, !44, !45, !45, !47, !49, !45, !49, !45, !47, !50, !45}
!43 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!44 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !26)
!45 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!46 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!47 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !48)
!48 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!51 = !{!52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !67, !68, !69, !70, !71, !73, !76, !79, !82, !86, !87, !90, !94}
!52 = !DILocalVariable(name: "order", arg: 1, scope: !40, file: !18, line: 7, type: !43)
!53 = !DILocalVariable(name: "TransA", arg: 2, scope: !40, file: !18, line: 7, type: !44)
!54 = !DILocalVariable(name: "M", arg: 3, scope: !40, file: !18, line: 8, type: !45)
!55 = !DILocalVariable(name: "N", arg: 4, scope: !40, file: !18, line: 8, type: !45)
!56 = !DILocalVariable(name: "alpha", arg: 5, scope: !40, file: !18, line: 8, type: !47)
!57 = !DILocalVariable(name: "A", arg: 6, scope: !40, file: !18, line: 8, type: !49)
!58 = !DILocalVariable(name: "lda", arg: 7, scope: !40, file: !18, line: 9, type: !45)
!59 = !DILocalVariable(name: "X", arg: 8, scope: !40, file: !18, line: 9, type: !49)
!60 = !DILocalVariable(name: "incX", arg: 9, scope: !40, file: !18, line: 9, type: !45)
!61 = !DILocalVariable(name: "beta", arg: 10, scope: !40, file: !18, line: 9, type: !47)
!62 = !DILocalVariable(name: "Y", arg: 11, scope: !40, file: !18, line: 10, type: !50)
!63 = !DILocalVariable(name: "incY", arg: 12, scope: !40, file: !18, line: 10, type: !45)
!64 = !DILocalVariable(name: "i", scope: !65, file: !2, line: 21, type: !46)
!65 = distinct !DILexicalBlock(scope: !66, file: !2, line: 20, column: 1)
!66 = !DILexicalBlockFile(scope: !40, file: !2, discriminator: 0)
!67 = !DILocalVariable(name: "j", scope: !65, file: !2, line: 21, type: !46)
!68 = !DILocalVariable(name: "lenX", scope: !65, file: !2, line: 22, type: !46)
!69 = !DILocalVariable(name: "lenY", scope: !65, file: !2, line: 22, type: !46)
!70 = !DILocalVariable(name: "Trans", scope: !65, file: !2, line: 24, type: !45)
!71 = !DILocalVariable(name: "pos", scope: !72, file: !2, line: 26, type: !46)
!72 = distinct !DILexicalBlock(scope: !65, file: !2, line: 26, column: 3)
!73 = !DILocalVariable(name: "iy", scope: !74, file: !2, line: 44, type: !46)
!74 = distinct !DILexicalBlock(scope: !75, file: !2, line: 43, column: 20)
!75 = distinct !DILexicalBlock(scope: !65, file: !2, line: 43, column: 7)
!76 = !DILocalVariable(name: "iy", scope: !77, file: !2, line: 50, type: !46)
!77 = distinct !DILexicalBlock(scope: !78, file: !2, line: 49, column: 27)
!78 = distinct !DILexicalBlock(scope: !75, file: !2, line: 49, column: 14)
!79 = !DILocalVariable(name: "iy", scope: !80, file: !2, line: 63, type: !46)
!80 = distinct !DILexicalBlock(scope: !81, file: !2, line: 61, column: 59)
!81 = distinct !DILexicalBlock(scope: !65, file: !2, line: 60, column: 7)
!82 = !DILocalVariable(name: "temp", scope: !83, file: !2, line: 65, type: !48)
!83 = distinct !DILexicalBlock(scope: !84, file: !2, line: 64, column: 32)
!84 = distinct !DILexicalBlock(scope: !85, file: !2, line: 64, column: 5)
!85 = distinct !DILexicalBlock(scope: !80, file: !2, line: 64, column: 5)
!86 = !DILocalVariable(name: "ix", scope: !83, file: !2, line: 66, type: !46)
!87 = !DILocalVariable(name: "ix", scope: !88, file: !2, line: 77, type: !46)
!88 = distinct !DILexicalBlock(scope: !89, file: !2, line: 75, column: 68)
!89 = distinct !DILexicalBlock(scope: !81, file: !2, line: 74, column: 14)
!90 = !DILocalVariable(name: "temp", scope: !91, file: !2, line: 79, type: !47)
!91 = distinct !DILexicalBlock(scope: !92, file: !2, line: 78, column: 32)
!92 = distinct !DILexicalBlock(scope: !93, file: !2, line: 78, column: 5)
!93 = distinct !DILexicalBlock(scope: !88, file: !2, line: 78, column: 5)
!94 = !DILocalVariable(name: "iy", scope: !95, file: !2, line: 81, type: !46)
!95 = distinct !DILexicalBlock(scope: !96, file: !2, line: 80, column: 24)
!96 = distinct !DILexicalBlock(scope: !91, file: !2, line: 80, column: 11)
!97 = !DILocation(line: 0, scope: !40)
!98 = !DILocation(line: 24, column: 29, scope: !65)
!99 = !DILocation(line: 24, column: 21, scope: !65)
!100 = !DILocation(line: 0, scope: !65)
!101 = !DILocation(line: 0, scope: !72)
!102 = !DILocation(line: 26, column: 3, scope: !103)
!103 = distinct !DILexicalBlock(scope: !72, file: !2, line: 26, column: 3)
!104 = !DILocation(line: 26, column: 3, scope: !105)
!105 = distinct !DILexicalBlock(scope: !72, file: !2, line: 26, column: 3)
!106 = !DILocation(line: 26, column: 3, scope: !107)
!107 = distinct !DILexicalBlock(scope: !72, file: !2, line: 26, column: 3)
!108 = !DILocation(line: 26, column: 3, scope: !72)
!109 = !DILocation(line: 26, column: 3, scope: !110)
!110 = distinct !DILexicalBlock(scope: !72, file: !2, line: 26, column: 3)
!111 = !DILocation(line: 26, column: 3, scope: !112)
!112 = distinct !DILexicalBlock(scope: !72, file: !2, line: 26, column: 3)
!113 = !DILocation(line: 26, column: 3, scope: !114)
!114 = distinct !DILexicalBlock(scope: !115, file: !2, line: 26, column: 3)
!115 = distinct !DILexicalBlock(scope: !112, file: !2, line: 26, column: 3)
!116 = !DILocation(line: 26, column: 3, scope: !115)
!117 = !DILocation(line: 26, column: 3, scope: !118)
!118 = distinct !DILexicalBlock(scope: !112, file: !2, line: 26, column: 3)
!119 = !DILocation(line: 26, column: 3, scope: !120)
!120 = distinct !DILexicalBlock(scope: !72, file: !2, line: 26, column: 3)
!121 = !DILocation(line: 26, column: 3, scope: !122)
!122 = distinct !DILexicalBlock(scope: !72, file: !2, line: 26, column: 3)
!123 = !DILocation(line: 26, column: 3, scope: !124)
!124 = distinct !DILexicalBlock(scope: !72, file: !2, line: 26, column: 3)
!125 = !DILocation(line: 28, column: 9, scope: !126)
!126 = distinct !DILexicalBlock(scope: !65, file: !2, line: 28, column: 7)
!127 = !DILocation(line: 28, column: 14, scope: !126)
!128 = !DILocation(line: 31, column: 13, scope: !129)
!129 = distinct !DILexicalBlock(scope: !65, file: !2, line: 31, column: 7)
!130 = !DILocation(line: 31, column: 20, scope: !129)
!131 = !DILocation(line: 34, column: 13, scope: !132)
!132 = distinct !DILexicalBlock(scope: !65, file: !2, line: 34, column: 7)
!133 = !DILocation(line: 43, column: 12, scope: !75)
!134 = !DILocation(line: 43, column: 7, scope: !65)
!135 = !DILocation(line: 0, scope: !74)
!136 = !DILocation(line: 45, column: 19, scope: !137)
!137 = distinct !DILexicalBlock(scope: !138, file: !2, line: 45, column: 5)
!138 = distinct !DILexicalBlock(scope: !74, file: !2, line: 45, column: 5)
!139 = !DILocation(line: 45, column: 5, scope: !138)
!140 = !DILocation(line: 44, column: 16, scope: !74)
!141 = !DILocation(line: 46, column: 7, scope: !142)
!142 = distinct !DILexicalBlock(scope: !137, file: !2, line: 45, column: 32)
!143 = !DILocation(line: 46, column: 13, scope: !142)
!144 = !{!145, !145, i64 0}
!145 = !{!"float", !146, i64 0}
!146 = !{!"omnipotent char", !147, i64 0}
!147 = !{!"Simple C/C++ TBAA"}
!148 = !DILocation(line: 47, column: 10, scope: !142)
!149 = distinct !{!149, !139, !150, !151}
!150 = !DILocation(line: 48, column: 5, scope: !138)
!151 = !{!"llvm.loop.mustprogress"}
!152 = !DILocation(line: 49, column: 19, scope: !78)
!153 = !DILocation(line: 0, scope: !77)
!154 = !DILocation(line: 49, column: 14, scope: !75)
!155 = !DILocation(line: 50, column: 16, scope: !77)
!156 = !DILocation(line: 51, column: 5, scope: !157)
!157 = distinct !DILexicalBlock(scope: !77, file: !2, line: 51, column: 5)
!158 = !DILocation(line: 52, column: 7, scope: !159)
!159 = distinct !DILexicalBlock(scope: !160, file: !2, line: 51, column: 32)
!160 = distinct !DILexicalBlock(scope: !157, file: !2, line: 51, column: 5)
!161 = !DILocation(line: 52, column: 13, scope: !159)
!162 = !DILocation(line: 53, column: 10, scope: !159)
!163 = distinct !{!163, !156, !164, !151}
!164 = !DILocation(line: 54, column: 5, scope: !157)
!165 = distinct !{!165, !166}
!166 = !{!"llvm.loop.unroll.disable"}
!167 = distinct !{!167, !166}
!168 = !DILocation(line: 57, column: 7, scope: !65)
!169 = !DILocation(line: 60, column: 31, scope: !81)
!170 = !DILocation(line: 61, column: 17, scope: !81)
!171 = !DILocation(line: 61, column: 34, scope: !81)
!172 = !DILocation(line: 0, scope: !80)
!173 = !DILocation(line: 64, column: 19, scope: !84)
!174 = !DILocation(line: 64, column: 5, scope: !85)
!175 = !DILocation(line: 63, column: 16, scope: !80)
!176 = !DILocation(line: 0, scope: !83)
!177 = !DILocation(line: 67, column: 7, scope: !178)
!178 = distinct !DILexicalBlock(scope: !83, file: !2, line: 67, column: 7)
!179 = !DILocation(line: 68, column: 17, scope: !180)
!180 = distinct !DILexicalBlock(scope: !181, file: !2, line: 67, column: 34)
!181 = distinct !DILexicalBlock(scope: !178, file: !2, line: 67, column: 7)
!182 = !DILocation(line: 68, column: 25, scope: !180)
!183 = !DILocation(line: 68, column: 23, scope: !180)
!184 = !DILocation(line: 68, column: 14, scope: !180)
!185 = !DILocation(line: 69, column: 12, scope: !180)
!186 = !DILocation(line: 67, column: 30, scope: !181)
!187 = distinct !{!187, !177, !188, !151}
!188 = !DILocation(line: 70, column: 7, scope: !178)
!189 = distinct !{!189, !166}
!190 = !DILocation(line: 71, column: 22, scope: !83)
!191 = !DILocation(line: 71, column: 7, scope: !83)
!192 = !DILocation(line: 71, column: 13, scope: !83)
!193 = !DILocation(line: 72, column: 10, scope: !83)
!194 = !DILocation(line: 64, column: 28, scope: !84)
!195 = distinct !{!195, !174, !196, !151}
!196 = !DILocation(line: 73, column: 5, scope: !85)
!197 = !DILocation(line: 74, column: 38, scope: !89)
!198 = !DILocation(line: 0, scope: !88)
!199 = !DILocation(line: 78, column: 19, scope: !92)
!200 = !DILocation(line: 78, column: 5, scope: !93)
!201 = !DILocation(line: 77, column: 16, scope: !88)
!202 = !DILocation(line: 79, column: 33, scope: !91)
!203 = !DILocation(line: 79, column: 31, scope: !91)
!204 = !DILocation(line: 0, scope: !91)
!205 = !DILocation(line: 80, column: 16, scope: !96)
!206 = !DILocation(line: 80, column: 11, scope: !91)
!207 = !DILocation(line: 82, column: 9, scope: !208)
!208 = distinct !DILexicalBlock(scope: !95, file: !2, line: 82, column: 9)
!209 = !DILocation(line: 0, scope: !95)
!210 = !DILocation(line: 83, column: 27, scope: !211)
!211 = distinct !DILexicalBlock(scope: !212, file: !2, line: 82, column: 36)
!212 = distinct !DILexicalBlock(scope: !208, file: !2, line: 82, column: 9)
!213 = !DILocation(line: 83, column: 25, scope: !211)
!214 = !DILocation(line: 83, column: 11, scope: !211)
!215 = !DILocation(line: 83, column: 17, scope: !211)
!216 = !DILocation(line: 84, column: 14, scope: !211)
!217 = !DILocation(line: 82, column: 32, scope: !212)
!218 = distinct !{!218, !207, !219, !151}
!219 = !DILocation(line: 85, column: 9, scope: !208)
!220 = !DILocation(line: 87, column: 10, scope: !91)
!221 = !DILocation(line: 78, column: 28, scope: !92)
!222 = distinct !{!222, !200, !223, !151}
!223 = !DILocation(line: 88, column: 5, scope: !93)
!224 = !DILocation(line: 90, column: 5, scope: !225)
!225 = distinct !DILexicalBlock(scope: !89, file: !2, line: 89, column: 10)
!226 = !DILocation(line: 15, column: 1, scope: !227)
!227 = !DILexicalBlockFile(scope: !40, file: !18, discriminator: 0)
!228 = !DISubprogram(name: "cblas_xerbla", scope: !21, file: !21, line: 602, type: !229, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!229 = !DISubroutineType(types: !230)
!230 = !{null, !46, !231, !231, null}
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
