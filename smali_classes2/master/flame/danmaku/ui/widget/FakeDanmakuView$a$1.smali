.class Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$a$1;
.super Lmaster/flame/danmaku/danmaku/model/l$b;
.source "FakeDanmakuView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$a;->parse()Lmaster/flame/danmaku/danmaku/model/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmaster/flame/danmaku/danmaku/model/l$b<",
        "Lmaster/flame/danmaku/danmaku/model/d;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lmaster/flame/danmaku/danmaku/model/l;

.field final synthetic b:Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$a;


# direct methods
.method constructor <init>(Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$a;Lmaster/flame/danmaku/danmaku/model/l;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$a$1;->b:Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$a;

    iput-object p2, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$a$1;->a:Lmaster/flame/danmaku/danmaku/model/l;

    invoke-direct {p0}, Lmaster/flame/danmaku/danmaku/model/l$b;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)I
    .locals 0

    .line 54
    check-cast p1, Lmaster/flame/danmaku/danmaku/model/d;

    invoke-virtual {p0, p1}, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$a$1;->a(Lmaster/flame/danmaku/danmaku/model/d;)I

    move-result p1

    return p1
.end method

.method public a(Lmaster/flame/danmaku/danmaku/model/d;)I
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 57
    invoke-virtual/range {p1 .. p1}, Lmaster/flame/danmaku/danmaku/model/d;->r()J

    move-result-wide v3

    .line 58
    iget-object v5, v1, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$a$1;->b:Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$a;

    invoke-static {v5}, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$a;->a(Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$a;)J

    move-result-wide v5

    cmp-long v7, v3, v5

    const/4 v5, 0x0

    if-gez v7, :cond_0

    return v5

    .line 60
    :cond_0
    iget-object v6, v1, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$a$1;->b:Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$a;

    invoke-static {v6}, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$a;->b(Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$a;)J

    move-result-wide v6

    cmp-long v8, v3, v6

    if-lez v8, :cond_1

    const/4 v2, 0x1

    return v2

    .line 63
    :cond_1
    iget-object v3, v1, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$a$1;->b:Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$a;

    invoke-static {v3}, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$a;->d(Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$a;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    move-result-object v3

    iget-object v3, v3, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->t:Lmaster/flame/danmaku/danmaku/model/android/d;

    invoke-virtual/range {p1 .. p1}, Lmaster/flame/danmaku/danmaku/model/d;->o()I

    move-result v4

    iget-object v6, v1, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$a$1;->b:Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$a;

    invoke-static {v6}, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$a;->c(Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$a;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Lmaster/flame/danmaku/danmaku/model/android/d;->a(ILmaster/flame/danmaku/danmaku/model/android/DanmakuContext;)Lmaster/flame/danmaku/danmaku/model/d;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 65
    invoke-virtual/range {p1 .. p1}, Lmaster/flame/danmaku/danmaku/model/d;->r()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lmaster/flame/danmaku/danmaku/model/d;->d(J)V

    .line 66
    iget-object v4, v2, Lmaster/flame/danmaku/danmaku/model/d;->b:Ljava/lang/CharSequence;

    invoke-static {v3, v4}, Lmaster/flame/danmaku/danmaku/c/a;->a(Lmaster/flame/danmaku/danmaku/model/d;Ljava/lang/CharSequence;)V

    .line 67
    iget v4, v2, Lmaster/flame/danmaku/danmaku/model/d;->k:F

    iput v4, v3, Lmaster/flame/danmaku/danmaku/model/d;->k:F

    .line 68
    iget v4, v2, Lmaster/flame/danmaku/danmaku/model/d;->f:I

    iput v4, v3, Lmaster/flame/danmaku/danmaku/model/d;->f:I

    .line 69
    iget v4, v2, Lmaster/flame/danmaku/danmaku/model/d;->i:I

    iput v4, v3, Lmaster/flame/danmaku/danmaku/model/d;->i:I

    .line 71
    instance-of v4, v2, Lmaster/flame/danmaku/danmaku/model/q;

    if-eqz v4, :cond_2

    .line 72
    move-object v4, v2

    check-cast v4, Lmaster/flame/danmaku/danmaku/model/q;

    .line 73
    iget v2, v2, Lmaster/flame/danmaku/danmaku/model/d;->r:I

    iput v2, v3, Lmaster/flame/danmaku/danmaku/model/d;->r:I

    .line 74
    new-instance v2, Lmaster/flame/danmaku/danmaku/model/g;

    invoke-virtual {v4}, Lmaster/flame/danmaku/danmaku/model/q;->a()J

    move-result-wide v6

    invoke-direct {v2, v6, v7}, Lmaster/flame/danmaku/danmaku/model/g;-><init>(J)V

    iput-object v2, v3, Lmaster/flame/danmaku/danmaku/model/d;->q:Lmaster/flame/danmaku/danmaku/model/g;

    .line 75
    iget v2, v4, Lmaster/flame/danmaku/danmaku/model/q;->W:F

    iput v2, v3, Lmaster/flame/danmaku/danmaku/model/d;->g:F

    .line 76
    iget v2, v4, Lmaster/flame/danmaku/danmaku/model/q;->h:F

    iput v2, v3, Lmaster/flame/danmaku/danmaku/model/d;->h:F

    .line 77
    move-object v2, v3

    check-cast v2, Lmaster/flame/danmaku/danmaku/model/q;

    iget-boolean v6, v4, Lmaster/flame/danmaku/danmaku/model/q;->R:Z

    iput-boolean v6, v2, Lmaster/flame/danmaku/danmaku/model/q;->R:Z

    .line 79
    iget-object v2, v1, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$a$1;->b:Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$a;

    invoke-static {v2}, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$a;->g(Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$a;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    move-result-object v2

    iget-object v7, v2, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->t:Lmaster/flame/danmaku/danmaku/model/android/d;

    iget v9, v4, Lmaster/flame/danmaku/danmaku/model/q;->J:F

    iget v10, v4, Lmaster/flame/danmaku/danmaku/model/q;->K:F

    iget v11, v4, Lmaster/flame/danmaku/danmaku/model/q;->L:F

    iget v12, v4, Lmaster/flame/danmaku/danmaku/model/q;->M:F

    iget-wide v13, v4, Lmaster/flame/danmaku/danmaku/model/q;->P:J

    iget-wide v5, v4, Lmaster/flame/danmaku/danmaku/model/q;->Q:J

    iget-object v2, v1, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$a$1;->b:Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$a;

    .line 80
    invoke-static {v2}, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$a;->e(Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$a;)F

    move-result v17

    iget-object v2, v1, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$a$1;->b:Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$a;

    invoke-static {v2}, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$a;->f(Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$a;)F

    move-result v18

    move-object v8, v3

    move-wide v15, v5

    .line 79
    invoke-virtual/range {v7 .. v18}, Lmaster/flame/danmaku/danmaku/model/android/d;->a(Lmaster/flame/danmaku/danmaku/model/d;FFFFJJFF)V

    .line 81
    iget-object v2, v1, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$a$1;->b:Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$a;

    invoke-static {v2}, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$a;->h(Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$a;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    move-result-object v2

    iget-object v7, v2, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->t:Lmaster/flame/danmaku/danmaku/model/android/d;

    iget v9, v4, Lmaster/flame/danmaku/danmaku/model/q;->S:I

    iget v10, v4, Lmaster/flame/danmaku/danmaku/model/q;->T:I

    invoke-virtual {v3}, Lmaster/flame/danmaku/danmaku/model/d;->a()J

    move-result-wide v11

    invoke-virtual/range {v7 .. v12}, Lmaster/flame/danmaku/danmaku/model/android/d;->a(Lmaster/flame/danmaku/danmaku/model/d;IIJ)V

    const/4 v2, 0x0

    return v2

    .line 88
    :cond_2
    iget-object v4, v1, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$a$1;->b:Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$a;

    invoke-static {v4}, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$a;->i(Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$a;)Lmaster/flame/danmaku/danmaku/model/f;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmaster/flame/danmaku/danmaku/model/d;->a(Lmaster/flame/danmaku/danmaku/model/f;)V

    .line 89
    iget v4, v2, Lmaster/flame/danmaku/danmaku/model/d;->E:I

    iput v4, v3, Lmaster/flame/danmaku/danmaku/model/d;->E:I

    .line 90
    iget v2, v2, Lmaster/flame/danmaku/danmaku/model/d;->F:I

    iput v2, v3, Lmaster/flame/danmaku/danmaku/model/d;->F:I

    .line 91
    iget-object v2, v1, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$a$1;->b:Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$a;

    invoke-static {v2}, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$a;->j(Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$a;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    move-result-object v2

    iget-object v2, v2, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->r:Lmaster/flame/danmaku/danmaku/model/j;

    iput-object v2, v3, Lmaster/flame/danmaku/danmaku/model/d;->G:Lmaster/flame/danmaku/danmaku/model/j;

    .line 92
    iget-object v2, v1, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$a$1;->a:Lmaster/flame/danmaku/danmaku/model/l;

    invoke-interface {v2}, Lmaster/flame/danmaku/danmaku/model/l;->f()Ljava/lang/Object;

    move-result-object v2

    .line 93
    monitor-enter v2

    .line 94
    :try_start_0
    iget-object v4, v1, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$a$1;->a:Lmaster/flame/danmaku/danmaku/model/l;

    invoke-interface {v4, v3}, Lmaster/flame/danmaku/danmaku/model/l;->a(Lmaster/flame/danmaku/danmaku/model/d;)Z

    .line 95
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v3, v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_3
    :goto_0
    const/4 v2, 0x0

    return v2
.end method
