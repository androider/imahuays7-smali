.class public Lorg/apache/httpcore/pool/PoolStats;
.super Ljava/lang/Object;
.source "PoolStats.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x26f6e7ac454e3980L


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput p1, p0, Lorg/apache/httpcore/pool/PoolStats;->a:I

    .line 55
    iput p2, p0, Lorg/apache/httpcore/pool/PoolStats;->b:I

    .line 56
    iput p3, p0, Lorg/apache/httpcore/pool/PoolStats;->c:I

    .line 57
    iput p4, p0, Lorg/apache/httpcore/pool/PoolStats;->d:I

    return-void
.end method


# virtual methods
.method public getAvailable()I
    .locals 1

    .line 92
    iget v0, p0, Lorg/apache/httpcore/pool/PoolStats;->c:I

    return v0
.end method

.method public getLeased()I
    .locals 1

    .line 70
    iget v0, p0, Lorg/apache/httpcore/pool/PoolStats;->a:I

    return v0
.end method

.method public getMax()I
    .locals 1

    .line 101
    iget v0, p0, Lorg/apache/httpcore/pool/PoolStats;->d:I

    return v0
.end method

.method public getPending()I
    .locals 1

    .line 80
    iget v0, p0, Lorg/apache/httpcore/pool/PoolStats;->b:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[leased: "

    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    iget v1, p0, Lorg/apache/httpcore/pool/PoolStats;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; pending: "

    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    iget v1, p0, Lorg/apache/httpcore/pool/PoolStats;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; available: "

    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    iget v1, p0, Lorg/apache/httpcore/pool/PoolStats;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; max: "

    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    iget v1, p0, Lorg/apache/httpcore/pool/PoolStats;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
