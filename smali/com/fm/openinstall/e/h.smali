.class Lcom/fm/openinstall/e/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/fm/openinstall/e/f;


# direct methods
.method constructor <init>(Lcom/fm/openinstall/e/f;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/fm/openinstall/e/h;->b:Lcom/fm/openinstall/e/f;

    iput-object p2, p0, Lcom/fm/openinstall/e/h;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/fm/openinstall/e/h;->b:Lcom/fm/openinstall/e/f;

    invoke-static {v0}, Lcom/fm/openinstall/e/f;->e(Lcom/fm/openinstall/e/f;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "AliveLog.txt"

    iget-object v2, p0, Lcom/fm/openinstall/e/h;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/fm/openinstall/f/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fm/openinstall/e/h;->b:Lcom/fm/openinstall/e/f;

    invoke-static {v0}, Lcom/fm/openinstall/e/f;->b(Lcom/fm/openinstall/e/f;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/fm/openinstall/e/h;->b:Lcom/fm/openinstall/e/f;

    invoke-static {v1}, Lcom/fm/openinstall/e/f;->f(Lcom/fm/openinstall/e/f;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    return-void
.end method
