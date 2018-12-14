.class Lmaster/flame/danmaku/danmaku/b/a/a$a;
.super Lmaster/flame/danmaku/danmaku/model/l$c;
.source "DanmakuRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmaster/flame/danmaku/danmaku/b/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmaster/flame/danmaku/danmaku/model/l$c<",
        "Lmaster/flame/danmaku/danmaku/model/d;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lmaster/flame/danmaku/danmaku/model/m;

.field public b:Lmaster/flame/danmaku/danmaku/b/a$b;

.field public c:J

.field final synthetic d:Lmaster/flame/danmaku/danmaku/b/a/a;

.field private e:Lmaster/flame/danmaku/danmaku/model/d;


# direct methods
.method private constructor <init>(Lmaster/flame/danmaku/danmaku/b/a/a;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/b/a/a$a;->d:Lmaster/flame/danmaku/danmaku/b/a/a;

    invoke-direct {p0}, Lmaster/flame/danmaku/danmaku/model/l$c;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmaster/flame/danmaku/danmaku/b/a/a;Lmaster/flame/danmaku/danmaku/b/a/a$1;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lmaster/flame/danmaku/danmaku/b/a/a$a;-><init>(Lmaster/flame/danmaku/danmaku/b/a/a;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)I
    .locals 0

    .line 32
    check-cast p1, Lmaster/flame/danmaku/danmaku/model/d;

    invoke-virtual {p0, p1}, Lmaster/flame/danmaku/danmaku/b/a/a$a;->a(Lmaster/flame/danmaku/danmaku/model/d;)I

    move-result p1

    return p1
.end method

.method public a(Lmaster/flame/danmaku/danmaku/model/d;)I
    .locals 10

    .line 40
    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/b/a/a$a;->e:Lmaster/flame/danmaku/danmaku/model/d;

    .line 41
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/d;->f()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 42
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/b/a/a$a;->a:Lmaster/flame/danmaku/danmaku/model/m;

    invoke-interface {v0, p1}, Lmaster/flame/danmaku/danmaku/model/m;->b(Lmaster/flame/danmaku/danmaku/model/d;)V

    .line 43
    iget-object p1, p0, Lmaster/flame/danmaku/danmaku/b/a/a$a;->b:Lmaster/flame/danmaku/danmaku/b/a$b;

    iget-boolean p1, p1, Lmaster/flame/danmaku/danmaku/b/a$b;->a:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 46
    :cond_1
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/b/a/a$a;->b:Lmaster/flame/danmaku/danmaku/b/a$b;

    iget-boolean v0, v0, Lmaster/flame/danmaku/danmaku/b/a$b;->a:Z

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/d;->t()Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    .line 50
    :cond_2
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/d;->i()Z

    move-result v0

    if-nez v0, :cond_3

    .line 51
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/b/a/a$a;->d:Lmaster/flame/danmaku/danmaku/b/a/a;

    invoke-static {v0}, Lmaster/flame/danmaku/danmaku/b/a/a;->a(Lmaster/flame/danmaku/danmaku/b/a/a;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    move-result-object v0

    iget-object v3, v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->s:Lmaster/flame/danmaku/a/b;

    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/b/a/a$a;->b:Lmaster/flame/danmaku/danmaku/b/a$b;

    iget v5, v0, Lmaster/flame/danmaku/danmaku/b/a$b;->c:I

    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/b/a/a$a;->b:Lmaster/flame/danmaku/danmaku/b/a$b;

    iget v6, v0, Lmaster/flame/danmaku/danmaku/b/a$b;->d:I

    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/b/a/a$a;->b:Lmaster/flame/danmaku/danmaku/b/a$b;

    iget-object v7, v0, Lmaster/flame/danmaku/danmaku/b/a$b;->b:Lmaster/flame/danmaku/danmaku/model/f;

    const/4 v8, 0x0

    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/b/a/a$a;->d:Lmaster/flame/danmaku/danmaku/b/a/a;

    invoke-static {v0}, Lmaster/flame/danmaku/danmaku/b/a/a;->a(Lmaster/flame/danmaku/danmaku/b/a/a;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    move-result-object v9

    move-object v4, p1

    invoke-virtual/range {v3 .. v9}, Lmaster/flame/danmaku/a/b;->a(Lmaster/flame/danmaku/danmaku/model/d;IILmaster/flame/danmaku/danmaku/model/f;ZLmaster/flame/danmaku/danmaku/model/android/DanmakuContext;)V

    .line 53
    :cond_3
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/d;->s()J

    move-result-wide v3

    iget-wide v5, p0, Lmaster/flame/danmaku/danmaku/b/a/a$a;->c:J

    cmp-long v0, v3, v5

    if-ltz v0, :cond_f

    iget-byte v0, p1, Lmaster/flame/danmaku/danmaku/model/d;->n:B

    if-nez v0, :cond_4

    .line 54
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/d;->j()Z

    move-result v0

    if-eqz v0, :cond_4

    goto/16 :goto_2

    .line 58
    :cond_4
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/d;->h()Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_7

    .line 59
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/d;->d()Lmaster/flame/danmaku/danmaku/model/n;

    move-result-object v0

    .line 60
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/b/a/a$a;->d:Lmaster/flame/danmaku/danmaku/b/a/a;

    invoke-static {v1}, Lmaster/flame/danmaku/danmaku/b/a/a;->b(Lmaster/flame/danmaku/danmaku/b/a/a;)Lmaster/flame/danmaku/danmaku/model/k;

    move-result-object v1

    if-eqz v1, :cond_6

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lmaster/flame/danmaku/danmaku/model/n;->a()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_6

    .line 61
    :cond_5
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/b/a/a$a;->d:Lmaster/flame/danmaku/danmaku/b/a/a;

    invoke-static {v0}, Lmaster/flame/danmaku/danmaku/b/a/a;->b(Lmaster/flame/danmaku/danmaku/b/a/a;)Lmaster/flame/danmaku/danmaku/model/k;

    move-result-object v0

    invoke-interface {v0, p1}, Lmaster/flame/danmaku/danmaku/model/k;->a(Lmaster/flame/danmaku/danmaku/model/d;)V

    :cond_6
    return v3

    .line 66
    :cond_7
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/d;->o()I

    move-result v0

    if-ne v0, v3, :cond_8

    .line 68
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/b/a/a$a;->b:Lmaster/flame/danmaku/danmaku/b/a$b;

    iget v4, v0, Lmaster/flame/danmaku/danmaku/b/a$b;->c:I

    add-int/2addr v4, v3

    iput v4, v0, Lmaster/flame/danmaku/danmaku/b/a$b;->c:I

    .line 72
    :cond_8
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/d;->b()Z

    move-result v0

    if-nez v0, :cond_9

    .line 73
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/b/a/a$a;->a:Lmaster/flame/danmaku/danmaku/model/m;

    invoke-virtual {p1, v0, v2}, Lmaster/flame/danmaku/danmaku/model/d;->a(Lmaster/flame/danmaku/danmaku/model/m;Z)V

    .line 77
    :cond_9
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/d;->c()Z

    move-result v0

    if-nez v0, :cond_a

    .line 78
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/b/a/a$a;->a:Lmaster/flame/danmaku/danmaku/model/m;

    invoke-virtual {p1, v0, v2}, Lmaster/flame/danmaku/danmaku/model/d;->b(Lmaster/flame/danmaku/danmaku/model/m;Z)V

    .line 82
    :cond_a
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/b/a/a$a;->d:Lmaster/flame/danmaku/danmaku/b/a/a;

    invoke-static {v0}, Lmaster/flame/danmaku/danmaku/b/a/a;->d(Lmaster/flame/danmaku/danmaku/b/a/a;)Lmaster/flame/danmaku/danmaku/b/a/b;

    move-result-object v0

    iget-object v4, p0, Lmaster/flame/danmaku/danmaku/b/a/a$a;->a:Lmaster/flame/danmaku/danmaku/model/m;

    iget-object v5, p0, Lmaster/flame/danmaku/danmaku/b/a/a$a;->d:Lmaster/flame/danmaku/danmaku/b/a/a;

    invoke-static {v5}, Lmaster/flame/danmaku/danmaku/b/a/a;->c(Lmaster/flame/danmaku/danmaku/b/a/a;)Lmaster/flame/danmaku/danmaku/b/a/b$f;

    move-result-object v5

    invoke-virtual {v0, p1, v4, v5}, Lmaster/flame/danmaku/danmaku/b/a/b;->a(Lmaster/flame/danmaku/danmaku/model/d;Lmaster/flame/danmaku/danmaku/model/m;Lmaster/flame/danmaku/danmaku/b/a/b$f;)V

    .line 85
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/d;->e()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 86
    iget-object v0, p1, Lmaster/flame/danmaku/danmaku/model/d;->c:[Ljava/lang/String;

    if-nez v0, :cond_b

    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/d;->n()F

    move-result v0

    iget-object v4, p0, Lmaster/flame/danmaku/danmaku/b/a/a$a;->a:Lmaster/flame/danmaku/danmaku/model/m;

    invoke-interface {v4}, Lmaster/flame/danmaku/danmaku/model/m;->f()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v0, v0, v4

    if-lez v0, :cond_b

    return v2

    .line 89
    :cond_b
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/b/a/a$a;->a:Lmaster/flame/danmaku/danmaku/model/m;

    invoke-virtual {p1, v0}, Lmaster/flame/danmaku/danmaku/model/d;->a(Lmaster/flame/danmaku/danmaku/model/m;)I

    move-result v0

    const-wide/16 v4, 0x1

    if-ne v0, v3, :cond_c

    .line 91
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/b/a/a$a;->b:Lmaster/flame/danmaku/danmaku/b/a$b;

    iget-wide v6, v0, Lmaster/flame/danmaku/danmaku/b/a$b;->r:J

    add-long v8, v6, v4

    iput-wide v8, v0, Lmaster/flame/danmaku/danmaku/b/a$b;->r:J

    goto :goto_1

    :cond_c
    if-ne v0, v1, :cond_d

    .line 93
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/b/a/a$a;->b:Lmaster/flame/danmaku/danmaku/b/a$b;

    iget-wide v6, v0, Lmaster/flame/danmaku/danmaku/b/a$b;->s:J

    add-long v8, v6, v4

    iput-wide v8, v0, Lmaster/flame/danmaku/danmaku/b/a$b;->s:J

    .line 94
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/b/a/a$a;->d:Lmaster/flame/danmaku/danmaku/b/a/a;

    invoke-static {v0}, Lmaster/flame/danmaku/danmaku/b/a/a;->b(Lmaster/flame/danmaku/danmaku/b/a/a;)Lmaster/flame/danmaku/danmaku/model/k;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 95
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/b/a/a$a;->d:Lmaster/flame/danmaku/danmaku/b/a/a;

    invoke-static {v0}, Lmaster/flame/danmaku/danmaku/b/a/a;->b(Lmaster/flame/danmaku/danmaku/b/a/a;)Lmaster/flame/danmaku/danmaku/model/k;

    move-result-object v0

    invoke-interface {v0, p1}, Lmaster/flame/danmaku/danmaku/model/k;->a(Lmaster/flame/danmaku/danmaku/model/d;)V

    .line 98
    :cond_d
    :goto_1
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/b/a/a$a;->b:Lmaster/flame/danmaku/danmaku/b/a$b;

    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/d;->o()I

    move-result v1

    invoke-virtual {v0, v1, v3}, Lmaster/flame/danmaku/danmaku/b/a$b;->a(II)I

    .line 99
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/b/a/a$a;->b:Lmaster/flame/danmaku/danmaku/b/a$b;

    invoke-virtual {v0, v3}, Lmaster/flame/danmaku/danmaku/b/a$b;->a(I)I

    .line 100
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/b/a/a$a;->b:Lmaster/flame/danmaku/danmaku/b/a$b;

    invoke-virtual {v0, p1}, Lmaster/flame/danmaku/danmaku/b/a$b;->a(Lmaster/flame/danmaku/danmaku/model/d;)V

    .line 102
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/b/a/a$a;->d:Lmaster/flame/danmaku/danmaku/b/a/a;

    invoke-static {v0}, Lmaster/flame/danmaku/danmaku/b/a/a;->e(Lmaster/flame/danmaku/danmaku/b/a/a;)Lmaster/flame/danmaku/danmaku/b/a$a;

    move-result-object v0

    if-eqz v0, :cond_e

    iget v0, p1, Lmaster/flame/danmaku/danmaku/model/d;->I:I

    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/b/a/a$a;->d:Lmaster/flame/danmaku/danmaku/b/a/a;

    .line 103
    invoke-static {v1}, Lmaster/flame/danmaku/danmaku/b/a/a;->a(Lmaster/flame/danmaku/danmaku/b/a/a;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    move-result-object v1

    iget-object v1, v1, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->r:Lmaster/flame/danmaku/danmaku/model/j;

    iget v1, v1, Lmaster/flame/danmaku/danmaku/model/j;->d:I

    if-eq v0, v1, :cond_e

    .line 104
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/b/a/a$a;->d:Lmaster/flame/danmaku/danmaku/b/a/a;

    invoke-static {v0}, Lmaster/flame/danmaku/danmaku/b/a/a;->a(Lmaster/flame/danmaku/danmaku/b/a/a;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    move-result-object v0

    iget-object v0, v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->r:Lmaster/flame/danmaku/danmaku/model/j;

    iget v0, v0, Lmaster/flame/danmaku/danmaku/model/j;->d:I

    iput v0, p1, Lmaster/flame/danmaku/danmaku/model/d;->I:I

    .line 105
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/b/a/a$a;->d:Lmaster/flame/danmaku/danmaku/b/a/a;

    invoke-static {v0}, Lmaster/flame/danmaku/danmaku/b/a/a;->e(Lmaster/flame/danmaku/danmaku/b/a/a;)Lmaster/flame/danmaku/danmaku/b/a$a;

    move-result-object v0

    invoke-interface {v0, p1}, Lmaster/flame/danmaku/danmaku/b/a$a;->a(Lmaster/flame/danmaku/danmaku/model/d;)V

    :cond_e
    return v2

    :cond_f
    :goto_2
    return v2
.end method

.method public d()V
    .locals 2

    .line 113
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/b/a/a$a;->b:Lmaster/flame/danmaku/danmaku/b/a$b;

    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/b/a/a$a;->e:Lmaster/flame/danmaku/danmaku/model/d;

    iput-object v1, v0, Lmaster/flame/danmaku/danmaku/b/a$b;->e:Lmaster/flame/danmaku/danmaku/model/d;

    .line 114
    invoke-super {p0}, Lmaster/flame/danmaku/danmaku/model/l$c;->d()V

    return-void
.end method
