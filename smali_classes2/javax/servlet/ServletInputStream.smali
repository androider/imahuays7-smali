.class public abstract Ljavax/servlet/ServletInputStream;
.super Ljava/io/InputStream;
.source "ServletInputStream.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 96
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public readLine([BII)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-gtz p3, :cond_0

    return v0

    .line 135
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljavax/servlet/ServletInputStream;->read()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    add-int/lit8 v3, p2, 0x1

    int-to-byte v4, v1

    .line 136
    aput-byte v4, p1, p2

    add-int/lit8 v0, v0, 0x1

    const/16 p2, 0xa

    if-eq v1, p2, :cond_2

    if-ne v0, p3, :cond_1

    goto :goto_1

    :cond_1
    move p2, v3

    goto :goto_0

    :cond_2
    :goto_1
    if-lez v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, -0x1

    :goto_2
    return v0
.end method
