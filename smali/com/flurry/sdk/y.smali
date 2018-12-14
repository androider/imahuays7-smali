.class public Lcom/flurry/sdk/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/dg;


# static fields
.field private static final f:Ljava/lang/String; = "y"


# instance fields
.field public a:Lcom/flurry/sdk/at;

.field public b:Lcom/flurry/sdk/bl;

.field public c:Lcom/flurry/sdk/av;

.field public d:Lcom/flurry/sdk/eu;

.field public e:Z

.field private final g:Ljava/lang/Object;

.field private h:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/flurry/sdk/x;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/flurry/sdk/x;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/flurry/sdk/w;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Lcom/flurry/sdk/cw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/cw<",
            "Lcom/flurry/sdk/ed;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/flurry/sdk/y;->e:Z

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/y;->g:Ljava/lang/Object;

    .line 47
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/y;->h:Ljava/util/Queue;

    .line 48
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/y;->i:Ljava/util/Queue;

    .line 49
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/y;->j:Ljava/util/Queue;

    .line 52
    new-instance v0, Lcom/flurry/sdk/y$1;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/y$1;-><init>(Lcom/flurry/sdk/y;)V

    iput-object v0, p0, Lcom/flurry/sdk/y;->k:Lcom/flurry/sdk/cw;

    return-void
.end method

.method public static declared-synchronized a()Lcom/flurry/sdk/y;
    .locals 3

    const-class v0, Lcom/flurry/sdk/y;

    monitor-enter v0

    .line 70
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object v1

    const-class v2, Lcom/flurry/sdk/y;

    .line 71
    invoke-virtual {v1, v2}, Lcom/flurry/sdk/cl;->a(Ljava/lang/Class;)Lcom/flurry/sdk/dg;

    move-result-object v1

    check-cast v1, Lcom/flurry/sdk/y;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 69
    monitor-exit v0

    throw v1
.end method

.method static synthetic a(Lcom/flurry/sdk/y;)V
    .locals 2

    .line 5249
    sget-object v0, Lcom/flurry/sdk/y;->f:Ljava/lang/String;

    const-string v1, "Flushing deferred events queues."

    invoke-static {v0, v1}, Lcom/flurry/sdk/dc;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5251
    iget-object v0, p0, Lcom/flurry/sdk/y;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 5253
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/flurry/sdk/y;->h:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5254
    iget-object v1, p0, Lcom/flurry/sdk/y;->h:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/sdk/x;

    invoke-static {v1}, Lcom/flurry/sdk/y;->b(Lcom/flurry/sdk/x;)Lcom/flurry/android/FlurryEventRecordStatus;

    goto :goto_0

    .line 5258
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/flurry/sdk/y;->j:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5259
    iget-object v1, p0, Lcom/flurry/sdk/y;->j:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/sdk/w;

    invoke-static {v1}, Lcom/flurry/sdk/y;->b(Lcom/flurry/sdk/w;)V

    goto :goto_1

    .line 5263
    :cond_1
    :goto_2
    iget-object v1, p0, Lcom/flurry/sdk/y;->i:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 5264
    iget-object v1, p0, Lcom/flurry/sdk/y;->i:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/sdk/x;

    invoke-static {v1}, Lcom/flurry/sdk/y;->c(Lcom/flurry/sdk/x;)V

    goto :goto_2

    .line 5266
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static b(Lcom/flurry/sdk/x;)Lcom/flurry/android/FlurryEventRecordStatus;
    .locals 4

    .line 226
    invoke-static {}, Lcom/flurry/sdk/y;->b()Lcom/flurry/sdk/bp;

    move-result-object v0

    .line 228
    sget-object v1, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventFailed:Lcom/flurry/android/FlurryEventRecordStatus;

    if-eqz v0, :cond_0

    .line 231
    iget-object v1, p0, Lcom/flurry/sdk/x;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/flurry/sdk/x;->b:Ljava/util/Map;

    iget-boolean v3, p0, Lcom/flurry/sdk/x;->c:Z

    iget p0, p0, Lcom/flurry/sdk/x;->d:I

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/flurry/sdk/bp;->a(Ljava/lang/String;Ljava/util/Map;ZI)Lcom/flurry/android/FlurryEventRecordStatus;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public static b()Lcom/flurry/sdk/bp;
    .locals 2

    .line 167
    invoke-static {}, Lcom/flurry/sdk/ee;->a()Lcom/flurry/sdk/ee;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/ee;->f()Lcom/flurry/sdk/ec;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 4175
    :cond_0
    const-class v1, Lcom/flurry/sdk/bp;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ec;->c(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/bp;

    return-object v0
.end method

.method private static b(Lcom/flurry/sdk/w;)V
    .locals 1

    .line 371
    invoke-static {}, Lcom/flurry/sdk/y;->b()Lcom/flurry/sdk/bp;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 373
    invoke-virtual {v0, p0}, Lcom/flurry/sdk/bp;->a(Lcom/flurry/sdk/w;)V

    :cond_0
    return-void
.end method

.method private declared-synchronized c()I
    .locals 1

    monitor-enter p0

    .line 245
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/ee;->a()Lcom/flurry/sdk/ee;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/ee;->e()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static c(Lcom/flurry/sdk/x;)V
    .locals 2

    .line 306
    invoke-static {}, Lcom/flurry/sdk/y;->b()Lcom/flurry/sdk/bp;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 308
    iget-object v1, p0, Lcom/flurry/sdk/x;->a:Ljava/lang/String;

    iget-object p0, p0, Lcom/flurry/sdk/x;->b:Ljava/util/Map;

    invoke-virtual {v0, v1, p0}, Lcom/flurry/sdk/bp;->a(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/util/Map;I)Lcom/flurry/android/FlurryEventRecordStatus;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)",
            "Lcom/flurry/android/FlurryEventRecordStatus;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 188
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/flurry/sdk/y;->a(Ljava/lang/String;Ljava/util/Map;ZI)Lcom/flurry/android/FlurryEventRecordStatus;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;Ljava/util/Map;Z)Lcom/flurry/android/FlurryEventRecordStatus;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/flurry/android/FlurryEventRecordStatus;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 196
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/flurry/sdk/y;->a(Ljava/lang/String;Ljava/util/Map;ZI)Lcom/flurry/android/FlurryEventRecordStatus;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;Ljava/util/Map;ZI)Lcom/flurry/android/FlurryEventRecordStatus;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZI)",
            "Lcom/flurry/android/FlurryEventRecordStatus;"
        }
    .end annotation

    .line 202
    new-instance v0, Lcom/flurry/sdk/x;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/flurry/sdk/x;-><init>(Ljava/lang/String;Ljava/util/Map;ZI)V

    .line 204
    iget-object p1, p0, Lcom/flurry/sdk/y;->g:Ljava/lang/Object;

    monitor-enter p1

    .line 205
    :try_start_0
    sget-object p2, Lcom/flurry/sdk/y$2;->b:[I

    invoke-direct {p0}, Lcom/flurry/sdk/y;->c()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    aget p2, p2, p3

    packed-switch p2, :pswitch_data_0

    .line 220
    sget-object p2, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventFailed:Lcom/flurry/android/FlurryEventRecordStatus;

    goto :goto_0

    .line 217
    :pswitch_0
    invoke-static {v0}, Lcom/flurry/sdk/y;->b(Lcom/flurry/sdk/x;)Lcom/flurry/android/FlurryEventRecordStatus;

    move-result-object p2

    monitor-exit p1

    return-object p2

    .line 212
    :pswitch_1
    sget-object p2, Lcom/flurry/sdk/y;->f:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Waiting for Flurry session to initialize before logging event: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p4, v0, Lcom/flurry/sdk/x;->a:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/flurry/sdk/dc;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    iget-object p2, p0, Lcom/flurry/sdk/y;->h:Ljava/util/Queue;

    invoke-interface {p2, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 214
    sget-object p2, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventLoggingDelayed:Lcom/flurry/android/FlurryEventRecordStatus;

    monitor-exit p1

    return-object p2

    .line 207
    :pswitch_2
    sget-object p2, Lcom/flurry/sdk/y;->f:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "There is no active Flurry session. Adding this event to deferred queue and flush them when the session initializes. Event: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p4, v0, Lcom/flurry/sdk/x;->a:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/flurry/sdk/dc;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iget-object p2, p0, Lcom/flurry/sdk/y;->h:Ljava/util/Queue;

    invoke-interface {p2, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 209
    sget-object p2, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventLoggingDelayed:Lcom/flurry/android/FlurryEventRecordStatus;

    monitor-exit p1

    return-object p2

    .line 220
    :goto_0
    monitor-exit p1

    return-object p2

    :catchall_0
    move-exception p2

    .line 222
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Lcom/flurry/sdk/w;)V
    .locals 4

    .line 349
    iget-object v0, p0, Lcom/flurry/sdk/y;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 350
    :try_start_0
    sget-object v1, Lcom/flurry/sdk/y$2;->b:[I

    invoke-direct {p0}, Lcom/flurry/sdk/y;->c()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 366
    monitor-exit v0

    goto :goto_0

    .line 363
    :pswitch_0
    invoke-static {p1}, Lcom/flurry/sdk/y;->b(Lcom/flurry/sdk/w;)V

    .line 364
    monitor-exit v0

    return-void

    .line 357
    :pswitch_1
    sget-object v1, Lcom/flurry/sdk/y;->f:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Waiting for Flurry session to initialize before logging error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/flurry/sdk/w;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/flurry/sdk/dc;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    iget-object v1, p0, Lcom/flurry/sdk/y;->j:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 359
    monitor-exit v0

    return-void

    .line 352
    :pswitch_2
    sget-object v1, Lcom/flurry/sdk/y;->f:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "There is no active Flurry session. Adding this logging error to deferred queue and flush them when the session initializes. Error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/flurry/sdk/w;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/flurry/sdk/dc;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    iget-object v1, p0, Lcom/flurry/sdk/y;->j:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 354
    monitor-exit v0

    return-void

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 366
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Lcom/flurry/sdk/x;)V
    .locals 4

    .line 284
    iget-object v0, p0, Lcom/flurry/sdk/y;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 285
    :try_start_0
    sget-object v1, Lcom/flurry/sdk/y$2;->b:[I

    invoke-direct {p0}, Lcom/flurry/sdk/y;->c()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 301
    monitor-exit v0

    goto :goto_0

    .line 298
    :pswitch_0
    invoke-static {p1}, Lcom/flurry/sdk/y;->c(Lcom/flurry/sdk/x;)V

    .line 299
    monitor-exit v0

    return-void

    .line 292
    :pswitch_1
    sget-object v1, Lcom/flurry/sdk/y;->f:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Waiting for Flurry session to initialize before ending timed event: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/flurry/sdk/x;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/flurry/sdk/dc;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    iget-object v1, p0, Lcom/flurry/sdk/y;->i:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 294
    monitor-exit v0

    return-void

    .line 287
    :pswitch_2
    sget-object v1, Lcom/flurry/sdk/y;->f:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "There is no active Flurry session. Adding this timed event to deferred queue and flush them when the session initializes. Timed event: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/flurry/sdk/x;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/flurry/sdk/dc;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    iget-object v1, p0, Lcom/flurry/sdk/y;->i:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 289
    monitor-exit v0

    return-void

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 301
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    const-string v0, "uncaught"

    .line 333
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 335
    :goto_0
    invoke-static {v0}, Lcom/flurry/sdk/ev;->a(Z)Ljava/util/Map;

    move-result-object v6

    .line 336
    new-instance v8, Lcom/flurry/sdk/w;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    move-object v1, v8

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/flurry/sdk/w;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;Ljava/util/Map;)V

    if-eqz v0, :cond_1

    .line 339
    iget-object p1, p0, Lcom/flurry/sdk/y;->d:Lcom/flurry/sdk/eu;

    if-eqz p1, :cond_1

    .line 340
    iget-object p1, p0, Lcom/flurry/sdk/y;->d:Lcom/flurry/sdk/eu;

    invoke-virtual {p1}, Lcom/flurry/sdk/eu;->a()Ljava/util/List;

    move-result-object p1

    .line 5061
    iput-object p1, v8, Lcom/flurry/sdk/w;->g:Ljava/util/List;

    const/4 p2, 0x4

    .line 342
    sget-object p3, Lcom/flurry/sdk/y;->f:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "Total breadcrumbs - "

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p3, p1}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 345
    :cond_1
    invoke-virtual {p0, v8}, Lcom/flurry/sdk/y;->a(Lcom/flurry/sdk/w;)V

    return-void
.end method

.method public destroy()V
    .locals 5

    .line 113
    iget-object v0, p0, Lcom/flurry/sdk/y;->c:Lcom/flurry/sdk/av;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/flurry/sdk/y;->c:Lcom/flurry/sdk/av;

    .line 2202
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object v2

    iget-object v3, v0, Lcom/flurry/sdk/do;->e:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lcom/flurry/sdk/cl;->c(Ljava/lang/Runnable;)V

    .line 2207
    invoke-static {}, Lcom/flurry/sdk/cx;->a()Lcom/flurry/sdk/cx;

    move-result-object v2

    const-string v3, "com.flurry.android.sdk.NetworkStateEvent"

    iget-object v0, v0, Lcom/flurry/sdk/do;->f:Lcom/flurry/sdk/cw;

    .line 2208
    invoke-virtual {v2, v3, v0}, Lcom/flurry/sdk/cx;->b(Ljava/lang/String;Lcom/flurry/sdk/cw;)V

    .line 115
    iput-object v1, p0, Lcom/flurry/sdk/y;->c:Lcom/flurry/sdk/av;

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/y;->b:Lcom/flurry/sdk/bl;

    if-eqz v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/flurry/sdk/y;->b:Lcom/flurry/sdk/bl;

    .line 3087
    invoke-static {}, Lcom/flurry/sdk/eh;->a()Lcom/flurry/sdk/eh;

    move-result-object v2

    const-string v3, "UseHttps"

    invoke-virtual {v2, v3, v0}, Lcom/flurry/sdk/eh;->b(Ljava/lang/String;Lcom/flurry/sdk/ei$a;)Z

    .line 3088
    invoke-static {}, Lcom/flurry/sdk/eh;->a()Lcom/flurry/sdk/eh;

    move-result-object v2

    const-string v3, "ReportUrl"

    invoke-virtual {v2, v3, v0}, Lcom/flurry/sdk/eh;->b(Ljava/lang/String;Lcom/flurry/sdk/ei$a;)Z

    .line 120
    iput-object v1, p0, Lcom/flurry/sdk/y;->b:Lcom/flurry/sdk/bl;

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/y;->a:Lcom/flurry/sdk/at;

    if-eqz v0, :cond_2

    .line 124
    iget-object v0, p0, Lcom/flurry/sdk/y;->a:Lcom/flurry/sdk/at;

    .line 3215
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object v2

    iget-object v3, v0, Lcom/flurry/sdk/at;->a:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lcom/flurry/sdk/cl;->c(Ljava/lang/Runnable;)V

    .line 3217
    invoke-static {}, Lcom/flurry/sdk/cx;->a()Lcom/flurry/sdk/cx;

    move-result-object v2

    const-string v3, "com.flurry.android.sdk.NetworkStateEvent"

    iget-object v4, v0, Lcom/flurry/sdk/at;->d:Lcom/flurry/sdk/cw;

    .line 3218
    invoke-virtual {v2, v3, v4}, Lcom/flurry/sdk/cx;->b(Ljava/lang/String;Lcom/flurry/sdk/cw;)V

    .line 3219
    invoke-static {}, Lcom/flurry/sdk/cx;->a()Lcom/flurry/sdk/cx;

    move-result-object v2

    const-string v3, "com.flurry.android.sdk.IdProviderUpdatedAdvertisingId"

    iget-object v4, v0, Lcom/flurry/sdk/at;->c:Lcom/flurry/sdk/cw;

    .line 3220
    invoke-virtual {v2, v3, v4}, Lcom/flurry/sdk/cx;->b(Ljava/lang/String;Lcom/flurry/sdk/cw;)V

    .line 3221
    invoke-static {}, Lcom/flurry/sdk/cx;->a()Lcom/flurry/sdk/cx;

    move-result-object v2

    const-string v3, "com.flurry.android.sdk.IdProviderFinishedEvent"

    iget-object v4, v0, Lcom/flurry/sdk/at;->b:Lcom/flurry/sdk/cw;

    .line 3222
    invoke-virtual {v2, v3, v4}, Lcom/flurry/sdk/cx;->b(Ljava/lang/String;Lcom/flurry/sdk/cw;)V

    .line 3224
    invoke-static {}, Lcom/flurry/sdk/az;->a()V

    .line 3226
    invoke-static {}, Lcom/flurry/sdk/eh;->a()Lcom/flurry/sdk/eh;

    move-result-object v2

    const-string v3, "ProtonEnabled"

    .line 3227
    invoke-virtual {v2, v3, v0}, Lcom/flurry/sdk/eh;->b(Ljava/lang/String;Lcom/flurry/sdk/ei$a;)Z

    .line 125
    iput-object v1, p0, Lcom/flurry/sdk/y;->a:Lcom/flurry/sdk/at;

    .line 128
    :cond_2
    iget-object v0, p0, Lcom/flurry/sdk/y;->d:Lcom/flurry/sdk/eu;

    if-eqz v0, :cond_3

    .line 129
    iget-object v0, p0, Lcom/flurry/sdk/y;->d:Lcom/flurry/sdk/eu;

    .line 3240
    iput-object v1, v0, Lcom/flurry/sdk/eu;->a:Ljava/nio/ByteBuffer;

    .line 130
    iput-object v1, p0, Lcom/flurry/sdk/y;->d:Lcom/flurry/sdk/eu;

    .line 133
    :cond_3
    invoke-static {}, Lcom/flurry/sdk/cx;->a()Lcom/flurry/sdk/cx;

    move-result-object v0

    const-string v1, "com.flurry.android.sdk.FlurrySessionEvent"

    iget-object v2, p0, Lcom/flurry/sdk/y;->k:Lcom/flurry/sdk/cw;

    .line 134
    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/cx;->b(Ljava/lang/String;Lcom/flurry/sdk/cw;)V

    .line 136
    const-class v0, Lcom/flurry/sdk/bp;

    invoke-static {v0}, Lcom/flurry/sdk/ec;->b(Ljava/lang/Class;)V

    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 4

    .line 76
    const-class v0, Lcom/flurry/sdk/bp;

    invoke-static {v0}, Lcom/flurry/sdk/ec;->a(Ljava/lang/Class;)V

    .line 78
    new-instance v0, Lcom/flurry/sdk/bl;

    invoke-direct {v0}, Lcom/flurry/sdk/bl;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/y;->b:Lcom/flurry/sdk/bl;

    .line 79
    new-instance v0, Lcom/flurry/sdk/at;

    invoke-direct {v0}, Lcom/flurry/sdk/at;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/y;->a:Lcom/flurry/sdk/at;

    .line 80
    new-instance v0, Lcom/flurry/sdk/av;

    invoke-direct {v0}, Lcom/flurry/sdk/av;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/y;->c:Lcom/flurry/sdk/av;

    .line 81
    new-instance v0, Lcom/flurry/sdk/eu;

    invoke-direct {v0}, Lcom/flurry/sdk/eu;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/y;->d:Lcom/flurry/sdk/eu;

    .line 83
    invoke-static {}, Lcom/flurry/sdk/cx;->a()Lcom/flurry/sdk/cx;

    move-result-object v0

    const-string v1, "com.flurry.android.sdk.FlurrySessionEvent"

    iget-object v2, p0, Lcom/flurry/sdk/y;->k:Lcom/flurry/sdk/cw;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/cx;->a(Ljava/lang/String;Lcom/flurry/sdk/cw;)V

    const-string v0, "android.permission.INTERNET"

    .line 1099
    invoke-static {p1, v0}, Lcom/flurry/sdk/en;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1100
    sget-object v0, Lcom/flurry/sdk/y;->f:Ljava/lang/String;

    const-string v1, "Application must declare permission: android.permission.INTERNET"

    invoke-static {v0, v1}, Lcom/flurry/sdk/dc;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    .line 1105
    invoke-static {p1, v0}, Lcom/flurry/sdk/en;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1106
    sget-object v0, Lcom/flurry/sdk/y;->f:Ljava/lang/String;

    const-string v1, "It is highly recommended that the application declare permission: android.permission.ACCESS_NETWORK_STATE"

    invoke-static {v0, v1}, Lcom/flurry/sdk/dc;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1396
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "FLURRY_IS_YAHOO_APP"

    const-string v2, "bool"

    .line 1397
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 1399
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/flurry/sdk/y;->e:Z

    .line 1400
    sget-object v0, Lcom/flurry/sdk/y;->f:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Found FLURRY_IS_YAHOO_APP resource id. Value: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/flurry/sdk/y;->e:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/sdk/dc;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :cond_2
    invoke-static {}, Lcom/flurry/sdk/db;->a()Lcom/flurry/sdk/db;

    move-result-object v0

    :try_start_0
    const-string v1, "com.google.android.instantapps.InstantApps"

    .line 2040
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 2041
    invoke-static {p1}, Lcom/google/android/instantapps/InstantApps;->isInstantApp(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, v0, Lcom/flurry/sdk/db;->b:Z

    .line 2042
    sget-object p1, Lcom/flurry/sdk/db;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isInstantApp: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, v0, Lcom/flurry/sdk/db;->b:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/flurry/sdk/dc;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 2044
    :catch_0
    sget-object p1, Lcom/flurry/sdk/db;->a:Ljava/lang/String;

    const-string v0, "isInstantApps dependency is not added"

    invoke-static {p1, v0}, Lcom/flurry/sdk/dc;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
