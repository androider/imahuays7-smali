.class public Lorg/eclipse/jetty/util/log/Log;
.super Ljava/lang/Object;
.source "Log.java"


# static fields
.field public static final EXCEPTION:Ljava/lang/String; = "EXCEPTION "

.field public static final IGNORED:Ljava/lang/String; = "IGNORED "

.field private static LOG:Lorg/eclipse/jetty/util/log/Logger;

.field public static __ignored:Z

.field private static __initialized:Z

.field public static __logClass:Ljava/lang/String;

.field private static final __loggers:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lorg/eclipse/jetty/util/log/Logger;",
            ">;"
        }
    .end annotation
.end field

.field protected static __props:Ljava/util/Properties;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 76
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lorg/eclipse/jetty/util/log/Log;->__loggers:Ljava/util/concurrent/ConcurrentMap;

    .line 83
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    sput-object v0, Lorg/eclipse/jetty/util/log/Log;->__props:Ljava/util/Properties;

    .line 85
    new-instance v0, Lorg/eclipse/jetty/util/log/Log$1;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/log/Log$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static debug(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 274
    invoke-static {}, Lorg/eclipse/jetty/util/log/Log;->initialized()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 276
    :cond_0
    sget-object v0, Lorg/eclipse/jetty/util/log/Log;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, p0, v1}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static debug(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 285
    invoke-static {}, Lorg/eclipse/jetty/util/log/Log;->initialized()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 287
    :cond_0
    sget-object v0, Lorg/eclipse/jetty/util/log/Log;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-interface {v0, p0, v1}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 296
    invoke-static {}, Lorg/eclipse/jetty/util/log/Log;->initialized()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 298
    :cond_0
    sget-object v0, Lorg/eclipse/jetty/util/log/Log;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    invoke-interface {v0, p0, v1}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static debug(Ljava/lang/Throwable;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 263
    invoke-static {}, Lorg/eclipse/jetty/util/log/Log;->isDebugEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 265
    :cond_0
    sget-object v0, Lorg/eclipse/jetty/util/log/Log;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v1, "EXCEPTION "

    invoke-interface {v0, v1, p0}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static getLog()Lorg/eclipse/jetty/util/log/Logger;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 201
    invoke-static {}, Lorg/eclipse/jetty/util/log/Log;->initialized()Z

    .line 202
    sget-object v0, Lorg/eclipse/jetty/util/log/Log;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-object v0
.end method

.method public static getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/eclipse/jetty/util/log/Logger;"
        }
    .end annotation

    .line 425
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/String;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object p0

    return-object p0
.end method

.method public static getLogger(Ljava/lang/String;)Lorg/eclipse/jetty/util/log/Logger;
    .locals 1

    .line 435
    invoke-static {}, Lorg/eclipse/jetty/util/log/Log;->initialized()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-nez p0, :cond_1

    .line 439
    sget-object p0, Lorg/eclipse/jetty/util/log/Log;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-object p0

    .line 441
    :cond_1
    sget-object v0, Lorg/eclipse/jetty/util/log/Log;->__loggers:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/util/log/Logger;

    if-nez v0, :cond_2

    .line 443
    sget-object v0, Lorg/eclipse/jetty/util/log/Log;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v0, p0}, Lorg/eclipse/jetty/util/log/Logger;->getLogger(Ljava/lang/String;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public static getLoggers()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/eclipse/jetty/util/log/Logger;",
            ">;"
        }
    .end annotation

    .line 460
    sget-object v0, Lorg/eclipse/jetty/util/log/Log;->__loggers:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static getMutableLoggers()Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lorg/eclipse/jetty/util/log/Logger;",
            ">;"
        }
    .end annotation

    .line 450
    sget-object v0, Lorg/eclipse/jetty/util/log/Log;->__loggers:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method public static getRootLogger()Lorg/eclipse/jetty/util/log/Logger;
    .locals 1

    .line 210
    invoke-static {}, Lorg/eclipse/jetty/util/log/Log;->initialized()Z

    .line 211
    sget-object v0, Lorg/eclipse/jetty/util/log/Log;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-object v0
.end method

.method public static ignore(Ljava/lang/Throwable;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 312
    invoke-static {}, Lorg/eclipse/jetty/util/log/Log;->initialized()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 314
    :cond_0
    sget-object v0, Lorg/eclipse/jetty/util/log/Log;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v0, p0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static info(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 323
    invoke-static {}, Lorg/eclipse/jetty/util/log/Log;->initialized()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 325
    :cond_0
    sget-object v0, Lorg/eclipse/jetty/util/log/Log;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, p0, v1}, Lorg/eclipse/jetty/util/log/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static info(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 334
    invoke-static {}, Lorg/eclipse/jetty/util/log/Log;->initialized()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 336
    :cond_0
    sget-object v0, Lorg/eclipse/jetty/util/log/Log;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-interface {v0, p0, v1}, Lorg/eclipse/jetty/util/log/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 345
    invoke-static {}, Lorg/eclipse/jetty/util/log/Log;->initialized()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 347
    :cond_0
    sget-object v0, Lorg/eclipse/jetty/util/log/Log;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    invoke-interface {v0, p0, v1}, Lorg/eclipse/jetty/util/log/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static initStandardLogging(Ljava/lang/Throwable;)V
    .locals 5

    if-eqz p0, :cond_0

    .line 177
    sget-boolean v0, Lorg/eclipse/jetty/util/log/Log;->__ignored:Z

    if-eqz v0, :cond_0

    .line 179
    invoke-static {p0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    .line 182
    :cond_0
    sget-object p0, Lorg/eclipse/jetty/util/log/Log;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    if-nez p0, :cond_1

    .line 184
    const-class p0, Lorg/eclipse/jetty/util/log/StdErrLog;

    .line 185
    new-instance v0, Lorg/eclipse/jetty/util/log/StdErrLog;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/log/StdErrLog;-><init>()V

    sput-object v0, Lorg/eclipse/jetty/util/log/Log;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    .line 186
    sget-object v0, Lorg/eclipse/jetty/util/log/Log;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v1, "Logging to {} via {}"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lorg/eclipse/jetty/util/log/Log;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v3

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public static initialized()Z
    .locals 7

    .line 142
    sget-object v0, Lorg/eclipse/jetty/util/log/Log;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 147
    :cond_0
    const-class v0, Lorg/eclipse/jetty/util/log/Log;

    monitor-enter v0

    .line 149
    :try_start_0
    sget-boolean v2, Lorg/eclipse/jetty/util/log/Log;->__initialized:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 151
    sget-object v2, Lorg/eclipse/jetty/util/log/Log;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 153
    :cond_2
    sput-boolean v1, Lorg/eclipse/jetty/util/log/Log;->__initialized:Z

    .line 154
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    :try_start_1
    const-class v0, Lorg/eclipse/jetty/util/log/Log;

    sget-object v2, Lorg/eclipse/jetty/util/log/Log;->__logClass:Ljava/lang/String;

    invoke-static {v0, v2}, Lorg/eclipse/jetty/util/Loader;->loadClass(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 159
    sget-object v2, Lorg/eclipse/jetty/util/log/Log;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    if-eqz v2, :cond_3

    sget-object v2, Lorg/eclipse/jetty/util/log/Log;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 161
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jetty/util/log/Logger;

    sput-object v2, Lorg/eclipse/jetty/util/log/Log;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    .line 162
    sget-object v2, Lorg/eclipse/jetty/util/log/Log;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v4, "Logging to {} via {}"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    sget-object v6, Lorg/eclipse/jetty/util/log/Log;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    aput-object v6, v5, v3

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    invoke-interface {v2, v4, v5}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 168
    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->initStandardLogging(Ljava/lang/Throwable;)V

    .line 171
    :cond_4
    :goto_1
    sget-object v0, Lorg/eclipse/jetty/util/log/Log;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    :goto_2
    return v1

    :catchall_0
    move-exception v1

    .line 154
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public static isDebugEnabled()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 356
    invoke-static {}, Lorg/eclipse/jetty/util/log/Log;->initialized()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 358
    :cond_0
    sget-object v0, Lorg/eclipse/jetty/util/log/Log;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v0}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v0

    return v0
.end method

.method static isIgnored()Z
    .locals 1

    .line 216
    sget-boolean v0, Lorg/eclipse/jetty/util/log/Log;->__ignored:Z

    return v0
.end method

.method public static setLog(Lorg/eclipse/jetty/util/log/Logger;)V
    .locals 0

    .line 192
    sput-object p0, Lorg/eclipse/jetty/util/log/Log;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public static setLogToParent(Ljava/lang/String;)V
    .locals 6

    .line 236
    const-class v0, Lorg/eclipse/jetty/util/log/Log;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 237
    invoke-virtual {v0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 241
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "org.eclipse.jetty.util.log.Log"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getLogger"

    const/4 v2, 0x1

    .line 242
    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    .line 243
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 244
    new-instance v0, Lorg/eclipse/jetty/util/log/LoggerLog;

    invoke-direct {v0, p0}, Lorg/eclipse/jetty/util/log/LoggerLog;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->setLog(Lorg/eclipse/jetty/util/log/Logger;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 248
    invoke-static {p0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 253
    :cond_0
    invoke-static {p0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/String;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object p0

    invoke-static {p0}, Lorg/eclipse/jetty/util/log/Log;->setLog(Lorg/eclipse/jetty/util/log/Logger;)V

    :goto_0
    return-void
.end method

.method public static warn(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 367
    invoke-static {}, Lorg/eclipse/jetty/util/log/Log;->initialized()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 369
    :cond_0
    sget-object v0, Lorg/eclipse/jetty/util/log/Log;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, p0, v1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static warn(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 378
    invoke-static {}, Lorg/eclipse/jetty/util/log/Log;->initialized()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 380
    :cond_0
    sget-object v0, Lorg/eclipse/jetty/util/log/Log;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-interface {v0, p0, v1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 389
    invoke-static {}, Lorg/eclipse/jetty/util/log/Log;->initialized()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 391
    :cond_0
    sget-object v0, Lorg/eclipse/jetty/util/log/Log;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    invoke-interface {v0, p0, v1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 400
    invoke-static {}, Lorg/eclipse/jetty/util/log/Log;->initialized()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 402
    :cond_0
    sget-object v0, Lorg/eclipse/jetty/util/log/Log;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v0, p0, p1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static warn(Ljava/lang/Throwable;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 411
    invoke-static {}, Lorg/eclipse/jetty/util/log/Log;->initialized()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 413
    :cond_0
    sget-object v0, Lorg/eclipse/jetty/util/log/Log;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v1, "EXCEPTION "

    invoke-interface {v0, v1, p0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
