.class public Lmaster/flame/danmaku/danmaku/b/a/a;
.super Lmaster/flame/danmaku/danmaku/b/b;
.source "DanmakuRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmaster/flame/danmaku/danmaku/b/a/a$a;
    }
.end annotation


# instance fields
.field private a:Lmaster/flame/danmaku/danmaku/model/f;

.field private final b:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

.field private c:Lmaster/flame/danmaku/danmaku/b/a/b$f;

.field private final d:Lmaster/flame/danmaku/danmaku/b/a/b$f;

.field private final e:Lmaster/flame/danmaku/danmaku/b/a/b;

.field private f:Lmaster/flame/danmaku/danmaku/model/k;

.field private g:Lmaster/flame/danmaku/danmaku/b/a$a;

.field private h:Lmaster/flame/danmaku/danmaku/b/a/a$a;


# direct methods
.method public constructor <init>(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;)V
    .locals 2

    .line 136
    invoke-direct {p0}, Lmaster/flame/danmaku/danmaku/b/b;-><init>()V

    .line 121
    new-instance v0, Lmaster/flame/danmaku/danmaku/b/a/a$1;

    invoke-direct {v0, p0}, Lmaster/flame/danmaku/danmaku/b/a/a$1;-><init>(Lmaster/flame/danmaku/danmaku/b/a/a;)V

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/b/a/a;->d:Lmaster/flame/danmaku/danmaku/b/a/b$f;

    .line 134
    new-instance v0, Lmaster/flame/danmaku/danmaku/b/a/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmaster/flame/danmaku/danmaku/b/a/a$a;-><init>(Lmaster/flame/danmaku/danmaku/b/a/a;Lmaster/flame/danmaku/danmaku/b/a/a$1;)V

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/b/a/a;->h:Lmaster/flame/danmaku/danmaku/b/a/a$a;

    .line 137
    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/b/a/a;->b:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    .line 138
    new-instance v0, Lmaster/flame/danmaku/danmaku/b/a/b;

    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->d()Z

    move-result p1

    invoke-direct {v0, p1}, Lmaster/flame/danmaku/danmaku/b/a/b;-><init>(Z)V

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/b/a/a;->e:Lmaster/flame/danmaku/danmaku/b/a/b;

    return-void
.end method

.method static synthetic a(Lmaster/flame/danmaku/danmaku/b/a/a;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 0

    .line 30
    iget-object p0, p0, Lmaster/flame/danmaku/danmaku/b/a/a;->b:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    return-object p0
.end method

.method static synthetic b(Lmaster/flame/danmaku/danmaku/b/a/a;)Lmaster/flame/danmaku/danmaku/model/k;
    .locals 0

    .line 30
    iget-object p0, p0, Lmaster/flame/danmaku/danmaku/b/a/a;->f:Lmaster/flame/danmaku/danmaku/model/k;

    return-object p0
.end method

.method static synthetic c(Lmaster/flame/danmaku/danmaku/b/a/a;)Lmaster/flame/danmaku/danmaku/b/a/b$f;
    .locals 0

    .line 30
    iget-object p0, p0, Lmaster/flame/danmaku/danmaku/b/a/a;->c:Lmaster/flame/danmaku/danmaku/b/a/b$f;

    return-object p0
.end method

.method static synthetic d(Lmaster/flame/danmaku/danmaku/b/a/a;)Lmaster/flame/danmaku/danmaku/b/a/b;
    .locals 0

    .line 30
    iget-object p0, p0, Lmaster/flame/danmaku/danmaku/b/a/a;->e:Lmaster/flame/danmaku/danmaku/b/a/b;

    return-object p0
.end method

.method static synthetic e(Lmaster/flame/danmaku/danmaku/b/a/a;)Lmaster/flame/danmaku/danmaku/b/a$a;
    .locals 0

    .line 30
    iget-object p0, p0, Lmaster/flame/danmaku/danmaku/b/a/a;->g:Lmaster/flame/danmaku/danmaku/b/a$a;

    return-object p0
.end method

.method static synthetic f(Lmaster/flame/danmaku/danmaku/b/a/a;)Lmaster/flame/danmaku/danmaku/model/f;
    .locals 0

    .line 30
    iget-object p0, p0, Lmaster/flame/danmaku/danmaku/b/a/a;->a:Lmaster/flame/danmaku/danmaku/model/f;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 143
    invoke-virtual {p0}, Lmaster/flame/danmaku/danmaku/b/a/a;->b()V

    .line 144
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/b/a/a;->b:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v0, v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->s:Lmaster/flame/danmaku/a/b;

    invoke-virtual {v0}, Lmaster/flame/danmaku/a/b;->a()V

    return-void
.end method

.method public a(Lmaster/flame/danmaku/danmaku/model/k;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/b/a/a;->f:Lmaster/flame/danmaku/danmaku/model/k;

    return-void
.end method

.method public a(Lmaster/flame/danmaku/danmaku/model/m;Lmaster/flame/danmaku/danmaku/model/l;JLmaster/flame/danmaku/danmaku/b/a$b;)V
    .locals 1

    .line 165
    iget-object v0, p5, Lmaster/flame/danmaku/danmaku/b/a$b;->b:Lmaster/flame/danmaku/danmaku/model/f;

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/b/a/a;->a:Lmaster/flame/danmaku/danmaku/model/f;

    .line 166
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/b/a/a;->h:Lmaster/flame/danmaku/danmaku/b/a/a$a;

    iput-object p1, v0, Lmaster/flame/danmaku/danmaku/b/a/a$a;->a:Lmaster/flame/danmaku/danmaku/model/m;

    .line 167
    iget-object p1, p0, Lmaster/flame/danmaku/danmaku/b/a/a;->h:Lmaster/flame/danmaku/danmaku/b/a/a$a;

    iput-object p5, p1, Lmaster/flame/danmaku/danmaku/b/a/a$a;->b:Lmaster/flame/danmaku/danmaku/b/a$b;

    .line 168
    iget-object p1, p0, Lmaster/flame/danmaku/danmaku/b/a/a;->h:Lmaster/flame/danmaku/danmaku/b/a/a$a;

    iput-wide p3, p1, Lmaster/flame/danmaku/danmaku/b/a/a$a;->c:J

    .line 169
    iget-object p1, p0, Lmaster/flame/danmaku/danmaku/b/a/a;->h:Lmaster/flame/danmaku/danmaku/b/a/a$a;

    invoke-interface {p2, p1}, Lmaster/flame/danmaku/danmaku/model/l;->a(Lmaster/flame/danmaku/danmaku/model/l$b;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 160
    iget-object p1, p0, Lmaster/flame/danmaku/danmaku/b/a/a;->d:Lmaster/flame/danmaku/danmaku/b/a/b$f;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/b/a/a;->c:Lmaster/flame/danmaku/danmaku/b/a/b$f;

    return-void
.end method

.method public b()V
    .locals 1

    .line 149
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/b/a/a;->e:Lmaster/flame/danmaku/danmaku/b/a/b;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/b/a/b;->a()V

    return-void
.end method

.method public b(Z)V
    .locals 1

    .line 187
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/b/a/a;->e:Lmaster/flame/danmaku/danmaku/b/a/b;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/b/a/a;->e:Lmaster/flame/danmaku/danmaku/b/a/b;

    invoke-virtual {v0, p1}, Lmaster/flame/danmaku/danmaku/b/a/b;->a(Z)V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    .line 154
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/b/a/a;->e:Lmaster/flame/danmaku/danmaku/b/a/b;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/b/a/b;->b()V

    .line 155
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/b/a/a;->b:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v0, v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->s:Lmaster/flame/danmaku/a/b;

    invoke-virtual {v0}, Lmaster/flame/danmaku/a/b;->a()V

    return-void
.end method

.method public setOnDanmakuShownListener(Lmaster/flame/danmaku/danmaku/b/a$a;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/b/a/a;->g:Lmaster/flame/danmaku/danmaku/b/a$a;

    return-void
.end method
