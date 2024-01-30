#include <nvse/prefix.h>

#include <nvse/PluginAPI.h>

extern "C" __declspec(dllexport) bool NVSEPlugin_Query(const NVSEInterface *nvse, PluginInfo *info)
{
    info->infoVersion = PluginInfo::kInfoVersion;

    info->name = "NVSECMakePlugin";

    info->version = 1;

    return true;
}

extern "C" __declspec(dllexport) bool NVSEPlugin_Load()
{
    return true;
}
