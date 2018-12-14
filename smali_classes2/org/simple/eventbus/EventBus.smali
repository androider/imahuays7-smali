.class public final Lorg/simple/eventbus/EventBus;
.super Ljava/lang/Object;
.source "EventBus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/simple/eventbus/EventBus$EventDispatcher;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "EventBus"

.field private static sDefaultBus:Lorg/simple/eventbus/EventBus;


# instance fields
.field private mDesc:Ljava/lang/String;

.field mDispatcher:Lorg/simple/eventbus/EventBus$EventDispatcher;

.field mLocalEvents:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Queue<",
            "Lorg/simple/eventbus/EventType;",
            ">;>;"
        }
    .end annotation
.end field

.field mMethodHunter:Lorg/simple/eventbus/SubsciberMethodHunter;

.field private mStickyEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/simple/eventbus/EventType;",
            ">;"
        }
    .end annotation
.end field

.field private final mSubcriberMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/simple/eventbus/EventType;",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lorg/simple/eventbus/Subscription;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 106
    sget-object v0, Lorg/simple/eventbus/EventBus;->DESCRIPTOR:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/simple/eventbus/EventBus;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    sget-object v0, Lorg/simple/eventbus/EventBus;->DESCRIPTOR:Ljava/lang/String;

    iput-object v0, p0, Lorg/simple/eventbus/EventBus;->mDesc:Ljava/lang/String;

    .line 71
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/simple/eventbus/EventBus;->mSubcriberMap:Ljava/util/Map;

    .line 75
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 76
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/simple/eventbus/EventBus;->mStickyEvents:Ljava/util/List;

    .line 80
    new-instance v0, Lorg/simple/eventbus/EventBus$1;

    invoke-direct {v0, p0}, Lorg/simple/eventbus/EventBus$1;-><init>(Lorg/simple/eventbus/EventBus;)V

    iput-object v0, p0, Lorg/simple/eventbus/EventBus;->mLocalEvents:Ljava/lang/ThreadLocal;

    .line 89
    new-instance v0, Lorg/simple/eventbus/EventBus$EventDispatcher;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/simple/eventbus/EventBus$EventDispatcher;-><init>(Lorg/simple/eventbus/EventBus;Lorg/simple/eventbus/EventBus$1;)V

    iput-object v0, p0, Lorg/simple/eventbus/EventBus;->mDispatcher:Lorg/simple/eventbus/EventBus$EventDispatcher;

    .line 95
    new-instance v0, Lorg/simple/eventbus/SubsciberMethodHunter;

    iget-object v1, p0, Lorg/simple/eventbus/EventBus;->mSubcriberMap:Ljava/util/Map;

    invoke-direct {v0, v1}, Lorg/simple/eventbus/SubsciberMethodHunter;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lorg/simple/eventbus/EventBus;->mMethodHunter:Lorg/simple/eventbus/SubsciberMethodHunter;

    .line 115
    iput-object p1, p0, Lorg/simple/eventbus/EventBus;->mDesc:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$100(Lorg/simple/eventbus/EventBus;)Ljava/util/Map;
    .locals 0

    .line 56
    iget-object p0, p0, Lorg/simple/eventbus/EventBus;->mSubcriberMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$200(Lorg/simple/eventbus/EventBus;)Ljava/util/List;
    .locals 0

    .line 56
    iget-object p0, p0, Lorg/simple/eventbus/EventBus;->mStickyEvents:Ljava/util/List;

    return-object p0
.end method

.method public static getDefault()Lorg/simple/eventbus/EventBus;
    .locals 2

    .line 122
    sget-object v0, Lorg/simple/eventbus/EventBus;->sDefaultBus:Lorg/simple/eventbus/EventBus;

    if-nez v0, :cond_1

    .line 123
    const-class v0, Lorg/simple/eventbus/EventBus;

    monitor-enter v0

    .line 124
    :try_start_0
    sget-object v1, Lorg/simple/eventbus/EventBus;->sDefaultBus:Lorg/simple/eventbus/EventBus;

    if-nez v1, :cond_0

    .line 125
    new-instance v1, Lorg/simple/eventbus/EventBus;

    invoke-direct {v1}, Lorg/simple/eventbus/EventBus;-><init>()V

    sput-object v1, Lorg/simple/eventbus/EventBus;->sDefaultBus:Lorg/simple/eventbus/EventBus;

    .line 127
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 129
    :cond_1
    :goto_0
    sget-object v0, Lorg/simple/eventbus/EventBus;->sDefaultBus:Lorg/simple/eventbus/EventBus;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 1

    monitor-enter p0

    .line 297
    :try_start_0
    iget-object v0, p0, Lorg/simple/eventbus/EventBus;->mLocalEvents:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 298
    iget-object v0, p0, Lorg/simple/eventbus/EventBus;->mSubcriberMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 296
    monitor-exit p0

    throw v0
.end method

.method public getDescriptor()Ljava/lang/String;
    .locals 1

    .line 307
    iget-object v0, p0, Lorg/simple/eventbus/EventBus;->mDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getDispatcher()Lorg/simple/eventbus/EventBus$EventDispatcher;
    .locals 1

    .line 311
    iget-object v0, p0, Lorg/simple/eventbus/EventBus;->mDispatcher:Lorg/simple/eventbus/EventBus$EventDispatcher;

    return-object v0
.end method

.method public getEventQueue()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue<",
            "Lorg/simple/eventbus/EventType;",
            ">;"
        }
    .end annotation

    .line 290
    iget-object v0, p0, Lorg/simple/eventbus/EventBus;->mLocalEvents:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Queue;

    return-object v0
.end method

.method public getStickyEvents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/simple/eventbus/EventType;",
            ">;"
        }
    .end annotation

    .line 236
    iget-object v0, p0, Lorg/simple/eventbus/EventBus;->mStickyEvents:Ljava/util/List;

    return-object v0
.end method

.method public getSubscriberMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lorg/simple/eventbus/EventType;",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lorg/simple/eventbus/Subscription;",
            ">;>;"
        }
    .end annotation

    .line 281
    iget-object v0, p0, Lorg/simple/eventbus/EventBus;->mSubcriberMap:Ljava/util/Map;

    return-object v0
.end method

.method public post(Ljava/lang/Object;)V
    .locals 1

    const-string v0, "default_tag"

    .line 178
    invoke-virtual {p0, p1, v0}, Lorg/simple/eventbus/EventBus;->post(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public post(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    .line 188
    iget-object v0, p0, Lorg/simple/eventbus/EventBus;->mLocalEvents:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Queue;

    new-instance v1, Lorg/simple/eventbus/EventType;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Lorg/simple/eventbus/EventType;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 189
    iget-object p2, p0, Lorg/simple/eventbus/EventBus;->mDispatcher:Lorg/simple/eventbus/EventBus$EventDispatcher;

    invoke-virtual {p2, p1}, Lorg/simple/eventbus/EventBus$EventDispatcher;->dispatchEvents(Ljava/lang/Object;)V

    return-void
.end method

.method public postSticky(Ljava/lang/Object;)V
    .locals 1

    const-string v0, "default_tag"

    .line 198
    invoke-virtual {p0, p1, v0}, Lorg/simple/eventbus/EventBus;->postSticky(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public postSticky(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 208
    new-instance v0, Lorg/simple/eventbus/EventType;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lorg/simple/eventbus/EventType;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 209
    iput-object p1, v0, Lorg/simple/eventbus/EventType;->event:Ljava/lang/Object;

    .line 210
    iget-object p1, p0, Lorg/simple/eventbus/EventBus;->mStickyEvents:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public register(Ljava/lang/Object;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 144
    :cond_0
    monitor-enter p0

    .line 145
    :try_start_0
    iget-object v0, p0, Lorg/simple/eventbus/EventBus;->mMethodHunter:Lorg/simple/eventbus/SubsciberMethodHunter;

    invoke-virtual {v0, p1}, Lorg/simple/eventbus/SubsciberMethodHunter;->findSubcribeMethods(Ljava/lang/Object;)V

    .line 146
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public registerSticky(Ljava/lang/Object;)V
    .locals 1

    .line 155
    invoke-virtual {p0, p1}, Lorg/simple/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 157
    iget-object v0, p0, Lorg/simple/eventbus/EventBus;->mDispatcher:Lorg/simple/eventbus/EventBus$EventDispatcher;

    invoke-virtual {v0, p1}, Lorg/simple/eventbus/EventBus$EventDispatcher;->dispatchStickyEvents(Ljava/lang/Object;)V

    return-void
.end method

.method public removeStickyEvent(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "default_tag"

    .line 216
    invoke-virtual {p0, p1, v0}, Lorg/simple/eventbus/EventBus;->removeStickyEvent(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public removeStickyEvent(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 225
    iget-object v0, p0, Lorg/simple/eventbus/EventBus;->mStickyEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 226
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 227
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/simple/eventbus/EventType;

    .line 228
    iget-object v2, v1, Lorg/simple/eventbus/EventType;->paramClass:Ljava/lang/Class;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, v1, Lorg/simple/eventbus/EventType;->tag:Ljava/lang/String;

    .line 229
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 230
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setAsyncEventHandler(Lorg/simple/eventbus/handler/EventHandler;)V
    .locals 1

    .line 272
    iget-object v0, p0, Lorg/simple/eventbus/EventBus;->mDispatcher:Lorg/simple/eventbus/EventBus$EventDispatcher;

    iput-object p1, v0, Lorg/simple/eventbus/EventBus$EventDispatcher;->mAsyncEventHandler:Lorg/simple/eventbus/handler/EventHandler;

    return-void
.end method

.method public setMatchPolicy(Lorg/simple/eventbus/matchpolicy/MatchPolicy;)V
    .locals 1

    .line 245
    iget-object v0, p0, Lorg/simple/eventbus/EventBus;->mDispatcher:Lorg/simple/eventbus/EventBus$EventDispatcher;

    iput-object p1, v0, Lorg/simple/eventbus/EventBus$EventDispatcher;->mMatchPolicy:Lorg/simple/eventbus/matchpolicy/MatchPolicy;

    return-void
.end method

.method public setPostThreadHandler(Lorg/simple/eventbus/handler/EventHandler;)V
    .locals 1

    .line 263
    iget-object v0, p0, Lorg/simple/eventbus/EventBus;->mDispatcher:Lorg/simple/eventbus/EventBus$EventDispatcher;

    iput-object p1, v0, Lorg/simple/eventbus/EventBus$EventDispatcher;->mPostThreadHandler:Lorg/simple/eventbus/handler/EventHandler;

    return-void
.end method

.method public setUIThreadEventHandler(Lorg/simple/eventbus/handler/EventHandler;)V
    .locals 1

    .line 254
    iget-object v0, p0, Lorg/simple/eventbus/EventBus;->mDispatcher:Lorg/simple/eventbus/EventBus$EventDispatcher;

    iput-object p1, v0, Lorg/simple/eventbus/EventBus$EventDispatcher;->mUIThreadEventHandler:Lorg/simple/eventbus/handler/EventHandler;

    return-void
.end method

.method public unregister(Ljava/lang/Object;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 167
    :cond_0
    monitor-enter p0

    .line 168
    :try_start_0
    iget-object v0, p0, Lorg/simple/eventbus/EventBus;->mMethodHunter:Lorg/simple/eventbus/SubsciberMethodHunter;

    invoke-virtual {v0, p1}, Lorg/simple/eventbus/SubsciberMethodHunter;->removeMethodsFromMap(Ljava/lang/Object;)V

    .line 169
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
