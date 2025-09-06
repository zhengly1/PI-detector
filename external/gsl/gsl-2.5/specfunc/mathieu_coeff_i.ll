; ModuleID = 'mathieu_coeff.ll'
source_filename = "mathieu_coeff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef i32 @gsl_sf_mathieu_a_coeff(i32 noundef %0, double noundef %1, double noundef %2, ptr nocapture noundef %3) local_unnamed_addr #0 !dbg !50 {
  %5 = alloca [100 x double], align 16, !DIAssignID !79
  call void @llvm.dbg.assign(metadata i1 undef, metadata !75, metadata !DIExpression(), metadata !79, metadata ptr %5, metadata !DIExpression()), !dbg !80
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !56, metadata !DIExpression()), !dbg !80
  tail call void @llvm.dbg.value(metadata double %1, metadata !57, metadata !DIExpression()), !dbg !80
  tail call void @llvm.dbg.value(metadata double %2, metadata !58, metadata !DIExpression()), !dbg !80
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !59, metadata !DIExpression()), !dbg !80
  call void @llvm.lifetime.start.p0(i64 800, ptr nonnull %5) #4, !dbg !81
  tail call void @llvm.dbg.value(metadata double 0x3D06849B86A12B9B, metadata !64, metadata !DIExpression()), !dbg !80
  store double 1.000000e+00, ptr %3, align 8, !dbg !82, !tbaa !83
  tail call void @llvm.dbg.value(metadata i32 0, metadata !63, metadata !DIExpression()), !dbg !80
  %6 = and i32 %0, 1, !dbg !87
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !63, metadata !DIExpression()), !dbg !80
  %7 = icmp sgt i32 %0, 100, !dbg !89
  br i1 %7, label %598, label %8, !dbg !91

8:                                                ; preds = %4
  %9 = fcmp oeq double %1, 0.000000e+00, !dbg !92
  br i1 %9, label %10, label %14, !dbg !94

10:                                               ; preds = %8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(800) %3, i8 0, i64 800, i1 false), !dbg !95, !tbaa !83
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !62, metadata !DIExpression()), !dbg !80
  %11 = sdiv i32 %0, 2, !dbg !99
  %12 = sext i32 %11 to i64, !dbg !100
  %13 = getelementptr inbounds double, ptr %3, i64 %12, !dbg !100
  store double 1.000000e+00, ptr %13, align 8, !dbg !101, !tbaa !83
  br label %598, !dbg !102

14:                                               ; preds = %8
  %15 = icmp slt i32 %0, 5, !dbg !103
  %16 = icmp eq i32 %6, 0, !dbg !105
  br i1 %15, label %17, label %22, !dbg !106

17:                                               ; preds = %14
  tail call void @llvm.dbg.value(metadata i32 0, metadata !61, metadata !DIExpression()), !dbg !80
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !73, metadata !DIExpression()), !dbg !80
  br i1 %16, label %18, label %20, !dbg !107

18:                                               ; preds = %17
  %19 = fdiv double %2, %1, !dbg !109
  tail call void @llvm.dbg.value(metadata double %19, metadata !74, metadata !DIExpression()), !dbg !80
  br label %158, !dbg !111

20:                                               ; preds = %17
  %handler_result = call double @fAddHandlerDouble(double %2, double -1.000000e+00), !dbg !112
  %handler_result1 = call double @fSubHandlerDouble(double %handler_result, double %1), !dbg !113
  %21 = fdiv double %handler_result1, %1, !dbg !113
  tail call void @llvm.dbg.value(metadata double %21, metadata !74, metadata !DIExpression()), !dbg !80
  br label %158

22:                                               ; preds = %14
  br i1 %16, label %23, label %69, !dbg !114

23:                                               ; preds = %22
  %24 = fdiv double %2, %1, !dbg !116
  %25 = getelementptr inbounds double, ptr %3, i64 1, !dbg !119
  store double %24, ptr %25, align 8, !dbg !120, !tbaa !83
  %handler_result2 = call double @fAddHandlerDouble(double %2, double -4.000000e+00), !dbg !121
  %26 = fdiv double %handler_result2, %1, !dbg !121
  %27 = fmul double %24, %26, !dbg !122
  %handler_result3 = call double @fAddHandlerDouble(double %27, double -2.000000e+00), !dbg !123
  %28 = getelementptr inbounds double, ptr %3, i64 2, !dbg !123
  store double %handler_result3, ptr %28, align 8, !dbg !124, !tbaa !83
  %handler_result4 = call double @fAddHandlerDouble(double %24, double 1.000000e+00), !dbg !125
  %handler_result5 = call double @fAddHandlerDouble(double %handler_result4, double %handler_result3), !dbg !126
  tail call void @llvm.dbg.value(metadata double %handler_result5, metadata !73, metadata !DIExpression()), !dbg !80
  tail call void @llvm.dbg.value(metadata i32 3, metadata !62, metadata !DIExpression()), !dbg !80
  tail call void @llvm.dbg.value(metadata double %handler_result5, metadata !73, metadata !DIExpression()), !dbg !80
  tail call void @llvm.dbg.value(metadata i32 3, metadata !62, metadata !DIExpression()), !dbg !80
  %29 = icmp eq i32 %0, 5, !dbg !126
  br i1 %29, label %146, label %30, !dbg !129

30:                                               ; preds = %23
  %31 = lshr exact i32 %0, 1
  %32 = add nuw nsw i32 %31, 1, !dbg !129
  %33 = lshr exact i32 %0, 1, !dbg !129
  %34 = zext nneg i32 %33 to i64, !dbg !129
  %35 = and i64 %34, 1, !dbg !129
  %36 = icmp eq i32 %0, 6, !dbg !129
  br i1 %36, label %112, label %37, !dbg !129

37:                                               ; preds = %30
  %38 = and i64 %34, 1073741822, !dbg !129
  %39 = add nsw i64 %38, -4
  br label %40, !dbg !129

40:                                               ; preds = %40, %37
  %41 = phi double [ %handler_result3, %37 ], [ %handler_result10, %40 ], !dbg !130
  %42 = phi i64 [ 3, %37 ], [ %66, %40 ]
  %43 = phi double [ %handler_result5, %37 ], [ %handler_result11, %40 ]
  %44 = phi i64 [ 0, %37 ], [ %67, %40 ]
  tail call void @llvm.dbg.value(metadata double %43, metadata !73, metadata !DIExpression()), !dbg !80
  tail call void @llvm.dbg.value(metadata i64 %42, metadata !62, metadata !DIExpression()), !dbg !80
  %45 = trunc i64 %42 to i32, !dbg !132
  %46 = add nsw i32 %45, -1, !dbg !132
  %47 = shl nsw i32 %46, 2, !dbg !132
  %48 = mul nsw i32 %47, %46, !dbg !133
  %49 = sitofp i32 %48 to double, !dbg !134
  %handler_result6 = call double @fSubHandlerDouble(double %2, double %49), !dbg !135
  %50 = fdiv double %handler_result6, %1, !dbg !135
  %51 = fmul double %50, %41, !dbg !136
  %52 = getelementptr double, ptr %3, i64 %42, !dbg !137
  %53 = getelementptr double, ptr %52, i64 -2, !dbg !137
  %54 = load double, ptr %53, align 8, !dbg !137, !tbaa !83
  %handler_result7 = call double @fSubHandlerDouble(double %51, double %54), !dbg !138
  store double %handler_result7, ptr %52, align 8, !dbg !138, !tbaa !83
  %handler_result8 = call double @fAddHandlerDouble(double %43, double %handler_result7), !dbg !139
  tail call void @llvm.dbg.value(metadata double %handler_result8, metadata !73, metadata !DIExpression()), !dbg !80
  %55 = add nuw nsw i64 %42, 1, !dbg !139
  tail call void @llvm.dbg.value(metadata i64 %55, metadata !62, metadata !DIExpression()), !dbg !80
  tail call void @llvm.dbg.value(metadata double %handler_result8, metadata !73, metadata !DIExpression()), !dbg !80
  tail call void @llvm.dbg.value(metadata i64 %55, metadata !62, metadata !DIExpression()), !dbg !80
  %56 = trunc i64 %55 to i32, !dbg !132
  %57 = add i32 %56, -1, !dbg !132
  %58 = shl nsw i32 %57, 2, !dbg !132
  %59 = mul nsw i32 %58, %57, !dbg !133
  %60 = sitofp i32 %59 to double, !dbg !134
  %handler_result9 = call double @fSubHandlerDouble(double %2, double %60), !dbg !135
  %61 = fdiv double %handler_result9, %1, !dbg !135
  %62 = fmul double %61, %handler_result7, !dbg !136
  %63 = getelementptr double, ptr %3, i64 %55, !dbg !137
  %64 = getelementptr double, ptr %63, i64 -2, !dbg !137
  %65 = load double, ptr %64, align 8, !dbg !137, !tbaa !83
  %handler_result10 = call double @fSubHandlerDouble(double %62, double %65), !dbg !138
  store double %handler_result10, ptr %63, align 8, !dbg !138, !tbaa !83
  %handler_result11 = call double @fAddHandlerDouble(double %handler_result8, double %handler_result10), !dbg !139
  tail call void @llvm.dbg.value(metadata double %handler_result11, metadata !73, metadata !DIExpression()), !dbg !80
  %66 = add nuw nsw i64 %42, 2, !dbg !139
  tail call void @llvm.dbg.value(metadata i64 %66, metadata !62, metadata !DIExpression()), !dbg !80
  %67 = add i64 %44, 2, !dbg !129
  %68 = icmp eq i64 %44, %39, !dbg !129
  br i1 %68, label %112, label %40, !dbg !129, !llvm.loop !140

69:                                               ; preds = %22
  %handler_result12 = call double @fAddHandlerDouble(double %2, double -1.000000e+00), !dbg !143
  %70 = fdiv double %handler_result12, %1, !dbg !143
  %handler_result13 = call double @fAddHandlerDouble(double %70, double -1.000000e+00), !dbg !145
  %71 = getelementptr inbounds double, ptr %3, i64 1, !dbg !145
  store double %handler_result13, ptr %71, align 8, !dbg !146, !tbaa !83
  tail call void @llvm.dbg.value(metadata double poison, metadata !73, metadata !DIExpression()), !dbg !80
  tail call void @llvm.dbg.value(metadata i32 2, metadata !62, metadata !DIExpression()), !dbg !80
  %72 = lshr i32 %0, 1
  %handler_result14 = call double @fAddHandlerDouble(double %handler_result13, double 1.000000e+00), !dbg !147
  tail call void @llvm.dbg.value(metadata double %handler_result14, metadata !73, metadata !DIExpression()), !dbg !80
  %73 = add nuw nsw i32 %72, 1, !dbg !147
  %74 = getelementptr i8, ptr %3, i64 8, !dbg !147
  %75 = load double, ptr %74, align 8
  %76 = lshr i32 %0, 1, !dbg !147
  %77 = zext nneg i32 %76 to i64, !dbg !147
  %78 = add nsw i64 %77, -1, !dbg !147
  %79 = and i64 %78, 1, !dbg !147
  %80 = icmp eq i32 %76, 2, !dbg !147
  br i1 %80, label %129, label %81, !dbg !147

81:                                               ; preds = %69
  %82 = and i64 %78, -2, !dbg !147
  br label %83, !dbg !147

83:                                               ; preds = %83, %81
  %84 = phi double [ %75, %81 ], [ %handler_result19, %83 ]
  %85 = phi i64 [ 2, %81 ], [ %109, %83 ]
  %86 = phi double [ %handler_result14, %81 ], [ %handler_result20, %83 ]
  %87 = phi i64 [ 0, %81 ], [ %110, %83 ]
  tail call void @llvm.dbg.value(metadata double %86, metadata !73, metadata !DIExpression()), !dbg !80
  tail call void @llvm.dbg.value(metadata i64 %85, metadata !62, metadata !DIExpression()), !dbg !80
  %88 = trunc i64 %85 to i32, !dbg !149
  %89 = shl i32 %88, 1, !dbg !149
  %90 = add i32 %89, -1, !dbg !149
  %91 = mul nsw i32 %90, %90, !dbg !149
  %92 = sitofp i32 %91 to double, !dbg !152
  %handler_result15 = call double @fSubHandlerDouble(double %2, double %92), !dbg !153
  %93 = fdiv double %handler_result15, %1, !dbg !153
  %94 = getelementptr double, ptr %3, i64 %85, !dbg !154
  %95 = fmul double %93, %84, !dbg !155
  %96 = getelementptr double, ptr %94, i64 -2, !dbg !156
  %97 = load double, ptr %96, align 8, !dbg !156, !tbaa !83
  %handler_result16 = call double @fSubHandlerDouble(double %95, double %97), !dbg !157
  store double %handler_result16, ptr %94, align 8, !dbg !157, !tbaa !83
  %handler_result17 = call double @fAddHandlerDouble(double %86, double %handler_result16), !dbg !158
  tail call void @llvm.dbg.value(metadata double %handler_result17, metadata !73, metadata !DIExpression()), !dbg !80
  %98 = or disjoint i64 %85, 1, !dbg !158
  tail call void @llvm.dbg.value(metadata i64 %98, metadata !62, metadata !DIExpression()), !dbg !80
  tail call void @llvm.dbg.value(metadata double %handler_result17, metadata !73, metadata !DIExpression()), !dbg !80
  tail call void @llvm.dbg.value(metadata i64 %98, metadata !62, metadata !DIExpression()), !dbg !80
  %99 = trunc i64 %98 to i32, !dbg !149
  %100 = shl i32 %99, 1, !dbg !149
  %101 = add nsw i32 %100, -1, !dbg !149
  %102 = mul nsw i32 %101, %101, !dbg !149
  %103 = sitofp i32 %102 to double, !dbg !152
  %handler_result18 = call double @fSubHandlerDouble(double %2, double %103), !dbg !153
  %104 = fdiv double %handler_result18, %1, !dbg !153
  %105 = getelementptr double, ptr %3, i64 %98, !dbg !154
  %106 = fmul double %104, %handler_result16, !dbg !155
  %107 = getelementptr double, ptr %105, i64 -2, !dbg !156
  %108 = load double, ptr %107, align 8, !dbg !156, !tbaa !83
  %handler_result19 = call double @fSubHandlerDouble(double %106, double %108), !dbg !157
  store double %handler_result19, ptr %105, align 8, !dbg !157, !tbaa !83
  %handler_result20 = call double @fAddHandlerDouble(double %handler_result17, double %handler_result19), !dbg !158
  tail call void @llvm.dbg.value(metadata double %handler_result20, metadata !73, metadata !DIExpression()), !dbg !80
  %109 = add nuw nsw i64 %85, 2, !dbg !158
  tail call void @llvm.dbg.value(metadata i64 %109, metadata !62, metadata !DIExpression()), !dbg !80
  %110 = add i64 %87, 2, !dbg !147
  %111 = icmp eq i64 %110, %82, !dbg !147
  br i1 %111, label %129, label %83, !dbg !147, !llvm.loop !159

112:                                              ; preds = %40, %30
  %113 = phi double [ undef, %30 ], [ %handler_result11, %40 ]
  %114 = phi double [ %handler_result3, %30 ], [ %handler_result10, %40 ]
  %115 = phi i64 [ 3, %30 ], [ %66, %40 ]
  %116 = phi double [ %handler_result5, %30 ], [ %handler_result11, %40 ]
  %117 = icmp eq i64 %35, 0, !dbg !129
  br i1 %117, label %146, label %118, !dbg !129

118:                                              ; preds = %112
  tail call void @llvm.dbg.value(metadata double %116, metadata !73, metadata !DIExpression()), !dbg !80
  tail call void @llvm.dbg.value(metadata i64 %115, metadata !62, metadata !DIExpression()), !dbg !80
  %119 = trunc i64 %115 to i32, !dbg !132
  %120 = add i32 %119, -1, !dbg !132
  %121 = shl nsw i32 %120, 2, !dbg !132
  %122 = mul nsw i32 %121, %120, !dbg !133
  %123 = sitofp i32 %122 to double, !dbg !134
  %handler_result21 = call double @fSubHandlerDouble(double %2, double %123), !dbg !135
  %124 = fdiv double %handler_result21, %1, !dbg !135
  %125 = fmul double %124, %114, !dbg !136
  %126 = getelementptr double, ptr %3, i64 %115, !dbg !137
  %127 = getelementptr double, ptr %126, i64 -2, !dbg !137
  %128 = load double, ptr %127, align 8, !dbg !137, !tbaa !83
  %handler_result22 = call double @fSubHandlerDouble(double %125, double %128), !dbg !138
  store double %handler_result22, ptr %126, align 8, !dbg !138, !tbaa !83
  %handler_result23 = call double @fAddHandlerDouble(double %116, double %handler_result22), !dbg !161
  tail call void @llvm.dbg.value(metadata double %handler_result23, metadata !73, metadata !DIExpression()), !dbg !80
  tail call void @llvm.dbg.value(metadata i64 %115, metadata !62, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !80
  br label %146, !dbg !161

129:                                              ; preds = %83, %69
  %130 = phi double [ undef, %69 ], [ %handler_result20, %83 ]
  %131 = phi double [ %75, %69 ], [ %handler_result19, %83 ]
  %132 = phi i64 [ 2, %69 ], [ %109, %83 ]
  %133 = phi double [ %handler_result14, %69 ], [ %handler_result20, %83 ]
  %134 = icmp eq i64 %79, 0, !dbg !147
  br i1 %134, label %146, label %135, !dbg !147

135:                                              ; preds = %129
  tail call void @llvm.dbg.value(metadata double %133, metadata !73, metadata !DIExpression()), !dbg !80
  tail call void @llvm.dbg.value(metadata i64 %132, metadata !62, metadata !DIExpression()), !dbg !80
  %136 = trunc i64 %132 to i32, !dbg !149
  %137 = shl i32 %136, 1, !dbg !149
  %138 = add i32 %137, -1, !dbg !149
  %139 = mul nsw i32 %138, %138, !dbg !149
  %140 = sitofp i32 %139 to double, !dbg !152
  %handler_result24 = call double @fSubHandlerDouble(double %2, double %140), !dbg !153
  %141 = fdiv double %handler_result24, %1, !dbg !153
  %142 = getelementptr double, ptr %3, i64 %132, !dbg !154
  %143 = fmul double %141, %131, !dbg !155
  %144 = getelementptr double, ptr %142, i64 -2, !dbg !156
  %145 = load double, ptr %144, align 8, !dbg !156, !tbaa !83
  %handler_result25 = call double @fSubHandlerDouble(double %143, double %145), !dbg !157
  store double %handler_result25, ptr %142, align 8, !dbg !157, !tbaa !83
  %handler_result26 = call double @fAddHandlerDouble(double %133, double %handler_result25), !dbg !161
  tail call void @llvm.dbg.value(metadata double %handler_result26, metadata !73, metadata !DIExpression()), !dbg !80
  tail call void @llvm.dbg.value(metadata i64 %132, metadata !62, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !80
  br label %146, !dbg !161

146:                                              ; preds = %135, %129, %118, %112, %23
  %147 = phi i32 [ 3, %23 ], [ %32, %112 ], [ %32, %118 ], [ %73, %129 ], [ %73, %135 ], !dbg !162
  %148 = phi double [ %handler_result5, %23 ], [ %113, %112 ], [ %handler_result23, %118 ], [ %130, %129 ], [ %handler_result26, %135 ], !dbg !162
  tail call void @llvm.dbg.value(metadata double %148, metadata !73, metadata !DIExpression()), !dbg !80
  tail call void @llvm.dbg.value(metadata i32 %147, metadata !62, metadata !DIExpression()), !dbg !80
  %149 = add nsw i32 %147, -1, !dbg !161
  tail call void @llvm.dbg.value(metadata i32 %149, metadata !61, metadata !DIExpression()), !dbg !80
  %150 = zext nneg i32 %149 to i64, !dbg !163
  %151 = getelementptr inbounds double, ptr %3, i64 %150, !dbg !163
  %152 = load double, ptr %151, align 8, !dbg !163, !tbaa !83
  %153 = zext nneg i32 %147 to i64, !dbg !164
  %154 = getelementptr double, ptr %3, i64 %153, !dbg !164
  %155 = getelementptr double, ptr %154, i64 -2, !dbg !164
  %156 = load double, ptr %155, align 8, !dbg !164, !tbaa !83
  %157 = fdiv double %152, %156, !dbg !165
  tail call void @llvm.dbg.value(metadata double %157, metadata !74, metadata !DIExpression()), !dbg !80
  br label %158

158:                                              ; preds = %146, %20, %18
  %159 = phi i32 [ 0, %18 ], [ 0, %20 ], [ %149, %146 ], !dbg !105
  %160 = phi double [ 0.000000e+00, %18 ], [ 0.000000e+00, %20 ], [ %148, %146 ], !dbg !105
  %161 = phi double [ %19, %18 ], [ %21, %20 ], [ %157, %146 ], !dbg !105
  tail call void @llvm.dbg.value(metadata double %161, metadata !74, metadata !DIExpression()), !dbg !80
  tail call void @llvm.dbg.value(metadata double %160, metadata !73, metadata !DIExpression()), !dbg !80
  tail call void @llvm.dbg.value(metadata i32 %159, metadata !61, metadata !DIExpression()), !dbg !80
  %162 = sub nsw i32 99, %159, !dbg !166
  tail call void @llvm.dbg.value(metadata i32 %162, metadata !60, metadata !DIExpression()), !dbg !80
  %163 = icmp eq i32 %6, 0, !dbg !167
  %164 = select i1 %163, double -4.000000e+04, double -4.040100e+04, !dbg !169
  %165 = fdiv double %1, %164, !dbg !169
  tail call void @llvm.dbg.value(metadata double %165, metadata !67, metadata !DIExpression()), !dbg !80
  tail call void @llvm.dbg.value(metadata double %161, metadata !65, metadata !DIExpression()), !dbg !80
  tail call void @llvm.dbg.value(metadata double %2, metadata !170, metadata !DIExpression()), !dbg !184
  tail call void @llvm.dbg.value(metadata double %1, metadata !175, metadata !DIExpression()), !dbg !184
  tail call void @llvm.dbg.value(metadata double %165, metadata !176, metadata !DIExpression()), !dbg !184
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !177, metadata !DIExpression()), !dbg !184
  tail call void @llvm.dbg.value(metadata ptr undef, metadata !178, metadata !DIExpression()), !dbg !184
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !179, metadata !DIExpression()), !dbg !184
  tail call void @llvm.dbg.value(metadata i32 %162, metadata !180, metadata !DIExpression()), !dbg !184
  tail call void @llvm.dbg.value(metadata double %161, metadata !183, metadata !DIExpression()), !dbg !184
  %166 = sext i32 %162 to i64, !dbg !186
  %167 = getelementptr inbounds double, ptr %5, i64 %166, !dbg !186
  store double %165, ptr %167, align 8, !dbg !187, !tbaa !83
  tail call void @llvm.dbg.value(metadata i32 0, metadata !181, metadata !DIExpression()), !dbg !184
  %168 = icmp slt i32 %159, 99, !dbg !188
  br i1 %163, label %185, label %169, !dbg !190

169:                                              ; preds = %158
  br i1 %168, label %172, label %170, !dbg !191

170:                                              ; preds = %169
  %171 = load double, ptr %5, align 16, !dbg !194, !tbaa !83
  %handler_result27 = call double @fSubHandlerDouble(double %171, double %161), !dbg !195
  tail call void @llvm.dbg.value(metadata double %handler_result27, metadata !65, metadata !DIExpression()), !dbg !80
  tail call void @llvm.dbg.value(metadata double %handler_result27, metadata !68, metadata !DIExpression()), !dbg !80
  tail call void @llvm.dbg.value(metadata double %161, metadata !66, metadata !DIExpression()), !dbg !80
  tail call void @llvm.dbg.value(metadata double %2, metadata !170, metadata !DIExpression()), !dbg !197
  tail call void @llvm.dbg.value(metadata double %1, metadata !175, metadata !DIExpression()), !dbg !197
  tail call void @llvm.dbg.value(metadata double %handler_result27, metadata !176, metadata !DIExpression()), !dbg !197
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !177, metadata !DIExpression()), !dbg !197
  tail call void @llvm.dbg.value(metadata ptr undef, metadata !178, metadata !DIExpression()), !dbg !197
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !179, metadata !DIExpression()), !dbg !197
  tail call void @llvm.dbg.value(metadata i32 %162, metadata !180, metadata !DIExpression()), !dbg !197
  tail call void @llvm.dbg.value(metadata double %161, metadata !183, metadata !DIExpression()), !dbg !197
  store double %handler_result27, ptr %167, align 8, !dbg !195, !tbaa !83
  tail call void @llvm.dbg.value(metadata i32 0, metadata !181, metadata !DIExpression()), !dbg !197
  br label %407, !dbg !198

172:                                              ; preds = %169
  %173 = zext nneg i32 %162 to i64, !dbg !199
  %174 = zext nneg i32 %159 to i64, !dbg !191
  %175 = shl nuw nsw i64 %174, 3, !dbg !191
  %176 = sub nsw i64 792, %175, !dbg !191
  %177 = getelementptr i8, ptr %5, i64 %176, !dbg !191
  %178 = load double, ptr %177, align 8
  %179 = and i64 %173, 1, !dbg !191
  %180 = icmp eq i32 %159, 98, !dbg !191
  br i1 %180, label %273, label %181, !dbg !191

181:                                              ; preds = %172
  %182 = and i64 %173, 2147483646, !dbg !191
  %183 = getelementptr double, ptr %5, i64 -1, !dbg !191
  %184 = getelementptr double, ptr %5, i64 -1, !dbg !191
  br label %247, !dbg !191

185:                                              ; preds = %158
  br i1 %168, label %188, label %186, !dbg !201

186:                                              ; preds = %185
  %187 = load double, ptr %5, align 16, !dbg !194, !tbaa !83
  %handler_result28 = call double @fSubHandlerDouble(double %187, double %161), !dbg !195
  tail call void @llvm.dbg.value(metadata double %handler_result28, metadata !65, metadata !DIExpression()), !dbg !80
  tail call void @llvm.dbg.value(metadata double %handler_result28, metadata !68, metadata !DIExpression()), !dbg !80
  tail call void @llvm.dbg.value(metadata double %161, metadata !66, metadata !DIExpression()), !dbg !80
  tail call void @llvm.dbg.value(metadata double %2, metadata !170, metadata !DIExpression()), !dbg !197
  tail call void @llvm.dbg.value(metadata double %1, metadata !175, metadata !DIExpression()), !dbg !197
  tail call void @llvm.dbg.value(metadata double %handler_result28, metadata !176, metadata !DIExpression()), !dbg !197
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !177, metadata !DIExpression()), !dbg !197
  tail call void @llvm.dbg.value(metadata ptr undef, metadata !178, metadata !DIExpression()), !dbg !197
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !179, metadata !DIExpression()), !dbg !197
  tail call void @llvm.dbg.value(metadata i32 %162, metadata !180, metadata !DIExpression()), !dbg !197
  tail call void @llvm.dbg.value(metadata double %161, metadata !183, metadata !DIExpression()), !dbg !197
  store double %handler_result28, ptr %167, align 8, !dbg !195, !tbaa !83
  tail call void @llvm.dbg.value(metadata i32 0, metadata !181, metadata !DIExpression()), !dbg !197
  br label %407, !dbg !204

188:                                              ; preds = %185
  %189 = zext nneg i32 %162 to i64, !dbg !205
  %190 = zext nneg i32 %159 to i64, !dbg !201
  %191 = shl nuw nsw i64 %190, 3, !dbg !201
  %192 = sub nsw i64 792, %191, !dbg !201
  %193 = getelementptr i8, ptr %5, i64 %192, !dbg !201
  %194 = load double, ptr %193, align 8
  %195 = and i64 %189, 1, !dbg !201
  %196 = icmp eq i32 %159, 98, !dbg !201
  br i1 %196, label %227, label %197, !dbg !201

197:                                              ; preds = %188
  %198 = and i64 %189, 2147483646, !dbg !201
  %199 = getelementptr double, ptr %5, i64 -1, !dbg !201
  %200 = getelementptr double, ptr %5, i64 -1, !dbg !201
  br label %201, !dbg !201

201:                                              ; preds = %201, %197
  %202 = phi double [ %194, %197 ], [ %222, %201 ]
  %203 = phi i64 [ 0, %197 ], [ %224, %201 ]
  %204 = phi i64 [ 0, %197 ], [ %225, %201 ]
  tail call void @llvm.dbg.value(metadata i64 %203, metadata !181, metadata !DIExpression()), !dbg !184
  tail call void @llvm.dbg.value(metadata !DIArgList(i64 99, i64 %203), metadata !182, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !184
  %205 = trunc i64 %203 to i32, !dbg !207
  %206 = sub i32 99, %205, !dbg !207
  %207 = shl nsw i32 %206, 2, !dbg !207
  %208 = mul nsw i32 %207, %206, !dbg !209
  %209 = sitofp i32 %208 to double, !dbg !210
  %handler_result29 = call double @fSubHandlerDouble(double %209, double %2), !dbg !211
  %210 = fdiv double %handler_result29, %1, !dbg !211
  %211 = sub nsw i64 %166, %203, !dbg !212
  %handler_result30 = call double @fAddHandlerDouble(double %202, double %210), !dbg !213
  %212 = fdiv double -1.000000e+00, %handler_result30, !dbg !213
  %213 = getelementptr double, ptr %199, i64 %211, !dbg !214
  store double %212, ptr %213, align 8, !dbg !215, !tbaa !83
  %214 = or disjoint i64 %203, 1, !dbg !216
  tail call void @llvm.dbg.value(metadata i64 %214, metadata !181, metadata !DIExpression()), !dbg !184
  tail call void @llvm.dbg.value(metadata i64 %214, metadata !181, metadata !DIExpression()), !dbg !184
  tail call void @llvm.dbg.value(metadata !DIArgList(i64 99, i64 %214), metadata !182, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !184
  %215 = trunc i64 %214 to i32, !dbg !207
  %216 = sub i32 99, %215, !dbg !207
  %217 = shl nsw i32 %216, 2, !dbg !207
  %218 = mul nsw i32 %217, %216, !dbg !209
  %219 = sitofp i32 %218 to double, !dbg !210
  %handler_result31 = call double @fSubHandlerDouble(double %219, double %2), !dbg !211
  %220 = fdiv double %handler_result31, %1, !dbg !211
  %221 = sub nsw i64 %166, %214, !dbg !212
  %handler_result32 = call double @fAddHandlerDouble(double %212, double %220), !dbg !213
  %222 = fdiv double -1.000000e+00, %handler_result32, !dbg !213
  %223 = getelementptr double, ptr %200, i64 %221, !dbg !214
  store double %222, ptr %223, align 8, !dbg !215, !tbaa !83
  %224 = add nuw nsw i64 %203, 2, !dbg !216
  tail call void @llvm.dbg.value(metadata i64 %224, metadata !181, metadata !DIExpression()), !dbg !184
  %225 = add i64 %204, 2, !dbg !201
  %226 = icmp eq i64 %225, %198, !dbg !201
  br i1 %226, label %227, label %201, !dbg !201, !llvm.loop !217

227:                                              ; preds = %201, %188
  %228 = phi double [ %194, %188 ], [ %222, %201 ]
  %229 = phi i64 [ 0, %188 ], [ %224, %201 ]
  %230 = icmp eq i64 %195, 0, !dbg !201
  br i1 %230, label %242, label %231, !dbg !201

231:                                              ; preds = %227
  tail call void @llvm.dbg.value(metadata i64 %229, metadata !181, metadata !DIExpression()), !dbg !184
  tail call void @llvm.dbg.value(metadata !DIArgList(i64 99, i64 %229), metadata !182, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !184
  %232 = trunc i64 %229 to i32, !dbg !207
  %233 = sub i32 99, %232, !dbg !207
  %234 = shl nsw i32 %233, 2, !dbg !207
  %235 = mul nsw i32 %234, %233, !dbg !209
  %236 = sitofp i32 %235 to double, !dbg !210
  %handler_result33 = call double @fSubHandlerDouble(double %236, double %2), !dbg !211
  %237 = fdiv double %handler_result33, %1, !dbg !211
  %238 = sub nsw i64 %166, %229, !dbg !212
  %239 = getelementptr inbounds double, ptr %5, i64 %238, !dbg !219
  %handler_result34 = call double @fAddHandlerDouble(double %228, double %237), !dbg !213
  %240 = fdiv double -1.000000e+00, %handler_result34, !dbg !213
  %241 = getelementptr double, ptr %239, i64 -1, !dbg !214
  store double %240, ptr %241, align 8, !dbg !215, !tbaa !83
  tail call void @llvm.dbg.value(metadata i64 %229, metadata !181, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !184
  br label %242, !dbg !220

242:                                              ; preds = %231, %227
  %243 = icmp eq i32 %159, 0, !dbg !220
  %244 = load double, ptr %5, align 16, !dbg !194, !tbaa !83
  br i1 %243, label %245, label %290, !dbg !222

245:                                              ; preds = %242
  %246 = fmul double %244, 2.000000e+00, !dbg !223
  store double %246, ptr %5, align 16, !dbg !223, !tbaa !83, !DIAssignID !224
  call void @llvm.dbg.assign(metadata double %246, metadata !75, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !224, metadata ptr %5, metadata !DIExpression()), !dbg !80
  br label %290, !dbg !225

247:                                              ; preds = %247, %181
  %248 = phi double [ %178, %181 ], [ %268, %247 ]
  %249 = phi i64 [ 0, %181 ], [ %270, %247 ]
  %250 = phi i64 [ 0, %181 ], [ %271, %247 ]
  tail call void @llvm.dbg.value(metadata i64 %249, metadata !181, metadata !DIExpression()), !dbg !184
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 99, i64 %249), metadata !182, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !184
  %251 = trunc i64 %249 to i32, !dbg !226
  %252 = shl i32 %251, 1, !dbg !226
  %253 = sub i32 199, %252, !dbg !226
  %254 = mul nsw i32 %253, %253, !dbg !228
  %255 = sitofp i32 %254 to double, !dbg !229
  %handler_result35 = call double @fSubHandlerDouble(double %255, double %2), !dbg !230
  %256 = fdiv double %handler_result35, %1, !dbg !230
  %257 = sub nsw i64 %166, %249, !dbg !231
  %handler_result36 = call double @fAddHandlerDouble(double %248, double %256), !dbg !232
  %258 = fdiv double -1.000000e+00, %handler_result36, !dbg !232
  %259 = getelementptr double, ptr %183, i64 %257, !dbg !233
  store double %258, ptr %259, align 8, !dbg !234, !tbaa !83
  %260 = or disjoint i64 %249, 1, !dbg !235
  tail call void @llvm.dbg.value(metadata i64 %260, metadata !181, metadata !DIExpression()), !dbg !184
  tail call void @llvm.dbg.value(metadata i64 %260, metadata !181, metadata !DIExpression()), !dbg !184
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 99, i64 %260), metadata !182, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !184
  %261 = trunc i64 %260 to i32, !dbg !226
  %262 = shl i32 %261, 1, !dbg !226
  %263 = sub i32 199, %262, !dbg !226
  %264 = mul nsw i32 %263, %263, !dbg !228
  %265 = sitofp i32 %264 to double, !dbg !229
  %handler_result37 = call double @fSubHandlerDouble(double %265, double %2), !dbg !230
  %266 = fdiv double %handler_result37, %1, !dbg !230
  %267 = sub nsw i64 %166, %260, !dbg !231
  %handler_result38 = call double @fAddHandlerDouble(double %258, double %266), !dbg !232
  %268 = fdiv double -1.000000e+00, %handler_result38, !dbg !232
  %269 = getelementptr double, ptr %184, i64 %267, !dbg !233
  store double %268, ptr %269, align 8, !dbg !234, !tbaa !83
  %270 = add nuw nsw i64 %249, 2, !dbg !235
  tail call void @llvm.dbg.value(metadata i64 %270, metadata !181, metadata !DIExpression()), !dbg !184
  %271 = add i64 %250, 2, !dbg !191
  %272 = icmp eq i64 %271, %182, !dbg !191
  br i1 %272, label %273, label %247, !dbg !191, !llvm.loop !236

273:                                              ; preds = %247, %172
  %274 = phi double [ %178, %172 ], [ %268, %247 ]
  %275 = phi i64 [ 0, %172 ], [ %270, %247 ]
  %276 = icmp eq i64 %179, 0, !dbg !191
  br i1 %276, label %288, label %277, !dbg !191

277:                                              ; preds = %273
  tail call void @llvm.dbg.value(metadata i64 %275, metadata !181, metadata !DIExpression()), !dbg !184
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 99, i64 %275), metadata !182, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !184
  %278 = trunc i64 %275 to i32, !dbg !226
  %279 = shl i32 %278, 1, !dbg !226
  %280 = sub i32 199, %279, !dbg !226
  %281 = mul nsw i32 %280, %280, !dbg !228
  %282 = sitofp i32 %281 to double, !dbg !229
  %handler_result39 = call double @fSubHandlerDouble(double %282, double %2), !dbg !230
  %283 = fdiv double %handler_result39, %1, !dbg !230
  %284 = sub nsw i64 %166, %275, !dbg !231
  %285 = getelementptr inbounds double, ptr %5, i64 %284, !dbg !238
  %handler_result40 = call double @fAddHandlerDouble(double %274, double %283), !dbg !232
  %286 = fdiv double -1.000000e+00, %handler_result40, !dbg !232
  %287 = getelementptr double, ptr %285, i64 -1, !dbg !233
  store double %286, ptr %287, align 8, !dbg !234, !tbaa !83
  tail call void @llvm.dbg.value(metadata i64 %275, metadata !181, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !184
  br label %288, !dbg !194

288:                                              ; preds = %277, %273
  %289 = load double, ptr %5, align 16, !dbg !194, !tbaa !83
  br label %290, !dbg !194

290:                                              ; preds = %288, %245, %242
  %291 = phi double [ %289, %288 ], [ %244, %242 ], [ %246, %245 ], !dbg !194
  %handler_result41 = call double @fSubHandlerDouble(double %291, double %161), !dbg !195
  tail call void @llvm.dbg.value(metadata double %handler_result41, metadata !65, metadata !DIExpression()), !dbg !80
  tail call void @llvm.dbg.value(metadata double %handler_result41, metadata !68, metadata !DIExpression()), !dbg !80
  tail call void @llvm.dbg.value(metadata double %161, metadata !66, metadata !DIExpression()), !dbg !80
  tail call void @llvm.dbg.value(metadata double %2, metadata !170, metadata !DIExpression()), !dbg !197
  tail call void @llvm.dbg.value(metadata double %1, metadata !175, metadata !DIExpression()), !dbg !197
  tail call void @llvm.dbg.value(metadata double %handler_result41, metadata !176, metadata !DIExpression()), !dbg !197
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !177, metadata !DIExpression()), !dbg !197
  tail call void @llvm.dbg.value(metadata ptr undef, metadata !178, metadata !DIExpression()), !dbg !197
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !179, metadata !DIExpression()), !dbg !197
  tail call void @llvm.dbg.value(metadata i32 %162, metadata !180, metadata !DIExpression()), !dbg !197
  tail call void @llvm.dbg.value(metadata double %161, metadata !183, metadata !DIExpression()), !dbg !197
  store double %handler_result41, ptr %167, align 8, !dbg !195, !tbaa !83
  tail call void @llvm.dbg.value(metadata i32 0, metadata !181, metadata !DIExpression()), !dbg !197
  br i1 %163, label %306, label %292, !dbg !239

292:                                              ; preds = %290
  br i1 %168, label %293, label %407, !dbg !198

293:                                              ; preds = %292
  %294 = zext nneg i32 %162 to i64, !dbg !240
  %295 = zext nneg i32 %159 to i64, !dbg !198
  %296 = shl nuw nsw i64 %295, 3, !dbg !198
  %297 = sub nsw i64 792, %296, !dbg !198
  %298 = getelementptr i8, ptr %5, i64 %297, !dbg !198
  %299 = load double, ptr %298, align 8
  %300 = and i64 %294, 1, !dbg !198
  %301 = icmp eq i32 %159, 98, !dbg !198
  br i1 %301, label %392, label %302, !dbg !198

302:                                              ; preds = %293
  %303 = and i64 %294, 2147483646, !dbg !198
  %304 = getelementptr double, ptr %5, i64 -1, !dbg !198
  %305 = getelementptr double, ptr %5, i64 -1, !dbg !198
  br label %366, !dbg !198

306:                                              ; preds = %290
  br i1 %168, label %307, label %407, !dbg !204

307:                                              ; preds = %306
  %308 = zext nneg i32 %162 to i64, !dbg !241
  %309 = zext nneg i32 %159 to i64, !dbg !204
  %310 = shl nuw nsw i64 %309, 3, !dbg !204
  %311 = sub nsw i64 792, %310, !dbg !204
  %312 = getelementptr i8, ptr %5, i64 %311, !dbg !204
  %313 = load double, ptr %312, align 8
  %314 = and i64 %308, 1, !dbg !204
  %315 = icmp eq i32 %159, 98, !dbg !204
  br i1 %315, label %346, label %316, !dbg !204

316:                                              ; preds = %307
  %317 = and i64 %308, 2147483646, !dbg !204
  %318 = getelementptr double, ptr %5, i64 -1, !dbg !204
  %319 = getelementptr double, ptr %5, i64 -1, !dbg !204
  br label %320, !dbg !204

320:                                              ; preds = %320, %316
  %321 = phi double [ %313, %316 ], [ %341, %320 ]
  %322 = phi i64 [ 0, %316 ], [ %343, %320 ]
  %323 = phi i64 [ 0, %316 ], [ %344, %320 ]
  tail call void @llvm.dbg.value(metadata i64 %322, metadata !181, metadata !DIExpression()), !dbg !197
  tail call void @llvm.dbg.value(metadata !DIArgList(i64 99, i64 %322), metadata !182, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !197
  %324 = trunc i64 %322 to i32, !dbg !242
  %325 = sub i32 99, %324, !dbg !242
  %326 = shl nsw i32 %325, 2, !dbg !242
  %327 = mul nsw i32 %326, %325, !dbg !243
  %328 = sitofp i32 %327 to double, !dbg !244
  %handler_result42 = call double @fSubHandlerDouble(double %328, double %2), !dbg !245
  %329 = fdiv double %handler_result42, %1, !dbg !245
  %330 = sub nsw i64 %166, %322, !dbg !246
  %handler_result43 = call double @fAddHandlerDouble(double %321, double %329), !dbg !247
  %331 = fdiv double -1.000000e+00, %handler_result43, !dbg !247
  %332 = getelementptr double, ptr %318, i64 %330, !dbg !248
  store double %331, ptr %332, align 8, !dbg !249, !tbaa !83
  %333 = or disjoint i64 %322, 1, !dbg !250
  tail call void @llvm.dbg.value(metadata i64 %333, metadata !181, metadata !DIExpression()), !dbg !197
  tail call void @llvm.dbg.value(metadata i64 %333, metadata !181, metadata !DIExpression()), !dbg !197
  tail call void @llvm.dbg.value(metadata !DIArgList(i64 99, i64 %333), metadata !182, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !197
  %334 = trunc i64 %333 to i32, !dbg !242
  %335 = sub i32 99, %334, !dbg !242
  %336 = shl nsw i32 %335, 2, !dbg !242
  %337 = mul nsw i32 %336, %335, !dbg !243
  %338 = sitofp i32 %337 to double, !dbg !244
  %handler_result44 = call double @fSubHandlerDouble(double %338, double %2), !dbg !245
  %339 = fdiv double %handler_result44, %1, !dbg !245
  %340 = sub nsw i64 %166, %333, !dbg !246
  %handler_result45 = call double @fAddHandlerDouble(double %331, double %339), !dbg !247
  %341 = fdiv double -1.000000e+00, %handler_result45, !dbg !247
  %342 = getelementptr double, ptr %319, i64 %340, !dbg !248
  store double %341, ptr %342, align 8, !dbg !249, !tbaa !83
  %343 = add nuw nsw i64 %322, 2, !dbg !250
  tail call void @llvm.dbg.value(metadata i64 %343, metadata !181, metadata !DIExpression()), !dbg !197
  %344 = add i64 %323, 2, !dbg !204
  %345 = icmp eq i64 %344, %317, !dbg !204
  br i1 %345, label %346, label %320, !dbg !204, !llvm.loop !251

346:                                              ; preds = %320, %307
  %347 = phi double [ %313, %307 ], [ %341, %320 ]
  %348 = phi i64 [ 0, %307 ], [ %343, %320 ]
  %349 = icmp eq i64 %314, 0, !dbg !204
  br i1 %349, label %361, label %350, !dbg !204

350:                                              ; preds = %346
  tail call void @llvm.dbg.value(metadata i64 %348, metadata !181, metadata !DIExpression()), !dbg !197
  tail call void @llvm.dbg.value(metadata !DIArgList(i64 99, i64 %348), metadata !182, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !197
  %351 = trunc i64 %348 to i32, !dbg !242
  %352 = sub i32 99, %351, !dbg !242
  %353 = shl nsw i32 %352, 2, !dbg !242
  %354 = mul nsw i32 %353, %352, !dbg !243
  %355 = sitofp i32 %354 to double, !dbg !244
  %handler_result46 = call double @fSubHandlerDouble(double %355, double %2), !dbg !245
  %356 = fdiv double %handler_result46, %1, !dbg !245
  %357 = sub nsw i64 %166, %348, !dbg !246
  %358 = getelementptr inbounds double, ptr %5, i64 %357, !dbg !253
  %handler_result47 = call double @fAddHandlerDouble(double %347, double %356), !dbg !247
  %359 = fdiv double -1.000000e+00, %handler_result47, !dbg !247
  %360 = getelementptr double, ptr %358, i64 -1, !dbg !248
  store double %359, ptr %360, align 8, !dbg !249, !tbaa !83
  tail call void @llvm.dbg.value(metadata i64 %348, metadata !181, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !197
  br label %361, !dbg !254

361:                                              ; preds = %350, %346
  %362 = icmp eq i32 %159, 0, !dbg !254
  br i1 %362, label %363, label %407, !dbg !255

363:                                              ; preds = %361
  %364 = load double, ptr %5, align 16, !dbg !256, !tbaa !83
  %365 = fmul double %364, 2.000000e+00, !dbg !256
  store double %365, ptr %5, align 16, !dbg !256, !tbaa !83, !DIAssignID !257
  call void @llvm.dbg.assign(metadata double %365, metadata !75, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !257, metadata ptr %5, metadata !DIExpression()), !dbg !80
  br label %407, !dbg !258

366:                                              ; preds = %366, %302
  %367 = phi double [ %299, %302 ], [ %387, %366 ]
  %368 = phi i64 [ 0, %302 ], [ %389, %366 ]
  %369 = phi i64 [ 0, %302 ], [ %390, %366 ]
  tail call void @llvm.dbg.value(metadata i64 %368, metadata !181, metadata !DIExpression()), !dbg !197
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 99, i64 %368), metadata !182, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !197
  %370 = trunc i64 %368 to i32, !dbg !259
  %371 = shl i32 %370, 1, !dbg !259
  %372 = sub i32 199, %371, !dbg !259
  %373 = mul nsw i32 %372, %372, !dbg !260
  %374 = sitofp i32 %373 to double, !dbg !261
  %handler_result48 = call double @fSubHandlerDouble(double %374, double %2), !dbg !262
  %375 = fdiv double %handler_result48, %1, !dbg !262
  %376 = sub nsw i64 %166, %368, !dbg !263
  %handler_result49 = call double @fAddHandlerDouble(double %367, double %375), !dbg !264
  %377 = fdiv double -1.000000e+00, %handler_result49, !dbg !264
  %378 = getelementptr double, ptr %304, i64 %376, !dbg !265
  store double %377, ptr %378, align 8, !dbg !266, !tbaa !83
  %379 = or disjoint i64 %368, 1, !dbg !267
  tail call void @llvm.dbg.value(metadata i64 %379, metadata !181, metadata !DIExpression()), !dbg !197
  tail call void @llvm.dbg.value(metadata i64 %379, metadata !181, metadata !DIExpression()), !dbg !197
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 99, i64 %379), metadata !182, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !197
  %380 = trunc i64 %379 to i32, !dbg !259
  %381 = shl i32 %380, 1, !dbg !259
  %382 = sub i32 199, %381, !dbg !259
  %383 = mul nsw i32 %382, %382, !dbg !260
  %384 = sitofp i32 %383 to double, !dbg !261
  %handler_result50 = call double @fSubHandlerDouble(double %384, double %2), !dbg !262
  %385 = fdiv double %handler_result50, %1, !dbg !262
  %386 = sub nsw i64 %166, %379, !dbg !263
  %handler_result51 = call double @fAddHandlerDouble(double %377, double %385), !dbg !264
  %387 = fdiv double -1.000000e+00, %handler_result51, !dbg !264
  %388 = getelementptr double, ptr %305, i64 %386, !dbg !265
  store double %387, ptr %388, align 8, !dbg !266, !tbaa !83
  %389 = add nuw nsw i64 %368, 2, !dbg !267
  tail call void @llvm.dbg.value(metadata i64 %389, metadata !181, metadata !DIExpression()), !dbg !197
  %390 = add i64 %369, 2, !dbg !198
  %391 = icmp eq i64 %390, %303, !dbg !198
  br i1 %391, label %392, label %366, !dbg !198, !llvm.loop !268

392:                                              ; preds = %366, %293
  %393 = phi double [ %299, %293 ], [ %387, %366 ]
  %394 = phi i64 [ 0, %293 ], [ %389, %366 ]
  %395 = icmp eq i64 %300, 0, !dbg !198
  br i1 %395, label %407, label %396, !dbg !198

396:                                              ; preds = %392
  tail call void @llvm.dbg.value(metadata i64 %394, metadata !181, metadata !DIExpression()), !dbg !197
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 99, i64 %394), metadata !182, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !197
  %397 = trunc i64 %394 to i32, !dbg !259
  %398 = shl i32 %397, 1, !dbg !259
  %399 = sub i32 199, %398, !dbg !259
  %400 = mul nsw i32 %399, %399, !dbg !260
  %401 = sitofp i32 %400 to double, !dbg !261
  %handler_result52 = call double @fSubHandlerDouble(double %401, double %2), !dbg !262
  %402 = fdiv double %handler_result52, %1, !dbg !262
  %403 = sub nsw i64 %166, %394, !dbg !263
  %404 = getelementptr inbounds double, ptr %5, i64 %403, !dbg !270
  %handler_result53 = call double @fAddHandlerDouble(double %393, double %402), !dbg !264
  %405 = fdiv double -1.000000e+00, %handler_result53, !dbg !264
  %406 = getelementptr double, ptr %404, i64 -1, !dbg !265
  store double %405, ptr %406, align 8, !dbg !266, !tbaa !83
  tail call void @llvm.dbg.value(metadata i64 %394, metadata !181, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !197
  br label %407, !dbg !271

407:                                              ; preds = %396, %392, %363, %361, %306, %292, %186, %170
  %408 = phi double [ %handler_result41, %292 ], [ %handler_result41, %306 ], [ %handler_result41, %361 ], [ %handler_result41, %363 ], [ %handler_result27, %170 ], [ %handler_result28, %186 ], [ %handler_result41, %392 ], [ %handler_result41, %396 ]
  tail call void @llvm.dbg.value(metadata double poison, metadata !66, metadata !DIExpression()), !dbg !80
  %409 = load double, ptr %5, align 16, !dbg !271, !tbaa !83
  %handler_result54 = call double @fSubHandlerDouble(double %409, double %161), !dbg !272
  tail call void @llvm.dbg.value(metadata double %handler_result54, metadata !66, metadata !DIExpression()), !dbg !80
  tail call void @llvm.dbg.value(metadata double %408, metadata !65, metadata !DIExpression()), !dbg !80
  tail call void @llvm.dbg.value(metadata double %408, metadata !68, metadata !DIExpression()), !dbg !80
  tail call void @llvm.dbg.value(metadata double %165, metadata !67, metadata !DIExpression()), !dbg !80
  %handler_result55 = call double @fSubHandlerDouble(double %408, double %165), !dbg !274
  tail call void @llvm.dbg.value(metadata double %handler_result55, metadata !69, metadata !DIExpression()), !dbg !80
  %handler_result56 = call double @fSubHandlerDouble(double %handler_result54, double %408), !dbg !275
  tail call void @llvm.dbg.value(metadata double %handler_result56, metadata !70, metadata !DIExpression()), !dbg !80
  %handler_result57 = call double @fSubHandlerDouble(double %handler_result55, double %handler_result56), !dbg !276
  tail call void @llvm.dbg.value(metadata double %handler_result57, metadata !71, metadata !DIExpression()), !dbg !80
  %410 = tail call double @llvm.fabs.f64(double %handler_result57), !dbg !276
  %411 = fcmp olt double %410, 0x3D06849B86A12B9B, !dbg !278
  br i1 %411, label %540, label %412, !dbg !279

412:                                              ; preds = %407
  %413 = zext i32 %162 to i64
  %414 = icmp eq i32 %159, 0
  %415 = zext nneg i32 %159 to i64, !dbg !279
  %416 = shl nuw nsw i64 %415, 3, !dbg !279
  %417 = sub nsw i64 792, %416, !dbg !279
  %418 = getelementptr i8, ptr %5, i64 %417, !dbg !279
  %419 = zext nneg i32 %159 to i64, !dbg !279
  %420 = shl nuw nsw i64 %419, 3, !dbg !279
  %421 = sub nsw i64 792, %420, !dbg !279
  %422 = getelementptr i8, ptr %5, i64 %421, !dbg !279
  %423 = add nsw i64 %413, -1, !dbg !279
  %424 = and i64 %413, 1
  %425 = icmp eq i64 %423, 0
  %426 = and i64 %413, 4294967294
  %427 = getelementptr double, ptr %5, i64 -1
  %428 = getelementptr double, ptr %5, i64 -1
  %429 = icmp eq i64 %424, 0
  %430 = getelementptr double, ptr %5, i64 -1, !dbg !279
  %431 = and i64 %413, 1
  %432 = icmp eq i64 %423, 0
  %433 = and i64 %413, 4294967294
  %434 = getelementptr double, ptr %5, i64 -1
  %435 = getelementptr double, ptr %5, i64 -1
  %436 = icmp eq i64 %431, 0
  %437 = getelementptr double, ptr %5, i64 -1, !dbg !279
  br label %438, !dbg !279

438:                                              ; preds = %536, %412
  %439 = phi double [ %handler_result57, %412 ], [ %handler_result74, %536 ]
  %440 = phi double [ %handler_result56, %412 ], [ %handler_result73, %536 ]
  %441 = phi double [ %handler_result55, %412 ], [ %handler_result72, %536 ]
  %442 = phi double [ %handler_result54, %412 ], [ %handler_result71, %536 ]
  %443 = phi double [ %408, %412 ], [ %447, %536 ]
  %444 = phi double [ %165, %412 ], [ %443, %536 ]
  tail call void @llvm.dbg.value(metadata double %443, metadata !68, metadata !DIExpression()), !dbg !80
  tail call void @llvm.dbg.value(metadata double %444, metadata !67, metadata !DIExpression()), !dbg !80
  %445 = fmul double %441, %443, !dbg !280
  %446 = fmul double %444, %440, !dbg !281
  %handler_result58 = call double @fSubHandlerDouble(double %445, double %446), !dbg !282
  %447 = fdiv double %handler_result58, %439, !dbg !282
  tail call void @llvm.dbg.value(metadata double %447, metadata !72, metadata !DIExpression()), !dbg !80
  tail call void @llvm.dbg.value(metadata double %443, metadata !67, metadata !DIExpression()), !dbg !80
  tail call void @llvm.dbg.value(metadata double %442, metadata !65, metadata !DIExpression()), !dbg !80
  tail call void @llvm.dbg.value(metadata double %447, metadata !68, metadata !DIExpression()), !dbg !80
  tail call void @llvm.dbg.value(metadata double %161, metadata !66, metadata !DIExpression()), !dbg !80
  tail call void @llvm.dbg.value(metadata double %2, metadata !170, metadata !DIExpression()), !dbg !283
  tail call void @llvm.dbg.value(metadata double %1, metadata !175, metadata !DIExpression()), !dbg !283
  tail call void @llvm.dbg.value(metadata double %447, metadata !176, metadata !DIExpression()), !dbg !283
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !177, metadata !DIExpression()), !dbg !283
  tail call void @llvm.dbg.value(metadata ptr undef, metadata !178, metadata !DIExpression()), !dbg !283
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !179, metadata !DIExpression()), !dbg !283
  tail call void @llvm.dbg.value(metadata i32 %162, metadata !180, metadata !DIExpression()), !dbg !283
  tail call void @llvm.dbg.value(metadata double %161, metadata !183, metadata !DIExpression()), !dbg !283
  store double %447, ptr %167, align 8, !dbg !285, !tbaa !83
  tail call void @llvm.dbg.value(metadata i32 0, metadata !181, metadata !DIExpression()), !dbg !283
  br i1 %163, label %451, label %448, !dbg !286

448:                                              ; preds = %438
  br i1 %168, label %449, label %536, !dbg !287

449:                                              ; preds = %448
  %450 = load double, ptr %418, align 8
  br i1 %425, label %523, label %497, !dbg !287

451:                                              ; preds = %438
  br i1 %168, label %452, label %536, !dbg !288

452:                                              ; preds = %451
  %453 = load double, ptr %422, align 8
  br i1 %432, label %480, label %454, !dbg !288

454:                                              ; preds = %454, %452
  %455 = phi double [ %475, %454 ], [ %453, %452 ]
  %456 = phi i64 [ %477, %454 ], [ 0, %452 ]
  %457 = phi i64 [ %478, %454 ], [ 0, %452 ]
  tail call void @llvm.dbg.value(metadata i64 %456, metadata !181, metadata !DIExpression()), !dbg !283
  tail call void @llvm.dbg.value(metadata !DIArgList(i64 99, i64 %456), metadata !182, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !283
  %458 = trunc i64 %456 to i32, !dbg !289
  %459 = sub i32 99, %458, !dbg !289
  %460 = shl nsw i32 %459, 2, !dbg !289
  %461 = mul nsw i32 %460, %459, !dbg !290
  %462 = sitofp i32 %461 to double, !dbg !291
  %handler_result59 = call double @fSubHandlerDouble(double %462, double %2), !dbg !292
  %463 = fdiv double %handler_result59, %1, !dbg !292
  %464 = sub nsw i64 %166, %456, !dbg !293
  %handler_result60 = call double @fAddHandlerDouble(double %455, double %463), !dbg !294
  %465 = fdiv double -1.000000e+00, %handler_result60, !dbg !294
  %466 = getelementptr double, ptr %434, i64 %464, !dbg !295
  store double %465, ptr %466, align 8, !dbg !296, !tbaa !83
  %467 = or disjoint i64 %456, 1, !dbg !297
  tail call void @llvm.dbg.value(metadata i64 %467, metadata !181, metadata !DIExpression()), !dbg !283
  tail call void @llvm.dbg.value(metadata i64 %467, metadata !181, metadata !DIExpression()), !dbg !283
  tail call void @llvm.dbg.value(metadata !DIArgList(i64 99, i64 %467), metadata !182, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !283
  %468 = trunc i64 %467 to i32, !dbg !289
  %469 = sub i32 99, %468, !dbg !289
  %470 = shl nsw i32 %469, 2, !dbg !289
  %471 = mul nsw i32 %470, %469, !dbg !290
  %472 = sitofp i32 %471 to double, !dbg !291
  %handler_result61 = call double @fSubHandlerDouble(double %472, double %2), !dbg !292
  %473 = fdiv double %handler_result61, %1, !dbg !292
  %474 = sub nsw i64 %166, %467, !dbg !293
  %handler_result62 = call double @fAddHandlerDouble(double %465, double %473), !dbg !294
  %475 = fdiv double -1.000000e+00, %handler_result62, !dbg !294
  %476 = getelementptr double, ptr %435, i64 %474, !dbg !295
  store double %475, ptr %476, align 8, !dbg !296, !tbaa !83
  %477 = add nuw nsw i64 %456, 2, !dbg !297
  tail call void @llvm.dbg.value(metadata i64 %477, metadata !181, metadata !DIExpression()), !dbg !283
  %478 = add i64 %457, 2, !dbg !288
  %479 = icmp eq i64 %478, %433, !dbg !288
  br i1 %479, label %480, label %454, !dbg !288, !llvm.loop !298

480:                                              ; preds = %454, %452
  %481 = phi double [ %453, %452 ], [ %475, %454 ]
  %482 = phi i64 [ 0, %452 ], [ %477, %454 ]
  br i1 %436, label %493, label %483, !dbg !288

483:                                              ; preds = %480
  tail call void @llvm.dbg.value(metadata i64 %482, metadata !181, metadata !DIExpression()), !dbg !283
  tail call void @llvm.dbg.value(metadata !DIArgList(i64 99, i64 %482), metadata !182, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !283
  %484 = trunc i64 %482 to i32, !dbg !289
  %485 = sub i32 99, %484, !dbg !289
  %486 = shl nsw i32 %485, 2, !dbg !289
  %487 = mul nsw i32 %486, %485, !dbg !290
  %488 = sitofp i32 %487 to double, !dbg !291
  %handler_result63 = call double @fSubHandlerDouble(double %488, double %2), !dbg !292
  %489 = fdiv double %handler_result63, %1, !dbg !292
  %490 = sub nsw i64 %166, %482, !dbg !293
  %handler_result64 = call double @fAddHandlerDouble(double %481, double %489), !dbg !294
  %491 = fdiv double -1.000000e+00, %handler_result64, !dbg !294
  %492 = getelementptr double, ptr %437, i64 %490, !dbg !295
  store double %491, ptr %492, align 8, !dbg !296, !tbaa !83
  tail call void @llvm.dbg.value(metadata i64 %482, metadata !181, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !283
  br label %493, !dbg !300

493:                                              ; preds = %483, %480
  br i1 %414, label %494, label %536, !dbg !300

494:                                              ; preds = %493
  %495 = load double, ptr %5, align 16, !dbg !301, !tbaa !83
  %496 = fmul double %495, 2.000000e+00, !dbg !301
  store double %496, ptr %5, align 16, !dbg !301, !tbaa !83, !DIAssignID !302
  call void @llvm.dbg.assign(metadata double %496, metadata !75, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !302, metadata ptr %5, metadata !DIExpression()), !dbg !80
  br label %536, !dbg !303

497:                                              ; preds = %497, %449
  %498 = phi double [ %518, %497 ], [ %450, %449 ]
  %499 = phi i64 [ %520, %497 ], [ 0, %449 ]
  %500 = phi i64 [ %521, %497 ], [ 0, %449 ]
  tail call void @llvm.dbg.value(metadata i64 %499, metadata !181, metadata !DIExpression()), !dbg !283
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 99, i64 %499), metadata !182, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !283
  %501 = trunc i64 %499 to i32, !dbg !304
  %502 = shl i32 %501, 1, !dbg !304
  %503 = sub i32 199, %502, !dbg !304
  %504 = mul nsw i32 %503, %503, !dbg !305
  %505 = sitofp i32 %504 to double, !dbg !306
  %handler_result65 = call double @fSubHandlerDouble(double %505, double %2), !dbg !307
  %506 = fdiv double %handler_result65, %1, !dbg !307
  %507 = sub nsw i64 %166, %499, !dbg !308
  %handler_result66 = call double @fAddHandlerDouble(double %498, double %506), !dbg !309
  %508 = fdiv double -1.000000e+00, %handler_result66, !dbg !309
  %509 = getelementptr double, ptr %427, i64 %507, !dbg !310
  store double %508, ptr %509, align 8, !dbg !311, !tbaa !83
  %510 = or disjoint i64 %499, 1, !dbg !312
  tail call void @llvm.dbg.value(metadata i64 %510, metadata !181, metadata !DIExpression()), !dbg !283
  tail call void @llvm.dbg.value(metadata i64 %510, metadata !181, metadata !DIExpression()), !dbg !283
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 99, i64 %510), metadata !182, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !283
  %511 = trunc i64 %510 to i32, !dbg !304
  %512 = shl i32 %511, 1, !dbg !304
  %513 = sub i32 199, %512, !dbg !304
  %514 = mul nsw i32 %513, %513, !dbg !305
  %515 = sitofp i32 %514 to double, !dbg !306
  %handler_result67 = call double @fSubHandlerDouble(double %515, double %2), !dbg !307
  %516 = fdiv double %handler_result67, %1, !dbg !307
  %517 = sub nsw i64 %166, %510, !dbg !308
  %handler_result68 = call double @fAddHandlerDouble(double %508, double %516), !dbg !309
  %518 = fdiv double -1.000000e+00, %handler_result68, !dbg !309
  %519 = getelementptr double, ptr %428, i64 %517, !dbg !310
  store double %518, ptr %519, align 8, !dbg !311, !tbaa !83
  %520 = add nuw nsw i64 %499, 2, !dbg !312
  tail call void @llvm.dbg.value(metadata i64 %520, metadata !181, metadata !DIExpression()), !dbg !283
  %521 = add i64 %500, 2, !dbg !287
  %522 = icmp eq i64 %521, %426, !dbg !287
  br i1 %522, label %523, label %497, !dbg !287, !llvm.loop !313

523:                                              ; preds = %497, %449
  %524 = phi double [ %450, %449 ], [ %518, %497 ]
  %525 = phi i64 [ 0, %449 ], [ %520, %497 ]
  br i1 %429, label %536, label %526, !dbg !287

526:                                              ; preds = %523
  tail call void @llvm.dbg.value(metadata i64 %525, metadata !181, metadata !DIExpression()), !dbg !283
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 99, i64 %525), metadata !182, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !283
  %527 = trunc i64 %525 to i32, !dbg !304
  %528 = shl i32 %527, 1, !dbg !304
  %529 = sub i32 199, %528, !dbg !304
  %530 = mul nsw i32 %529, %529, !dbg !305
  %531 = sitofp i32 %530 to double, !dbg !306
  %handler_result69 = call double @fSubHandlerDouble(double %531, double %2), !dbg !307
  %532 = fdiv double %handler_result69, %1, !dbg !307
  %533 = sub nsw i64 %166, %525, !dbg !308
  %handler_result70 = call double @fAddHandlerDouble(double %524, double %532), !dbg !309
  %534 = fdiv double -1.000000e+00, %handler_result70, !dbg !309
  %535 = getelementptr double, ptr %430, i64 %533, !dbg !310
  store double %534, ptr %535, align 8, !dbg !311, !tbaa !83
  tail call void @llvm.dbg.value(metadata i64 %525, metadata !181, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !283
  br label %536, !dbg !271

536:                                              ; preds = %526, %523, %494, %493, %451, %448
  tail call void @llvm.dbg.value(metadata double poison, metadata !66, metadata !DIExpression()), !dbg !80
  %537 = load double, ptr %5, align 16, !dbg !271, !tbaa !83
  %handler_result71 = call double @fSubHandlerDouble(double %537, double %161), !dbg !272
  tail call void @llvm.dbg.value(metadata double %handler_result71, metadata !66, metadata !DIExpression()), !dbg !80
  tail call void @llvm.dbg.value(metadata double %442, metadata !65, metadata !DIExpression()), !dbg !80
  tail call void @llvm.dbg.value(metadata double %447, metadata !68, metadata !DIExpression()), !dbg !80
  tail call void @llvm.dbg.value(metadata double %443, metadata !67, metadata !DIExpression()), !dbg !80
  %handler_result72 = call double @fSubHandlerDouble(double %442, double %443), !dbg !274
  tail call void @llvm.dbg.value(metadata double %handler_result72, metadata !69, metadata !DIExpression()), !dbg !80
  %handler_result73 = call double @fSubHandlerDouble(double %handler_result71, double %447), !dbg !275
  tail call void @llvm.dbg.value(metadata double %handler_result73, metadata !70, metadata !DIExpression()), !dbg !80
  %handler_result74 = call double @fSubHandlerDouble(double %handler_result72, double %handler_result73), !dbg !276
  tail call void @llvm.dbg.value(metadata double %handler_result74, metadata !71, metadata !DIExpression()), !dbg !80
  %538 = tail call double @llvm.fabs.f64(double %handler_result74), !dbg !276
  %539 = fcmp olt double %538, 0x3D06849B86A12B9B, !dbg !278
  br i1 %539, label %540, label %438, !dbg !279, !llvm.loop !315

540:                                              ; preds = %536, %407
  %541 = zext nneg i32 %159 to i64
  %542 = getelementptr inbounds double, ptr %3, i64 %541, !dbg !318
  %543 = load double, ptr %542, align 8, !dbg !318, !tbaa !83
  %handler_result75 = call double @fAddHandlerDouble(double %160, double %543), !dbg !319
  tail call void @llvm.dbg.value(metadata double %handler_result75, metadata !73, metadata !DIExpression()), !dbg !80
  tail call void @llvm.dbg.value(metadata i32 %159, metadata !62, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !80
  br i1 %168, label %544, label %546, !dbg !319

544:                                              ; preds = %540
  %545 = getelementptr i8, ptr %3, i64 8, !dbg !319
  br label %552, !dbg !319

546:                                              ; preds = %577, %568, %540
  %547 = phi double [ %handler_result75, %540 ], [ %handler_result76, %568 ], [ %handler_result76, %577 ], !dbg !80
  tail call void @llvm.dbg.value(metadata i32 0, metadata !62, metadata !DIExpression()), !dbg !80
  %548 = getelementptr double, ptr %3, i64 1, !dbg !321
  %549 = getelementptr double, ptr %3, i64 2, !dbg !321
  %550 = getelementptr double, ptr %3, i64 3, !dbg !321
  %551 = getelementptr double, ptr %3, i64 4, !dbg !321
  br label %579, !dbg !321

552:                                              ; preds = %577, %544
  %553 = phi double [ %handler_result76, %577 ], [ %handler_result75, %544 ]
  %554 = phi i32 [ %555, %577 ], [ %159, %544 ]
  tail call void @llvm.dbg.value(metadata double %553, metadata !73, metadata !DIExpression()), !dbg !80
  tail call void @llvm.dbg.value(metadata i32 %554, metadata !62, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !80
  %555 = add nsw i32 %554, 1, !dbg !323
  tail call void @llvm.dbg.value(metadata i32 %555, metadata !62, metadata !DIExpression()), !dbg !80
  %556 = sub i32 %554, %159, !dbg !324
  %557 = sext i32 %556 to i64, !dbg !327
  %558 = getelementptr inbounds [100 x double], ptr %5, i64 0, i64 %557, !dbg !327
  %559 = load double, ptr %558, align 8, !dbg !327, !tbaa !83
  %560 = sext i32 %554 to i64, !dbg !328
  %561 = getelementptr inbounds double, ptr %3, i64 %560, !dbg !328
  %562 = load double, ptr %561, align 8, !dbg !328, !tbaa !83
  %563 = fmul double %559, %562, !dbg !329
  %564 = sext i32 %555 to i64, !dbg !330
  %565 = getelementptr inbounds double, ptr %3, i64 %564, !dbg !330
  store double %563, ptr %565, align 8, !dbg !331, !tbaa !83
  %handler_result76 = call double @fAddHandlerDouble(double %553, double %563), !dbg !332
  tail call void @llvm.dbg.value(metadata double %handler_result76, metadata !73, metadata !DIExpression()), !dbg !80
  %566 = tail call double @llvm.fabs.f64(double %563), !dbg !332
  %567 = fcmp olt double %566, 0x3BC79CA10C924223, !dbg !334
  br i1 %567, label %568, label %577, !dbg !335

568:                                              ; preds = %552
  %569 = shl nsw i64 %560, 3, !dbg !336
  %570 = getelementptr i8, ptr %545, i64 %569, !dbg !336
  %571 = tail call i32 @llvm.smax.i32(i32 %555, i32 99), !dbg !336
  %572 = xor i32 %554, -1, !dbg !336
  %573 = add i32 %571, %572, !dbg !336
  %574 = zext i32 %573 to i64, !dbg !336
  %575 = shl nuw nsw i64 %574, 3, !dbg !336
  %576 = add nuw nsw i64 %575, 8, !dbg !336
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %570, i8 0, i64 %576, i1 false), !dbg !339, !tbaa !83
  tail call void @llvm.dbg.value(metadata double %handler_result76, metadata !73, metadata !DIExpression()), !dbg !80
  tail call void @llvm.dbg.value(metadata i32 100, metadata !62, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !80
  br label %546, !dbg !319

577:                                              ; preds = %552
  tail call void @llvm.dbg.value(metadata double %handler_result76, metadata !73, metadata !DIExpression()), !dbg !80
  tail call void @llvm.dbg.value(metadata i32 %555, metadata !62, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !80
  %578 = icmp slt i32 %554, 98, !dbg !341
  br i1 %578, label %552, label %546, !dbg !319, !llvm.loop !342

579:                                              ; preds = %579, %546
  %580 = phi i64 [ 0, %546 ], [ %596, %579 ]
  tail call void @llvm.dbg.value(metadata i64 %580, metadata !62, metadata !DIExpression()), !dbg !80
  %581 = getelementptr inbounds double, ptr %3, i64 %580, !dbg !344
  %582 = load double, ptr %581, align 8, !dbg !346, !tbaa !83
  %583 = fdiv double %582, %547, !dbg !346
  store double %583, ptr %581, align 8, !dbg !346, !tbaa !83
  tail call void @llvm.dbg.value(metadata i64 %580, metadata !62, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !80
  tail call void @llvm.dbg.value(metadata i64 %580, metadata !62, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !80
  %584 = getelementptr double, ptr %548, i64 %580, !dbg !344
  %585 = load double, ptr %584, align 8, !dbg !346, !tbaa !83
  %586 = fdiv double %585, %547, !dbg !346
  store double %586, ptr %584, align 8, !dbg !346, !tbaa !83
  tail call void @llvm.dbg.value(metadata i64 %580, metadata !62, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !80
  tail call void @llvm.dbg.value(metadata i64 %580, metadata !62, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !80
  %587 = getelementptr double, ptr %549, i64 %580, !dbg !344
  %588 = load double, ptr %587, align 8, !dbg !346, !tbaa !83
  %589 = fdiv double %588, %547, !dbg !346
  store double %589, ptr %587, align 8, !dbg !346, !tbaa !83
  tail call void @llvm.dbg.value(metadata i64 %580, metadata !62, metadata !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value)), !dbg !80
  tail call void @llvm.dbg.value(metadata i64 %580, metadata !62, metadata !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value)), !dbg !80
  %590 = getelementptr double, ptr %550, i64 %580, !dbg !344
  %591 = load double, ptr %590, align 8, !dbg !346, !tbaa !83
  %592 = fdiv double %591, %547, !dbg !346
  store double %592, ptr %590, align 8, !dbg !346, !tbaa !83
  tail call void @llvm.dbg.value(metadata i64 %580, metadata !62, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !80
  tail call void @llvm.dbg.value(metadata i64 %580, metadata !62, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !80
  %593 = getelementptr double, ptr %551, i64 %580, !dbg !344
  %594 = load double, ptr %593, align 8, !dbg !346, !tbaa !83
  %595 = fdiv double %594, %547, !dbg !346
  store double %595, ptr %593, align 8, !dbg !346, !tbaa !83
  %596 = add nuw nsw i64 %580, 5, !dbg !347
  tail call void @llvm.dbg.value(metadata i64 %596, metadata !62, metadata !DIExpression()), !dbg !80
  %597 = icmp eq i64 %596, 100, !dbg !348
  br i1 %597, label %598, label %579, !dbg !321, !llvm.loop !349

598:                                              ; preds = %579, %10, %4
  %599 = phi i32 [ 0, %10 ], [ -1, %4 ], [ 0, %579 ], !dbg !80
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %5) #4, !dbg !351
  ret i32 %599, !dbg !351
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef i32 @gsl_sf_mathieu_b_coeff(i32 noundef %0, double noundef %1, double noundef %2, ptr nocapture noundef %3) local_unnamed_addr #0 !dbg !352 {
  %5 = alloca [100 x double], align 16, !DIAssignID !374
  call void @llvm.dbg.assign(metadata i1 undef, metadata !373, metadata !DIExpression(), metadata !374, metadata ptr %5, metadata !DIExpression()), !dbg !375
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !354, metadata !DIExpression()), !dbg !375
  tail call void @llvm.dbg.value(metadata double %1, metadata !355, metadata !DIExpression()), !dbg !375
  tail call void @llvm.dbg.value(metadata double %2, metadata !356, metadata !DIExpression()), !dbg !375
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !357, metadata !DIExpression()), !dbg !375
  call void @llvm.lifetime.start.p0(i64 800, ptr nonnull %5) #4, !dbg !376
  tail call void @llvm.dbg.value(metadata double 1.000000e-10, metadata !362, metadata !DIExpression()), !dbg !375
  store double 1.000000e+00, ptr %3, align 8, !dbg !377, !tbaa !83
  tail call void @llvm.dbg.value(metadata i32 0, metadata !361, metadata !DIExpression()), !dbg !375
  %6 = and i32 %0, 1, !dbg !378
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !361, metadata !DIExpression()), !dbg !375
  %7 = icmp sgt i32 %0, 100, !dbg !380
  br i1 %7, label %522, label %8, !dbg !382

8:                                                ; preds = %4
  %9 = fcmp oeq double %1, 0.000000e+00, !dbg !383
  br i1 %9, label %10, label %15, !dbg !385

10:                                               ; preds = %8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(800) %3, i8 0, i64 800, i1 false), !dbg !386, !tbaa !83
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !360, metadata !DIExpression()), !dbg !375
  %11 = add nsw i32 %0, -1, !dbg !390
  %12 = sdiv i32 %11, 2, !dbg !391
  %13 = sext i32 %12 to i64, !dbg !392
  %14 = getelementptr inbounds double, ptr %3, i64 %13, !dbg !392
  store double 1.000000e+00, ptr %14, align 8, !dbg !393, !tbaa !83
  br label %522, !dbg !394

15:                                               ; preds = %8
  %16 = icmp slt i32 %0, 5, !dbg !395
  %17 = icmp eq i32 %6, 0, !dbg !397
  br i1 %16, label %18, label %23, !dbg !398

18:                                               ; preds = %15
  tail call void @llvm.dbg.value(metadata i32 0, metadata !359, metadata !DIExpression()), !dbg !375
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !371, metadata !DIExpression()), !dbg !375
  br i1 %17, label %19, label %21, !dbg !399

19:                                               ; preds = %18
  %handler_result = call double @fAddHandlerDouble(double %2, double -4.000000e+00), !dbg !401
  %20 = fdiv double %handler_result, %1, !dbg !401
  tail call void @llvm.dbg.value(metadata double %20, metadata !372, metadata !DIExpression()), !dbg !375
  br label %93, !dbg !403

21:                                               ; preds = %18
  %handler_result1 = call double @fAddHandlerDouble(double %2, double -1.000000e+00), !dbg !404
  %handler_result2 = call double @fSubHandlerDouble(double %handler_result1, double %1), !dbg !405
  %22 = fdiv double %handler_result2, %1, !dbg !405
  tail call void @llvm.dbg.value(metadata double %22, metadata !372, metadata !DIExpression()), !dbg !375
  br label %93

23:                                               ; preds = %15
  br i1 %17, label %24, label %51, !dbg !406

24:                                               ; preds = %23
  %handler_result3 = call double @fAddHandlerDouble(double %2, double -4.000000e+00), !dbg !408
  %25 = fdiv double %handler_result3, %1, !dbg !408
  %26 = getelementptr inbounds double, ptr %3, i64 1, !dbg !411
  store double %25, ptr %26, align 8, !dbg !412, !tbaa !83
  tail call void @llvm.dbg.value(metadata double poison, metadata !371, metadata !DIExpression()), !dbg !375
  tail call void @llvm.dbg.value(metadata i32 2, metadata !360, metadata !DIExpression()), !dbg !375
  %27 = lshr exact i32 %0, 1
  %28 = fmul double %25, 4.000000e+00, !dbg !413
  %handler_result4 = call double @fAddHandlerDouble(double %28, double 2.000000e+00), !dbg !414
  tail call void @llvm.dbg.value(metadata double %handler_result4, metadata !371, metadata !DIExpression()), !dbg !375
  %29 = zext nneg i32 %27 to i64, !dbg !414
  %30 = getelementptr i8, ptr %3, i64 8, !dbg !417
  %31 = load double, ptr %30, align 8
  br label %32, !dbg !417

32:                                               ; preds = %32, %24
  %33 = phi double [ %31, %24 ], [ %handler_result6, %32 ]
  %34 = phi i64 [ 2, %24 ], [ %45, %32 ]
  %35 = phi double [ %handler_result4, %24 ], [ %handler_result7, %32 ]
  tail call void @llvm.dbg.value(metadata double %35, metadata !371, metadata !DIExpression()), !dbg !375
  tail call void @llvm.dbg.value(metadata i64 %34, metadata !360, metadata !DIExpression()), !dbg !375
  %36 = trunc i64 %34 to i32, !dbg !418
  %37 = shl nsw i32 %36, 2, !dbg !418
  %38 = mul nsw i32 %37, %36, !dbg !420
  %39 = sitofp i32 %38 to double, !dbg !421
  %handler_result5 = call double @fSubHandlerDouble(double %2, double %39), !dbg !422
  %40 = fdiv double %handler_result5, %1, !dbg !422
  %41 = getelementptr double, ptr %3, i64 %34, !dbg !423
  %42 = fmul double %40, %33, !dbg !424
  %43 = getelementptr double, ptr %41, i64 -2, !dbg !425
  %44 = load double, ptr %43, align 8, !dbg !425, !tbaa !83
  %handler_result6 = call double @fSubHandlerDouble(double %42, double %44), !dbg !426
  store double %handler_result6, ptr %41, align 8, !dbg !426, !tbaa !83
  %45 = add nuw nsw i64 %34, 1, !dbg !427
  %46 = trunc i64 %45 to i32, !dbg !428
  %47 = shl i32 %46, 1, !dbg !428
  %48 = sitofp i32 %47 to double, !dbg !428
  %49 = fmul double %handler_result6, %48, !dbg !429
  %handler_result7 = call double @fAddHandlerDouble(double %35, double %49), !dbg !414
  tail call void @llvm.dbg.value(metadata double %handler_result7, metadata !371, metadata !DIExpression()), !dbg !375
  tail call void @llvm.dbg.value(metadata i64 %45, metadata !360, metadata !DIExpression()), !dbg !375
  %50 = icmp eq i64 %45, %29, !dbg !414
  br i1 %50, label %81, label %32, !dbg !417, !llvm.loop !430

51:                                               ; preds = %23
  %handler_result8 = call double @fAddHandlerDouble(double %2, double -1.000000e+00), !dbg !432
  %52 = fdiv double %handler_result8, %1, !dbg !432
  %handler_result9 = call double @fAddHandlerDouble(double %52, double 1.000000e+00), !dbg !434
  %53 = getelementptr inbounds double, ptr %3, i64 1, !dbg !434
  store double %handler_result9, ptr %53, align 8, !dbg !435, !tbaa !83
  tail call void @llvm.dbg.value(metadata double poison, metadata !371, metadata !DIExpression()), !dbg !375
  tail call void @llvm.dbg.value(metadata i32 2, metadata !360, metadata !DIExpression()), !dbg !375
  %54 = lshr i32 %0, 1
  %55 = fmul double %handler_result9, 3.000000e+00, !dbg !436
  %handler_result10 = call double @fAddHandlerDouble(double %55, double 1.000000e+00), !dbg !437
  tail call void @llvm.dbg.value(metadata double %handler_result10, metadata !371, metadata !DIExpression()), !dbg !375
  %56 = add nuw nsw i32 %54, 1, !dbg !437
  %57 = zext nneg i32 %56 to i64, !dbg !439
  %58 = getelementptr i8, ptr %3, i64 8, !dbg !437
  %59 = load double, ptr %58, align 8
  br label %60, !dbg !437

60:                                               ; preds = %60, %51
  %61 = phi double [ %59, %51 ], [ %handler_result12, %60 ]
  %62 = phi i64 [ 2, %51 ], [ %74, %60 ]
  %63 = phi double [ %handler_result10, %51 ], [ %handler_result13, %60 ]
  tail call void @llvm.dbg.value(metadata double %63, metadata !371, metadata !DIExpression()), !dbg !375
  tail call void @llvm.dbg.value(metadata i64 %62, metadata !360, metadata !DIExpression()), !dbg !375
  %64 = trunc i64 %62 to i32, !dbg !441
  %65 = shl i32 %64, 1, !dbg !441
  %66 = add i32 %65, -1, !dbg !441
  %67 = mul nsw i32 %66, %66, !dbg !441
  %68 = sitofp i32 %67 to double, !dbg !443
  %handler_result11 = call double @fSubHandlerDouble(double %2, double %68), !dbg !444
  %69 = fdiv double %handler_result11, %1, !dbg !444
  %70 = getelementptr double, ptr %3, i64 %62, !dbg !445
  %71 = fmul double %69, %61, !dbg !446
  %72 = getelementptr double, ptr %70, i64 -2, !dbg !447
  %73 = load double, ptr %72, align 8, !dbg !447, !tbaa !83
  %handler_result12 = call double @fSubHandlerDouble(double %71, double %73), !dbg !448
  store double %handler_result12, ptr %70, align 8, !dbg !448, !tbaa !83
  %74 = add nuw nsw i64 %62, 1, !dbg !449
  %75 = trunc i64 %74 to i32, !dbg !450
  %76 = shl nuw nsw i32 %75, 1, !dbg !450
  %77 = add nsw i32 %76, -1, !dbg !451
  %78 = sitofp i32 %77 to double, !dbg !452
  %79 = fmul double %handler_result12, %78, !dbg !453
  %handler_result13 = call double @fAddHandlerDouble(double %63, double %79), !dbg !439
  tail call void @llvm.dbg.value(metadata double %handler_result13, metadata !371, metadata !DIExpression()), !dbg !375
  tail call void @llvm.dbg.value(metadata i64 %74, metadata !360, metadata !DIExpression()), !dbg !375
  %80 = icmp eq i64 %74, %57, !dbg !439
  br i1 %80, label %81, label %60, !dbg !437, !llvm.loop !454

81:                                               ; preds = %60, %32
  %82 = phi i32 [ %27, %32 ], [ %56, %60 ], !dbg !456
  %83 = phi double [ %handler_result7, %32 ], [ %handler_result13, %60 ], !dbg !456
  tail call void @llvm.dbg.value(metadata double %83, metadata !371, metadata !DIExpression()), !dbg !375
  tail call void @llvm.dbg.value(metadata i32 %82, metadata !360, metadata !DIExpression()), !dbg !375
  %84 = add nsw i32 %82, -1, !dbg !457
  tail call void @llvm.dbg.value(metadata i32 %84, metadata !359, metadata !DIExpression()), !dbg !375
  %85 = zext nneg i32 %84 to i64, !dbg !458
  %86 = getelementptr inbounds double, ptr %3, i64 %85, !dbg !458
  %87 = load double, ptr %86, align 8, !dbg !458, !tbaa !83
  %88 = zext nneg i32 %82 to i64, !dbg !459
  %89 = getelementptr double, ptr %3, i64 %88, !dbg !459
  %90 = getelementptr double, ptr %89, i64 -2, !dbg !459
  %91 = load double, ptr %90, align 8, !dbg !459, !tbaa !83
  %92 = fdiv double %87, %91, !dbg !460
  tail call void @llvm.dbg.value(metadata double %92, metadata !372, metadata !DIExpression()), !dbg !375
  br label %93

93:                                               ; preds = %81, %21, %19
  %94 = phi i32 [ 0, %19 ], [ 0, %21 ], [ %84, %81 ], !dbg !397
  %95 = phi double [ 0.000000e+00, %19 ], [ 0.000000e+00, %21 ], [ %83, %81 ], !dbg !397
  %96 = phi double [ %20, %19 ], [ %22, %21 ], [ %92, %81 ], !dbg !397
  tail call void @llvm.dbg.value(metadata double %96, metadata !372, metadata !DIExpression()), !dbg !375
  tail call void @llvm.dbg.value(metadata double %95, metadata !371, metadata !DIExpression()), !dbg !375
  tail call void @llvm.dbg.value(metadata i32 %94, metadata !359, metadata !DIExpression()), !dbg !375
  %97 = sub nsw i32 99, %94, !dbg !461
  tail call void @llvm.dbg.value(metadata i32 %97, metadata !358, metadata !DIExpression()), !dbg !375
  %98 = icmp eq i32 %6, 0, !dbg !462
  %99 = select i1 %98, double -4.080400e+04, double -4.040100e+04, !dbg !464
  %100 = fdiv double %1, %99, !dbg !464
  tail call void @llvm.dbg.value(metadata double %100, metadata !365, metadata !DIExpression()), !dbg !375
  tail call void @llvm.dbg.value(metadata double %96, metadata !363, metadata !DIExpression()), !dbg !375
  tail call void @llvm.dbg.value(metadata double %2, metadata !465, metadata !DIExpression()), !dbg !477
  tail call void @llvm.dbg.value(metadata double %1, metadata !468, metadata !DIExpression()), !dbg !477
  tail call void @llvm.dbg.value(metadata double %100, metadata !469, metadata !DIExpression()), !dbg !477
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !470, metadata !DIExpression()), !dbg !477
  tail call void @llvm.dbg.value(metadata ptr undef, metadata !471, metadata !DIExpression()), !dbg !477
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !472, metadata !DIExpression()), !dbg !477
  tail call void @llvm.dbg.value(metadata i32 %97, metadata !473, metadata !DIExpression()), !dbg !477
  tail call void @llvm.dbg.value(metadata double %96, metadata !476, metadata !DIExpression()), !dbg !477
  %101 = sext i32 %97 to i64, !dbg !479
  %102 = getelementptr inbounds double, ptr %5, i64 %101, !dbg !479
  store double %100, ptr %102, align 8, !dbg !480, !tbaa !83
  tail call void @llvm.dbg.value(metadata i32 0, metadata !474, metadata !DIExpression()), !dbg !477
  %103 = icmp slt i32 %94, 99, !dbg !481
  br i1 %98, label %118, label %104, !dbg !483

104:                                              ; preds = %93
  br i1 %103, label %105, label %296, !dbg !484

105:                                              ; preds = %104
  %106 = zext nneg i32 %97 to i64, !dbg !487
  %107 = sext i32 %94 to i64, !dbg !484
  %108 = shl nsw i64 %107, 3, !dbg !484
  %109 = sub nsw i64 792, %108, !dbg !484
  %110 = getelementptr i8, ptr %5, i64 %109, !dbg !484
  %111 = load double, ptr %110, align 8
  %112 = and i64 %106, 1, !dbg !484
  %113 = icmp eq i32 %94, 98, !dbg !484
  br i1 %113, label %199, label %114, !dbg !484

114:                                              ; preds = %105
  %115 = and i64 %106, 2147483646, !dbg !484
  %116 = getelementptr double, ptr %5, i64 -1, !dbg !484
  %117 = getelementptr double, ptr %5, i64 -1, !dbg !484
  br label %158, !dbg !484

118:                                              ; preds = %93
  br i1 %103, label %119, label %296, !dbg !489

119:                                              ; preds = %118
  %120 = zext nneg i32 %97 to i64, !dbg !492
  %121 = sext i32 %94 to i64, !dbg !489
  %122 = shl nsw i64 %121, 3, !dbg !489
  %123 = sub nsw i64 792, %122, !dbg !489
  %124 = getelementptr i8, ptr %5, i64 %123, !dbg !489
  %125 = load double, ptr %124, align 8
  %126 = and i64 %120, 1, !dbg !489
  %127 = icmp eq i32 %94, 98, !dbg !489
  br i1 %127, label %184, label %128, !dbg !489

128:                                              ; preds = %119
  %129 = and i64 %120, 2147483646, !dbg !489
  %130 = getelementptr double, ptr %5, i64 -1, !dbg !489
  %131 = getelementptr double, ptr %5, i64 -1, !dbg !489
  br label %132, !dbg !489

132:                                              ; preds = %132, %128
  %133 = phi double [ %125, %128 ], [ %153, %132 ]
  %134 = phi i64 [ 0, %128 ], [ %155, %132 ]
  %135 = phi i64 [ 0, %128 ], [ %156, %132 ]
  tail call void @llvm.dbg.value(metadata i64 %134, metadata !474, metadata !DIExpression()), !dbg !477
  tail call void @llvm.dbg.value(metadata !DIArgList(i64 100, i64 %134), metadata !475, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !477
  %136 = trunc i64 %134 to i32, !dbg !494
  %137 = sub i32 100, %136, !dbg !494
  %138 = shl nsw i32 %137, 2, !dbg !494
  %139 = mul nsw i32 %138, %137, !dbg !496
  %140 = sitofp i32 %139 to double, !dbg !497
  %handler_result14 = call double @fSubHandlerDouble(double %140, double %2), !dbg !498
  %141 = fdiv double %handler_result14, %1, !dbg !498
  %142 = sub nsw i64 %101, %134, !dbg !499
  %handler_result15 = call double @fAddHandlerDouble(double %133, double %141), !dbg !500
  %143 = fdiv double -1.000000e+00, %handler_result15, !dbg !500
  %144 = getelementptr double, ptr %130, i64 %142, !dbg !501
  store double %143, ptr %144, align 8, !dbg !502, !tbaa !83
  %145 = or disjoint i64 %134, 1, !dbg !503
  tail call void @llvm.dbg.value(metadata i64 %145, metadata !474, metadata !DIExpression()), !dbg !477
  tail call void @llvm.dbg.value(metadata i64 %145, metadata !474, metadata !DIExpression()), !dbg !477
  tail call void @llvm.dbg.value(metadata !DIArgList(i64 100, i64 %145), metadata !475, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !477
  %146 = trunc i64 %145 to i32, !dbg !494
  %147 = sub i32 100, %146, !dbg !494
  %148 = shl nsw i32 %147, 2, !dbg !494
  %149 = mul nsw i32 %148, %147, !dbg !496
  %150 = sitofp i32 %149 to double, !dbg !497
  %handler_result16 = call double @fSubHandlerDouble(double %150, double %2), !dbg !498
  %151 = fdiv double %handler_result16, %1, !dbg !498
  %152 = sub nsw i64 %101, %145, !dbg !499
  %handler_result17 = call double @fAddHandlerDouble(double %143, double %151), !dbg !500
  %153 = fdiv double -1.000000e+00, %handler_result17, !dbg !500
  %154 = getelementptr double, ptr %131, i64 %152, !dbg !501
  store double %153, ptr %154, align 8, !dbg !502, !tbaa !83
  %155 = add nuw nsw i64 %134, 2, !dbg !503
  tail call void @llvm.dbg.value(metadata i64 %155, metadata !474, metadata !DIExpression()), !dbg !477
  %156 = add i64 %135, 2, !dbg !489
  %157 = icmp eq i64 %156, %129, !dbg !489
  br i1 %157, label %184, label %132, !dbg !489, !llvm.loop !504

158:                                              ; preds = %158, %114
  %159 = phi double [ %111, %114 ], [ %179, %158 ]
  %160 = phi i64 [ 0, %114 ], [ %181, %158 ]
  %161 = phi i64 [ 0, %114 ], [ %182, %158 ]
  tail call void @llvm.dbg.value(metadata i64 %160, metadata !474, metadata !DIExpression()), !dbg !477
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 99, i64 %160), metadata !475, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !477
  %162 = trunc i64 %160 to i32, !dbg !506
  %163 = shl i32 %162, 1, !dbg !506
  %164 = sub i32 199, %163, !dbg !506
  %165 = mul nsw i32 %164, %164, !dbg !508
  %166 = sitofp i32 %165 to double, !dbg !509
  %handler_result18 = call double @fSubHandlerDouble(double %166, double %2), !dbg !510
  %167 = fdiv double %handler_result18, %1, !dbg !510
  %168 = sub nsw i64 %101, %160, !dbg !511
  %handler_result19 = call double @fAddHandlerDouble(double %159, double %167), !dbg !512
  %169 = fdiv double -1.000000e+00, %handler_result19, !dbg !512
  %170 = getelementptr double, ptr %116, i64 %168, !dbg !513
  store double %169, ptr %170, align 8, !dbg !514, !tbaa !83
  %171 = or disjoint i64 %160, 1, !dbg !515
  tail call void @llvm.dbg.value(metadata i64 %171, metadata !474, metadata !DIExpression()), !dbg !477
  tail call void @llvm.dbg.value(metadata i64 %171, metadata !474, metadata !DIExpression()), !dbg !477
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 99, i64 %171), metadata !475, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !477
  %172 = trunc i64 %171 to i32, !dbg !506
  %173 = shl i32 %172, 1, !dbg !506
  %174 = sub i32 199, %173, !dbg !506
  %175 = mul nsw i32 %174, %174, !dbg !508
  %176 = sitofp i32 %175 to double, !dbg !509
  %handler_result20 = call double @fSubHandlerDouble(double %176, double %2), !dbg !510
  %177 = fdiv double %handler_result20, %1, !dbg !510
  %178 = sub nsw i64 %101, %171, !dbg !511
  %handler_result21 = call double @fAddHandlerDouble(double %169, double %177), !dbg !512
  %179 = fdiv double -1.000000e+00, %handler_result21, !dbg !512
  %180 = getelementptr double, ptr %117, i64 %178, !dbg !513
  store double %179, ptr %180, align 8, !dbg !514, !tbaa !83
  %181 = add nuw nsw i64 %160, 2, !dbg !515
  tail call void @llvm.dbg.value(metadata i64 %181, metadata !474, metadata !DIExpression()), !dbg !477
  %182 = add i64 %161, 2, !dbg !484
  %183 = icmp eq i64 %182, %115, !dbg !484
  br i1 %183, label %199, label %158, !dbg !484, !llvm.loop !516

184:                                              ; preds = %132, %119
  %185 = phi double [ %125, %119 ], [ %153, %132 ]
  %186 = phi i64 [ 0, %119 ], [ %155, %132 ]
  %187 = icmp eq i64 %126, 0, !dbg !489
  br i1 %187, label %214, label %188, !dbg !489

188:                                              ; preds = %184
  tail call void @llvm.dbg.value(metadata i64 %186, metadata !474, metadata !DIExpression()), !dbg !477
  tail call void @llvm.dbg.value(metadata !DIArgList(i64 100, i64 %186), metadata !475, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !477
  %189 = trunc i64 %186 to i32, !dbg !494
  %190 = sub i32 100, %189, !dbg !494
  %191 = shl nsw i32 %190, 2, !dbg !494
  %192 = mul nsw i32 %191, %190, !dbg !496
  %193 = sitofp i32 %192 to double, !dbg !497
  %handler_result22 = call double @fSubHandlerDouble(double %193, double %2), !dbg !498
  %194 = fdiv double %handler_result22, %1, !dbg !498
  %195 = sub nsw i64 %101, %186, !dbg !499
  %196 = getelementptr inbounds double, ptr %5, i64 %195, !dbg !518
  %handler_result23 = call double @fAddHandlerDouble(double %185, double %194), !dbg !500
  %197 = fdiv double -1.000000e+00, %handler_result23, !dbg !500
  %198 = getelementptr double, ptr %196, i64 -1, !dbg !501
  store double %197, ptr %198, align 8, !dbg !502, !tbaa !83
  tail call void @llvm.dbg.value(metadata i64 %186, metadata !474, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !477
  br label %214, !dbg !519

199:                                              ; preds = %158, %105
  %200 = phi double [ %111, %105 ], [ %179, %158 ]
  %201 = phi i64 [ 0, %105 ], [ %181, %158 ]
  %202 = icmp eq i64 %112, 0, !dbg !484
  br i1 %202, label %214, label %203, !dbg !484

203:                                              ; preds = %199
  tail call void @llvm.dbg.value(metadata i64 %201, metadata !474, metadata !DIExpression()), !dbg !477
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 99, i64 %201), metadata !475, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !477
  %204 = trunc i64 %201 to i32, !dbg !506
  %205 = shl i32 %204, 1, !dbg !506
  %206 = sub i32 199, %205, !dbg !506
  %207 = mul nsw i32 %206, %206, !dbg !508
  %208 = sitofp i32 %207 to double, !dbg !509
  %handler_result24 = call double @fSubHandlerDouble(double %208, double %2), !dbg !510
  %209 = fdiv double %handler_result24, %1, !dbg !510
  %210 = sub nsw i64 %101, %201, !dbg !511
  %211 = getelementptr inbounds double, ptr %5, i64 %210, !dbg !520
  %handler_result25 = call double @fAddHandlerDouble(double %200, double %209), !dbg !512
  %212 = fdiv double -1.000000e+00, %handler_result25, !dbg !512
  %213 = getelementptr double, ptr %211, i64 -1, !dbg !513
  store double %212, ptr %213, align 8, !dbg !514, !tbaa !83
  tail call void @llvm.dbg.value(metadata i64 %201, metadata !474, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !477
  br label %214, !dbg !519

214:                                              ; preds = %203, %199, %188, %184
  %215 = load double, ptr %5, align 16, !dbg !519, !tbaa !83
  %handler_result26 = call double @fSubHandlerDouble(double %215, double %96), !dbg !521
  tail call void @llvm.dbg.value(metadata double %handler_result26, metadata !363, metadata !DIExpression()), !dbg !375
  tail call void @llvm.dbg.value(metadata double %handler_result26, metadata !366, metadata !DIExpression()), !dbg !375
  tail call void @llvm.dbg.value(metadata double %96, metadata !364, metadata !DIExpression()), !dbg !375
  tail call void @llvm.dbg.value(metadata double %2, metadata !465, metadata !DIExpression()), !dbg !523
  tail call void @llvm.dbg.value(metadata double %1, metadata !468, metadata !DIExpression()), !dbg !523
  tail call void @llvm.dbg.value(metadata double %handler_result26, metadata !469, metadata !DIExpression()), !dbg !523
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !470, metadata !DIExpression()), !dbg !523
  tail call void @llvm.dbg.value(metadata ptr undef, metadata !471, metadata !DIExpression()), !dbg !523
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !472, metadata !DIExpression()), !dbg !523
  tail call void @llvm.dbg.value(metadata i32 %97, metadata !473, metadata !DIExpression()), !dbg !523
  tail call void @llvm.dbg.value(metadata double %96, metadata !476, metadata !DIExpression()), !dbg !523
  store double %handler_result26, ptr %102, align 8, !dbg !521, !tbaa !83
  tail call void @llvm.dbg.value(metadata i32 0, metadata !474, metadata !DIExpression()), !dbg !523
  br i1 %98, label %230, label %216, !dbg !524

216:                                              ; preds = %214
  br i1 %103, label %217, label %328, !dbg !525

217:                                              ; preds = %216
  %218 = zext nneg i32 %97 to i64, !dbg !526
  %219 = sext i32 %94 to i64, !dbg !525
  %220 = shl nsw i64 %219, 3, !dbg !525
  %221 = sub nsw i64 792, %220, !dbg !525
  %222 = getelementptr i8, ptr %5, i64 %221, !dbg !525
  %223 = load double, ptr %222, align 8
  %224 = and i64 %218, 1, !dbg !525
  %225 = icmp eq i32 %94, 98, !dbg !525
  br i1 %225, label %313, label %226, !dbg !525

226:                                              ; preds = %217
  %227 = and i64 %218, 2147483646, !dbg !525
  %228 = getelementptr double, ptr %5, i64 -1, !dbg !525
  %229 = getelementptr double, ptr %5, i64 -1, !dbg !525
  br label %270, !dbg !525

230:                                              ; preds = %214
  br i1 %103, label %231, label %328, !dbg !527

231:                                              ; preds = %230
  %232 = zext nneg i32 %97 to i64, !dbg !528
  %233 = sext i32 %94 to i64, !dbg !527
  %234 = shl nsw i64 %233, 3, !dbg !527
  %235 = sub nsw i64 792, %234, !dbg !527
  %236 = getelementptr i8, ptr %5, i64 %235, !dbg !527
  %237 = load double, ptr %236, align 8
  %238 = and i64 %232, 1, !dbg !527
  %239 = icmp eq i32 %94, 98, !dbg !527
  br i1 %239, label %298, label %240, !dbg !527

240:                                              ; preds = %231
  %241 = and i64 %232, 2147483646, !dbg !527
  %242 = getelementptr double, ptr %5, i64 -1, !dbg !527
  %243 = getelementptr double, ptr %5, i64 -1, !dbg !527
  br label %244, !dbg !527

244:                                              ; preds = %244, %240
  %245 = phi double [ %237, %240 ], [ %265, %244 ]
  %246 = phi i64 [ 0, %240 ], [ %267, %244 ]
  %247 = phi i64 [ 0, %240 ], [ %268, %244 ]
  tail call void @llvm.dbg.value(metadata i64 %246, metadata !474, metadata !DIExpression()), !dbg !523
  tail call void @llvm.dbg.value(metadata !DIArgList(i64 100, i64 %246), metadata !475, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !523
  %248 = trunc i64 %246 to i32, !dbg !529
  %249 = sub i32 100, %248, !dbg !529
  %250 = shl nsw i32 %249, 2, !dbg !529
  %251 = mul nsw i32 %250, %249, !dbg !530
  %252 = sitofp i32 %251 to double, !dbg !531
  %handler_result27 = call double @fSubHandlerDouble(double %252, double %2), !dbg !532
  %253 = fdiv double %handler_result27, %1, !dbg !532
  %254 = sub nsw i64 %101, %246, !dbg !533
  %handler_result28 = call double @fAddHandlerDouble(double %245, double %253), !dbg !534
  %255 = fdiv double -1.000000e+00, %handler_result28, !dbg !534
  %256 = getelementptr double, ptr %242, i64 %254, !dbg !535
  store double %255, ptr %256, align 8, !dbg !536, !tbaa !83
  %257 = or disjoint i64 %246, 1, !dbg !537
  tail call void @llvm.dbg.value(metadata i64 %257, metadata !474, metadata !DIExpression()), !dbg !523
  tail call void @llvm.dbg.value(metadata i64 %257, metadata !474, metadata !DIExpression()), !dbg !523
  tail call void @llvm.dbg.value(metadata !DIArgList(i64 100, i64 %257), metadata !475, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !523
  %258 = trunc i64 %257 to i32, !dbg !529
  %259 = sub i32 100, %258, !dbg !529
  %260 = shl nsw i32 %259, 2, !dbg !529
  %261 = mul nsw i32 %260, %259, !dbg !530
  %262 = sitofp i32 %261 to double, !dbg !531
  %handler_result29 = call double @fSubHandlerDouble(double %262, double %2), !dbg !532
  %263 = fdiv double %handler_result29, %1, !dbg !532
  %264 = sub nsw i64 %101, %257, !dbg !533
  %handler_result30 = call double @fAddHandlerDouble(double %255, double %263), !dbg !534
  %265 = fdiv double -1.000000e+00, %handler_result30, !dbg !534
  %266 = getelementptr double, ptr %243, i64 %264, !dbg !535
  store double %265, ptr %266, align 8, !dbg !536, !tbaa !83
  %267 = add nuw nsw i64 %246, 2, !dbg !537
  tail call void @llvm.dbg.value(metadata i64 %267, metadata !474, metadata !DIExpression()), !dbg !523
  %268 = add i64 %247, 2, !dbg !527
  %269 = icmp eq i64 %268, %241, !dbg !527
  br i1 %269, label %298, label %244, !dbg !527, !llvm.loop !538

270:                                              ; preds = %270, %226
  %271 = phi double [ %223, %226 ], [ %291, %270 ]
  %272 = phi i64 [ 0, %226 ], [ %293, %270 ]
  %273 = phi i64 [ 0, %226 ], [ %294, %270 ]
  tail call void @llvm.dbg.value(metadata i64 %272, metadata !474, metadata !DIExpression()), !dbg !523
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 99, i64 %272), metadata !475, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !523
  %274 = trunc i64 %272 to i32, !dbg !540
  %275 = shl i32 %274, 1, !dbg !540
  %276 = sub i32 199, %275, !dbg !540
  %277 = mul nsw i32 %276, %276, !dbg !541
  %278 = sitofp i32 %277 to double, !dbg !542
  %handler_result31 = call double @fSubHandlerDouble(double %278, double %2), !dbg !543
  %279 = fdiv double %handler_result31, %1, !dbg !543
  %280 = sub nsw i64 %101, %272, !dbg !544
  %handler_result32 = call double @fAddHandlerDouble(double %271, double %279), !dbg !545
  %281 = fdiv double -1.000000e+00, %handler_result32, !dbg !545
  %282 = getelementptr double, ptr %228, i64 %280, !dbg !546
  store double %281, ptr %282, align 8, !dbg !547, !tbaa !83
  %283 = or disjoint i64 %272, 1, !dbg !548
  tail call void @llvm.dbg.value(metadata i64 %283, metadata !474, metadata !DIExpression()), !dbg !523
  tail call void @llvm.dbg.value(metadata i64 %283, metadata !474, metadata !DIExpression()), !dbg !523
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 99, i64 %283), metadata !475, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !523
  %284 = trunc i64 %283 to i32, !dbg !540
  %285 = shl i32 %284, 1, !dbg !540
  %286 = sub i32 199, %285, !dbg !540
  %287 = mul nsw i32 %286, %286, !dbg !541
  %288 = sitofp i32 %287 to double, !dbg !542
  %handler_result33 = call double @fSubHandlerDouble(double %288, double %2), !dbg !543
  %289 = fdiv double %handler_result33, %1, !dbg !543
  %290 = sub nsw i64 %101, %283, !dbg !544
  %handler_result34 = call double @fAddHandlerDouble(double %281, double %289), !dbg !545
  %291 = fdiv double -1.000000e+00, %handler_result34, !dbg !545
  %292 = getelementptr double, ptr %229, i64 %290, !dbg !546
  store double %291, ptr %292, align 8, !dbg !547, !tbaa !83
  %293 = add nuw nsw i64 %272, 2, !dbg !548
  tail call void @llvm.dbg.value(metadata i64 %293, metadata !474, metadata !DIExpression()), !dbg !523
  %294 = add i64 %273, 2, !dbg !525
  %295 = icmp eq i64 %294, %227, !dbg !525
  br i1 %295, label %313, label %270, !dbg !525, !llvm.loop !549

296:                                              ; preds = %118, %104
  %297 = load double, ptr %5, align 16, !dbg !519, !tbaa !83
  %handler_result35 = call double @fSubHandlerDouble(double %297, double %96), !dbg !521
  store double %handler_result35, ptr %102, align 8, !dbg !521, !tbaa !83
  br label %328, !dbg !551

298:                                              ; preds = %244, %231
  %299 = phi double [ %237, %231 ], [ %265, %244 ]
  %300 = phi i64 [ 0, %231 ], [ %267, %244 ]
  %301 = icmp eq i64 %238, 0, !dbg !527
  br i1 %301, label %328, label %302, !dbg !527

302:                                              ; preds = %298
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !474, metadata !DIExpression()), !dbg !523
  tail call void @llvm.dbg.value(metadata !DIArgList(i64 100, i64 %300), metadata !475, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !523
  %303 = trunc i64 %300 to i32, !dbg !529
  %304 = sub i32 100, %303, !dbg !529
  %305 = shl nsw i32 %304, 2, !dbg !529
  %306 = mul nsw i32 %305, %304, !dbg !530
  %307 = sitofp i32 %306 to double, !dbg !531
  %handler_result36 = call double @fSubHandlerDouble(double %307, double %2), !dbg !532
  %308 = fdiv double %handler_result36, %1, !dbg !532
  %309 = sub nsw i64 %101, %300, !dbg !533
  %310 = getelementptr inbounds double, ptr %5, i64 %309, !dbg !552
  %handler_result37 = call double @fAddHandlerDouble(double %299, double %308), !dbg !534
  %311 = fdiv double -1.000000e+00, %handler_result37, !dbg !534
  %312 = getelementptr double, ptr %310, i64 -1, !dbg !535
  store double %311, ptr %312, align 8, !dbg !536, !tbaa !83
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !474, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !523
  br label %328, !dbg !551

313:                                              ; preds = %270, %217
  %314 = phi double [ %223, %217 ], [ %291, %270 ]
  %315 = phi i64 [ 0, %217 ], [ %293, %270 ]
  %316 = icmp eq i64 %224, 0, !dbg !525
  br i1 %316, label %328, label %317, !dbg !525

317:                                              ; preds = %313
  tail call void @llvm.dbg.value(metadata i64 %315, metadata !474, metadata !DIExpression()), !dbg !523
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 99, i64 %315), metadata !475, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !523
  %318 = trunc i64 %315 to i32, !dbg !540
  %319 = shl i32 %318, 1, !dbg !540
  %320 = sub i32 199, %319, !dbg !540
  %321 = mul nsw i32 %320, %320, !dbg !541
  %322 = sitofp i32 %321 to double, !dbg !542
  %handler_result38 = call double @fSubHandlerDouble(double %322, double %2), !dbg !543
  %323 = fdiv double %handler_result38, %1, !dbg !543
  %324 = sub nsw i64 %101, %315, !dbg !544
  %325 = getelementptr inbounds double, ptr %5, i64 %324, !dbg !553
  %handler_result39 = call double @fAddHandlerDouble(double %314, double %323), !dbg !545
  %326 = fdiv double -1.000000e+00, %handler_result39, !dbg !545
  %327 = getelementptr double, ptr %325, i64 -1, !dbg !546
  store double %326, ptr %327, align 8, !dbg !547, !tbaa !83
  tail call void @llvm.dbg.value(metadata i64 %315, metadata !474, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !523
  br label %328, !dbg !551

328:                                              ; preds = %317, %313, %302, %298, %296, %230, %216
  %329 = phi double [ %handler_result26, %216 ], [ %handler_result26, %230 ], [ %handler_result35, %296 ], [ %handler_result26, %298 ], [ %handler_result26, %302 ], [ %handler_result26, %313 ], [ %handler_result26, %317 ]
  tail call void @llvm.dbg.value(metadata double poison, metadata !364, metadata !DIExpression()), !dbg !375
  %330 = load double, ptr %5, align 16, !dbg !551, !tbaa !83
  %handler_result40 = call double @fSubHandlerDouble(double %330, double %96), !dbg !554
  tail call void @llvm.dbg.value(metadata double %handler_result40, metadata !364, metadata !DIExpression()), !dbg !375
  tail call void @llvm.dbg.value(metadata double %329, metadata !363, metadata !DIExpression()), !dbg !375
  tail call void @llvm.dbg.value(metadata double %329, metadata !366, metadata !DIExpression()), !dbg !375
  tail call void @llvm.dbg.value(metadata double %100, metadata !365, metadata !DIExpression()), !dbg !375
  %handler_result41 = call double @fSubHandlerDouble(double %329, double %100), !dbg !556
  tail call void @llvm.dbg.value(metadata double %handler_result41, metadata !367, metadata !DIExpression()), !dbg !375
  %handler_result42 = call double @fSubHandlerDouble(double %handler_result40, double %329), !dbg !557
  tail call void @llvm.dbg.value(metadata double %handler_result42, metadata !368, metadata !DIExpression()), !dbg !375
  %handler_result43 = call double @fSubHandlerDouble(double %handler_result41, double %handler_result42), !dbg !558
  tail call void @llvm.dbg.value(metadata double %handler_result43, metadata !369, metadata !DIExpression()), !dbg !375
  %331 = tail call double @llvm.fabs.f64(double %handler_result43), !dbg !558
  %332 = fcmp olt double %331, 1.000000e-10, !dbg !560
  br i1 %332, label %456, label %333, !dbg !561

333:                                              ; preds = %328
  %334 = zext i32 %97 to i64
  %335 = sext i32 %94 to i64, !dbg !561
  %336 = shl nsw i64 %335, 3, !dbg !561
  %337 = sub nsw i64 792, %336, !dbg !561
  %338 = getelementptr i8, ptr %5, i64 %337, !dbg !561
  %339 = sext i32 %94 to i64, !dbg !561
  %340 = shl nsw i64 %339, 3, !dbg !561
  %341 = sub nsw i64 792, %340, !dbg !561
  %342 = getelementptr i8, ptr %5, i64 %341, !dbg !561
  %343 = add nsw i64 %334, -1, !dbg !561
  %344 = and i64 %334, 1
  %345 = icmp eq i64 %343, 0
  %346 = and i64 %334, 4294967294
  %347 = getelementptr double, ptr %5, i64 -1
  %348 = getelementptr double, ptr %5, i64 -1
  %349 = icmp eq i64 %344, 0
  %350 = getelementptr double, ptr %5, i64 -1, !dbg !561
  %351 = and i64 %334, 1
  %352 = icmp eq i64 %343, 0
  %353 = and i64 %334, 4294967294
  %354 = getelementptr double, ptr %5, i64 -1
  %355 = getelementptr double, ptr %5, i64 -1
  %356 = icmp eq i64 %351, 0
  %357 = getelementptr double, ptr %5, i64 -1, !dbg !561
  br label %358, !dbg !561

358:                                              ; preds = %452, %333
  %359 = phi double [ %handler_result43, %333 ], [ %handler_result60, %452 ]
  %360 = phi double [ %handler_result42, %333 ], [ %handler_result59, %452 ]
  %361 = phi double [ %handler_result41, %333 ], [ %handler_result58, %452 ]
  %362 = phi double [ %handler_result40, %333 ], [ %handler_result57, %452 ]
  %363 = phi double [ %329, %333 ], [ %367, %452 ]
  %364 = phi double [ %100, %333 ], [ %363, %452 ]
  tail call void @llvm.dbg.value(metadata double %363, metadata !366, metadata !DIExpression()), !dbg !375
  tail call void @llvm.dbg.value(metadata double %364, metadata !365, metadata !DIExpression()), !dbg !375
  %365 = fmul double %361, %363, !dbg !562
  %366 = fmul double %364, %360, !dbg !563
  %handler_result44 = call double @fSubHandlerDouble(double %365, double %366), !dbg !564
  %367 = fdiv double %handler_result44, %359, !dbg !564
  tail call void @llvm.dbg.value(metadata double %367, metadata !370, metadata !DIExpression()), !dbg !375
  tail call void @llvm.dbg.value(metadata double %363, metadata !365, metadata !DIExpression()), !dbg !375
  tail call void @llvm.dbg.value(metadata double %362, metadata !363, metadata !DIExpression()), !dbg !375
  tail call void @llvm.dbg.value(metadata double %367, metadata !366, metadata !DIExpression()), !dbg !375
  tail call void @llvm.dbg.value(metadata double %96, metadata !364, metadata !DIExpression()), !dbg !375
  tail call void @llvm.dbg.value(metadata double %2, metadata !465, metadata !DIExpression()), !dbg !565
  tail call void @llvm.dbg.value(metadata double %1, metadata !468, metadata !DIExpression()), !dbg !565
  tail call void @llvm.dbg.value(metadata double %367, metadata !469, metadata !DIExpression()), !dbg !565
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !470, metadata !DIExpression()), !dbg !565
  tail call void @llvm.dbg.value(metadata ptr undef, metadata !471, metadata !DIExpression()), !dbg !565
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !472, metadata !DIExpression()), !dbg !565
  tail call void @llvm.dbg.value(metadata i32 %97, metadata !473, metadata !DIExpression()), !dbg !565
  tail call void @llvm.dbg.value(metadata double %96, metadata !476, metadata !DIExpression()), !dbg !565
  store double %367, ptr %102, align 8, !dbg !567, !tbaa !83
  tail call void @llvm.dbg.value(metadata i32 0, metadata !474, metadata !DIExpression()), !dbg !565
  br i1 %98, label %371, label %368, !dbg !568

368:                                              ; preds = %358
  br i1 %103, label %369, label %452, !dbg !569

369:                                              ; preds = %368
  %370 = load double, ptr %338, align 8
  br i1 %345, label %439, label %400, !dbg !569

371:                                              ; preds = %358
  br i1 %103, label %372, label %452, !dbg !570

372:                                              ; preds = %371
  %373 = load double, ptr %342, align 8
  br i1 %352, label %426, label %374, !dbg !570

374:                                              ; preds = %374, %372
  %375 = phi double [ %395, %374 ], [ %373, %372 ]
  %376 = phi i64 [ %397, %374 ], [ 0, %372 ]
  %377 = phi i64 [ %398, %374 ], [ 0, %372 ]
  tail call void @llvm.dbg.value(metadata i64 %376, metadata !474, metadata !DIExpression()), !dbg !565
  tail call void @llvm.dbg.value(metadata !DIArgList(i64 100, i64 %376), metadata !475, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !565
  %378 = trunc i64 %376 to i32, !dbg !571
  %379 = sub i32 100, %378, !dbg !571
  %380 = shl nsw i32 %379, 2, !dbg !571
  %381 = mul nsw i32 %380, %379, !dbg !572
  %382 = sitofp i32 %381 to double, !dbg !573
  %handler_result45 = call double @fSubHandlerDouble(double %382, double %2), !dbg !574
  %383 = fdiv double %handler_result45, %1, !dbg !574
  %384 = sub nsw i64 %101, %376, !dbg !575
  %handler_result46 = call double @fAddHandlerDouble(double %375, double %383), !dbg !576
  %385 = fdiv double -1.000000e+00, %handler_result46, !dbg !576
  %386 = getelementptr double, ptr %354, i64 %384, !dbg !577
  store double %385, ptr %386, align 8, !dbg !578, !tbaa !83
  %387 = or disjoint i64 %376, 1, !dbg !579
  tail call void @llvm.dbg.value(metadata i64 %387, metadata !474, metadata !DIExpression()), !dbg !565
  tail call void @llvm.dbg.value(metadata i64 %387, metadata !474, metadata !DIExpression()), !dbg !565
  tail call void @llvm.dbg.value(metadata !DIArgList(i64 100, i64 %387), metadata !475, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !565
  %388 = trunc i64 %387 to i32, !dbg !571
  %389 = sub i32 100, %388, !dbg !571
  %390 = shl nsw i32 %389, 2, !dbg !571
  %391 = mul nsw i32 %390, %389, !dbg !572
  %392 = sitofp i32 %391 to double, !dbg !573
  %handler_result47 = call double @fSubHandlerDouble(double %392, double %2), !dbg !574
  %393 = fdiv double %handler_result47, %1, !dbg !574
  %394 = sub nsw i64 %101, %387, !dbg !575
  %handler_result48 = call double @fAddHandlerDouble(double %385, double %393), !dbg !576
  %395 = fdiv double -1.000000e+00, %handler_result48, !dbg !576
  %396 = getelementptr double, ptr %355, i64 %394, !dbg !577
  store double %395, ptr %396, align 8, !dbg !578, !tbaa !83
  %397 = add nuw nsw i64 %376, 2, !dbg !579
  tail call void @llvm.dbg.value(metadata i64 %397, metadata !474, metadata !DIExpression()), !dbg !565
  %398 = add i64 %377, 2, !dbg !570
  %399 = icmp eq i64 %398, %353, !dbg !570
  br i1 %399, label %426, label %374, !dbg !570, !llvm.loop !580

400:                                              ; preds = %400, %369
  %401 = phi double [ %421, %400 ], [ %370, %369 ]
  %402 = phi i64 [ %423, %400 ], [ 0, %369 ]
  %403 = phi i64 [ %424, %400 ], [ 0, %369 ]
  tail call void @llvm.dbg.value(metadata i64 %402, metadata !474, metadata !DIExpression()), !dbg !565
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 99, i64 %402), metadata !475, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !565
  %404 = trunc i64 %402 to i32, !dbg !582
  %405 = shl i32 %404, 1, !dbg !582
  %406 = sub i32 199, %405, !dbg !582
  %407 = mul nsw i32 %406, %406, !dbg !583
  %408 = sitofp i32 %407 to double, !dbg !584
  %handler_result49 = call double @fSubHandlerDouble(double %408, double %2), !dbg !585
  %409 = fdiv double %handler_result49, %1, !dbg !585
  %410 = sub nsw i64 %101, %402, !dbg !586
  %handler_result50 = call double @fAddHandlerDouble(double %401, double %409), !dbg !587
  %411 = fdiv double -1.000000e+00, %handler_result50, !dbg !587
  %412 = getelementptr double, ptr %347, i64 %410, !dbg !588
  store double %411, ptr %412, align 8, !dbg !589, !tbaa !83
  %413 = or disjoint i64 %402, 1, !dbg !590
  tail call void @llvm.dbg.value(metadata i64 %413, metadata !474, metadata !DIExpression()), !dbg !565
  tail call void @llvm.dbg.value(metadata i64 %413, metadata !474, metadata !DIExpression()), !dbg !565
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 99, i64 %413), metadata !475, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !565
  %414 = trunc i64 %413 to i32, !dbg !582
  %415 = shl i32 %414, 1, !dbg !582
  %416 = sub i32 199, %415, !dbg !582
  %417 = mul nsw i32 %416, %416, !dbg !583
  %418 = sitofp i32 %417 to double, !dbg !584
  %handler_result51 = call double @fSubHandlerDouble(double %418, double %2), !dbg !585
  %419 = fdiv double %handler_result51, %1, !dbg !585
  %420 = sub nsw i64 %101, %413, !dbg !586
  %handler_result52 = call double @fAddHandlerDouble(double %411, double %419), !dbg !587
  %421 = fdiv double -1.000000e+00, %handler_result52, !dbg !587
  %422 = getelementptr double, ptr %348, i64 %420, !dbg !588
  store double %421, ptr %422, align 8, !dbg !589, !tbaa !83
  %423 = add nuw nsw i64 %402, 2, !dbg !590
  tail call void @llvm.dbg.value(metadata i64 %423, metadata !474, metadata !DIExpression()), !dbg !565
  %424 = add i64 %403, 2, !dbg !569
  %425 = icmp eq i64 %424, %346, !dbg !569
  br i1 %425, label %439, label %400, !dbg !569, !llvm.loop !591

426:                                              ; preds = %374, %372
  %427 = phi double [ %373, %372 ], [ %395, %374 ]
  %428 = phi i64 [ 0, %372 ], [ %397, %374 ]
  br i1 %356, label %452, label %429, !dbg !570

429:                                              ; preds = %426
  tail call void @llvm.dbg.value(metadata i64 %428, metadata !474, metadata !DIExpression()), !dbg !565
  tail call void @llvm.dbg.value(metadata !DIArgList(i64 100, i64 %428), metadata !475, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !565
  %430 = trunc i64 %428 to i32, !dbg !571
  %431 = sub i32 100, %430, !dbg !571
  %432 = shl nsw i32 %431, 2, !dbg !571
  %433 = mul nsw i32 %432, %431, !dbg !572
  %434 = sitofp i32 %433 to double, !dbg !573
  %handler_result53 = call double @fSubHandlerDouble(double %434, double %2), !dbg !574
  %435 = fdiv double %handler_result53, %1, !dbg !574
  %436 = sub nsw i64 %101, %428, !dbg !575
  %handler_result54 = call double @fAddHandlerDouble(double %427, double %435), !dbg !576
  %437 = fdiv double -1.000000e+00, %handler_result54, !dbg !576
  %438 = getelementptr double, ptr %357, i64 %436, !dbg !577
  store double %437, ptr %438, align 8, !dbg !578, !tbaa !83
  tail call void @llvm.dbg.value(metadata i64 %428, metadata !474, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !565
  br label %452, !dbg !551

439:                                              ; preds = %400, %369
  %440 = phi double [ %370, %369 ], [ %421, %400 ]
  %441 = phi i64 [ 0, %369 ], [ %423, %400 ]
  br i1 %349, label %452, label %442, !dbg !569

442:                                              ; preds = %439
  tail call void @llvm.dbg.value(metadata i64 %441, metadata !474, metadata !DIExpression()), !dbg !565
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 99, i64 %441), metadata !475, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !565
  %443 = trunc i64 %441 to i32, !dbg !582
  %444 = shl i32 %443, 1, !dbg !582
  %445 = sub i32 199, %444, !dbg !582
  %446 = mul nsw i32 %445, %445, !dbg !583
  %447 = sitofp i32 %446 to double, !dbg !584
  %handler_result55 = call double @fSubHandlerDouble(double %447, double %2), !dbg !585
  %448 = fdiv double %handler_result55, %1, !dbg !585
  %449 = sub nsw i64 %101, %441, !dbg !586
  %handler_result56 = call double @fAddHandlerDouble(double %440, double %448), !dbg !587
  %450 = fdiv double -1.000000e+00, %handler_result56, !dbg !587
  %451 = getelementptr double, ptr %350, i64 %449, !dbg !588
  store double %450, ptr %451, align 8, !dbg !589, !tbaa !83
  tail call void @llvm.dbg.value(metadata i64 %441, metadata !474, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !565
  br label %452, !dbg !551

452:                                              ; preds = %442, %439, %429, %426, %371, %368
  tail call void @llvm.dbg.value(metadata double poison, metadata !364, metadata !DIExpression()), !dbg !375
  %453 = load double, ptr %5, align 16, !dbg !551, !tbaa !83
  %handler_result57 = call double @fSubHandlerDouble(double %453, double %96), !dbg !554
  tail call void @llvm.dbg.value(metadata double %handler_result57, metadata !364, metadata !DIExpression()), !dbg !375
  tail call void @llvm.dbg.value(metadata double %362, metadata !363, metadata !DIExpression()), !dbg !375
  tail call void @llvm.dbg.value(metadata double %367, metadata !366, metadata !DIExpression()), !dbg !375
  tail call void @llvm.dbg.value(metadata double %363, metadata !365, metadata !DIExpression()), !dbg !375
  %handler_result58 = call double @fSubHandlerDouble(double %362, double %363), !dbg !556
  tail call void @llvm.dbg.value(metadata double %handler_result58, metadata !367, metadata !DIExpression()), !dbg !375
  %handler_result59 = call double @fSubHandlerDouble(double %handler_result57, double %367), !dbg !557
  tail call void @llvm.dbg.value(metadata double %handler_result59, metadata !368, metadata !DIExpression()), !dbg !375
  %handler_result60 = call double @fSubHandlerDouble(double %handler_result58, double %handler_result59), !dbg !558
  tail call void @llvm.dbg.value(metadata double %handler_result60, metadata !369, metadata !DIExpression()), !dbg !375
  %454 = tail call double @llvm.fabs.f64(double %handler_result60), !dbg !558
  %455 = fcmp olt double %454, 1.000000e-10, !dbg !560
  br i1 %455, label %456, label %358, !dbg !561, !llvm.loop !593

456:                                              ; preds = %452, %328
  %457 = add nsw i32 %94, 1, !dbg !596
  %458 = shl nsw i32 %457, 1, !dbg !597
  %459 = sitofp i32 %458 to double, !dbg !598
  %460 = sext i32 %94 to i64, !dbg !599
  %461 = getelementptr inbounds double, ptr %3, i64 %460, !dbg !599
  %462 = load double, ptr %461, align 8, !dbg !599, !tbaa !83
  %463 = fmul double %462, %459, !dbg !600
  %handler_result61 = call double @fAddHandlerDouble(double %95, double %463), !dbg !601
  tail call void @llvm.dbg.value(metadata double %handler_result61, metadata !371, metadata !DIExpression()), !dbg !375
  tail call void @llvm.dbg.value(metadata i32 %457, metadata !360, metadata !DIExpression()), !dbg !375
  br i1 %103, label %464, label %466, !dbg !601

464:                                              ; preds = %456
  %465 = xor i32 %94, -1
  br label %472, !dbg !601

466:                                              ; preds = %499, %456
  %467 = phi double [ %handler_result61, %456 ], [ %handler_result62, %499 ], !dbg !375
  tail call void @llvm.dbg.value(metadata i32 0, metadata !360, metadata !DIExpression()), !dbg !375
  %468 = getelementptr double, ptr %3, i64 1, !dbg !603
  %469 = getelementptr double, ptr %3, i64 2, !dbg !603
  %470 = getelementptr double, ptr %3, i64 3, !dbg !603
  %471 = getelementptr double, ptr %3, i64 4, !dbg !603
  br label %503, !dbg !603

472:                                              ; preds = %499, %464
  %473 = phi double [ %handler_result61, %464 ], [ %handler_result62, %499 ]
  %474 = phi i32 [ %457, %464 ], [ %501, %499 ]
  tail call void @llvm.dbg.value(metadata double %473, metadata !371, metadata !DIExpression()), !dbg !375
  tail call void @llvm.dbg.value(metadata i32 %474, metadata !360, metadata !DIExpression()), !dbg !375
  %475 = add i32 %474, %465, !dbg !605
  %476 = sext i32 %475 to i64, !dbg !608
  %477 = getelementptr inbounds [100 x double], ptr %5, i64 0, i64 %476, !dbg !608
  %478 = load double, ptr %477, align 8, !dbg !608, !tbaa !83
  %479 = sext i32 %474 to i64, !dbg !609
  %480 = getelementptr double, ptr %3, i64 %479, !dbg !609
  %481 = getelementptr double, ptr %480, i64 -1, !dbg !609
  %482 = load double, ptr %481, align 8, !dbg !609, !tbaa !83
  %483 = fmul double %478, %482, !dbg !610
  store double %483, ptr %480, align 8, !dbg !611, !tbaa !83
  %484 = shl i32 %474, 1, !dbg !612
  %485 = add i32 %484, 2, !dbg !612
  %486 = sitofp i32 %485 to double, !dbg !613
  %487 = fmul double %483, %486, !dbg !614
  %handler_result62 = call double @fAddHandlerDouble(double %473, double %487), !dbg !615
  tail call void @llvm.dbg.value(metadata double %handler_result62, metadata !371, metadata !DIExpression()), !dbg !375
  %488 = tail call double @llvm.fabs.f64(double %483), !dbg !615
  %489 = fcmp olt double %488, 0x3BC79CA10C924223, !dbg !617
  br i1 %489, label %490, label %499, !dbg !618

490:                                              ; preds = %472
  %491 = shl nsw i64 %479, 3, !dbg !619
  %492 = getelementptr i8, ptr %3, i64 %491, !dbg !619
  %493 = tail call i32 @llvm.smax.i32(i32 %474, i32 99), !dbg !619
  %494 = sub i32 %493, %474, !dbg !619
  %495 = zext i32 %494 to i64, !dbg !619
  %496 = shl nuw nsw i64 %495, 3, !dbg !619
  %497 = add nuw nsw i64 %496, 8, !dbg !619
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %492, i8 0, i64 %497, i1 false), !dbg !622, !tbaa !83
  %498 = add nuw nsw i32 %493, 1, !dbg !619
  tail call void @llvm.dbg.value(metadata i64 undef, metadata !360, metadata !DIExpression()), !dbg !375
  br label %499, !dbg !624

499:                                              ; preds = %490, %472
  %500 = phi i32 [ %474, %472 ], [ %498, %490 ], !dbg !625
  tail call void @llvm.dbg.value(metadata i32 %500, metadata !360, metadata !DIExpression()), !dbg !375
  %501 = add nsw i32 %500, 1, !dbg !624
  tail call void @llvm.dbg.value(metadata double %handler_result62, metadata !371, metadata !DIExpression()), !dbg !375
  tail call void @llvm.dbg.value(metadata i32 %501, metadata !360, metadata !DIExpression()), !dbg !375
  %502 = icmp slt i32 %500, 99, !dbg !626
  br i1 %502, label %472, label %466, !dbg !601, !llvm.loop !627

503:                                              ; preds = %503, %466
  %504 = phi i64 [ 0, %466 ], [ %520, %503 ]
  tail call void @llvm.dbg.value(metadata i64 %504, metadata !360, metadata !DIExpression()), !dbg !375
  %505 = getelementptr inbounds double, ptr %3, i64 %504, !dbg !629
  %506 = load double, ptr %505, align 8, !dbg !631, !tbaa !83
  %507 = fdiv double %506, %467, !dbg !631
  store double %507, ptr %505, align 8, !dbg !631, !tbaa !83
  tail call void @llvm.dbg.value(metadata i64 %504, metadata !360, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !375
  tail call void @llvm.dbg.value(metadata i64 %504, metadata !360, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !375
  %508 = getelementptr double, ptr %468, i64 %504, !dbg !629
  %509 = load double, ptr %508, align 8, !dbg !631, !tbaa !83
  %510 = fdiv double %509, %467, !dbg !631
  store double %510, ptr %508, align 8, !dbg !631, !tbaa !83
  tail call void @llvm.dbg.value(metadata i64 %504, metadata !360, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !375
  tail call void @llvm.dbg.value(metadata i64 %504, metadata !360, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !375
  %511 = getelementptr double, ptr %469, i64 %504, !dbg !629
  %512 = load double, ptr %511, align 8, !dbg !631, !tbaa !83
  %513 = fdiv double %512, %467, !dbg !631
  store double %513, ptr %511, align 8, !dbg !631, !tbaa !83
  tail call void @llvm.dbg.value(metadata i64 %504, metadata !360, metadata !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value)), !dbg !375
  tail call void @llvm.dbg.value(metadata i64 %504, metadata !360, metadata !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value)), !dbg !375
  %514 = getelementptr double, ptr %470, i64 %504, !dbg !629
  %515 = load double, ptr %514, align 8, !dbg !631, !tbaa !83
  %516 = fdiv double %515, %467, !dbg !631
  store double %516, ptr %514, align 8, !dbg !631, !tbaa !83
  tail call void @llvm.dbg.value(metadata i64 %504, metadata !360, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !375
  tail call void @llvm.dbg.value(metadata i64 %504, metadata !360, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !375
  %517 = getelementptr double, ptr %471, i64 %504, !dbg !629
  %518 = load double, ptr %517, align 8, !dbg !631, !tbaa !83
  %519 = fdiv double %518, %467, !dbg !631
  store double %519, ptr %517, align 8, !dbg !631, !tbaa !83
  %520 = add nuw nsw i64 %504, 5, !dbg !632
  tail call void @llvm.dbg.value(metadata i64 %520, metadata !360, metadata !DIExpression()), !dbg !375
  %521 = icmp eq i64 %520, 100, !dbg !633
  br i1 %521, label %522, label %503, !dbg !603, !llvm.loop !634

522:                                              ; preds = %503, %10, %4
  %523 = phi i32 [ 0, %10 ], [ -1, %4 ], [ 0, %503 ], !dbg !375
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %5) #4, !dbg !636
  ret i32 %523, !dbg !636
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

declare double @fAddHandlerDouble(double, double)

declare double @fSubHandlerDouble(double, double)

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!42, !43, !44, !45, !46, !47, !48}
!llvm.ident = !{!49}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "mathieu_coeff.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "b586d5f774eff6f2d447a602fb6d9f6e")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 39, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "../gsl/gsl_errno.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "3ff14ff6df19564f3d7caf1e8e622626")
!5 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!6 = !{!7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41}
!7 = !DIEnumerator(name: "GSL_SUCCESS", value: 0)
!8 = !DIEnumerator(name: "GSL_FAILURE", value: -1)
!9 = !DIEnumerator(name: "GSL_CONTINUE", value: -2)
!10 = !DIEnumerator(name: "GSL_EDOM", value: 1)
!11 = !DIEnumerator(name: "GSL_ERANGE", value: 2)
!12 = !DIEnumerator(name: "GSL_EFAULT", value: 3)
!13 = !DIEnumerator(name: "GSL_EINVAL", value: 4)
!14 = !DIEnumerator(name: "GSL_EFAILED", value: 5)
!15 = !DIEnumerator(name: "GSL_EFACTOR", value: 6)
!16 = !DIEnumerator(name: "GSL_ESANITY", value: 7)
!17 = !DIEnumerator(name: "GSL_ENOMEM", value: 8)
!18 = !DIEnumerator(name: "GSL_EBADFUNC", value: 9)
!19 = !DIEnumerator(name: "GSL_ERUNAWAY", value: 10)
!20 = !DIEnumerator(name: "GSL_EMAXITER", value: 11)
!21 = !DIEnumerator(name: "GSL_EZERODIV", value: 12)
!22 = !DIEnumerator(name: "GSL_EBADTOL", value: 13)
!23 = !DIEnumerator(name: "GSL_ETOL", value: 14)
!24 = !DIEnumerator(name: "GSL_EUNDRFLW", value: 15)
!25 = !DIEnumerator(name: "GSL_EOVRFLW", value: 16)
!26 = !DIEnumerator(name: "GSL_ELOSS", value: 17)
!27 = !DIEnumerator(name: "GSL_EROUND", value: 18)
!28 = !DIEnumerator(name: "GSL_EBADLEN", value: 19)
!29 = !DIEnumerator(name: "GSL_ENOTSQR", value: 20)
!30 = !DIEnumerator(name: "GSL_ESING", value: 21)
!31 = !DIEnumerator(name: "GSL_EDIVERGE", value: 22)
!32 = !DIEnumerator(name: "GSL_EUNSUP", value: 23)
!33 = !DIEnumerator(name: "GSL_EUNIMPL", value: 24)
!34 = !DIEnumerator(name: "GSL_ECACHE", value: 25)
!35 = !DIEnumerator(name: "GSL_ETABLE", value: 26)
!36 = !DIEnumerator(name: "GSL_ENOPROG", value: 27)
!37 = !DIEnumerator(name: "GSL_ENOPROGJ", value: 28)
!38 = !DIEnumerator(name: "GSL_ETOLF", value: 29)
!39 = !DIEnumerator(name: "GSL_ETOLX", value: 30)
!40 = !DIEnumerator(name: "GSL_ETOLG", value: 31)
!41 = !DIEnumerator(name: "GSL_EOF", value: 32)
!42 = !{i32 7, !"Dwarf Version", i32 5}
!43 = !{i32 2, !"Debug Info Version", i32 3}
!44 = !{i32 1, !"wchar_size", i32 4}
!45 = !{i32 8, !"PIC Level", i32 2}
!46 = !{i32 7, !"PIE Level", i32 2}
!47 = !{i32 7, !"uwtable", i32 2}
!48 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!49 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!50 = distinct !DISubprogram(name: "gsl_sf_mathieu_a_coeff", scope: !1, file: !1, line: 97, type: !51, scopeLine: 98, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !55)
!51 = !DISubroutineType(types: !52)
!52 = !{!5, !5, !53, !53, !54}
!53 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!55 = !{!56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75}
!56 = !DILocalVariable(name: "order", arg: 1, scope: !50, file: !1, line: 97, type: !5)
!57 = !DILocalVariable(name: "qq", arg: 2, scope: !50, file: !1, line: 97, type: !53)
!58 = !DILocalVariable(name: "aa", arg: 3, scope: !50, file: !1, line: 97, type: !53)
!59 = !DILocalVariable(name: "coeff", arg: 4, scope: !50, file: !1, line: 97, type: !54)
!60 = !DILocalVariable(name: "ni", scope: !50, file: !1, line: 99, type: !5)
!61 = !DILocalVariable(name: "nn", scope: !50, file: !1, line: 99, type: !5)
!62 = !DILocalVariable(name: "ii", scope: !50, file: !1, line: 99, type: !5)
!63 = !DILocalVariable(name: "even_odd", scope: !50, file: !1, line: 99, type: !5)
!64 = !DILocalVariable(name: "eps", scope: !50, file: !1, line: 100, type: !53)
!65 = !DILocalVariable(name: "g1", scope: !50, file: !1, line: 100, type: !53)
!66 = !DILocalVariable(name: "g2", scope: !50, file: !1, line: 100, type: !53)
!67 = !DILocalVariable(name: "x1", scope: !50, file: !1, line: 100, type: !53)
!68 = !DILocalVariable(name: "x2", scope: !50, file: !1, line: 100, type: !53)
!69 = !DILocalVariable(name: "e1", scope: !50, file: !1, line: 100, type: !53)
!70 = !DILocalVariable(name: "e2", scope: !50, file: !1, line: 100, type: !53)
!71 = !DILocalVariable(name: "de", scope: !50, file: !1, line: 100, type: !53)
!72 = !DILocalVariable(name: "xh", scope: !50, file: !1, line: 100, type: !53)
!73 = !DILocalVariable(name: "sum", scope: !50, file: !1, line: 100, type: !53)
!74 = !DILocalVariable(name: "ratio", scope: !50, file: !1, line: 100, type: !53)
!75 = !DILocalVariable(name: "ff", scope: !50, file: !1, line: 101, type: !76)
!76 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 6400, elements: !77)
!77 = !{!78}
!78 = !DISubrange(count: 100)
!79 = distinct !DIAssignID()
!80 = !DILocation(line: 0, scope: !50)
!81 = !DILocation(line: 100, column: 3, scope: !50)
!82 = !DILocation(line: 105, column: 12, scope: !50)
!83 = !{!84, !84, i64 0}
!84 = !{!"double", !85, i64 0}
!85 = !{!"omnipotent char", !86, i64 0}
!86 = !{!"Simple C/C++ TBAA"}
!87 = !DILocation(line: 108, column: 17, scope: !88)
!88 = distinct !DILexicalBlock(scope: !50, file: !1, line: 108, column: 7)
!89 = !DILocation(line: 113, column: 13, scope: !90)
!90 = distinct !DILexicalBlock(scope: !50, file: !1, line: 113, column: 7)
!91 = !DILocation(line: 113, column: 7, scope: !50)
!92 = !DILocation(line: 117, column: 10, scope: !93)
!93 = distinct !DILexicalBlock(scope: !50, file: !1, line: 117, column: 7)
!94 = !DILocation(line: 117, column: 7, scope: !50)
!95 = !DILocation(line: 120, column: 21, scope: !96)
!96 = distinct !DILexicalBlock(scope: !97, file: !1, line: 119, column: 7)
!97 = distinct !DILexicalBlock(scope: !98, file: !1, line: 119, column: 7)
!98 = distinct !DILexicalBlock(scope: !93, file: !1, line: 118, column: 3)
!99 = !DILocation(line: 122, column: 18, scope: !98)
!100 = !DILocation(line: 122, column: 7, scope: !98)
!101 = !DILocation(line: 122, column: 22, scope: !98)
!102 = !DILocation(line: 124, column: 7, scope: !98)
!103 = !DILocation(line: 127, column: 13, scope: !104)
!104 = distinct !DILexicalBlock(scope: !50, file: !1, line: 127, column: 7)
!105 = !DILocation(line: 0, scope: !104)
!106 = !DILocation(line: 127, column: 7, scope: !50)
!107 = !DILocation(line: 131, column: 11, scope: !108)
!108 = distinct !DILexicalBlock(scope: !104, file: !1, line: 128, column: 3)
!109 = !DILocation(line: 132, column: 21, scope: !110)
!110 = distinct !DILexicalBlock(scope: !108, file: !1, line: 131, column: 11)
!111 = !DILocation(line: 132, column: 11, scope: !110)
!112 = !DILocation(line: 134, column: 27, scope: !110)
!113 = !DILocation(line: 134, column: 32, scope: !110)
!114 = !DILocation(line: 138, column: 11, scope: !115)
!115 = distinct !DILexicalBlock(scope: !104, file: !1, line: 137, column: 3)
!116 = !DILocation(line: 140, column: 24, scope: !117)
!117 = distinct !DILexicalBlock(scope: !118, file: !1, line: 139, column: 7)
!118 = distinct !DILexicalBlock(scope: !115, file: !1, line: 138, column: 11)
!119 = !DILocation(line: 140, column: 11, scope: !117)
!120 = !DILocation(line: 140, column: 20, scope: !117)
!121 = !DILocation(line: 141, column: 30, scope: !117)
!122 = !DILocation(line: 141, column: 33, scope: !117)
!123 = !DILocation(line: 141, column: 11, scope: !117)
!124 = !DILocation(line: 141, column: 20, scope: !117)
!125 = !DILocation(line: 142, column: 37, scope: !117)
!126 = !DILocation(line: 143, column: 24, scope: !127)
!127 = distinct !DILexicalBlock(scope: !128, file: !1, line: 143, column: 11)
!128 = distinct !DILexicalBlock(scope: !117, file: !1, line: 143, column: 11)
!129 = !DILocation(line: 143, column: 11, scope: !128)
!130 = !DILocation(line: 145, column: 57, scope: !131)
!131 = distinct !DILexicalBlock(scope: !127, file: !1, line: 144, column: 11)
!132 = !DILocation(line: 145, column: 34, scope: !131)
!133 = !DILocation(line: 145, column: 43, scope: !131)
!134 = !DILocation(line: 145, column: 33, scope: !131)
!135 = !DILocation(line: 145, column: 53, scope: !131)
!136 = !DILocation(line: 145, column: 56, scope: !131)
!137 = !DILocation(line: 146, column: 67, scope: !131)
!138 = !DILocation(line: 145, column: 25, scope: !131)
!139 = !DILocation(line: 143, column: 38, scope: !127)
!140 = distinct !{!140, !129, !141, !142}
!141 = !DILocation(line: 148, column: 11, scope: !128)
!142 = !{!"llvm.loop.mustprogress"}
!143 = !DILocation(line: 152, column: 30, scope: !144)
!144 = distinct !DILexicalBlock(scope: !118, file: !1, line: 151, column: 7)
!145 = !DILocation(line: 152, column: 11, scope: !144)
!146 = !DILocation(line: 152, column: 20, scope: !144)
!147 = !DILocation(line: 154, column: 11, scope: !148)
!148 = distinct !DILexicalBlock(scope: !144, file: !1, line: 154, column: 11)
!149 = !DILocation(line: 156, column: 43, scope: !150)
!150 = distinct !DILexicalBlock(scope: !151, file: !1, line: 155, column: 11)
!151 = distinct !DILexicalBlock(scope: !148, file: !1, line: 154, column: 11)
!152 = !DILocation(line: 156, column: 33, scope: !150)
!153 = !DILocation(line: 156, column: 55, scope: !150)
!154 = !DILocation(line: 156, column: 59, scope: !150)
!155 = !DILocation(line: 156, column: 58, scope: !150)
!156 = !DILocation(line: 157, column: 67, scope: !150)
!157 = !DILocation(line: 156, column: 25, scope: !150)
!158 = !DILocation(line: 154, column: 38, scope: !151)
!159 = distinct !{!159, !147, !160, !142}
!160 = !DILocation(line: 159, column: 11, scope: !148)
!161 = !DILocation(line: 162, column: 15, scope: !115)
!162 = !DILocation(line: 0, scope: !118)
!163 = !DILocation(line: 164, column: 15, scope: !115)
!164 = !DILocation(line: 164, column: 25, scope: !115)
!165 = !DILocation(line: 164, column: 24, scope: !115)
!166 = !DILocation(line: 167, column: 34, scope: !50)
!167 = !DILocation(line: 170, column: 16, scope: !168)
!168 = distinct !DILexicalBlock(scope: !50, file: !1, line: 170, column: 7)
!169 = !DILocation(line: 170, column: 7, scope: !50)
!170 = !DILocalVariable(name: "aa", arg: 1, scope: !171, file: !1, line: 33, type: !53)
!171 = distinct !DISubprogram(name: "backward_recurse_c", scope: !1, file: !1, line: 33, type: !172, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !174)
!172 = !DISubroutineType(types: !173)
!173 = !{null, !53, !53, !53, !54, !54, !5, !5}
!174 = !{!170, !175, !176, !177, !178, !179, !180, !181, !182, !183}
!175 = !DILocalVariable(name: "qq", arg: 2, scope: !171, file: !1, line: 33, type: !53)
!176 = !DILocalVariable(name: "xx", arg: 3, scope: !171, file: !1, line: 33, type: !53)
!177 = !DILocalVariable(name: "ff", arg: 4, scope: !171, file: !1, line: 33, type: !54)
!178 = !DILocalVariable(name: "gx", arg: 5, scope: !171, file: !1, line: 34, type: !54)
!179 = !DILocalVariable(name: "even_odd", arg: 6, scope: !171, file: !1, line: 34, type: !5)
!180 = !DILocalVariable(name: "ni", arg: 7, scope: !171, file: !1, line: 34, type: !5)
!181 = !DILocalVariable(name: "ii", scope: !171, file: !1, line: 36, type: !5)
!182 = !DILocalVariable(name: "nn", scope: !171, file: !1, line: 36, type: !5)
!183 = !DILocalVariable(name: "g1", scope: !171, file: !1, line: 37, type: !53)
!184 = !DILocation(line: 0, scope: !171, inlinedAt: !185)
!185 = distinct !DILocation(line: 175, column: 3, scope: !50)
!186 = !DILocation(line: 41, column: 3, scope: !171, inlinedAt: !185)
!187 = !DILocation(line: 41, column: 10, scope: !171, inlinedAt: !185)
!188 = !DILocation(line: 0, scope: !189, inlinedAt: !185)
!189 = distinct !DILexicalBlock(scope: !171, file: !1, line: 43, column: 7)
!190 = !DILocation(line: 43, column: 7, scope: !171, inlinedAt: !185)
!191 = !DILocation(line: 55, column: 7, scope: !192, inlinedAt: !185)
!192 = distinct !DILexicalBlock(scope: !193, file: !1, line: 55, column: 7)
!193 = distinct !DILexicalBlock(scope: !189, file: !1, line: 54, column: 3)
!194 = !DILocation(line: 62, column: 9, scope: !171, inlinedAt: !185)
!195 = !DILocation(line: 41, column: 10, scope: !171, inlinedAt: !196)
!196 = distinct !DILocation(line: 178, column: 3, scope: !50)
!197 = !DILocation(line: 0, scope: !171, inlinedAt: !196)
!198 = !DILocation(line: 55, column: 7, scope: !192, inlinedAt: !196)
!199 = !DILocation(line: 55, column: 20, scope: !200, inlinedAt: !185)
!200 = distinct !DILexicalBlock(scope: !192, file: !1, line: 55, column: 7)
!201 = !DILocation(line: 45, column: 7, scope: !202, inlinedAt: !185)
!202 = distinct !DILexicalBlock(scope: !203, file: !1, line: 45, column: 7)
!203 = distinct !DILexicalBlock(scope: !189, file: !1, line: 44, column: 3)
!204 = !DILocation(line: 45, column: 7, scope: !202, inlinedAt: !196)
!205 = !DILocation(line: 45, column: 20, scope: !206, inlinedAt: !185)
!206 = distinct !DILexicalBlock(scope: !202, file: !1, line: 45, column: 7)
!207 = !DILocation(line: 48, column: 33, scope: !208, inlinedAt: !185)
!208 = distinct !DILexicalBlock(scope: !206, file: !1, line: 46, column: 7)
!209 = !DILocation(line: 48, column: 36, scope: !208, inlinedAt: !185)
!210 = !DILocation(line: 48, column: 32, scope: !208, inlinedAt: !185)
!211 = !DILocation(line: 48, column: 45, scope: !208, inlinedAt: !185)
!212 = !DILocation(line: 48, column: 56, scope: !208, inlinedAt: !185)
!213 = !DILocation(line: 48, column: 29, scope: !208, inlinedAt: !185)
!214 = !DILocation(line: 48, column: 11, scope: !208, inlinedAt: !185)
!215 = !DILocation(line: 48, column: 23, scope: !208, inlinedAt: !185)
!216 = !DILocation(line: 45, column: 27, scope: !206, inlinedAt: !185)
!217 = distinct !{!217, !201, !218, !142}
!218 = !DILocation(line: 49, column: 7, scope: !202, inlinedAt: !185)
!219 = !DILocation(line: 48, column: 51, scope: !208, inlinedAt: !185)
!220 = !DILocation(line: 50, column: 14, scope: !221, inlinedAt: !185)
!221 = distinct !DILexicalBlock(scope: !203, file: !1, line: 50, column: 11)
!222 = !DILocation(line: 50, column: 11, scope: !203, inlinedAt: !185)
!223 = !DILocation(line: 51, column: 17, scope: !221, inlinedAt: !185)
!224 = distinct !DIAssignID()
!225 = !DILocation(line: 51, column: 11, scope: !221, inlinedAt: !185)
!226 = !DILocation(line: 58, column: 38, scope: !227, inlinedAt: !185)
!227 = distinct !DILexicalBlock(scope: !200, file: !1, line: 56, column: 7)
!228 = !DILocation(line: 58, column: 42, scope: !227, inlinedAt: !185)
!229 = !DILocation(line: 58, column: 32, scope: !227, inlinedAt: !185)
!230 = !DILocation(line: 58, column: 59, scope: !227, inlinedAt: !185)
!231 = !DILocation(line: 58, column: 70, scope: !227, inlinedAt: !185)
!232 = !DILocation(line: 58, column: 29, scope: !227, inlinedAt: !185)
!233 = !DILocation(line: 58, column: 11, scope: !227, inlinedAt: !185)
!234 = !DILocation(line: 58, column: 23, scope: !227, inlinedAt: !185)
!235 = !DILocation(line: 55, column: 27, scope: !200, inlinedAt: !185)
!236 = distinct !{!236, !191, !237, !142}
!237 = !DILocation(line: 59, column: 7, scope: !192, inlinedAt: !185)
!238 = !DILocation(line: 58, column: 65, scope: !227, inlinedAt: !185)
!239 = !DILocation(line: 43, column: 7, scope: !171, inlinedAt: !196)
!240 = !DILocation(line: 55, column: 20, scope: !200, inlinedAt: !196)
!241 = !DILocation(line: 45, column: 20, scope: !206, inlinedAt: !196)
!242 = !DILocation(line: 48, column: 33, scope: !208, inlinedAt: !196)
!243 = !DILocation(line: 48, column: 36, scope: !208, inlinedAt: !196)
!244 = !DILocation(line: 48, column: 32, scope: !208, inlinedAt: !196)
!245 = !DILocation(line: 48, column: 45, scope: !208, inlinedAt: !196)
!246 = !DILocation(line: 48, column: 56, scope: !208, inlinedAt: !196)
!247 = !DILocation(line: 48, column: 29, scope: !208, inlinedAt: !196)
!248 = !DILocation(line: 48, column: 11, scope: !208, inlinedAt: !196)
!249 = !DILocation(line: 48, column: 23, scope: !208, inlinedAt: !196)
!250 = !DILocation(line: 45, column: 27, scope: !206, inlinedAt: !196)
!251 = distinct !{!251, !204, !252, !142}
!252 = !DILocation(line: 49, column: 7, scope: !202, inlinedAt: !196)
!253 = !DILocation(line: 48, column: 51, scope: !208, inlinedAt: !196)
!254 = !DILocation(line: 50, column: 14, scope: !221, inlinedAt: !196)
!255 = !DILocation(line: 50, column: 11, scope: !203, inlinedAt: !196)
!256 = !DILocation(line: 51, column: 17, scope: !221, inlinedAt: !196)
!257 = distinct !DIAssignID()
!258 = !DILocation(line: 51, column: 11, scope: !221, inlinedAt: !196)
!259 = !DILocation(line: 58, column: 38, scope: !227, inlinedAt: !196)
!260 = !DILocation(line: 58, column: 42, scope: !227, inlinedAt: !196)
!261 = !DILocation(line: 58, column: 32, scope: !227, inlinedAt: !196)
!262 = !DILocation(line: 58, column: 59, scope: !227, inlinedAt: !196)
!263 = !DILocation(line: 58, column: 70, scope: !227, inlinedAt: !196)
!264 = !DILocation(line: 58, column: 29, scope: !227, inlinedAt: !196)
!265 = !DILocation(line: 58, column: 11, scope: !227, inlinedAt: !196)
!266 = !DILocation(line: 58, column: 23, scope: !227, inlinedAt: !196)
!267 = !DILocation(line: 55, column: 27, scope: !200, inlinedAt: !196)
!268 = distinct !{!268, !198, !269, !142}
!269 = !DILocation(line: 59, column: 7, scope: !192, inlinedAt: !196)
!270 = !DILocation(line: 58, column: 65, scope: !227, inlinedAt: !196)
!271 = !DILocation(line: 62, column: 9, scope: !171, inlinedAt: !80)
!272 = !DILocation(line: 184, column: 15, scope: !273)
!273 = distinct !DILexicalBlock(scope: !50, file: !1, line: 182, column: 3)
!274 = !DILocation(line: 185, column: 15, scope: !273)
!275 = !DILocation(line: 186, column: 15, scope: !273)
!276 = !DILocation(line: 189, column: 11, scope: !277)
!277 = distinct !DILexicalBlock(scope: !273, file: !1, line: 189, column: 11)
!278 = !DILocation(line: 189, column: 20, scope: !277)
!279 = !DILocation(line: 189, column: 11, scope: !273)
!280 = !DILocation(line: 193, column: 15, scope: !273)
!281 = !DILocation(line: 193, column: 23, scope: !273)
!282 = !DILocation(line: 193, column: 27, scope: !273)
!283 = !DILocation(line: 0, scope: !171, inlinedAt: !284)
!284 = distinct !DILocation(line: 198, column: 7, scope: !273)
!285 = !DILocation(line: 41, column: 10, scope: !171, inlinedAt: !284)
!286 = !DILocation(line: 43, column: 7, scope: !171, inlinedAt: !284)
!287 = !DILocation(line: 55, column: 7, scope: !192, inlinedAt: !284)
!288 = !DILocation(line: 45, column: 7, scope: !202, inlinedAt: !284)
!289 = !DILocation(line: 48, column: 33, scope: !208, inlinedAt: !284)
!290 = !DILocation(line: 48, column: 36, scope: !208, inlinedAt: !284)
!291 = !DILocation(line: 48, column: 32, scope: !208, inlinedAt: !284)
!292 = !DILocation(line: 48, column: 45, scope: !208, inlinedAt: !284)
!293 = !DILocation(line: 48, column: 56, scope: !208, inlinedAt: !284)
!294 = !DILocation(line: 48, column: 29, scope: !208, inlinedAt: !284)
!295 = !DILocation(line: 48, column: 11, scope: !208, inlinedAt: !284)
!296 = !DILocation(line: 48, column: 23, scope: !208, inlinedAt: !284)
!297 = !DILocation(line: 45, column: 27, scope: !206, inlinedAt: !284)
!298 = distinct !{!298, !288, !299, !142}
!299 = !DILocation(line: 49, column: 7, scope: !202, inlinedAt: !284)
!300 = !DILocation(line: 50, column: 11, scope: !203, inlinedAt: !284)
!301 = !DILocation(line: 51, column: 17, scope: !221, inlinedAt: !284)
!302 = distinct !DIAssignID()
!303 = !DILocation(line: 51, column: 11, scope: !221, inlinedAt: !284)
!304 = !DILocation(line: 58, column: 38, scope: !227, inlinedAt: !284)
!305 = !DILocation(line: 58, column: 42, scope: !227, inlinedAt: !284)
!306 = !DILocation(line: 58, column: 32, scope: !227, inlinedAt: !284)
!307 = !DILocation(line: 58, column: 59, scope: !227, inlinedAt: !284)
!308 = !DILocation(line: 58, column: 70, scope: !227, inlinedAt: !284)
!309 = !DILocation(line: 58, column: 29, scope: !227, inlinedAt: !284)
!310 = !DILocation(line: 58, column: 11, scope: !227, inlinedAt: !284)
!311 = !DILocation(line: 58, column: 23, scope: !227, inlinedAt: !284)
!312 = !DILocation(line: 55, column: 27, scope: !200, inlinedAt: !284)
!313 = distinct !{!313, !287, !314, !142}
!314 = !DILocation(line: 59, column: 7, scope: !192, inlinedAt: !284)
!315 = distinct !{!315, !316, !317}
!316 = !DILocation(line: 181, column: 3, scope: !50)
!317 = !DILocation(line: 199, column: 3, scope: !50)
!318 = !DILocation(line: 202, column: 10, scope: !50)
!319 = !DILocation(line: 203, column: 3, scope: !320)
!320 = distinct !DILexicalBlock(scope: !50, file: !1, line: 203, column: 3)
!321 = !DILocation(line: 218, column: 3, scope: !322)
!322 = distinct !DILexicalBlock(scope: !50, file: !1, line: 218, column: 3)
!323 = !DILocation(line: 203, scope: !320)
!324 = !DILocation(line: 205, column: 27, scope: !325)
!325 = distinct !DILexicalBlock(scope: !326, file: !1, line: 204, column: 3)
!326 = distinct !DILexicalBlock(scope: !320, file: !1, line: 203, column: 3)
!327 = !DILocation(line: 205, column: 19, scope: !325)
!328 = !DILocation(line: 205, column: 31, scope: !325)
!329 = !DILocation(line: 205, column: 30, scope: !325)
!330 = !DILocation(line: 205, column: 7, scope: !325)
!331 = !DILocation(line: 205, column: 17, scope: !325)
!332 = !DILocation(line: 210, column: 11, scope: !333)
!333 = distinct !DILexicalBlock(scope: !325, file: !1, line: 210, column: 11)
!334 = !DILocation(line: 210, column: 27, scope: !333)
!335 = !DILocation(line: 210, column: 11, scope: !325)
!336 = !DILocation(line: 212, column: 11, scope: !337)
!337 = distinct !DILexicalBlock(scope: !338, file: !1, line: 212, column: 11)
!338 = distinct !DILexicalBlock(scope: !333, file: !1, line: 211, column: 7)
!339 = !DILocation(line: 213, column: 27, scope: !340)
!340 = distinct !DILexicalBlock(scope: !337, file: !1, line: 212, column: 11)
!341 = !DILocation(line: 203, column: 19, scope: !326)
!342 = distinct !{!342, !319, !343, !142}
!343 = !DILocation(line: 215, column: 3, scope: !320)
!344 = !DILocation(line: 219, column: 7, scope: !345)
!345 = distinct !DILexicalBlock(scope: !322, file: !1, line: 218, column: 3)
!346 = !DILocation(line: 219, column: 17, scope: !345)
!347 = !DILocation(line: 218, column: 41, scope: !345)
!348 = !DILocation(line: 218, column: 16, scope: !345)
!349 = distinct !{!349, !321, !350, !142}
!350 = !DILocation(line: 219, column: 20, scope: !322)
!351 = !DILocation(line: 222, column: 1, scope: !50)
!352 = distinct !DISubprogram(name: "gsl_sf_mathieu_b_coeff", scope: !1, file: !1, line: 225, type: !51, scopeLine: 226, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !353)
!353 = !{!354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373}
!354 = !DILocalVariable(name: "order", arg: 1, scope: !352, file: !1, line: 225, type: !5)
!355 = !DILocalVariable(name: "qq", arg: 2, scope: !352, file: !1, line: 225, type: !53)
!356 = !DILocalVariable(name: "aa", arg: 3, scope: !352, file: !1, line: 225, type: !53)
!357 = !DILocalVariable(name: "coeff", arg: 4, scope: !352, file: !1, line: 225, type: !54)
!358 = !DILocalVariable(name: "ni", scope: !352, file: !1, line: 227, type: !5)
!359 = !DILocalVariable(name: "nn", scope: !352, file: !1, line: 227, type: !5)
!360 = !DILocalVariable(name: "ii", scope: !352, file: !1, line: 227, type: !5)
!361 = !DILocalVariable(name: "even_odd", scope: !352, file: !1, line: 227, type: !5)
!362 = !DILocalVariable(name: "eps", scope: !352, file: !1, line: 228, type: !53)
!363 = !DILocalVariable(name: "g1", scope: !352, file: !1, line: 228, type: !53)
!364 = !DILocalVariable(name: "g2", scope: !352, file: !1, line: 228, type: !53)
!365 = !DILocalVariable(name: "x1", scope: !352, file: !1, line: 228, type: !53)
!366 = !DILocalVariable(name: "x2", scope: !352, file: !1, line: 228, type: !53)
!367 = !DILocalVariable(name: "e1", scope: !352, file: !1, line: 228, type: !53)
!368 = !DILocalVariable(name: "e2", scope: !352, file: !1, line: 228, type: !53)
!369 = !DILocalVariable(name: "de", scope: !352, file: !1, line: 228, type: !53)
!370 = !DILocalVariable(name: "xh", scope: !352, file: !1, line: 228, type: !53)
!371 = !DILocalVariable(name: "sum", scope: !352, file: !1, line: 228, type: !53)
!372 = !DILocalVariable(name: "ratio", scope: !352, file: !1, line: 228, type: !53)
!373 = !DILocalVariable(name: "ff", scope: !352, file: !1, line: 229, type: !76)
!374 = distinct !DIAssignID()
!375 = !DILocation(line: 0, scope: !352)
!376 = !DILocation(line: 228, column: 3, scope: !352)
!377 = !DILocation(line: 233, column: 12, scope: !352)
!378 = !DILocation(line: 236, column: 17, scope: !379)
!379 = distinct !DILexicalBlock(scope: !352, file: !1, line: 236, column: 7)
!380 = !DILocation(line: 241, column: 13, scope: !381)
!381 = distinct !DILexicalBlock(scope: !352, file: !1, line: 241, column: 7)
!382 = !DILocation(line: 241, column: 7, scope: !352)
!383 = !DILocation(line: 245, column: 10, scope: !384)
!384 = distinct !DILexicalBlock(scope: !352, file: !1, line: 245, column: 7)
!385 = !DILocation(line: 245, column: 7, scope: !352)
!386 = !DILocation(line: 248, column: 21, scope: !387)
!387 = distinct !DILexicalBlock(scope: !388, file: !1, line: 247, column: 7)
!388 = distinct !DILexicalBlock(scope: !389, file: !1, line: 247, column: 7)
!389 = distinct !DILexicalBlock(scope: !384, file: !1, line: 246, column: 3)
!390 = !DILocation(line: 250, column: 19, scope: !389)
!391 = !DILocation(line: 250, column: 22, scope: !389)
!392 = !DILocation(line: 250, column: 7, scope: !389)
!393 = !DILocation(line: 250, column: 26, scope: !389)
!394 = !DILocation(line: 252, column: 7, scope: !389)
!395 = !DILocation(line: 255, column: 13, scope: !396)
!396 = distinct !DILexicalBlock(scope: !352, file: !1, line: 255, column: 7)
!397 = !DILocation(line: 0, scope: !396)
!398 = !DILocation(line: 255, column: 7, scope: !352)
!399 = !DILocation(line: 259, column: 11, scope: !400)
!400 = distinct !DILexicalBlock(scope: !396, file: !1, line: 256, column: 3)
!401 = !DILocation(line: 260, column: 27, scope: !402)
!402 = distinct !DILexicalBlock(scope: !400, file: !1, line: 259, column: 11)
!403 = !DILocation(line: 260, column: 11, scope: !402)
!404 = !DILocation(line: 262, column: 27, scope: !402)
!405 = !DILocation(line: 262, column: 32, scope: !402)
!406 = !DILocation(line: 266, column: 11, scope: !407)
!407 = distinct !DILexicalBlock(scope: !396, file: !1, line: 265, column: 3)
!408 = !DILocation(line: 268, column: 30, scope: !409)
!409 = distinct !DILexicalBlock(scope: !410, file: !1, line: 267, column: 7)
!410 = distinct !DILexicalBlock(scope: !407, file: !1, line: 266, column: 11)
!411 = !DILocation(line: 268, column: 11, scope: !409)
!412 = !DILocation(line: 268, column: 20, scope: !409)
!413 = !DILocation(line: 269, column: 31, scope: !409)
!414 = !DILocation(line: 270, column: 24, scope: !415)
!415 = distinct !DILexicalBlock(scope: !416, file: !1, line: 270, column: 11)
!416 = distinct !DILexicalBlock(scope: !409, file: !1, line: 270, column: 11)
!417 = !DILocation(line: 270, column: 11, scope: !416)
!418 = !DILocation(line: 272, column: 34, scope: !419)
!419 = distinct !DILexicalBlock(scope: !415, file: !1, line: 271, column: 11)
!420 = !DILocation(line: 272, column: 37, scope: !419)
!421 = !DILocation(line: 272, column: 33, scope: !419)
!422 = !DILocation(line: 272, column: 41, scope: !419)
!423 = !DILocation(line: 272, column: 45, scope: !419)
!424 = !DILocation(line: 272, column: 44, scope: !419)
!425 = !DILocation(line: 272, column: 59, scope: !419)
!426 = !DILocation(line: 272, column: 25, scope: !419)
!427 = !DILocation(line: 273, column: 28, scope: !419)
!428 = !DILocation(line: 273, column: 22, scope: !419)
!429 = !DILocation(line: 273, column: 32, scope: !419)
!430 = distinct !{!430, !417, !431, !142}
!431 = !DILocation(line: 274, column: 11, scope: !416)
!432 = !DILocation(line: 278, column: 30, scope: !433)
!433 = distinct !DILexicalBlock(scope: !410, file: !1, line: 277, column: 7)
!434 = !DILocation(line: 278, column: 11, scope: !433)
!435 = !DILocation(line: 278, column: 20, scope: !433)
!436 = !DILocation(line: 279, column: 29, scope: !433)
!437 = !DILocation(line: 280, column: 11, scope: !438)
!438 = distinct !DILexicalBlock(scope: !433, file: !1, line: 280, column: 11)
!439 = !DILocation(line: 280, column: 24, scope: !440)
!440 = distinct !DILexicalBlock(scope: !438, file: !1, line: 280, column: 11)
!441 = !DILocation(line: 282, column: 43, scope: !442)
!442 = distinct !DILexicalBlock(scope: !440, file: !1, line: 281, column: 11)
!443 = !DILocation(line: 282, column: 33, scope: !442)
!444 = !DILocation(line: 282, column: 55, scope: !442)
!445 = !DILocation(line: 282, column: 59, scope: !442)
!446 = !DILocation(line: 282, column: 58, scope: !442)
!447 = !DILocation(line: 283, column: 67, scope: !442)
!448 = !DILocation(line: 282, column: 25, scope: !442)
!449 = !DILocation(line: 284, column: 29, scope: !442)
!450 = !DILocation(line: 284, column: 24, scope: !442)
!451 = !DILocation(line: 284, column: 34, scope: !442)
!452 = !DILocation(line: 284, column: 22, scope: !442)
!453 = !DILocation(line: 284, column: 38, scope: !442)
!454 = distinct !{!454, !437, !455, !142}
!455 = !DILocation(line: 285, column: 11, scope: !438)
!456 = !DILocation(line: 0, scope: !410)
!457 = !DILocation(line: 288, column: 15, scope: !407)
!458 = !DILocation(line: 290, column: 15, scope: !407)
!459 = !DILocation(line: 290, column: 25, scope: !407)
!460 = !DILocation(line: 290, column: 24, scope: !407)
!461 = !DILocation(line: 293, column: 34, scope: !352)
!462 = !DILocation(line: 296, column: 16, scope: !463)
!463 = distinct !DILexicalBlock(scope: !352, file: !1, line: 296, column: 7)
!464 = !DILocation(line: 296, column: 7, scope: !352)
!465 = !DILocalVariable(name: "aa", arg: 1, scope: !466, file: !1, line: 66, type: !53)
!466 = distinct !DISubprogram(name: "backward_recurse_s", scope: !1, file: !1, line: 66, type: !172, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !467)
!467 = !{!465, !468, !469, !470, !471, !472, !473, !474, !475, !476}
!468 = !DILocalVariable(name: "qq", arg: 2, scope: !466, file: !1, line: 66, type: !53)
!469 = !DILocalVariable(name: "xx", arg: 3, scope: !466, file: !1, line: 66, type: !53)
!470 = !DILocalVariable(name: "ff", arg: 4, scope: !466, file: !1, line: 66, type: !54)
!471 = !DILocalVariable(name: "gx", arg: 5, scope: !466, file: !1, line: 67, type: !54)
!472 = !DILocalVariable(name: "even_odd", arg: 6, scope: !466, file: !1, line: 67, type: !5)
!473 = !DILocalVariable(name: "ni", arg: 7, scope: !466, file: !1, line: 67, type: !5)
!474 = !DILocalVariable(name: "ii", scope: !466, file: !1, line: 69, type: !5)
!475 = !DILocalVariable(name: "nn", scope: !466, file: !1, line: 69, type: !5)
!476 = !DILocalVariable(name: "g1", scope: !466, file: !1, line: 70, type: !53)
!477 = !DILocation(line: 0, scope: !466, inlinedAt: !478)
!478 = distinct !DILocation(line: 301, column: 3, scope: !352)
!479 = !DILocation(line: 74, column: 3, scope: !466, inlinedAt: !478)
!480 = !DILocation(line: 74, column: 10, scope: !466, inlinedAt: !478)
!481 = !DILocation(line: 0, scope: !482, inlinedAt: !478)
!482 = distinct !DILexicalBlock(scope: !466, file: !1, line: 76, column: 7)
!483 = !DILocation(line: 76, column: 7, scope: !466, inlinedAt: !478)
!484 = !DILocation(line: 86, column: 7, scope: !485, inlinedAt: !478)
!485 = distinct !DILexicalBlock(scope: !486, file: !1, line: 86, column: 7)
!486 = distinct !DILexicalBlock(scope: !482, file: !1, line: 85, column: 3)
!487 = !DILocation(line: 86, column: 20, scope: !488, inlinedAt: !478)
!488 = distinct !DILexicalBlock(scope: !485, file: !1, line: 86, column: 7)
!489 = !DILocation(line: 78, column: 7, scope: !490, inlinedAt: !478)
!490 = distinct !DILexicalBlock(scope: !491, file: !1, line: 78, column: 7)
!491 = distinct !DILexicalBlock(scope: !482, file: !1, line: 77, column: 3)
!492 = !DILocation(line: 78, column: 20, scope: !493, inlinedAt: !478)
!493 = distinct !DILexicalBlock(scope: !490, file: !1, line: 78, column: 7)
!494 = !DILocation(line: 81, column: 33, scope: !495, inlinedAt: !478)
!495 = distinct !DILexicalBlock(scope: !493, file: !1, line: 79, column: 7)
!496 = !DILocation(line: 81, column: 42, scope: !495, inlinedAt: !478)
!497 = !DILocation(line: 81, column: 32, scope: !495, inlinedAt: !478)
!498 = !DILocation(line: 81, column: 57, scope: !495, inlinedAt: !478)
!499 = !DILocation(line: 81, column: 68, scope: !495, inlinedAt: !478)
!500 = !DILocation(line: 81, column: 29, scope: !495, inlinedAt: !478)
!501 = !DILocation(line: 81, column: 11, scope: !495, inlinedAt: !478)
!502 = !DILocation(line: 81, column: 23, scope: !495, inlinedAt: !478)
!503 = !DILocation(line: 78, column: 27, scope: !493, inlinedAt: !478)
!504 = distinct !{!504, !489, !505, !142}
!505 = !DILocation(line: 82, column: 7, scope: !490, inlinedAt: !478)
!506 = !DILocation(line: 89, column: 38, scope: !507, inlinedAt: !478)
!507 = distinct !DILexicalBlock(scope: !488, file: !1, line: 87, column: 7)
!508 = !DILocation(line: 89, column: 42, scope: !507, inlinedAt: !478)
!509 = !DILocation(line: 89, column: 32, scope: !507, inlinedAt: !478)
!510 = !DILocation(line: 89, column: 59, scope: !507, inlinedAt: !478)
!511 = !DILocation(line: 89, column: 70, scope: !507, inlinedAt: !478)
!512 = !DILocation(line: 89, column: 29, scope: !507, inlinedAt: !478)
!513 = !DILocation(line: 89, column: 11, scope: !507, inlinedAt: !478)
!514 = !DILocation(line: 89, column: 23, scope: !507, inlinedAt: !478)
!515 = !DILocation(line: 86, column: 27, scope: !488, inlinedAt: !478)
!516 = distinct !{!516, !484, !517, !142}
!517 = !DILocation(line: 90, column: 7, scope: !485, inlinedAt: !478)
!518 = !DILocation(line: 81, column: 63, scope: !495, inlinedAt: !478)
!519 = !DILocation(line: 93, column: 9, scope: !466, inlinedAt: !478)
!520 = !DILocation(line: 89, column: 65, scope: !507, inlinedAt: !478)
!521 = !DILocation(line: 74, column: 10, scope: !466, inlinedAt: !522)
!522 = distinct !DILocation(line: 304, column: 3, scope: !352)
!523 = !DILocation(line: 0, scope: !466, inlinedAt: !522)
!524 = !DILocation(line: 76, column: 7, scope: !466, inlinedAt: !522)
!525 = !DILocation(line: 86, column: 7, scope: !485, inlinedAt: !522)
!526 = !DILocation(line: 86, column: 20, scope: !488, inlinedAt: !522)
!527 = !DILocation(line: 78, column: 7, scope: !490, inlinedAt: !522)
!528 = !DILocation(line: 78, column: 20, scope: !493, inlinedAt: !522)
!529 = !DILocation(line: 81, column: 33, scope: !495, inlinedAt: !522)
!530 = !DILocation(line: 81, column: 42, scope: !495, inlinedAt: !522)
!531 = !DILocation(line: 81, column: 32, scope: !495, inlinedAt: !522)
!532 = !DILocation(line: 81, column: 57, scope: !495, inlinedAt: !522)
!533 = !DILocation(line: 81, column: 68, scope: !495, inlinedAt: !522)
!534 = !DILocation(line: 81, column: 29, scope: !495, inlinedAt: !522)
!535 = !DILocation(line: 81, column: 11, scope: !495, inlinedAt: !522)
!536 = !DILocation(line: 81, column: 23, scope: !495, inlinedAt: !522)
!537 = !DILocation(line: 78, column: 27, scope: !493, inlinedAt: !522)
!538 = distinct !{!538, !527, !539, !142}
!539 = !DILocation(line: 82, column: 7, scope: !490, inlinedAt: !522)
!540 = !DILocation(line: 89, column: 38, scope: !507, inlinedAt: !522)
!541 = !DILocation(line: 89, column: 42, scope: !507, inlinedAt: !522)
!542 = !DILocation(line: 89, column: 32, scope: !507, inlinedAt: !522)
!543 = !DILocation(line: 89, column: 59, scope: !507, inlinedAt: !522)
!544 = !DILocation(line: 89, column: 70, scope: !507, inlinedAt: !522)
!545 = !DILocation(line: 89, column: 29, scope: !507, inlinedAt: !522)
!546 = !DILocation(line: 89, column: 11, scope: !507, inlinedAt: !522)
!547 = !DILocation(line: 89, column: 23, scope: !507, inlinedAt: !522)
!548 = !DILocation(line: 86, column: 27, scope: !488, inlinedAt: !522)
!549 = distinct !{!549, !525, !550, !142}
!550 = !DILocation(line: 90, column: 7, scope: !485, inlinedAt: !522)
!551 = !DILocation(line: 93, column: 9, scope: !466, inlinedAt: !375)
!552 = !DILocation(line: 81, column: 63, scope: !495, inlinedAt: !522)
!553 = !DILocation(line: 89, column: 65, scope: !507, inlinedAt: !522)
!554 = !DILocation(line: 310, column: 15, scope: !555)
!555 = distinct !DILexicalBlock(scope: !352, file: !1, line: 308, column: 3)
!556 = !DILocation(line: 311, column: 15, scope: !555)
!557 = !DILocation(line: 312, column: 15, scope: !555)
!558 = !DILocation(line: 315, column: 11, scope: !559)
!559 = distinct !DILexicalBlock(scope: !555, file: !1, line: 315, column: 11)
!560 = !DILocation(line: 315, column: 20, scope: !559)
!561 = !DILocation(line: 315, column: 11, scope: !555)
!562 = !DILocation(line: 319, column: 15, scope: !555)
!563 = !DILocation(line: 319, column: 23, scope: !555)
!564 = !DILocation(line: 319, column: 27, scope: !555)
!565 = !DILocation(line: 0, scope: !466, inlinedAt: !566)
!566 = distinct !DILocation(line: 324, column: 7, scope: !555)
!567 = !DILocation(line: 74, column: 10, scope: !466, inlinedAt: !566)
!568 = !DILocation(line: 76, column: 7, scope: !466, inlinedAt: !566)
!569 = !DILocation(line: 86, column: 7, scope: !485, inlinedAt: !566)
!570 = !DILocation(line: 78, column: 7, scope: !490, inlinedAt: !566)
!571 = !DILocation(line: 81, column: 33, scope: !495, inlinedAt: !566)
!572 = !DILocation(line: 81, column: 42, scope: !495, inlinedAt: !566)
!573 = !DILocation(line: 81, column: 32, scope: !495, inlinedAt: !566)
!574 = !DILocation(line: 81, column: 57, scope: !495, inlinedAt: !566)
!575 = !DILocation(line: 81, column: 68, scope: !495, inlinedAt: !566)
!576 = !DILocation(line: 81, column: 29, scope: !495, inlinedAt: !566)
!577 = !DILocation(line: 81, column: 11, scope: !495, inlinedAt: !566)
!578 = !DILocation(line: 81, column: 23, scope: !495, inlinedAt: !566)
!579 = !DILocation(line: 78, column: 27, scope: !493, inlinedAt: !566)
!580 = distinct !{!580, !570, !581, !142}
!581 = !DILocation(line: 82, column: 7, scope: !490, inlinedAt: !566)
!582 = !DILocation(line: 89, column: 38, scope: !507, inlinedAt: !566)
!583 = !DILocation(line: 89, column: 42, scope: !507, inlinedAt: !566)
!584 = !DILocation(line: 89, column: 32, scope: !507, inlinedAt: !566)
!585 = !DILocation(line: 89, column: 59, scope: !507, inlinedAt: !566)
!586 = !DILocation(line: 89, column: 70, scope: !507, inlinedAt: !566)
!587 = !DILocation(line: 89, column: 29, scope: !507, inlinedAt: !566)
!588 = !DILocation(line: 89, column: 11, scope: !507, inlinedAt: !566)
!589 = !DILocation(line: 89, column: 23, scope: !507, inlinedAt: !566)
!590 = !DILocation(line: 86, column: 27, scope: !488, inlinedAt: !566)
!591 = distinct !{!591, !569, !592, !142}
!592 = !DILocation(line: 90, column: 7, scope: !485, inlinedAt: !566)
!593 = distinct !{!593, !594, !595}
!594 = !DILocation(line: 307, column: 3, scope: !352)
!595 = !DILocation(line: 325, column: 3, scope: !352)
!596 = !DILocation(line: 328, column: 16, scope: !352)
!597 = !DILocation(line: 328, column: 11, scope: !352)
!598 = !DILocation(line: 328, column: 10, scope: !352)
!599 = !DILocation(line: 328, column: 21, scope: !352)
!600 = !DILocation(line: 328, column: 20, scope: !352)
!601 = !DILocation(line: 329, column: 3, scope: !602)
!602 = distinct !DILexicalBlock(scope: !352, file: !1, line: 329, column: 3)
!603 = !DILocation(line: 344, column: 3, scope: !604)
!604 = distinct !DILexicalBlock(scope: !352, file: !1, line: 344, column: 3)
!605 = !DILocation(line: 331, column: 27, scope: !606)
!606 = distinct !DILexicalBlock(scope: !607, file: !1, line: 330, column: 3)
!607 = distinct !DILexicalBlock(scope: !602, file: !1, line: 329, column: 3)
!608 = !DILocation(line: 331, column: 19, scope: !606)
!609 = !DILocation(line: 331, column: 31, scope: !606)
!610 = !DILocation(line: 331, column: 30, scope: !606)
!611 = !DILocation(line: 331, column: 17, scope: !606)
!612 = !DILocation(line: 332, column: 15, scope: !606)
!613 = !DILocation(line: 332, column: 14, scope: !606)
!614 = !DILocation(line: 332, column: 24, scope: !606)
!615 = !DILocation(line: 336, column: 11, scope: !616)
!616 = distinct !DILexicalBlock(scope: !606, file: !1, line: 336, column: 11)
!617 = !DILocation(line: 336, column: 27, scope: !616)
!618 = !DILocation(line: 336, column: 11, scope: !606)
!619 = !DILocation(line: 338, column: 11, scope: !620)
!620 = distinct !DILexicalBlock(scope: !621, file: !1, line: 338, column: 11)
!621 = distinct !DILexicalBlock(scope: !616, file: !1, line: 337, column: 7)
!622 = !DILocation(line: 339, column: 27, scope: !623)
!623 = distinct !DILexicalBlock(scope: !620, file: !1, line: 338, column: 11)
!624 = !DILocation(line: 329, column: 44, scope: !607)
!625 = !DILocation(line: 0, scope: !602)
!626 = !DILocation(line: 329, column: 19, scope: !607)
!627 = distinct !{!627, !601, !628, !142}
!628 = !DILocation(line: 341, column: 3, scope: !602)
!629 = !DILocation(line: 345, column: 7, scope: !630)
!630 = distinct !DILexicalBlock(scope: !604, file: !1, line: 344, column: 3)
!631 = !DILocation(line: 345, column: 17, scope: !630)
!632 = !DILocation(line: 344, column: 41, scope: !630)
!633 = !DILocation(line: 344, column: 16, scope: !630)
!634 = distinct !{!634, !603, !635, !142}
!635 = !DILocation(line: 345, column: 20, scope: !604)
!636 = !DILocation(line: 348, column: 1, scope: !352)
