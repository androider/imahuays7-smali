.class final Lcom/google/android/exoplayer2/f;
.super Ljava/lang/Object;
.source "DefaultMediaClock.java"

# interfaces
.implements Lcom/google/android/exoplayer2/util/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/f$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/exoplayer2/util/u;

.field private final b:Lcom/google/android/exoplayer2/f$a;

.field private c:Lcom/google/android/exoplayer2/x;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private d:Lcom/google/android/exoplayer2/util/k;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/f$a;Lcom/google/android/exoplayer2/util/c;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/google/android/exoplayer2/f;->b:Lcom/google/android/exoplayer2/f$a;

    .line 59
    new-instance p1, Lcom/google/android/exoplayer2/util/u;

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/util/u;-><init>(Lcom/google/android/exoplayer2/util/c;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/f;->a:Lcom/google/android/exoplayer2/util/u;

    return-void
.end method

.method private f()V
    .locals 3

    .line 160
    iget-object v0, p0, Lcom/google/android/exoplayer2/f;->d:Lcom/google/android/exoplayer2/util/k;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/util/k;->d()J

    move-result-wide v0

    .line 161
    iget-object v2, p0, Lcom/google/android/exoplayer2/f;->a:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/exoplayer2/util/u;->a(J)V

    .line 162
    iget-object v0, p0, Lcom/google/android/exoplayer2/f;->d:Lcom/google/android/exoplayer2/util/k;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/util/k;->e()Lcom/google/android/exoplayer2/t;

    move-result-object v0

    .line 163
    iget-object v1, p0, Lcom/google/android/exoplayer2/f;->a:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/u;->e()Lcom/google/android/exoplayer2/t;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/t;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 164
    iget-object v1, p0, Lcom/google/android/exoplayer2/f;->a:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/util/u;->a(Lcom/google/android/exoplayer2/t;)Lcom/google/android/exoplayer2/t;

    .line 165
    iget-object v1, p0, Lcom/google/android/exoplayer2/f;->b:Lcom/google/android/exoplayer2/f$a;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/f$a;->a(Lcom/google/android/exoplayer2/t;)V

    :cond_0
    return-void
.end method

.method private g()Z
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/google/android/exoplayer2/f;->c:Lcom/google/android/exoplayer2/x;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/f;->c:Lcom/google/android/exoplayer2/x;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/x;->v()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/f;->c:Lcom/google/android/exoplayer2/x;

    .line 175
    invoke-interface {v0}, Lcom/google/android/exoplayer2/x;->u()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/f;->c:Lcom/google/android/exoplayer2/x;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/x;->g()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/t;)Lcom/google/android/exoplayer2/t;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/google/android/exoplayer2/f;->d:Lcom/google/android/exoplayer2/util/k;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/google/android/exoplayer2/f;->d:Lcom/google/android/exoplayer2/util/k;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/util/k;->a(Lcom/google/android/exoplayer2/t;)Lcom/google/android/exoplayer2/t;

    move-result-object p1

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/f;->a:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/u;->a(Lcom/google/android/exoplayer2/t;)Lcom/google/android/exoplayer2/t;

    .line 149
    iget-object v0, p0, Lcom/google/android/exoplayer2/f;->b:Lcom/google/android/exoplayer2/f$a;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/f$a;->a(Lcom/google/android/exoplayer2/t;)V

    return-object p1
.end method

.method public a()V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/google/android/exoplayer2/f;->a:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/u;->a()V

    return-void
.end method

.method public a(J)V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/google/android/exoplayer2/f;->a:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/util/u;->a(J)V

    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/x;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 94
    invoke-interface {p1}, Lcom/google/android/exoplayer2/x;->c()Lcom/google/android/exoplayer2/util/k;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 95
    iget-object v1, p0, Lcom/google/android/exoplayer2/f;->d:Lcom/google/android/exoplayer2/util/k;

    if-eq v0, v1, :cond_1

    .line 96
    iget-object v1, p0, Lcom/google/android/exoplayer2/f;->d:Lcom/google/android/exoplayer2/util/k;

    if-eqz v1, :cond_0

    .line 97
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Multiple renderer media clocks enabled."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->a(Ljava/lang/RuntimeException;)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    throw p1

    .line 100
    :cond_0
    iput-object v0, p0, Lcom/google/android/exoplayer2/f;->d:Lcom/google/android/exoplayer2/util/k;

    .line 101
    iput-object p1, p0, Lcom/google/android/exoplayer2/f;->c:Lcom/google/android/exoplayer2/x;

    .line 102
    iget-object p1, p0, Lcom/google/android/exoplayer2/f;->d:Lcom/google/android/exoplayer2/util/k;

    iget-object v0, p0, Lcom/google/android/exoplayer2/f;->a:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/u;->e()Lcom/google/android/exoplayer2/t;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/util/k;->a(Lcom/google/android/exoplayer2/t;)Lcom/google/android/exoplayer2/t;

    .line 103
    invoke-direct {p0}, Lcom/google/android/exoplayer2/f;->f()V

    :cond_1
    return-void
.end method

.method public b()V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/google/android/exoplayer2/f;->a:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/u;->b()V

    return-void
.end method

.method public b(Lcom/google/android/exoplayer2/x;)V
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/google/android/exoplayer2/f;->c:Lcom/google/android/exoplayer2/x;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 115
    iput-object p1, p0, Lcom/google/android/exoplayer2/f;->d:Lcom/google/android/exoplayer2/util/k;

    .line 116
    iput-object p1, p0, Lcom/google/android/exoplayer2/f;->c:Lcom/google/android/exoplayer2/x;

    :cond_0
    return-void
.end method

.method public c()J
    .locals 2

    .line 124
    invoke-direct {p0}, Lcom/google/android/exoplayer2/f;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    invoke-direct {p0}, Lcom/google/android/exoplayer2/f;->f()V

    .line 126
    iget-object v0, p0, Lcom/google/android/exoplayer2/f;->d:Lcom/google/android/exoplayer2/util/k;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/util/k;->d()J

    move-result-wide v0

    return-wide v0

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/f;->a:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/u;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method public d()J
    .locals 2

    .line 136
    invoke-direct {p0}, Lcom/google/android/exoplayer2/f;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/google/android/exoplayer2/f;->d:Lcom/google/android/exoplayer2/util/k;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/util/k;->d()J

    move-result-wide v0

    return-wide v0

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/f;->a:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/u;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method public e()Lcom/google/android/exoplayer2/t;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/google/android/exoplayer2/f;->d:Lcom/google/android/exoplayer2/util/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/f;->d:Lcom/google/android/exoplayer2/util/k;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/util/k;->e()Lcom/google/android/exoplayer2/t;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/f;->a:Lcom/google/android/exoplayer2/util/u;

    .line 156
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/u;->e()Lcom/google/android/exoplayer2/t;

    move-result-object v0

    :goto_0
    return-object v0
.end method
