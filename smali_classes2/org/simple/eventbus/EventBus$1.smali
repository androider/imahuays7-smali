.class Lorg/simple/eventbus/EventBus$1;
.super Ljava/lang/ThreadLocal;
.source "EventBus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/simple/eventbus/EventBus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Ljava/util/Queue<",
        "Lorg/simple/eventbus/EventType;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/simple/eventbus/EventBus;


# direct methods
.method constructor <init>(Lorg/simple/eventbus/EventBus;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lorg/simple/eventbus/EventBus$1;->this$0:Lorg/simple/eventbus/EventBus;

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .line 80
    invoke-virtual {p0}, Lorg/simple/eventbus/EventBus$1;->initialValue()Ljava/util/Queue;

    move-result-object v0

    return-object v0
.end method

.method protected initialValue()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue<",
            "Lorg/simple/eventbus/EventType;",
            ">;"
        }
    .end annotation

    .line 82
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    return-object v0
.end method
