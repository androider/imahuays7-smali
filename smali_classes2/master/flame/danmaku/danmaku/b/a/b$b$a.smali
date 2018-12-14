.class public Lmaster/flame/danmaku/danmaku/b/a/b$b$a;
.super Lmaster/flame/danmaku/danmaku/model/l$b;
.source "DanmakusRetainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmaster/flame/danmaku/danmaku/b/a/b$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmaster/flame/danmaku/danmaku/model/l$b<",
        "Lmaster/flame/danmaku/danmaku/model/d;",
        "Lmaster/flame/danmaku/danmaku/b/a/b$e;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lmaster/flame/danmaku/danmaku/model/m;

.field b:I

.field public c:Lmaster/flame/danmaku/danmaku/model/d;

.field public d:Lmaster/flame/danmaku/danmaku/model/d;

.field public e:Lmaster/flame/danmaku/danmaku/model/d;

.field public f:Lmaster/flame/danmaku/danmaku/model/d;

.field public g:Lmaster/flame/danmaku/danmaku/model/d;

.field h:Z

.field i:Z

.field j:Z

.field final synthetic k:Lmaster/flame/danmaku/danmaku/b/a/b$b;


# direct methods
.method protected constructor <init>(Lmaster/flame/danmaku/danmaku/b/a/b$b;)V
    .locals 1

    .line 116
    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/b/a/b$b$a;->k:Lmaster/flame/danmaku/danmaku/b/a/b$b;

    invoke-direct {p0}, Lmaster/flame/danmaku/danmaku/model/l$b;-><init>()V

    const/4 p1, 0x0

    .line 118
    iput p1, p0, Lmaster/flame/danmaku/danmaku/b/a/b$b$a;->b:I

    const/4 v0, 0x0

    .line 119
    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/b/a/b$b$a;->c:Lmaster/flame/danmaku/danmaku/model/d;

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/b/a/b$b$a;->d:Lmaster/flame/danmaku/danmaku/model/d;

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/b/a/b$b$a;->e:Lmaster/flame/danmaku/danmaku/model/d;

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/b/a/b$b$a;->f:Lmaster/flame/danmaku/danmaku/model/d;

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/b/a/b$b$a;->g:Lmaster/flame/danmaku/danmaku/model/d;

    .line 120
    iput-boolean p1, p0, Lmaster/flame/danmaku/danmaku/b/a/b$b$a;->h:Z

    .line 121
    iput-boolean p1, p0, Lmaster/flame/danmaku/danmaku/b/a/b$b$a;->i:Z

    .line 122
    iput-boolean p1, p0, Lmaster/flame/danmaku/danmaku/b/a/b$b$a;->j:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)I
    .locals 0

    .line 116
    check-cast p1, Lmaster/flame/danmaku/danmaku/model/d;

    invoke-virtual {p0, p1}, Lmaster/flame/danmaku/danmaku/b/a/b$b$a;->a(Lmaster/flame/danmaku/danmaku/model/d;)I

    move-result p1

    return p1
.end method

.method public a(Lmaster/flame/danmaku/danmaku/model/d;)I
    .locals 10

    .line 133
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/b/a/b$b$a;->k:Lmaster/flame/danmaku/danmaku/b/a/b$b;

    iget-boolean v0, v0, Lmaster/flame/danmaku/danmaku/b/a/b$b;->d:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 136
    :cond_0
    iget v0, p0, Lmaster/flame/danmaku/danmaku/b/a/b$b$a;->b:I

    add-int/2addr v0, v1

    iput v0, p0, Lmaster/flame/danmaku/danmaku/b/a/b$b$a;->b:I

    .line 137
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/b/a/b$b$a;->g:Lmaster/flame/danmaku/danmaku/model/d;

    const/4 v2, 0x0

    if-ne p1, v0, :cond_1

    .line 138
    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/b/a/b$b$a;->c:Lmaster/flame/danmaku/danmaku/model/d;

    const/4 p1, 0x0

    .line 139
    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/b/a/b$b$a;->e:Lmaster/flame/danmaku/danmaku/model/d;

    .line 140
    iput-boolean v1, p0, Lmaster/flame/danmaku/danmaku/b/a/b$b$a;->i:Z

    .line 141
    iput-boolean v2, p0, Lmaster/flame/danmaku/danmaku/b/a/b$b$a;->j:Z

    return v1

    .line 145
    :cond_1
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/b/a/b$b$a;->d:Lmaster/flame/danmaku/danmaku/model/d;

    if-nez v0, :cond_2

    .line 146
    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/b/a/b$b$a;->d:Lmaster/flame/danmaku/danmaku/model/d;

    .line 148
    :cond_2
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/b/a/b$b$a;->g:Lmaster/flame/danmaku/danmaku/model/d;

    iget v0, v0, Lmaster/flame/danmaku/danmaku/model/d;->p:F

    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/d;->l()F

    move-result v3

    add-float/2addr v0, v3

    iget-object v3, p0, Lmaster/flame/danmaku/danmaku/b/a/b$b$a;->a:Lmaster/flame/danmaku/danmaku/model/m;

    invoke-interface {v3}, Lmaster/flame/danmaku/danmaku/model/m;->f()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_3

    .line 149
    iput-boolean v1, p0, Lmaster/flame/danmaku/danmaku/b/a/b$b$a;->h:Z

    return v1

    .line 153
    :cond_3
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/b/a/b$b$a;->f:Lmaster/flame/danmaku/danmaku/model/d;

    if-nez v0, :cond_4

    .line 154
    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/b/a/b$b$a;->f:Lmaster/flame/danmaku/danmaku/model/d;

    goto :goto_0

    .line 156
    :cond_4
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/b/a/b$b$a;->f:Lmaster/flame/danmaku/danmaku/model/d;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/d;->m()F

    move-result v0

    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/d;->m()F

    move-result v3

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_5

    .line 157
    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/b/a/b$b$a;->f:Lmaster/flame/danmaku/danmaku/model/d;

    .line 162
    :cond_5
    :goto_0
    iget-object v3, p0, Lmaster/flame/danmaku/danmaku/b/a/b$b$a;->a:Lmaster/flame/danmaku/danmaku/model/m;

    iget-object v5, p0, Lmaster/flame/danmaku/danmaku/b/a/b$b$a;->g:Lmaster/flame/danmaku/danmaku/model/d;

    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/b/a/b$b$a;->g:Lmaster/flame/danmaku/danmaku/model/d;

    .line 163
    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/d;->a()J

    move-result-wide v6

    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/b/a/b$b$a;->g:Lmaster/flame/danmaku/danmaku/model/d;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/d;->p()Lmaster/flame/danmaku/danmaku/model/f;

    move-result-object v0

    iget-wide v8, v0, Lmaster/flame/danmaku/danmaku/model/f;->a:J

    move-object v4, p1

    .line 162
    invoke-static/range {v3 .. v9}, Lmaster/flame/danmaku/danmaku/c/a;->a(Lmaster/flame/danmaku/danmaku/model/m;Lmaster/flame/danmaku/danmaku/model/d;Lmaster/flame/danmaku/danmaku/model/d;JJ)Z

    move-result v0

    iput-boolean v0, p0, Lmaster/flame/danmaku/danmaku/b/a/b$b$a;->j:Z

    .line 164
    iget-boolean v0, p0, Lmaster/flame/danmaku/danmaku/b/a/b$b$a;->j:Z

    if-nez v0, :cond_6

    .line 165
    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/b/a/b$b$a;->c:Lmaster/flame/danmaku/danmaku/model/d;

    return v1

    .line 169
    :cond_6
    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/b/a/b$b$a;->e:Lmaster/flame/danmaku/danmaku/model/d;

    return v2
.end method

.method public a()Lmaster/flame/danmaku/danmaku/b/a/b$e;
    .locals 2

    .line 175
    new-instance v0, Lmaster/flame/danmaku/danmaku/b/a/b$e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmaster/flame/danmaku/danmaku/b/a/b$e;-><init>(Lmaster/flame/danmaku/danmaku/b/a/b$1;)V

    .line 176
    iget v1, p0, Lmaster/flame/danmaku/danmaku/b/a/b$b$a;->b:I

    iput v1, v0, Lmaster/flame/danmaku/danmaku/b/a/b$e;->a:I

    .line 177
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/b/a/b$b$a;->d:Lmaster/flame/danmaku/danmaku/model/d;

    iput-object v1, v0, Lmaster/flame/danmaku/danmaku/b/a/b$e;->c:Lmaster/flame/danmaku/danmaku/model/d;

    .line 178
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/b/a/b$b$a;->c:Lmaster/flame/danmaku/danmaku/model/d;

    iput-object v1, v0, Lmaster/flame/danmaku/danmaku/b/a/b$e;->b:Lmaster/flame/danmaku/danmaku/model/d;

    .line 179
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/b/a/b$b$a;->e:Lmaster/flame/danmaku/danmaku/model/d;

    iput-object v1, v0, Lmaster/flame/danmaku/danmaku/b/a/b$e;->d:Lmaster/flame/danmaku/danmaku/model/d;

    .line 180
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/b/a/b$b$a;->f:Lmaster/flame/danmaku/danmaku/model/d;

    iput-object v1, v0, Lmaster/flame/danmaku/danmaku/b/a/b$e;->e:Lmaster/flame/danmaku/danmaku/model/d;

    .line 181
    iget-boolean v1, p0, Lmaster/flame/danmaku/danmaku/b/a/b$b$a;->h:Z

    iput-boolean v1, v0, Lmaster/flame/danmaku/danmaku/b/a/b$e;->g:Z

    .line 182
    iget-boolean v1, p0, Lmaster/flame/danmaku/danmaku/b/a/b$b$a;->i:Z

    iput-boolean v1, v0, Lmaster/flame/danmaku/danmaku/b/a/b$e;->h:Z

    .line 183
    iget-boolean v1, p0, Lmaster/flame/danmaku/danmaku/b/a/b$b$a;->j:Z

    iput-boolean v1, v0, Lmaster/flame/danmaku/danmaku/b/a/b$e;->i:Z

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .line 116
    invoke-virtual {p0}, Lmaster/flame/danmaku/danmaku/b/a/b$b$a;->a()Lmaster/flame/danmaku/danmaku/b/a/b$e;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .locals 2

    const/4 v0, 0x0

    .line 126
    iput v0, p0, Lmaster/flame/danmaku/danmaku/b/a/b$b$a;->b:I

    const/4 v1, 0x0

    .line 127
    iput-object v1, p0, Lmaster/flame/danmaku/danmaku/b/a/b$b$a;->f:Lmaster/flame/danmaku/danmaku/model/d;

    iput-object v1, p0, Lmaster/flame/danmaku/danmaku/b/a/b$b$a;->e:Lmaster/flame/danmaku/danmaku/model/d;

    iput-object v1, p0, Lmaster/flame/danmaku/danmaku/b/a/b$b$a;->d:Lmaster/flame/danmaku/danmaku/model/d;

    iput-object v1, p0, Lmaster/flame/danmaku/danmaku/b/a/b$b$a;->c:Lmaster/flame/danmaku/danmaku/model/d;

    .line 128
    iput-boolean v0, p0, Lmaster/flame/danmaku/danmaku/b/a/b$b$a;->j:Z

    iput-boolean v0, p0, Lmaster/flame/danmaku/danmaku/b/a/b$b$a;->i:Z

    iput-boolean v0, p0, Lmaster/flame/danmaku/danmaku/b/a/b$b$a;->h:Z

    return-void
.end method
