#include <algorithm>

#include "ceammc_factory.h"
#include "list_seq.h"

#include "ceammc.hpp"
#include <m_pd.h>

ListSeq::ListSeq(const PdArgs& a)
    : BaseObject(a)
    , from_(0)
    , to_(0)
    , step_(0)
    , closed_range_(0)
{
    createOutlet();

    from_ = new FloatProperty("@from", 0);
    to_ = new FloatProperty("@to", 1);
    step_ = new FloatProperty("@step", 1);
    closed_range_ = new FlagProperty("@closed");

    createProperty(from_);
    createProperty(to_);
    createProperty(step_);
    createProperty(closed_range_);

    if (positionalArguments().size() == 1) {
        from_->setValue(0);
        to_->setValue(positionalFloatArgument(0, 0));
    }

    if (positionalArguments().size() == 2) {
        from_->setValue(positionalFloatArgument(0, 0));
        to_->setValue(positionalFloatArgument(1, 0));
    }

    if (positionalArguments().size() == 3) {
        from_->setValue(positionalFloatArgument(0, 0));
        to_->setValue(positionalFloatArgument(1, 0));
        step_->setValue(positionalFloatArgument(2, 0));
    }
}

void ListSeq::onBang()
{
    AtomList res;
    const t_float from = from_->value();
    const t_float to = to_->value();
    const t_float step = fabsf(step_->value());

    if (step == 0.f) {
        OBJ_ERR << "invalid step: " << step;
        return;
    }

    if (from < to) {
        if (closed_range_->value()) {
            for (t_float i = from; i <= to; i += step)
                res.append(i);
        } else {
            for (t_float i = from; i < to; i += step)
                res.append(i);
        }
    } else if (from > to) {
        if (closed_range_->value()) {
            for (t_float i = from; i >= to; i -= step)
                res.append(i);
        } else {
            for (t_float i = from; i > to; i -= step)
                res.append(i);
        }
    } else {
        OBJ_ERR << "invalid sequence args: @from " << from << " @to " << to << ", @step " << step;
    }

    listTo(0, res);
}

void ListSeq::onFloat(float f)
{
    from_->setValue(0);
    to_->setValue(f);
    step_->setValue(1);
    onBang();
}

void ListSeq::onList(const AtomList& lst)
{
    switch (lst.size()) {
    case 1: {
        from_->setValue(0);
        to_->setValue(lst[0].asFloat(0));
        step_->setValue(1);
        onBang();
    } break;
    case 2: {
        from_->setValue(lst[0].asFloat(0));
        to_->setValue(lst[1].asFloat(0));
        step_->setValue(1);
        onBang();
    } break;
    case 3: {
        from_->setValue(lst[0].asFloat(0));
        to_->setValue(lst[1].asFloat(0));
        step_->setValue(lst[2].asFloat(0));
        onBang();
    } break;
    default:
        OBJ_ERR << "wrong arguments. FROM, TO, STEP expected";
        break;
    }
}

extern "C" void setup_list0x2eseq()
{
    ObjectFactory<ListSeq> obj("list.seq");
}
