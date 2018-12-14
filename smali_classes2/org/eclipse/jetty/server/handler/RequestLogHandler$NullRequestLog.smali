.class Lorg/eclipse/jetty/server/handler/RequestLogHandler$NullRequestLog;
.super Lorg/eclipse/jetty/util/component/AbstractLifeCycle;
.source "RequestLogHandler.java"

# interfaces
.implements Lorg/eclipse/jetty/server/RequestLog;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/server/handler/RequestLogHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NullRequestLog"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 182
    invoke-direct {p0}, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/eclipse/jetty/server/handler/RequestLogHandler$1;)V
    .locals 0

    .line 182
    invoke-direct {p0}, Lorg/eclipse/jetty/server/handler/RequestLogHandler$NullRequestLog;-><init>()V

    return-void
.end method


# virtual methods
.method public log(Lorg/eclipse/jetty/server/Request;Lorg/eclipse/jetty/server/Response;)V
    .locals 0

    return-void
.end method
