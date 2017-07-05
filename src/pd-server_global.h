#ifndef PDSERVER_GLOBAL_H
#define PDSERVER_GLOBAL_H

#include <QtCore/qglobal.h>

#if defined(PDSERVER_LIBRARY)
#  define PDSERVER_EXPORT Q_DECL_EXPORT
#else
#  define PDSERVER_EXPORT Q_DECL_IMPORT
#endif

#endif // PDSERVER_GLOBAL_H
