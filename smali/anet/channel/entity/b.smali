.class public Lanet/channel/entity/b;
.super Ljava/lang/Object;
.source "Taobao"


# instance fields
.field public final a:Lanet/channel/strategy/c;

.field public b:I

.field public c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lanet/channel/strategy/c;)V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lanet/channel/entity/b;->b:I

    .line 11
    iput v0, p0, Lanet/channel/entity/b;->c:I

    .line 14
    iput-object p3, p0, Lanet/channel/entity/b;->a:Lanet/channel/strategy/c;

    .line 15
    iput-object p1, p0, Lanet/channel/entity/b;->d:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lanet/channel/entity/b;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lanet/channel/entity/b;->a:Lanet/channel/strategy/c;

    if-eqz v0, :cond_0

    .line 21
    iget-object v0, p0, Lanet/channel/entity/b;->a:Lanet/channel/strategy/c;

    invoke-interface {v0}, Lanet/channel/strategy/c;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public b()I
    .locals 1

    .line 28
    iget-object v0, p0, Lanet/channel/entity/b;->a:Lanet/channel/strategy/c;

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lanet/channel/entity/b;->a:Lanet/channel/strategy/c;

    invoke-interface {v0}, Lanet/channel/strategy/c;->c()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public c()Lanet/channel/entity/ConnType;
    .locals 1

    .line 36
    iget-object v0, p0, Lanet/channel/entity/b;->a:Lanet/channel/strategy/c;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lanet/channel/entity/b;->a:Lanet/channel/strategy/c;

    invoke-interface {v0}, Lanet/channel/strategy/c;->d()Lanet/channel/strategy/ConnProtocol;

    move-result-object v0

    invoke-static {v0}, Lanet/channel/entity/ConnType;->a(Lanet/channel/strategy/ConnProtocol;)Lanet/channel/entity/ConnType;

    move-result-object v0

    return-object v0

    .line 39
    :cond_0
    sget-object v0, Lanet/channel/entity/ConnType;->a:Lanet/channel/entity/ConnType;

    return-object v0
.end method

.method public d()I
    .locals 2

    .line 44
    iget-object v0, p0, Lanet/channel/entity/b;->a:Lanet/channel/strategy/c;

    const/16 v1, 0x4e20

    if-eqz v0, :cond_1

    .line 45
    iget-object v0, p0, Lanet/channel/entity/b;->a:Lanet/channel/strategy/c;

    invoke-interface {v0}, Lanet/channel/strategy/c;->e()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lanet/channel/entity/b;->a:Lanet/channel/strategy/c;

    invoke-interface {v0}, Lanet/channel/strategy/c;->e()I

    move-result v1

    :goto_0
    return v1

    :cond_1
    return v1
.end method

.method public e()I
    .locals 2

    .line 52
    iget-object v0, p0, Lanet/channel/entity/b;->a:Lanet/channel/strategy/c;

    const/16 v1, 0x4e20

    if-eqz v0, :cond_1

    .line 53
    iget-object v0, p0, Lanet/channel/entity/b;->a:Lanet/channel/strategy/c;

    invoke-interface {v0}, Lanet/channel/strategy/c;->f()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lanet/channel/entity/b;->a:Lanet/channel/strategy/c;

    invoke-interface {v0}, Lanet/channel/strategy/c;->f()I

    move-result v1

    :goto_0
    return v1

    :cond_1
    return v1
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lanet/channel/entity/b;->d:Ljava/lang/String;

    return-object v0
.end method

.method public g()I
    .locals 1

    .line 71
    iget-object v0, p0, Lanet/channel/entity/b;->a:Lanet/channel/strategy/c;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lanet/channel/entity/b;->a:Lanet/channel/strategy/c;

    invoke-interface {v0}, Lanet/channel/strategy/c;->h()I

    move-result v0

    return v0

    :cond_0
    const v0, 0xafc8

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lanet/channel/entity/b;->e:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConnInfo [ip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lanet/channel/entity/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",port="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lanet/channel/entity/b;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lanet/channel/entity/b;->c()Lanet/channel/entity/ConnType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",hb"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lanet/channel/entity/b;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
