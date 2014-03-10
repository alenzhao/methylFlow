#include <iostream>

#include "MFGraph.hpp"
#include "MFRegionPrinter.hpp"
#include "MethylRead.hpp"

namespace methylFlow {

MFRegionPrinter::MFRegionPrinter( MFGraph * g, 
				    std::ostream * ostream, 
				    const int cid, 
				    const float scale ) : mfGraph(g), 
							  outstream(ostream), 
							  componentID(cid), 
							  scale_mult(scale)
{
}
  
  MFRegionPrinter::~MFRegionPrinter()
  {
}

    std::ostream & MFRegionPrinter::getstream()
    {
return *outstream;
}
    
      void MFRegionPrinter::reach(const ListDigraph::Node & node) {
if (node == mfGraph->get_source() || node == mfGraph->get_sink()) return;
MethylRead * read = mfGraph->read(node);
if (!read) return;

getstream() << read->start() << "\t" << read->end();
getstream() << "\t" << componentID << "\t" << mfGraph->node_name(node);
getstream() << "\t" << mfGraph->coverage(node) << "\t" << mfGraph->expected_coverage(node, scale_mult);
getstream() << "\t" << read->getMethString() << std::endl;
}
						} // namespace methylFlow
