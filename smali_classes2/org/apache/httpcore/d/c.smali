.class public final Lorg/apache/httpcore/d/c;
.super Ljava/lang/Object;
.source "HTTP.java"


# static fields
.field public static final a:Ljava/nio/charset/Charset;

.field public static final b:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 69
    sget-object v0, Lorg/apache/httpcore/b;->c:Ljava/nio/charset/Charset;

    sput-object v0, Lorg/apache/httpcore/d/c;->a:Ljava/nio/charset/Charset;

    .line 70
    sget-object v0, Lorg/apache/httpcore/b;->b:Ljava/nio/charset/Charset;

    sput-object v0, Lorg/apache/httpcore/d/c;->b:Ljava/nio/charset/Charset;

    return-void
.end method

.method public static a(C)Z
    .locals 1

    const/16 v0, 0x20

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1

    const/16 v0, 0xd

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
