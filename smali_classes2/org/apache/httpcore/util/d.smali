.class public final Lorg/apache/httpcore/util/d;
.super Ljava/lang/Object;
.source "EntityUtils.java"


# direct methods
.method public static a(Lorg/apache/httpcore/j;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    .line 87
    :cond_0
    invoke-interface {p0}, Lorg/apache/httpcore/j;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    invoke-interface {p0}, Lorg/apache/httpcore/j;->e()Ljava/io/InputStream;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 90
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_1
    return-void
.end method
