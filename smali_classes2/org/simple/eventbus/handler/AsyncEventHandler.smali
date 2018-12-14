.class public Lorg/simple/eventbus/handler/AsyncEventHandler;
.super Ljava/lang/Object;
.source "AsyncEventHandler.java"

# interfaces
.implements Lorg/simple/eventbus/handler/EventHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/simple/eventbus/handler/AsyncEventHandler$DispatcherThread;
    }
.end annotation


# instance fields
.field mDispatcherThread:Lorg/simple/eventbus/handler/AsyncEventHandler$DispatcherThread;

.field mEventHandler:Lorg/simple/eventbus/handler/EventHandler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lorg/simple/eventbus/handler/DefaultEventHandler;

    invoke-direct {v0}, Lorg/simple/eventbus/handler/DefaultEventHandler;-><init>()V

    iput-object v0, p0, Lorg/simple/eventbus/handler/AsyncEventHandler;->mEventHandler:Lorg/simple/eventbus/handler/EventHandler;

    .line 42
    new-instance v0, Lorg/simple/eventbus/handler/AsyncEventHandler$DispatcherThread;

    const-class v1, Lorg/simple/eventbus/handler/AsyncEventHandler;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/simple/eventbus/handler/AsyncEventHandler$DispatcherThread;-><init>(Lorg/simple/eventbus/handler/AsyncEventHandler;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/simple/eventbus/handler/AsyncEventHandler;->mDispatcherThread:Lorg/simple/eventbus/handler/AsyncEventHandler$DispatcherThread;

    .line 43
    iget-object v0, p0, Lorg/simple/eventbus/handler/AsyncEventHandler;->mDispatcherThread:Lorg/simple/eventbus/handler/AsyncEventHandler$DispatcherThread;

    invoke-virtual {v0}, Lorg/simple/eventbus/handler/AsyncEventHandler$DispatcherThread;->start()V

    return-void
.end method


# virtual methods
.method public handleEvent(Lorg/simple/eventbus/Subscription;Ljava/lang/Object;)V
    .locals 2

    .line 53
    iget-object v0, p0, Lorg/simple/eventbus/handler/AsyncEventHandler;->mDispatcherThread:Lorg/simple/eventbus/handler/AsyncEventHandler$DispatcherThread;

    new-instance v1, Lorg/simple/eventbus/handler/AsyncEventHandler$1;

    invoke-direct {v1, p0, p1, p2}, Lorg/simple/eventbus/handler/AsyncEventHandler$1;-><init>(Lorg/simple/eventbus/handler/AsyncEventHandler;Lorg/simple/eventbus/Subscription;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lorg/simple/eventbus/handler/AsyncEventHandler$DispatcherThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method
