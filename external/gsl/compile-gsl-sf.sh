#!/bin/bash

LLVM_PROJECT_PATH=/pi-detector
GSL_PREFIX=${LLVM_PROJECT_PATH}/external/gsl/build

FIND_FOP_MODULE_PATH=${LLVM_PROJECT_PATH}/lib/libFindFOp.so
CONVERT_FOP_MODULE_PATH=${LLVM_PROJECT_PATH}/lib/libConvertFOp.so
FIND_FCALL_MODULE_PATH=${LLVM_PROJECT_PATH}/lib/libFindFCall.so
CONVERT_FCALL_MODULE_PATH=${LLVM_PROJECT_PATH}/lib/libConvertFCall.so

FPUTIL_PATH=${LLVM_PROJECT_PATH}/build/module/src/Util/CMakeFiles/Util_OBJECT.dir/fpUtil.cc.o
HANDLER_PATH=${LLVM_PROJECT_PATH}/build/module/src/Util/CMakeFiles/Util_OBJECT.dir/handler.cc.o

PERTURBATOR_PATH=${LLVM_PROJECT_PATH}/obj/perturbator.cc.o

libgslspecfunc_SOURCE="airy.c airy_der.c airy_zero.c atanint.c bessel.c bessel_I0.c bessel_I1.c bessel_In.c bessel_Inu.c bessel_J0.c bessel_J1.c bessel_Jn.c bessel_Jnu.c bessel_K0.c bessel_K1.c bessel_Kn.c bessel_Knu.c bessel_Y0.c bessel_Y1.c bessel_Yn.c bessel_Ynu.c bessel_amp_phase.c bessel_i.c bessel_j.c bessel_k.c bessel_olver.c bessel_temme.c bessel_y.c bessel_zero.c bessel_sequence.c beta.c beta_inc.c clausen.c coulomb.c coupling.c coulomb_bound.c dawson.c debye.c dilog.c elementary.c ellint.c elljac.c erfc.c exp.c expint.c expint3.c fermi_dirac.c gegenbauer.c gamma.c gamma_inc.c hermite.c hyperg_0F1.c hyperg_2F0.c hyperg_1F1.c hyperg_2F1.c hyperg_U.c hyperg.c laguerre.c lambert.c legendre_H3d.c legendre_P.c legendre_Qn.c legendre_con.c legendre_poly.c log.c mathieu_angfunc.c mathieu_charv.c mathieu_coeff.c mathieu_radfunc.c mathieu_workspace.c poch.c pow_int.c psi.c result.c shint.c sincos_pi.c sinint.c synchrotron.c transport.c trig.c zeta.c"
# libgslspecfunc_SOURCE_1="lambert.c"  # !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
libgsllinalg_SOURCE="cholesky.c condest.c hesstri.c inline.c luc.c ptlq.c balance.c exponential.c hh.c invtri.c mcholesky.c qr.c symmtd.c balancemat.c choleskyc.c hermtd.c householder.c lq.c multiply.c qrpt.c tridiag.c bidiag.c cod.c hessenberg.c householdercomplex.c lu.c pcholesky.c svd.c"
libgslcblas_SOURCE="caxpy.c ccopy.c cdotc_sub.c cdotu_sub.c cgbmv.c cgemm.c cgemv.c cgerc.c cgeru.c chbmv.c chemm.c chemv.c cher.c cher2.c cher2k.c cherk.c chpmv.c chpr.c chpr2.c cscal.c csscal.c cswap.c csymm.c csyr2k.c csyrk.c ctbmv.c ctbsv.c ctpmv.c ctpsv.c ctrmm.c ctrmv.c ctrsm.c ctrsv.c dasum.c daxpy.c dcopy.c ddot.c dgbmv.c dgemm.c dgemv.c dger.c dnrm2.c drot.c drotg.c drotm.c drotmg.c dsbmv.c dscal.c dsdot.c dspmv.c dspr.c dspr2.c dswap.c dsymm.c dsymv.c dsyr.c dsyr2.c dsyr2k.c dsyrk.c dtbmv.c dtbsv.c dtpmv.c dtpsv.c dtrmm.c dtrmv.c dtrsm.c dtrsv.c dzasum.c dznrm2.c icamax.c idamax.c isamax.c izamax.c sasum.c saxpy.c scasum.c scnrm2.c scopy.c sdot.c sdsdot.c sgbmv.c sgemm.c sgemv.c sger.c snrm2.c srot.c srotg.c srotm.c srotmg.c ssbmv.c sscal.c sspmv.c sspr.c sspr2.c sswap.c ssymm.c ssymv.c ssyr.c ssyr2.c ssyr2k.c ssyrk.c stbmv.c stbsv.c stpmv.c stpsv.c strmm.c strmv.c strsm.c strsv.c xerbla.c zaxpy.c zcopy.c zdotc_sub.c zdotu_sub.c zdscal.c zgbmv.c zgemm.c zgemv.c zgerc.c zgeru.c zhbmv.c zhemm.c zhemv.c zher.c zher2.c zher2k.c zherk.c zhpmv.c zhpr.c zhpr2.c zscal.c zswap.c zsymm.c zsyr2k.c zsyrk.c ztbmv.c ztbsv.c ztpmv.c ztpsv.c ztrmm.c ztrmv.c ztrsm.c ztrsv.c"
# libgslcblas_SOURCE="dtrsv.c daxpy.c"

unzip() {
    rm -rf ./gsl-2.5 ./build
    tar -xzf gsl-2.5.tar.gz
}

configure_and_make() {
    ./configure --prefix=${GSL_PREFIX} CC=clang-18
    make -j4
}

compile_one_with_llvm_module() {
    echo "Compileing $1 ..."

    local ir_file=${1%.c}.ll
    local ir_instructed_file=${1%.c}_i.ll
    local pic_file=.libs/${1%.c}.o
    local nonpic_file=${1%.c}.o

    set -x
    # clang-18 -ffp-contract=off -g -emit-llvm -S -Xclang -disable-O0-optnone -I. -I.. -o $ir_file $1
    clang-18 -O2 -ffp-contract=off -fno-vectorize -fno-slp-vectorize -g -emit-llvm -S -I. -I.. -o $ir_file $1
    # clang-18 -O2 -ffp-contract=off -g -emit-llvm -S -I. -I.. -o $ir_file $1
    # opt-18 --load-pass-plugin ${FIND_FOP_MODULE_PATH} --load-pass-plugin ${CONVERT_FOP_MODULE_PATH} --passes=convert-fop -S $ir_file -o $ir_instructed_file
    opt-18 --load-pass-plugin ${FIND_FOP_MODULE_PATH} --load-pass-plugin ${CONVERT_FOP_MODULE_PATH} --load-pass-plugin ${FIND_FCALL_MODULE_PATH} --load-pass-plugin ${CONVERT_FCALL_MODULE_PATH} --passes=convert-fop,convert-fcall -S $ir_file -o $ir_instructed_file
    clang-18 -O2 -fPIC -DPIC -c $ir_instructed_file -o $pic_file
    clang-18 -O2 -c $ir_instructed_file -o $nonpic_file
    set +x
}

compile_all_specfunc() {
    # !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    for src in $libgslspecfunc_SOURCE; do
        compile_one_with_llvm_module $src
    done
}

compile_all_linalg() {
    for src in $libgsllinalg_SOURCE; do
        compile_one_with_llvm_module $src
    done
}

compile_all_cblas() {
    for src in $libgslcblas_SOURCE; do
        compile_one_with_llvm_module $src
    done
}

create_libtool_file() {
    for obj in perturbator fputil handler; do
        path_var=$(echo ${obj^^}_PATH)
        path=${!path_var}
        cat << EOF > ${obj}.lo
# ${obj}.lo - a libtool object file
# Generated by libtool (GNU libtool) 2.4.2
#
# Please DO NOT delete this file!
# It is necessary for linking the library

# Name of the PIC object.
pic_object='${path}'

# Name of the non-PIC object.
non_pic_object='${path}'
EOF
    done
}

linking_libgslcommon() {
    /bin/bash ./libtool  --tag=CC  --mode=link clang-18  -g -O2  -o libpidetector.la perturbator.lo fputil.lo handler.lo -lm -lstdc++
}

linking_libgslspecfunc() {
    lo_files=""
    for src in $libgslspecfunc_SOURCE; do
        lo_file=${src%.c}.lo
        lo_files="$lo_files $lo_file"
    done
    # lo_files="$lo_files perturbator.lo fputil.lo handler.lo"
    /bin/bash ../libtool  --tag=CC   --mode=link clang-18  -g -O2  -o libgslspecfunc.la  $lo_files -lm
}


linking_libgsllinalg() {
    lo_files=""
    for src in $libgsllinalg_SOURCE; do
        lo_file=${src%.c}.lo
        lo_files="$lo_files $lo_file"
    done
    # lo_files="$lo_files perturbator.lo fputil.lo handler.lo"
    /bin/bash ../libtool  --tag=CC   --mode=link clang-18  -g -O2   -o libgsllinalg.la  $lo_files -lm
}

linking_libgslcblas() {
    lo_files=""
    for src in $libgslcblas_SOURCE; do
        lo_file=${src%.c}.lo
        lo_files="$lo_files $lo_file"
    done
    lo_files="$lo_files perturbator.lo fputil.lo handler.lo"
    /bin/bash ../libtool  --tag=CC   --mode=link clang-18  -g -O2   -version-info 0:0:0   -o libgslcblas.la -rpath ${GSL_PREFIX}/lib  -o libgslcblas.la  $lo_files -lm -lstdc++
}


linking_libgsl_and_install() {
    /bin/bash ./libtool  --tag=CC   --mode=link clang-18  -g -O2  -version-info 24:0:1  -o libgsl.la -rpath ${GSL_PREFIX}/lib version.lo  block/libgslblock.la blas/libgslblas.la bspline/libgslbspline.la complex/libgslcomplex.la cheb/libgslcheb.la dht/libgsldht.la diff/libgsldiff.la deriv/libgslderiv.la eigen/libgsleigen.la err/libgslerr.la fft/libgslfft.la filter/libgslfilter.la fit/libgslfit.la histogram/libgslhistogram.la ieee-utils/libgslieeeutils.la integration/libgslintegration.la interpolation/libgslinterpolation.la linalg/libgsllinalg.la matrix/libgslmatrix.la min/libgslmin.la monte/libgslmonte.la multifit/libgslmultifit.la multifit_nlinear/libgslmultifit_nlinear.la multilarge/libgslmultilarge.la multilarge_nlinear/libgslmultilarge_nlinear.la multimin/libgslmultimin.la multiroots/libgslmultiroots.la ntuple/libgslntuple.la ode-initval/libgslodeiv.la ode-initval2/libgslodeiv2.la permutation/libgslpermutation.la combination/libgslcombination.la multiset/libgslmultiset.la poly/libgslpoly.la qrng/libgslqrng.la randist/libgslrandist.la rng/libgslrng.la roots/libgslroots.la siman/libgslsiman.la sort/libgslsort.la specfunc/libgslspecfunc.la movstat/libgslmovstat.la rstat/libgslrstat.la statistics/libgslstatistics.la sum/libgslsum.la sys/libgslsys.la test/libgsltest.la utils/libutils.la vector/libgslvector.la cdf/libgslcdf.la wavelet/libgslwavelet.la spmatrix/libgslspmatrix.la spblas/libgslspblas.la splinalg/libgslsplinalg.la ./libpidetector.la -lm
    # /bin/bash ./libtool  --tag=CC   --mode=link clang-18  -g -O2   -o gsl-randist gsl-randist.o libgsl.la cblas/libgslcblas.la -lm -lstdc++
    # /bin/bash ./libtool  --tag=CC   --mode=link clang-18  -g -O2   -o gsl-histogram gsl-histogram.o libgsl.la cblas/libgslcblas.la -lm -lstdc++
    make install
}

main() {
    set -e
    if [ "$1" == "link" ]; then
        cd gsl-2.5
        set -x
        create_libtool_file
        linking_libgslcommon

        cd specfunc
        compile_all_specfunc
        linking_libgslspecfunc
        cd ..
        
        cd linalg
        linking_libgsllinalg
        cd ..
        
        cd cblas
        create_libtool_file
        linking_libgslcblas
        cd ..

        linking_libgsl_and_install

    else
        unzip
        cd gsl-2.5
        configure_and_make
        
        set -x
        create_libtool_file
        linking_libgslcommon

        cd specfunc
        compile_all_specfunc
        linking_libgslspecfunc
        cd ..

        cd linalg
        compile_all_linalg
        linking_libgsllinalg
        cd ..

        cd cblas
        compile_all_cblas
        create_libtool_file
        linking_libgslcblas
        cd ..
        
        linking_libgsl_and_install
    fi
}

main $1