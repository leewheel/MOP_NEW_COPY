/*
* This file is part of the Pandaria 5.4.8 Project. See THANKS file for Copyright information
*
* This program is free software; you can redistribute it and/or modify it
* under the terms of the GNU General Public License as published by the
* Free Software Foundation; either version 2 of the License, or (at your
* option) any later version.
*
* This program is distributed in the hope that it will be useful, but WITHOUT
* ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
* FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for
* more details.
*
* You should have received a copy of the GNU General Public License along
* with this program. If not, see <http://www.gnu.org/licenses/>.
*/

#ifndef TRINITYCORE_LOG_H
#define TRINITYCORE_LOG_H

#include "Define.h"
#include "Appender.h"
#include "LogWorker.h"
#include "Logger.h"

#include <string>
#include <ace/Singleton.h>

#define LOGGER_ROOT "root"

typedef std::unordered_map<std::string, Logger> LoggerMap;

class Log
{
    friend class ACE_Singleton<Log, ACE_Thread_Mutex>;



    private:
        Log();
        ~Log();

    public:
        void LoadFromConfig();
        void Close();
        bool ShouldLog(std::string const& type, LogLevel level) const;
        bool SetLogLevel(std::string const& name, char const* level, bool isLogger = true);

        void outTrace(std::string const& f, char const* str, ...) ATTR_PRINTF(3, 4);
        void outDebug(std::string const& f, char const* str, ...) ATTR_PRINTF(3, 4);
        void outInfo(std::string const& f, char const* str, ...) ATTR_PRINTF(3, 4);
        void outWarn(std::string const& f, char const* str, ...) ATTR_PRINTF(3, 4);
        void outError(std::string const& f, char const* str, ...) ATTR_PRINTF(3, 4);
        void outFatal(std::string const& f, char const* str, ...) ATTR_PRINTF(3, 4);

        void outCommand(uint32 account, const char * str, ...) ATTR_PRINTF(3, 4);
        void outCharDump(char const* str, uint32 account_id, uint32 guid, char const* name);
        static std::string GetTimestampStr();

        void SetRealmId(uint32 id);

    private:
        void vlog(std::string const& f, LogLevel level, char const* str, va_list argptr);
        void write(std::string const& f, LogLevel level, char const* str, char const* param) const;

        Logger const* GetLoggerByType(std::string const& type) const;
        Appender* GetAppenderByName(std::string const& name);
        uint8 NextAppenderId();
        void CreateAppenderFromConfig(std::string const& name);
        void CreateLoggerFromConfig(std::string const& name);
        void ReadAppendersFromConfig();
        void ReadLoggersFromConfig();

        AppenderMap appenders;
        LoggerMap loggers;
        uint8 AppenderId;

        std::string m_logsDir;
        std::string m_logsTimestamp;

        LogWorker* worker;
};

#define sLog ACE_Singleton<Log, ACE_Thread_Mutex>::instance()

#if COMPILER != COMPILER_MICROSOFT
#define TC_LOG_MESSAGE_BODY(level__, call__, filterType__, ...)     \
        do {                                                        \
            if (sLog->ShouldLog(filterType__, level__))             \
                sLog->call__(filterType__, __VA_ARGS__);            \
        } while (0)
#else
#define TC_LOG_MESSAGE_BODY(level__, call__, filterType__, ...)     \
        __pragma(warning(push))                                     \
        __pragma(warning(disable:4127))                             \
        do {                                                        \
            if (sLog->ShouldLog(filterType__, level__))             \
                sLog->call__(filterType__, __VA_ARGS__);            \
        } while (0)                                                 \
        __pragma(warning(pop))
#endif

#define TC_LOG_TRACE(filterType__, ...) \
    TC_LOG_MESSAGE_BODY(LOG_LEVEL_TRACE, outTrace, filterType__, __VA_ARGS__)

#define TC_LOG_DEBUG(filterType__, ...) \
    TC_LOG_MESSAGE_BODY(LOG_LEVEL_DEBUG, outDebug, filterType__, __VA_ARGS__)

#define TC_LOG_INFO(filterType__, ...)  \
    TC_LOG_MESSAGE_BODY(LOG_LEVEL_INFO, outInfo, filterType__, __VA_ARGS__)

#define TC_LOG_WARN(filterType__, ...)  \
    TC_LOG_MESSAGE_BODY(LOG_LEVEL_WARN, outWarn, filterType__, __VA_ARGS__)

#define TC_LOG_ERROR(filterType__, ...) \
    TC_LOG_MESSAGE_BODY(LOG_LEVEL_ERROR, outError, filterType__, __VA_ARGS__)

#define TC_LOG_FATAL(filterType__, ...) \
    TC_LOG_MESSAGE_BODY(LOG_LEVEL_FATAL, outFatal, filterType__, __VA_ARGS__)

#endif
