.class public Lcom/facebook/imagepipeline/nativecode/WebpTranscoderImpl;
.super Ljava/lang/Object;
.source "WebpTranscoderImpl.java"

# interfaces
.implements Lcom/facebook/imagepipeline/nativecode/e;


# annotations
.annotation build Lcom/facebook/common/internal/d;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native nativeTranscodeWebpToJpeg(Ljava/io/InputStream;Ljava/io/OutputStream;I)V
    .annotation build Lcom/facebook/common/internal/d;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native nativeTranscodeWebpToPng(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .annotation build Lcom/facebook/common/internal/d;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method


# virtual methods
.method public a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    invoke-static {}, Lcom/facebook/imagepipeline/nativecode/d;->a()V

    .line 68
    invoke-static {p1}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/InputStream;

    .line 69
    invoke-static {p2}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/io/OutputStream;

    .line 67
    invoke-static {p1, p2}, Lcom/facebook/imagepipeline/nativecode/WebpTranscoderImpl;->nativeTranscodeWebpToPng(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    return-void
.end method

.method public a(Ljava/io/InputStream;Ljava/io/OutputStream;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    invoke-static {}, Lcom/facebook/imagepipeline/nativecode/d;->a()V

    .line 54
    invoke-static {p1}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/InputStream;

    .line 55
    invoke-static {p2}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/io/OutputStream;

    .line 53
    invoke-static {p1, p2, p3}, Lcom/facebook/imagepipeline/nativecode/WebpTranscoderImpl;->nativeTranscodeWebpToJpeg(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    return-void
.end method

.method public a(Lcom/facebook/d/c;)Z
    .locals 2

    .line 31
    sget-object v0, Lcom/facebook/d/b;->f:Lcom/facebook/d/c;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    .line 33
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0xe

    if-lt p1, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 34
    :cond_1
    sget-object v0, Lcom/facebook/d/b;->g:Lcom/facebook/d/c;

    if-eq p1, v0, :cond_4

    sget-object v0, Lcom/facebook/d/b;->h:Lcom/facebook/d/c;

    if-eq p1, v0, :cond_4

    sget-object v0, Lcom/facebook/d/b;->i:Lcom/facebook/d/c;

    if-ne p1, v0, :cond_2

    goto :goto_0

    .line 38
    :cond_2
    sget-object v0, Lcom/facebook/d/b;->j:Lcom/facebook/d/c;

    if-ne p1, v0, :cond_3

    return v1

    .line 41
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Image format is not a WebP."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 37
    :cond_4
    :goto_0
    sget-boolean p1, Lcom/facebook/common/f/c;->c:Z

    return p1
.end method
