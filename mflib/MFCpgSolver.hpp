#include "MFSolver.hpp"

#ifndef MFCPGSOLVER_H
#define MFCPGSOLVER_H

namespace methylFlow {

  class MFCpgSolver : public MFSolver {
    friend class MFCpgEstimator;
    
  public:
    MFCpgSolver(MFGraph *mfobj);
    ~MFCpgSolver();

  protected:
    float score(const float lambda);
    int add_cols();
    int make_lp_objective(Lp::Expr &obj);
    int add_constraints();
    int modify_lambda_constraints(const float lambda);
  };
} // namespace methylFlow
#endif // MFCPGSOLVER_H
