.class Lorg/simple/eventbus/handler/UIThreadEventHandler$1;
.super Ljava/lang/Object;
.source "UIThreadEventHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/simple/eventbus/handler/UIThreadEventHandler;->handleEvent(Lorg/simple/eventbus/Subscription;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/simple/eventbus/handler/UIThreadEventHandler;

.field final synthetic val$event:Ljava/lang/Object;

.field final synthetic val$subscription:Lorg/simple/eventbus/Subscription;


# direct methods
.method constructor <init>(Lorg/simple/eventbus/handler/UIThreadEventHandler;Lorg/simple/eventbus/Subscription;Ljava/lang/Object;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lorg/simple/eventbus/handler/UIThreadEventHandler$1;->this$0:Lorg/simple/eventbus/handler/UIThreadEventHandler;

    iput-object p2, p0, Lorg/simple/eventbus/handler/UIThreadEventHandler$1;->val$subscription:Lorg/simple/eventbus/Subscription;

    iput-object p3, p0, Lorg/simple/eventbus/handler/UIThreadEventHandler$1;->val$event:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 49
    iget-object v0, p0, Lorg/simple/eventbus/handler/UIThreadEventHandler$1;->this$0:Lorg/simple/eventbus/handler/UIThreadEventHandler;

    iget-object v0, v0, Lorg/simple/eventbus/handler/UIThreadEventHandler;->mEventHandler:Lorg/simple/eventbus/handler/DefaultEventHandler;

    iget-object v1, p0, Lorg/simple/eventbus/handler/UIThreadEventHandler$1;->val$subscription:Lorg/simple/eventbus/Subscription;

    iget-object v2, p0, Lorg/simple/eventbus/handler/UIThreadEventHandler$1;->val$event:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/simple/eventbus/handler/DefaultEventHandler;->handleEvent(Lorg/simple/eventbus/Subscription;Ljava/lang/Object;)V

    return-void
.end method
