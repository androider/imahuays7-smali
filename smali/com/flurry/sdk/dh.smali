.class public Lcom/flurry/sdk/dh;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ObjectType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "dh"

.field private static final d:[B


# instance fields
.field public b:Ljava/lang/String;

.field public c:Lcom/flurry/sdk/dx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/dx<",
            "TObjectType;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x20

    .line 19
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/flurry/sdk/dh;->d:[B

    return-void

    :array_0
    .array-data 1
        0x71t
        -0x5ct
        -0x8t
        0x7dt
        0x79t
        0x6bt
        -0x41t
        -0x3dt
        -0x4at
        -0x72t
        -0x20t
        0x0t
        -0x39t
        -0x57t
        -0x23t
        -0x38t
        -0x6t
        -0x34t
        0x33t
        0x7et
        -0x68t
        0x31t
        0x4ft
        -0x34t
        0x76t
        -0x54t
        0x63t
        -0x34t
        -0xet
        -0x7et
        -0x1bt
        -0x40t
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/flurry/sdk/dx;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/flurry/sdk/dx<",
            "TObjectType;>;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/flurry/sdk/dh;->b:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lcom/flurry/sdk/dh;->c:Lcom/flurry/sdk/dx;

    return-void
.end method

.method public static a([B)I
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 42
    :cond_0
    new-instance v0, Lcom/flurry/sdk/cs;

    invoke-direct {v0}, Lcom/flurry/sdk/cs;-><init>()V

    .line 43
    invoke-virtual {v0, p0}, Lcom/flurry/sdk/cs;->update([B)V

    .line 44
    invoke-virtual {v0}, Lcom/flurry/sdk/cs;->b()I

    move-result p0

    return p0
.end method

.method public static b([B)V
    .locals 6

    if-nez p0, :cond_0

    return-void

    .line 76
    :cond_0
    array-length v0, p0

    .line 77
    sget-object v1, Lcom/flurry/sdk/dh;->d:[B

    array-length v1, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 79
    aget-byte v3, p0, v2

    sget-object v4, Lcom/flurry/sdk/dh;->d:[B

    rem-int v5, v2, v1

    aget-byte v4, v4, v5

    xor-int/2addr v3, v4

    mul-int/lit8 v4, v2, 0x1f

    rem-int/lit16 v4, v4, 0xfb

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final c([B)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TObjectType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 88
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Decoding: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/flurry/sdk/dh;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": Nothing to decode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1107
    :cond_0
    invoke-static {p1}, Lcom/flurry/sdk/dh;->b([B)V

    .line 94
    new-instance v0, Lcom/flurry/sdk/dv;

    new-instance v1, Lcom/flurry/sdk/dt;

    invoke-direct {v1}, Lcom/flurry/sdk/dt;-><init>()V

    invoke-direct {v0, v1}, Lcom/flurry/sdk/dv;-><init>(Lcom/flurry/sdk/dx;)V

    .line 95
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 96
    invoke-interface {v0, v1}, Lcom/flurry/sdk/dx;->a(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    const/4 v0, 0x3

    .line 98
    sget-object v1, Lcom/flurry/sdk/dh;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Decoding: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/flurry/sdk/dh;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 101
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 102
    iget-object p1, p0, Lcom/flurry/sdk/dh;->c:Lcom/flurry/sdk/dx;

    invoke-interface {p1, v0}, Lcom/flurry/sdk/dx;->a(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
