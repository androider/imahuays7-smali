.class Lanet/channel/strategy/w;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Lanet/channel/strategy/k$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lanet/channel/strategy/k$a<",
        "Lanet/channel/strategy/d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lanet/channel/strategy/y$a;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lanet/channel/strategy/ConnProtocol;

.field final synthetic d:Lanet/channel/strategy/k;


# direct methods
.method constructor <init>(Lanet/channel/strategy/k;Lanet/channel/strategy/y$a;Ljava/lang/String;Lanet/channel/strategy/ConnProtocol;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lanet/channel/strategy/w;->d:Lanet/channel/strategy/k;

    iput-object p2, p0, Lanet/channel/strategy/w;->a:Lanet/channel/strategy/y$a;

    iput-object p3, p0, Lanet/channel/strategy/w;->b:Ljava/lang/String;

    iput-object p4, p0, Lanet/channel/strategy/w;->c:Lanet/channel/strategy/ConnProtocol;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lanet/channel/strategy/d;)Z
    .locals 2

    .line 124
    invoke-virtual {p1}, Lanet/channel/strategy/d;->c()I

    move-result v0

    iget-object v1, p0, Lanet/channel/strategy/w;->a:Lanet/channel/strategy/y$a;

    iget v1, v1, Lanet/channel/strategy/y$a;->a:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lanet/channel/strategy/d;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lanet/channel/strategy/w;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lanet/channel/strategy/d;->c:Lanet/channel/strategy/ConnProtocol;

    iget-object v0, p0, Lanet/channel/strategy/w;->c:Lanet/channel/strategy/ConnProtocol;

    invoke-virtual {p1, v0}, Lanet/channel/strategy/ConnProtocol;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public synthetic a(Ljava/lang/Object;)Z
    .locals 0

    .line 121
    check-cast p1, Lanet/channel/strategy/d;

    invoke-virtual {p0, p1}, Lanet/channel/strategy/w;->a(Lanet/channel/strategy/d;)Z

    move-result p1

    return p1
.end method
