.class Lcom/fm/openinstall/e/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/fm/openinstall/e/d;


# direct methods
.method constructor <init>(Lcom/fm/openinstall/e/d;)V
    .locals 0

    iput-object p1, p0, Lcom/fm/openinstall/e/e;->a:Lcom/fm/openinstall/e/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :catch_0
    :goto_0
    iget-object v0, p0, Lcom/fm/openinstall/e/e;->a:Lcom/fm/openinstall/e/d;

    invoke-static {v0}, Lcom/fm/openinstall/e/d;->a(Lcom/fm/openinstall/e/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fm/openinstall/e/e;->a:Lcom/fm/openinstall/e/d;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/fm/openinstall/e/d;->a(Lcom/fm/openinstall/e/d;J)V

    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-void
.end method
