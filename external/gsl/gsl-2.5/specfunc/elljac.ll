; ModuleID = 'elljac.c'
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
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 46, i32 noundef 1) #6, !dbg !109
  br label %232, !dbg !109

13:                                               ; preds = %5
  %14 = fcmp olt double %10, 0x3CC0000000000000, !dbg !111
  br i1 %14, label %15, label %18, !dbg !112

15:                                               ; preds = %13
  %16 = tail call double @sin(double noundef %0) #6, !dbg !113
  store double %16, ptr %2, align 8, !dbg !115, !tbaa !103
  %17 = tail call double @cos(double noundef %0) #6, !dbg !116
  store double %17, ptr %3, align 8, !dbg !117, !tbaa !103
  store double 1.000000e+00, ptr %4, align 8, !dbg !118, !tbaa !103
  br label %232, !dbg !119

18:                                               ; preds = %13
  %19 = fadd double %1, -1.000000e+00, !dbg !120
  %20 = tail call double @llvm.fabs.f64(double %19), !dbg !121
  %21 = fcmp olt double %20, 0x3CC0000000000000, !dbg !122
  br i1 %21, label %22, label %26, !dbg !123

22:                                               ; preds = %18
  %23 = tail call double @tanh(double noundef %0) #6, !dbg !124
  store double %23, ptr %2, align 8, !dbg !126, !tbaa !103
  %24 = tail call double @cosh(double noundef %0) #6, !dbg !127
  %25 = fdiv double 1.000000e+00, %24, !dbg !128
  store double %25, ptr %3, align 8, !dbg !129, !tbaa !103
  store double %25, ptr %4, align 8, !dbg !130, !tbaa !103
  br label %232, !dbg !131

26:                                               ; preds = %18
  tail call void @llvm.dbg.value(metadata i32 0, metadata !73, metadata !DIExpression()), !dbg !93
  tail call void @llvm.dbg.value(metadata i32 16, metadata !78, metadata !DIExpression()), !dbg !93
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %6) #6, !dbg !132
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %7) #6, !dbg !133
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %8) #6, !dbg !134
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %9) #6, !dbg !135
  tail call void @llvm.dbg.value(metadata i32 0, metadata !91, metadata !DIExpression()), !dbg !93
  store double 1.000000e+00, ptr %6, align 16, !dbg !136, !tbaa !103, !DIAssignID !137
  call void @llvm.dbg.assign(metadata double 1.000000e+00, metadata !80, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !137, metadata ptr %6, metadata !DIExpression()), !dbg !93
  %27 = fsub double 1.000000e+00, %1, !dbg !138
  %28 = tail call double @sqrt(double noundef %27) #6, !dbg !139
  store double %28, ptr %7, align 16, !dbg !140, !tbaa !103, !DIAssignID !141
  call void @llvm.dbg.assign(metadata double %28, metadata !84, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !141, metadata ptr %7, metadata !DIExpression()), !dbg !93
  br label %29, !dbg !142

29:                                               ; preds = %39, %26
  %30 = phi double [ %44, %39 ], [ %28, %26 ], !dbg !143
  %31 = phi double [ %40, %39 ], [ 1.000000e+00, %26 ], !dbg !144
  %32 = phi i64 [ %41, %39 ], [ 0, %26 ], !dbg !93
  tail call void @llvm.dbg.value(metadata i64 %32, metadata !91, metadata !DIExpression()), !dbg !93
  %33 = fsub double %31, %30, !dbg !145
  %34 = tail call double @llvm.fabs.f64(double %33), !dbg !146
  %35 = fadd double %31, %30, !dbg !147
  %36 = tail call double @llvm.fabs.f64(double %35), !dbg !148
  %37 = fmul double %36, 0x3CD0000000000000, !dbg !149
  %38 = fcmp ogt double %34, %37, !dbg !150
  br i1 %38, label %39, label %47, !dbg !142

39:                                               ; preds = %29
  %40 = fmul double %35, 5.000000e-01, !dbg !151
  %41 = add nuw nsw i64 %32, 1, !dbg !153
  %42 = getelementptr inbounds [16 x double], ptr %6, i64 0, i64 %41, !dbg !154
  store double %40, ptr %42, align 8, !dbg !155, !tbaa !103
  %43 = fmul double %31, %30, !dbg !156
  %44 = tail call double @sqrt(double noundef %43) #6, !dbg !157
  %45 = getelementptr inbounds [16 x double], ptr %7, i64 0, i64 %41, !dbg !158
  store double %44, ptr %45, align 8, !dbg !159, !tbaa !103
  tail call void @llvm.dbg.value(metadata i64 %41, metadata !91, metadata !DIExpression()), !dbg !93
  %46 = icmp eq i64 %41, 15, !dbg !160
  br i1 %46, label %49, label %29, !dbg !162, !llvm.loop !163

47:                                               ; preds = %29
  %48 = trunc i64 %32 to i32
  br label %49, !dbg !166

49:                                               ; preds = %39, %47
  %50 = phi i32 [ 0, %47 ], [ 11, %39 ], !dbg !93
  %51 = phi i32 [ %48, %47 ], [ 15, %39 ], !dbg !93
  tail call void @llvm.dbg.value(metadata i32 %51, metadata !91, metadata !DIExpression()), !dbg !93
  tail call void @llvm.dbg.value(metadata i32 %50, metadata !73, metadata !DIExpression()), !dbg !93
  %52 = sext i32 %51 to i64, !dbg !166
  %53 = getelementptr inbounds [16 x double], ptr %6, i64 0, i64 %52, !dbg !166
  %54 = load double, ptr %53, align 8, !dbg !166, !tbaa !103
  %55 = fmul double %54, %0, !dbg !167
  %56 = tail call double @sin(double noundef %55) #6, !dbg !168
  tail call void @llvm.dbg.value(metadata double %56, metadata !87, metadata !DIExpression()), !dbg !93
  %57 = tail call double @cos(double noundef %55) #6, !dbg !169
  tail call void @llvm.dbg.value(metadata double %57, metadata !88, metadata !DIExpression()), !dbg !93
  %58 = tail call double @llvm.fabs.f64(double %56), !dbg !170
  %59 = tail call double @llvm.fabs.f64(double %57), !dbg !172
  %60 = fcmp olt double %58, %59, !dbg !173
  %61 = getelementptr inbounds [16 x double], ptr %8, i64 0, i64 %52, !dbg !174
  %62 = getelementptr inbounds [16 x double], ptr %9, i64 0, i64 %52, !dbg !174
  tail call void @llvm.dbg.value(metadata i32 %51, metadata !91, metadata !DIExpression()), !dbg !93
  tail call void @llvm.dbg.value(metadata i32 %51, metadata !91, metadata !DIExpression()), !dbg !93
  %63 = icmp sgt i32 %51, 0, !dbg !174
  br i1 %60, label %64, label %150, !dbg !175

64:                                               ; preds = %49
  %65 = fdiv double %56, %57, !dbg !176
  tail call void @llvm.dbg.value(metadata double %65, metadata !89, metadata !DIExpression()), !dbg !93
  %66 = fmul double %54, %65, !dbg !178
  store double %66, ptr %61, align 8, !dbg !179, !tbaa !103
  store double 1.000000e+00, ptr %62, align 8, !dbg !180, !tbaa !103
  br i1 %63, label %67, label %137, !dbg !181

67:                                               ; preds = %64
  %68 = zext nneg i32 %51 to i64, !dbg !181
  %69 = getelementptr inbounds [16 x double], ptr %9, i64 0, i64 %68
  %70 = load double, ptr %69, align 8, !dbg !182, !tbaa !103
  %71 = getelementptr inbounds [16 x double], ptr %8, i64 0, i64 %68
  %72 = load double, ptr %71, align 8, !dbg !184, !tbaa !103
  %73 = getelementptr inbounds [16 x double], ptr %6, i64 0, i64 %68
  %74 = load double, ptr %73, align 8, !dbg !185, !tbaa !103
  %75 = and i64 %68, 1, !dbg !181
  %76 = icmp eq i64 %75, 0, !dbg !181
  br i1 %76, label %91, label %77, !dbg !181

77:                                               ; preds = %67
  tail call void @llvm.dbg.value(metadata i64 %68, metadata !91, metadata !DIExpression()), !dbg !93
  %78 = add nsw i64 %68, -1, !dbg !186
  tail call void @llvm.dbg.value(metadata i64 %78, metadata !91, metadata !DIExpression()), !dbg !93
  %79 = fmul double %70, %72, !dbg !187
  %80 = getelementptr inbounds [16 x double], ptr %8, i64 0, i64 %78, !dbg !188
  store double %79, ptr %80, align 8, !dbg !189, !tbaa !103
  %81 = fmul double %72, %72, !dbg !190
  %82 = fdiv double %81, %74, !dbg !191
  tail call void @llvm.dbg.value(metadata double %82, metadata !90, metadata !DIExpression()), !dbg !93
  %83 = getelementptr inbounds [16 x double], ptr %7, i64 0, i64 %78, !dbg !192
  %84 = load double, ptr %83, align 8, !dbg !192, !tbaa !103
  %85 = fadd double %82, %84, !dbg !193
  %86 = getelementptr inbounds [16 x double], ptr %6, i64 0, i64 %78, !dbg !194
  %87 = load double, ptr %86, align 8, !dbg !194, !tbaa !103
  %88 = fadd double %82, %87, !dbg !195
  %89 = fdiv double %85, %88, !dbg !196
  %90 = getelementptr inbounds [16 x double], ptr %9, i64 0, i64 %78, !dbg !197
  store double %89, ptr %90, align 8, !dbg !198, !tbaa !103
  br label %91, !dbg !181

91:                                               ; preds = %77, %67
  %92 = phi double [ %74, %67 ], [ %87, %77 ]
  %93 = phi double [ %72, %67 ], [ %79, %77 ]
  %94 = phi double [ %70, %67 ], [ %89, %77 ]
  %95 = phi i64 [ %68, %67 ], [ %78, %77 ]
  %96 = phi i64 [ undef, %67 ], [ %78, %77 ]
  %97 = icmp eq i32 %51, 1, !dbg !181
  br i1 %97, label %130, label %98, !dbg !181

98:                                               ; preds = %91, %98
  %99 = phi double [ %125, %98 ], [ %92, %91 ], !dbg !185
  %100 = phi double [ %117, %98 ], [ %93, %91 ], !dbg !184
  %101 = phi double [ %127, %98 ], [ %94, %91 ], !dbg !182
  %102 = phi i64 [ %116, %98 ], [ %95, %91 ]
  tail call void @llvm.dbg.value(metadata i64 %102, metadata !91, metadata !DIExpression()), !dbg !93
  %103 = add nsw i64 %102, -1, !dbg !186
  tail call void @llvm.dbg.value(metadata i64 %103, metadata !91, metadata !DIExpression()), !dbg !93
  %104 = fmul double %101, %100, !dbg !187
  %105 = getelementptr inbounds [16 x double], ptr %8, i64 0, i64 %103, !dbg !188
  store double %104, ptr %105, align 8, !dbg !189, !tbaa !103
  %106 = fmul double %100, %100, !dbg !190
  %107 = fdiv double %106, %99, !dbg !191
  tail call void @llvm.dbg.value(metadata double %107, metadata !90, metadata !DIExpression()), !dbg !93
  %108 = getelementptr inbounds [16 x double], ptr %7, i64 0, i64 %103, !dbg !192
  %109 = load double, ptr %108, align 8, !dbg !192, !tbaa !103
  %110 = fadd double %107, %109, !dbg !193
  %111 = getelementptr inbounds [16 x double], ptr %6, i64 0, i64 %103, !dbg !194
  %112 = load double, ptr %111, align 8, !dbg !194, !tbaa !103
  %113 = fadd double %107, %112, !dbg !195
  %114 = fdiv double %110, %113, !dbg !196
  %115 = getelementptr inbounds [16 x double], ptr %9, i64 0, i64 %103, !dbg !197
  store double %114, ptr %115, align 8, !dbg !198, !tbaa !103
  tail call void @llvm.dbg.value(metadata i64 %103, metadata !91, metadata !DIExpression()), !dbg !93
  %116 = add nsw i64 %102, -2, !dbg !186
  tail call void @llvm.dbg.value(metadata i64 %116, metadata !91, metadata !DIExpression()), !dbg !93
  %117 = fmul double %114, %104, !dbg !187
  %118 = getelementptr inbounds [16 x double], ptr %8, i64 0, i64 %116, !dbg !188
  store double %117, ptr %118, align 8, !dbg !189, !tbaa !103
  %119 = fmul double %104, %104, !dbg !190
  %120 = fdiv double %119, %112, !dbg !191
  tail call void @llvm.dbg.value(metadata double %120, metadata !90, metadata !DIExpression()), !dbg !93
  %121 = getelementptr inbounds [16 x double], ptr %7, i64 0, i64 %116, !dbg !192
  %122 = load double, ptr %121, align 8, !dbg !192, !tbaa !103
  %123 = fadd double %120, %122, !dbg !193
  %124 = getelementptr inbounds [16 x double], ptr %6, i64 0, i64 %116, !dbg !194
  %125 = load double, ptr %124, align 8, !dbg !194, !tbaa !103
  %126 = fadd double %120, %125, !dbg !195
  %127 = fdiv double %123, %126, !dbg !196
  %128 = getelementptr inbounds [16 x double], ptr %9, i64 0, i64 %116, !dbg !197
  store double %127, ptr %128, align 8, !dbg !198, !tbaa !103
  %129 = icmp ugt i64 %103, 1, !dbg !199
  br i1 %129, label %98, label %130, !dbg !181, !llvm.loop !200

130:                                              ; preds = %98, %91
  %131 = phi i64 [ %96, %91 ], [ %116, %98 ], !dbg !186
  %132 = shl nuw nsw i64 %131, 32, !dbg !202
  %133 = getelementptr inbounds [16 x double], ptr %9, i64 0, i64 %132
  %134 = load double, ptr %133, align 16, !dbg !202, !tbaa !103
  %135 = getelementptr inbounds [16 x double], ptr %8, i64 0, i64 %132
  %136 = load double, ptr %135, align 16, !dbg !203, !tbaa !103
  br label %137, !dbg !204

137:                                              ; preds = %130, %64
  %138 = phi double [ %136, %130 ], [ %66, %64 ], !dbg !203
  %139 = phi double [ %134, %130 ], [ 1.000000e+00, %64 ], !dbg !202
  %140 = tail call double @sqrt(double noundef %27) #6, !dbg !204
  %141 = fdiv double %140, %139, !dbg !205
  store double %141, ptr %4, align 8, !dbg !206, !tbaa !103
  %142 = fcmp oge double %57, 0.000000e+00, !dbg !207
  %143 = fneg double %141, !dbg !208
  %144 = select i1 %142, double %141, double %143, !dbg !208
  %145 = tail call double @gsl_hypot(double noundef 1.000000e+00, double noundef %138) #6, !dbg !209
  %146 = fdiv double %144, %145, !dbg !210
  store double %146, ptr %3, align 8, !dbg !211, !tbaa !103
  %147 = fmul double %138, %146, !dbg !212
  %148 = tail call double @sqrt(double noundef %27) #6, !dbg !213
  %149 = fdiv double %147, %148, !dbg !214
  store double %149, ptr %2, align 8, !dbg !215, !tbaa !103
  br label %231, !dbg !216

150:                                              ; preds = %49
  %151 = fdiv double %57, %56, !dbg !217
  tail call void @llvm.dbg.value(metadata double %151, metadata !89, metadata !DIExpression()), !dbg !93
  %152 = fmul double %54, %151, !dbg !219
  store double %152, ptr %61, align 8, !dbg !220, !tbaa !103
  store double 1.000000e+00, ptr %62, align 8, !dbg !221, !tbaa !103
  br i1 %63, label %153, label %223, !dbg !222

153:                                              ; preds = %150
  %154 = zext nneg i32 %51 to i64, !dbg !222
  %155 = getelementptr inbounds [16 x double], ptr %9, i64 0, i64 %154
  %156 = load double, ptr %155, align 8, !dbg !223, !tbaa !103
  %157 = getelementptr inbounds [16 x double], ptr %8, i64 0, i64 %154
  %158 = load double, ptr %157, align 8, !dbg !225, !tbaa !103
  %159 = getelementptr inbounds [16 x double], ptr %6, i64 0, i64 %154
  %160 = load double, ptr %159, align 8, !dbg !226, !tbaa !103
  %161 = and i64 %154, 1, !dbg !222
  %162 = icmp eq i64 %161, 0, !dbg !222
  br i1 %162, label %177, label %163, !dbg !222

163:                                              ; preds = %153
  tail call void @llvm.dbg.value(metadata i64 %154, metadata !91, metadata !DIExpression()), !dbg !93
  %164 = add nsw i64 %154, -1, !dbg !227
  tail call void @llvm.dbg.value(metadata i64 %164, metadata !91, metadata !DIExpression()), !dbg !93
  %165 = fmul double %156, %158, !dbg !228
  %166 = getelementptr inbounds [16 x double], ptr %8, i64 0, i64 %164, !dbg !229
  store double %165, ptr %166, align 8, !dbg !230, !tbaa !103
  %167 = fmul double %158, %158, !dbg !231
  %168 = fdiv double %167, %160, !dbg !232
  tail call void @llvm.dbg.value(metadata double %168, metadata !90, metadata !DIExpression()), !dbg !93
  %169 = getelementptr inbounds [16 x double], ptr %7, i64 0, i64 %164, !dbg !233
  %170 = load double, ptr %169, align 8, !dbg !233, !tbaa !103
  %171 = fadd double %168, %170, !dbg !234
  %172 = getelementptr inbounds [16 x double], ptr %6, i64 0, i64 %164, !dbg !235
  %173 = load double, ptr %172, align 8, !dbg !235, !tbaa !103
  %174 = fadd double %168, %173, !dbg !236
  %175 = fdiv double %171, %174, !dbg !237
  %176 = getelementptr inbounds [16 x double], ptr %9, i64 0, i64 %164, !dbg !238
  store double %175, ptr %176, align 8, !dbg !239, !tbaa !103
  br label %177, !dbg !222

177:                                              ; preds = %163, %153
  %178 = phi double [ %160, %153 ], [ %173, %163 ]
  %179 = phi double [ %158, %153 ], [ %165, %163 ]
  %180 = phi double [ %156, %153 ], [ %175, %163 ]
  %181 = phi i64 [ %154, %153 ], [ %164, %163 ]
  %182 = phi i64 [ undef, %153 ], [ %164, %163 ]
  %183 = icmp eq i32 %51, 1, !dbg !222
  br i1 %183, label %216, label %184, !dbg !222

184:                                              ; preds = %177, %184
  %185 = phi double [ %211, %184 ], [ %178, %177 ], !dbg !226
  %186 = phi double [ %203, %184 ], [ %179, %177 ], !dbg !225
  %187 = phi double [ %213, %184 ], [ %180, %177 ], !dbg !223
  %188 = phi i64 [ %202, %184 ], [ %181, %177 ]
  tail call void @llvm.dbg.value(metadata i64 %188, metadata !91, metadata !DIExpression()), !dbg !93
  %189 = add nsw i64 %188, -1, !dbg !227
  tail call void @llvm.dbg.value(metadata i64 %189, metadata !91, metadata !DIExpression()), !dbg !93
  %190 = fmul double %187, %186, !dbg !228
  %191 = getelementptr inbounds [16 x double], ptr %8, i64 0, i64 %189, !dbg !229
  store double %190, ptr %191, align 8, !dbg !230, !tbaa !103
  %192 = fmul double %186, %186, !dbg !231
  %193 = fdiv double %192, %185, !dbg !232
  tail call void @llvm.dbg.value(metadata double %193, metadata !90, metadata !DIExpression()), !dbg !93
  %194 = getelementptr inbounds [16 x double], ptr %7, i64 0, i64 %189, !dbg !233
  %195 = load double, ptr %194, align 8, !dbg !233, !tbaa !103
  %196 = fadd double %193, %195, !dbg !234
  %197 = getelementptr inbounds [16 x double], ptr %6, i64 0, i64 %189, !dbg !235
  %198 = load double, ptr %197, align 8, !dbg !235, !tbaa !103
  %199 = fadd double %193, %198, !dbg !236
  %200 = fdiv double %196, %199, !dbg !237
  %201 = getelementptr inbounds [16 x double], ptr %9, i64 0, i64 %189, !dbg !238
  store double %200, ptr %201, align 8, !dbg !239, !tbaa !103
  tail call void @llvm.dbg.value(metadata i64 %189, metadata !91, metadata !DIExpression()), !dbg !93
  %202 = add nsw i64 %188, -2, !dbg !227
  tail call void @llvm.dbg.value(metadata i64 %202, metadata !91, metadata !DIExpression()), !dbg !93
  %203 = fmul double %200, %190, !dbg !228
  %204 = getelementptr inbounds [16 x double], ptr %8, i64 0, i64 %202, !dbg !229
  store double %203, ptr %204, align 8, !dbg !230, !tbaa !103
  %205 = fmul double %190, %190, !dbg !231
  %206 = fdiv double %205, %198, !dbg !232
  tail call void @llvm.dbg.value(metadata double %206, metadata !90, metadata !DIExpression()), !dbg !93
  %207 = getelementptr inbounds [16 x double], ptr %7, i64 0, i64 %202, !dbg !233
  %208 = load double, ptr %207, align 8, !dbg !233, !tbaa !103
  %209 = fadd double %206, %208, !dbg !234
  %210 = getelementptr inbounds [16 x double], ptr %6, i64 0, i64 %202, !dbg !235
  %211 = load double, ptr %210, align 8, !dbg !235, !tbaa !103
  %212 = fadd double %206, %211, !dbg !236
  %213 = fdiv double %209, %212, !dbg !237
  %214 = getelementptr inbounds [16 x double], ptr %9, i64 0, i64 %202, !dbg !238
  store double %213, ptr %214, align 8, !dbg !239, !tbaa !103
  %215 = icmp ugt i64 %189, 1, !dbg !240
  br i1 %215, label %184, label %216, !dbg !222, !llvm.loop !241

216:                                              ; preds = %184, %177
  %217 = phi i64 [ %182, %177 ], [ %202, %184 ], !dbg !227
  %218 = shl nuw nsw i64 %217, 32, !dbg !243
  %219 = getelementptr inbounds [16 x double], ptr %9, i64 0, i64 %218
  %220 = load double, ptr %219, align 16, !dbg !243, !tbaa !103
  %221 = getelementptr inbounds [16 x double], ptr %8, i64 0, i64 %218
  %222 = load double, ptr %221, align 16, !dbg !244, !tbaa !103
  br label %223, !dbg !243

223:                                              ; preds = %216, %150
  %224 = phi double [ %222, %216 ], [ %152, %150 ], !dbg !244
  %225 = phi double [ %220, %216 ], [ 1.000000e+00, %150 ], !dbg !243
  store double %225, ptr %4, align 8, !dbg !245, !tbaa !103
  %226 = fcmp oge double %56, 0.000000e+00, !dbg !246
  %227 = select i1 %226, double 1.000000e+00, double -1.000000e+00, !dbg !246
  %228 = tail call double @gsl_hypot(double noundef 1.000000e+00, double noundef %224) #6, !dbg !247
  %229 = fdiv double %227, %228, !dbg !248
  store double %229, ptr %2, align 8, !dbg !249, !tbaa !103
  %230 = fmul double %224, %229, !dbg !250
  store double %230, ptr %3, align 8, !dbg !251, !tbaa !103
  br label %231

231:                                              ; preds = %223, %137
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %9) #6, !dbg !252
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %8) #6, !dbg !252
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %7) #6, !dbg !252
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %6) #6, !dbg !252
  br label %232

232:                                              ; preds = %12, %15, %22, %231
  %233 = phi i32 [ 1, %12 ], [ 0, %15 ], [ 0, %22 ], [ %50, %231 ], !dbg !253
  ret i32 %233, !dbg !254
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #1

declare !dbg !255 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !260 double @sin(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !264 double @cos(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !265 double @tanh(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !266 double @cosh(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !267 double @sqrt(double noundef) local_unnamed_addr #3

declare !dbg !268 double @gsl_hypot(double noundef, double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

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
!113 = !DILocation(line: 49, column: 11, scope: !114)
!114 = distinct !DILexicalBlock(scope: !76, file: !2, line: 48, column: 42)
!115 = !DILocation(line: 49, column: 9, scope: !114)
!116 = !DILocation(line: 50, column: 11, scope: !114)
!117 = !DILocation(line: 50, column: 9, scope: !114)
!118 = !DILocation(line: 51, column: 9, scope: !114)
!119 = !DILocation(line: 52, column: 5, scope: !114)
!120 = !DILocation(line: 54, column: 18, scope: !75)
!121 = !DILocation(line: 54, column: 11, scope: !75)
!122 = !DILocation(line: 54, column: 25, scope: !75)
!123 = !DILocation(line: 54, column: 11, scope: !76)
!124 = !DILocation(line: 55, column: 11, scope: !125)
!125 = distinct !DILexicalBlock(scope: !75, file: !2, line: 54, column: 48)
!126 = !DILocation(line: 55, column: 9, scope: !125)
!127 = !DILocation(line: 56, column: 15, scope: !125)
!128 = !DILocation(line: 56, column: 14, scope: !125)
!129 = !DILocation(line: 56, column: 9, scope: !125)
!130 = !DILocation(line: 57, column: 9, scope: !125)
!131 = !DILocation(line: 58, column: 5, scope: !125)
!132 = !DILocation(line: 63, column: 5, scope: !74)
!133 = !DILocation(line: 64, column: 5, scope: !74)
!134 = !DILocation(line: 65, column: 5, scope: !74)
!135 = !DILocation(line: 66, column: 5, scope: !74)
!136 = !DILocation(line: 70, column: 11, scope: !74)
!137 = distinct !DIAssignID()
!138 = !DILocation(line: 71, column: 22, scope: !74)
!139 = !DILocation(line: 71, column: 13, scope: !74)
!140 = !DILocation(line: 71, column: 11, scope: !74)
!141 = distinct !DIAssignID()
!142 = !DILocation(line: 73, column: 5, scope: !74)
!143 = !DILocation(line: 73, column: 25, scope: !74)
!144 = !DILocation(line: 73, column: 17, scope: !74)
!145 = !DILocation(line: 73, column: 23, scope: !74)
!146 = !DILocation(line: 73, column: 12, scope: !74)
!147 = !DILocation(line: 73, column: 68, scope: !74)
!148 = !DILocation(line: 73, column: 58, scope: !74)
!149 = !DILocation(line: 73, column: 56, scope: !74)
!150 = !DILocation(line: 73, column: 32, scope: !74)
!151 = !DILocation(line: 74, column: 21, scope: !152)
!152 = distinct !DILexicalBlock(scope: !74, file: !2, line: 73, column: 77)
!153 = !DILocation(line: 74, column: 11, scope: !152)
!154 = !DILocation(line: 74, column: 7, scope: !152)
!155 = !DILocation(line: 74, column: 15, scope: !152)
!156 = !DILocation(line: 75, column: 28, scope: !152)
!157 = !DILocation(line: 75, column: 17, scope: !152)
!158 = !DILocation(line: 75, column: 7, scope: !152)
!159 = !DILocation(line: 75, column: 15, scope: !152)
!160 = !DILocation(line: 77, column: 12, scope: !161)
!161 = distinct !DILexicalBlock(scope: !152, file: !2, line: 77, column: 10)
!162 = !DILocation(line: 77, column: 10, scope: !152)
!163 = distinct !{!163, !142, !164, !165}
!164 = !DILocation(line: 81, column: 5, scope: !74)
!165 = !{!"llvm.loop.mustprogress"}
!166 = !DILocation(line: 83, column: 23, scope: !74)
!167 = !DILocation(line: 83, column: 21, scope: !74)
!168 = !DILocation(line: 83, column: 15, scope: !74)
!169 = !DILocation(line: 84, column: 15, scope: !74)
!170 = !DILocation(line: 89, column: 9, scope: !171)
!171 = distinct !DILexicalBlock(scope: !74, file: !2, line: 89, column: 9)
!172 = !DILocation(line: 89, column: 25, scope: !171)
!173 = !DILocation(line: 89, column: 23, scope: !171)
!174 = !DILocation(line: 0, scope: !171)
!175 = !DILocation(line: 89, column: 9, scope: !74)
!176 = !DILocation(line: 91, column: 21, scope: !177)
!177 = distinct !DILexicalBlock(scope: !171, file: !2, line: 90, column: 7)
!178 = !DILocation(line: 93, column: 22, scope: !177)
!179 = !DILocation(line: 93, column: 14, scope: !177)
!180 = !DILocation(line: 94, column: 14, scope: !177)
!181 = !DILocation(line: 96, column: 9, scope: !177)
!182 = !DILocation(line: 98, column: 18, scope: !183)
!183 = distinct !DILexicalBlock(scope: !177, file: !2, line: 96, column: 22)
!184 = !DILocation(line: 98, column: 27, scope: !183)
!185 = !DILocation(line: 99, column: 35, scope: !183)
!186 = !DILocation(line: 97, column: 12, scope: !183)
!187 = !DILocation(line: 98, column: 25, scope: !183)
!188 = !DILocation(line: 98, column: 11, scope: !183)
!189 = !DILocation(line: 98, column: 16, scope: !183)
!190 = !DILocation(line: 99, column: 23, scope: !183)
!191 = !DILocation(line: 99, column: 33, scope: !183)
!192 = !DILocation(line: 100, column: 23, scope: !183)
!193 = !DILocation(line: 100, column: 21, scope: !183)
!194 = !DILocation(line: 100, column: 37, scope: !183)
!195 = !DILocation(line: 100, column: 35, scope: !183)
!196 = !DILocation(line: 100, column: 30, scope: !183)
!197 = !DILocation(line: 100, column: 11, scope: !183)
!198 = !DILocation(line: 100, column: 16, scope: !183)
!199 = !DILocation(line: 96, column: 17, scope: !177)
!200 = distinct !{!200, !181, !201, !165}
!201 = !DILocation(line: 101, column: 11, scope: !177)
!202 = !DILocation(line: 103, column: 29, scope: !177)
!203 = !DILocation(line: 104, column: 58, scope: !177)
!204 = !DILocation(line: 103, column: 15, scope: !177)
!205 = !DILocation(line: 103, column: 27, scope: !177)
!206 = !DILocation(line: 103, column: 13, scope: !177)
!207 = !DILocation(line: 104, column: 23, scope: !177)
!208 = !DILocation(line: 104, column: 21, scope: !177)
!209 = !DILocation(line: 104, column: 43, scope: !177)
!210 = !DILocation(line: 104, column: 41, scope: !177)
!211 = !DILocation(line: 104, column: 13, scope: !177)
!212 = !DILocation(line: 105, column: 21, scope: !177)
!213 = !DILocation(line: 105, column: 29, scope: !177)
!214 = !DILocation(line: 105, column: 28, scope: !177)
!215 = !DILocation(line: 105, column: 13, scope: !177)
!216 = !DILocation(line: 106, column: 7, scope: !177)
!217 = !DILocation(line: 109, column: 21, scope: !218)
!218 = distinct !DILexicalBlock(scope: !171, file: !2, line: 108, column: 7)
!219 = !DILocation(line: 111, column: 22, scope: !218)
!220 = !DILocation(line: 111, column: 14, scope: !218)
!221 = !DILocation(line: 112, column: 14, scope: !218)
!222 = !DILocation(line: 114, column: 9, scope: !218)
!223 = !DILocation(line: 116, column: 18, scope: !224)
!224 = distinct !DILexicalBlock(scope: !218, file: !2, line: 114, column: 22)
!225 = !DILocation(line: 116, column: 27, scope: !224)
!226 = !DILocation(line: 117, column: 35, scope: !224)
!227 = !DILocation(line: 115, column: 11, scope: !224)
!228 = !DILocation(line: 116, column: 25, scope: !224)
!229 = !DILocation(line: 116, column: 11, scope: !224)
!230 = !DILocation(line: 116, column: 16, scope: !224)
!231 = !DILocation(line: 117, column: 23, scope: !224)
!232 = !DILocation(line: 117, column: 33, scope: !224)
!233 = !DILocation(line: 118, column: 23, scope: !224)
!234 = !DILocation(line: 118, column: 21, scope: !224)
!235 = !DILocation(line: 118, column: 37, scope: !224)
!236 = !DILocation(line: 118, column: 35, scope: !224)
!237 = !DILocation(line: 118, column: 30, scope: !224)
!238 = !DILocation(line: 118, column: 11, scope: !224)
!239 = !DILocation(line: 118, column: 16, scope: !224)
!240 = !DILocation(line: 114, column: 17, scope: !218)
!241 = distinct !{!241, !222, !242, !165}
!242 = !DILocation(line: 119, column: 9, scope: !218)
!243 = !DILocation(line: 121, column: 15, scope: !218)
!244 = !DILocation(line: 122, column: 50, scope: !218)
!245 = !DILocation(line: 121, column: 13, scope: !218)
!246 = !DILocation(line: 122, column: 15, scope: !218)
!247 = !DILocation(line: 122, column: 35, scope: !218)
!248 = !DILocation(line: 122, column: 33, scope: !218)
!249 = !DILocation(line: 122, column: 13, scope: !218)
!250 = !DILocation(line: 123, column: 20, scope: !218)
!251 = !DILocation(line: 123, column: 13, scope: !218)
!252 = !DILocation(line: 127, column: 3, scope: !75)
!253 = !DILocation(line: 0, scope: !77)
!254 = !DILocation(line: 128, column: 1, scope: !62)
!255 = !DISubprogram(name: "gsl_error", scope: !15, file: !15, line: 77, type: !256, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!256 = !DISubroutineType(types: !257)
!257 = !{null, !258, !258, !16, !16}
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!260 = !DISubprogram(name: "sin", scope: !261, file: !261, line: 64, type: !262, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!261 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!262 = !DISubroutineType(types: !263)
!263 = !{!65, !65}
!264 = !DISubprogram(name: "cos", scope: !261, file: !261, line: 62, type: !262, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!265 = !DISubprogram(name: "tanh", scope: !261, file: !261, line: 75, type: !262, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!266 = !DISubprogram(name: "cosh", scope: !261, file: !261, line: 71, type: !262, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!267 = !DISubprogram(name: "sqrt", scope: !261, file: !261, line: 143, type: !262, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!268 = !DISubprogram(name: "gsl_hypot", scope: !269, file: !269, line: 37, type: !270, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!269 = !DIFile(filename: "../gsl/gsl_sys.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "66066a5c22c0bbe63a298abf4db295db")
!270 = !DISubroutineType(types: !271)
!271 = !{!65, !272, !272}
!272 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !65)
