.class final Lanet/channel/e/e;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Lanet/channel/e/c;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lanet/channel/Session;)Lanet/channel/e/b;
    .locals 1

    if-eqz p1, :cond_1

    .line 17
    invoke-virtual {p1}, Lanet/channel/Session;->k()Lanet/channel/strategy/c;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lanet/channel/Session;->k()Lanet/channel/strategy/c;

    move-result-object v0

    invoke-interface {v0}, Lanet/channel/strategy/c;->h()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lanet/channel/e/d;

    invoke-direct {v0, p1}, Lanet/channel/e/d;-><init>(Lanet/channel/Session;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
