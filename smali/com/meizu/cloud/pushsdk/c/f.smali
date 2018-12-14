.class public Lcom/meizu/cloud/pushsdk/c/f;
.super Lcom/meizu/cloud/pushsdk/c/g;

# interfaces
.implements Lcom/meizu/cloud/pushsdk/c/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/meizu/cloud/pushsdk/c/g<",
        "Lcom/meizu/cloud/pushsdk/c/e;",
        ">;",
        "Lcom/meizu/cloud/pushsdk/c/e;"
    }
.end annotation


# static fields
.field private static c:Lcom/meizu/cloud/pushsdk/c/f;


# instance fields
.field private d:Z


# direct methods
.method protected constructor <init>(Lcom/meizu/cloud/pushsdk/c/e;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/cloud/pushsdk/c/g;-><init>(Ljava/lang/Object;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/meizu/cloud/pushsdk/c/f;->d:Z

    return-void
.end method

.method public static a()Lcom/meizu/cloud/pushsdk/c/f;
    .locals 3

    sget-object v0, Lcom/meizu/cloud/pushsdk/c/f;->c:Lcom/meizu/cloud/pushsdk/c/f;

    if-nez v0, :cond_1

    const-class v0, Lcom/meizu/cloud/pushsdk/c/f;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/meizu/cloud/pushsdk/c/f;->c:Lcom/meizu/cloud/pushsdk/c/f;

    if-nez v1, :cond_0

    new-instance v1, Lcom/meizu/cloud/pushsdk/c/f;

    new-instance v2, Lcom/meizu/cloud/pushsdk/c/a;

    invoke-direct {v2}, Lcom/meizu/cloud/pushsdk/c/a;-><init>()V

    invoke-direct {v1, v2}, Lcom/meizu/cloud/pushsdk/c/f;-><init>(Lcom/meizu/cloud/pushsdk/c/e;)V

    sput-object v1, Lcom/meizu/cloud/pushsdk/c/f;->c:Lcom/meizu/cloud/pushsdk/c/f;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/meizu/cloud/pushsdk/c/f;->c:Lcom/meizu/cloud/pushsdk/c/f;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/c/f;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/cloud/pushsdk/c/e;

    invoke-interface {v0, p1, p2}, Lcom/meizu/cloud/pushsdk/c/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/c/f;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/cloud/pushsdk/c/e;

    invoke-interface {v0, p1, p2}, Lcom/meizu/cloud/pushsdk/c/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
