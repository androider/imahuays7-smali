.class public final Lorg/apache/httpcore/util/c;
.super Ljava/lang/Object;
.source "EncodingUtils.java"


# direct methods
.method public static a(Ljava/lang/String;)[B
    .locals 1

    const-string v0, "Input"

    .line 106
    invoke-static {p0, v0}, Lorg/apache/httpcore/util/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lorg/apache/httpcore/b;->b:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0
.end method
