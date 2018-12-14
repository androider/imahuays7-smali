.class public Lorg/eclipse/jetty/io/ByteArrayBuffer$CaseInsensitive;
.super Lorg/eclipse/jetty/io/ByteArrayBuffer;
.source "ByteArrayBuffer.java"

# interfaces
.implements Lorg/eclipse/jetty/io/Buffer$CaseInsensitve;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/io/ByteArrayBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CaseInsensitive"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 424
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>([BIII)V
    .locals 0

    .line 429
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>([BIII)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 435
    instance-of v0, p1, Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/io/ByteArrayBuffer$CaseInsensitive;->equalsIgnoreCase(Lorg/eclipse/jetty/io/Buffer;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
