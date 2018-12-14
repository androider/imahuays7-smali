.class Lcom/fm/openinstall/e/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/fm/openinstall/e/f;


# direct methods
.method constructor <init>(Lcom/fm/openinstall/e/f;)V
    .locals 0

    iput-object p1, p0, Lcom/fm/openinstall/e/i;->a:Lcom/fm/openinstall/e/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/fm/openinstall/e/i;->a:Lcom/fm/openinstall/e/f;

    invoke-static {v0}, Lcom/fm/openinstall/e/f;->e(Lcom/fm/openinstall/e/f;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "AliveLog.txt"

    invoke-static {v0, v1}, Lcom/fm/openinstall/f/e;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/fm/openinstall/a/f;->a()Lcom/fm/openinstall/a/f;

    move-result-object v1

    new-instance v2, Lcom/fm/openinstall/e/j;

    invoke-direct {v2, p0}, Lcom/fm/openinstall/e/j;-><init>(Lcom/fm/openinstall/e/i;)V

    invoke-virtual {v1, v0, v2}, Lcom/fm/openinstall/a/f;->b(Ljava/lang/String;Lcom/fm/openinstall/a/m;)V

    return-void
.end method
