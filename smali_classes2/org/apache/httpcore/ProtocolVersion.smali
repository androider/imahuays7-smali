.class public Lorg/apache/httpcore/ProtocolVersion;
.super Ljava/lang/Object;
.source "ProtocolVersion.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final serialVersionUID:J = 0x7c37246eac22717cL


# instance fields
.field protected final a:Ljava/lang/String;

.field protected final b:I

.field protected final c:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Protocol name"

    .line 72
    invoke-static {p1, v0}, Lorg/apache/httpcore/util/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/httpcore/ProtocolVersion;->a:Ljava/lang/String;

    const-string p1, "Protocol minor version"

    .line 73
    invoke-static {p2, p1}, Lorg/apache/httpcore/util/a;->b(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/apache/httpcore/ProtocolVersion;->b:I

    const-string p1, "Protocol minor version"

    .line 74
    invoke-static {p3, p1}, Lorg/apache/httpcore/util/a;->b(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/apache/httpcore/ProtocolVersion;->c:I

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 263
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public compareToVersion(Lorg/apache/httpcore/ProtocolVersion;)I
    .locals 4

    const-string v0, "Protocol version"

    .line 204
    invoke-static {p1, v0}, Lorg/apache/httpcore/util/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 205
    iget-object v0, p0, Lorg/apache/httpcore/ProtocolVersion;->a:Ljava/lang/String;

    iget-object v1, p1, Lorg/apache/httpcore/ProtocolVersion;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Versions for different protocols cannot be compared: %s %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lorg/apache/httpcore/util/a;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 207
    invoke-virtual {p0}, Lorg/apache/httpcore/ProtocolVersion;->getMajor()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/httpcore/ProtocolVersion;->getMajor()I

    move-result v1

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 209
    invoke-virtual {p0}, Lorg/apache/httpcore/ProtocolVersion;->getMinor()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/httpcore/ProtocolVersion;->getMinor()I

    move-result p1

    sub-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 161
    :cond_0
    instance-of v1, p1, Lorg/apache/httpcore/ProtocolVersion;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 164
    :cond_1
    check-cast p1, Lorg/apache/httpcore/ProtocolVersion;

    .line 166
    iget-object v1, p0, Lorg/apache/httpcore/ProtocolVersion;->a:Ljava/lang/String;

    iget-object v3, p1, Lorg/apache/httpcore/ProtocolVersion;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lorg/apache/httpcore/ProtocolVersion;->b:I

    iget v3, p1, Lorg/apache/httpcore/ProtocolVersion;->b:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lorg/apache/httpcore/ProtocolVersion;->c:I

    iget p1, p1, Lorg/apache/httpcore/ProtocolVersion;->c:I

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public forVersion(II)Lorg/apache/httpcore/ProtocolVersion;
    .locals 2

    .line 123
    iget v0, p0, Lorg/apache/httpcore/ProtocolVersion;->b:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lorg/apache/httpcore/ProtocolVersion;->c:I

    if-ne p2, v0, :cond_0

    return-object p0

    .line 128
    :cond_0
    new-instance v0, Lorg/apache/httpcore/ProtocolVersion;

    iget-object v1, p0, Lorg/apache/httpcore/ProtocolVersion;->a:Ljava/lang/String;

    invoke-direct {v0, v1, p1, p2}, Lorg/apache/httpcore/ProtocolVersion;-><init>(Ljava/lang/String;II)V

    return-object v0
.end method

.method public final getMajor()I
    .locals 1

    .line 92
    iget v0, p0, Lorg/apache/httpcore/ProtocolVersion;->b:I

    return v0
.end method

.method public final getMinor()I
    .locals 1

    .line 101
    iget v0, p0, Lorg/apache/httpcore/ProtocolVersion;->c:I

    return v0
.end method

.method public final getProtocol()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lorg/apache/httpcore/ProtocolVersion;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final greaterEquals(Lorg/apache/httpcore/ProtocolVersion;)Z
    .locals 1

    .line 226
    invoke-virtual {p0, p1}, Lorg/apache/httpcore/ProtocolVersion;->isComparable(Lorg/apache/httpcore/ProtocolVersion;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/httpcore/ProtocolVersion;->compareToVersion(Lorg/apache/httpcore/ProtocolVersion;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final hashCode()I
    .locals 3

    .line 139
    iget-object v0, p0, Lorg/apache/httpcore/ProtocolVersion;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget v1, p0, Lorg/apache/httpcore/ProtocolVersion;->b:I

    const v2, 0x186a0

    mul-int v1, v1, v2

    xor-int/2addr v0, v1

    iget v1, p0, Lorg/apache/httpcore/ProtocolVersion;->c:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public isComparable(Lorg/apache/httpcore/ProtocolVersion;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 183
    iget-object v0, p0, Lorg/apache/httpcore/ProtocolVersion;->a:Ljava/lang/String;

    iget-object p1, p1, Lorg/apache/httpcore/ProtocolVersion;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final lessEquals(Lorg/apache/httpcore/ProtocolVersion;)Z
    .locals 1

    .line 241
    invoke-virtual {p0, p1}, Lorg/apache/httpcore/ProtocolVersion;->isComparable(Lorg/apache/httpcore/ProtocolVersion;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/httpcore/ProtocolVersion;->compareToVersion(Lorg/apache/httpcore/ProtocolVersion;)I

    move-result p1

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 253
    iget-object v1, p0, Lorg/apache/httpcore/ProtocolVersion;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    .line 254
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 255
    iget v1, p0, Lorg/apache/httpcore/ProtocolVersion;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    .line 256
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 257
    iget v1, p0, Lorg/apache/httpcore/ProtocolVersion;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
