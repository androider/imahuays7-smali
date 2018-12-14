.class Lcom/fm/openinstall/a/p;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic a:Lcom/fm/openinstall/a/o;


# direct methods
.method constructor <init>(Lcom/fm/openinstall/a/o;)V
    .locals 0

    iput-object p1, p0, Lcom/fm/openinstall/a/p;->a:Lcom/fm/openinstall/a/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/fm/openinstall/c/b;
    .locals 3

    iget-object v0, p0, Lcom/fm/openinstall/a/p;->a:Lcom/fm/openinstall/a/o;

    iget-object v1, p0, Lcom/fm/openinstall/a/p;->a:Lcom/fm/openinstall/a/o;

    invoke-static {v1}, Lcom/fm/openinstall/a/o;->a(Lcom/fm/openinstall/a/o;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/fm/openinstall/a/o;->a(J)Lcom/fm/openinstall/c/b;

    move-result-object v0

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/fm/openinstall/a/p;->a()Lcom/fm/openinstall/c/b;

    move-result-object v0

    return-object v0
.end method
