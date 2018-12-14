.class Lcom/umeng/message/h$6;
.super Ljava/lang/Object;
.source "UTrack.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/message/h;->c(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/message/h;


# direct methods
.method constructor <init>(Lcom/umeng/message/h;)V
    .locals 0

    .line 392
    iput-object p1, p0, Lcom/umeng/message/h$6;->a:Lcom/umeng/message/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v0, 0x0

    .line 395
    :try_start_0
    iget-object v1, p0, Lcom/umeng/message/h$6;->a:Lcom/umeng/message/h;

    .line 396
    invoke-static {v1}, Lcom/umeng/message/h;->a(Lcom/umeng/message/h;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/message/b/h;->a(Landroid/content/Context;)Lcom/umeng/message/b/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/message/b/h;->b()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    .line 397
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 398
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/umeng/message/b/h$b;

    .line 399
    iget-object v4, p0, Lcom/umeng/message/h$6;->a:Lcom/umeng/message/h;

    iget-object v5, v3, Lcom/umeng/message/b/h$b;->a:Ljava/lang/String;

    iget-object v6, v3, Lcom/umeng/message/b/h$b;->b:Ljava/lang/String;

    iget-object v3, v3, Lcom/umeng/message/b/h$b;->c:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v3}, Lcom/umeng/message/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 402
    :try_start_1
    invoke-static {v1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    .line 403
    sget-object v2, Lcom/umeng/commonsdk/a;->a:Lcom/umeng/commonsdk/a/e;

    invoke-static {}, Lcom/umeng/message/h;->b()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {v2, v3, v4}, Lcom/umeng/commonsdk/a/e;->a(Ljava/lang/String;I[Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    return-void

    .line 404
    :goto_1
    throw v0
.end method
