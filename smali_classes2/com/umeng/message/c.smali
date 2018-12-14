.class public Lcom/umeng/message/c;
.super Ljava/lang/Object;
.source "MessageNotificationQueue.java"


# static fields
.field private static b:Lcom/umeng/message/c;


# instance fields
.field private a:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/umeng/message/entity/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/umeng/message/c;->a:Ljava/util/LinkedList;

    return-void
.end method

.method public static declared-synchronized a()Lcom/umeng/message/c;
    .locals 2

    const-class v0, Lcom/umeng/message/c;

    monitor-enter v0

    .line 21
    :try_start_0
    sget-object v1, Lcom/umeng/message/c;->b:Lcom/umeng/message/c;

    if-nez v1, :cond_0

    .line 22
    new-instance v1, Lcom/umeng/message/c;

    invoke-direct {v1}, Lcom/umeng/message/c;-><init>()V

    sput-object v1, Lcom/umeng/message/c;->b:Lcom/umeng/message/c;

    .line 24
    :cond_0
    sget-object v1, Lcom/umeng/message/c;->b:Lcom/umeng/message/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 20
    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public a(Lcom/umeng/message/entity/b;)V
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/umeng/message/c;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    return-void
.end method

.method public b()Lcom/umeng/message/entity/b;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/umeng/message/c;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/message/entity/b;

    return-object v0
.end method

.method public b(Lcom/umeng/message/entity/b;)V
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/umeng/message/c;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public c()I
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/umeng/message/c;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method

.method public d()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList<",
            "Lcom/umeng/message/entity/b;",
            ">;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/umeng/message/c;->a:Ljava/util/LinkedList;

    return-object v0
.end method
