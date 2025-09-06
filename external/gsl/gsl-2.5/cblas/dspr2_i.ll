; ModuleID = 'dspr2.ll'
source_filename = "dspr2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"./source_spr2.h\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !7
@.str.2 = private unnamed_addr constant [23 x i8] c"unrecognized operation\00", align 1, !dbg !12

; Function Attrs: nounwind uwtable
define dso_local void @cblas_dspr2(i32 noundef %0, i32 noundef %1, i32 noundef %2, double noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5, ptr nocapture noundef readonly %6, i32 noundef %7, ptr nocapture noundef %8) local_unnamed_addr #0 !dbg !39 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !51, metadata !DIExpression()), !dbg !88
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !52, metadata !DIExpression()), !dbg !88
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !53, metadata !DIExpression()), !dbg !88
  tail call void @llvm.dbg.value(metadata double %3, metadata !54, metadata !DIExpression()), !dbg !88
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !55, metadata !DIExpression()), !dbg !88
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !56, metadata !DIExpression()), !dbg !88
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !57, metadata !DIExpression()), !dbg !88
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !58, metadata !DIExpression()), !dbg !88
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !59, metadata !DIExpression()), !dbg !88
  tail call void @llvm.dbg.value(metadata i32 0, metadata !64, metadata !DIExpression()), !dbg !89
  %10 = add i32 %0, -103, !dbg !90
  %11 = icmp ult i32 %10, -2, !dbg !90
  %12 = zext i1 %11 to i32, !dbg !90
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !64, metadata !DIExpression()), !dbg !89
  %13 = add i32 %1, -123, !dbg !92
  %14 = icmp ult i32 %13, -2, !dbg !92
  %15 = select i1 %14, i32 2, i32 %12, !dbg !92
  tail call void @llvm.dbg.value(metadata i32 %15, metadata !64, metadata !DIExpression()), !dbg !89
  %16 = icmp slt i32 %2, 0, !dbg !94
  %17 = select i1 %16, i32 3, i32 %15, !dbg !96
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !64, metadata !DIExpression()), !dbg !89
  %18 = icmp eq i32 %5, 0, !dbg !97
  %19 = select i1 %18, i32 6, i32 %17, !dbg !96
  tail call void @llvm.dbg.value(metadata i32 %19, metadata !64, metadata !DIExpression()), !dbg !89
  %20 = icmp eq i32 %7, 0, !dbg !99
  %21 = select i1 %20, i32 8, i32 %19, !dbg !96
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !64, metadata !DIExpression()), !dbg !89
  %22 = icmp eq i32 %21, 0, !dbg !101
  br i1 %22, label %24, label %23, !dbg !96

23:                                               ; preds = %9
  tail call void (i32, ptr, ptr, ...) @cblas_xerbla(i32 noundef %21, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #3, !dbg !101
  br label %24, !dbg !101

24:                                               ; preds = %23, %9
  %25 = icmp eq i32 %2, 0, !dbg !103
  %26 = fcmp oeq double %3, 0.000000e+00
  %27 = or i1 %25, %26, !dbg !105
  br i1 %27, label %183, label %28, !dbg !105

28:                                               ; preds = %24
  %29 = icmp eq i32 %0, 101, !dbg !106
  %30 = icmp eq i32 %1, 121
  %31 = and i1 %29, %30, !dbg !107
  br i1 %31, label %36, label %32, !dbg !107

32:                                               ; preds = %28
  %33 = icmp eq i32 %0, 102, !dbg !108
  %34 = icmp eq i32 %1, 122
  %35 = and i1 %33, %34, !dbg !109
  br i1 %35, label %36, label %94, !dbg !109

36:                                               ; preds = %32, %28
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !66, metadata !DIExpression()), !dbg !110
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !69, metadata !DIExpression()), !dbg !110
  tail call void @llvm.dbg.value(metadata i32 0, metadata !60, metadata !DIExpression()), !dbg !111
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !66, metadata !DIExpression()), !dbg !110
  %37 = icmp sgt i32 %2, 0, !dbg !112
  br i1 %37, label %38, label %183, !dbg !113

38:                                               ; preds = %36
  %39 = icmp sgt i32 %7, 0, !dbg !114
  %40 = sub nsw i32 1, %2, !dbg !115
  %41 = mul i32 %40, %7, !dbg !114
  %42 = select i1 %39, i32 0, i32 %41, !dbg !114
  tail call void @llvm.dbg.value(metadata i32 %42, metadata !69, metadata !DIExpression()), !dbg !110
  %43 = icmp sgt i32 %5, 0, !dbg !115
  %44 = mul i32 %40, %5, !dbg !115
  %45 = select i1 %43, i32 0, i32 %44, !dbg !115
  tail call void @llvm.dbg.value(metadata i32 %45, metadata !66, metadata !DIExpression()), !dbg !110
  %46 = shl nuw nsw i32 %2, 1
  %47 = or disjoint i32 %46, 1
  %48 = sext i32 %42 to i64, !dbg !113
  %49 = sext i32 %7 to i64, !dbg !113
  %50 = sext i32 %45 to i64, !dbg !113
  %51 = sext i32 %5 to i64, !dbg !113
  %52 = zext nneg i32 %2 to i64, !dbg !112
  br label %53, !dbg !113

53:                                               ; preds = %88, %38
  %54 = phi i64 [ %50, %38 ], [ %89, %88 ]
  %55 = phi i64 [ %48, %38 ], [ %90, %88 ]
  %56 = phi i64 [ 0, %38 ], [ %91, %88 ]
  %57 = phi i32 [ 0, %38 ], [ %92, %88 ]
  %58 = trunc i64 %56 to i32
  tail call void @llvm.dbg.value(metadata i32 %58, metadata !60, metadata !DIExpression()), !dbg !111
  tail call void @llvm.dbg.value(metadata i64 %55, metadata !69, metadata !DIExpression()), !dbg !110
  tail call void @llvm.dbg.value(metadata i64 %54, metadata !66, metadata !DIExpression()), !dbg !110
  %59 = getelementptr inbounds double, ptr %4, i64 %54, !dbg !116
  %60 = load double, ptr %59, align 8, !dbg !116, !tbaa !117
  %61 = fmul double %60, %3, !dbg !121
  tail call void @llvm.dbg.value(metadata double %61, metadata !70, metadata !DIExpression()), !dbg !122
  %62 = getelementptr inbounds double, ptr %6, i64 %55, !dbg !123
  %63 = load double, ptr %62, align 8, !dbg !123, !tbaa !117
  %64 = fmul double %63, %3, !dbg !124
  tail call void @llvm.dbg.value(metadata double %64, metadata !74, metadata !DIExpression()), !dbg !122
  tail call void @llvm.dbg.value(metadata i64 %54, metadata !75, metadata !DIExpression()), !dbg !122
  tail call void @llvm.dbg.value(metadata i64 %55, metadata !76, metadata !DIExpression()), !dbg !122
  tail call void @llvm.dbg.value(metadata i32 %58, metadata !63, metadata !DIExpression()), !dbg !111
  %65 = add i32 %47, %57
  %66 = mul nsw i32 %65, %58
  %67 = sdiv i32 %66, 2
  %68 = add i32 %67, %57
  br label %69, !dbg !125

69:                                               ; preds = %69, %53
  %70 = phi i64 [ %54, %53 ], [ %84, %69 ]
  %71 = phi i64 [ %55, %53 ], [ %85, %69 ]
  %72 = phi i64 [ %56, %53 ], [ %86, %69 ]
  tail call void @llvm.dbg.value(metadata i64 %72, metadata !63, metadata !DIExpression()), !dbg !111
  tail call void @llvm.dbg.value(metadata i64 %71, metadata !76, metadata !DIExpression()), !dbg !122
  tail call void @llvm.dbg.value(metadata i64 %70, metadata !75, metadata !DIExpression()), !dbg !122
  %73 = getelementptr inbounds double, ptr %6, i64 %71, !dbg !127
  %74 = load double, ptr %73, align 8, !dbg !127, !tbaa !117
  %75 = fmul double %61, %74, !dbg !130
  %76 = getelementptr inbounds double, ptr %4, i64 %70, !dbg !131
  %77 = load double, ptr %76, align 8, !dbg !131, !tbaa !117
  %78 = fmul double %64, %77, !dbg !132
  %handler_result = call double @fAddHandlerDouble(double %75, double %78), !dbg !133
  %79 = trunc i64 %72 to i32, !dbg !133
  %80 = add i32 %68, %79, !dbg !133
  %81 = sext i32 %80 to i64, !dbg !134
  %82 = getelementptr inbounds double, ptr %8, i64 %81, !dbg !134
  %83 = load double, ptr %82, align 8, !dbg !135, !tbaa !117
  %handler_result1 = call double @fAddHandlerDouble(double %83, double %handler_result), !dbg !135
  store double %handler_result1, ptr %82, align 8, !dbg !135, !tbaa !117
  %84 = add i64 %70, %51, !dbg !136
  tail call void @llvm.dbg.value(metadata i64 %84, metadata !75, metadata !DIExpression()), !dbg !122
  %85 = add i64 %71, %49, !dbg !137
  tail call void @llvm.dbg.value(metadata i64 %85, metadata !76, metadata !DIExpression()), !dbg !122
  %86 = add nuw nsw i64 %72, 1, !dbg !138
  tail call void @llvm.dbg.value(metadata i64 %86, metadata !63, metadata !DIExpression()), !dbg !111
  %87 = icmp eq i64 %86, %52, !dbg !139
  br i1 %87, label %88, label %69, !dbg !125, !llvm.loop !140

88:                                               ; preds = %69
  %89 = add i64 %54, %51, !dbg !143
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !66, metadata !DIExpression()), !dbg !110
  %90 = add i64 %55, %49, !dbg !144
  tail call void @llvm.dbg.value(metadata i64 %90, metadata !69, metadata !DIExpression()), !dbg !110
  %91 = add nuw nsw i64 %56, 1, !dbg !113
  tail call void @llvm.dbg.value(metadata i64 %91, metadata !60, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !111
  %92 = xor i32 %58, -1
  %93 = icmp eq i64 %91, %52, !dbg !112
  br i1 %93, label %183, label %53, !dbg !113, !llvm.loop !145

94:                                               ; preds = %32
  %95 = and i1 %29, %34, !dbg !147
  %96 = and i1 %33, %30
  %97 = or i1 %95, %96, !dbg !147
  br i1 %97, label %98, label %182, !dbg !147

98:                                               ; preds = %94
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !77, metadata !DIExpression()), !dbg !148
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !80, metadata !DIExpression()), !dbg !148
  tail call void @llvm.dbg.value(metadata i32 0, metadata !60, metadata !DIExpression()), !dbg !111
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !77, metadata !DIExpression()), !dbg !148
  %99 = icmp sgt i32 %2, 0, !dbg !149
  br i1 %99, label %100, label %183, !dbg !150

100:                                              ; preds = %98
  %101 = icmp sgt i32 %7, 0, !dbg !151
  %102 = sub nsw i32 1, %2, !dbg !152
  %103 = mul i32 %102, %7, !dbg !151
  %104 = select i1 %101, i32 0, i32 %103, !dbg !151
  tail call void @llvm.dbg.value(metadata i32 %104, metadata !80, metadata !DIExpression()), !dbg !148
  %105 = icmp sgt i32 %5, 0, !dbg !152
  %106 = mul i32 %102, %5, !dbg !152
  %107 = select i1 %105, i32 0, i32 %106, !dbg !152
  tail call void @llvm.dbg.value(metadata i32 %107, metadata !77, metadata !DIExpression()), !dbg !148
  %108 = sext i32 %104 to i64, !dbg !150
  %109 = sext i32 %7 to i64, !dbg !150
  %110 = sext i32 %107 to i64, !dbg !150
  %111 = sext i32 %5 to i64, !dbg !150
  br label %112, !dbg !150

112:                                              ; preds = %176, %100
  %113 = phi i64 [ 0, %100 ], [ %181, %176 ]
  %114 = phi i64 [ %110, %100 ], [ %177, %176 ]
  %115 = phi i64 [ %108, %100 ], [ %178, %176 ]
  %116 = phi i64 [ 1, %100 ], [ %179, %176 ]
  %117 = phi i32 [ 0, %100 ], [ %124, %176 ]
  tail call void @llvm.dbg.value(metadata i32 %117, metadata !60, metadata !DIExpression()), !dbg !111
  tail call void @llvm.dbg.value(metadata i64 %115, metadata !80, metadata !DIExpression()), !dbg !148
  tail call void @llvm.dbg.value(metadata i64 %114, metadata !77, metadata !DIExpression()), !dbg !148
  %118 = getelementptr inbounds double, ptr %4, i64 %114, !dbg !153
  %119 = load double, ptr %118, align 8, !dbg !153, !tbaa !117
  %120 = fmul double %119, %3, !dbg !154
  tail call void @llvm.dbg.value(metadata double %120, metadata !81, metadata !DIExpression()), !dbg !155
  %121 = getelementptr inbounds double, ptr %6, i64 %115, !dbg !156
  %122 = load double, ptr %121, align 8, !dbg !156, !tbaa !117
  %123 = fmul double %122, %3, !dbg !157
  tail call void @llvm.dbg.value(metadata double %123, metadata !85, metadata !DIExpression()), !dbg !155
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !86, metadata !DIExpression()), !dbg !155
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !87, metadata !DIExpression()), !dbg !155
  tail call void @llvm.dbg.value(metadata i32 0, metadata !63, metadata !DIExpression()), !dbg !111
  %124 = add nuw nsw i32 %117, 1
  %125 = mul nsw i32 %124, %117
  %126 = lshr i32 %125, 1
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !87, metadata !DIExpression()), !dbg !155
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !86, metadata !DIExpression()), !dbg !155
  tail call void @llvm.dbg.value(metadata i32 0, metadata !63, metadata !DIExpression()), !dbg !111
  %127 = zext nneg i32 %126 to i64, !dbg !158
  %128 = getelementptr double, ptr %8, i64 %127, !dbg !158
  %129 = and i64 %116, 1, !dbg !158
  %130 = icmp eq i64 %113, 0, !dbg !158
  br i1 %130, label %162, label %131, !dbg !158

131:                                              ; preds = %112
  %132 = and i64 %116, 9223372036854775806, !dbg !158
  br label %133, !dbg !158

133:                                              ; preds = %133, %131
  %134 = phi i64 [ 0, %131 ], [ %159, %133 ]
  %135 = phi i64 [ %110, %131 ], [ %157, %133 ]
  %136 = phi i64 [ %108, %131 ], [ %158, %133 ]
  %137 = phi i64 [ 0, %131 ], [ %160, %133 ]
  tail call void @llvm.dbg.value(metadata i64 %136, metadata !87, metadata !DIExpression()), !dbg !155
  tail call void @llvm.dbg.value(metadata i64 %135, metadata !86, metadata !DIExpression()), !dbg !155
  tail call void @llvm.dbg.value(metadata i64 %134, metadata !63, metadata !DIExpression()), !dbg !111
  %138 = getelementptr inbounds double, ptr %6, i64 %136, !dbg !160
  %139 = load double, ptr %138, align 8, !dbg !160, !tbaa !117
  %140 = fmul double %120, %139, !dbg !163
  %141 = getelementptr inbounds double, ptr %4, i64 %135, !dbg !164
  %142 = load double, ptr %141, align 8, !dbg !164, !tbaa !117
  %143 = fmul double %123, %142, !dbg !165
  %handler_result2 = call double @fAddHandlerDouble(double %140, double %143), !dbg !166
  %144 = getelementptr double, ptr %128, i64 %134, !dbg !166
  %145 = load double, ptr %144, align 8, !dbg !167, !tbaa !117
  %handler_result3 = call double @fAddHandlerDouble(double %145, double %handler_result2), !dbg !167
  store double %handler_result3, ptr %144, align 8, !dbg !167, !tbaa !117
  %146 = add i64 %135, %111, !dbg !168
  tail call void @llvm.dbg.value(metadata i64 %146, metadata !86, metadata !DIExpression()), !dbg !155
  %147 = add i64 %136, %109, !dbg !169
  tail call void @llvm.dbg.value(metadata i64 %147, metadata !87, metadata !DIExpression()), !dbg !155
  %148 = or disjoint i64 %134, 1, !dbg !170
  tail call void @llvm.dbg.value(metadata i64 %148, metadata !63, metadata !DIExpression()), !dbg !111
  tail call void @llvm.dbg.value(metadata i64 %147, metadata !87, metadata !DIExpression()), !dbg !155
  tail call void @llvm.dbg.value(metadata i64 %146, metadata !86, metadata !DIExpression()), !dbg !155
  tail call void @llvm.dbg.value(metadata i64 %148, metadata !63, metadata !DIExpression()), !dbg !111
  %149 = getelementptr inbounds double, ptr %6, i64 %147, !dbg !160
  %150 = load double, ptr %149, align 8, !dbg !160, !tbaa !117
  %151 = fmul double %120, %150, !dbg !163
  %152 = getelementptr inbounds double, ptr %4, i64 %146, !dbg !164
  %153 = load double, ptr %152, align 8, !dbg !164, !tbaa !117
  %154 = fmul double %123, %153, !dbg !165
  %handler_result4 = call double @fAddHandlerDouble(double %151, double %154), !dbg !166
  %155 = getelementptr double, ptr %128, i64 %148, !dbg !166
  %156 = load double, ptr %155, align 8, !dbg !167, !tbaa !117
  %handler_result5 = call double @fAddHandlerDouble(double %156, double %handler_result4), !dbg !167
  store double %handler_result5, ptr %155, align 8, !dbg !167, !tbaa !117
  %157 = add i64 %146, %111, !dbg !168
  tail call void @llvm.dbg.value(metadata i64 %157, metadata !86, metadata !DIExpression()), !dbg !155
  %158 = add i64 %147, %109, !dbg !169
  tail call void @llvm.dbg.value(metadata i64 %158, metadata !87, metadata !DIExpression()), !dbg !155
  %159 = add nuw nsw i64 %134, 2, !dbg !170
  tail call void @llvm.dbg.value(metadata i64 %159, metadata !63, metadata !DIExpression()), !dbg !111
  %160 = add i64 %137, 2, !dbg !158
  %161 = icmp eq i64 %160, %132, !dbg !158
  br i1 %161, label %162, label %133, !dbg !158, !llvm.loop !171

162:                                              ; preds = %133, %112
  %163 = phi i64 [ 0, %112 ], [ %159, %133 ]
  %164 = phi i64 [ %110, %112 ], [ %157, %133 ]
  %165 = phi i64 [ %108, %112 ], [ %158, %133 ]
  %166 = icmp eq i64 %129, 0, !dbg !158
  br i1 %166, label %176, label %167, !dbg !158

167:                                              ; preds = %162
  tail call void @llvm.dbg.value(metadata i64 %165, metadata !87, metadata !DIExpression()), !dbg !155
  tail call void @llvm.dbg.value(metadata i64 %164, metadata !86, metadata !DIExpression()), !dbg !155
  tail call void @llvm.dbg.value(metadata i64 %163, metadata !63, metadata !DIExpression()), !dbg !111
  %168 = getelementptr inbounds double, ptr %6, i64 %165, !dbg !160
  %169 = load double, ptr %168, align 8, !dbg !160, !tbaa !117
  %170 = fmul double %120, %169, !dbg !163
  %171 = getelementptr inbounds double, ptr %4, i64 %164, !dbg !164
  %172 = load double, ptr %171, align 8, !dbg !164, !tbaa !117
  %173 = fmul double %123, %172, !dbg !165
  %handler_result6 = call double @fAddHandlerDouble(double %170, double %173), !dbg !166
  %174 = getelementptr double, ptr %128, i64 %163, !dbg !166
  %175 = load double, ptr %174, align 8, !dbg !167, !tbaa !117
  %handler_result7 = call double @fAddHandlerDouble(double %175, double %handler_result6), !dbg !167
  store double %handler_result7, ptr %174, align 8, !dbg !167, !tbaa !117
  tail call void @llvm.dbg.value(metadata !DIArgList(i64 %164, i64 %111), metadata !86, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !155
  tail call void @llvm.dbg.value(metadata !DIArgList(i64 %165, i64 %109), metadata !87, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !155
  tail call void @llvm.dbg.value(metadata i64 %163, metadata !63, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !111
  br label %176, !dbg !173

176:                                              ; preds = %167, %162
  %177 = add i64 %114, %111, !dbg !173
  tail call void @llvm.dbg.value(metadata i64 %177, metadata !77, metadata !DIExpression()), !dbg !148
  %178 = add i64 %115, %109, !dbg !174
  tail call void @llvm.dbg.value(metadata i64 %178, metadata !80, metadata !DIExpression()), !dbg !148
  tail call void @llvm.dbg.value(metadata i32 %124, metadata !60, metadata !DIExpression()), !dbg !111
  %179 = add nuw nsw i64 %116, 1, !dbg !150
  %180 = icmp eq i32 %124, %2, !dbg !149
  %181 = add i64 %113, 1, !dbg !150
  br i1 %180, label %183, label %112, !dbg !150, !llvm.loop !175

182:                                              ; preds = %94
  tail call void (i32, ptr, ptr, ...) @cblas_xerbla(i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #3, !dbg !177
  br label %183

183:                                              ; preds = %182, %176, %98, %88, %36, %24
  ret void, !dbg !179
}

declare !dbg !181 void @cblas_xerbla(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

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
!2 = !DIFile(filename: "./source_spr2.h", directory: "/PI-detector/external/gsl/gsl-2.5/cblas", checksumkind: CSK_MD5, checksum: "e05a98230429f3fda8d2462f667cc40f")
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
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 66, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 23)
!17 = distinct !DICompileUnit(language: DW_LANG_C11, file: !18, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !19, globals: !30, splitDebugInlining: false, nameTableKind: None)
!18 = !DIFile(filename: "dspr2.c", directory: "/PI-detector/external/gsl/gsl-2.5/cblas", checksumkind: CSK_MD5, checksum: "5784c366734621a05d18732ea383da90")
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
!39 = distinct !DISubprogram(name: "cblas_dspr2", scope: !18, file: !18, line: 7, type: !40, scopeLine: 10, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !50)
!40 = !DISubroutineType(types: !41)
!41 = !{null, !42, !43, !44, !46, !48, !44, !48, !44, !49}
!42 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!43 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !26)
!44 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!45 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!46 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !47)
!47 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!50 = !{!51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !63, !64, !66, !69, !70, !74, !75, !76, !77, !80, !81, !85, !86, !87}
!51 = !DILocalVariable(name: "order", arg: 1, scope: !39, file: !18, line: 7, type: !42)
!52 = !DILocalVariable(name: "Uplo", arg: 2, scope: !39, file: !18, line: 7, type: !43)
!53 = !DILocalVariable(name: "N", arg: 3, scope: !39, file: !18, line: 8, type: !44)
!54 = !DILocalVariable(name: "alpha", arg: 4, scope: !39, file: !18, line: 8, type: !46)
!55 = !DILocalVariable(name: "X", arg: 5, scope: !39, file: !18, line: 8, type: !48)
!56 = !DILocalVariable(name: "incX", arg: 6, scope: !39, file: !18, line: 8, type: !44)
!57 = !DILocalVariable(name: "Y", arg: 7, scope: !39, file: !18, line: 9, type: !48)
!58 = !DILocalVariable(name: "incY", arg: 8, scope: !39, file: !18, line: 9, type: !44)
!59 = !DILocalVariable(name: "Ap", arg: 9, scope: !39, file: !18, line: 9, type: !49)
!60 = !DILocalVariable(name: "i", scope: !61, file: !2, line: 21, type: !45)
!61 = distinct !DILexicalBlock(scope: !62, file: !2, line: 20, column: 1)
!62 = !DILexicalBlockFile(scope: !39, file: !2, discriminator: 0)
!63 = !DILocalVariable(name: "j", scope: !61, file: !2, line: 21, type: !45)
!64 = !DILocalVariable(name: "pos", scope: !65, file: !2, line: 23, type: !45)
!65 = distinct !DILexicalBlock(scope: !61, file: !2, line: 23, column: 3)
!66 = !DILocalVariable(name: "ix", scope: !67, file: !2, line: 33, type: !45)
!67 = distinct !DILexicalBlock(scope: !68, file: !2, line: 32, column: 58)
!68 = distinct !DILexicalBlock(scope: !61, file: !2, line: 31, column: 7)
!69 = !DILocalVariable(name: "iy", scope: !67, file: !2, line: 34, type: !45)
!70 = !DILocalVariable(name: "tmp1", scope: !71, file: !2, line: 36, type: !46)
!71 = distinct !DILexicalBlock(scope: !72, file: !2, line: 35, column: 29)
!72 = distinct !DILexicalBlock(scope: !73, file: !2, line: 35, column: 5)
!73 = distinct !DILexicalBlock(scope: !67, file: !2, line: 35, column: 5)
!74 = !DILocalVariable(name: "tmp2", scope: !71, file: !2, line: 37, type: !46)
!75 = !DILocalVariable(name: "jx", scope: !71, file: !2, line: 38, type: !45)
!76 = !DILocalVariable(name: "jy", scope: !71, file: !2, line: 39, type: !45)
!77 = !DILocalVariable(name: "ix", scope: !78, file: !2, line: 50, type: !45)
!78 = distinct !DILexicalBlock(scope: !79, file: !2, line: 49, column: 65)
!79 = distinct !DILexicalBlock(scope: !68, file: !2, line: 48, column: 14)
!80 = !DILocalVariable(name: "iy", scope: !78, file: !2, line: 51, type: !45)
!81 = !DILocalVariable(name: "tmp1", scope: !82, file: !2, line: 53, type: !46)
!82 = distinct !DILexicalBlock(scope: !83, file: !2, line: 52, column: 29)
!83 = distinct !DILexicalBlock(scope: !84, file: !2, line: 52, column: 5)
!84 = distinct !DILexicalBlock(scope: !78, file: !2, line: 52, column: 5)
!85 = !DILocalVariable(name: "tmp2", scope: !82, file: !2, line: 54, type: !46)
!86 = !DILocalVariable(name: "jx", scope: !82, file: !2, line: 55, type: !45)
!87 = !DILocalVariable(name: "jy", scope: !82, file: !2, line: 56, type: !45)
!88 = !DILocation(line: 0, scope: !39)
!89 = !DILocation(line: 0, scope: !65)
!90 = !DILocation(line: 23, column: 3, scope: !91)
!91 = distinct !DILexicalBlock(scope: !65, file: !2, line: 23, column: 3)
!92 = !DILocation(line: 23, column: 3, scope: !93)
!93 = distinct !DILexicalBlock(scope: !65, file: !2, line: 23, column: 3)
!94 = !DILocation(line: 23, column: 3, scope: !95)
!95 = distinct !DILexicalBlock(scope: !65, file: !2, line: 23, column: 3)
!96 = !DILocation(line: 23, column: 3, scope: !65)
!97 = !DILocation(line: 23, column: 3, scope: !98)
!98 = distinct !DILexicalBlock(scope: !65, file: !2, line: 23, column: 3)
!99 = !DILocation(line: 23, column: 3, scope: !100)
!100 = distinct !DILexicalBlock(scope: !65, file: !2, line: 23, column: 3)
!101 = !DILocation(line: 23, column: 3, scope: !102)
!102 = distinct !DILexicalBlock(scope: !65, file: !2, line: 23, column: 3)
!103 = !DILocation(line: 25, column: 9, scope: !104)
!104 = distinct !DILexicalBlock(scope: !61, file: !2, line: 25, column: 7)
!105 = !DILocation(line: 25, column: 7, scope: !61)
!106 = !DILocation(line: 31, column: 14, scope: !68)
!107 = !DILocation(line: 31, column: 31, scope: !68)
!108 = !DILocation(line: 32, column: 17, scope: !68)
!109 = !DILocation(line: 32, column: 34, scope: !68)
!110 = !DILocation(line: 0, scope: !67)
!111 = !DILocation(line: 0, scope: !61)
!112 = !DILocation(line: 35, column: 19, scope: !72)
!113 = !DILocation(line: 35, column: 5, scope: !73)
!114 = !DILocation(line: 34, column: 16, scope: !67)
!115 = !DILocation(line: 33, column: 16, scope: !67)
!116 = !DILocation(line: 36, column: 33, scope: !71)
!117 = !{!118, !118, i64 0}
!118 = !{!"double", !119, i64 0}
!119 = !{!"omnipotent char", !120, i64 0}
!120 = !{!"Simple C/C++ TBAA"}
!121 = !DILocation(line: 36, column: 31, scope: !71)
!122 = !DILocation(line: 0, scope: !71)
!123 = !DILocation(line: 37, column: 33, scope: !71)
!124 = !DILocation(line: 37, column: 31, scope: !71)
!125 = !DILocation(line: 40, column: 7, scope: !126)
!126 = distinct !DILexicalBlock(scope: !71, file: !2, line: 40, column: 7)
!127 = !DILocation(line: 41, column: 37, scope: !128)
!128 = distinct !DILexicalBlock(scope: !129, file: !2, line: 40, column: 31)
!129 = distinct !DILexicalBlock(scope: !126, file: !2, line: 40, column: 7)
!130 = !DILocation(line: 41, column: 35, scope: !128)
!131 = !DILocation(line: 41, column: 52, scope: !128)
!132 = !DILocation(line: 41, column: 50, scope: !128)
!133 = !DILocation(line: 41, column: 12, scope: !128)
!134 = !DILocation(line: 41, column: 9, scope: !128)
!135 = !DILocation(line: 41, column: 27, scope: !128)
!136 = !DILocation(line: 42, column: 12, scope: !128)
!137 = !DILocation(line: 43, column: 12, scope: !128)
!138 = !DILocation(line: 40, column: 27, scope: !129)
!139 = !DILocation(line: 40, column: 21, scope: !129)
!140 = distinct !{!140, !125, !141, !142}
!141 = !DILocation(line: 44, column: 7, scope: !126)
!142 = !{!"llvm.loop.mustprogress"}
!143 = !DILocation(line: 45, column: 10, scope: !71)
!144 = !DILocation(line: 46, column: 10, scope: !71)
!145 = distinct !{!145, !113, !146, !142}
!146 = !DILocation(line: 47, column: 5, scope: !73)
!147 = !DILocation(line: 48, column: 38, scope: !79)
!148 = !DILocation(line: 0, scope: !78)
!149 = !DILocation(line: 52, column: 19, scope: !83)
!150 = !DILocation(line: 52, column: 5, scope: !84)
!151 = !DILocation(line: 51, column: 16, scope: !78)
!152 = !DILocation(line: 50, column: 16, scope: !78)
!153 = !DILocation(line: 53, column: 33, scope: !82)
!154 = !DILocation(line: 53, column: 31, scope: !82)
!155 = !DILocation(line: 0, scope: !82)
!156 = !DILocation(line: 54, column: 33, scope: !82)
!157 = !DILocation(line: 54, column: 31, scope: !82)
!158 = !DILocation(line: 57, column: 7, scope: !159)
!159 = distinct !DILexicalBlock(scope: !82, file: !2, line: 57, column: 7)
!160 = !DILocation(line: 58, column: 37, scope: !161)
!161 = distinct !DILexicalBlock(scope: !162, file: !2, line: 57, column: 32)
!162 = distinct !DILexicalBlock(scope: !159, file: !2, line: 57, column: 7)
!163 = !DILocation(line: 58, column: 35, scope: !161)
!164 = !DILocation(line: 58, column: 52, scope: !161)
!165 = !DILocation(line: 58, column: 50, scope: !161)
!166 = !DILocation(line: 58, column: 9, scope: !161)
!167 = !DILocation(line: 58, column: 27, scope: !161)
!168 = !DILocation(line: 59, column: 12, scope: !161)
!169 = !DILocation(line: 60, column: 12, scope: !161)
!170 = !DILocation(line: 57, column: 28, scope: !162)
!171 = distinct !{!171, !158, !172, !142}
!172 = !DILocation(line: 61, column: 7, scope: !159)
!173 = !DILocation(line: 62, column: 10, scope: !82)
!174 = !DILocation(line: 63, column: 10, scope: !82)
!175 = distinct !{!175, !150, !176, !142}
!176 = !DILocation(line: 64, column: 5, scope: !84)
!177 = !DILocation(line: 66, column: 5, scope: !178)
!178 = distinct !DILexicalBlock(scope: !79, file: !2, line: 65, column: 10)
!179 = !DILocation(line: 14, column: 1, scope: !180)
!180 = !DILexicalBlockFile(scope: !39, file: !18, discriminator: 0)
!181 = !DISubprogram(name: "cblas_xerbla", scope: !21, file: !21, line: 602, type: !182, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!182 = !DISubroutineType(types: !183)
!183 = !{null, !45, !184, !184, null}
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
