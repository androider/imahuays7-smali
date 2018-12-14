.class Lanet/channel/m;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Lanet/channel/strategy/a/d;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lanet/channel/f/a;

.field final synthetic c:Lanet/channel/g;


# direct methods
.method constructor <init>(Lanet/channel/g;Ljava/lang/String;Lanet/channel/f/a;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lanet/channel/m;->c:Lanet/channel/g;

    iput-object p2, p0, Lanet/channel/m;->a:Ljava/lang/String;

    iput-object p3, p0, Lanet/channel/m;->b:Lanet/channel/f/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 132
    iget-object v0, p0, Lanet/channel/m;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 137
    iget-object v0, p0, Lanet/channel/m;->b:Lanet/channel/f/a;

    iget-object v1, p0, Lanet/channel/m;->c:Lanet/channel/g;

    iget-object v1, v1, Lanet/channel/g;->b:Landroid/content/Context;

    const-string v2, "HMAC_SHA1"

    invoke-virtual {p0}, Lanet/channel/m;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3, p1}, Lanet/channel/f/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b()Z
    .locals 1

    .line 142
    iget-object v0, p0, Lanet/channel/m;->b:Lanet/channel/f/a;

    invoke-interface {v0}, Lanet/channel/f/a;->a()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
