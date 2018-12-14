.class public Lcom/facebook/imagepipeline/animated/a/e;
.super Ljava/lang/Object;
.source "AnimatedImageFactoryImpl.java"

# interfaces
.implements Lcom/facebook/imagepipeline/animated/a/d;


# static fields
.field static a:Lcom/facebook/imagepipeline/animated/a/c;

.field static b:Lcom/facebook/imagepipeline/animated/a/c;


# instance fields
.field private final c:Lcom/facebook/imagepipeline/animated/b/b;

.field private final d:Lcom/facebook/imagepipeline/b/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com.facebook.animated.gif.GifImage"

    .line 53
    invoke-static {v0}, Lcom/facebook/imagepipeline/animated/a/e;->a(Ljava/lang/String;)Lcom/facebook/imagepipeline/animated/a/c;

    move-result-object v0

    sput-object v0, Lcom/facebook/imagepipeline/animated/a/e;->a:Lcom/facebook/imagepipeline/animated/a/c;

    const-string v0, "com.facebook.animated.webp.WebPImage"

    .line 54
    invoke-static {v0}, Lcom/facebook/imagepipeline/animated/a/e;->a(Ljava/lang/String;)Lcom/facebook/imagepipeline/animated/a/c;

    move-result-object v0

    sput-object v0, Lcom/facebook/imagepipeline/animated/a/e;->b:Lcom/facebook/imagepipeline/animated/a/c;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/imagepipeline/animated/b/b;Lcom/facebook/imagepipeline/b/f;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/facebook/imagepipeline/animated/a/e;->c:Lcom/facebook/imagepipeline/animated/b/b;

    .line 61
    iput-object p2, p0, Lcom/facebook/imagepipeline/animated/a/e;->d:Lcom/facebook/imagepipeline/b/f;

    return-void
.end method

.method private a(IILandroid/graphics/Bitmap$Config;)Lcom/facebook/common/references/a;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/graphics/Bitmap$Config;",
            ")",
            "Lcom/facebook/common/references/a<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 226
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/a/e;->d:Lcom/facebook/imagepipeline/b/f;

    .line 227
    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/imagepipeline/b/f;->a(IILandroid/graphics/Bitmap$Config;)Lcom/facebook/common/references/a;

    move-result-object p1

    .line 228
    invoke-virtual {p1}, Lcom/facebook/common/references/a;->a()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Bitmap;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 229
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0xc

    if-lt p2, p3, :cond_0

    .line 230
    invoke-virtual {p1}, Lcom/facebook/common/references/a;->a()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Bitmap;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    :cond_0
    return-object p1
.end method

.method private a(Lcom/facebook/imagepipeline/animated/base/b;Landroid/graphics/Bitmap$Config;I)Lcom/facebook/common/references/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/animated/base/b;",
            "Landroid/graphics/Bitmap$Config;",
            "I)",
            "Lcom/facebook/common/references/a<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 166
    invoke-interface {p1}, Lcom/facebook/imagepipeline/animated/base/b;->a()I

    move-result v0

    .line 167
    invoke-interface {p1}, Lcom/facebook/imagepipeline/animated/base/b;->b()I

    move-result v1

    .line 165
    invoke-direct {p0, v0, v1, p2}, Lcom/facebook/imagepipeline/animated/a/e;->a(IILandroid/graphics/Bitmap$Config;)Lcom/facebook/common/references/a;

    move-result-object p2

    .line 169
    invoke-static {p1}, Lcom/facebook/imagepipeline/animated/base/d;->a(Lcom/facebook/imagepipeline/animated/base/b;)Lcom/facebook/imagepipeline/animated/base/d;

    move-result-object p1

    .line 170
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/a/e;->c:Lcom/facebook/imagepipeline/animated/b/b;

    const/4 v1, 0x0

    .line 171
    invoke-interface {v0, p1, v1}, Lcom/facebook/imagepipeline/animated/b/b;->a(Lcom/facebook/imagepipeline/animated/base/d;Landroid/graphics/Rect;)Lcom/facebook/imagepipeline/animated/base/a;

    move-result-object p1

    .line 172
    new-instance v0, Lcom/facebook/imagepipeline/animated/b/d;

    new-instance v1, Lcom/facebook/imagepipeline/animated/a/e$1;

    invoke-direct {v1, p0}, Lcom/facebook/imagepipeline/animated/a/e$1;-><init>(Lcom/facebook/imagepipeline/animated/a/e;)V

    invoke-direct {v0, p1, v1}, Lcom/facebook/imagepipeline/animated/b/d;-><init>(Lcom/facebook/imagepipeline/animated/base/a;Lcom/facebook/imagepipeline/animated/b/d$a;)V

    .line 185
    invoke-virtual {p2}, Lcom/facebook/common/references/a;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {v0, p3, p1}, Lcom/facebook/imagepipeline/animated/b/d;->a(ILandroid/graphics/Bitmap;)V

    return-object p2
.end method

.method private static a(Ljava/lang/String;)Lcom/facebook/imagepipeline/animated/a/c;
    .locals 0

    .line 45
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 46
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/imagepipeline/animated/a/c;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private a(Lcom/facebook/imagepipeline/common/b;Lcom/facebook/imagepipeline/animated/base/b;Landroid/graphics/Bitmap$Config;)Lcom/facebook/imagepipeline/g/c;
    .locals 4

    const/4 v0, 0x0

    .line 133
    :try_start_0
    iget-boolean v1, p1, Lcom/facebook/imagepipeline/common/b;->c:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {p2}, Lcom/facebook/imagepipeline/animated/base/b;->c()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 134
    :goto_0
    iget-boolean v3, p1, Lcom/facebook/imagepipeline/common/b;->e:Z

    if-eqz v3, :cond_1

    .line 135
    new-instance p1, Lcom/facebook/imagepipeline/g/d;

    .line 136
    invoke-direct {p0, p2, p3, v1}, Lcom/facebook/imagepipeline/animated/a/e;->a(Lcom/facebook/imagepipeline/animated/base/b;Landroid/graphics/Bitmap$Config;I)Lcom/facebook/common/references/a;

    move-result-object p2

    sget-object p3, Lcom/facebook/imagepipeline/g/g;->a:Lcom/facebook/imagepipeline/g/h;

    invoke-direct {p1, p2, p3, v2}, Lcom/facebook/imagepipeline/g/d;-><init>(Lcom/facebook/common/references/a;Lcom/facebook/imagepipeline/g/h;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 156
    invoke-static {v0}, Lcom/facebook/common/references/a;->c(Lcom/facebook/common/references/a;)V

    .line 157
    invoke-static {v0}, Lcom/facebook/common/references/a;->a(Ljava/lang/Iterable;)V

    return-object p1

    .line 141
    :cond_1
    :try_start_1
    iget-boolean v2, p1, Lcom/facebook/imagepipeline/common/b;->d:Z

    if-eqz v2, :cond_2

    .line 142
    invoke-direct {p0, p2, p3}, Lcom/facebook/imagepipeline/animated/a/e;->a(Lcom/facebook/imagepipeline/animated/base/b;Landroid/graphics/Bitmap$Config;)Ljava/util/List;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 143
    :try_start_2
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/common/references/a;

    invoke-static {v3}, Lcom/facebook/common/references/a;->b(Lcom/facebook/common/references/a;)Lcom/facebook/common/references/a;

    move-result-object v3

    move-object v0, v3

    goto :goto_1

    :cond_2
    move-object v2, v0

    .line 146
    :goto_1
    iget-boolean p1, p1, Lcom/facebook/imagepipeline/common/b;->b:Z

    if-eqz p1, :cond_3

    if-nez v0, :cond_3

    .line 147
    invoke-direct {p0, p2, p3, v1}, Lcom/facebook/imagepipeline/animated/a/e;->a(Lcom/facebook/imagepipeline/animated/base/b;Landroid/graphics/Bitmap$Config;I)Lcom/facebook/common/references/a;

    move-result-object p1

    move-object v0, p1

    .line 149
    :cond_3
    invoke-static {p2}, Lcom/facebook/imagepipeline/animated/base/d;->b(Lcom/facebook/imagepipeline/animated/base/b;)Lcom/facebook/imagepipeline/animated/base/e;

    move-result-object p1

    .line 150
    invoke-virtual {p1, v0}, Lcom/facebook/imagepipeline/animated/base/e;->a(Lcom/facebook/common/references/a;)Lcom/facebook/imagepipeline/animated/base/e;

    move-result-object p1

    .line 151
    invoke-virtual {p1, v1}, Lcom/facebook/imagepipeline/animated/base/e;->a(I)Lcom/facebook/imagepipeline/animated/base/e;

    move-result-object p1

    .line 152
    invoke-virtual {p1, v2}, Lcom/facebook/imagepipeline/animated/base/e;->a(Ljava/util/List;)Lcom/facebook/imagepipeline/animated/base/e;

    move-result-object p1

    .line 153
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/animated/base/e;->e()Lcom/facebook/imagepipeline/animated/base/d;

    move-result-object p1

    .line 154
    new-instance p2, Lcom/facebook/imagepipeline/g/a;

    invoke-direct {p2, p1}, Lcom/facebook/imagepipeline/g/a;-><init>(Lcom/facebook/imagepipeline/animated/base/d;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 156
    invoke-static {v0}, Lcom/facebook/common/references/a;->c(Lcom/facebook/common/references/a;)V

    .line 157
    invoke-static {v2}, Lcom/facebook/common/references/a;->a(Ljava/lang/Iterable;)V

    return-object p2

    :catchall_0
    move-exception p1

    goto :goto_2

    :catchall_1
    move-exception p1

    move-object v2, v0

    .line 156
    :goto_2
    invoke-static {v0}, Lcom/facebook/common/references/a;->c(Lcom/facebook/common/references/a;)V

    .line 157
    invoke-static {v2}, Lcom/facebook/common/references/a;->a(Ljava/lang/Iterable;)V

    .line 158
    throw p1
.end method

.method private a(Lcom/facebook/imagepipeline/animated/base/b;Landroid/graphics/Bitmap$Config;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/animated/base/b;",
            "Landroid/graphics/Bitmap$Config;",
            ")",
            "Ljava/util/List<",
            "Lcom/facebook/common/references/a<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation

    .line 192
    invoke-static {p1}, Lcom/facebook/imagepipeline/animated/base/d;->a(Lcom/facebook/imagepipeline/animated/base/b;)Lcom/facebook/imagepipeline/animated/base/d;

    move-result-object p1

    .line 193
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/a/e;->c:Lcom/facebook/imagepipeline/animated/b/b;

    const/4 v1, 0x0

    .line 194
    invoke-interface {v0, p1, v1}, Lcom/facebook/imagepipeline/animated/b/b;->a(Lcom/facebook/imagepipeline/animated/base/d;Landroid/graphics/Rect;)Lcom/facebook/imagepipeline/animated/base/a;

    move-result-object p1

    .line 195
    new-instance v0, Ljava/util/ArrayList;

    .line 196
    invoke-interface {p1}, Lcom/facebook/imagepipeline/animated/base/a;->a()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 197
    new-instance v1, Lcom/facebook/imagepipeline/animated/b/d;

    new-instance v2, Lcom/facebook/imagepipeline/animated/a/e$2;

    invoke-direct {v2, p0, v0}, Lcom/facebook/imagepipeline/animated/a/e$2;-><init>(Lcom/facebook/imagepipeline/animated/a/e;Ljava/util/List;)V

    invoke-direct {v1, p1, v2}, Lcom/facebook/imagepipeline/animated/b/d;-><init>(Lcom/facebook/imagepipeline/animated/base/a;Lcom/facebook/imagepipeline/animated/b/d$a;)V

    const/4 v2, 0x0

    .line 210
    :goto_0
    invoke-interface {p1}, Lcom/facebook/imagepipeline/animated/base/a;->a()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 212
    invoke-interface {p1}, Lcom/facebook/imagepipeline/animated/base/a;->c()I

    move-result v3

    .line 213
    invoke-interface {p1}, Lcom/facebook/imagepipeline/animated/base/a;->d()I

    move-result v4

    .line 211
    invoke-direct {p0, v3, v4, p2}, Lcom/facebook/imagepipeline/animated/a/e;->a(IILandroid/graphics/Bitmap$Config;)Lcom/facebook/common/references/a;

    move-result-object v3

    .line 215
    invoke-virtual {v3}, Lcom/facebook/common/references/a;->a()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2, v4}, Lcom/facebook/imagepipeline/animated/b/d;->a(ILandroid/graphics/Bitmap;)V

    .line 216
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public a(Lcom/facebook/imagepipeline/g/e;Lcom/facebook/imagepipeline/common/b;Landroid/graphics/Bitmap$Config;)Lcom/facebook/imagepipeline/g/c;
    .locals 4

    .line 75
    sget-object v0, Lcom/facebook/imagepipeline/animated/a/e;->a:Lcom/facebook/imagepipeline/animated/a/c;

    if-nez v0, :cond_0

    .line 76
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "To encode animated gif please add the dependency to the animated-gif module"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 79
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/g/e;->c()Lcom/facebook/common/references/a;

    move-result-object p1

    .line 80
    invoke-static {p1}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/common/references/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/memory/PooledByteBuffer;

    .line 84
    invoke-interface {v0}, Lcom/facebook/common/memory/PooledByteBuffer;->c()Ljava/nio/ByteBuffer;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 85
    sget-object v1, Lcom/facebook/imagepipeline/animated/a/e;->a:Lcom/facebook/imagepipeline/animated/a/c;

    invoke-interface {v0}, Lcom/facebook/common/memory/PooledByteBuffer;->c()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/imagepipeline/animated/a/c;->b(Ljava/nio/ByteBuffer;)Lcom/facebook/imagepipeline/animated/base/b;

    move-result-object v0

    goto :goto_0

    .line 87
    :cond_1
    sget-object v1, Lcom/facebook/imagepipeline/animated/a/e;->a:Lcom/facebook/imagepipeline/animated/a/c;

    invoke-interface {v0}, Lcom/facebook/common/memory/PooledByteBuffer;->b()J

    move-result-wide v2

    invoke-interface {v0}, Lcom/facebook/common/memory/PooledByteBuffer;->a()I

    move-result v0

    invoke-interface {v1, v2, v3, v0}, Lcom/facebook/imagepipeline/animated/a/c;->b(JI)Lcom/facebook/imagepipeline/animated/base/b;

    move-result-object v0

    .line 89
    :goto_0
    invoke-direct {p0, p2, v0, p3}, Lcom/facebook/imagepipeline/animated/a/e;->a(Lcom/facebook/imagepipeline/common/b;Lcom/facebook/imagepipeline/animated/base/b;Landroid/graphics/Bitmap$Config;)Lcom/facebook/imagepipeline/g/c;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    invoke-static {p1}, Lcom/facebook/common/references/a;->c(Lcom/facebook/common/references/a;)V

    return-object p2

    :catchall_0
    move-exception p2

    invoke-static {p1}, Lcom/facebook/common/references/a;->c(Lcom/facebook/common/references/a;)V

    .line 92
    throw p2
.end method

.method public b(Lcom/facebook/imagepipeline/g/e;Lcom/facebook/imagepipeline/common/b;Landroid/graphics/Bitmap$Config;)Lcom/facebook/imagepipeline/g/c;
    .locals 4

    .line 106
    sget-object v0, Lcom/facebook/imagepipeline/animated/a/e;->b:Lcom/facebook/imagepipeline/animated/a/c;

    if-nez v0, :cond_0

    .line 107
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "To encode animated webp please add the dependency to the animated-webp module"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 110
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/g/e;->c()Lcom/facebook/common/references/a;

    move-result-object p1

    .line 111
    invoke-static {p1}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/common/references/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/memory/PooledByteBuffer;

    .line 115
    invoke-interface {v0}, Lcom/facebook/common/memory/PooledByteBuffer;->c()Ljava/nio/ByteBuffer;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 116
    sget-object v1, Lcom/facebook/imagepipeline/animated/a/e;->b:Lcom/facebook/imagepipeline/animated/a/c;

    invoke-interface {v0}, Lcom/facebook/common/memory/PooledByteBuffer;->c()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/imagepipeline/animated/a/c;->b(Ljava/nio/ByteBuffer;)Lcom/facebook/imagepipeline/animated/base/b;

    move-result-object v0

    goto :goto_0

    .line 118
    :cond_1
    sget-object v1, Lcom/facebook/imagepipeline/animated/a/e;->b:Lcom/facebook/imagepipeline/animated/a/c;

    invoke-interface {v0}, Lcom/facebook/common/memory/PooledByteBuffer;->b()J

    move-result-wide v2

    invoke-interface {v0}, Lcom/facebook/common/memory/PooledByteBuffer;->a()I

    move-result v0

    invoke-interface {v1, v2, v3, v0}, Lcom/facebook/imagepipeline/animated/a/c;->b(JI)Lcom/facebook/imagepipeline/animated/base/b;

    move-result-object v0

    .line 120
    :goto_0
    invoke-direct {p0, p2, v0, p3}, Lcom/facebook/imagepipeline/animated/a/e;->a(Lcom/facebook/imagepipeline/common/b;Lcom/facebook/imagepipeline/animated/base/b;Landroid/graphics/Bitmap$Config;)Lcom/facebook/imagepipeline/g/c;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    invoke-static {p1}, Lcom/facebook/common/references/a;->c(Lcom/facebook/common/references/a;)V

    return-object p2

    :catchall_0
    move-exception p2

    invoke-static {p1}, Lcom/facebook/common/references/a;->c(Lcom/facebook/common/references/a;)V

    .line 123
    throw p2
.end method
