; ModuleID = 'srotmg.c'
source_filename = "srotmg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @cblas_srotmg(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, float noundef %3, ptr nocapture noundef %4) local_unnamed_addr #0 !dbg !10 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !17, metadata !DIExpression()), !dbg !42
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !18, metadata !DIExpression()), !dbg !42
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !19, metadata !DIExpression()), !dbg !42
  tail call void @llvm.dbg.value(metadata float %3, metadata !20, metadata !DIExpression()), !dbg !42
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !21, metadata !DIExpression()), !dbg !42
  tail call void @llvm.dbg.value(metadata float 4.096000e+03, metadata !22, metadata !DIExpression()), !dbg !43
  tail call void @llvm.dbg.value(metadata float 0x4170000000000000, metadata !26, metadata !DIExpression()), !dbg !43
  %6 = load float, ptr %0, align 4, !dbg !44, !tbaa !45
  tail call void @llvm.dbg.value(metadata float %6, metadata !27, metadata !DIExpression()), !dbg !43
  %7 = load float, ptr %1, align 4, !dbg !49, !tbaa !45
  tail call void @llvm.dbg.value(metadata float %7, metadata !28, metadata !DIExpression()), !dbg !43
  %8 = load float, ptr %2, align 4, !dbg !50, !tbaa !45
  tail call void @llvm.dbg.value(metadata float %8, metadata !29, metadata !DIExpression()), !dbg !43
  tail call void @llvm.dbg.value(metadata float %3, metadata !30, metadata !DIExpression()), !dbg !43
  %9 = fcmp olt float %6, 0.000000e+00, !dbg !51
  br i1 %9, label %10, label %12, !dbg !53

10:                                               ; preds = %5
  store float -1.000000e+00, ptr %4, align 4, !dbg !54, !tbaa !45
  %11 = getelementptr inbounds float, ptr %4, i64 1, !dbg !56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %11, i8 0, i64 16, i1 false), !dbg !57
  store float 0.000000e+00, ptr %0, align 4, !dbg !58, !tbaa !45
  store float 0.000000e+00, ptr %1, align 4, !dbg !59, !tbaa !45
  store float 0.000000e+00, ptr %2, align 4, !dbg !60, !tbaa !45
  br label %147, !dbg !61

12:                                               ; preds = %5
  %13 = fmul float %7, %3, !dbg !62
  %14 = fcmp oeq float %13, 0.000000e+00, !dbg !64
  br i1 %14, label %15, label %16, !dbg !65

15:                                               ; preds = %12
  store float -2.000000e+00, ptr %4, align 4, !dbg !66, !tbaa !45
  br label %147, !dbg !68

16:                                               ; preds = %12
  %17 = fmul float %6, %8, !dbg !69
  %18 = fmul float %8, %17, !dbg !70
  %19 = tail call float @llvm.fabs.f32(float %18), !dbg !71
  tail call void @llvm.dbg.value(metadata float %19, metadata !36, metadata !DIExpression()), !dbg !43
  %20 = fmul float %13, %3, !dbg !72
  %21 = tail call float @llvm.fabs.f32(float %20), !dbg !73
  tail call void @llvm.dbg.value(metadata float %21, metadata !37, metadata !DIExpression()), !dbg !43
  %22 = fcmp ogt float %19, %21, !dbg !74
  br i1 %22, label %23, label %36, !dbg !75

23:                                               ; preds = %16
  store float 0.000000e+00, ptr %4, align 4, !dbg !76, !tbaa !45
  tail call void @llvm.dbg.value(metadata float 1.000000e+00, metadata !31, metadata !DIExpression()), !dbg !43
  %24 = fdiv float %13, %17, !dbg !78
  tail call void @llvm.dbg.value(metadata float %24, metadata !32, metadata !DIExpression()), !dbg !43
  %25 = fneg float %3, !dbg !79
  %26 = fdiv float %25, %8, !dbg !80
  tail call void @llvm.dbg.value(metadata float %26, metadata !33, metadata !DIExpression()), !dbg !43
  tail call void @llvm.dbg.value(metadata float 1.000000e+00, metadata !34, metadata !DIExpression()), !dbg !43
  %27 = fmul float %26, %24, !dbg !81
  %28 = fsub float 1.000000e+00, %27, !dbg !82
  tail call void @llvm.dbg.value(metadata float %28, metadata !35, metadata !DIExpression()), !dbg !43
  %29 = fcmp ugt float %28, 0.000000e+00, !dbg !83
  br i1 %29, label %32, label %30, !dbg !85

30:                                               ; preds = %23
  store float -1.000000e+00, ptr %4, align 4, !dbg !86, !tbaa !45
  %31 = getelementptr inbounds float, ptr %4, i64 1, !dbg !88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %31, i8 0, i64 16, i1 false), !dbg !89
  store float 0.000000e+00, ptr %0, align 4, !dbg !90, !tbaa !45
  store float 0.000000e+00, ptr %1, align 4, !dbg !91, !tbaa !45
  store float 0.000000e+00, ptr %2, align 4, !dbg !92, !tbaa !45
  br label %147, !dbg !93

32:                                               ; preds = %23
  %33 = fdiv float %6, %28, !dbg !94
  tail call void @llvm.dbg.value(metadata float %33, metadata !27, metadata !DIExpression()), !dbg !43
  %34 = fdiv float %7, %28, !dbg !95
  tail call void @llvm.dbg.value(metadata float %34, metadata !28, metadata !DIExpression()), !dbg !43
  %35 = fmul float %8, %28, !dbg !96
  tail call void @llvm.dbg.value(metadata float %35, metadata !29, metadata !DIExpression()), !dbg !43
  br label %48, !dbg !97

36:                                               ; preds = %16
  %37 = fcmp olt float %20, 0.000000e+00, !dbg !98
  br i1 %37, label %38, label %40, !dbg !100

38:                                               ; preds = %36
  store float -1.000000e+00, ptr %4, align 4, !dbg !101, !tbaa !45
  %39 = getelementptr inbounds float, ptr %4, i64 1, !dbg !103
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %39, i8 0, i64 16, i1 false), !dbg !104
  store float 0.000000e+00, ptr %0, align 4, !dbg !105, !tbaa !45
  store float 0.000000e+00, ptr %1, align 4, !dbg !106, !tbaa !45
  store float 0.000000e+00, ptr %2, align 4, !dbg !107, !tbaa !45
  br label %147, !dbg !108

40:                                               ; preds = %36
  store float 1.000000e+00, ptr %4, align 4, !dbg !109, !tbaa !45
  %41 = fdiv float %17, %13, !dbg !110
  tail call void @llvm.dbg.value(metadata float %41, metadata !31, metadata !DIExpression()), !dbg !43
  tail call void @llvm.dbg.value(metadata float 1.000000e+00, metadata !32, metadata !DIExpression()), !dbg !43
  tail call void @llvm.dbg.value(metadata float -1.000000e+00, metadata !33, metadata !DIExpression()), !dbg !43
  %42 = fdiv float %8, %3, !dbg !111
  tail call void @llvm.dbg.value(metadata float %42, metadata !34, metadata !DIExpression()), !dbg !43
  %43 = fmul float %42, %41, !dbg !112
  %44 = fadd float %43, 1.000000e+00, !dbg !113
  tail call void @llvm.dbg.value(metadata float %44, metadata !35, metadata !DIExpression()), !dbg !43
  %45 = fdiv float %6, %44, !dbg !114
  tail call void @llvm.dbg.value(metadata float %45, metadata !27, metadata !DIExpression()), !dbg !43
  %46 = fdiv float %7, %44, !dbg !115
  tail call void @llvm.dbg.value(metadata float %45, metadata !28, metadata !DIExpression()), !dbg !43
  tail call void @llvm.dbg.value(metadata float %46, metadata !27, metadata !DIExpression()), !dbg !43
  %47 = fmul float %44, %3, !dbg !116
  tail call void @llvm.dbg.value(metadata float %47, metadata !29, metadata !DIExpression()), !dbg !43
  br label %48

48:                                               ; preds = %40, %32
  %49 = phi float [ 1.000000e+00, %32 ], [ %41, %40 ], !dbg !117
  %50 = phi float [ %24, %32 ], [ 1.000000e+00, %40 ], !dbg !117
  %51 = phi float [ %26, %32 ], [ -1.000000e+00, %40 ], !dbg !117
  %52 = phi float [ 1.000000e+00, %32 ], [ %42, %40 ], !dbg !117
  %53 = phi float [ %35, %32 ], [ %47, %40 ], !dbg !117
  %54 = phi float [ %34, %32 ], [ %45, %40 ], !dbg !117
  %55 = phi float [ %33, %32 ], [ %46, %40 ], !dbg !117
  tail call void @llvm.dbg.value(metadata float %55, metadata !27, metadata !DIExpression()), !dbg !43
  tail call void @llvm.dbg.value(metadata float %54, metadata !28, metadata !DIExpression()), !dbg !43
  tail call void @llvm.dbg.value(metadata float %53, metadata !29, metadata !DIExpression()), !dbg !43
  tail call void @llvm.dbg.value(metadata float %52, metadata !34, metadata !DIExpression()), !dbg !43
  tail call void @llvm.dbg.value(metadata float %51, metadata !33, metadata !DIExpression()), !dbg !43
  tail call void @llvm.dbg.value(metadata float %50, metadata !32, metadata !DIExpression()), !dbg !43
  tail call void @llvm.dbg.value(metadata float %49, metadata !31, metadata !DIExpression()), !dbg !43
  %56 = fcmp ole float %55, 0x3E70000000000000, !dbg !118
  %57 = fcmp une float %55, 0.000000e+00, !dbg !119
  %58 = and i1 %56, %57, !dbg !119
  br i1 %58, label %59, label %60, !dbg !120

59:                                               ; preds = %48
  store float -1.000000e+00, ptr %4, align 4, !tbaa !45
  br label %67, !dbg !120

60:                                               ; preds = %67, %48
  %61 = phi float [ %49, %48 ], [ %74, %67 ], !dbg !43
  %62 = phi float [ %50, %48 ], [ %75, %67 ], !dbg !43
  %63 = phi float [ %53, %48 ], [ %73, %67 ], !dbg !43
  %64 = phi float [ %55, %48 ], [ %72, %67 ], !dbg !43
  tail call void @llvm.dbg.value(metadata float %64, metadata !27, metadata !DIExpression()), !dbg !43
  tail call void @llvm.dbg.value(metadata float %63, metadata !29, metadata !DIExpression()), !dbg !43
  tail call void @llvm.dbg.value(metadata float %62, metadata !32, metadata !DIExpression()), !dbg !43
  tail call void @llvm.dbg.value(metadata float %61, metadata !31, metadata !DIExpression()), !dbg !43
  %65 = fcmp ult float %64, 0x4170000000000000, !dbg !121
  br i1 %65, label %79, label %66, !dbg !122

66:                                               ; preds = %60
  store float -1.000000e+00, ptr %4, align 4, !tbaa !45
  br label %89, !dbg !122

67:                                               ; preds = %59, %67
  %68 = phi float [ %55, %59 ], [ %72, %67 ]
  %69 = phi float [ %53, %59 ], [ %73, %67 ]
  %70 = phi float [ %50, %59 ], [ %75, %67 ]
  %71 = phi float [ %49, %59 ], [ %74, %67 ]
  tail call void @llvm.dbg.value(metadata float %68, metadata !27, metadata !DIExpression()), !dbg !43
  tail call void @llvm.dbg.value(metadata float %69, metadata !29, metadata !DIExpression()), !dbg !43
  tail call void @llvm.dbg.value(metadata float %70, metadata !32, metadata !DIExpression()), !dbg !43
  tail call void @llvm.dbg.value(metadata float %71, metadata !31, metadata !DIExpression()), !dbg !43
  %72 = fmul float %68, 0x4170000000000000, !dbg !123
  tail call void @llvm.dbg.value(metadata float %72, metadata !27, metadata !DIExpression()), !dbg !43
  %73 = fmul float %69, 0x3F30000000000000, !dbg !125
  tail call void @llvm.dbg.value(metadata float %73, metadata !29, metadata !DIExpression()), !dbg !43
  %74 = fmul float %71, 0x3F30000000000000, !dbg !126
  tail call void @llvm.dbg.value(metadata float %74, metadata !31, metadata !DIExpression()), !dbg !43
  %75 = fmul float %70, 0x3F30000000000000, !dbg !127
  tail call void @llvm.dbg.value(metadata float %75, metadata !32, metadata !DIExpression()), !dbg !43
  %76 = fcmp ole float %72, 0x3E70000000000000, !dbg !118
  %77 = fcmp une float %72, 0.000000e+00, !dbg !119
  %78 = and i1 %76, %77, !dbg !119
  br i1 %78, label %67, label %60, !dbg !120, !llvm.loop !128

79:                                               ; preds = %89, %60
  %80 = phi float [ %61, %60 ], [ %96, %89 ], !dbg !43
  %81 = phi float [ %62, %60 ], [ %97, %89 ], !dbg !43
  %82 = phi float [ %63, %60 ], [ %95, %89 ], !dbg !43
  %83 = phi float [ %64, %60 ], [ %94, %89 ], !dbg !43
  tail call void @llvm.dbg.value(metadata float %54, metadata !28, metadata !DIExpression()), !dbg !43
  tail call void @llvm.dbg.value(metadata float %52, metadata !34, metadata !DIExpression()), !dbg !43
  tail call void @llvm.dbg.value(metadata float %51, metadata !33, metadata !DIExpression()), !dbg !43
  %84 = tail call float @llvm.fabs.f32(float %54), !dbg !131
  %85 = fcmp ole float %84, 0x3E70000000000000, !dbg !132
  %86 = fcmp une float %54, 0.000000e+00, !dbg !133
  %87 = select i1 %85, i1 %86, i1 false, !dbg !133
  br i1 %87, label %88, label %99, !dbg !134

88:                                               ; preds = %79
  store float -1.000000e+00, ptr %4, align 4, !tbaa !45
  br label %106, !dbg !134

89:                                               ; preds = %66, %89
  %90 = phi float [ %64, %66 ], [ %94, %89 ]
  %91 = phi float [ %63, %66 ], [ %95, %89 ]
  %92 = phi float [ %62, %66 ], [ %97, %89 ]
  %93 = phi float [ %61, %66 ], [ %96, %89 ]
  tail call void @llvm.dbg.value(metadata float %90, metadata !27, metadata !DIExpression()), !dbg !43
  tail call void @llvm.dbg.value(metadata float %91, metadata !29, metadata !DIExpression()), !dbg !43
  tail call void @llvm.dbg.value(metadata float %92, metadata !32, metadata !DIExpression()), !dbg !43
  tail call void @llvm.dbg.value(metadata float %93, metadata !31, metadata !DIExpression()), !dbg !43
  %94 = fmul float %90, 0x3E70000000000000, !dbg !135
  tail call void @llvm.dbg.value(metadata float %94, metadata !27, metadata !DIExpression()), !dbg !43
  %95 = fmul float %91, 4.096000e+03, !dbg !137
  tail call void @llvm.dbg.value(metadata float %95, metadata !29, metadata !DIExpression()), !dbg !43
  %96 = fmul float %93, 4.096000e+03, !dbg !138
  tail call void @llvm.dbg.value(metadata float %96, metadata !31, metadata !DIExpression()), !dbg !43
  %97 = fmul float %92, 4.096000e+03, !dbg !139
  tail call void @llvm.dbg.value(metadata float %97, metadata !32, metadata !DIExpression()), !dbg !43
  %98 = fcmp ult float %94, 0x4170000000000000, !dbg !121
  br i1 %98, label %79, label %89, !dbg !122, !llvm.loop !140

99:                                               ; preds = %106, %79
  %100 = phi float [ %84, %79 ], [ %113, %106 ], !dbg !142
  %101 = phi float [ %51, %79 ], [ %111, %106 ], !dbg !43
  %102 = phi float [ %52, %79 ], [ %112, %106 ], !dbg !43
  %103 = phi float [ %54, %79 ], [ %110, %106 ], !dbg !43
  tail call void @llvm.dbg.value(metadata float %103, metadata !28, metadata !DIExpression()), !dbg !43
  tail call void @llvm.dbg.value(metadata float %102, metadata !34, metadata !DIExpression()), !dbg !43
  tail call void @llvm.dbg.value(metadata float %101, metadata !33, metadata !DIExpression()), !dbg !43
  %104 = fcmp ult float %100, 0x4170000000000000, !dbg !143
  br i1 %104, label %126, label %105, !dbg !144

105:                                              ; preds = %99
  store float -1.000000e+00, ptr %4, align 4, !tbaa !45
  br label %117, !dbg !144

106:                                              ; preds = %88, %106
  %107 = phi float [ %54, %88 ], [ %110, %106 ]
  %108 = phi float [ %52, %88 ], [ %112, %106 ]
  %109 = phi float [ %51, %88 ], [ %111, %106 ]
  tail call void @llvm.dbg.value(metadata float %107, metadata !28, metadata !DIExpression()), !dbg !43
  tail call void @llvm.dbg.value(metadata float %108, metadata !34, metadata !DIExpression()), !dbg !43
  tail call void @llvm.dbg.value(metadata float %109, metadata !33, metadata !DIExpression()), !dbg !43
  %110 = fmul float %107, 0x4170000000000000, !dbg !145
  tail call void @llvm.dbg.value(metadata float %110, metadata !28, metadata !DIExpression()), !dbg !43
  %111 = fmul float %109, 0x3F30000000000000, !dbg !147
  tail call void @llvm.dbg.value(metadata float %111, metadata !33, metadata !DIExpression()), !dbg !43
  %112 = fmul float %108, 0x3F30000000000000, !dbg !148
  tail call void @llvm.dbg.value(metadata float %112, metadata !34, metadata !DIExpression()), !dbg !43
  %113 = tail call float @llvm.fabs.f32(float %110), !dbg !131
  %114 = fcmp ole float %113, 0x3E70000000000000, !dbg !132
  %115 = fcmp une float %110, 0.000000e+00, !dbg !133
  %116 = select i1 %114, i1 %115, i1 false, !dbg !133
  br i1 %116, label %106, label %99, !dbg !134, !llvm.loop !149

117:                                              ; preds = %105, %117
  %118 = phi float [ %103, %105 ], [ %121, %117 ]
  %119 = phi float [ %102, %105 ], [ %123, %117 ]
  %120 = phi float [ %101, %105 ], [ %122, %117 ]
  tail call void @llvm.dbg.value(metadata float %118, metadata !28, metadata !DIExpression()), !dbg !43
  tail call void @llvm.dbg.value(metadata float %119, metadata !34, metadata !DIExpression()), !dbg !43
  tail call void @llvm.dbg.value(metadata float %120, metadata !33, metadata !DIExpression()), !dbg !43
  %121 = fmul float %118, 0x3E70000000000000, !dbg !151
  tail call void @llvm.dbg.value(metadata float %121, metadata !28, metadata !DIExpression()), !dbg !43
  %122 = fmul float %120, 4.096000e+03, !dbg !153
  tail call void @llvm.dbg.value(metadata float %122, metadata !33, metadata !DIExpression()), !dbg !43
  %123 = fmul float %119, 4.096000e+03, !dbg !154
  tail call void @llvm.dbg.value(metadata float %123, metadata !34, metadata !DIExpression()), !dbg !43
  %124 = tail call float @llvm.fabs.f32(float %121), !dbg !142
  %125 = fcmp ult float %124, 0x4170000000000000, !dbg !143
  br i1 %125, label %126, label %117, !dbg !144, !llvm.loop !155

126:                                              ; preds = %117, %99
  %127 = phi float [ %101, %99 ], [ %122, %117 ], !dbg !43
  %128 = phi float [ %102, %99 ], [ %123, %117 ], !dbg !43
  %129 = phi float [ %103, %99 ], [ %121, %117 ], !dbg !43
  store float %83, ptr %0, align 4, !dbg !157, !tbaa !45
  store float %129, ptr %1, align 4, !dbg !158, !tbaa !45
  store float %82, ptr %2, align 4, !dbg !159, !tbaa !45
  %130 = load float, ptr %4, align 4, !dbg !160, !tbaa !45
  %131 = fcmp oeq float %130, -1.000000e+00, !dbg !162
  br i1 %131, label %132, label %137, !dbg !163

132:                                              ; preds = %126
  %133 = getelementptr inbounds float, ptr %4, i64 1, !dbg !164
  store float %80, ptr %133, align 4, !dbg !166, !tbaa !45
  %134 = getelementptr inbounds float, ptr %4, i64 2, !dbg !167
  store float %127, ptr %134, align 4, !dbg !168, !tbaa !45
  %135 = getelementptr inbounds float, ptr %4, i64 3, !dbg !169
  store float %81, ptr %135, align 4, !dbg !170, !tbaa !45
  %136 = getelementptr inbounds float, ptr %4, i64 4, !dbg !171
  store float %128, ptr %136, align 4, !dbg !172, !tbaa !45
  br label %147, !dbg !173

137:                                              ; preds = %126
  %138 = fcmp oeq float %130, 0.000000e+00, !dbg !174
  br i1 %138, label %139, label %142, !dbg !176

139:                                              ; preds = %137
  %140 = getelementptr inbounds float, ptr %4, i64 2, !dbg !177
  store float %127, ptr %140, align 4, !dbg !179, !tbaa !45
  %141 = getelementptr inbounds float, ptr %4, i64 3, !dbg !180
  store float %81, ptr %141, align 4, !dbg !181, !tbaa !45
  br label %147, !dbg !182

142:                                              ; preds = %137
  %143 = fcmp oeq float %130, 1.000000e+00, !dbg !183
  br i1 %143, label %144, label %147, !dbg !185

144:                                              ; preds = %142
  %145 = getelementptr inbounds float, ptr %4, i64 1, !dbg !186
  store float %80, ptr %145, align 4, !dbg !188, !tbaa !45
  %146 = getelementptr inbounds float, ptr %4, i64 4, !dbg !189
  store float %128, ptr %146, align 4, !dbg !190, !tbaa !45
  br label %147, !dbg !191

147:                                              ; preds = %132, %142, %144, %139, %38, %30, %15, %10
  ret void, !dbg !192
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "srotmg.c", directory: "/PI-detector/external/gsl/gsl-2.5/cblas", checksumkind: CSK_MD5, checksum: "11c4b400913cdf3cbbbf32e0f36c6b46")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!9 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!10 = distinct !DISubprogram(name: "cblas_srotmg", scope: !1, file: !1, line: 6, type: !11, scopeLine: 7, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !16)
!11 = !DISubroutineType(types: !12)
!12 = !{null, !13, !13, !13, !15, !13}
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!15 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!16 = !{!17, !18, !19, !20, !21, !22, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38}
!17 = !DILocalVariable(name: "d1", arg: 1, scope: !10, file: !1, line: 6, type: !13)
!18 = !DILocalVariable(name: "d2", arg: 2, scope: !10, file: !1, line: 6, type: !13)
!19 = !DILocalVariable(name: "b1", arg: 3, scope: !10, file: !1, line: 6, type: !13)
!20 = !DILocalVariable(name: "b2", arg: 4, scope: !10, file: !1, line: 6, type: !15)
!21 = !DILocalVariable(name: "P", arg: 5, scope: !10, file: !1, line: 6, type: !13)
!22 = !DILocalVariable(name: "G", scope: !23, file: !24, line: 21, type: !15)
!23 = distinct !DILexicalBlock(scope: !25, file: !24, line: 20, column: 1)
!24 = !DIFile(filename: "./source_rotmg.h", directory: "/PI-detector/external/gsl/gsl-2.5/cblas", checksumkind: CSK_MD5, checksum: "4872bb54e4ac3abb6c7d7ba0634bc296")
!25 = !DILexicalBlockFile(scope: !10, file: !24, discriminator: 0)
!26 = !DILocalVariable(name: "G2", scope: !23, file: !24, line: 21, type: !15)
!27 = !DILocalVariable(name: "D1", scope: !23, file: !24, line: 22, type: !14)
!28 = !DILocalVariable(name: "D2", scope: !23, file: !24, line: 22, type: !14)
!29 = !DILocalVariable(name: "x", scope: !23, file: !24, line: 22, type: !14)
!30 = !DILocalVariable(name: "y", scope: !23, file: !24, line: 22, type: !14)
!31 = !DILocalVariable(name: "h11", scope: !23, file: !24, line: 23, type: !14)
!32 = !DILocalVariable(name: "h12", scope: !23, file: !24, line: 23, type: !14)
!33 = !DILocalVariable(name: "h21", scope: !23, file: !24, line: 23, type: !14)
!34 = !DILocalVariable(name: "h22", scope: !23, file: !24, line: 23, type: !14)
!35 = !DILocalVariable(name: "u", scope: !23, file: !24, line: 23, type: !14)
!36 = !DILocalVariable(name: "c", scope: !23, file: !24, line: 25, type: !14)
!37 = !DILocalVariable(name: "s", scope: !23, file: !24, line: 25, type: !14)
!38 = !DILocalVariable(name: "tmp", scope: !39, file: !24, line: 104, type: !14)
!39 = distinct !DILexicalBlock(scope: !40, file: !24, line: 103, column: 5)
!40 = distinct !DILexicalBlock(scope: !41, file: !24, line: 76, column: 10)
!41 = distinct !DILexicalBlock(scope: !23, file: !24, line: 49, column: 7)
!42 = !DILocation(line: 0, scope: !10)
!43 = !DILocation(line: 0, scope: !23)
!44 = !DILocation(line: 22, column: 13, scope: !23)
!45 = !{!46, !46, i64 0}
!46 = !{!"float", !47, i64 0}
!47 = !{!"omnipotent char", !48, i64 0}
!48 = !{!"Simple C/C++ TBAA"}
!49 = !DILocation(line: 22, column: 23, scope: !23)
!50 = !DILocation(line: 22, column: 32, scope: !23)
!51 = !DILocation(line: 29, column: 10, scope: !52)
!52 = distinct !DILexicalBlock(scope: !23, file: !24, line: 29, column: 7)
!53 = !DILocation(line: 29, column: 7, scope: !23)
!54 = !DILocation(line: 30, column: 10, scope: !55)
!55 = distinct !DILexicalBlock(scope: !52, file: !24, line: 29, column: 17)
!56 = !DILocation(line: 31, column: 5, scope: !55)
!57 = !DILocation(line: 32, column: 10, scope: !55)
!58 = !DILocation(line: 35, column: 9, scope: !55)
!59 = !DILocation(line: 36, column: 9, scope: !55)
!60 = !DILocation(line: 37, column: 9, scope: !55)
!61 = !DILocation(line: 38, column: 5, scope: !55)
!62 = !DILocation(line: 41, column: 10, scope: !63)
!63 = distinct !DILexicalBlock(scope: !23, file: !24, line: 41, column: 7)
!64 = !DILocation(line: 41, column: 14, scope: !63)
!65 = !DILocation(line: 41, column: 7, scope: !23)
!66 = !DILocation(line: 42, column: 10, scope: !67)
!67 = distinct !DILexicalBlock(scope: !63, file: !24, line: 41, column: 22)
!68 = !DILocation(line: 43, column: 5, scope: !67)
!69 = !DILocation(line: 46, column: 15, scope: !23)
!70 = !DILocation(line: 46, column: 19, scope: !23)
!71 = !DILocation(line: 46, column: 7, scope: !23)
!72 = !DILocation(line: 47, column: 19, scope: !23)
!73 = !DILocation(line: 47, column: 7, scope: !23)
!74 = !DILocation(line: 49, column: 9, scope: !41)
!75 = !DILocation(line: 49, column: 7, scope: !23)
!76 = !DILocation(line: 52, column: 10, scope: !77)
!77 = distinct !DILexicalBlock(scope: !41, file: !24, line: 49, column: 14)
!78 = !DILocation(line: 55, column: 20, scope: !77)
!79 = !DILocation(line: 56, column: 11, scope: !77)
!80 = !DILocation(line: 56, column: 14, scope: !77)
!81 = !DILocation(line: 59, column: 17, scope: !77)
!82 = !DILocation(line: 59, column: 11, scope: !77)
!83 = !DILocation(line: 61, column: 11, scope: !84)
!84 = distinct !DILexicalBlock(scope: !77, file: !24, line: 61, column: 9)
!85 = !DILocation(line: 61, column: 9, scope: !77)
!86 = !DILocation(line: 62, column: 12, scope: !87)
!87 = distinct !DILexicalBlock(scope: !84, file: !24, line: 61, column: 19)
!88 = !DILocation(line: 63, column: 7, scope: !87)
!89 = !DILocation(line: 64, column: 12, scope: !87)
!90 = !DILocation(line: 67, column: 11, scope: !87)
!91 = !DILocation(line: 68, column: 11, scope: !87)
!92 = !DILocation(line: 69, column: 11, scope: !87)
!93 = !DILocation(line: 70, column: 7, scope: !87)
!94 = !DILocation(line: 73, column: 8, scope: !77)
!95 = !DILocation(line: 74, column: 8, scope: !77)
!96 = !DILocation(line: 75, column: 7, scope: !77)
!97 = !DILocation(line: 76, column: 3, scope: !77)
!98 = !DILocation(line: 79, column: 20, scope: !99)
!99 = distinct !DILexicalBlock(scope: !40, file: !24, line: 79, column: 9)
!100 = !DILocation(line: 79, column: 9, scope: !40)
!101 = !DILocation(line: 80, column: 12, scope: !102)
!102 = distinct !DILexicalBlock(scope: !99, file: !24, line: 79, column: 27)
!103 = !DILocation(line: 81, column: 7, scope: !102)
!104 = !DILocation(line: 82, column: 12, scope: !102)
!105 = !DILocation(line: 85, column: 11, scope: !102)
!106 = !DILocation(line: 86, column: 11, scope: !102)
!107 = !DILocation(line: 87, column: 11, scope: !102)
!108 = !DILocation(line: 88, column: 7, scope: !102)
!109 = !DILocation(line: 91, column: 10, scope: !40)
!110 = !DILocation(line: 93, column: 20, scope: !40)
!111 = !DILocation(line: 96, column: 13, scope: !40)
!112 = !DILocation(line: 98, column: 17, scope: !40)
!113 = !DILocation(line: 98, column: 11, scope: !40)
!114 = !DILocation(line: 100, column: 8, scope: !40)
!115 = !DILocation(line: 101, column: 8, scope: !40)
!116 = !DILocation(line: 109, column: 11, scope: !40)
!117 = !DILocation(line: 0, scope: !41)
!118 = !DILocation(line: 114, column: 13, scope: !23)
!119 = !DILocation(line: 114, column: 25, scope: !23)
!120 = !DILocation(line: 114, column: 3, scope: !23)
!121 = !DILocation(line: 122, column: 13, scope: !23)
!122 = !DILocation(line: 122, column: 3, scope: !23)
!123 = !DILocation(line: 116, column: 8, scope: !124)
!124 = distinct !DILexicalBlock(scope: !23, file: !24, line: 114, column: 39)
!125 = !DILocation(line: 117, column: 7, scope: !124)
!126 = !DILocation(line: 118, column: 9, scope: !124)
!127 = !DILocation(line: 119, column: 9, scope: !124)
!128 = distinct !{!128, !120, !129, !130}
!129 = !DILocation(line: 120, column: 3, scope: !23)
!130 = !{!"llvm.loop.mustprogress"}
!131 = !DILocation(line: 132, column: 10, scope: !23)
!132 = !DILocation(line: 132, column: 19, scope: !23)
!133 = !DILocation(line: 132, column: 31, scope: !23)
!134 = !DILocation(line: 132, column: 3, scope: !23)
!135 = !DILocation(line: 124, column: 8, scope: !136)
!136 = distinct !DILexicalBlock(scope: !23, file: !24, line: 122, column: 20)
!137 = !DILocation(line: 125, column: 7, scope: !136)
!138 = !DILocation(line: 126, column: 9, scope: !136)
!139 = !DILocation(line: 127, column: 9, scope: !136)
!140 = distinct !{!140, !122, !141, !130}
!141 = !DILocation(line: 128, column: 3, scope: !23)
!142 = !DILocation(line: 139, column: 10, scope: !23)
!143 = !DILocation(line: 139, column: 19, scope: !23)
!144 = !DILocation(line: 139, column: 3, scope: !23)
!145 = !DILocation(line: 134, column: 8, scope: !146)
!146 = distinct !DILexicalBlock(scope: !23, file: !24, line: 132, column: 45)
!147 = !DILocation(line: 135, column: 9, scope: !146)
!148 = !DILocation(line: 136, column: 9, scope: !146)
!149 = distinct !{!149, !134, !150, !130}
!150 = !DILocation(line: 137, column: 3, scope: !23)
!151 = !DILocation(line: 141, column: 8, scope: !152)
!152 = distinct !DILexicalBlock(scope: !23, file: !24, line: 139, column: 26)
!153 = !DILocation(line: 142, column: 9, scope: !152)
!154 = !DILocation(line: 143, column: 9, scope: !152)
!155 = distinct !{!155, !144, !156, !130}
!156 = !DILocation(line: 144, column: 3, scope: !23)
!157 = !DILocation(line: 146, column: 7, scope: !23)
!158 = !DILocation(line: 147, column: 7, scope: !23)
!159 = !DILocation(line: 148, column: 7, scope: !23)
!160 = !DILocation(line: 150, column: 7, scope: !161)
!161 = distinct !DILexicalBlock(scope: !23, file: !24, line: 150, column: 7)
!162 = !DILocation(line: 150, column: 12, scope: !161)
!163 = !DILocation(line: 150, column: 7, scope: !23)
!164 = !DILocation(line: 151, column: 5, scope: !165)
!165 = distinct !DILexicalBlock(scope: !161, file: !24, line: 150, column: 21)
!166 = !DILocation(line: 151, column: 10, scope: !165)
!167 = !DILocation(line: 152, column: 5, scope: !165)
!168 = !DILocation(line: 152, column: 10, scope: !165)
!169 = !DILocation(line: 153, column: 5, scope: !165)
!170 = !DILocation(line: 153, column: 10, scope: !165)
!171 = !DILocation(line: 154, column: 5, scope: !165)
!172 = !DILocation(line: 154, column: 10, scope: !165)
!173 = !DILocation(line: 155, column: 3, scope: !165)
!174 = !DILocation(line: 155, column: 19, scope: !175)
!175 = distinct !DILexicalBlock(scope: !161, file: !24, line: 155, column: 14)
!176 = !DILocation(line: 155, column: 14, scope: !161)
!177 = !DILocation(line: 156, column: 5, scope: !178)
!178 = distinct !DILexicalBlock(scope: !175, file: !24, line: 155, column: 27)
!179 = !DILocation(line: 156, column: 10, scope: !178)
!180 = !DILocation(line: 157, column: 5, scope: !178)
!181 = !DILocation(line: 157, column: 10, scope: !178)
!182 = !DILocation(line: 158, column: 3, scope: !178)
!183 = !DILocation(line: 158, column: 19, scope: !184)
!184 = distinct !DILexicalBlock(scope: !175, file: !24, line: 158, column: 14)
!185 = !DILocation(line: 158, column: 14, scope: !175)
!186 = !DILocation(line: 159, column: 5, scope: !187)
!187 = distinct !DILexicalBlock(scope: !184, file: !24, line: 158, column: 27)
!188 = !DILocation(line: 159, column: 10, scope: !187)
!189 = !DILocation(line: 160, column: 5, scope: !187)
!190 = !DILocation(line: 160, column: 10, scope: !187)
!191 = !DILocation(line: 161, column: 3, scope: !187)
!192 = !DILocation(line: 11, column: 1, scope: !193)
!193 = !DILexicalBlockFile(scope: !10, file: !1, discriminator: 0)
