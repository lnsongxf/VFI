//////////////////////////////////////////////////////////////////////////////
///
/// @file global.cu
///
/// @brief Global variables for the value function iteration problem.
///
/// @author Eric M. Aldrich \n
///         ealdrich@ucsc.edu
///
/// @version 1.0
///
/// @date 24 July 2012
///
/// @copyright Copyright Eric M. Aldrich 2012 \n
///            Distributed under the Boost Software License, Version 1.0
///            (See accompanying file LICENSE_1_0.txt or copy at \n
///            http://www.boost.org/LICENSE_1_0.txt)
///
//////////////////////////////////////////////////////////////////////////////

#include "global.h"

// economic parameters
const REAL eta = 2; ///< Coefficient of relative risk aversion.
const REAL beta = 0.984; ///< Time discount factor.
const REAL alpha = 0.35; ///< Share of capital in the production function.
const REAL delta = 0.01; ///< Rate of capital depreciation.
const REAL mu = 0.0; ///< TFP mean.
const REAL rho = 0.95; ///< TFP persistence.
const REAL sigma = 0.005; ///< TFP volatility.

// computational parameters
const int block_size = 4; ///< Block size for CUDA kernel.
const int nk = 1024; ///< Number of values in capital grid.
const int nz = 4; ///< Number of values TFP grid.
const REAL tol = 1e-8*(1-beta); ///< Tolerance for convergence.

// maximization parameters
const char maxtype = 'b'; ///< @brief Maximization method - choices are 'g'
                          /// (grid) and 'b' (binary search).
const int howard = 1; ///< @brief Number of howard steps to perform between
                       ///  maximizations - set howard = 1 if max = 'b'.

// to determine whether single or double precision is being used
//const float singletype; ///< Variable to track single precision type.
//const double doubletype; ///< Variable to track double precision type.
//const REAL realtype; ///< Variable used to determine type of REAL.