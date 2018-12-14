.class public final Lcom/google/android/exoplayer2/source/h;
.super Ljava/lang/Object;
.source "DeferredMediaPeriod.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/n;
.implements Lcom/google/android/exoplayer2/source/n$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/h$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/google/android/exoplayer2/source/o;

.field public final b:Lcom/google/android/exoplayer2/source/o$a;

.field private final c:Lcom/google/android/exoplayer2/upstream/b;

.field private d:Lcom/google/android/exoplayer2/source/n;

.field private e:Lcom/google/android/exoplayer2/source/n$a;

.field private f:J

.field private g:Lcom/google/android/exoplayer2/source/h$a;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private h:Z

.field private i:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/o;Lcom/google/android/exoplayer2/source/o$a;Lcom/google/android/exoplayer2/upstream/b;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/h;->b:Lcom/google/android/exoplayer2/source/o$a;

    .line 64
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/h;->c:Lcom/google/android/exoplayer2/upstream/b;

    .line 65
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/h;->a:Lcom/google/android/exoplayer2/source/o;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 66
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/h;->i:J

    return-void
.end method


# virtual methods
.method public a(JLcom/google/android/exoplayer2/ab;)J
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/h;->d:Lcom/google/android/exoplayer2/source/n;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/n;->a(JLcom/google/android/exoplayer2/ab;)J

    move-result-wide p1

    return-wide p1
.end method

.method public a([Lcom/google/android/exoplayer2/trackselection/e;[Z[Lcom/google/android/exoplayer2/source/t;[ZJ)J
    .locals 12

    move-object v0, p0

    .line 156
    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/h;->i:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    const-wide/16 v1, 0x0

    cmp-long v7, p5, v1

    if-nez v7, :cond_0

    .line 157
    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/h;->i:J

    .line 158
    iput-wide v3, v0, Lcom/google/android/exoplayer2/source/h;->i:J

    move-wide v10, v1

    goto :goto_0

    :cond_0
    move-wide/from16 v10, p5

    .line 160
    :goto_0
    iget-object v5, v0, Lcom/google/android/exoplayer2/source/h;->d:Lcom/google/android/exoplayer2/source/n;

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    move-object/from16 v9, p4

    invoke-interface/range {v5 .. v11}, Lcom/google/android/exoplayer2/source/n;->a([Lcom/google/android/exoplayer2/trackselection/e;[Z[Lcom/google/android/exoplayer2/source/t;[ZJ)J

    move-result-wide v1

    return-wide v1
.end method

.method public a(J)V
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/h;->d:Lcom/google/android/exoplayer2/source/n;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/source/n;->a(J)V

    return-void
.end method

.method public a(JZ)V
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/h;->d:Lcom/google/android/exoplayer2/source/n;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/n;->a(JZ)V

    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/source/h$a;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/h;->g:Lcom/google/android/exoplayer2/source/h$a;

    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/source/n$a;J)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/h;->e:Lcom/google/android/exoplayer2/source/n$a;

    .line 123
    iput-wide p2, p0, Lcom/google/android/exoplayer2/source/h;->f:J

    .line 124
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/h;->d:Lcom/google/android/exoplayer2/source/n;

    if-eqz p1, :cond_0

    .line 125
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/h;->d:Lcom/google/android/exoplayer2/source/n;

    invoke-interface {p1, p0, p2, p3}, Lcom/google/android/exoplayer2/source/n;->a(Lcom/google/android/exoplayer2/source/n$a;J)V

    :cond_0
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/source/n;)V
    .locals 0

    .line 213
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/h;->e:Lcom/google/android/exoplayer2/source/n$a;

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/source/n$a;->a(Lcom/google/android/exoplayer2/source/n;)V

    return-void
.end method

.method public synthetic a(Lcom/google/android/exoplayer2/source/u;)V
    .locals 0

    .line 32
    check-cast p1, Lcom/google/android/exoplayer2/source/n;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/h;->b(Lcom/google/android/exoplayer2/source/n;)V

    return-void
.end method

.method public b(J)J
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/h;->d:Lcom/google/android/exoplayer2/source/n;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/source/n;->b(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public b()Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/h;->d:Lcom/google/android/exoplayer2/source/n;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/n;->b()Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/google/android/exoplayer2/source/n;)V
    .locals 0

    .line 206
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/h;->e:Lcom/google/android/exoplayer2/source/n$a;

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/source/n$a;->a(Lcom/google/android/exoplayer2/source/u;)V

    return-void
.end method

.method public c()J
    .locals 2

    .line 171
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/h;->d:Lcom/google/android/exoplayer2/source/n;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/n;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public c(J)Z
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/h;->d:Lcom/google/android/exoplayer2/source/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/h;->d:Lcom/google/android/exoplayer2/source/n;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/source/n;->c(J)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public c_()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 132
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/h;->d:Lcom/google/android/exoplayer2/source/n;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/h;->d:Lcom/google/android/exoplayer2/source/n;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/n;->c_()V

    goto :goto_0

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/h;->a:Lcom/google/android/exoplayer2/source/o;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/o;->b()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 138
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/h;->g:Lcom/google/android/exoplayer2/source/h$a;

    if-nez v1, :cond_1

    .line 139
    throw v0

    .line 141
    :cond_1
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/source/h;->h:Z

    if-nez v1, :cond_2

    const/4 v1, 0x1

    .line 142
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/source/h;->h:Z

    .line 143
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/h;->g:Lcom/google/android/exoplayer2/source/h$a;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/h;->b:Lcom/google/android/exoplayer2/source/o$a;

    invoke-interface {v1, v2, v0}, Lcom/google/android/exoplayer2/source/h$a;->a(Lcom/google/android/exoplayer2/source/o$a;Ljava/io/IOException;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public d()J
    .locals 2

    .line 176
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/h;->d:Lcom/google/android/exoplayer2/source/n;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/n;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method public e()J
    .locals 2

    .line 191
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/h;->d:Lcom/google/android/exoplayer2/source/n;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/n;->e()J

    move-result-wide v0

    return-wide v0
.end method

.method public f()V
    .locals 3

    .line 105
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/h;->a:Lcom/google/android/exoplayer2/source/o;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/h;->b:Lcom/google/android/exoplayer2/source/o$a;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/h;->c:Lcom/google/android/exoplayer2/upstream/b;

    invoke-interface {v0, v1, v2}, Lcom/google/android/exoplayer2/source/o;->a(Lcom/google/android/exoplayer2/source/o$a;Lcom/google/android/exoplayer2/upstream/b;)Lcom/google/android/exoplayer2/source/n;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/h;->d:Lcom/google/android/exoplayer2/source/n;

    .line 106
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/h;->e:Lcom/google/android/exoplayer2/source/n$a;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/h;->d:Lcom/google/android/exoplayer2/source/n;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/h;->f:J

    invoke-interface {v0, p0, v1, v2}, Lcom/google/android/exoplayer2/source/n;->a(Lcom/google/android/exoplayer2/source/n$a;J)V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/h;->d:Lcom/google/android/exoplayer2/source/n;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/h;->a:Lcom/google/android/exoplayer2/source/o;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/h;->d:Lcom/google/android/exoplayer2/source/n;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/source/o;->a(Lcom/google/android/exoplayer2/source/n;)V

    :cond_0
    return-void
.end method
