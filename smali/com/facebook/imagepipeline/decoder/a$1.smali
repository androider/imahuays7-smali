.class Lcom/facebook/imagepipeline/decoder/a$1;
.super Ljava/lang/Object;
.source "DefaultImageDecoder.java"

# interfaces
.implements Lcom/facebook/imagepipeline/decoder/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/decoder/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/imagepipeline/decoder/a;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/decoder/a;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/facebook/imagepipeline/decoder/a$1;->a:Lcom/facebook/imagepipeline/decoder/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/imagepipeline/g/e;ILcom/facebook/imagepipeline/g/h;Lcom/facebook/imagepipeline/common/b;)Lcom/facebook/imagepipeline/g/c;
    .locals 2

    .line 56
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/g/e;->e()Lcom/facebook/d/c;

    move-result-object v0

    .line 57
    sget-object v1, Lcom/facebook/d/b;->a:Lcom/facebook/d/c;

    if-ne v0, v1, :cond_0

    .line 58
    iget-object v0, p0, Lcom/facebook/imagepipeline/decoder/a$1;->a:Lcom/facebook/imagepipeline/decoder/a;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/facebook/imagepipeline/decoder/a;->c(Lcom/facebook/imagepipeline/g/e;ILcom/facebook/imagepipeline/g/h;Lcom/facebook/imagepipeline/common/b;)Lcom/facebook/imagepipeline/g/d;

    move-result-object p1

    return-object p1

    .line 59
    :cond_0
    sget-object v1, Lcom/facebook/d/b;->c:Lcom/facebook/d/c;

    if-ne v0, v1, :cond_1

    .line 60
    iget-object v0, p0, Lcom/facebook/imagepipeline/decoder/a$1;->a:Lcom/facebook/imagepipeline/decoder/a;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/facebook/imagepipeline/decoder/a;->b(Lcom/facebook/imagepipeline/g/e;ILcom/facebook/imagepipeline/g/h;Lcom/facebook/imagepipeline/common/b;)Lcom/facebook/imagepipeline/g/c;

    move-result-object p1

    return-object p1

    .line 61
    :cond_1
    sget-object v1, Lcom/facebook/d/b;->j:Lcom/facebook/d/c;

    if-ne v0, v1, :cond_2

    .line 62
    iget-object v0, p0, Lcom/facebook/imagepipeline/decoder/a$1;->a:Lcom/facebook/imagepipeline/decoder/a;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/facebook/imagepipeline/decoder/a;->d(Lcom/facebook/imagepipeline/g/e;ILcom/facebook/imagepipeline/g/h;Lcom/facebook/imagepipeline/common/b;)Lcom/facebook/imagepipeline/g/c;

    move-result-object p1

    return-object p1

    .line 63
    :cond_2
    sget-object p2, Lcom/facebook/d/c;->a:Lcom/facebook/d/c;

    if-ne v0, p2, :cond_3

    .line 64
    new-instance p2, Lcom/facebook/imagepipeline/decoder/DecodeException;

    const-string p3, "unknown image format"

    invoke-direct {p2, p3, p1}, Lcom/facebook/imagepipeline/decoder/DecodeException;-><init>(Ljava/lang/String;Lcom/facebook/imagepipeline/g/e;)V

    throw p2

    .line 66
    :cond_3
    iget-object p2, p0, Lcom/facebook/imagepipeline/decoder/a$1;->a:Lcom/facebook/imagepipeline/decoder/a;

    invoke-virtual {p2, p1, p4}, Lcom/facebook/imagepipeline/decoder/a;->a(Lcom/facebook/imagepipeline/g/e;Lcom/facebook/imagepipeline/common/b;)Lcom/facebook/imagepipeline/g/d;

    move-result-object p1

    return-object p1
.end method
