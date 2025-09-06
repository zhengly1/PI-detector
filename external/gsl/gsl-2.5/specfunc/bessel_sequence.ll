; ModuleID = 'bessel_sequence.c'
source_filename = "bessel_sequence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [13 x i8] c"domain error\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [18 x i8] c"bessel_sequence.c\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [6 x i8] c"error\00", align 1, !dbg !12
@__const.gsl_sf_bessel_sequence_Jnu_e.dx_array = private unnamed_addr constant [3 x double] [double 1.000000e-03, double 3.000000e-02, double 1.000000e-01], align 16
@__const.gsl_sf_bessel_sequence_Jnu_e.smalls = private unnamed_addr constant [11 x double] [double 1.000000e-02, double 2.000000e-02, double 4.000000e-01, double 0x3FE6666666666666, double 1.300000e+00, double 2.000000e+00, double 2.500000e+00, double 3.200000e+00, double 3.500000e+00, double 4.500000e+00, double 6.000000e+00], align 16

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_bessel_sequence_Jnu_e(double noundef %0, i32 noundef %1, i64 noundef %2, ptr nocapture noundef %3) local_unnamed_addr #0 !dbg !69 {
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !123
  call void @llvm.dbg.assign(metadata i1 undef, metadata !105, metadata !DIExpression(), metadata !123, metadata ptr %5, metadata !DIExpression()), !dbg !124
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !125
  call void @llvm.dbg.assign(metadata i1 undef, metadata !112, metadata !DIExpression(), metadata !125, metadata ptr %6, metadata !DIExpression()), !dbg !124
  tail call void @llvm.dbg.value(metadata double %0, metadata !80, metadata !DIExpression()), !dbg !126
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !81, metadata !DIExpression()), !dbg !126
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !82, metadata !DIExpression()), !dbg !126
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !83, metadata !DIExpression()), !dbg !126
  %7 = fcmp olt double %0, 0.000000e+00, !dbg !127
  br i1 %7, label %8, label %9, !dbg !128

8:                                                ; preds = %4
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 62, i32 noundef 1) #6, !dbg !129
  br label %167, !dbg !129

9:                                                ; preds = %4
  %10 = icmp eq i64 %2, 0, !dbg !132
  br i1 %10, label %11, label %12, !dbg !133

11:                                               ; preds = %9
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 65, i32 noundef 4) #6, !dbg !134
  br label %167, !dbg !134

12:                                               ; preds = %9
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !137, metadata !DIExpression()), !dbg !142
  %13 = and i32 %1, 7, !dbg !144
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !84, metadata !DIExpression()), !dbg !124
  call void @llvm.dbg.assign(metadata i1 undef, metadata !91, metadata !DIExpression(), metadata !145, metadata ptr @__const.gsl_sf_bessel_sequence_Jnu_e.dx_array, metadata !DIExpression()), !dbg !124
  %14 = zext nneg i32 %13 to i64, !dbg !146
  %15 = getelementptr inbounds [3 x double], ptr @__const.gsl_sf_bessel_sequence_Jnu_e.dx_array, i64 0, i64 %14, !dbg !146
  %16 = load double, ptr %15, align 8, !dbg !146, !tbaa !147
  tail call void @llvm.dbg.value(metadata double %16, metadata !96, metadata !DIExpression()), !dbg !124
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !97, metadata !DIExpression()), !dbg !124
  %17 = tail call double @pow(double noundef %0, double noundef 0x3FD5555555555555) #6, !dbg !151
  tail call void @llvm.dbg.value(metadata double %17, metadata !99, metadata !DIExpression()), !dbg !124
  call void @llvm.dbg.assign(metadata i1 undef, metadata !100, metadata !DIExpression(), metadata !152, metadata ptr @__const.gsl_sf_bessel_sequence_Jnu_e.smalls, metadata !DIExpression()), !dbg !124
  %18 = fcmp ult double %0, 1.000000e+01, !dbg !153
  br i1 %18, label %21, label %19, !dbg !154

19:                                               ; preds = %12
  %20 = fsub double %0, %17, !dbg !155
  br label %27, !dbg !154

21:                                               ; preds = %12
  %22 = tail call double @llvm.ceil.f64(double %0), !dbg !156
  %23 = fptosi double %22 to i32, !dbg !157
  tail call void @llvm.dbg.value(metadata i32 %23, metadata !97, metadata !DIExpression()), !dbg !124
  %24 = sext i32 %23 to i64, !dbg !158
  %25 = getelementptr inbounds [11 x double], ptr @__const.gsl_sf_bessel_sequence_Jnu_e.smalls, i64 0, i64 %24, !dbg !158
  %26 = load double, ptr %25, align 8, !dbg !158, !tbaa !147
  br label %27, !dbg !154

27:                                               ; preds = %21, %19
  %28 = phi double [ %20, %19 ], [ %26, %21 ], !dbg !154
  tail call void @llvm.dbg.value(metadata double %28, metadata !104, metadata !DIExpression()), !dbg !124
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #6, !dbg !159
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #6, !dbg !159
  tail call void @llvm.dbg.value(metadata i64 0, metadata !116, metadata !DIExpression()), !dbg !124
  %29 = load double, ptr %3, align 8, !dbg !160, !tbaa !147
  tail call void @llvm.dbg.value(metadata double %29, metadata !115, metadata !DIExpression()), !dbg !124
  %30 = call i32 @gsl_sf_bessel_Jnu_e(double noundef %0, double noundef %29, ptr noundef nonnull %5) #6, !dbg !161
  %31 = load double, ptr %5, align 8, !dbg !162, !tbaa !163
  store double %31, ptr %3, align 8, !dbg !165, !tbaa !147
  tail call void @llvm.dbg.value(metadata i64 1, metadata !116, metadata !DIExpression()), !dbg !124
  %32 = fcmp oeq double %29, 0.000000e+00, !dbg !166
  br i1 %32, label %33, label %40, !dbg !168

33:                                               ; preds = %27
  %34 = getelementptr inbounds double, ptr %3, i64 1, !dbg !169
  %35 = load double, ptr %34, align 8, !dbg !169, !tbaa !147
  %36 = fcmp ugt double %35, %29, !dbg !172
  br i1 %36, label %37, label %163, !dbg !173

37:                                               ; preds = %33
  tail call void @llvm.dbg.value(metadata double %35, metadata !115, metadata !DIExpression()), !dbg !124
  %38 = call i32 @gsl_sf_bessel_Jnu_e(double noundef %0, double noundef %35, ptr noundef nonnull %5) #6, !dbg !174
  %39 = load double, ptr %5, align 8, !dbg !175, !tbaa !163
  store double %39, ptr %34, align 8, !dbg !176, !tbaa !147
  tail call void @llvm.dbg.value(metadata i64 2, metadata !116, metadata !DIExpression()), !dbg !124
  br label %40, !dbg !177

40:                                               ; preds = %37, %27
  %41 = phi i64 [ 2, %37 ], [ 1, %27 ], !dbg !124
  %42 = phi double [ %35, %37 ], [ %29, %27 ], !dbg !124
  tail call void @llvm.dbg.value(metadata double %42, metadata !115, metadata !DIExpression()), !dbg !124
  tail call void @llvm.dbg.value(metadata i64 %41, metadata !116, metadata !DIExpression()), !dbg !124
  %43 = getelementptr inbounds double, ptr %3, i64 %41, !dbg !178
  %44 = load double, ptr %43, align 8, !dbg !178, !tbaa !147
  %45 = fcmp olt double %44, %28, !dbg !179
  %46 = icmp ult i64 %41, %2, !dbg !180
  %47 = and i1 %46, %45, !dbg !180
  br i1 %47, label %48, label %63, !dbg !181

48:                                               ; preds = %40, %54
  %49 = phi double [ %59, %54 ], [ %44, %40 ]
  %50 = phi ptr [ %58, %54 ], [ %43, %40 ]
  %51 = phi double [ %49, %54 ], [ %42, %40 ]
  %52 = phi i64 [ %57, %54 ], [ %41, %40 ]
  tail call void @llvm.dbg.value(metadata double %51, metadata !115, metadata !DIExpression()), !dbg !124
  tail call void @llvm.dbg.value(metadata i64 %52, metadata !116, metadata !DIExpression()), !dbg !124
  %53 = fcmp ugt double %49, %51, !dbg !182
  br i1 %53, label %54, label %163, !dbg !185

54:                                               ; preds = %48
  tail call void @llvm.dbg.value(metadata double %49, metadata !115, metadata !DIExpression()), !dbg !124
  %55 = call i32 @gsl_sf_bessel_Jnu_e(double noundef %0, double noundef %49, ptr noundef nonnull %5) #6, !dbg !186
  %56 = load double, ptr %5, align 8, !dbg !187, !tbaa !163
  store double %56, ptr %50, align 8, !dbg !188, !tbaa !147
  %57 = add nuw i64 %52, 1, !dbg !189
  tail call void @llvm.dbg.value(metadata i64 %57, metadata !116, metadata !DIExpression()), !dbg !124
  %58 = getelementptr inbounds double, ptr %3, i64 %57, !dbg !178
  %59 = load double, ptr %58, align 8, !dbg !178, !tbaa !147
  %60 = fcmp olt double %59, %28, !dbg !179
  %61 = icmp ult i64 %57, %2, !dbg !180
  %62 = and i1 %61, %60, !dbg !180
  br i1 %62, label %48, label %63, !dbg !181, !llvm.loop !190

63:                                               ; preds = %54, %40
  %64 = phi i64 [ %41, %40 ], [ %57, %54 ], !dbg !124
  %65 = phi double [ %42, %40 ], [ %49, %54 ], !dbg !124
  %66 = fadd double %0, 1.000000e+00, !dbg !193
  %67 = call i32 @gsl_sf_bessel_Jnu_e(double noundef %66, double noundef %65, ptr noundef nonnull %6) #6, !dbg !194
  tail call void @llvm.dbg.value(metadata double poison, metadata !114, metadata !DIExpression()), !dbg !124
  tail call void @llvm.dbg.value(metadata double poison, metadata !113, metadata !DIExpression()), !dbg !124
  %68 = fmul double %0, %0
  tail call void @llvm.dbg.value(metadata double poison, metadata !114, metadata !DIExpression()), !dbg !124
  tail call void @llvm.dbg.value(metadata double poison, metadata !113, metadata !DIExpression()), !dbg !124
  tail call void @llvm.dbg.value(metadata double %65, metadata !115, metadata !DIExpression()), !dbg !124
  tail call void @llvm.dbg.value(metadata i64 %64, metadata !116, metadata !DIExpression()), !dbg !124
  %69 = icmp ult i64 %64, %2, !dbg !195
  br i1 %69, label %70, label %165, !dbg !196

70:                                               ; preds = %63
  %71 = fdiv double %0, %65, !dbg !197
  %72 = load double, ptr %5, align 8, !dbg !198, !tbaa !163
  tail call void @llvm.dbg.value(metadata double %72, metadata !114, metadata !DIExpression()), !dbg !124
  %73 = fmul double %71, %72, !dbg !199
  %74 = load double, ptr %6, align 8, !dbg !200, !tbaa !163
  %75 = fsub double %73, %74, !dbg !201
  tail call void @llvm.dbg.value(metadata double %75, metadata !113, metadata !DIExpression()), !dbg !124
  br label %76, !dbg !196

76:                                               ; preds = %70, %158
  %77 = phi double [ %65, %70 ], [ %82, %158 ]
  %78 = phi i64 [ %64, %70 ], [ %161, %158 ]
  %79 = phi double [ %72, %70 ], [ %160, %158 ]
  %80 = phi double [ %75, %70 ], [ %159, %158 ]
  tail call void @llvm.dbg.value(metadata double %77, metadata !115, metadata !DIExpression()), !dbg !124
  tail call void @llvm.dbg.value(metadata i64 %78, metadata !116, metadata !DIExpression()), !dbg !124
  tail call void @llvm.dbg.value(metadata double %79, metadata !114, metadata !DIExpression()), !dbg !124
  tail call void @llvm.dbg.value(metadata double %80, metadata !113, metadata !DIExpression()), !dbg !124
  %81 = getelementptr inbounds double, ptr %3, i64 %78, !dbg !202
  %82 = load double, ptr %81, align 8, !dbg !202, !tbaa !147
  %83 = fsub double %82, %77, !dbg !203
  tail call void @llvm.dbg.value(metadata double %83, metadata !117, metadata !DIExpression()), !dbg !204
  %84 = fdiv double %83, %16, !dbg !205
  %85 = call double @llvm.ceil.f64(double %84), !dbg !206
  %86 = fptosi double %85 to i32, !dbg !207
  tail call void @llvm.dbg.value(metadata i32 %86, metadata !119, metadata !DIExpression()), !dbg !204
  %87 = sitofp i32 %86 to double, !dbg !208
  %88 = fdiv double %83, %87, !dbg !209
  tail call void @llvm.dbg.value(metadata double %88, metadata !120, metadata !DIExpression()), !dbg !204
  %89 = fcmp ugt double %82, %77, !dbg !210
  br i1 %89, label %90, label %163, !dbg !212

90:                                               ; preds = %76
  tail call void @llvm.dbg.value(metadata double %79, metadata !114, metadata !DIExpression()), !dbg !124
  tail call void @llvm.dbg.value(metadata double %80, metadata !113, metadata !DIExpression()), !dbg !124
  tail call void @llvm.dbg.value(metadata i32 0, metadata !122, metadata !DIExpression()), !dbg !204
  tail call void @llvm.dbg.value(metadata double %77, metadata !121, metadata !DIExpression()), !dbg !204
  %91 = icmp sgt i32 %86, 0, !dbg !213
  br i1 %91, label %92, label %158, !dbg !216

92:                                               ; preds = %90
  %93 = fmul double %88, 5.000000e-01
  br label %94, !dbg !216

94:                                               ; preds = %92, %94
  %95 = phi i32 [ 0, %92 ], [ %156, %94 ]
  %96 = phi double [ %77, %92 ], [ %130, %94 ]
  %97 = phi double [ %79, %92 ], [ %155, %94 ]
  %98 = phi double [ %80, %92 ], [ %147, %94 ]
  tail call void @llvm.dbg.value(metadata i32 %95, metadata !122, metadata !DIExpression()), !dbg !204
  tail call void @llvm.dbg.value(metadata double %96, metadata !121, metadata !DIExpression()), !dbg !204
  tail call void @llvm.dbg.value(metadata double %97, metadata !114, metadata !DIExpression()), !dbg !124
  tail call void @llvm.dbg.value(metadata double %98, metadata !113, metadata !DIExpression()), !dbg !124
  tail call void @llvm.dbg.value(metadata double %0, metadata !217, metadata !DIExpression()), !dbg !236
  tail call void @llvm.dbg.value(metadata double %96, metadata !222, metadata !DIExpression()), !dbg !236
  tail call void @llvm.dbg.value(metadata double %88, metadata !223, metadata !DIExpression()), !dbg !236
  tail call void @llvm.dbg.value(metadata ptr undef, metadata !224, metadata !DIExpression()), !dbg !236
  tail call void @llvm.dbg.value(metadata ptr undef, metadata !225, metadata !DIExpression()), !dbg !236
  tail call void @llvm.dbg.value(metadata double %98, metadata !226, metadata !DIExpression()), !dbg !236
  tail call void @llvm.dbg.value(metadata double %97, metadata !227, metadata !DIExpression()), !dbg !236
  %99 = fmul double %96, %96, !dbg !239
  %100 = fdiv double %68, %99, !dbg !239
  %101 = fadd double %100, -1.000000e+00, !dbg !239
  %102 = fmul double %97, %101, !dbg !239
  %103 = fdiv double %98, %96, !dbg !239
  %104 = fsub double %102, %103, !dbg !239
  %105 = fmul double %88, %104, !dbg !240
  tail call void @llvm.dbg.value(metadata double %105, metadata !228, metadata !DIExpression()), !dbg !236
  %106 = fmul double %88, %98, !dbg !241
  tail call void @llvm.dbg.value(metadata double %106, metadata !229, metadata !DIExpression()), !dbg !236
  %107 = fmul double %105, 5.000000e-01, !dbg !242
  %108 = fadd double %98, %107, !dbg !242
  %109 = fadd double %93, %96, !dbg !242
  %110 = fmul double %109, %109, !dbg !242
  %111 = fdiv double %68, %110, !dbg !242
  %112 = fadd double %111, -1.000000e+00, !dbg !242
  %113 = fmul double %106, 5.000000e-01, !dbg !242
  %114 = fadd double %97, %113, !dbg !242
  %115 = fmul double %114, %112, !dbg !242
  %116 = fdiv double %108, %109, !dbg !242
  %117 = fsub double %115, %116, !dbg !242
  %118 = fmul double %88, %117, !dbg !243
  tail call void @llvm.dbg.value(metadata double %118, metadata !230, metadata !DIExpression()), !dbg !236
  %119 = fmul double %88, %108, !dbg !244
  tail call void @llvm.dbg.value(metadata double %119, metadata !231, metadata !DIExpression()), !dbg !236
  %120 = fmul double %118, 5.000000e-01, !dbg !245
  %121 = fadd double %98, %120, !dbg !245
  %122 = fmul double %119, 5.000000e-01, !dbg !245
  %123 = fadd double %97, %122, !dbg !245
  %124 = fmul double %112, %123, !dbg !245
  %125 = fdiv double %121, %109, !dbg !245
  %126 = fsub double %124, %125, !dbg !245
  %127 = fmul double %88, %126, !dbg !246
  tail call void @llvm.dbg.value(metadata double %127, metadata !232, metadata !DIExpression()), !dbg !236
  %128 = fmul double %88, %121, !dbg !247
  tail call void @llvm.dbg.value(metadata double %128, metadata !233, metadata !DIExpression()), !dbg !236
  %129 = fadd double %98, %127, !dbg !248
  %130 = fadd double %88, %96, !dbg !248
  %131 = fmul double %130, %130, !dbg !248
  %132 = fdiv double %68, %131, !dbg !248
  %133 = fadd double %132, -1.000000e+00, !dbg !248
  %134 = fadd double %97, %128, !dbg !248
  %135 = fmul double %133, %134, !dbg !248
  %136 = fdiv double %129, %130, !dbg !248
  %137 = fsub double %135, %136, !dbg !248
  %138 = fmul double %88, %137, !dbg !249
  tail call void @llvm.dbg.value(metadata double %138, metadata !234, metadata !DIExpression()), !dbg !236
  %139 = fmul double %88, %129, !dbg !250
  tail call void @llvm.dbg.value(metadata double %139, metadata !235, metadata !DIExpression()), !dbg !236
  %140 = fdiv double %105, 6.000000e+00, !dbg !251
  %141 = fadd double %98, %140, !dbg !252
  %142 = fdiv double %118, 3.000000e+00, !dbg !253
  %143 = fadd double %141, %142, !dbg !254
  %144 = fdiv double %127, 3.000000e+00, !dbg !255
  %145 = fadd double %143, %144, !dbg !256
  %146 = fdiv double %138, 6.000000e+00, !dbg !257
  %147 = fadd double %145, %146, !dbg !258
  tail call void @llvm.dbg.value(metadata double %147, metadata !113, metadata !DIExpression()), !dbg !124
  %148 = fdiv double %106, 6.000000e+00, !dbg !259
  %149 = fadd double %97, %148, !dbg !260
  %150 = fdiv double %119, 3.000000e+00, !dbg !261
  %151 = fadd double %149, %150, !dbg !262
  %152 = fdiv double %128, 3.000000e+00, !dbg !263
  %153 = fadd double %151, %152, !dbg !264
  %154 = fdiv double %139, 6.000000e+00, !dbg !265
  %155 = fadd double %153, %154, !dbg !266
  tail call void @llvm.dbg.value(metadata double %155, metadata !114, metadata !DIExpression()), !dbg !124
  %156 = add nuw nsw i32 %95, 1, !dbg !267
  tail call void @llvm.dbg.value(metadata i32 %156, metadata !122, metadata !DIExpression()), !dbg !204
  tail call void @llvm.dbg.value(metadata double %130, metadata !121, metadata !DIExpression()), !dbg !204
  %157 = icmp eq i32 %156, %86, !dbg !213
  br i1 %157, label %158, label %94, !dbg !216, !llvm.loop !268

158:                                              ; preds = %94, %90
  %159 = phi double [ %80, %90 ], [ %147, %94 ], !dbg !124
  %160 = phi double [ %79, %90 ], [ %155, %94 ], !dbg !124
  tail call void @llvm.dbg.value(metadata double %82, metadata !115, metadata !DIExpression()), !dbg !124
  store double %160, ptr %81, align 8, !dbg !270, !tbaa !147
  %161 = add nuw i64 %78, 1, !dbg !271
  tail call void @llvm.dbg.value(metadata double %160, metadata !114, metadata !DIExpression()), !dbg !124
  tail call void @llvm.dbg.value(metadata double %159, metadata !113, metadata !DIExpression()), !dbg !124
  tail call void @llvm.dbg.value(metadata i64 %161, metadata !116, metadata !DIExpression()), !dbg !124
  %162 = icmp ult i64 %161, %2, !dbg !195
  br i1 %162, label %76, label %165, !dbg !196

163:                                              ; preds = %48, %76, %33
  %164 = phi i32 [ 94, %33 ], [ 137, %76 ], [ 109, %48 ]
  call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef %164, i32 noundef 5) #6, !dbg !124
  br label %165, !dbg !272

165:                                              ; preds = %158, %63, %163
  %166 = phi i32 [ 5, %163 ], [ 0, %63 ], [ 0, %158 ], !dbg !124
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #6, !dbg !272
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #6, !dbg !272
  br label %167

167:                                              ; preds = %8, %11, %165
  %168 = phi i32 [ 1, %8 ], [ 4, %11 ], [ %166, %165 ], !dbg !273
  ret i32 %168, !dbg !274
}

declare !dbg !275 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !280 double @pow(double noundef, double noundef) local_unnamed_addr #4

declare !dbg !284 i32 @gsl_sf_bessel_Jnu_e(double noundef, double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!17}
!llvm.module.flags = !{!61, !62, !63, !64, !65, !66, !67}
!llvm.ident = !{!68}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 62, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "bessel_sequence.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "f935898006483337f52a6e40a356e2ed")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 13)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 62, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 18)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 65, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 6)
!17 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !18, retainedTypes: !58, globals: !60, splitDebugInlining: false, nameTableKind: None)
!18 = !{!19}
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !20, line: 39, baseType: !21, size: 32, elements: !22)
!20 = !DIFile(filename: "../gsl/gsl_errno.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "3ff14ff6df19564f3d7caf1e8e622626")
!21 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!22 = !{!23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57}
!23 = !DIEnumerator(name: "GSL_SUCCESS", value: 0)
!24 = !DIEnumerator(name: "GSL_FAILURE", value: -1)
!25 = !DIEnumerator(name: "GSL_CONTINUE", value: -2)
!26 = !DIEnumerator(name: "GSL_EDOM", value: 1)
!27 = !DIEnumerator(name: "GSL_ERANGE", value: 2)
!28 = !DIEnumerator(name: "GSL_EFAULT", value: 3)
!29 = !DIEnumerator(name: "GSL_EINVAL", value: 4)
!30 = !DIEnumerator(name: "GSL_EFAILED", value: 5)
!31 = !DIEnumerator(name: "GSL_EFACTOR", value: 6)
!32 = !DIEnumerator(name: "GSL_ESANITY", value: 7)
!33 = !DIEnumerator(name: "GSL_ENOMEM", value: 8)
!34 = !DIEnumerator(name: "GSL_EBADFUNC", value: 9)
!35 = !DIEnumerator(name: "GSL_ERUNAWAY", value: 10)
!36 = !DIEnumerator(name: "GSL_EMAXITER", value: 11)
!37 = !DIEnumerator(name: "GSL_EZERODIV", value: 12)
!38 = !DIEnumerator(name: "GSL_EBADTOL", value: 13)
!39 = !DIEnumerator(name: "GSL_ETOL", value: 14)
!40 = !DIEnumerator(name: "GSL_EUNDRFLW", value: 15)
!41 = !DIEnumerator(name: "GSL_EOVRFLW", value: 16)
!42 = !DIEnumerator(name: "GSL_ELOSS", value: 17)
!43 = !DIEnumerator(name: "GSL_EROUND", value: 18)
!44 = !DIEnumerator(name: "GSL_EBADLEN", value: 19)
!45 = !DIEnumerator(name: "GSL_ENOTSQR", value: 20)
!46 = !DIEnumerator(name: "GSL_ESING", value: 21)
!47 = !DIEnumerator(name: "GSL_EDIVERGE", value: 22)
!48 = !DIEnumerator(name: "GSL_EUNSUP", value: 23)
!49 = !DIEnumerator(name: "GSL_EUNIMPL", value: 24)
!50 = !DIEnumerator(name: "GSL_ECACHE", value: 25)
!51 = !DIEnumerator(name: "GSL_ETABLE", value: 26)
!52 = !DIEnumerator(name: "GSL_ENOPROG", value: 27)
!53 = !DIEnumerator(name: "GSL_ENOPROGJ", value: 28)
!54 = !DIEnumerator(name: "GSL_ETOLF", value: 29)
!55 = !DIEnumerator(name: "GSL_ETOLX", value: 30)
!56 = !DIEnumerator(name: "GSL_ETOLG", value: 31)
!57 = !DIEnumerator(name: "GSL_EOF", value: 32)
!58 = !{!21, !59}
!59 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!60 = !{!0, !7, !12}
!61 = !{i32 7, !"Dwarf Version", i32 5}
!62 = !{i32 2, !"Debug Info Version", i32 3}
!63 = !{i32 1, !"wchar_size", i32 4}
!64 = !{i32 8, !"PIC Level", i32 2}
!65 = !{i32 7, !"PIE Level", i32 2}
!66 = !{i32 7, !"uwtable", i32 2}
!67 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!68 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!69 = distinct !DISubprogram(name: "gsl_sf_bessel_sequence_Jnu_e", scope: !2, file: !2, line: 57, type: !70, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !79)
!70 = !DISubroutineType(types: !71)
!71 = !{!21, !72, !73, !75, !78}
!72 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_mode_t", file: !74, line: 50, baseType: !59)
!74 = !DIFile(filename: "../gsl/gsl_mode.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "229b7551f050f2f3f0376809c7c6b966")
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !76, line: 18, baseType: !77)
!76 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!77 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!79 = !{!80, !81, !82, !83, !84, !91, !96, !97, !99, !100, !104, !105, !112, !113, !114, !115, !116, !117, !119, !120, !121, !122}
!80 = !DILocalVariable(name: "nu", arg: 1, scope: !69, file: !2, line: 57, type: !72)
!81 = !DILocalVariable(name: "mode", arg: 2, scope: !69, file: !2, line: 57, type: !73)
!82 = !DILocalVariable(name: "size", arg: 3, scope: !69, file: !2, line: 57, type: !75)
!83 = !DILocalVariable(name: "v", arg: 4, scope: !69, file: !2, line: 57, type: !78)
!84 = !DILocalVariable(name: "goal", scope: !85, file: !2, line: 68, type: !88)
!85 = distinct !DILexicalBlock(scope: !86, file: !2, line: 67, column: 8)
!86 = distinct !DILexicalBlock(scope: !87, file: !2, line: 64, column: 11)
!87 = distinct !DILexicalBlock(scope: !69, file: !2, line: 61, column: 6)
!88 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !89)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_prec_t", file: !90, line: 42, baseType: !59)
!90 = !DIFile(filename: "../gsl/gsl_precision.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "c2d989a32da557bd99ff9561902c5d43")
!91 = !DILocalVariable(name: "dx_array", scope: !85, file: !2, line: 69, type: !92)
!92 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 192, elements: !94)
!93 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !72)
!94 = !{!95}
!95 = !DISubrange(count: 3)
!96 = !DILocalVariable(name: "dx_nominal", scope: !85, file: !2, line: 70, type: !93)
!97 = !DILocalVariable(name: "cnu", scope: !85, file: !2, line: 72, type: !98)
!98 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!99 = !DILocalVariable(name: "nu13", scope: !85, file: !2, line: 73, type: !93)
!100 = !DILocalVariable(name: "smalls", scope: !85, file: !2, line: 74, type: !101)
!101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 704, elements: !102)
!102 = !{!103}
!103 = !DISubrange(count: 11)
!104 = !DILocalVariable(name: "x_small", scope: !85, file: !2, line: 75, type: !93)
!105 = !DILocalVariable(name: "J0", scope: !85, file: !2, line: 77, type: !106)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !107, line: 41, baseType: !108)
!107 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "5b52deed011f1ffd07977b19a388d251")
!108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !107, line: 37, size: 128, elements: !109)
!109 = !{!110, !111}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !108, file: !107, line: 38, baseType: !72, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !108, file: !107, line: 39, baseType: !72, size: 64, offset: 64)
!112 = !DILocalVariable(name: "J1", scope: !85, file: !2, line: 77, type: !106)
!113 = !DILocalVariable(name: "Jp", scope: !85, file: !2, line: 78, type: !72)
!114 = !DILocalVariable(name: "J", scope: !85, file: !2, line: 78, type: !72)
!115 = !DILocalVariable(name: "x", scope: !85, file: !2, line: 79, type: !72)
!116 = !DILocalVariable(name: "i", scope: !85, file: !2, line: 80, type: !75)
!117 = !DILocalVariable(name: "dv", scope: !118, file: !2, line: 129, type: !93)
!118 = distinct !DILexicalBlock(scope: !85, file: !2, line: 128, column: 21)
!119 = !DILocalVariable(name: "Nd", scope: !118, file: !2, line: 130, type: !98)
!120 = !DILocalVariable(name: "dx", scope: !118, file: !2, line: 131, type: !93)
!121 = !DILocalVariable(name: "xj", scope: !118, file: !2, line: 132, type: !72)
!122 = !DILocalVariable(name: "j", scope: !118, file: !2, line: 133, type: !21)
!123 = distinct !DIAssignID()
!124 = !DILocation(line: 0, scope: !85)
!125 = distinct !DIAssignID()
!126 = !DILocation(line: 0, scope: !69)
!127 = !DILocation(line: 61, column: 9, scope: !87)
!128 = !DILocation(line: 61, column: 6, scope: !69)
!129 = !DILocation(line: 62, column: 5, scope: !130)
!130 = distinct !DILexicalBlock(scope: !131, file: !2, line: 62, column: 5)
!131 = distinct !DILexicalBlock(scope: !87, file: !2, line: 61, column: 16)
!132 = !DILocation(line: 64, column: 16, scope: !86)
!133 = !DILocation(line: 64, column: 11, scope: !87)
!134 = !DILocation(line: 65, column: 5, scope: !135)
!135 = distinct !DILexicalBlock(scope: !136, file: !2, line: 65, column: 5)
!136 = distinct !DILexicalBlock(scope: !86, file: !2, line: 64, column: 22)
!137 = !DILocalVariable(name: "mt", arg: 1, scope: !138, file: !74, line: 74, type: !73)
!138 = distinct !DISubprogram(name: "GSL_MODE_PREC", scope: !74, file: !74, line: 74, type: !139, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !141)
!139 = !DISubroutineType(types: !140)
!140 = !{!59, !73}
!141 = !{!137}
!142 = !DILocation(line: 0, scope: !138, inlinedAt: !143)
!143 = distinct !DILocation(line: 68, column: 31, scope: !85)
!144 = !DILocation(line: 75, column: 15, scope: !138, inlinedAt: !143)
!145 = distinct !DIAssignID()
!146 = !DILocation(line: 70, column: 31, scope: !85)
!147 = !{!148, !148, i64 0}
!148 = !{!"double", !149, i64 0}
!149 = !{!"omnipotent char", !150, i64 0}
!150 = !{!"Simple C/C++ TBAA"}
!151 = !DILocation(line: 73, column: 25, scope: !85)
!152 = distinct !DIAssignID()
!153 = !DILocation(line: 75, column: 33, scope: !85)
!154 = !DILocation(line: 75, column: 30, scope: !85)
!155 = !DILocation(line: 75, column: 46, scope: !85)
!156 = !DILocation(line: 72, column: 27, scope: !85)
!157 = !DILocation(line: 72, column: 21, scope: !85)
!158 = !DILocation(line: 75, column: 55, scope: !85)
!159 = !DILocation(line: 77, column: 5, scope: !85)
!160 = !DILocation(line: 83, column: 9, scope: !85)
!161 = !DILocation(line: 84, column: 5, scope: !85)
!162 = !DILocation(line: 85, column: 15, scope: !85)
!163 = !{!164, !148, i64 0}
!164 = !{!"gsl_sf_result_struct", !148, i64 0, !148, i64 8}
!165 = !DILocation(line: 85, column: 10, scope: !85)
!166 = !DILocation(line: 91, column: 10, scope: !167)
!167 = distinct !DILexicalBlock(scope: !85, file: !2, line: 91, column: 8)
!168 = !DILocation(line: 91, column: 8, scope: !85)
!169 = !DILocation(line: 92, column: 10, scope: !170)
!170 = distinct !DILexicalBlock(scope: !171, file: !2, line: 92, column: 10)
!171 = distinct !DILexicalBlock(scope: !167, file: !2, line: 91, column: 18)
!172 = !DILocation(line: 92, column: 15, scope: !170)
!173 = !DILocation(line: 92, column: 10, scope: !171)
!174 = !DILocation(line: 97, column: 7, scope: !171)
!175 = !DILocation(line: 98, column: 17, scope: !171)
!176 = !DILocation(line: 98, column: 12, scope: !171)
!177 = !DILocation(line: 100, column: 5, scope: !171)
!178 = !DILocation(line: 106, column: 11, scope: !85)
!179 = !DILocation(line: 106, column: 16, scope: !85)
!180 = !DILocation(line: 106, column: 26, scope: !85)
!181 = !DILocation(line: 106, column: 5, scope: !85)
!182 = !DILocation(line: 107, column: 15, scope: !183)
!183 = distinct !DILexicalBlock(scope: !184, file: !2, line: 107, column: 10)
!184 = distinct !DILexicalBlock(scope: !85, file: !2, line: 106, column: 39)
!185 = !DILocation(line: 107, column: 10, scope: !184)
!186 = !DILocation(line: 112, column: 7, scope: !184)
!187 = !DILocation(line: 113, column: 17, scope: !184)
!188 = !DILocation(line: 113, column: 12, scope: !184)
!189 = !DILocation(line: 114, column: 7, scope: !184)
!190 = distinct !{!190, !181, !191, !192}
!191 = !DILocation(line: 115, column: 5, scope: !85)
!192 = !{!"llvm.loop.mustprogress"}
!193 = !DILocation(line: 124, column: 27, scope: !85)
!194 = !DILocation(line: 124, column: 5, scope: !85)
!195 = !DILocation(line: 128, column: 13, scope: !85)
!196 = !DILocation(line: 128, column: 5, scope: !85)
!197 = !DILocation(line: 126, column: 22, scope: !85)
!198 = !DILocation(line: 125, column: 13, scope: !85)
!199 = !DILocation(line: 126, column: 25, scope: !85)
!200 = !DILocation(line: 126, column: 14, scope: !85)
!201 = !DILocation(line: 126, column: 18, scope: !85)
!202 = !DILocation(line: 129, column: 25, scope: !118)
!203 = !DILocation(line: 129, column: 30, scope: !118)
!204 = !DILocation(line: 0, scope: !118)
!205 = !DILocation(line: 130, column: 38, scope: !118)
!206 = !DILocation(line: 130, column: 31, scope: !118)
!207 = !DILocation(line: 130, column: 25, scope: !118)
!208 = !DILocation(line: 131, column: 30, scope: !118)
!209 = !DILocation(line: 131, column: 28, scope: !118)
!210 = !DILocation(line: 135, column: 15, scope: !211)
!211 = distinct !DILexicalBlock(scope: !118, file: !2, line: 135, column: 10)
!212 = !DILocation(line: 135, column: 10, scope: !118)
!213 = !DILocation(line: 142, column: 23, scope: !214)
!214 = distinct !DILexicalBlock(scope: !215, file: !2, line: 142, column: 7)
!215 = distinct !DILexicalBlock(scope: !118, file: !2, line: 142, column: 7)
!216 = !DILocation(line: 142, column: 7, scope: !215)
!217 = !DILocalVariable(name: "nu", arg: 1, scope: !218, file: !2, line: 32, type: !72)
!218 = distinct !DISubprogram(name: "rk_step", scope: !2, file: !2, line: 32, type: !219, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !221)
!219 = !DISubroutineType(types: !220)
!220 = !{!21, !72, !72, !72, !78, !78}
!221 = !{!217, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235}
!222 = !DILocalVariable(name: "x", arg: 2, scope: !218, file: !2, line: 32, type: !72)
!223 = !DILocalVariable(name: "dx", arg: 3, scope: !218, file: !2, line: 32, type: !72)
!224 = !DILocalVariable(name: "Jp", arg: 4, scope: !218, file: !2, line: 32, type: !78)
!225 = !DILocalVariable(name: "J", arg: 5, scope: !218, file: !2, line: 32, type: !78)
!226 = !DILocalVariable(name: "p_0", scope: !218, file: !2, line: 34, type: !72)
!227 = !DILocalVariable(name: "u_0", scope: !218, file: !2, line: 35, type: !72)
!228 = !DILocalVariable(name: "p_1", scope: !218, file: !2, line: 37, type: !72)
!229 = !DILocalVariable(name: "u_1", scope: !218, file: !2, line: 38, type: !72)
!230 = !DILocalVariable(name: "p_2", scope: !218, file: !2, line: 40, type: !72)
!231 = !DILocalVariable(name: "u_2", scope: !218, file: !2, line: 41, type: !72)
!232 = !DILocalVariable(name: "p_3", scope: !218, file: !2, line: 43, type: !72)
!233 = !DILocalVariable(name: "u_3", scope: !218, file: !2, line: 44, type: !72)
!234 = !DILocalVariable(name: "p_4", scope: !218, file: !2, line: 46, type: !72)
!235 = !DILocalVariable(name: "u_4", scope: !218, file: !2, line: 47, type: !72)
!236 = !DILocation(line: 0, scope: !218, inlinedAt: !237)
!237 = distinct !DILocation(line: 143, column: 9, scope: !238)
!238 = distinct !DILexicalBlock(scope: !214, file: !2, line: 142, column: 43)
!239 = !DILocation(line: 37, column: 21, scope: !218, inlinedAt: !237)
!240 = !DILocation(line: 37, column: 19, scope: !218, inlinedAt: !237)
!241 = !DILocation(line: 38, column: 19, scope: !218, inlinedAt: !237)
!242 = !DILocation(line: 40, column: 21, scope: !218, inlinedAt: !237)
!243 = !DILocation(line: 40, column: 19, scope: !218, inlinedAt: !237)
!244 = !DILocation(line: 41, column: 19, scope: !218, inlinedAt: !237)
!245 = !DILocation(line: 43, column: 21, scope: !218, inlinedAt: !237)
!246 = !DILocation(line: 43, column: 19, scope: !218, inlinedAt: !237)
!247 = !DILocation(line: 44, column: 19, scope: !218, inlinedAt: !237)
!248 = !DILocation(line: 46, column: 21, scope: !218, inlinedAt: !237)
!249 = !DILocation(line: 46, column: 19, scope: !218, inlinedAt: !237)
!250 = !DILocation(line: 47, column: 19, scope: !218, inlinedAt: !237)
!251 = !DILocation(line: 49, column: 18, scope: !218, inlinedAt: !237)
!252 = !DILocation(line: 49, column: 13, scope: !218, inlinedAt: !237)
!253 = !DILocation(line: 49, column: 28, scope: !218, inlinedAt: !237)
!254 = !DILocation(line: 49, column: 23, scope: !218, inlinedAt: !237)
!255 = !DILocation(line: 49, column: 38, scope: !218, inlinedAt: !237)
!256 = !DILocation(line: 49, column: 33, scope: !218, inlinedAt: !237)
!257 = !DILocation(line: 49, column: 48, scope: !218, inlinedAt: !237)
!258 = !DILocation(line: 49, column: 43, scope: !218, inlinedAt: !237)
!259 = !DILocation(line: 50, column: 18, scope: !218, inlinedAt: !237)
!260 = !DILocation(line: 50, column: 13, scope: !218, inlinedAt: !237)
!261 = !DILocation(line: 50, column: 28, scope: !218, inlinedAt: !237)
!262 = !DILocation(line: 50, column: 23, scope: !218, inlinedAt: !237)
!263 = !DILocation(line: 50, column: 38, scope: !218, inlinedAt: !237)
!264 = !DILocation(line: 50, column: 33, scope: !218, inlinedAt: !237)
!265 = !DILocation(line: 50, column: 48, scope: !218, inlinedAt: !237)
!266 = !DILocation(line: 50, column: 43, scope: !218, inlinedAt: !237)
!267 = !DILocation(line: 142, column: 29, scope: !214)
!268 = distinct !{!268, !216, !269, !192}
!269 = !DILocation(line: 144, column: 7, scope: !215)
!270 = !DILocation(line: 148, column: 12, scope: !118)
!271 = !DILocation(line: 149, column: 7, scope: !118)
!272 = !DILocation(line: 153, column: 3, scope: !86)
!273 = !DILocation(line: 0, scope: !87)
!274 = !DILocation(line: 154, column: 1, scope: !69)
!275 = !DISubprogram(name: "gsl_error", scope: !20, file: !20, line: 77, type: !276, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!276 = !DISubroutineType(types: !277)
!277 = !{null, !278, !278, !21, !21}
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!279 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!280 = !DISubprogram(name: "pow", scope: !281, file: !281, line: 140, type: !282, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!281 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!282 = !DISubroutineType(types: !283)
!283 = !{!72, !72, !72}
!284 = !DISubprogram(name: "gsl_sf_bessel_Jnu_e", scope: !285, file: !285, line: 444, type: !286, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!285 = !DIFile(filename: "../gsl/gsl_sf_bessel.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "45459f63edc3203df6c715a25160d493")
!286 = !DISubroutineType(types: !287)
!287 = !{!21, !93, !93, !288}
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
