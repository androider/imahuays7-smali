.class public Lorg/eclipse/jetty/util/component/FileNoticeLifeCycleListener;
.super Ljava/lang/Object;
.source "FileNoticeLifeCycleListener.java"

# interfaces
.implements Lorg/eclipse/jetty/util/component/LifeCycle$Listener;


# instance fields
.field LOG:Lorg/eclipse/jetty/util/log/Logger;

.field private final _filename:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-class v0, Lorg/eclipse/jetty/util/component/FileNoticeLifeCycleListener;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/util/component/FileNoticeLifeCycleListener;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    .line 39
    iput-object p1, p0, Lorg/eclipse/jetty/util/component/FileNoticeLifeCycleListener;->_filename:Ljava/lang/String;

    return-void
.end method

.method private writeState(Ljava/lang/String;Lorg/eclipse/jetty/util/component/LifeCycle;)V
    .locals 3

    .line 46
    :try_start_0
    new-instance v0, Ljava/io/FileWriter;

    iget-object v1, p0, Lorg/eclipse/jetty/util/component/FileNoticeLifeCycleListener;->_filename:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    .line 47
    invoke-virtual {v0, p1}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object p1

    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object p1

    const-string p2, "\n"

    invoke-virtual {p1, p2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 48
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 52
    iget-object p2, p0, Lorg/eclipse/jetty/util/component/FileNoticeLifeCycleListener;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {p2, p1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public lifeCycleFailure(Lorg/eclipse/jetty/util/component/LifeCycle;Ljava/lang/Throwable;)V
    .locals 0

    const-string p2, "FAILED"

    .line 68
    invoke-direct {p0, p2, p1}, Lorg/eclipse/jetty/util/component/FileNoticeLifeCycleListener;->writeState(Ljava/lang/String;Lorg/eclipse/jetty/util/component/LifeCycle;)V

    return-void
.end method

.method public lifeCycleStarted(Lorg/eclipse/jetty/util/component/LifeCycle;)V
    .locals 1

    const-string v0, "STARTED"

    .line 63
    invoke-direct {p0, v0, p1}, Lorg/eclipse/jetty/util/component/FileNoticeLifeCycleListener;->writeState(Ljava/lang/String;Lorg/eclipse/jetty/util/component/LifeCycle;)V

    return-void
.end method

.method public lifeCycleStarting(Lorg/eclipse/jetty/util/component/LifeCycle;)V
    .locals 1

    const-string v0, "STARTING"

    .line 58
    invoke-direct {p0, v0, p1}, Lorg/eclipse/jetty/util/component/FileNoticeLifeCycleListener;->writeState(Ljava/lang/String;Lorg/eclipse/jetty/util/component/LifeCycle;)V

    return-void
.end method

.method public lifeCycleStopped(Lorg/eclipse/jetty/util/component/LifeCycle;)V
    .locals 1

    const-string v0, "STOPPED"

    .line 78
    invoke-direct {p0, v0, p1}, Lorg/eclipse/jetty/util/component/FileNoticeLifeCycleListener;->writeState(Ljava/lang/String;Lorg/eclipse/jetty/util/component/LifeCycle;)V

    return-void
.end method

.method public lifeCycleStopping(Lorg/eclipse/jetty/util/component/LifeCycle;)V
    .locals 1

    const-string v0, "STOPPING"

    .line 73
    invoke-direct {p0, v0, p1}, Lorg/eclipse/jetty/util/component/FileNoticeLifeCycleListener;->writeState(Ljava/lang/String;Lorg/eclipse/jetty/util/component/LifeCycle;)V

    return-void
.end method
