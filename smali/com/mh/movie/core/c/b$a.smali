.class public Lcom/mh/movie/core/c/b$a;
.super Ljava/lang/Object;
.source "ShareManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mh/movie/core/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field final synthetic e:Lcom/mh/movie/core/c/b;


# direct methods
.method public constructor <init>(Lcom/mh/movie/core/c/b;)V
    .locals 0

    .line 393
    iput-object p1, p0, Lcom/mh/movie/core/c/b$a;->e:Lcom/mh/movie/core/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 410
    iget v0, p0, Lcom/mh/movie/core/c/b$a;->a:I

    return v0
.end method

.method public a(I)V
    .locals 0

    .line 414
    iput p1, p0, Lcom/mh/movie/core/c/b$a;->a:I

    return-void
.end method

.method public b()I
    .locals 1

    .line 418
    iget v0, p0, Lcom/mh/movie/core/c/b$a;->b:I

    return v0
.end method

.method public b(I)V
    .locals 0

    .line 422
    iput p1, p0, Lcom/mh/movie/core/c/b$a;->b:I

    return-void
.end method

.method public c()I
    .locals 1

    .line 426
    iget v0, p0, Lcom/mh/movie/core/c/b$a;->c:I

    return v0
.end method

.method public c(I)V
    .locals 0

    .line 430
    iput p1, p0, Lcom/mh/movie/core/c/b$a;->c:I

    return-void
.end method

.method public d()I
    .locals 1

    .line 434
    iget v0, p0, Lcom/mh/movie/core/c/b$a;->d:I

    return v0
.end method

.method public d(I)V
    .locals 0

    .line 438
    iput p1, p0, Lcom/mh/movie/core/c/b$a;->d:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 401
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShareData{videoId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mh/movie/core/c/b$a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", videoInfoId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mh/movie/core/c/b$a;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", videoType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mh/movie/core/c/b$a;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mh/movie/core/c/b$a;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
