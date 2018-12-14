.class Lmaster/flame/danmaku/danmaku/model/a/a;
.super Ljava/lang/Object;
.source "FinitePool.java"

# interfaces
.implements Lmaster/flame/danmaku/danmaku/model/a/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lmaster/flame/danmaku/danmaku/model/a/c<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Lmaster/flame/danmaku/danmaku/model/a/b<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lmaster/flame/danmaku/danmaku/model/a/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmaster/flame/danmaku/danmaku/model/a/d<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final b:I

.field private final c:Z

.field private d:Lmaster/flame/danmaku/danmaku/model/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private e:I


# direct methods
.method constructor <init>(Lmaster/flame/danmaku/danmaku/model/a/d;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmaster/flame/danmaku/danmaku/model/a/d<",
            "TT;>;I)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-gtz p2, :cond_0

    .line 43
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The pool limit must be > 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 46
    :cond_0
    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/model/a/a;->a:Lmaster/flame/danmaku/danmaku/model/a/d;

    .line 47
    iput p2, p0, Lmaster/flame/danmaku/danmaku/model/a/a;->b:I

    const/4 p1, 0x0

    .line 48
    iput-boolean p1, p0, Lmaster/flame/danmaku/danmaku/model/a/a;->c:Z

    return-void
.end method


# virtual methods
.method public a()Lmaster/flame/danmaku/danmaku/model/a/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/a/a;->d:Lmaster/flame/danmaku/danmaku/model/a/c;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/a/a;->d:Lmaster/flame/danmaku/danmaku/model/a/c;

    .line 56
    invoke-interface {v0}, Lmaster/flame/danmaku/danmaku/model/a/c;->l()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmaster/flame/danmaku/danmaku/model/a/c;

    iput-object v1, p0, Lmaster/flame/danmaku/danmaku/model/a/a;->d:Lmaster/flame/danmaku/danmaku/model/a/c;

    .line 57
    iget v1, p0, Lmaster/flame/danmaku/danmaku/model/a/a;->e:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lmaster/flame/danmaku/danmaku/model/a/a;->e:I

    goto :goto_0

    .line 59
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/a/a;->a:Lmaster/flame/danmaku/danmaku/model/a/d;

    invoke-interface {v0}, Lmaster/flame/danmaku/danmaku/model/a/d;->b()Lmaster/flame/danmaku/danmaku/model/a/c;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 63
    invoke-interface {v0, v1}, Lmaster/flame/danmaku/danmaku/model/a/c;->a(Ljava/lang/Object;)V

    const/4 v1, 0x0

    .line 64
    invoke-interface {v0, v1}, Lmaster/flame/danmaku/danmaku/model/a/c;->a(Z)V

    .line 65
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/a/a;->a:Lmaster/flame/danmaku/danmaku/model/a/d;

    invoke-interface {v1, v0}, Lmaster/flame/danmaku/danmaku/model/a/d;->b(Lmaster/flame/danmaku/danmaku/model/a/c;)V

    :cond_1
    return-object v0
.end method

.method public a(Lmaster/flame/danmaku/danmaku/model/a/c;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 72
    invoke-interface {p1}, Lmaster/flame/danmaku/danmaku/model/a/c;->j()Z

    move-result v0

    if-nez v0, :cond_2

    .line 73
    iget-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/a/a;->c:Z

    if-nez v0, :cond_0

    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/a/a;->e:I

    iget v1, p0, Lmaster/flame/danmaku/danmaku/model/a/a;->b:I

    if-ge v0, v1, :cond_1

    .line 74
    :cond_0
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/a/a;->e:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/a/a;->e:I

    .line 75
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/a/a;->d:Lmaster/flame/danmaku/danmaku/model/a/c;

    invoke-interface {p1, v0}, Lmaster/flame/danmaku/danmaku/model/a/c;->a(Ljava/lang/Object;)V

    .line 76
    invoke-interface {p1, v1}, Lmaster/flame/danmaku/danmaku/model/a/c;->a(Z)V

    .line 77
    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/model/a/a;->d:Lmaster/flame/danmaku/danmaku/model/a/c;

    .line 79
    :cond_1
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/a/a;->a:Lmaster/flame/danmaku/danmaku/model/a/d;

    invoke-interface {v0, p1}, Lmaster/flame/danmaku/danmaku/model/a/d;->a(Lmaster/flame/danmaku/danmaku/model/a/c;)V

    goto :goto_0

    .line 81
    :cond_2
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FinitePool] Element is already in pool: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
