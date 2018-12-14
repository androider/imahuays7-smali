.class Lcom/fm/openinstall/a/i;
.super Lcom/fm/openinstall/a/o;


# instance fields
.field final synthetic a:Lcom/fm/openinstall/a/f;


# direct methods
.method constructor <init>(Lcom/fm/openinstall/a/f;Lcom/fm/openinstall/a/m;J)V
    .locals 0

    iput-object p1, p0, Lcom/fm/openinstall/a/i;->a:Lcom/fm/openinstall/a/f;

    invoke-direct {p0, p2, p3, p4}, Lcom/fm/openinstall/a/o;-><init>(Lcom/fm/openinstall/a/m;J)V

    return-void
.end method


# virtual methods
.method public a(J)Lcom/fm/openinstall/c/b;
    .locals 2

    iget-object v0, p0, Lcom/fm/openinstall/a/i;->a:Lcom/fm/openinstall/a/f;

    invoke-static {v0, p1, p2}, Lcom/fm/openinstall/a/f;->a(Lcom/fm/openinstall/a/f;J)Lcom/fm/openinstall/c/b;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/fm/openinstall/a/i;->a:Lcom/fm/openinstall/a/f;

    invoke-static {p1}, Lcom/fm/openinstall/a/f;->a(Lcom/fm/openinstall/a/f;)Landroid/content/Context;

    move-result-object p1

    const-string p2, "FM_init_data"

    invoke-static {p1, p2}, Lcom/fm/openinstall/f/d;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/fm/openinstall/c/b;

    sget-object v0, Lcom/fm/openinstall/c/c;->a:Lcom/fm/openinstall/c/c;

    const/4 v1, 0x0

    invoke-direct {p2, v0, v1}, Lcom/fm/openinstall/c/b;-><init>(Lcom/fm/openinstall/c/c;I)V

    invoke-virtual {p2, p1}, Lcom/fm/openinstall/c/b;->c(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/fm/openinstall/a/i;->a:Lcom/fm/openinstall/a/f;

    invoke-virtual {p2}, Lcom/fm/openinstall/c/b;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/fm/openinstall/a/f;->b(Lcom/fm/openinstall/a/f;Ljava/lang/String;)V

    move-object p1, p2

    :cond_0
    return-object p1
.end method
