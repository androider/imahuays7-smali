.class Lanet/channel/r;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lanet/channel/Session;

.field final synthetic b:Lanet/channel/i$b;


# direct methods
.method constructor <init>(Lanet/channel/i$b;Lanet/channel/Session;)V
    .locals 0

    .line 300
    iput-object p1, p0, Lanet/channel/r;->b:Lanet/channel/i$b;

    iput-object p2, p0, Lanet/channel/r;->a:Lanet/channel/Session;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 304
    :try_start_0
    iget-object v0, p0, Lanet/channel/r;->b:Lanet/channel/i$b;

    iget-object v0, v0, Lanet/channel/i$b;->b:Lanet/channel/i;

    iget-object v1, p0, Lanet/channel/r;->b:Lanet/channel/i$b;

    invoke-static {v1}, Lanet/channel/i$b;->a(Lanet/channel/i$b;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lanet/channel/r;->a:Lanet/channel/Session;

    invoke-virtual {v2}, Lanet/channel/Session;->h()Lanet/channel/entity/ConnType;

    move-result-object v2

    invoke-virtual {v2}, Lanet/channel/entity/ConnType;->d()Lanet/channel/entity/ConnType$TypeLevel;

    move-result-object v2

    iget-object v3, p0, Lanet/channel/r;->b:Lanet/channel/i$b;

    iget-object v3, v3, Lanet/channel/i$b;->b:Lanet/channel/i;

    iget-object v3, v3, Lanet/channel/i;->b:Lanet/channel/g;

    iget-object v3, v3, Lanet/channel/g;->c:Ljava/lang/String;

    invoke-static {v3}, Lanet/channel/h/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lanet/channel/i;->a(Landroid/content/Context;Lanet/channel/entity/ConnType$TypeLevel;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
