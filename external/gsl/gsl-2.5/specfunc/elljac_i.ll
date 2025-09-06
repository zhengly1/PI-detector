; ModuleID = 'elljac.ll'
source_filename = "elljac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"|m| > 1.0\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [9 x i8] c"elljac.c\00", align 1, !dbg !7

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_elljac_e(double noundef %0, double noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 !dbg !62 {
  %6 = alloca [16 x double], align 16, !DIAssignID !92
  call void @llvm.dbg.assign(metadata i1 undef, metadata !80, metadata !DIExpression(), metadata !92, metadata ptr %6, metadata !DIExpression()), !dbg !93
  %7 = alloca [16 x double], align 16, !DIAssignID !94
  call void @llvm.dbg.assign(metadata i1 undef, metadata !84, metadata !DIExpression(), metadata !94, metadata ptr %7, metadata !DIExpression()), !dbg !93
  %8 = alloca [16 x double], align 16, !DIAssignID !95
  call void @llvm.dbg.assign(metadata i1 undef, metadata !85, metadata !DIExpression(), metadata !95, metadata ptr %8, metadata !DIExpression()), !dbg !93
  %9 = alloca [16 x double], align 16, !DIAssignID !96
  call void @llvm.dbg.assign(metadata i1 undef, metadata !86, metadata !DIExpression(), metadata !96, metadata ptr %9, metadata !DIExpression()), !dbg !93
  tail call void @llvm.dbg.value(metadata double %0, metadata !68, metadata !DIExpression()), !dbg !97
  tail call void @llvm.dbg.value(metadata double %1, metadata !69, metadata !DIExpression()), !dbg !97
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !70, metadata !DIExpression()), !dbg !97
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !71, metadata !DIExpression()), !dbg !97
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !72, metadata !DIExpression()), !dbg !97
  %10 = tail call double @llvm.fabs.f64(double %1), !dbg !98
  %11 = fcmp ogt double %10, 1.000000e+00, !dbg !99
  br i1 %11, label %12, label %13, !dbg !100

12:                                               ; preds = %5
  store double 0.000000e+00, ptr %2, align 8, !dbg !101, !tbaa !103
  store double 0.000000e+00, ptr %3, align 8, !dbg !107, !tbaa !103
  store double 0.000000e+00, ptr %4, align 8, !dbg !108, !tbaa !103
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 46, i32 noundef 1) #5, !dbg !109
  br label %211, !dbg !109

13:                                               ; preds = %5
  %14 = fcmp olt double %10, 0x3CC0000000000000, !dbg !111
  br i1 %14, label %15, label %16, !dbg !112

15:                                               ; preds = %13
  %handler_result16 = call double @callHandler(i32 1, double %0, double %0), !dbg !113
  store double %handler_result16, ptr %2, align 8, !dbg !113, !tbaa !103
  %handler_result17 = call double @callHandler(i32 2, double %0, double %0), !dbg !115
  store double %handler_result17, ptr %3, align 8, !dbg !115, !tbaa !103
  store double 1.000000e+00, ptr %4, align 8, !dbg !116, !tbaa !103
  br label %211, !dbg !117

16:                                               ; preds = %13
  %handler_result = call double @fAddHandlerDouble(double %1, double -1.000000e+00), !dbg !118
  %17 = tail call double @llvm.fabs.f64(double %handler_result), !dbg !118
  %18 = fcmp olt double %17, 0x3CC0000000000000, !dbg !119
  br i1 %18, label %19, label %22, !dbg !120

19:                                               ; preds = %16
  %20 = tail call double @tanh(double noundef %0) #5, !dbg !121
  store double %20, ptr %2, align 8, !dbg !123, !tbaa !103
  %handler_result18 = call double @callHandler(i32 9, double %0, double %0), !dbg !124
  %21 = fdiv double 1.000000e+00, %handler_result18, !dbg !124
  store double %21, ptr %3, align 8, !dbg !125, !tbaa !103
  store double %21, ptr %4, align 8, !dbg !126, !tbaa !103
  br label %211, !dbg !127

22:                                               ; preds = %16
  tail call void @llvm.dbg.value(metadata i32 0, metadata !73, metadata !DIExpression()), !dbg !93
  tail call void @llvm.dbg.value(metadata i32 16, metadata !78, metadata !DIExpression()), !dbg !93
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %6) #5, !dbg !128
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %7) #5, !dbg !129
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %8) #5, !dbg !130
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %9) #5, !dbg !131
  tail call void @llvm.dbg.value(metadata i32 0, metadata !91, metadata !DIExpression()), !dbg !93
  store double 1.000000e+00, ptr %6, align 16, !dbg !132, !tbaa !103, !DIAssignID !133
  call void @llvm.dbg.assign(metadata double 1.000000e+00, metadata !80, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !133, metadata ptr %6, metadata !DIExpression()), !dbg !93
  %handler_result1 = call double @fSubHandlerDouble(double 1.000000e+00, double %1), !dbg !134
  %23 = tail call double @sqrt(double noundef %handler_result1) #5, !dbg !134
  store double %23, ptr %7, align 16, !dbg !135, !tbaa !103, !DIAssignID !136
  call void @llvm.dbg.assign(metadata double %23, metadata !84, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !136, metadata ptr %7, metadata !DIExpression()), !dbg !93
  br label %24, !dbg !137

24:                                               ; preds = %32, %22
  %25 = phi double [ %37, %32 ], [ %23, %22 ], !dbg !138
  %26 = phi double [ %33, %32 ], [ 1.000000e+00, %22 ], !dbg !139
  %27 = phi i64 [ %34, %32 ], [ 0, %22 ], !dbg !93
  tail call void @llvm.dbg.value(metadata i64 %27, metadata !91, metadata !DIExpression()), !dbg !93
  %handler_result2 = call double @fSubHandlerDouble(double %26, double %25), !dbg !140
  %28 = tail call double @llvm.fabs.f64(double %handler_result2), !dbg !140
  %handler_result3 = call double @fAddHandlerDouble(double %26, double %25), !dbg !141
  %29 = tail call double @llvm.fabs.f64(double %handler_result3), !dbg !141
  %30 = fmul double %29, 0x3CD0000000000000, !dbg !142
  %31 = fcmp ogt double %28, %30, !dbg !143
  br i1 %31, label %32, label %40, !dbg !137

32:                                               ; preds = %24
  %33 = fmul double %handler_result3, 5.000000e-01, !dbg !144
  %34 = add nuw nsw i64 %27, 1, !dbg !146
  %35 = getelementptr inbounds [16 x double], ptr %6, i64 0, i64 %34, !dbg !147
  store double %33, ptr %35, align 8, !dbg !148, !tbaa !103
  %36 = fmul double %26, %25, !dbg !149
  %37 = tail call double @sqrt(double noundef %36) #5, !dbg !150
  %38 = getelementptr inbounds [16 x double], ptr %7, i64 0, i64 %34, !dbg !151
  store double %37, ptr %38, align 8, !dbg !152, !tbaa !103
  tail call void @llvm.dbg.value(metadata i64 %34, metadata !91, metadata !DIExpression()), !dbg !93
  %39 = icmp eq i64 %34, 15, !dbg !153
  br i1 %39, label %42, label %24, !dbg !155, !llvm.loop !156

40:                                               ; preds = %24
  %41 = trunc i64 %27 to i32
  br label %42, !dbg !159

42:                                               ; preds = %40, %32
  %43 = phi i32 [ 0, %40 ], [ 11, %32 ], !dbg !93
  %44 = phi i32 [ %41, %40 ], [ 15, %32 ], !dbg !93
  tail call void @llvm.dbg.value(metadata i32 %44, metadata !91, metadata !DIExpression()), !dbg !93
  tail call void @llvm.dbg.value(metadata i32 %43, metadata !73, metadata !DIExpression()), !dbg !93
  %45 = sext i32 %44 to i64, !dbg !159
  %46 = getelementptr inbounds [16 x double], ptr %6, i64 0, i64 %45, !dbg !159
  %47 = load double, ptr %46, align 8, !dbg !159, !tbaa !103
  %48 = fmul double %47, %0, !dbg !160
  %handler_result19 = call double @callHandler(i32 1, double %48, double %48), !dbg !161
  tail call void @llvm.dbg.value(metadata double %handler_result19, metadata !87, metadata !DIExpression()), !dbg !93
  %handler_result20 = call double @callHandler(i32 2, double %48, double %48), !dbg !162
  tail call void @llvm.dbg.value(metadata double %handler_result20, metadata !88, metadata !DIExpression()), !dbg !93
  %49 = tail call double @llvm.fabs.f64(double %handler_result19), !dbg !162
  %50 = tail call double @llvm.fabs.f64(double %handler_result20), !dbg !164
  %51 = fcmp olt double %49, %50, !dbg !165
  %52 = getelementptr inbounds [16 x double], ptr %8, i64 0, i64 %45, !dbg !166
  %53 = getelementptr inbounds [16 x double], ptr %9, i64 0, i64 %45, !dbg !166
  tail call void @llvm.dbg.value(metadata i32 %44, metadata !91, metadata !DIExpression()), !dbg !93
  tail call void @llvm.dbg.value(metadata i32 %44, metadata !91, metadata !DIExpression()), !dbg !93
  %54 = icmp sgt i32 %44, 0, !dbg !166
  br i1 %51, label %55, label %135, !dbg !167

55:                                               ; preds = %42
  %56 = fdiv double %handler_result19, %handler_result20, !dbg !168
  tail call void @llvm.dbg.value(metadata double %56, metadata !89, metadata !DIExpression()), !dbg !93
  %57 = fmul double %47, %56, !dbg !170
  store double %57, ptr %52, align 8, !dbg !171, !tbaa !103
  store double 1.000000e+00, ptr %53, align 8, !dbg !172, !tbaa !103
  br i1 %54, label %58, label %122, !dbg !173

58:                                               ; preds = %55
  %59 = zext nneg i32 %44 to i64, !dbg !173
  %60 = getelementptr inbounds [16 x double], ptr %9, i64 0, i64 %59
  %61 = load double, ptr %60, align 8, !dbg !174, !tbaa !103
  %62 = getelementptr inbounds [16 x double], ptr %8, i64 0, i64 %59
  %63 = load double, ptr %62, align 8, !dbg !176, !tbaa !103
  %64 = getelementptr inbounds [16 x double], ptr %6, i64 0, i64 %59
  %65 = load double, ptr %64, align 8, !dbg !177, !tbaa !103
  %66 = and i64 %59, 1, !dbg !173
  %67 = icmp eq i64 %66, 0, !dbg !173
  br i1 %67, label %80, label %68, !dbg !173

68:                                               ; preds = %58
  tail call void @llvm.dbg.value(metadata i64 %59, metadata !91, metadata !DIExpression()), !dbg !93
  %69 = add nsw i64 %59, -1, !dbg !178
  tail call void @llvm.dbg.value(metadata i64 %69, metadata !91, metadata !DIExpression()), !dbg !93
  %70 = fmul double %61, %63, !dbg !179
  %71 = getelementptr inbounds [16 x double], ptr %8, i64 0, i64 %69, !dbg !180
  store double %70, ptr %71, align 8, !dbg !181, !tbaa !103
  %72 = fmul double %63, %63, !dbg !182
  %73 = fdiv double %72, %65, !dbg !183
  tail call void @llvm.dbg.value(metadata double %73, metadata !90, metadata !DIExpression()), !dbg !93
  %74 = getelementptr inbounds [16 x double], ptr %7, i64 0, i64 %69, !dbg !184
  %75 = load double, ptr %74, align 8, !dbg !184, !tbaa !103
  %handler_result4 = call double @fAddHandlerDouble(double %73, double %75), !dbg !185
  %76 = getelementptr inbounds [16 x double], ptr %6, i64 0, i64 %69, !dbg !185
  %77 = load double, ptr %76, align 8, !dbg !185, !tbaa !103
  %handler_result5 = call double @fAddHandlerDouble(double %73, double %77), !dbg !186
  %78 = fdiv double %handler_result4, %handler_result5, !dbg !186
  %79 = getelementptr inbounds [16 x double], ptr %9, i64 0, i64 %69, !dbg !187
  store double %78, ptr %79, align 8, !dbg !188, !tbaa !103
  br label %80, !dbg !173

80:                                               ; preds = %68, %58
  %81 = phi double [ %65, %58 ], [ %77, %68 ]
  %82 = phi double [ %63, %58 ], [ %70, %68 ]
  %83 = phi double [ %61, %58 ], [ %78, %68 ]
  %84 = phi i64 [ %59, %58 ], [ %69, %68 ]
  %85 = phi i64 [ undef, %58 ], [ %69, %68 ]
  %86 = icmp eq i32 %44, 1, !dbg !173
  br i1 %86, label %115, label %87, !dbg !173

87:                                               ; preds = %87, %80
  %88 = phi double [ %111, %87 ], [ %81, %80 ], !dbg !177
  %89 = phi double [ %104, %87 ], [ %82, %80 ], !dbg !176
  %90 = phi double [ %112, %87 ], [ %83, %80 ], !dbg !174
  %91 = phi i64 [ %103, %87 ], [ %84, %80 ]
  tail call void @llvm.dbg.value(metadata i64 %91, metadata !91, metadata !DIExpression()), !dbg !93
  %92 = add nsw i64 %91, -1, !dbg !178
  tail call void @llvm.dbg.value(metadata i64 %92, metadata !91, metadata !DIExpression()), !dbg !93
  %93 = fmul double %90, %89, !dbg !179
  %94 = getelementptr inbounds [16 x double], ptr %8, i64 0, i64 %92, !dbg !180
  store double %93, ptr %94, align 8, !dbg !181, !tbaa !103
  %95 = fmul double %89, %89, !dbg !182
  %96 = fdiv double %95, %88, !dbg !183
  tail call void @llvm.dbg.value(metadata double %96, metadata !90, metadata !DIExpression()), !dbg !93
  %97 = getelementptr inbounds [16 x double], ptr %7, i64 0, i64 %92, !dbg !184
  %98 = load double, ptr %97, align 8, !dbg !184, !tbaa !103
  %handler_result6 = call double @fAddHandlerDouble(double %96, double %98), !dbg !185
  %99 = getelementptr inbounds [16 x double], ptr %6, i64 0, i64 %92, !dbg !185
  %100 = load double, ptr %99, align 8, !dbg !185, !tbaa !103
  %handler_result7 = call double @fAddHandlerDouble(double %96, double %100), !dbg !186
  %101 = fdiv double %handler_result6, %handler_result7, !dbg !186
  %102 = getelementptr inbounds [16 x double], ptr %9, i64 0, i64 %92, !dbg !187
  store double %101, ptr %102, align 8, !dbg !188, !tbaa !103
  tail call void @llvm.dbg.value(metadata i64 %92, metadata !91, metadata !DIExpression()), !dbg !93
  %103 = add nsw i64 %91, -2, !dbg !178
  tail call void @llvm.dbg.value(metadata i64 %103, metadata !91, metadata !DIExpression()), !dbg !93
  %104 = fmul double %101, %93, !dbg !179
  %105 = getelementptr inbounds [16 x double], ptr %8, i64 0, i64 %103, !dbg !180
  store double %104, ptr %105, align 8, !dbg !181, !tbaa !103
  %106 = fmul double %93, %93, !dbg !182
  %107 = fdiv double %106, %100, !dbg !183
  tail call void @llvm.dbg.value(metadata double %107, metadata !90, metadata !DIExpression()), !dbg !93
  %108 = getelementptr inbounds [16 x double], ptr %7, i64 0, i64 %103, !dbg !184
  %109 = load double, ptr %108, align 8, !dbg !184, !tbaa !103
  %handler_result8 = call double @fAddHandlerDouble(double %107, double %109), !dbg !185
  %110 = getelementptr inbounds [16 x double], ptr %6, i64 0, i64 %103, !dbg !185
  %111 = load double, ptr %110, align 8, !dbg !185, !tbaa !103
  %handler_result9 = call double @fAddHandlerDouble(double %107, double %111), !dbg !186
  %112 = fdiv double %handler_result8, %handler_result9, !dbg !186
  %113 = getelementptr inbounds [16 x double], ptr %9, i64 0, i64 %103, !dbg !187
  store double %112, ptr %113, align 8, !dbg !188, !tbaa !103
  %114 = icmp ugt i64 %92, 1, !dbg !189
  br i1 %114, label %87, label %115, !dbg !173, !llvm.loop !190

115:                                              ; preds = %87, %80
  %116 = phi i64 [ %85, %80 ], [ %103, %87 ], !dbg !178
  %117 = shl nuw nsw i64 %116, 32, !dbg !192
  %118 = getelementptr inbounds [16 x double], ptr %9, i64 0, i64 %117
  %119 = load double, ptr %118, align 16, !dbg !192, !tbaa !103
  %120 = getelementptr inbounds [16 x double], ptr %8, i64 0, i64 %117
  %121 = load double, ptr %120, align 16, !dbg !193, !tbaa !103
  br label %122, !dbg !194

122:                                              ; preds = %115, %55
  %123 = phi double [ %121, %115 ], [ %57, %55 ], !dbg !193
  %124 = phi double [ %119, %115 ], [ 1.000000e+00, %55 ], !dbg !192
  %125 = tail call double @sqrt(double noundef %handler_result1) #5, !dbg !194
  %126 = fdiv double %125, %124, !dbg !195
  store double %126, ptr %4, align 8, !dbg !196, !tbaa !103
  %127 = fcmp oge double %handler_result20, 0.000000e+00, !dbg !197
  %128 = fneg double %126, !dbg !198
  %129 = select i1 %127, double %126, double %128, !dbg !198
  %130 = tail call double @gsl_hypot(double noundef 1.000000e+00, double noundef %123) #5, !dbg !199
  %131 = fdiv double %129, %130, !dbg !200
  store double %131, ptr %3, align 8, !dbg !201, !tbaa !103
  %132 = fmul double %123, %131, !dbg !202
  %133 = tail call double @sqrt(double noundef %handler_result1) #5, !dbg !203
  %134 = fdiv double %132, %133, !dbg !204
  store double %134, ptr %2, align 8, !dbg !205, !tbaa !103
  br label %210, !dbg !206

135:                                              ; preds = %42
  %136 = fdiv double %handler_result20, %handler_result19, !dbg !207
  tail call void @llvm.dbg.value(metadata double %136, metadata !89, metadata !DIExpression()), !dbg !93
  %137 = fmul double %47, %136, !dbg !209
  store double %137, ptr %52, align 8, !dbg !210, !tbaa !103
  store double 1.000000e+00, ptr %53, align 8, !dbg !211, !tbaa !103
  br i1 %54, label %138, label %202, !dbg !212

138:                                              ; preds = %135
  %139 = zext nneg i32 %44 to i64, !dbg !212
  %140 = getelementptr inbounds [16 x double], ptr %9, i64 0, i64 %139
  %141 = load double, ptr %140, align 8, !dbg !213, !tbaa !103
  %142 = getelementptr inbounds [16 x double], ptr %8, i64 0, i64 %139
  %143 = load double, ptr %142, align 8, !dbg !215, !tbaa !103
  %144 = getelementptr inbounds [16 x double], ptr %6, i64 0, i64 %139
  %145 = load double, ptr %144, align 8, !dbg !216, !tbaa !103
  %146 = and i64 %139, 1, !dbg !212
  %147 = icmp eq i64 %146, 0, !dbg !212
  br i1 %147, label %160, label %148, !dbg !212

148:                                              ; preds = %138
  tail call void @llvm.dbg.value(metadata i64 %139, metadata !91, metadata !DIExpression()), !dbg !93
  %149 = add nsw i64 %139, -1, !dbg !217
  tail call void @llvm.dbg.value(metadata i64 %149, metadata !91, metadata !DIExpression()), !dbg !93
  %150 = fmul double %141, %143, !dbg !218
  %151 = getelementptr inbounds [16 x double], ptr %8, i64 0, i64 %149, !dbg !219
  store double %150, ptr %151, align 8, !dbg !220, !tbaa !103
  %152 = fmul double %143, %143, !dbg !221
  %153 = fdiv double %152, %145, !dbg !222
  tail call void @llvm.dbg.value(metadata double %153, metadata !90, metadata !DIExpression()), !dbg !93
  %154 = getelementptr inbounds [16 x double], ptr %7, i64 0, i64 %149, !dbg !223
  %155 = load double, ptr %154, align 8, !dbg !223, !tbaa !103
  %handler_result10 = call double @fAddHandlerDouble(double %153, double %155), !dbg !224
  %156 = getelementptr inbounds [16 x double], ptr %6, i64 0, i64 %149, !dbg !224
  %157 = load double, ptr %156, align 8, !dbg !224, !tbaa !103
  %handler_result11 = call double @fAddHandlerDouble(double %153, double %157), !dbg !225
  %158 = fdiv double %handler_result10, %handler_result11, !dbg !225
  %159 = getelementptr inbounds [16 x double], ptr %9, i64 0, i64 %149, !dbg !226
  store double %158, ptr %159, align 8, !dbg !227, !tbaa !103
  br label %160, !dbg !212

160:                                              ; preds = %148, %138
  %161 = phi double [ %145, %138 ], [ %157, %148 ]
  %162 = phi double [ %143, %138 ], [ %150, %148 ]
  %163 = phi double [ %141, %138 ], [ %158, %148 ]
  %164 = phi i64 [ %139, %138 ], [ %149, %148 ]
  %165 = phi i64 [ undef, %138 ], [ %149, %148 ]
  %166 = icmp eq i32 %44, 1, !dbg !212
  br i1 %166, label %195, label %167, !dbg !212

167:                                              ; preds = %167, %160
  %168 = phi double [ %191, %167 ], [ %161, %160 ], !dbg !216
  %169 = phi double [ %184, %167 ], [ %162, %160 ], !dbg !215
  %170 = phi double [ %192, %167 ], [ %163, %160 ], !dbg !213
  %171 = phi i64 [ %183, %167 ], [ %164, %160 ]
  tail call void @llvm.dbg.value(metadata i64 %171, metadata !91, metadata !DIExpression()), !dbg !93
  %172 = add nsw i64 %171, -1, !dbg !217
  tail call void @llvm.dbg.value(metadata i64 %172, metadata !91, metadata !DIExpression()), !dbg !93
  %173 = fmul double %170, %169, !dbg !218
  %174 = getelementptr inbounds [16 x double], ptr %8, i64 0, i64 %172, !dbg !219
  store double %173, ptr %174, align 8, !dbg !220, !tbaa !103
  %175 = fmul double %169, %169, !dbg !221
  %176 = fdiv double %175, %168, !dbg !222
  tail call void @llvm.dbg.value(metadata double %176, metadata !90, metadata !DIExpression()), !dbg !93
  %177 = getelementptr inbounds [16 x double], ptr %7, i64 0, i64 %172, !dbg !223
  %178 = load double, ptr %177, align 8, !dbg !223, !tbaa !103
  %handler_result12 = call double @fAddHandlerDouble(double %176, double %178), !dbg !224
  %179 = getelementptr inbounds [16 x double], ptr %6, i64 0, i64 %172, !dbg !224
  %180 = load double, ptr %179, align 8, !dbg !224, !tbaa !103
  %handler_result13 = call double @fAddHandlerDouble(double %176, double %180), !dbg !225
  %181 = fdiv double %handler_result12, %handler_result13, !dbg !225
  %182 = getelementptr inbounds [16 x double], ptr %9, i64 0, i64 %172, !dbg !226
  store double %181, ptr %182, align 8, !dbg !227, !tbaa !103
  tail call void @llvm.dbg.value(metadata i64 %172, metadata !91, metadata !DIExpression()), !dbg !93
  %183 = add nsw i64 %171, -2, !dbg !217
  tail call void @llvm.dbg.value(metadata i64 %183, metadata !91, metadata !DIExpression()), !dbg !93
  %184 = fmul double %181, %173, !dbg !218
  %185 = getelementptr inbounds [16 x double], ptr %8, i64 0, i64 %183, !dbg !219
  store double %184, ptr %185, align 8, !dbg !220, !tbaa !103
  %186 = fmul double %173, %173, !dbg !221
  %187 = fdiv double %186, %180, !dbg !222
  tail call void @llvm.dbg.value(metadata double %187, metadata !90, metadata !DIExpression()), !dbg !93
  %188 = getelementptr inbounds [16 x double], ptr %7, i64 0, i64 %183, !dbg !223
  %189 = load double, ptr %188, align 8, !dbg !223, !tbaa !103
  %handler_result14 = call double @fAddHandlerDouble(double %187, double %189), !dbg !224
  %190 = getelementptr inbounds [16 x double], ptr %6, i64 0, i64 %183, !dbg !224
  %191 = load double, ptr %190, align 8, !dbg !224, !tbaa !103
  %handler_result15 = call double @fAddHandlerDouble(double %187, double %191), !dbg !225
  %192 = fdiv double %handler_result14, %handler_result15, !dbg !225
  %193 = getelementptr inbounds [16 x double], ptr %9, i64 0, i64 %183, !dbg !226
  store double %192, ptr %193, align 8, !dbg !227, !tbaa !103
  %194 = icmp ugt i64 %172, 1, !dbg !228
  br i1 %194, label %167, label %195, !dbg !212, !llvm.loop !229

195:                                              ; preds = %167, %160
  %196 = phi i64 [ %165, %160 ], [ %183, %167 ], !dbg !217
  %197 = shl nuw nsw i64 %196, 32, !dbg !231
  %198 = getelementptr inbounds [16 x double], ptr %9, i64 0, i64 %197
  %199 = load double, ptr %198, align 16, !dbg !231, !tbaa !103
  %200 = getelementptr inbounds [16 x double], ptr %8, i64 0, i64 %197
  %201 = load double, ptr %200, align 16, !dbg !232, !tbaa !103
  br label %202, !dbg !231

202:                                              ; preds = %195, %135
  %203 = phi double [ %201, %195 ], [ %137, %135 ], !dbg !232
  %204 = phi double [ %199, %195 ], [ 1.000000e+00, %135 ], !dbg !231
  store double %204, ptr %4, align 8, !dbg !233, !tbaa !103
  %205 = fcmp oge double %handler_result19, 0.000000e+00, !dbg !234
  %206 = select i1 %205, double 1.000000e+00, double -1.000000e+00, !dbg !234
  %207 = tail call double @gsl_hypot(double noundef 1.000000e+00, double noundef %203) #5, !dbg !235
  %208 = fdiv double %206, %207, !dbg !236
  store double %208, ptr %2, align 8, !dbg !237, !tbaa !103
  %209 = fmul double %203, %208, !dbg !238
  store double %209, ptr %3, align 8, !dbg !239, !tbaa !103
  br label %210

210:                                              ; preds = %202, %122
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %9) #5, !dbg !240
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %8) #5, !dbg !240
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %7) #5, !dbg !240
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %6) #5, !dbg !240
  br label %211

211:                                              ; preds = %210, %19, %15, %12
  %212 = phi i32 [ 1, %12 ], [ 0, %15 ], [ 0, %19 ], [ %43, %210 ], !dbg !241
  ret i32 %212, !dbg !242
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #1

declare !dbg !243 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !248 double @sin(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !252 double @cos(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !253 double @tanh(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !254 double @cosh(double noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !255 double @sqrt(double noundef) local_unnamed_addr #3

declare !dbg !256 double @gsl_hypot(double noundef, double noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

declare double @fAddHandlerDouble(double, double)

declare double @fSubHandlerDouble(double, double)

declare double @callHandler(i32, double, double)

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!12}
!llvm.module.flags = !{!54, !55, !56, !57, !58, !59, !60}
!llvm.ident = !{!61}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 46, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "elljac.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "354ad62e1c933987b7f6924c92006a75")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 10)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 46, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 9)
!12 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !13, globals: !53, splitDebugInlining: false, nameTableKind: None)
!13 = !{!14}
!14 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !15, line: 39, baseType: !16, size: 32, elements: !17)
!15 = !DIFile(filename: "../gsl/gsl_errno.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "3ff14ff6df19564f3d7caf1e8e622626")
!16 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!17 = !{!18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52}
!18 = !DIEnumerator(name: "GSL_SUCCESS", value: 0)
!19 = !DIEnumerator(name: "GSL_FAILURE", value: -1)
!20 = !DIEnumerator(name: "GSL_CONTINUE", value: -2)
!21 = !DIEnumerator(name: "GSL_EDOM", value: 1)
!22 = !DIEnumerator(name: "GSL_ERANGE", value: 2)
!23 = !DIEnumerator(name: "GSL_EFAULT", value: 3)
!24 = !DIEnumerator(name: "GSL_EINVAL", value: 4)
!25 = !DIEnumerator(name: "GSL_EFAILED", value: 5)
!26 = !DIEnumerator(name: "GSL_EFACTOR", value: 6)
!27 = !DIEnumerator(name: "GSL_ESANITY", value: 7)
!28 = !DIEnumerator(name: "GSL_ENOMEM", value: 8)
!29 = !DIEnumerator(name: "GSL_EBADFUNC", value: 9)
!30 = !DIEnumerator(name: "GSL_ERUNAWAY", value: 10)
!31 = !DIEnumerator(name: "GSL_EMAXITER", value: 11)
!32 = !DIEnumerator(name: "GSL_EZERODIV", value: 12)
!33 = !DIEnumerator(name: "GSL_EBADTOL", value: 13)
!34 = !DIEnumerator(name: "GSL_ETOL", value: 14)
!35 = !DIEnumerator(name: "GSL_EUNDRFLW", value: 15)
!36 = !DIEnumerator(name: "GSL_EOVRFLW", value: 16)
!37 = !DIEnumerator(name: "GSL_ELOSS", value: 17)
!38 = !DIEnumerator(name: "GSL_EROUND", value: 18)
!39 = !DIEnumerator(name: "GSL_EBADLEN", value: 19)
!40 = !DIEnumerator(name: "GSL_ENOTSQR", value: 20)
!41 = !DIEnumerator(name: "GSL_ESING", value: 21)
!42 = !DIEnumerator(name: "GSL_EDIVERGE", value: 22)
!43 = !DIEnumerator(name: "GSL_EUNSUP", value: 23)
!44 = !DIEnumerator(name: "GSL_EUNIMPL", value: 24)
!45 = !DIEnumerator(name: "GSL_ECACHE", value: 25)
!46 = !DIEnumerator(name: "GSL_ETABLE", value: 26)
!47 = !DIEnumerator(name: "GSL_ENOPROG", value: 27)
!48 = !DIEnumerator(name: "GSL_ENOPROGJ", value: 28)
!49 = !DIEnumerator(name: "GSL_ETOLF", value: 29)
!50 = !DIEnumerator(name: "GSL_ETOLX", value: 30)
!51 = !DIEnumerator(name: "GSL_ETOLG", value: 31)
!52 = !DIEnumerator(name: "GSL_EOF", value: 32)
!53 = !{!0, !7}
!54 = !{i32 7, !"Dwarf Version", i32 5}
!55 = !{i32 2, !"Debug Info Version", i32 3}
!56 = !{i32 1, !"wchar_size", i32 4}
!57 = !{i32 8, !"PIC Level", i32 2}
!58 = !{i32 7, !"PIE Level", i32 2}
!59 = !{i32 7, !"uwtable", i32 2}
!60 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!61 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!62 = distinct !DISubprogram(name: "gsl_sf_elljac_e", scope: !2, file: !2, line: 40, type: !63, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !12, retainedNodes: !67)
!63 = !DISubroutineType(types: !64)
!64 = !{!16, !65, !65, !66, !66, !66}
!65 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!67 = !{!68, !69, !70, !71, !72, !73, !78, !80, !84, !85, !86, !87, !88, !89, !90, !91}
!68 = !DILocalVariable(name: "u", arg: 1, scope: !62, file: !2, line: 40, type: !65)
!69 = !DILocalVariable(name: "m", arg: 2, scope: !62, file: !2, line: 40, type: !65)
!70 = !DILocalVariable(name: "sn", arg: 3, scope: !62, file: !2, line: 40, type: !66)
!71 = !DILocalVariable(name: "cn", arg: 4, scope: !62, file: !2, line: 40, type: !66)
!72 = !DILocalVariable(name: "dn", arg: 5, scope: !62, file: !2, line: 40, type: !66)
!73 = !DILocalVariable(name: "status", scope: !74, file: !2, line: 61, type: !16)
!74 = distinct !DILexicalBlock(scope: !75, file: !2, line: 60, column: 8)
!75 = distinct !DILexicalBlock(scope: !76, file: !2, line: 54, column: 11)
!76 = distinct !DILexicalBlock(scope: !77, file: !2, line: 48, column: 11)
!77 = distinct !DILexicalBlock(scope: !62, file: !2, line: 42, column: 6)
!78 = !DILocalVariable(name: "N", scope: !74, file: !2, line: 62, type: !79)
!79 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!80 = !DILocalVariable(name: "mu", scope: !74, file: !2, line: 63, type: !81)
!81 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 1024, elements: !82)
!82 = !{!83}
!83 = !DISubrange(count: 16)
!84 = !DILocalVariable(name: "nu", scope: !74, file: !2, line: 64, type: !81)
!85 = !DILocalVariable(name: "c", scope: !74, file: !2, line: 65, type: !81)
!86 = !DILocalVariable(name: "d", scope: !74, file: !2, line: 66, type: !81)
!87 = !DILocalVariable(name: "sin_umu", scope: !74, file: !2, line: 67, type: !65)
!88 = !DILocalVariable(name: "cos_umu", scope: !74, file: !2, line: 67, type: !65)
!89 = !DILocalVariable(name: "t", scope: !74, file: !2, line: 67, type: !65)
!90 = !DILocalVariable(name: "r", scope: !74, file: !2, line: 67, type: !65)
!91 = !DILocalVariable(name: "n", scope: !74, file: !2, line: 68, type: !16)
!92 = distinct !DIAssignID()
!93 = !DILocation(line: 0, scope: !74)
!94 = distinct !DIAssignID()
!95 = distinct !DIAssignID()
!96 = distinct !DIAssignID()
!97 = !DILocation(line: 0, scope: !62)
!98 = !DILocation(line: 42, column: 6, scope: !77)
!99 = !DILocation(line: 42, column: 14, scope: !77)
!100 = !DILocation(line: 42, column: 6, scope: !62)
!101 = !DILocation(line: 43, column: 9, scope: !102)
!102 = distinct !DILexicalBlock(scope: !77, file: !2, line: 42, column: 21)
!103 = !{!104, !104, i64 0}
!104 = !{!"double", !105, i64 0}
!105 = !{!"omnipotent char", !106, i64 0}
!106 = !{!"Simple C/C++ TBAA"}
!107 = !DILocation(line: 44, column: 9, scope: !102)
!108 = !DILocation(line: 45, column: 9, scope: !102)
!109 = !DILocation(line: 46, column: 5, scope: !110)
!110 = distinct !DILexicalBlock(scope: !102, file: !2, line: 46, column: 5)
!111 = !DILocation(line: 48, column: 19, scope: !76)
!112 = !DILocation(line: 48, column: 11, scope: !77)
!113 = !DILocation(line: 49, column: 9, scope: !114)
!114 = distinct !DILexicalBlock(scope: !76, file: !2, line: 48, column: 42)
!115 = !DILocation(line: 50, column: 9, scope: !114)
!116 = !DILocation(line: 51, column: 9, scope: !114)
!117 = !DILocation(line: 52, column: 5, scope: !114)
!118 = !DILocation(line: 54, column: 11, scope: !75)
!119 = !DILocation(line: 54, column: 25, scope: !75)
!120 = !DILocation(line: 54, column: 11, scope: !76)
!121 = !DILocation(line: 55, column: 11, scope: !122)
!122 = distinct !DILexicalBlock(scope: !75, file: !2, line: 54, column: 48)
!123 = !DILocation(line: 55, column: 9, scope: !122)
!124 = !DILocation(line: 56, column: 14, scope: !122)
!125 = !DILocation(line: 56, column: 9, scope: !122)
!126 = !DILocation(line: 57, column: 9, scope: !122)
!127 = !DILocation(line: 58, column: 5, scope: !122)
!128 = !DILocation(line: 63, column: 5, scope: !74)
!129 = !DILocation(line: 64, column: 5, scope: !74)
!130 = !DILocation(line: 65, column: 5, scope: !74)
!131 = !DILocation(line: 66, column: 5, scope: !74)
!132 = !DILocation(line: 70, column: 11, scope: !74)
!133 = distinct !DIAssignID()
!134 = !DILocation(line: 71, column: 13, scope: !74)
!135 = !DILocation(line: 71, column: 11, scope: !74)
!136 = distinct !DIAssignID()
!137 = !DILocation(line: 73, column: 5, scope: !74)
!138 = !DILocation(line: 73, column: 25, scope: !74)
!139 = !DILocation(line: 73, column: 17, scope: !74)
!140 = !DILocation(line: 73, column: 12, scope: !74)
!141 = !DILocation(line: 73, column: 58, scope: !74)
!142 = !DILocation(line: 73, column: 56, scope: !74)
!143 = !DILocation(line: 73, column: 32, scope: !74)
!144 = !DILocation(line: 74, column: 21, scope: !145)
!145 = distinct !DILexicalBlock(scope: !74, file: !2, line: 73, column: 77)
!146 = !DILocation(line: 74, column: 11, scope: !145)
!147 = !DILocation(line: 74, column: 7, scope: !145)
!148 = !DILocation(line: 74, column: 15, scope: !145)
!149 = !DILocation(line: 75, column: 28, scope: !145)
!150 = !DILocation(line: 75, column: 17, scope: !145)
!151 = !DILocation(line: 75, column: 7, scope: !145)
!152 = !DILocation(line: 75, column: 15, scope: !145)
!153 = !DILocation(line: 77, column: 12, scope: !154)
!154 = distinct !DILexicalBlock(scope: !145, file: !2, line: 77, column: 10)
!155 = !DILocation(line: 77, column: 10, scope: !145)
!156 = distinct !{!156, !137, !157, !158}
!157 = !DILocation(line: 81, column: 5, scope: !74)
!158 = !{!"llvm.loop.mustprogress"}
!159 = !DILocation(line: 83, column: 23, scope: !74)
!160 = !DILocation(line: 83, column: 21, scope: !74)
!161 = !DILocation(line: 84, column: 15, scope: !74)
!162 = !DILocation(line: 89, column: 9, scope: !163)
!163 = distinct !DILexicalBlock(scope: !74, file: !2, line: 89, column: 9)
!164 = !DILocation(line: 89, column: 25, scope: !163)
!165 = !DILocation(line: 89, column: 23, scope: !163)
!166 = !DILocation(line: 0, scope: !163)
!167 = !DILocation(line: 89, column: 9, scope: !74)
!168 = !DILocation(line: 91, column: 21, scope: !169)
!169 = distinct !DILexicalBlock(scope: !163, file: !2, line: 90, column: 7)
!170 = !DILocation(line: 93, column: 22, scope: !169)
!171 = !DILocation(line: 93, column: 14, scope: !169)
!172 = !DILocation(line: 94, column: 14, scope: !169)
!173 = !DILocation(line: 96, column: 9, scope: !169)
!174 = !DILocation(line: 98, column: 18, scope: !175)
!175 = distinct !DILexicalBlock(scope: !169, file: !2, line: 96, column: 22)
!176 = !DILocation(line: 98, column: 27, scope: !175)
!177 = !DILocation(line: 99, column: 35, scope: !175)
!178 = !DILocation(line: 97, column: 12, scope: !175)
!179 = !DILocation(line: 98, column: 25, scope: !175)
!180 = !DILocation(line: 98, column: 11, scope: !175)
!181 = !DILocation(line: 98, column: 16, scope: !175)
!182 = !DILocation(line: 99, column: 23, scope: !175)
!183 = !DILocation(line: 99, column: 33, scope: !175)
!184 = !DILocation(line: 100, column: 23, scope: !175)
!185 = !DILocation(line: 100, column: 37, scope: !175)
!186 = !DILocation(line: 100, column: 30, scope: !175)
!187 = !DILocation(line: 100, column: 11, scope: !175)
!188 = !DILocation(line: 100, column: 16, scope: !175)
!189 = !DILocation(line: 96, column: 17, scope: !169)
!190 = distinct !{!190, !173, !191, !158}
!191 = !DILocation(line: 101, column: 11, scope: !169)
!192 = !DILocation(line: 103, column: 29, scope: !169)
!193 = !DILocation(line: 104, column: 58, scope: !169)
!194 = !DILocation(line: 103, column: 15, scope: !169)
!195 = !DILocation(line: 103, column: 27, scope: !169)
!196 = !DILocation(line: 103, column: 13, scope: !169)
!197 = !DILocation(line: 104, column: 23, scope: !169)
!198 = !DILocation(line: 104, column: 21, scope: !169)
!199 = !DILocation(line: 104, column: 43, scope: !169)
!200 = !DILocation(line: 104, column: 41, scope: !169)
!201 = !DILocation(line: 104, column: 13, scope: !169)
!202 = !DILocation(line: 105, column: 21, scope: !169)
!203 = !DILocation(line: 105, column: 29, scope: !169)
!204 = !DILocation(line: 105, column: 28, scope: !169)
!205 = !DILocation(line: 105, column: 13, scope: !169)
!206 = !DILocation(line: 106, column: 7, scope: !169)
!207 = !DILocation(line: 109, column: 21, scope: !208)
!208 = distinct !DILexicalBlock(scope: !163, file: !2, line: 108, column: 7)
!209 = !DILocation(line: 111, column: 22, scope: !208)
!210 = !DILocation(line: 111, column: 14, scope: !208)
!211 = !DILocation(line: 112, column: 14, scope: !208)
!212 = !DILocation(line: 114, column: 9, scope: !208)
!213 = !DILocation(line: 116, column: 18, scope: !214)
!214 = distinct !DILexicalBlock(scope: !208, file: !2, line: 114, column: 22)
!215 = !DILocation(line: 116, column: 27, scope: !214)
!216 = !DILocation(line: 117, column: 35, scope: !214)
!217 = !DILocation(line: 115, column: 11, scope: !214)
!218 = !DILocation(line: 116, column: 25, scope: !214)
!219 = !DILocation(line: 116, column: 11, scope: !214)
!220 = !DILocation(line: 116, column: 16, scope: !214)
!221 = !DILocation(line: 117, column: 23, scope: !214)
!222 = !DILocation(line: 117, column: 33, scope: !214)
!223 = !DILocation(line: 118, column: 23, scope: !214)
!224 = !DILocation(line: 118, column: 37, scope: !214)
!225 = !DILocation(line: 118, column: 30, scope: !214)
!226 = !DILocation(line: 118, column: 11, scope: !214)
!227 = !DILocation(line: 118, column: 16, scope: !214)
!228 = !DILocation(line: 114, column: 17, scope: !208)
!229 = distinct !{!229, !212, !230, !158}
!230 = !DILocation(line: 119, column: 9, scope: !208)
!231 = !DILocation(line: 121, column: 15, scope: !208)
!232 = !DILocation(line: 122, column: 50, scope: !208)
!233 = !DILocation(line: 121, column: 13, scope: !208)
!234 = !DILocation(line: 122, column: 15, scope: !208)
!235 = !DILocation(line: 122, column: 35, scope: !208)
!236 = !DILocation(line: 122, column: 33, scope: !208)
!237 = !DILocation(line: 122, column: 13, scope: !208)
!238 = !DILocation(line: 123, column: 20, scope: !208)
!239 = !DILocation(line: 123, column: 13, scope: !208)
!240 = !DILocation(line: 127, column: 3, scope: !75)
!241 = !DILocation(line: 0, scope: !77)
!242 = !DILocation(line: 128, column: 1, scope: !62)
!243 = !DISubprogram(name: "gsl_error", scope: !15, file: !15, line: 77, type: !244, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!244 = !DISubroutineType(types: !245)
!245 = !{null, !246, !246, !16, !16}
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!247 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!248 = !DISubprogram(name: "sin", scope: !249, file: !249, line: 64, type: !250, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!249 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!250 = !DISubroutineType(types: !251)
!251 = !{!65, !65}
!252 = !DISubprogram(name: "cos", scope: !249, file: !249, line: 62, type: !250, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!253 = !DISubprogram(name: "tanh", scope: !249, file: !249, line: 75, type: !250, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!254 = !DISubprogram(name: "cosh", scope: !249, file: !249, line: 71, type: !250, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!255 = !DISubprogram(name: "sqrt", scope: !249, file: !249, line: 143, type: !250, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!256 = !DISubprogram(name: "gsl_hypot", scope: !257, file: !257, line: 37, type: !258, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!257 = !DIFile(filename: "../gsl/gsl_sys.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "66066a5c22c0bbe63a298abf4db295db")
!258 = !DISubroutineType(types: !259)
!259 = !{!65, !260, !260}
!260 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !65)
