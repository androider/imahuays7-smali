.class Lanet/channel/strategy/d;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Lanet/channel/strategy/c;
.implements Ljava/io/Serializable;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:Lanet/channel/strategy/ConnProtocol;

.field public volatile d:I

.field public volatile e:I

.field public volatile f:I

.field public volatile g:I

.field volatile h:I

.field transient i:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;ILanet/channel/strategy/ConnProtocol;IIII)V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 27
    iput v0, p0, Lanet/channel/strategy/d;->h:I

    .line 52
    iput-object p1, p0, Lanet/channel/strategy/d;->a:Ljava/lang/String;

    .line 53
    iput p2, p0, Lanet/channel/strategy/d;->b:I

    .line 54
    iput-object p3, p0, Lanet/channel/strategy/d;->c:Lanet/channel/strategy/ConnProtocol;

    .line 55
    iput p4, p0, Lanet/channel/strategy/d;->d:I

    .line 56
    iput p5, p0, Lanet/channel/strategy/d;->e:I

    .line 57
    iput p6, p0, Lanet/channel/strategy/d;->f:I

    .line 58
    iput p7, p0, Lanet/channel/strategy/d;->g:I

    return-void
.end method

.method static a(Ljava/lang/String;ILanet/channel/strategy/ConnProtocol;IIII)Lanet/channel/strategy/d;
    .locals 9

    .line 43
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    if-gtz p1, :cond_0

    goto :goto_0

    .line 47
    :cond_0
    new-instance v0, Lanet/channel/strategy/d;

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-direct/range {v1 .. v8}, Lanet/channel/strategy/d;-><init>(Ljava/lang/String;ILanet/channel/strategy/ConnProtocol;IIII)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static a(Ljava/lang/String;Lanet/channel/strategy/y$a;)Lanet/channel/strategy/d;
    .locals 7

    .line 32
    invoke-static {p1}, Lanet/channel/strategy/ConnProtocol;->valueOf(Lanet/channel/strategy/y$a;)Lanet/channel/strategy/ConnProtocol;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 37
    :cond_0
    iget v1, p1, Lanet/channel/strategy/y$a;->a:I

    iget v3, p1, Lanet/channel/strategy/y$a;->c:I

    iget v4, p1, Lanet/channel/strategy/y$a;->d:I

    iget v5, p1, Lanet/channel/strategy/y$a;->e:I

    iget v6, p1, Lanet/channel/strategy/y$a;->f:I

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lanet/channel/strategy/d;->a(Ljava/lang/String;ILanet/channel/strategy/ConnProtocol;IIII)Lanet/channel/strategy/d;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lanet/channel/strategy/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()I
    .locals 1

    .line 79
    iget v0, p0, Lanet/channel/strategy/d;->h:I

    return v0
.end method

.method public c()I
    .locals 1

    .line 84
    iget v0, p0, Lanet/channel/strategy/d;->b:I

    return v0
.end method

.method public d()Lanet/channel/strategy/ConnProtocol;
    .locals 1

    .line 89
    iget-object v0, p0, Lanet/channel/strategy/d;->c:Lanet/channel/strategy/ConnProtocol;

    return-object v0
.end method

.method public e()I
    .locals 1

    .line 94
    iget v0, p0, Lanet/channel/strategy/d;->d:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 118
    instance-of v2, p1, Lanet/channel/strategy/d;

    if-nez v2, :cond_1

    goto :goto_1

    .line 122
    :cond_1
    check-cast p1, Lanet/channel/strategy/d;

    .line 124
    iget v2, p0, Lanet/channel/strategy/d;->b:I

    iget v3, p1, Lanet/channel/strategy/d;->b:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lanet/channel/strategy/d;->a:Ljava/lang/String;

    iget-object v3, p1, Lanet/channel/strategy/d;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lanet/channel/strategy/d;->c:Lanet/channel/strategy/ConnProtocol;

    iget-object p1, p1, Lanet/channel/strategy/d;->c:Lanet/channel/strategy/ConnProtocol;

    invoke-virtual {v2, p1}, Lanet/channel/strategy/ConnProtocol;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public f()I
    .locals 1

    .line 99
    iget v0, p0, Lanet/channel/strategy/d;->e:I

    return v0
.end method

.method public g()I
    .locals 1

    .line 104
    iget v0, p0, Lanet/channel/strategy/d;->f:I

    return v0
.end method

.method public h()I
    .locals 1

    .line 109
    iget v0, p0, Lanet/channel/strategy/d;->g:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 130
    iget-object v0, p0, Lanet/channel/strategy/d;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 131
    iget v0, p0, Lanet/channel/strategy/d;->b:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 132
    iget-object v0, p0, Lanet/channel/strategy/d;->c:Lanet/channel/strategy/ConnProtocol;

    invoke-virtual {v0}, Lanet/channel/strategy/ConnProtocol;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public i()I
    .locals 1

    .line 137
    invoke-virtual {p0}, Lanet/channel/strategy/d;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v2, 0x7b

    .line 64
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lanet/channel/strategy/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    iget v2, p0, Lanet/channel/strategy/d;->h:I

    if-nez v2, :cond_0

    const-string v2, "(*)"

    .line 66
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Lanet/channel/strategy/d;->b:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lanet/channel/strategy/d;->c:Lanet/channel/strategy/ConnProtocol;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
