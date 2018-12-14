.class public Lorg/android/spdy/e;
.super Ljava/lang/Object;
.source "SessionInfo.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:I

.field private e:I

.field private f:Ljava/lang/Object;

.field private g:Lorg/android/spdy/d;

.field private h:Ljava/lang/String;

.field private i:I

.field private j:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Object;Lorg/android/spdy/d;I)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lorg/android/spdy/e;->a:Ljava/lang/String;

    .line 18
    iput p2, p0, Lorg/android/spdy/e;->b:I

    .line 19
    iput-object p3, p0, Lorg/android/spdy/e;->h:Ljava/lang/String;

    .line 20
    iput-object p4, p0, Lorg/android/spdy/e;->c:Ljava/lang/String;

    .line 21
    iput p5, p0, Lorg/android/spdy/e;->d:I

    .line 22
    iput-object p6, p0, Lorg/android/spdy/e;->f:Ljava/lang/Object;

    .line 23
    iput-object p7, p0, Lorg/android/spdy/e;->g:Lorg/android/spdy/d;

    .line 24
    iput p8, p0, Lorg/android/spdy/e;->e:I

    const/4 p1, 0x0

    .line 25
    iput p1, p0, Lorg/android/spdy/e;->i:I

    const/4 p1, -0x1

    .line 26
    iput p1, p0, Lorg/android/spdy/e;->j:I

    return-void
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 2

    .line 30
    iget-object v0, p0, Lorg/android/spdy/e;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/android/spdy/e;->d:I

    if-eqz v0, :cond_0

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/android/spdy/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/android/spdy/e;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/android/spdy/e;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/android/spdy/e;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 33
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/android/spdy/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/android/spdy/e;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .line 50
    iput p1, p0, Lorg/android/spdy/e;->j:I

    return-void
.end method

.method b()Ljava/lang/Object;
    .locals 1

    .line 38
    iget-object v0, p0, Lorg/android/spdy/e;->f:Ljava/lang/Object;

    return-object v0
.end method

.method public b(I)V
    .locals 0

    .line 56
    iput p1, p0, Lorg/android/spdy/e;->i:I

    return-void
.end method

.method c()Lorg/android/spdy/d;
    .locals 1

    .line 41
    iget-object v0, p0, Lorg/android/spdy/e;->g:Lorg/android/spdy/d;

    return-object v0
.end method

.method d()I
    .locals 1

    .line 44
    iget v0, p0, Lorg/android/spdy/e;->e:I

    return v0
.end method

.method e()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lorg/android/spdy/e;->h:Ljava/lang/String;

    return-object v0
.end method

.method f()I
    .locals 1

    .line 53
    iget v0, p0, Lorg/android/spdy/e;->j:I

    return v0
.end method

.method g()I
    .locals 1

    .line 59
    iget v0, p0, Lorg/android/spdy/e;->i:I

    return v0
.end method
