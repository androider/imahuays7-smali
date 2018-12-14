.class public Lcom/facebook/imagepipeline/decoder/a;
.super Ljava/lang/Object;
.source "DefaultImageDecoder.java"

# interfaces
.implements Lcom/facebook/imagepipeline/decoder/b;


# instance fields
.field private final a:Lcom/facebook/imagepipeline/decoder/b;

.field private final b:Lcom/facebook/imagepipeline/decoder/b;

.field private final c:Lcom/facebook/imagepipeline/i/f;

.field private final d:Lcom/facebook/imagepipeline/decoder/b;

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/facebook/d/c;",
            "Lcom/facebook/imagepipeline/decoder/b;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/decoder/b;Lcom/facebook/imagepipeline/decoder/b;Lcom/facebook/imagepipeline/i/f;)V
    .locals 1

    const/4 v0, 0x0

    .line 77
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/facebook/imagepipeline/decoder/a;-><init>(Lcom/facebook/imagepipeline/decoder/b;Lcom/facebook/imagepipeline/decoder/b;Lcom/facebook/imagepipeline/i/f;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/imagepipeline/decoder/b;Lcom/facebook/imagepipeline/decoder/b;Lcom/facebook/imagepipeline/i/f;Ljava/util/Map;)V
    .locals 1
    .param p4    # Ljava/util/Map;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/decoder/b;",
            "Lcom/facebook/imagepipeline/decoder/b;",
            "Lcom/facebook/imagepipeline/i/f;",
            "Ljava/util/Map<",
            "Lcom/facebook/d/c;",
            "Lcom/facebook/imagepipeline/decoder/b;",
            ">;)V"
        }
    .end annotation

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lcom/facebook/imagepipeline/decoder/a$1;

    invoke-direct {v0, p0}, Lcom/facebook/imagepipeline/decoder/a$1;-><init>(Lcom/facebook/imagepipeline/decoder/a;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/decoder/a;->d:Lcom/facebook/imagepipeline/decoder/b;

    .line 85
    iput-object p1, p0, Lcom/facebook/imagepipeline/decoder/a;->a:Lcom/facebook/imagepipeline/decoder/b;

    .line 86
    iput-object p2, p0, Lcom/facebook/imagepipeline/decoder/a;->b:Lcom/facebook/imagepipeline/decoder/b;

    .line 87
    iput-object p3, p0, Lcom/facebook/imagepipeline/decoder/a;->c:Lcom/facebook/imagepipeline/i/f;

    .line 88
    iput-object p4, p0, Lcom/facebook/imagepipeline/decoder/a;->e:Ljava/util/Map;

    return-void
.end method

.method private a(Lcom/facebook/imagepipeline/n/a;Lcom/facebook/common/references/a;)V
    .locals 2
    .param p1    # Lcom/facebook/imagepipeline/n/a;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/n/a;",
            "Lcom/facebook/common/references/a<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 213
    :cond_0
    invoke-virtual {p2}, Lcom/facebook/common/references/a;->a()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Bitmap;

    .line 214
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_1

    .line 215
    invoke-interface {p1}, Lcom/facebook/imagepipeline/n/a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 216
    invoke-virtual {p2, v0}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 218
    :cond_1
    invoke-interface {p1, p2}, Lcom/facebook/imagepipeline/n/a;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/imagepipeline/g/e;ILcom/facebook/imagepipeline/g/h;Lcom/facebook/imagepipeline/common/b;)Lcom/facebook/imagepipeline/g/c;
    .locals 2

    .line 106
    iget-object v0, p4, Lcom/facebook/imagepipeline/common/b;->h:Lcom/facebook/imagepipeline/decoder/b;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p4, Lcom/facebook/imagepipeline/common/b;->h:Lcom/facebook/imagepipeline/decoder/b;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/facebook/imagepipeline/decoder/b;->a(Lcom/facebook/imagepipeline/g/e;ILcom/facebook/imagepipeline/g/h;Lcom/facebook/imagepipeline/common/b;)Lcom/facebook/imagepipeline/g/c;

    move-result-object p1

    return-object p1

    .line 109
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/g/e;->e()Lcom/facebook/d/c;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 110
    sget-object v1, Lcom/facebook/d/c;->a:Lcom/facebook/d/c;

    if-ne v0, v1, :cond_2

    .line 112
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/g/e;->d()Ljava/io/InputStream;

    move-result-object v0

    .line 111
    invoke-static {v0}, Lcom/facebook/d/d;->c(Ljava/io/InputStream;)Lcom/facebook/d/c;

    move-result-object v0

    .line 113
    invoke-virtual {p1, v0}, Lcom/facebook/imagepipeline/g/e;->a(Lcom/facebook/d/c;)V

    .line 115
    :cond_2
    iget-object v1, p0, Lcom/facebook/imagepipeline/decoder/a;->e:Ljava/util/Map;

    if-eqz v1, :cond_3

    .line 116
    iget-object v1, p0, Lcom/facebook/imagepipeline/decoder/a;->e:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/decoder/b;

    if-eqz v0, :cond_3

    .line 118
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/facebook/imagepipeline/decoder/b;->a(Lcom/facebook/imagepipeline/g/e;ILcom/facebook/imagepipeline/g/h;Lcom/facebook/imagepipeline/common/b;)Lcom/facebook/imagepipeline/g/c;

    move-result-object p1

    return-object p1

    .line 121
    :cond_3
    iget-object v0, p0, Lcom/facebook/imagepipeline/decoder/a;->d:Lcom/facebook/imagepipeline/decoder/b;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/facebook/imagepipeline/decoder/b;->a(Lcom/facebook/imagepipeline/g/e;ILcom/facebook/imagepipeline/g/h;Lcom/facebook/imagepipeline/common/b;)Lcom/facebook/imagepipeline/g/c;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/facebook/imagepipeline/g/e;Lcom/facebook/imagepipeline/common/b;)Lcom/facebook/imagepipeline/g/d;
    .locals 4

    .line 148
    iget-object v0, p0, Lcom/facebook/imagepipeline/decoder/a;->c:Lcom/facebook/imagepipeline/i/f;

    iget-object v1, p2, Lcom/facebook/imagepipeline/common/b;->g:Landroid/graphics/Bitmap$Config;

    iget-boolean v2, p2, Lcom/facebook/imagepipeline/common/b;->f:Z

    const/4 v3, 0x0

    .line 149
    invoke-interface {v0, p1, v1, v3, v2}, Lcom/facebook/imagepipeline/i/f;->a(Lcom/facebook/imagepipeline/g/e;Landroid/graphics/Bitmap$Config;Landroid/graphics/Rect;Z)Lcom/facebook/common/references/a;

    move-result-object v0

    .line 152
    :try_start_0
    iget-object p2, p2, Lcom/facebook/imagepipeline/common/b;->i:Lcom/facebook/imagepipeline/n/a;

    invoke-direct {p0, p2, v0}, Lcom/facebook/imagepipeline/decoder/a;->a(Lcom/facebook/imagepipeline/n/a;Lcom/facebook/common/references/a;)V

    .line 153
    new-instance p2, Lcom/facebook/imagepipeline/g/d;

    sget-object v1, Lcom/facebook/imagepipeline/g/g;->a:Lcom/facebook/imagepipeline/g/h;

    .line 156
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/g/e;->f()I

    move-result v2

    .line 157
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/g/e;->g()I

    move-result p1

    invoke-direct {p2, v0, v1, v2, p1}, Lcom/facebook/imagepipeline/g/d;-><init>(Lcom/facebook/common/references/a;Lcom/facebook/imagepipeline/g/h;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    invoke-virtual {v0}, Lcom/facebook/common/references/a;->close()V

    return-object p2

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Lcom/facebook/common/references/a;->close()V

    .line 160
    throw p1
.end method

.method public b(Lcom/facebook/imagepipeline/g/e;ILcom/facebook/imagepipeline/g/h;Lcom/facebook/imagepipeline/common/b;)Lcom/facebook/imagepipeline/g/c;
    .locals 1

    .line 135
    iget-boolean v0, p4, Lcom/facebook/imagepipeline/common/b;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/imagepipeline/decoder/a;->a:Lcom/facebook/imagepipeline/decoder/b;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/facebook/imagepipeline/decoder/a;->a:Lcom/facebook/imagepipeline/decoder/b;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/facebook/imagepipeline/decoder/b;->a(Lcom/facebook/imagepipeline/g/e;ILcom/facebook/imagepipeline/g/h;Lcom/facebook/imagepipeline/common/b;)Lcom/facebook/imagepipeline/g/c;

    move-result-object p1

    return-object p1

    .line 138
    :cond_0
    invoke-virtual {p0, p1, p4}, Lcom/facebook/imagepipeline/decoder/a;->a(Lcom/facebook/imagepipeline/g/e;Lcom/facebook/imagepipeline/common/b;)Lcom/facebook/imagepipeline/g/d;

    move-result-object p1

    return-object p1
.end method

.method public c(Lcom/facebook/imagepipeline/g/e;ILcom/facebook/imagepipeline/g/h;Lcom/facebook/imagepipeline/common/b;)Lcom/facebook/imagepipeline/g/d;
    .locals 6

    .line 176
    iget-object v0, p0, Lcom/facebook/imagepipeline/decoder/a;->c:Lcom/facebook/imagepipeline/i/f;

    iget-object v2, p4, Lcom/facebook/imagepipeline/common/b;->g:Landroid/graphics/Bitmap$Config;

    iget-boolean v5, p4, Lcom/facebook/imagepipeline/common/b;->f:Z

    const/4 v3, 0x0

    move-object v1, p1

    move v4, p2

    .line 177
    invoke-interface/range {v0 .. v5}, Lcom/facebook/imagepipeline/i/f;->a(Lcom/facebook/imagepipeline/g/e;Landroid/graphics/Bitmap$Config;Landroid/graphics/Rect;IZ)Lcom/facebook/common/references/a;

    move-result-object p2

    .line 180
    :try_start_0
    iget-object p4, p4, Lcom/facebook/imagepipeline/common/b;->i:Lcom/facebook/imagepipeline/n/a;

    invoke-direct {p0, p4, p2}, Lcom/facebook/imagepipeline/decoder/a;->a(Lcom/facebook/imagepipeline/n/a;Lcom/facebook/common/references/a;)V

    .line 181
    new-instance p4, Lcom/facebook/imagepipeline/g/d;

    .line 184
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/g/e;->f()I

    move-result v0

    .line 185
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/g/e;->g()I

    move-result p1

    invoke-direct {p4, p2, p3, v0, p1}, Lcom/facebook/imagepipeline/g/d;-><init>(Lcom/facebook/common/references/a;Lcom/facebook/imagepipeline/g/h;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    invoke-virtual {p2}, Lcom/facebook/common/references/a;->close()V

    return-object p4

    :catchall_0
    move-exception p1

    invoke-virtual {p2}, Lcom/facebook/common/references/a;->close()V

    .line 188
    throw p1
.end method

.method public d(Lcom/facebook/imagepipeline/g/e;ILcom/facebook/imagepipeline/g/h;Lcom/facebook/imagepipeline/common/b;)Lcom/facebook/imagepipeline/g/c;
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/facebook/imagepipeline/decoder/a;->b:Lcom/facebook/imagepipeline/decoder/b;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/facebook/imagepipeline/decoder/b;->a(Lcom/facebook/imagepipeline/g/e;ILcom/facebook/imagepipeline/g/h;Lcom/facebook/imagepipeline/common/b;)Lcom/facebook/imagepipeline/g/c;

    move-result-object p1

    return-object p1
.end method
