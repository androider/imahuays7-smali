.class public Lorg/eclipse/jetty/util/log/JavaUtilLog;
.super Lorg/eclipse/jetty/util/log/AbstractLogger;
.source "JavaUtilLog.java"


# instance fields
.field private _logger:Ljava/util/logging/Logger;

.field private configuredLevel:Ljava/util/logging/Level;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "org.eclipse.jetty.util.log"

    .line 40
    invoke-direct {p0, v0}, Lorg/eclipse/jetty/util/log/JavaUtilLog;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 44
    invoke-direct {p0}, Lorg/eclipse/jetty/util/log/AbstractLogger;-><init>()V

    .line 45
    invoke-static {p1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jetty/util/log/JavaUtilLog;->_logger:Ljava/util/logging/Logger;

    .line 46
    sget-object p1, Lorg/eclipse/jetty/util/log/Log;->__props:Ljava/util/Properties;

    const-string v0, "org.eclipse.jetty.util.log.DEBUG"

    const-string v1, "false"

    invoke-virtual {p1, v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 48
    iget-object p1, p0, Lorg/eclipse/jetty/util/log/JavaUtilLog;->_logger:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    .line 50
    :cond_0
    iget-object p1, p0, Lorg/eclipse/jetty/util/log/JavaUtilLog;->_logger:Ljava/util/logging/Logger;

    invoke-virtual {p1}, Ljava/util/logging/Logger;->getLevel()Ljava/util/logging/Level;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jetty/util/log/JavaUtilLog;->configuredLevel:Ljava/util/logging/Level;

    return-void
.end method

.method private varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 7

    .line 139
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "{}"

    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    array-length v2, p2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v5, p2, v3

    .line 145
    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    if-gez v6, :cond_0

    .line 148
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    .line 149
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    goto :goto_1

    .line 155
    :cond_0
    invoke-virtual {p1, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v6, v4

    move v4, v6

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 160
    :cond_1
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 118
    iget-object v0, p0, Lorg/eclipse/jetty/util/log/JavaUtilLog;->_logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1, p1, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public varargs debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 108
    iget-object v0, p0, Lorg/eclipse/jetty/util/log/JavaUtilLog;->_logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jetty/util/log/JavaUtilLog;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    return-void
.end method

.method public debug(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, ""

    .line 113
    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jetty/util/log/JavaUtilLog;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lorg/eclipse/jetty/util/log/JavaUtilLog;->_logger:Ljava/util/logging/Logger;

    invoke-virtual {v0}, Ljava/util/logging/Logger;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ignore(Ljava/lang/Throwable;)V
    .locals 1

    .line 131
    invoke-static {}, Lorg/eclipse/jetty/util/log/Log;->isIgnored()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "IGNORED "

    .line 133
    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jetty/util/log/JavaUtilLog;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 85
    iget-object v0, p0, Lorg/eclipse/jetty/util/log/JavaUtilLog;->_logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v0, v1, p1, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public varargs info(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 75
    iget-object v0, p0, Lorg/eclipse/jetty/util/log/JavaUtilLog;->_logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jetty/util/log/JavaUtilLog;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    return-void
.end method

.method public info(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, ""

    .line 80
    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jetty/util/log/JavaUtilLog;->info(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public isDebugEnabled()Z
    .locals 2

    .line 90
    iget-object v0, p0, Lorg/eclipse/jetty/util/log/JavaUtilLog;->_logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    return v0
.end method

.method protected newLogger(Ljava/lang/String;)Lorg/eclipse/jetty/util/log/Logger;
    .locals 1

    .line 126
    new-instance v0, Lorg/eclipse/jetty/util/log/JavaUtilLog;

    invoke-direct {v0, p1}, Lorg/eclipse/jetty/util/log/JavaUtilLog;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public setDebugEnabled(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 97
    iget-object p1, p0, Lorg/eclipse/jetty/util/log/JavaUtilLog;->_logger:Ljava/util/logging/Logger;

    invoke-virtual {p1}, Ljava/util/logging/Logger;->getLevel()Ljava/util/logging/Level;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jetty/util/log/JavaUtilLog;->configuredLevel:Ljava/util/logging/Level;

    .line 98
    iget-object p1, p0, Lorg/eclipse/jetty/util/log/JavaUtilLog;->_logger:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    goto :goto_0

    .line 102
    :cond_0
    iget-object p1, p0, Lorg/eclipse/jetty/util/log/JavaUtilLog;->_logger:Ljava/util/logging/Logger;

    iget-object v0, p0, Lorg/eclipse/jetty/util/log/JavaUtilLog;->configuredLevel:Ljava/util/logging/Level;

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    :goto_0
    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 70
    iget-object v0, p0, Lorg/eclipse/jetty/util/log/JavaUtilLog;->_logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v0, v1, p1, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public varargs warn(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 60
    iget-object v0, p0, Lorg/eclipse/jetty/util/log/JavaUtilLog;->_logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jetty/util/log/JavaUtilLog;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    return-void
.end method

.method public warn(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, ""

    .line 65
    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jetty/util/log/JavaUtilLog;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
