.class public Lorg/simple/eventbus/handler/UIThreadEventHandler;
.super Ljava/lang/Object;
.source "UIThreadEventHandler.java"

# interfaces
.implements Lorg/simple/eventbus/handler/EventHandler;


# instance fields
.field mEventHandler:Lorg/simple/eventbus/handler/DefaultEventHandler;

.field private mUIHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lorg/simple/eventbus/handler/UIThreadEventHandler;->mUIHandler:Landroid/os/Handler;

    .line 38
    new-instance v0, Lorg/simple/eventbus/handler/DefaultEventHandler;

    invoke-direct {v0}, Lorg/simple/eventbus/handler/DefaultEventHandler;-><init>()V

    iput-object v0, p0, Lorg/simple/eventbus/handler/UIThreadEventHandler;->mEventHandler:Lorg/simple/eventbus/handler/DefaultEventHandler;

    return-void
.end method


# virtual methods
.method public handleEvent(Lorg/simple/eventbus/Subscription;Ljava/lang/Object;)V
    .locals 2

    .line 45
    iget-object v0, p0, Lorg/simple/eventbus/handler/UIThreadEventHandler;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lorg/simple/eventbus/handler/UIThreadEventHandler$1;

    invoke-direct {v1, p0, p1, p2}, Lorg/simple/eventbus/handler/UIThreadEventHandler$1;-><init>(Lorg/simple/eventbus/handler/UIThreadEventHandler;Lorg/simple/eventbus/Subscription;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
