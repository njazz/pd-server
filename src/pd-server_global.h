#ifndef PDSERVER_GLOBAL_H
#define PDSERVER_GLOBAL_H

#if defined(_WIN32) || defined(_WIN64)
#define DECL_EXPORT __declspec(dllexport)
#define DECL_IMPORT __declspec(dllimport)
#else
#define DECL_EXPORT
#define DECL_IMPORT
#endif

#if defined(PDSERVER_LIBRARY)
#  define PDSERVER_EXPORT DECL_EXPORT
#else
#  define PDSERVER_EXPORT DECL_IMPORT
#endif

#endif // PDSERVER_GLOBAL_H
