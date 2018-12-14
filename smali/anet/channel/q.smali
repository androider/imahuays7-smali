.class Lanet/channel/q;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Lanet/channel/entity/a;


# instance fields
.field final synthetic a:Lanet/channel/Session;

.field final synthetic b:Lanet/channel/i;


# direct methods
.method constructor <init>(Lanet/channel/i;Lanet/channel/Session;)V
    .locals 0

    .line 430
    iput-object p1, p0, Lanet/channel/q;->b:Lanet/channel/i;

    iput-object p2, p0, Lanet/channel/q;->a:Lanet/channel/Session;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lanet/channel/Session;Lanet/channel/entity/EventType;Lanet/channel/entity/e;)V
    .locals 3

    const-string p1, "awcn.SessionRequest"

    const-string p3, "Receive session event"

    const/4 v0, 0x2

    .line 433
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "type"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v2, 0x0

    invoke-static {p1, p3, v2, v0}, Lanet/channel/h/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 435
    new-instance p1, Lanet/channel/strategy/a;

    invoke-direct {p1}, Lanet/channel/strategy/a;-><init>()V

    .line 436
    sget-object p3, Lanet/channel/entity/EventType;->AUTH_SUCC:Lanet/channel/entity/EventType;

    if-ne p2, p3, :cond_0

    .line 437
    iput-boolean v1, p1, Lanet/channel/strategy/a;->a:Z

    .line 439
    :cond_0
    invoke-static {}, Lanet/channel/strategy/h;->a()Lanet/channel/strategy/e;

    move-result-object p2

    iget-object p3, p0, Lanet/channel/q;->a:Lanet/channel/Session;

    invoke-virtual {p3}, Lanet/channel/Session;->j()Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lanet/channel/q;->a:Lanet/channel/Session;

    invoke-virtual {v0}, Lanet/channel/Session;->k()Lanet/channel/strategy/c;

    move-result-object v0

    invoke-interface {p2, p3, v0, p1}, Lanet/channel/strategy/e;->a(Ljava/lang/String;Lanet/channel/strategy/c;Lanet/channel/strategy/a;)V

    return-void
.end method
