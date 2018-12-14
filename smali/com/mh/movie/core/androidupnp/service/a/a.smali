.class public Lcom/mh/movie/core/androidupnp/service/a/a;
.super Lcom/mh/movie/core/androidupnp/service/a/b;
.source "AVTransportSubscriptionCallback.java"


# static fields
.field private static final b:Ljava/lang/String; = "a"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/meta/Service;Landroid/content/Context;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/mh/movie/core/androidupnp/service/a/b;-><init>(Lorg/fourthline/cling/model/meta/Service;Landroid/content/Context;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    .line 51
    :try_start_0
    new-instance v0, Lorg/fourthline/cling/support/lastchange/LastChange;

    new-instance v1, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportLastChangeParser;

    invoke-direct {v1}, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportLastChangeParser;-><init>()V

    invoke-direct {v0, v1, p1}, Lorg/fourthline/cling/support/lastchange/LastChange;-><init>(Lorg/fourthline/cling/support/lastchange/LastChangeParser;Ljava/lang/String;)V

    .line 54
    const-class p1, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$TransportState;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lorg/fourthline/cling/support/lastchange/LastChange;->getEventedValue(ILjava/lang/Class;)Lorg/fourthline/cling/support/lastchange/EventedValue;

    move-result-object p1

    check-cast p1, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$TransportState;

    if-eqz p1, :cond_3

    .line 56
    invoke-virtual {p1}, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$TransportState;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fourthline/cling/support/model/TransportState;

    .line 57
    sget-object v2, Lorg/fourthline/cling/support/model/TransportState;->PLAYING:Lorg/fourthline/cling/support/model/TransportState;

    if-ne p1, v2, :cond_0

    .line 58
    sget-object p1, Lcom/mh/movie/core/androidupnp/service/a/a;->b:Ljava/lang/String;

    const-string v0, "PLAYING"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.zane.androidupnp.action.playing"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/mh/movie/core/androidupnp/service/a/a;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    .line 62
    :cond_0
    sget-object v2, Lorg/fourthline/cling/support/model/TransportState;->PAUSED_PLAYBACK:Lorg/fourthline/cling/support/model/TransportState;

    if-ne p1, v2, :cond_1

    .line 63
    sget-object p1, Lcom/mh/movie/core/androidupnp/service/a/a;->b:Ljava/lang/String;

    const-string v0, "PAUSED_PLAYBACK"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.zane.androidupnp.action.paused_playback"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/mh/movie/core/androidupnp/service/a/a;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    .line 67
    :cond_1
    sget-object v2, Lorg/fourthline/cling/support/model/TransportState;->STOPPED:Lorg/fourthline/cling/support/model/TransportState;

    if-ne p1, v2, :cond_2

    .line 68
    sget-object p1, Lcom/mh/movie/core/androidupnp/service/a/a;->b:Ljava/lang/String;

    const-string v0, "STOPPED"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.zane.androidupnp.action.stopped"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/mh/movie/core/androidupnp/service/a/a;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    .line 72
    :cond_2
    sget-object v2, Lorg/fourthline/cling/support/model/TransportState;->TRANSITIONING:Lorg/fourthline/cling/support/model/TransportState;

    if-ne p1, v2, :cond_3

    .line 73
    sget-object p1, Lcom/mh/movie/core/androidupnp/service/a/a;->b:Ljava/lang/String;

    const-string v0, "BUFFER"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.zane.androidupnp.action.transitioning"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/mh/movie/core/androidupnp/service/a/a;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    .line 82
    :cond_3
    const-class p1, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$RelativeTimePosition;

    invoke-virtual {v0, v1, p1}, Lorg/fourthline/cling/support/lastchange/LastChange;->getEventedValue(ILjava/lang/Class;)Lorg/fourthline/cling/support/lastchange/EventedValue;

    move-result-object p1

    check-cast p1, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$RelativeTimePosition;

    .line 83
    invoke-static {p1}, Lcom/mh/movie/core/androidupnp/d/b;->b(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 84
    const-class p1, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$RelativeTimePosition;

    invoke-virtual {v0, v1, p1}, Lorg/fourthline/cling/support/lastchange/LastChange;->getEventedValue(ILjava/lang/Class;)Lorg/fourthline/cling/support/lastchange/EventedValue;

    move-result-object p1

    check-cast p1, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$RelativeTimePosition;

    invoke-virtual {p1}, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$RelativeTimePosition;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 85
    invoke-static {p1}, Lcom/mh/movie/core/androidupnp/d/b;->a(Ljava/lang/String;)I

    move-result v0

    .line 88
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "position: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "intTime: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 94
    new-instance p1, Landroid/content/Intent;

    const-string v1, "com.zane.androidupnp.action.position_callback"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.zane.androidupnp.action.extra_position"

    .line 95
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 96
    iget-object v0, p0, Lcom/mh/movie/core/androidupnp/service/a/a;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 102
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method protected eventReceived(Lorg/fourthline/cling/model/gena/GENASubscription;)V
    .locals 3

    .line 36
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*************\u54e5\u6109\u5feb-\u300b"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/fourthline/cling/model/gena/GENASubscription;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/mh/movie/core/androidupnp/service/a/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mh/movie/core/androidupnp/d/b;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 41
    :cond_0
    invoke-virtual {p1}, Lorg/fourthline/cling/model/gena/GENASubscription;->getCurrentValues()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "LastChange"

    .line 42
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "LastChange"

    .line 43
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 44
    sget-object v0, Lcom/mh/movie/core/androidupnp/service/a/a;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LastChange:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    invoke-direct {p0, p1}, Lcom/mh/movie/core/androidupnp/service/a/a;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
