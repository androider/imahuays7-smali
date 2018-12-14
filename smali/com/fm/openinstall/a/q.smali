.class Lcom/fm/openinstall/a/q;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/fm/openinstall/c/b;

.field final synthetic b:Lcom/fm/openinstall/a/o;


# direct methods
.method constructor <init>(Lcom/fm/openinstall/a/o;Lcom/fm/openinstall/c/b;)V
    .locals 0

    iput-object p1, p0, Lcom/fm/openinstall/a/q;->b:Lcom/fm/openinstall/a/o;

    iput-object p2, p0, Lcom/fm/openinstall/a/q;->a:Lcom/fm/openinstall/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/fm/openinstall/a/q;->b:Lcom/fm/openinstall/a/o;

    invoke-static {v0}, Lcom/fm/openinstall/a/o;->b(Lcom/fm/openinstall/a/o;)Lcom/fm/openinstall/a/m;

    move-result-object v0

    iget-object v1, p0, Lcom/fm/openinstall/a/q;->a:Lcom/fm/openinstall/c/b;

    invoke-interface {v0, v1}, Lcom/fm/openinstall/a/m;->a(Lcom/fm/openinstall/c/b;)V

    return-void
.end method
