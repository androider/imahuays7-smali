.class Lorg/eclipse/jetty/util/IO$Singleton;
.super Ljava/lang/Object;
.source "IO.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/util/IO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Singleton"
.end annotation


# static fields
.field static final __pool:Lorg/eclipse/jetty/util/thread/QueuedThreadPool;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 60
    new-instance v0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;-><init>()V

    sput-object v0, Lorg/eclipse/jetty/util/IO$Singleton;->__pool:Lorg/eclipse/jetty/util/thread/QueuedThreadPool;

    .line 63
    :try_start_0
    sget-object v0, Lorg/eclipse/jetty/util/IO$Singleton;->__pool:Lorg/eclipse/jetty/util/thread/QueuedThreadPool;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 64
    invoke-static {}, Lorg/eclipse/jetty/util/IO;->access$000()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    :goto_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
