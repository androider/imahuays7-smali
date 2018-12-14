.class public abstract Lcom/mh/movie/core/androidupnp/service/a/b;
.super Lorg/fourthline/cling/controlpoint/SubscriptionCallback;
.source "BaseSubscriptionCallback.java"


# static fields
.field private static final b:Ljava/lang/String; = "b"


# instance fields
.field protected a:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>(Lorg/fourthline/cling/model/meta/Service;Landroid/content/Context;)V
    .locals 1

    const/16 v0, 0x2a30

    .line 25
    invoke-direct {p0, p1, v0}, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;-><init>(Lorg/fourthline/cling/model/meta/Service;I)V

    .line 26
    iput-object p2, p0, Lcom/mh/movie/core/androidupnp/service/a/b;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected ended(Lorg/fourthline/cling/model/gena/GENASubscription;Lorg/fourthline/cling/model/gena/CancelReason;Lorg/fourthline/cling/model/message/UpnpResponse;)V
    .locals 0

    const/4 p1, 0x0

    .line 44
    iput-object p1, p0, Lcom/mh/movie/core/androidupnp/service/a/b;->a:Landroid/content/Context;

    .line 45
    sget-object p1, Lcom/mh/movie/core/androidupnp/service/a/b;->b:Ljava/lang/String;

    const-string p2, "ended"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected established(Lorg/fourthline/cling/model/gena/GENASubscription;)V
    .locals 0

    return-void
.end method

.method protected eventsMissed(Lorg/fourthline/cling/model/gena/GENASubscription;I)V
    .locals 0

    return-void
.end method

.method protected failed(Lorg/fourthline/cling/model/gena/GENASubscription;Lorg/fourthline/cling/model/message/UpnpResponse;Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 0

    .line 31
    sget-object p1, Lcom/mh/movie/core/androidupnp/service/a/b;->b:Ljava/lang/String;

    const-string p2, "AVTransportSubscriptionCallback failed."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
