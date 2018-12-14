.class Lcom/meizu/cloud/pushsdk/c/a$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/cloud/pushsdk/c/a;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/meizu/cloud/pushsdk/c/a;


# direct methods
.method constructor <init>(Lcom/meizu/cloud/pushsdk/c/a;)V
    .locals 0

    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/c/a$2;->a:Lcom/meizu/cloud/pushsdk/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/c/a$2;->a:Lcom/meizu/cloud/pushsdk/c/a;

    invoke-static {v1}, Lcom/meizu/cloud/pushsdk/c/a;->a(Lcom/meizu/cloud/pushsdk/c/a;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/c/a$2;->a:Lcom/meizu/cloud/pushsdk/c/a;

    invoke-static {v2}, Lcom/meizu/cloud/pushsdk/c/a;->b(Lcom/meizu/cloud/pushsdk/c/a;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/c/a$2;->a:Lcom/meizu/cloud/pushsdk/c/a;

    invoke-static {v2}, Lcom/meizu/cloud/pushsdk/c/a;->a(Lcom/meizu/cloud/pushsdk/c/a;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/c/a$2;->a:Lcom/meizu/cloud/pushsdk/c/a;

    invoke-static {v2}, Lcom/meizu/cloud/pushsdk/c/a;->a(Lcom/meizu/cloud/pushsdk/c/a;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/c/a$2;->a:Lcom/meizu/cloud/pushsdk/c/a;

    invoke-static {v1}, Lcom/meizu/cloud/pushsdk/c/a;->d(Lcom/meizu/cloud/pushsdk/c/a;)Lcom/meizu/cloud/pushsdk/c/c;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/c/a$2;->a:Lcom/meizu/cloud/pushsdk/c/a;

    invoke-static {v2}, Lcom/meizu/cloud/pushsdk/c/a;->c(Lcom/meizu/cloud/pushsdk/c/a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/meizu/cloud/pushsdk/c/c;->a(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/cloud/pushsdk/c/a$a;

    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/c/a$2;->a:Lcom/meizu/cloud/pushsdk/c/a;

    invoke-static {v2}, Lcom/meizu/cloud/pushsdk/c/a;->d(Lcom/meizu/cloud/pushsdk/c/a;)Lcom/meizu/cloud/pushsdk/c/c;

    move-result-object v2

    iget-object v3, v1, Lcom/meizu/cloud/pushsdk/c/a$a;->a:Ljava/lang/String;

    iget-object v4, v1, Lcom/meizu/cloud/pushsdk/c/a$a;->b:Ljava/lang/String;

    iget-object v1, v1, Lcom/meizu/cloud/pushsdk/c/a$a;->c:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v1}, Lcom/meizu/cloud/pushsdk/c/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/c/a$2;->a:Lcom/meizu/cloud/pushsdk/c/a;

    :goto_1
    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/c/a;->d(Lcom/meizu/cloud/pushsdk/c/a;)Lcom/meizu/cloud/pushsdk/c/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/c/c;->a()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/c/a$2;->a:Lcom/meizu/cloud/pushsdk/c/a;

    invoke-static {v1}, Lcom/meizu/cloud/pushsdk/c/a;->d(Lcom/meizu/cloud/pushsdk/c/a;)Lcom/meizu/cloud/pushsdk/c/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/cloud/pushsdk/c/c;->a()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    throw v0

    :catch_1
    :try_start_4
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/c/a$2;->a:Lcom/meizu/cloud/pushsdk/c/a;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    return-void

    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0
.end method
