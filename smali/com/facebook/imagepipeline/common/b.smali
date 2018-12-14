.class public Lcom/facebook/imagepipeline/common/b;
.super Ljava/lang/Object;
.source "ImageDecodeOptions.java"


# annotations
.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# static fields
.field private static final j:Lcom/facebook/imagepipeline/common/b;


# instance fields
.field public final a:I

.field public final b:Z

.field public final c:Z

.field public final d:Z

.field public final e:Z

.field public final f:Z

.field public final g:Landroid/graphics/Bitmap$Config;

.field public final h:Lcom/facebook/imagepipeline/decoder/b;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final i:Lcom/facebook/imagepipeline/n/a;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    invoke-static {}, Lcom/facebook/imagepipeline/common/b;->b()Lcom/facebook/imagepipeline/common/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/common/c;->j()Lcom/facebook/imagepipeline/common/b;

    move-result-object v0

    sput-object v0, Lcom/facebook/imagepipeline/common/b;->j:Lcom/facebook/imagepipeline/common/b;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/imagepipeline/common/c;)V
    .locals 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/common/c;->a()I

    move-result v0

    iput v0, p0, Lcom/facebook/imagepipeline/common/b;->a:I

    .line 75
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/common/c;->b()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/common/b;->b:Z

    .line 76
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/common/c;->c()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/common/b;->c:Z

    .line 77
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/common/c;->d()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/common/b;->d:Z

    .line 78
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/common/c;->f()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/common/b;->e:Z

    .line 79
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/common/c;->g()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/common/b;->g:Landroid/graphics/Bitmap$Config;

    .line 80
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/common/c;->e()Lcom/facebook/imagepipeline/decoder/b;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/common/b;->h:Lcom/facebook/imagepipeline/decoder/b;

    .line 81
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/common/c;->h()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/common/b;->f:Z

    .line 82
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/common/c;->i()Lcom/facebook/imagepipeline/n/a;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/imagepipeline/common/b;->i:Lcom/facebook/imagepipeline/n/a;

    return-void
.end method

.method public static a()Lcom/facebook/imagepipeline/common/b;
    .locals 1

    .line 91
    sget-object v0, Lcom/facebook/imagepipeline/common/b;->j:Lcom/facebook/imagepipeline/common/b;

    return-object v0
.end method

.method public static b()Lcom/facebook/imagepipeline/common/c;
    .locals 1

    .line 100
    new-instance v0, Lcom/facebook/imagepipeline/common/c;

    invoke-direct {v0}, Lcom/facebook/imagepipeline/common/c;-><init>()V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_a

    .line 106
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 108
    :cond_1
    check-cast p1, Lcom/facebook/imagepipeline/common/b;

    .line 110
    iget-boolean v2, p0, Lcom/facebook/imagepipeline/common/b;->b:Z

    iget-boolean v3, p1, Lcom/facebook/imagepipeline/common/b;->b:Z

    if-eq v2, v3, :cond_2

    return v1

    .line 111
    :cond_2
    iget-boolean v2, p0, Lcom/facebook/imagepipeline/common/b;->c:Z

    iget-boolean v3, p1, Lcom/facebook/imagepipeline/common/b;->c:Z

    if-eq v2, v3, :cond_3

    return v1

    .line 112
    :cond_3
    iget-boolean v2, p0, Lcom/facebook/imagepipeline/common/b;->d:Z

    iget-boolean v3, p1, Lcom/facebook/imagepipeline/common/b;->d:Z

    if-eq v2, v3, :cond_4

    return v1

    .line 113
    :cond_4
    iget-boolean v2, p0, Lcom/facebook/imagepipeline/common/b;->e:Z

    iget-boolean v3, p1, Lcom/facebook/imagepipeline/common/b;->e:Z

    if-eq v2, v3, :cond_5

    return v1

    .line 114
    :cond_5
    iget-boolean v2, p0, Lcom/facebook/imagepipeline/common/b;->f:Z

    iget-boolean v3, p1, Lcom/facebook/imagepipeline/common/b;->f:Z

    if-eq v2, v3, :cond_6

    return v1

    .line 115
    :cond_6
    iget-object v2, p0, Lcom/facebook/imagepipeline/common/b;->g:Landroid/graphics/Bitmap$Config;

    iget-object v3, p1, Lcom/facebook/imagepipeline/common/b;->g:Landroid/graphics/Bitmap$Config;

    if-eq v2, v3, :cond_7

    return v1

    .line 116
    :cond_7
    iget-object v2, p0, Lcom/facebook/imagepipeline/common/b;->h:Lcom/facebook/imagepipeline/decoder/b;

    iget-object v3, p1, Lcom/facebook/imagepipeline/common/b;->h:Lcom/facebook/imagepipeline/decoder/b;

    if-eq v2, v3, :cond_8

    return v1

    .line 117
    :cond_8
    iget-object v2, p0, Lcom/facebook/imagepipeline/common/b;->i:Lcom/facebook/imagepipeline/n/a;

    iget-object p1, p1, Lcom/facebook/imagepipeline/common/b;->i:Lcom/facebook/imagepipeline/n/a;

    if-eq v2, p1, :cond_9

    return v1

    :cond_9
    return v0

    :cond_a
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 123
    iget v0, p0, Lcom/facebook/imagepipeline/common/b;->a:I

    mul-int/lit8 v0, v0, 0x1f

    .line 124
    iget-boolean v1, p0, Lcom/facebook/imagepipeline/common/b;->b:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 125
    iget-boolean v1, p0, Lcom/facebook/imagepipeline/common/b;->c:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 126
    iget-boolean v1, p0, Lcom/facebook/imagepipeline/common/b;->d:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 127
    iget-boolean v1, p0, Lcom/facebook/imagepipeline/common/b;->e:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 128
    iget-boolean v1, p0, Lcom/facebook/imagepipeline/common/b;->f:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 129
    iget-object v1, p0, Lcom/facebook/imagepipeline/common/b;->g:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 130
    iget-object v1, p0, Lcom/facebook/imagepipeline/common/b;->h:Lcom/facebook/imagepipeline/decoder/b;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/facebook/imagepipeline/common/b;->h:Lcom/facebook/imagepipeline/decoder/b;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 131
    iget-object v1, p0, Lcom/facebook/imagepipeline/common/b;->i:Lcom/facebook/imagepipeline/n/a;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/facebook/imagepipeline/common/b;->i:Lcom/facebook/imagepipeline/n/a;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    .line 137
    check-cast v0, Ljava/util/Locale;

    const-string v1, "%d-%b-%b-%b-%b-%b-%s-%s-%s"

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/facebook/imagepipeline/common/b;->a:I

    .line 140
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-boolean v3, p0, Lcom/facebook/imagepipeline/common/b;->b:Z

    .line 141
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    iget-boolean v3, p0, Lcom/facebook/imagepipeline/common/b;->c:Z

    .line 142
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    iget-boolean v3, p0, Lcom/facebook/imagepipeline/common/b;->d:Z

    .line 143
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    iget-boolean v3, p0, Lcom/facebook/imagepipeline/common/b;->e:Z

    .line 144
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x4

    aput-object v3, v2, v4

    iget-boolean v3, p0, Lcom/facebook/imagepipeline/common/b;->f:Z

    .line 145
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x5

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/facebook/imagepipeline/common/b;->g:Landroid/graphics/Bitmap$Config;

    .line 146
    invoke-virtual {v3}, Landroid/graphics/Bitmap$Config;->name()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x6

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/facebook/imagepipeline/common/b;->h:Lcom/facebook/imagepipeline/decoder/b;

    const/4 v4, 0x7

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/facebook/imagepipeline/common/b;->i:Lcom/facebook/imagepipeline/n/a;

    const/16 v4, 0x8

    aput-object v3, v2, v4

    .line 137
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
