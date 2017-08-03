/*****************************************************************************
 * Copyright 2017 Serge Poltavsky. All rights reserved.
 *
 * This file may be distributed under the terms of GNU Public License version
 * 3 (GPL v3) as defined by the Free Software Foundation (FSF). A copy of the
 * license should have been included with this file, or the project in which
 * this file belongs to. You may also find the details of GPL v3 at:
 * http://www.gnu.org/licenses/gpl-3.0.txt
 *
 * If you have any questions regarding the use of this file, feel free to
 * contact the author of this file, or the owner of the project in which
 * this file belongs to.
 *****************************************************************************/

#ifndef PD_X_CEAMMCH_
#define PD_X_CEAMMCH_

#if defined(__cplusplus)
extern "C" {
#endif

#include "m_pd.h"

EXTERN t_symbol** pd_ceammc_gensym_hash_table(void);
EXTERN size_t pd_ceammc_gensym_hash_table_size(void);

// tilde~
typedef struct _loadedlist
{
    struct _loadedlist *ll_next;
    t_symbol *ll_name;
} t_loadlist;

EXTERN t_loadlist *sys_loaded;

typedef struct _loaded_classes_list
{
    struct _loaded_classes_list *ll_next;
    t_symbol *ll_name;
} t_loaded_classes_list;

EXTERN t_loaded_classes_list *sys_loaded_classes;

#if defined(__cplusplus)
}
#endif

#endif // PD_X_CEAMMCH_
