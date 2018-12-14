.class public Lcom/facebook/imagepipeline/k/ay;
.super Ljava/lang/Object;
.source "WebpTranscodeProducer.java"

# interfaces
.implements Lcom/facebook/imagepipeline/k/ak;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/k/ay$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/imagepipeline/k/ak<",
        "Lcom/facebook/imagepipeline/g/e;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field private final b:Lcom/facebook/common/memory/g;

.field private final c:Lcom/facebook/imagepipeline/k/ak;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/k/ak<",
            "Lcom/facebook/imagepipeline/g/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/facebook/common/memory/g;Lcom/facebook/imagepipeline/k/ak;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/facebook/common/memory/g;",
            "Lcom/facebook/imagepipeline/k/ak<",
            "Lcom/facebook/imagepipeline/g/e;",
            ">;)V"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-static {p1}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Executor;

    iput-object p1, p0, Lcom/facebook/imagepipeline/k/ay;->a:Ljava/util/concurrent/Executor;

    .line 48
    invoke-static {p2}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/common/memory/g;

    iput-object p1, p0, Lcom/facebook/imagepipeline/k/ay;->b:Lcom/facebook/common/memory/g;

    .line 49
    invoke-static {p3}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/imagepipeline/k/ak;

    iput-object p1, p0, Lcom/facebook/imagepipeline/k/ay;->c:Lcom/facebook/imagepipeline/k/ak;

    return-void
.end method

.method static synthetic a(Lcom/facebook/imagepipeline/k/ay;)Lcom/facebook/common/memory/g;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/facebook/imagepipeline/k/ay;->b:Lcom/facebook/common/memory/g;

    return-object p0
.end method

.method static synthetic a(Lcom/facebook/imagepipeline/g/e;)Lcom/facebook/common/util/TriState;
    .locals 0

    .line 34
    invoke-static {p0}, Lcom/facebook/imagepipeline/k/ay;->b(Lcom/facebook/imagepipeline/g/e;)Lcom/facebook/common/util/TriState;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/facebook/imagepipeline/g/e;Lcom/facebook/common/memory/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 34
    invoke-static {p0, p1}, Lcom/facebook/imagepipeline/k/ay;->b(Lcom/facebook/imagepipeline/g/e;Lcom/facebook/common/memory/i;)V

    return-void
.end method

.method private a(Lcom/facebook/imagepipeline/g/e;Lcom/facebook/imagepipeline/k/k;Lcom/facebook/imagepipeline/k/al;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/g/e;",
            "Lcom/facebook/imagepipeline/k/k<",
            "Lcom/facebook/imagepipeline/g/e;",
            ">;",
            "Lcom/facebook/imagepipeline/k/al;",
            ")V"
        }
    .end annotation

    .line 96
    invoke-static {p1}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    invoke-static {p1}, Lcom/facebook/imagepipeline/g/e;->a(Lcom/facebook/imagepipeline/g/e;)Lcom/facebook/imagepipeline/g/e;

    move-result-object v6

    .line 98
    new-instance p1, Lcom/facebook/imagepipeline/k/ay$1;

    .line 101
    invoke-interface {p3}, Lcom/facebook/imagepipeline/k/al;->c()Lcom/facebook/imagepipeline/k/an;

    move-result-object v3

    const-string v4, "WebpTranscodeProducer"

    .line 103
    invoke-interface {p3}, Lcom/facebook/imagepipeline/k/al;->b()Ljava/lang/String;

    move-result-object v5

    move-object v0, p1

    move-object v1, p0

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/facebook/imagepipeline/k/ay$1;-><init>(Lcom/facebook/imagepipeline/k/ay;Lcom/facebook/imagepipeline/k/k;Lcom/facebook/imagepipeline/k/an;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/imagepipeline/g/e;)V

    .line 146
    iget-object p2, p0, Lcom/facebook/imagepipeline/k/ay;->a:Ljava/util/concurrent/Executor;

    invoke-interface {p2, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/imagepipeline/k/ay;Lcom/facebook/imagepipeline/g/e;Lcom/facebook/imagepipeline/k/k;Lcom/facebook/imagepipeline/k/al;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/imagepipeline/k/ay;->a(Lcom/facebook/imagepipeline/g/e;Lcom/facebook/imagepipeline/k/k;Lcom/facebook/imagepipeline/k/al;)V

    return-void
.end method

.method private static b(Lcom/facebook/imagepipeline/g/e;)Lcom/facebook/common/util/TriState;
    .locals 1

    .line 150
    invoke-static {p0}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/g/e;->d()Ljava/io/InputStream;

    move-result-object p0

    .line 151
    invoke-static {p0}, Lcom/facebook/d/d;->c(Ljava/io/InputStream;)Lcom/facebook/d/c;

    move-result-object p0

    .line 153
    invoke-static {p0}, Lcom/facebook/d/b;->b(Lcom/facebook/d/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 154
    invoke-static {}, Lcom/facebook/imagepipeline/nativecode/f;->a()Lcom/facebook/imagepipeline/nativecode/e;

    move-result-object v0

    if-nez v0, :cond_0

    .line 156
    sget-object p0, Lcom/facebook/common/util/TriState;->NO:Lcom/facebook/common/util/TriState;

    return-object p0

    .line 159
    :cond_0
    invoke-interface {v0, p0}, Lcom/facebook/imagepipeline/nativecode/e;->a(Lcom/facebook/d/c;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    .line 158
    invoke-static {p0}, Lcom/facebook/common/util/TriState;->valueOf(Z)Lcom/facebook/common/util/TriState;

    move-result-object p0

    return-object p0

    .line 160
    :cond_1
    sget-object v0, Lcom/facebook/d/c;->a:Lcom/facebook/d/c;

    if-ne p0, v0, :cond_2

    .line 163
    sget-object p0, Lcom/facebook/common/util/TriState;->UNSET:Lcom/facebook/common/util/TriState;

    return-object p0

    .line 166
    :cond_2
    sget-object p0, Lcom/facebook/common/util/TriState;->NO:Lcom/facebook/common/util/TriState;

    return-object p0
.end method

.method private static b(Lcom/facebook/imagepipeline/g/e;Lcom/facebook/common/memory/i;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 172
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/g/e;->d()Ljava/io/InputStream;

    move-result-object v0

    .line 173
    invoke-static {v0}, Lcom/facebook/d/d;->c(Ljava/io/InputStream;)Lcom/facebook/d/c;

    move-result-object v1

    .line 174
    sget-object v2, Lcom/facebook/d/b;->f:Lcom/facebook/d/c;

    if-eq v1, v2, :cond_3

    sget-object v2, Lcom/facebook/d/b;->h:Lcom/facebook/d/c;

    if-ne v1, v2, :cond_0

    goto :goto_1

    .line 181
    :cond_0
    sget-object v2, Lcom/facebook/d/b;->g:Lcom/facebook/d/c;

    if-eq v1, v2, :cond_2

    sget-object v2, Lcom/facebook/d/b;->i:Lcom/facebook/d/c;

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 188
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Wrong image format"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 184
    :cond_2
    :goto_0
    invoke-static {}, Lcom/facebook/imagepipeline/nativecode/f;->a()Lcom/facebook/imagepipeline/nativecode/e;

    move-result-object v1

    .line 185
    invoke-interface {v1, v0, p1}, Lcom/facebook/imagepipeline/nativecode/e;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 186
    sget-object p1, Lcom/facebook/d/b;->b:Lcom/facebook/d/c;

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/g/e;->a(Lcom/facebook/d/c;)V

    goto :goto_2

    .line 176
    :cond_3
    :goto_1
    invoke-static {}, Lcom/facebook/imagepipeline/nativecode/f;->a()Lcom/facebook/imagepipeline/nativecode/e;

    move-result-object v1

    const/16 v2, 0x50

    invoke-interface {v1, v0, p1, v2}, Lcom/facebook/imagepipeline/nativecode/e;->a(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    .line 180
    sget-object p1, Lcom/facebook/d/b;->a:Lcom/facebook/d/c;

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/g/e;->a(Lcom/facebook/d/c;)V

    :goto_2
    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/imagepipeline/k/k;Lcom/facebook/imagepipeline/k/al;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/k/k<",
            "Lcom/facebook/imagepipeline/g/e;",
            ">;",
            "Lcom/facebook/imagepipeline/k/al;",
            ")V"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/ay;->c:Lcom/facebook/imagepipeline/k/ak;

    new-instance v1, Lcom/facebook/imagepipeline/k/ay$a;

    invoke-direct {v1, p0, p1, p2}, Lcom/facebook/imagepipeline/k/ay$a;-><init>(Lcom/facebook/imagepipeline/k/ay;Lcom/facebook/imagepipeline/k/k;Lcom/facebook/imagepipeline/k/al;)V

    invoke-interface {v0, v1, p2}, Lcom/facebook/imagepipeline/k/ak;->a(Lcom/facebook/imagepipeline/k/k;Lcom/facebook/imagepipeline/k/al;)V

    return-void
.end method
