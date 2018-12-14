.class public Lorg/eclipse/jetty/util/log/LoggerLog;
.super Lorg/eclipse/jetty/util/log/AbstractLogger;
.source "LoggerLog.java"


# instance fields
.field private volatile _debug:Z

.field private final _debugMAA:Ljava/lang/reflect/Method;

.field private final _debugMT:Ljava/lang/reflect/Method;

.field private final _getLoggerN:Ljava/lang/reflect/Method;

.field private final _getName:Ljava/lang/reflect/Method;

.field private final _infoMAA:Ljava/lang/reflect/Method;

.field private final _infoMT:Ljava/lang/reflect/Method;

.field private final _logger:Ljava/lang/Object;

.field private final _setDebugEnabledE:Ljava/lang/reflect/Method;

.field private final _warnMAA:Ljava/lang/reflect/Method;

.field private final _warnMT:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 6

    .line 41
    invoke-direct {p0}, Lorg/eclipse/jetty/util/log/AbstractLogger;-><init>()V

    .line 44
    :try_start_0
    iput-object p1, p0, Lorg/eclipse/jetty/util/log/LoggerLog;->_logger:Ljava/lang/Object;

    .line 45
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string v0, "debug"

    const/4 v1, 0x2

    .line 46
    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/Throwable;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-virtual {p1, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/util/log/LoggerLog;->_debugMT:Ljava/lang/reflect/Method;

    const-string v0, "debug"

    .line 47
    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v4

    const-class v3, [Ljava/lang/Object;

    aput-object v3, v2, v5

    invoke-virtual {p1, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/util/log/LoggerLog;->_debugMAA:Ljava/lang/reflect/Method;

    const-string v0, "info"

    .line 48
    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/Throwable;

    aput-object v3, v2, v5

    invoke-virtual {p1, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/util/log/LoggerLog;->_infoMT:Ljava/lang/reflect/Method;

    const-string v0, "info"

    .line 49
    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v4

    const-class v3, [Ljava/lang/Object;

    aput-object v3, v2, v5

    invoke-virtual {p1, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/util/log/LoggerLog;->_infoMAA:Ljava/lang/reflect/Method;

    const-string v0, "warn"

    .line 50
    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/Throwable;

    aput-object v3, v2, v5

    invoke-virtual {p1, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/util/log/LoggerLog;->_warnMT:Ljava/lang/reflect/Method;

    const-string v0, "warn"

    .line 51
    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    aput-object v2, v1, v4

    const-class v2, [Ljava/lang/Object;

    aput-object v2, v1, v5

    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/util/log/LoggerLog;->_warnMAA:Ljava/lang/reflect/Method;

    const-string v0, "isDebugEnabled"

    .line 52
    new-array v1, v4, [Ljava/lang/Class;

    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const-string v1, "setDebugEnabled"

    .line 53
    new-array v2, v5, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    invoke-virtual {p1, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jetty/util/log/LoggerLog;->_setDebugEnabledE:Ljava/lang/reflect/Method;

    const-string v1, "getLogger"

    .line 54
    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {p1, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jetty/util/log/LoggerLog;->_getLoggerN:Ljava/lang/reflect/Method;

    const-string v1, "getName"

    .line 55
    new-array v2, v4, [Ljava/lang/Class;

    invoke-virtual {p1, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jetty/util/log/LoggerLog;->_getName:Ljava/lang/reflect/Method;

    .line 57
    iget-object p1, p0, Lorg/eclipse/jetty/util/log/LoggerLog;->_logger:Ljava/lang/Object;

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lorg/eclipse/jetty/util/log/LoggerLog;->_debug:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 61
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4

    .line 176
    iget-boolean v0, p0, Lorg/eclipse/jetty/util/log/LoggerLog;->_debug:Z

    if-nez v0, :cond_0

    return-void

    .line 181
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/log/LoggerLog;->_debugMT:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/eclipse/jetty/util/log/LoggerLog;->_logger:Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 185
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public varargs debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 156
    iget-boolean p1, p0, Lorg/eclipse/jetty/util/log/LoggerLog;->_debug:Z

    if-nez p1, :cond_0

    return-void

    .line 161
    :cond_0
    :try_start_0
    iget-object p1, p0, Lorg/eclipse/jetty/util/log/LoggerLog;->_debugMAA:Ljava/lang/reflect/Method;

    iget-object v0, p0, Lorg/eclipse/jetty/util/log/LoggerLog;->_logger:Ljava/lang/Object;

    invoke-virtual {p1, v0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 165
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public debug(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, ""

    .line 171
    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jetty/util/log/LoggerLog;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    .line 69
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/log/LoggerLog;->_getName:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/eclipse/jetty/util/log/LoggerLog;->_logger:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 73
    invoke-static {v0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public ignore(Ljava/lang/Throwable;)V
    .locals 1

    .line 191
    invoke-static {}, Lorg/eclipse/jetty/util/log/Log;->isIgnored()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "IGNORED "

    .line 193
    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jetty/util/log/LoggerLog;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4

    .line 128
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/log/LoggerLog;->_infoMT:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/eclipse/jetty/util/log/LoggerLog;->_logger:Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 132
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public varargs info(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 111
    :try_start_0
    iget-object p1, p0, Lorg/eclipse/jetty/util/log/LoggerLog;->_infoMAA:Ljava/lang/reflect/Method;

    iget-object v0, p0, Lorg/eclipse/jetty/util/log/LoggerLog;->_logger:Ljava/lang/Object;

    invoke-virtual {p1, v0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 115
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public info(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, ""

    .line 121
    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jetty/util/log/LoggerLog;->info(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public isDebugEnabled()Z
    .locals 1

    .line 138
    iget-boolean v0, p0, Lorg/eclipse/jetty/util/log/LoggerLog;->_debug:Z

    return v0
.end method

.method protected newLogger(Ljava/lang/String;)Lorg/eclipse/jetty/util/log/Logger;
    .locals 4

    .line 204
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/log/LoggerLog;->_getLoggerN:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/eclipse/jetty/util/log/LoggerLog;->_logger:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 205
    new-instance v0, Lorg/eclipse/jetty/util/log/LoggerLog;

    invoke-direct {v0, p1}, Lorg/eclipse/jetty/util/log/LoggerLog;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 209
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    return-object p0
.end method

.method public setDebugEnabled(Z)V
    .locals 5

    .line 145
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/log/LoggerLog;->_setDebugEnabledE:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/eclipse/jetty/util/log/LoggerLog;->_logger:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    iput-boolean p1, p0, Lorg/eclipse/jetty/util/log/LoggerLog;->_debug:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 150
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4

    .line 99
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/log/LoggerLog;->_warnMT:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/eclipse/jetty/util/log/LoggerLog;->_logger:Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 103
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public varargs warn(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 82
    :try_start_0
    iget-object p1, p0, Lorg/eclipse/jetty/util/log/LoggerLog;->_warnMAA:Ljava/lang/reflect/Method;

    iget-object v0, p0, Lorg/eclipse/jetty/util/log/LoggerLog;->_logger:Ljava/lang/Object;

    invoke-virtual {p1, v0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 86
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public warn(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, ""

    .line 92
    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jetty/util/log/LoggerLog;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
