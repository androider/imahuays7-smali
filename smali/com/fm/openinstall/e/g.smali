.class Lcom/fm/openinstall/e/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/fm/openinstall/e/f;


# direct methods
.method constructor <init>(Lcom/fm/openinstall/e/f;)V
    .locals 0

    iput-object p1, p0, Lcom/fm/openinstall/e/g;->a:Lcom/fm/openinstall/e/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :catch_0
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/fm/openinstall/e/g;->a:Lcom/fm/openinstall/e/f;

    invoke-static {v0}, Lcom/fm/openinstall/e/f;->a(Lcom/fm/openinstall/e/f;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/fm/openinstall/e/g;->a:Lcom/fm/openinstall/e/f;

    invoke-static {v0}, Lcom/fm/openinstall/e/f;->b(Lcom/fm/openinstall/e/f;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v0

    const-wide/16 v1, 0xa

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/fm/openinstall/e/g;->a:Lcom/fm/openinstall/e/f;

    invoke-static {v0}, Lcom/fm/openinstall/e/f;->c(Lcom/fm/openinstall/e/f;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fm/openinstall/e/g;->a:Lcom/fm/openinstall/e/f;

    invoke-static {v0}, Lcom/fm/openinstall/e/f;->d(Lcom/fm/openinstall/e/f;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    return-void
.end method
