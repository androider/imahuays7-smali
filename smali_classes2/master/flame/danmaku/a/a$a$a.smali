.class public Lmaster/flame/danmaku/a/a$a$a;
.super Landroid/os/Handler;
.source "CacheManagingDrawTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmaster/flame/danmaku/a/a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lmaster/flame/danmaku/a/a$a;

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>(Lmaster/flame/danmaku/a/a$a;Landroid/os/Looper;)V
    .locals 0

    .line 518
    iput-object p1, p0, Lmaster/flame/danmaku/a/a$a$a;->a:Lmaster/flame/danmaku/a/a$a;

    .line 519
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method static synthetic a(Lmaster/flame/danmaku/a/a$a$a;Lmaster/flame/danmaku/danmaku/model/d;Z)B
    .locals 0

    .line 484
    invoke-direct {p0, p1, p2}, Lmaster/flame/danmaku/a/a$a$a;->a(Lmaster/flame/danmaku/danmaku/model/d;Z)B

    move-result p0

    return p0
.end method

.method private a(Lmaster/flame/danmaku/danmaku/model/d;Z)B
    .locals 6

    .line 871
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/d;->b()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 872
    iget-object v0, p0, Lmaster/flame/danmaku/a/a$a$a;->a:Lmaster/flame/danmaku/a/a$a;

    iget-object v0, v0, Lmaster/flame/danmaku/a/a$a;->e:Lmaster/flame/danmaku/a/a;

    iget-object v0, v0, Lmaster/flame/danmaku/a/a;->b:Lmaster/flame/danmaku/danmaku/model/b;

    invoke-virtual {p1, v0, v1}, Lmaster/flame/danmaku/danmaku/model/d;->a(Lmaster/flame/danmaku/danmaku/model/m;Z)V

    :cond_0
    const/4 v0, 0x0

    .line 878
    :try_start_0
    iget-object v2, p0, Lmaster/flame/danmaku/a/a$a$a;->a:Lmaster/flame/danmaku/a/a$a;

    iget-object v3, p0, Lmaster/flame/danmaku/a/a$a$a;->a:Lmaster/flame/danmaku/a/a$a;

    iget-object v3, v3, Lmaster/flame/danmaku/a/a$a;->e:Lmaster/flame/danmaku/a/a;

    iget-object v3, v3, Lmaster/flame/danmaku/a/a;->a:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v3, v3, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->u:Lmaster/flame/danmaku/danmaku/model/android/c;

    iget v3, v3, Lmaster/flame/danmaku/danmaku/model/android/c;->i:I

    invoke-static {v2, p1, v1, v3}, Lmaster/flame/danmaku/a/a$a;->a(Lmaster/flame/danmaku/a/a$a;Lmaster/flame/danmaku/danmaku/model/d;ZI)Lmaster/flame/danmaku/danmaku/model/d;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 880
    iget-object v2, v2, Lmaster/flame/danmaku/danmaku/model/d;->w:Lmaster/flame/danmaku/danmaku/model/n;

    check-cast v2, Lmaster/flame/danmaku/danmaku/model/android/f;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    move-object v2, v0

    :goto_0
    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 883
    :try_start_1
    invoke-virtual {v2}, Lmaster/flame/danmaku/danmaku/model/android/f;->k()V

    .line 884
    iput-object v2, p1, Lmaster/flame/danmaku/danmaku/model/d;->w:Lmaster/flame/danmaku/danmaku/model/n;

    .line 886
    iget-object v0, p0, Lmaster/flame/danmaku/a/a$a$a;->a:Lmaster/flame/danmaku/a/a$a;

    iget-object v0, v0, Lmaster/flame/danmaku/a/a$a;->e:Lmaster/flame/danmaku/a/a;

    invoke-static {v0}, Lmaster/flame/danmaku/a/a;->d(Lmaster/flame/danmaku/a/a;)Lmaster/flame/danmaku/a/a$a;

    move-result-object v0

    invoke-static {v0, p1, v3, p2}, Lmaster/flame/danmaku/a/a$a;->a(Lmaster/flame/danmaku/a/a$a;Lmaster/flame/danmaku/danmaku/model/d;IZ)Z

    return v3

    .line 891
    :cond_2
    iget-object v4, p0, Lmaster/flame/danmaku/a/a$a$a;->a:Lmaster/flame/danmaku/a/a$a;

    iget-object v5, p0, Lmaster/flame/danmaku/a/a$a$a;->a:Lmaster/flame/danmaku/a/a$a;

    iget-object v5, v5, Lmaster/flame/danmaku/a/a$a;->e:Lmaster/flame/danmaku/a/a;

    iget-object v5, v5, Lmaster/flame/danmaku/a/a;->a:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v5, v5, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->u:Lmaster/flame/danmaku/danmaku/model/android/c;

    iget v5, v5, Lmaster/flame/danmaku/danmaku/model/android/c;->j:I

    invoke-static {v4, p1, v3, v5}, Lmaster/flame/danmaku/a/a$a;->a(Lmaster/flame/danmaku/a/a$a;Lmaster/flame/danmaku/danmaku/model/d;ZI)Lmaster/flame/danmaku/danmaku/model/d;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 893
    iget-object v5, v4, Lmaster/flame/danmaku/danmaku/model/d;->w:Lmaster/flame/danmaku/danmaku/model/n;

    check-cast v5, Lmaster/flame/danmaku/danmaku/model/android/f;

    move-object v2, v5

    :cond_3
    if-eqz v2, :cond_4

    .line 896
    iput-object v0, v4, Lmaster/flame/danmaku/danmaku/model/d;->w:Lmaster/flame/danmaku/danmaku/model/n;

    .line 898
    iget-object v0, p0, Lmaster/flame/danmaku/a/a$a$a;->a:Lmaster/flame/danmaku/a/a$a;

    iget-object v0, v0, Lmaster/flame/danmaku/a/a$a;->e:Lmaster/flame/danmaku/a/a;

    iget-object v0, v0, Lmaster/flame/danmaku/a/a;->b:Lmaster/flame/danmaku/danmaku/model/b;

    iget-object v4, p0, Lmaster/flame/danmaku/a/a$a$a;->a:Lmaster/flame/danmaku/a/a$a;

    iget-object v4, v4, Lmaster/flame/danmaku/a/a$a;->e:Lmaster/flame/danmaku/a/a;

    iget-object v4, v4, Lmaster/flame/danmaku/a/a;->a:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v4, v4, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->u:Lmaster/flame/danmaku/danmaku/model/android/c;

    iget v4, v4, Lmaster/flame/danmaku/danmaku/model/android/c;->d:I

    invoke-static {p1, v0, v2, v4}, Lmaster/flame/danmaku/danmaku/c/a;->a(Lmaster/flame/danmaku/danmaku/model/d;Lmaster/flame/danmaku/danmaku/model/m;Lmaster/flame/danmaku/danmaku/model/android/f;I)Lmaster/flame/danmaku/danmaku/model/android/f;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 899
    :try_start_2
    iput-object v0, p1, Lmaster/flame/danmaku/danmaku/model/d;->w:Lmaster/flame/danmaku/danmaku/model/n;

    .line 900
    iget-object v2, p0, Lmaster/flame/danmaku/a/a$a$a;->a:Lmaster/flame/danmaku/a/a$a;

    iget-object v2, v2, Lmaster/flame/danmaku/a/a$a;->e:Lmaster/flame/danmaku/a/a;

    invoke-static {v2}, Lmaster/flame/danmaku/a/a;->d(Lmaster/flame/danmaku/a/a;)Lmaster/flame/danmaku/a/a$a;

    move-result-object v2

    invoke-static {v2, p1, v3, p2}, Lmaster/flame/danmaku/a/a$a;->a(Lmaster/flame/danmaku/a/a$a;Lmaster/flame/danmaku/danmaku/model/d;IZ)Z
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return v3

    .line 905
    :cond_4
    :try_start_3
    iget v0, p1, Lmaster/flame/danmaku/danmaku/model/d;->o:F

    float-to-int v0, v0

    iget v4, p1, Lmaster/flame/danmaku/danmaku/model/d;->p:F

    float-to-int v4, v4

    iget-object v5, p0, Lmaster/flame/danmaku/a/a$a$a;->a:Lmaster/flame/danmaku/a/a$a;

    iget-object v5, v5, Lmaster/flame/danmaku/a/a$a;->e:Lmaster/flame/danmaku/a/a;

    iget-object v5, v5, Lmaster/flame/danmaku/a/a;->a:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v5, v5, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->u:Lmaster/flame/danmaku/danmaku/model/android/c;

    iget v5, v5, Lmaster/flame/danmaku/danmaku/model/android/c;->d:I

    div-int/lit8 v5, v5, 0x8

    invoke-static {v0, v4, v5}, Lmaster/flame/danmaku/danmaku/c/a;->a(III)I

    move-result v0

    mul-int/lit8 v4, v0, 0x2

    .line 906
    iget-object v5, p0, Lmaster/flame/danmaku/a/a$a$a;->a:Lmaster/flame/danmaku/a/a$a;

    iget-object v5, v5, Lmaster/flame/danmaku/a/a$a;->e:Lmaster/flame/danmaku/a/a;

    invoke-static {v5}, Lmaster/flame/danmaku/a/a;->b(Lmaster/flame/danmaku/a/a;)I

    move-result v5

    if-le v4, v5, :cond_5

    return v1

    :cond_5
    if-nez p2, :cond_6

    .line 910
    iget-object v4, p0, Lmaster/flame/danmaku/a/a$a$a;->a:Lmaster/flame/danmaku/a/a$a;

    invoke-static {v4}, Lmaster/flame/danmaku/a/a$a;->g(Lmaster/flame/danmaku/a/a$a;)I

    move-result v4

    add-int/2addr v4, v0

    iget-object v5, p0, Lmaster/flame/danmaku/a/a$a$a;->a:Lmaster/flame/danmaku/a/a$a;

    invoke-static {v5}, Lmaster/flame/danmaku/a/a$a;->h(Lmaster/flame/danmaku/a/a$a;)I

    move-result v5

    if-le v4, v5, :cond_6

    .line 912
    iget-object p2, p0, Lmaster/flame/danmaku/a/a$a$a;->a:Lmaster/flame/danmaku/a/a$a;

    iget-object p2, p2, Lmaster/flame/danmaku/a/a$a;->e:Lmaster/flame/danmaku/a/a;

    invoke-static {p2}, Lmaster/flame/danmaku/a/a;->d(Lmaster/flame/danmaku/a/a;)Lmaster/flame/danmaku/a/a$a;

    move-result-object p2

    invoke-static {p2, v0, v3}, Lmaster/flame/danmaku/a/a$a;->a(Lmaster/flame/danmaku/a/a$a;IZ)V

    return v1

    .line 916
    :cond_6
    iget-object v0, p0, Lmaster/flame/danmaku/a/a$a$a;->a:Lmaster/flame/danmaku/a/a$a;

    iget-object v0, v0, Lmaster/flame/danmaku/a/a$a;->d:Lmaster/flame/danmaku/danmaku/model/a/b;

    invoke-interface {v0}, Lmaster/flame/danmaku/danmaku/model/a/b;->a()Lmaster/flame/danmaku/danmaku/model/a/c;

    move-result-object v0

    check-cast v0, Lmaster/flame/danmaku/danmaku/model/android/f;
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 917
    :try_start_4
    iget-object v2, p0, Lmaster/flame/danmaku/a/a$a$a;->a:Lmaster/flame/danmaku/a/a$a;

    iget-object v2, v2, Lmaster/flame/danmaku/a/a$a;->e:Lmaster/flame/danmaku/a/a;

    iget-object v2, v2, Lmaster/flame/danmaku/a/a;->b:Lmaster/flame/danmaku/danmaku/model/b;

    iget-object v3, p0, Lmaster/flame/danmaku/a/a$a$a;->a:Lmaster/flame/danmaku/a/a$a;

    iget-object v3, v3, Lmaster/flame/danmaku/a/a$a;->e:Lmaster/flame/danmaku/a/a;

    iget-object v3, v3, Lmaster/flame/danmaku/a/a;->a:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v3, v3, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->u:Lmaster/flame/danmaku/danmaku/model/android/c;

    iget v3, v3, Lmaster/flame/danmaku/danmaku/model/android/c;->d:I

    invoke-static {p1, v2, v0, v3}, Lmaster/flame/danmaku/danmaku/c/a;->a(Lmaster/flame/danmaku/danmaku/model/d;Lmaster/flame/danmaku/danmaku/model/m;Lmaster/flame/danmaku/danmaku/model/android/f;I)Lmaster/flame/danmaku/danmaku/model/android/f;

    move-result-object v2
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 918
    :try_start_5
    iput-object v2, p1, Lmaster/flame/danmaku/danmaku/model/d;->w:Lmaster/flame/danmaku/danmaku/model/n;

    .line 919
    iget-object v0, p0, Lmaster/flame/danmaku/a/a$a$a;->a:Lmaster/flame/danmaku/a/a$a;

    iget-object v0, v0, Lmaster/flame/danmaku/a/a$a;->e:Lmaster/flame/danmaku/a/a;

    invoke-static {v0}, Lmaster/flame/danmaku/a/a;->d(Lmaster/flame/danmaku/a/a;)Lmaster/flame/danmaku/a/a$a;

    move-result-object v0

    iget-object v3, p0, Lmaster/flame/danmaku/a/a$a$a;->a:Lmaster/flame/danmaku/a/a$a;

    invoke-virtual {v3, p1}, Lmaster/flame/danmaku/a/a$a;->b(Lmaster/flame/danmaku/danmaku/model/d;)I

    move-result v3

    invoke-static {v0, p1, v3, p2}, Lmaster/flame/danmaku/a/a$a;->a(Lmaster/flame/danmaku/a/a$a;Lmaster/flame/danmaku/danmaku/model/d;IZ)Z

    move-result p2

    if-nez p2, :cond_7

    .line 921
    invoke-direct {p0, p1, v2}, Lmaster/flame/danmaku/a/a$a$a;->a(Lmaster/flame/danmaku/danmaku/model/d;Lmaster/flame/danmaku/danmaku/model/android/f;)V
    :try_end_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :cond_7
    xor-int/lit8 p1, p2, 0x1

    return p1

    :catch_0
    move-object v2, v0

    .line 932
    :catch_1
    invoke-direct {p0, p1, v2}, Lmaster/flame/danmaku/a/a$a$a;->a(Lmaster/flame/danmaku/danmaku/model/d;Lmaster/flame/danmaku/danmaku/model/android/f;)V

    return v1

    :catch_2
    move-object v2, v0

    .line 928
    :catch_3
    invoke-direct {p0, p1, v2}, Lmaster/flame/danmaku/a/a$a$a;->a(Lmaster/flame/danmaku/danmaku/model/d;Lmaster/flame/danmaku/danmaku/model/android/f;)V

    return v1
.end method

.method private a(Lmaster/flame/danmaku/danmaku/model/d;Lmaster/flame/danmaku/danmaku/model/android/f;)V
    .locals 1

    if-nez p2, :cond_0

    .line 676
    iget-object p2, p1, Lmaster/flame/danmaku/danmaku/model/d;->w:Lmaster/flame/danmaku/danmaku/model/n;

    check-cast p2, Lmaster/flame/danmaku/danmaku/model/android/f;

    :cond_0
    const/4 v0, 0x0

    .line 678
    iput-object v0, p1, Lmaster/flame/danmaku/danmaku/model/d;->w:Lmaster/flame/danmaku/danmaku/model/n;

    if-nez p2, :cond_1

    return-void

    .line 682
    :cond_1
    invoke-virtual {p2}, Lmaster/flame/danmaku/danmaku/model/android/f;->b()V

    .line 683
    iget-object p1, p0, Lmaster/flame/danmaku/a/a$a$a;->a:Lmaster/flame/danmaku/a/a$a;

    iget-object p1, p1, Lmaster/flame/danmaku/a/a$a;->d:Lmaster/flame/danmaku/danmaku/model/a/b;

    invoke-interface {p1, p2}, Lmaster/flame/danmaku/danmaku/model/a/b;->a(Lmaster/flame/danmaku/danmaku/model/a/c;)V

    return-void
.end method

.method static synthetic a(Lmaster/flame/danmaku/a/a$a$a;)Z
    .locals 0

    .line 484
    iget-boolean p0, p0, Lmaster/flame/danmaku/a/a$a$a;->b:Z

    return p0
.end method

.method private b(Z)J
    .locals 27

    move-object/from16 v11, p0

    .line 723
    invoke-direct/range {p0 .. p0}, Lmaster/flame/danmaku/a/a$a$a;->f()V

    .line 724
    iget-object v0, v11, Lmaster/flame/danmaku/a/a$a$a;->a:Lmaster/flame/danmaku/a/a$a;

    iget-object v0, v0, Lmaster/flame/danmaku/a/a$a;->e:Lmaster/flame/danmaku/a/a;

    invoke-static {v0}, Lmaster/flame/danmaku/a/a;->c(Lmaster/flame/danmaku/a/a;)Lmaster/flame/danmaku/danmaku/model/f;

    move-result-object v0

    iget-wide v0, v0, Lmaster/flame/danmaku/danmaku/model/f;->a:J

    const-wide/16 v2, 0x1e

    sub-long v5, v0, v2

    .line 725
    iget-object v0, v11, Lmaster/flame/danmaku/a/a$a$a;->a:Lmaster/flame/danmaku/a/a$a;

    iget-object v0, v0, Lmaster/flame/danmaku/a/a$a;->e:Lmaster/flame/danmaku/a/a;

    iget-object v0, v0, Lmaster/flame/danmaku/a/a;->a:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v0, v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->t:Lmaster/flame/danmaku/danmaku/model/android/d;

    iget-wide v0, v0, Lmaster/flame/danmaku/danmaku/model/android/d;->d:J

    iget-object v4, v11, Lmaster/flame/danmaku/a/a$a$a;->a:Lmaster/flame/danmaku/a/a$a;

    invoke-static {v4}, Lmaster/flame/danmaku/a/a$a;->f(Lmaster/flame/danmaku/a/a$a;)I

    move-result v4

    int-to-long v7, v4

    mul-long v0, v0, v7

    add-long v12, v5, v0

    .line 726
    iget-object v0, v11, Lmaster/flame/danmaku/a/a$a$a;->a:Lmaster/flame/danmaku/a/a$a;

    iget-object v0, v0, Lmaster/flame/danmaku/a/a$a;->e:Lmaster/flame/danmaku/a/a;

    iget-object v0, v0, Lmaster/flame/danmaku/a/a;->g:Lmaster/flame/danmaku/danmaku/model/f;

    iget-wide v0, v0, Lmaster/flame/danmaku/danmaku/model/f;->a:J

    cmp-long v4, v12, v0

    const-wide/16 v0, 0x0

    if-gez v4, :cond_0

    return-wide v0

    .line 729
    :cond_0
    invoke-static {}, Lmaster/flame/danmaku/danmaku/c/c;->a()J

    move-result-wide v14

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    const-wide/16 v9, 0xa

    const/16 v16, 0x1

    .line 735
    :try_start_0
    iget-object v2, v11, Lmaster/flame/danmaku/a/a$a$a;->a:Lmaster/flame/danmaku/a/a$a;

    iget-object v2, v2, Lmaster/flame/danmaku/a/a$a;->e:Lmaster/flame/danmaku/a/a;

    iget-object v2, v2, Lmaster/flame/danmaku/a/a;->c:Lmaster/flame/danmaku/danmaku/model/l;

    invoke-interface {v2, v5, v6, v12, v13}, Lmaster/flame/danmaku/danmaku/model/l;->a(JJ)Lmaster/flame/danmaku/danmaku/model/l;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move/from16 v26, v8

    move-object v8, v2

    move/from16 v2, v26

    goto :goto_1

    .line 738
    :catch_0
    invoke-static {v9, v10}, Lmaster/flame/danmaku/danmaku/c/c;->a(J)V

    move-object v8, v4

    const/4 v2, 0x1

    :goto_1
    add-int/lit8 v7, v7, 0x1

    const/4 v3, 0x3

    if-ge v7, v3, :cond_2

    if-nez v8, :cond_2

    if-nez v2, :cond_1

    goto :goto_2

    :cond_1
    move-object v4, v8

    move v8, v2

    const-wide/16 v2, 0x1e

    goto :goto_0

    :cond_2
    :goto_2
    if-nez v8, :cond_3

    .line 742
    iget-object v2, v11, Lmaster/flame/danmaku/a/a$a$a;->a:Lmaster/flame/danmaku/a/a$a;

    iget-object v2, v2, Lmaster/flame/danmaku/a/a$a;->e:Lmaster/flame/danmaku/a/a;

    invoke-static {v2}, Lmaster/flame/danmaku/a/a;->c(Lmaster/flame/danmaku/a/a;)Lmaster/flame/danmaku/danmaku/model/f;

    move-result-object v2

    invoke-virtual {v2, v12, v13}, Lmaster/flame/danmaku/danmaku/model/f;->a(J)J

    return-wide v0

    .line 745
    :cond_3
    invoke-interface {v8}, Lmaster/flame/danmaku/danmaku/model/l;->c()Lmaster/flame/danmaku/danmaku/model/d;

    move-result-object v2

    .line 746
    invoke-interface {v8}, Lmaster/flame/danmaku/danmaku/model/l;->d()Lmaster/flame/danmaku/danmaku/model/d;

    move-result-object v3

    if-eqz v2, :cond_7

    if-nez v3, :cond_4

    goto/16 :goto_5

    .line 751
    :cond_4
    invoke-virtual {v2}, Lmaster/flame/danmaku/danmaku/model/d;->s()J

    move-result-wide v18

    iget-object v2, v11, Lmaster/flame/danmaku/a/a$a$a;->a:Lmaster/flame/danmaku/a/a$a;

    iget-object v2, v2, Lmaster/flame/danmaku/a/a$a;->e:Lmaster/flame/danmaku/a/a;

    iget-object v2, v2, Lmaster/flame/danmaku/a/a;->g:Lmaster/flame/danmaku/danmaku/model/f;

    iget-wide v9, v2, Lmaster/flame/danmaku/danmaku/model/f;->a:J

    sub-long v20, v18, v9

    cmp-long v2, v20, v0

    if-gez v2, :cond_5

    const-wide/16 v9, 0x1e

    goto :goto_3

    :cond_5
    const-wide/16 v9, 0xa

    mul-long v20, v20, v9

    .line 752
    iget-object v2, v11, Lmaster/flame/danmaku/a/a$a$a;->a:Lmaster/flame/danmaku/a/a$a;

    iget-object v2, v2, Lmaster/flame/danmaku/a/a$a;->e:Lmaster/flame/danmaku/a/a;

    iget-object v2, v2, Lmaster/flame/danmaku/a/a;->a:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v2, v2, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->t:Lmaster/flame/danmaku/danmaku/model/android/d;

    iget-wide v9, v2, Lmaster/flame/danmaku/danmaku/model/android/d;->d:J

    div-long v20, v20, v9

    const-wide/16 v9, 0x1e

    add-long v16, v20, v9

    move-wide/from16 v9, v16

    :goto_3
    const-wide/16 v0, 0x64

    .line 753
    invoke-static {v0, v1, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    if-eqz p1, :cond_6

    const-wide/16 v22, 0x0

    goto :goto_4

    :cond_6
    move-wide/from16 v22, v0

    .line 763
    :goto_4
    invoke-interface {v8}, Lmaster/flame/danmaku/danmaku/model/l;->a()I

    move-result v7

    .line 766
    new-instance v9, Lmaster/flame/danmaku/a/a$a$a$2;

    move-object v0, v9

    move-object v1, v11

    move-object v2, v3

    move/from16 v3, p1

    move v4, v7

    move-object v10, v8

    move-wide/from16 v7, v22

    move-wide/from16 v24, v12

    move-object v13, v9

    move-object v12, v10

    move-wide v9, v14

    invoke-direct/range {v0 .. v10}, Lmaster/flame/danmaku/a/a$a$a$2;-><init>(Lmaster/flame/danmaku/a/a$a$a;Lmaster/flame/danmaku/danmaku/model/d;ZIJJJ)V

    invoke-interface {v12, v13}, Lmaster/flame/danmaku/danmaku/model/l;->b(Lmaster/flame/danmaku/danmaku/model/l$b;)V

    .line 830
    invoke-static {}, Lmaster/flame/danmaku/danmaku/c/c;->a()J

    move-result-wide v0

    sub-long v2, v0, v14

    .line 835
    iget-object v0, v11, Lmaster/flame/danmaku/a/a$a$a;->a:Lmaster/flame/danmaku/a/a$a;

    iget-object v0, v0, Lmaster/flame/danmaku/a/a$a;->e:Lmaster/flame/danmaku/a/a;

    invoke-static {v0}, Lmaster/flame/danmaku/a/a;->c(Lmaster/flame/danmaku/a/a;)Lmaster/flame/danmaku/danmaku/model/f;

    move-result-object v0

    move-wide/from16 v5, v24

    invoke-virtual {v0, v5, v6}, Lmaster/flame/danmaku/danmaku/model/f;->a(J)J

    return-wide v2

    :cond_7
    :goto_5
    move-wide v5, v12

    .line 748
    iget-object v0, v11, Lmaster/flame/danmaku/a/a$a$a;->a:Lmaster/flame/danmaku/a/a$a;

    iget-object v0, v0, Lmaster/flame/danmaku/a/a$a;->e:Lmaster/flame/danmaku/a/a;

    invoke-static {v0}, Lmaster/flame/danmaku/a/a;->c(Lmaster/flame/danmaku/a/a;)Lmaster/flame/danmaku/danmaku/model/f;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Lmaster/flame/danmaku/danmaku/model/f;->a(J)J

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private final b(Lmaster/flame/danmaku/danmaku/model/d;)V
    .locals 8

    .line 938
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/d;->f()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/d;->s()J

    move-result-wide v0

    iget-object v2, p0, Lmaster/flame/danmaku/a/a$a$a;->a:Lmaster/flame/danmaku/a/a$a;

    iget-object v2, v2, Lmaster/flame/danmaku/a/a$a;->e:Lmaster/flame/danmaku/a/a;

    invoke-static {v2}, Lmaster/flame/danmaku/a/a;->c(Lmaster/flame/danmaku/a/a;)Lmaster/flame/danmaku/danmaku/model/f;

    move-result-object v2

    iget-wide v2, v2, Lmaster/flame/danmaku/danmaku/model/f;->a:J

    iget-object v4, p0, Lmaster/flame/danmaku/a/a$a$a;->a:Lmaster/flame/danmaku/a/a$a;

    iget-object v4, v4, Lmaster/flame/danmaku/a/a$a;->e:Lmaster/flame/danmaku/a/a;

    iget-object v4, v4, Lmaster/flame/danmaku/a/a;->a:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v4, v4, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->t:Lmaster/flame/danmaku/danmaku/model/android/d;

    iget-wide v4, v4, Lmaster/flame/danmaku/danmaku/model/android/d;->d:J

    add-long v6, v2, v4

    cmp-long v2, v0, v6

    if-lez v2, :cond_0

    iget-boolean v0, p1, Lmaster/flame/danmaku/danmaku/model/d;->x:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 941
    :cond_0
    iget-byte v0, p1, Lmaster/flame/danmaku/danmaku/model/d;->n:B

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/d;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 944
    :cond_1
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/d;->d()Lmaster/flame/danmaku/danmaku/model/n;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 945
    invoke-interface {v0}, Lmaster/flame/danmaku/danmaku/model/n;->a()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    .line 946
    invoke-direct {p0, p1, v0}, Lmaster/flame/danmaku/a/a$a$a;->a(Lmaster/flame/danmaku/danmaku/model/d;Z)B

    :cond_3
    return-void

    :cond_4
    :goto_0
    return-void
.end method

.method static synthetic b(Lmaster/flame/danmaku/a/a$a$a;)Z
    .locals 0

    .line 484
    iget-boolean p0, p0, Lmaster/flame/danmaku/a/a$a$a;->e:Z

    return p0
.end method

.method static synthetic c(Lmaster/flame/danmaku/a/a$a$a;)Z
    .locals 0

    .line 484
    iget-boolean p0, p0, Lmaster/flame/danmaku/a/a$a$a;->c:Z

    return p0
.end method

.method private e()J
    .locals 13

    .line 630
    iget-object v0, p0, Lmaster/flame/danmaku/a/a$a$a;->a:Lmaster/flame/danmaku/a/a$a;

    iget-object v0, v0, Lmaster/flame/danmaku/a/a$a;->e:Lmaster/flame/danmaku/a/a;

    invoke-static {v0}, Lmaster/flame/danmaku/a/a;->c(Lmaster/flame/danmaku/a/a;)Lmaster/flame/danmaku/danmaku/model/f;

    move-result-object v0

    iget-wide v0, v0, Lmaster/flame/danmaku/danmaku/model/f;->a:J

    iget-object v2, p0, Lmaster/flame/danmaku/a/a$a$a;->a:Lmaster/flame/danmaku/a/a$a;

    iget-object v2, v2, Lmaster/flame/danmaku/a/a$a;->e:Lmaster/flame/danmaku/a/a;

    iget-object v2, v2, Lmaster/flame/danmaku/a/a;->g:Lmaster/flame/danmaku/danmaku/model/f;

    iget-wide v2, v2, Lmaster/flame/danmaku/danmaku/model/f;->a:J

    iget-object v4, p0, Lmaster/flame/danmaku/a/a$a$a;->a:Lmaster/flame/danmaku/a/a$a;

    iget-object v4, v4, Lmaster/flame/danmaku/a/a$a;->e:Lmaster/flame/danmaku/a/a;

    iget-object v4, v4, Lmaster/flame/danmaku/a/a;->a:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v4, v4, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->t:Lmaster/flame/danmaku/danmaku/model/android/d;

    iget-wide v4, v4, Lmaster/flame/danmaku/danmaku/model/android/d;->d:J

    sub-long v6, v2, v4

    cmp-long v2, v0, v6

    const/4 v0, 0x3

    const-wide/16 v3, 0x0

    if-gtz v2, :cond_1

    .line 631
    iget-object v1, p0, Lmaster/flame/danmaku/a/a$a$a;->a:Lmaster/flame/danmaku/a/a$a;

    iget-object v1, v1, Lmaster/flame/danmaku/a/a$a;->e:Lmaster/flame/danmaku/a/a;

    iget-object v1, v1, Lmaster/flame/danmaku/a/a;->a:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v1, v1, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->u:Lmaster/flame/danmaku/danmaku/model/android/c;

    iget-wide v1, v1, Lmaster/flame/danmaku/danmaku/model/android/c;->f:J

    const-wide/16 v5, -0x1

    cmp-long v7, v1, v5

    if-eqz v7, :cond_0

    .line 632
    iget-object v1, p0, Lmaster/flame/danmaku/a/a$a$a;->a:Lmaster/flame/danmaku/a/a$a;

    invoke-static {v1}, Lmaster/flame/danmaku/a/a$a;->b(Lmaster/flame/danmaku/a/a$a;)V

    .line 634
    :cond_0
    iget-object v1, p0, Lmaster/flame/danmaku/a/a$a$a;->a:Lmaster/flame/danmaku/a/a$a;

    iget-object v1, v1, Lmaster/flame/danmaku/a/a$a;->e:Lmaster/flame/danmaku/a/a;

    invoke-static {v1}, Lmaster/flame/danmaku/a/a;->c(Lmaster/flame/danmaku/a/a;)Lmaster/flame/danmaku/danmaku/model/f;

    move-result-object v1

    iget-object v2, p0, Lmaster/flame/danmaku/a/a$a$a;->a:Lmaster/flame/danmaku/a/a$a;

    iget-object v2, v2, Lmaster/flame/danmaku/a/a$a;->e:Lmaster/flame/danmaku/a/a;

    iget-object v2, v2, Lmaster/flame/danmaku/a/a;->g:Lmaster/flame/danmaku/danmaku/model/f;

    iget-wide v5, v2, Lmaster/flame/danmaku/danmaku/model/f;->a:J

    invoke-virtual {v1, v5, v6}, Lmaster/flame/danmaku/danmaku/model/f;->a(J)J

    .line 635
    invoke-virtual {p0, v0}, Lmaster/flame/danmaku/a/a$a$a;->sendEmptyMessage(I)Z

    return-wide v3

    .line 638
    :cond_1
    iget-object v1, p0, Lmaster/flame/danmaku/a/a$a$a;->a:Lmaster/flame/danmaku/a/a$a;

    invoke-virtual {v1}, Lmaster/flame/danmaku/a/a$a;->d()F

    move-result v1

    .line 639
    iget-object v2, p0, Lmaster/flame/danmaku/a/a$a$a;->a:Lmaster/flame/danmaku/a/a$a;

    iget-object v2, v2, Lmaster/flame/danmaku/a/a$a;->b:Lmaster/flame/danmaku/danmaku/model/android/e;

    invoke-virtual {v2}, Lmaster/flame/danmaku/danmaku/model/android/e;->c()Lmaster/flame/danmaku/danmaku/model/d;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 641
    invoke-virtual {v2}, Lmaster/flame/danmaku/danmaku/model/d;->s()J

    move-result-wide v5

    iget-object v7, p0, Lmaster/flame/danmaku/a/a$a$a;->a:Lmaster/flame/danmaku/a/a$a;

    iget-object v7, v7, Lmaster/flame/danmaku/a/a$a;->e:Lmaster/flame/danmaku/a/a;

    iget-object v7, v7, Lmaster/flame/danmaku/a/a;->g:Lmaster/flame/danmaku/danmaku/model/f;

    iget-wide v7, v7, Lmaster/flame/danmaku/danmaku/model/f;->a:J

    sub-long v9, v5, v7

    goto :goto_0

    :cond_2
    move-wide v9, v3

    .line 642
    :goto_0
    iget-object v5, p0, Lmaster/flame/danmaku/a/a$a$a;->a:Lmaster/flame/danmaku/a/a$a;

    iget-object v5, v5, Lmaster/flame/danmaku/a/a$a;->e:Lmaster/flame/danmaku/a/a;

    iget-object v5, v5, Lmaster/flame/danmaku/a/a;->a:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v5, v5, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->t:Lmaster/flame/danmaku/danmaku/model/android/d;

    iget-wide v5, v5, Lmaster/flame/danmaku/danmaku/model/android/d;->d:J

    const-wide/16 v7, 0x2

    mul-long v5, v5, v7

    const v7, 0x3f19999a    # 0.6f

    cmpg-float v7, v1, v7

    if-gez v7, :cond_3

    .line 643
    iget-object v7, p0, Lmaster/flame/danmaku/a/a$a$a;->a:Lmaster/flame/danmaku/a/a$a;

    iget-object v7, v7, Lmaster/flame/danmaku/a/a$a;->e:Lmaster/flame/danmaku/a/a;

    iget-object v7, v7, Lmaster/flame/danmaku/a/a;->a:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v7, v7, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->t:Lmaster/flame/danmaku/danmaku/model/android/d;

    iget-wide v7, v7, Lmaster/flame/danmaku/danmaku/model/android/d;->d:J

    cmp-long v11, v9, v7

    if-lez v11, :cond_3

    .line 644
    iget-object v1, p0, Lmaster/flame/danmaku/a/a$a$a;->a:Lmaster/flame/danmaku/a/a$a;

    iget-object v1, v1, Lmaster/flame/danmaku/a/a$a;->e:Lmaster/flame/danmaku/a/a;

    invoke-static {v1}, Lmaster/flame/danmaku/a/a;->c(Lmaster/flame/danmaku/a/a;)Lmaster/flame/danmaku/danmaku/model/f;

    move-result-object v1

    iget-object v2, p0, Lmaster/flame/danmaku/a/a$a$a;->a:Lmaster/flame/danmaku/a/a$a;

    iget-object v2, v2, Lmaster/flame/danmaku/a/a$a;->e:Lmaster/flame/danmaku/a/a;

    iget-object v2, v2, Lmaster/flame/danmaku/a/a;->g:Lmaster/flame/danmaku/danmaku/model/f;

    iget-wide v5, v2, Lmaster/flame/danmaku/danmaku/model/f;->a:J

    invoke-virtual {v1, v5, v6}, Lmaster/flame/danmaku/danmaku/model/f;->a(J)J

    .line 645
    invoke-virtual {p0, v0}, Lmaster/flame/danmaku/a/a$a$a;->removeMessages(I)V

    .line 646
    invoke-virtual {p0, v0}, Lmaster/flame/danmaku/a/a$a$a;->sendEmptyMessage(I)Z

    return-wide v3

    :cond_3
    const v7, 0x3ecccccd    # 0.4f

    cmpl-float v7, v1, v7

    if-lez v7, :cond_4

    neg-long v7, v5

    cmp-long v11, v9, v7

    if-gez v11, :cond_4

    const/4 v0, 0x4

    .line 650
    invoke-virtual {p0, v0}, Lmaster/flame/danmaku/a/a$a$a;->removeMessages(I)V

    .line 651
    invoke-virtual {p0, v0}, Lmaster/flame/danmaku/a/a$a$a;->sendEmptyMessage(I)Z

    return-wide v3

    :cond_4
    const v7, 0x3f666666    # 0.9f

    cmpl-float v1, v1, v7

    if-ltz v1, :cond_5

    return-wide v3

    .line 659
    :cond_5
    iget-object v1, p0, Lmaster/flame/danmaku/a/a$a$a;->a:Lmaster/flame/danmaku/a/a$a;

    iget-object v1, v1, Lmaster/flame/danmaku/a/a$a;->e:Lmaster/flame/danmaku/a/a;

    invoke-static {v1}, Lmaster/flame/danmaku/a/a;->c(Lmaster/flame/danmaku/a/a;)Lmaster/flame/danmaku/danmaku/model/f;

    move-result-object v1

    iget-wide v7, v1, Lmaster/flame/danmaku/danmaku/model/f;->a:J

    iget-object v1, p0, Lmaster/flame/danmaku/a/a$a$a;->a:Lmaster/flame/danmaku/a/a$a;

    iget-object v1, v1, Lmaster/flame/danmaku/a/a$a;->e:Lmaster/flame/danmaku/a/a;

    iget-object v1, v1, Lmaster/flame/danmaku/a/a;->g:Lmaster/flame/danmaku/danmaku/model/f;

    iget-wide v9, v1, Lmaster/flame/danmaku/danmaku/model/f;->a:J

    sub-long v11, v7, v9

    if-eqz v2, :cond_6

    .line 660
    invoke-virtual {v2}, Lmaster/flame/danmaku/danmaku/model/d;->f()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lmaster/flame/danmaku/a/a$a$a;->a:Lmaster/flame/danmaku/a/a$a;

    iget-object v1, v1, Lmaster/flame/danmaku/a/a$a;->e:Lmaster/flame/danmaku/a/a;

    iget-object v1, v1, Lmaster/flame/danmaku/a/a;->a:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v1, v1, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->t:Lmaster/flame/danmaku/danmaku/model/android/d;

    iget-wide v1, v1, Lmaster/flame/danmaku/danmaku/model/android/d;->d:J

    neg-long v1, v1

    cmp-long v7, v11, v1

    if-gez v7, :cond_6

    .line 661
    iget-object v1, p0, Lmaster/flame/danmaku/a/a$a$a;->a:Lmaster/flame/danmaku/a/a$a;

    iget-object v1, v1, Lmaster/flame/danmaku/a/a$a;->e:Lmaster/flame/danmaku/a/a;

    invoke-static {v1}, Lmaster/flame/danmaku/a/a;->c(Lmaster/flame/danmaku/a/a;)Lmaster/flame/danmaku/danmaku/model/f;

    move-result-object v1

    iget-object v2, p0, Lmaster/flame/danmaku/a/a$a$a;->a:Lmaster/flame/danmaku/a/a$a;

    iget-object v2, v2, Lmaster/flame/danmaku/a/a$a;->e:Lmaster/flame/danmaku/a/a;

    iget-object v2, v2, Lmaster/flame/danmaku/a/a;->g:Lmaster/flame/danmaku/danmaku/model/f;

    iget-wide v5, v2, Lmaster/flame/danmaku/danmaku/model/f;->a:J

    invoke-virtual {v1, v5, v6}, Lmaster/flame/danmaku/danmaku/model/f;->a(J)J

    const/16 v1, 0x8

    .line 662
    invoke-virtual {p0, v1}, Lmaster/flame/danmaku/a/a$a$a;->sendEmptyMessage(I)Z

    .line 663
    invoke-virtual {p0, v0}, Lmaster/flame/danmaku/a/a$a$a;->sendEmptyMessage(I)Z

    return-wide v3

    :cond_6
    cmp-long v1, v11, v5

    if-lez v1, :cond_7

    return-wide v3

    .line 669
    :cond_7
    invoke-virtual {p0, v0}, Lmaster/flame/danmaku/a/a$a$a;->removeMessages(I)V

    .line 670
    invoke-virtual {p0, v0}, Lmaster/flame/danmaku/a/a$a$a;->sendEmptyMessage(I)Z

    return-wide v3
.end method

.method private f()V
    .locals 10

    .line 690
    :try_start_0
    iget-object v0, p0, Lmaster/flame/danmaku/a/a$a$a;->a:Lmaster/flame/danmaku/a/a$a;

    iget-object v0, v0, Lmaster/flame/danmaku/a/a$a;->e:Lmaster/flame/danmaku/a/a;

    iget-object v0, v0, Lmaster/flame/danmaku/a/a;->g:Lmaster/flame/danmaku/danmaku/model/f;

    iget-wide v0, v0, Lmaster/flame/danmaku/danmaku/model/f;->a:J

    .line 691
    iget-object v2, p0, Lmaster/flame/danmaku/a/a$a$a;->a:Lmaster/flame/danmaku/a/a$a;

    iget-object v2, v2, Lmaster/flame/danmaku/a/a$a;->e:Lmaster/flame/danmaku/a/a;

    iget-object v2, v2, Lmaster/flame/danmaku/a/a;->a:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v2, v2, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->t:Lmaster/flame/danmaku/danmaku/model/android/d;

    iget-wide v2, v2, Lmaster/flame/danmaku/danmaku/model/android/d;->d:J

    const-wide/16 v4, 0x2

    mul-long v2, v2, v4

    add-long v4, v0, v2

    .line 692
    iget-object v2, p0, Lmaster/flame/danmaku/a/a$a$a;->a:Lmaster/flame/danmaku/a/a$a;

    iget-object v2, v2, Lmaster/flame/danmaku/a/a$a;->e:Lmaster/flame/danmaku/a/a;

    iget-object v2, v2, Lmaster/flame/danmaku/a/a;->c:Lmaster/flame/danmaku/danmaku/model/l;

    iget-object v3, p0, Lmaster/flame/danmaku/a/a$a$a;->a:Lmaster/flame/danmaku/a/a$a;

    iget-object v3, v3, Lmaster/flame/danmaku/a/a$a;->e:Lmaster/flame/danmaku/a/a;

    iget-object v3, v3, Lmaster/flame/danmaku/a/a;->a:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v3, v3, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->t:Lmaster/flame/danmaku/danmaku/model/android/d;

    iget-wide v6, v3, Lmaster/flame/danmaku/danmaku/model/android/d;->d:J

    const/4 v3, 0x0

    sub-long v8, v0, v6

    invoke-interface {v2, v8, v9, v4, v5}, Lmaster/flame/danmaku/danmaku/model/l;->a(JJ)Lmaster/flame/danmaku/danmaku/model/l;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 696
    invoke-interface {v0}, Lmaster/flame/danmaku/danmaku/model/l;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 699
    :cond_0
    new-instance v1, Lmaster/flame/danmaku/a/a$a$a$1;

    invoke-direct {v1, p0}, Lmaster/flame/danmaku/a/a$a$a$1;-><init>(Lmaster/flame/danmaku/a/a$a$a;)V

    invoke-interface {v0, v1}, Lmaster/flame/danmaku/danmaku/model/l;->b(Lmaster/flame/danmaku/danmaku/model/l$b;)V

    return-void

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    .line 523
    iput-boolean v0, p0, Lmaster/flame/danmaku/a/a$a$a;->e:Z

    return-void
.end method

.method public a(J)V
    .locals 6

    const/4 v0, 0x3

    .line 973
    invoke-virtual {p0, v0}, Lmaster/flame/danmaku/a/a$a$a;->removeMessages(I)V

    const/4 v1, 0x1

    .line 974
    iput-boolean v1, p0, Lmaster/flame/danmaku/a/a$a$a;->d:Z

    const/16 v1, 0x12

    .line 975
    invoke-virtual {p0, v1}, Lmaster/flame/danmaku/a/a$a$a;->sendEmptyMessage(I)Z

    .line 976
    iget-object v1, p0, Lmaster/flame/danmaku/a/a$a$a;->a:Lmaster/flame/danmaku/a/a$a;

    iget-object v1, v1, Lmaster/flame/danmaku/a/a$a;->e:Lmaster/flame/danmaku/a/a;

    invoke-static {v1}, Lmaster/flame/danmaku/a/a;->c(Lmaster/flame/danmaku/a/a;)Lmaster/flame/danmaku/danmaku/model/f;

    move-result-object v1

    iget-object v2, p0, Lmaster/flame/danmaku/a/a$a$a;->a:Lmaster/flame/danmaku/a/a$a;

    iget-object v2, v2, Lmaster/flame/danmaku/a/a$a;->e:Lmaster/flame/danmaku/a/a;

    iget-object v2, v2, Lmaster/flame/danmaku/a/a;->g:Lmaster/flame/danmaku/danmaku/model/f;

    iget-wide v2, v2, Lmaster/flame/danmaku/danmaku/model/f;->a:J

    add-long v4, v2, p1

    invoke-virtual {v1, v4, v5}, Lmaster/flame/danmaku/danmaku/model/f;->a(J)J

    .line 977
    invoke-virtual {p0, v0}, Lmaster/flame/danmaku/a/a$a$a;->sendEmptyMessage(I)Z

    return-void
.end method

.method public a(Z)V
    .locals 0

    xor-int/lit8 p1, p1, 0x1

    .line 981
    iput-boolean p1, p0, Lmaster/flame/danmaku/a/a$a$a;->c:Z

    return-void
.end method

.method public a(Lmaster/flame/danmaku/danmaku/model/d;)Z
    .locals 6

    .line 842
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/d;->b()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 843
    iget-object v0, p0, Lmaster/flame/danmaku/a/a$a$a;->a:Lmaster/flame/danmaku/a/a$a;

    iget-object v0, v0, Lmaster/flame/danmaku/a/a$a;->e:Lmaster/flame/danmaku/a/a;

    iget-object v0, v0, Lmaster/flame/danmaku/a/a;->b:Lmaster/flame/danmaku/danmaku/model/b;

    invoke-virtual {p1, v0, v1}, Lmaster/flame/danmaku/danmaku/model/d;->a(Lmaster/flame/danmaku/danmaku/model/m;Z)V

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 847
    :try_start_0
    iget-object v3, p0, Lmaster/flame/danmaku/a/a$a$a;->a:Lmaster/flame/danmaku/a/a$a;

    iget-object v3, v3, Lmaster/flame/danmaku/a/a$a;->d:Lmaster/flame/danmaku/danmaku/model/a/b;

    invoke-interface {v3}, Lmaster/flame/danmaku/danmaku/model/a/b;->a()Lmaster/flame/danmaku/danmaku/model/a/c;

    move-result-object v3

    check-cast v3, Lmaster/flame/danmaku/danmaku/model/android/f;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 848
    :try_start_1
    iget-object v4, p0, Lmaster/flame/danmaku/a/a$a$a;->a:Lmaster/flame/danmaku/a/a$a;

    iget-object v4, v4, Lmaster/flame/danmaku/a/a$a;->e:Lmaster/flame/danmaku/a/a;

    iget-object v4, v4, Lmaster/flame/danmaku/a/a;->b:Lmaster/flame/danmaku/danmaku/model/b;

    iget-object v5, p0, Lmaster/flame/danmaku/a/a$a$a;->a:Lmaster/flame/danmaku/a/a$a;

    iget-object v5, v5, Lmaster/flame/danmaku/a/a$a;->e:Lmaster/flame/danmaku/a/a;

    iget-object v5, v5, Lmaster/flame/danmaku/a/a;->a:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v5, v5, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->u:Lmaster/flame/danmaku/danmaku/model/android/c;

    iget v5, v5, Lmaster/flame/danmaku/danmaku/model/android/c;->d:I

    invoke-static {p1, v4, v3, v5}, Lmaster/flame/danmaku/danmaku/c/a;->a(Lmaster/flame/danmaku/danmaku/model/d;Lmaster/flame/danmaku/danmaku/model/m;Lmaster/flame/danmaku/danmaku/model/android/f;I)Lmaster/flame/danmaku/danmaku/model/android/f;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 849
    :try_start_2
    iput-object v4, p1, Lmaster/flame/danmaku/danmaku/model/d;->w:Lmaster/flame/danmaku/danmaku/model/n;
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return v1

    :catch_0
    move-object v3, v4

    goto :goto_0

    :catch_1
    move-object v3, v4

    goto :goto_1

    :catch_2
    move-object v3, v2

    :catch_3
    :goto_0
    if-eqz v3, :cond_1

    .line 860
    iget-object v1, p0, Lmaster/flame/danmaku/a/a$a$a;->a:Lmaster/flame/danmaku/a/a$a;

    iget-object v1, v1, Lmaster/flame/danmaku/a/a$a;->d:Lmaster/flame/danmaku/danmaku/model/a/b;

    invoke-interface {v1, v3}, Lmaster/flame/danmaku/danmaku/model/a/b;->a(Lmaster/flame/danmaku/danmaku/model/a/c;)V

    .line 862
    :cond_1
    iput-object v2, p1, Lmaster/flame/danmaku/danmaku/model/d;->w:Lmaster/flame/danmaku/danmaku/model/n;

    return v0

    :catch_4
    move-object v3, v2

    :catch_5
    :goto_1
    if-eqz v3, :cond_2

    .line 853
    iget-object v1, p0, Lmaster/flame/danmaku/a/a$a$a;->a:Lmaster/flame/danmaku/a/a$a;

    iget-object v1, v1, Lmaster/flame/danmaku/a/a$a;->d:Lmaster/flame/danmaku/danmaku/model/a/b;

    invoke-interface {v1, v3}, Lmaster/flame/danmaku/danmaku/model/a/b;->a(Lmaster/flame/danmaku/danmaku/model/a/c;)V

    .line 855
    :cond_2
    iput-object v2, p1, Lmaster/flame/danmaku/danmaku/model/d;->w:Lmaster/flame/danmaku/danmaku/model/n;

    return v0
.end method

.method public b()V
    .locals 3

    const/4 v0, 0x1

    .line 951
    invoke-virtual {p0, v0}, Lmaster/flame/danmaku/a/a$a$a;->sendEmptyMessage(I)Z

    .line 952
    iget-object v0, p0, Lmaster/flame/danmaku/a/a$a$a;->a:Lmaster/flame/danmaku/a/a$a;

    iget-object v0, v0, Lmaster/flame/danmaku/a/a$a;->e:Lmaster/flame/danmaku/a/a;

    iget-object v0, v0, Lmaster/flame/danmaku/a/a;->a:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v0, v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->t:Lmaster/flame/danmaku/danmaku/model/android/d;

    iget-wide v0, v0, Lmaster/flame/danmaku/danmaku/model/android/d;->d:J

    const/4 v2, 0x4

    invoke-virtual {p0, v2, v0, v1}, Lmaster/flame/danmaku/a/a$a$a;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x1

    .line 956
    iput-boolean v0, p0, Lmaster/flame/danmaku/a/a$a$a;->b:Z

    const/4 v0, 0x6

    .line 957
    invoke-virtual {p0, v0}, Lmaster/flame/danmaku/a/a$a$a;->sendEmptyMessage(I)Z

    return-void
.end method

.method public d()V
    .locals 3

    const/16 v0, 0x12

    .line 961
    invoke-virtual {p0, v0}, Lmaster/flame/danmaku/a/a$a$a;->sendEmptyMessage(I)Z

    const/4 v0, 0x0

    .line 962
    iput-boolean v0, p0, Lmaster/flame/danmaku/a/a$a$a;->b:Z

    const/16 v0, 0x10

    .line 963
    invoke-virtual {p0, v0}, Lmaster/flame/danmaku/a/a$a$a;->removeMessages(I)V

    .line 964
    invoke-virtual {p0, v0}, Lmaster/flame/danmaku/a/a$a$a;->sendEmptyMessage(I)Z

    .line 965
    iget-object v0, p0, Lmaster/flame/danmaku/a/a$a$a;->a:Lmaster/flame/danmaku/a/a$a;

    iget-object v0, v0, Lmaster/flame/danmaku/a/a$a;->e:Lmaster/flame/danmaku/a/a;

    iget-object v0, v0, Lmaster/flame/danmaku/a/a;->a:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v0, v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->t:Lmaster/flame/danmaku/danmaku/model/android/d;

    iget-wide v0, v0, Lmaster/flame/danmaku/danmaku/model/android/d;->d:J

    const/4 v2, 0x4

    invoke-virtual {p0, v2, v0, v1}, Lmaster/flame/danmaku/a/a$a$a;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    .line 528
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_5

    .line 624
    :pswitch_0
    iput-boolean v2, p0, Lmaster/flame/danmaku/a/a$a$a;->e:Z

    goto/16 :goto_5

    .line 560
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lmaster/flame/danmaku/danmaku/model/d;

    if-eqz p1, :cond_c

    .line 562
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/d;->d()Lmaster/flame/danmaku/danmaku/model/n;

    move-result-object v0

    .line 563
    iget v4, p1, Lmaster/flame/danmaku/danmaku/model/d;->H:I

    and-int/2addr v4, v3

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-nez v4, :cond_1

    if-eqz v0, :cond_1

    .line 564
    invoke-interface {v0}, Lmaster/flame/danmaku/danmaku/model/n;->a()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Lmaster/flame/danmaku/danmaku/model/n;->f()Z

    move-result v4

    if-nez v4, :cond_1

    .line 565
    iget-object v0, p0, Lmaster/flame/danmaku/a/a$a$a;->a:Lmaster/flame/danmaku/a/a$a;

    iget-object v0, v0, Lmaster/flame/danmaku/a/a$a;->e:Lmaster/flame/danmaku/a/a;

    iget-object v0, v0, Lmaster/flame/danmaku/a/a;->b:Lmaster/flame/danmaku/danmaku/model/b;

    iget-object v1, p1, Lmaster/flame/danmaku/danmaku/model/d;->w:Lmaster/flame/danmaku/danmaku/model/n;

    check-cast v1, Lmaster/flame/danmaku/danmaku/model/android/f;

    iget-object v4, p0, Lmaster/flame/danmaku/a/a$a$a;->a:Lmaster/flame/danmaku/a/a$a;

    iget-object v4, v4, Lmaster/flame/danmaku/a/a$a;->e:Lmaster/flame/danmaku/a/a;

    iget-object v4, v4, Lmaster/flame/danmaku/a/a;->a:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v4, v4, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->u:Lmaster/flame/danmaku/danmaku/model/android/c;

    iget v4, v4, Lmaster/flame/danmaku/danmaku/model/android/c;->d:I

    invoke-static {p1, v0, v1, v4}, Lmaster/flame/danmaku/danmaku/c/a;->a(Lmaster/flame/danmaku/danmaku/model/d;Lmaster/flame/danmaku/danmaku/model/m;Lmaster/flame/danmaku/danmaku/model/android/f;I)Lmaster/flame/danmaku/danmaku/model/android/f;

    move-result-object v0

    .line 566
    iput-object v0, p1, Lmaster/flame/danmaku/danmaku/model/d;->w:Lmaster/flame/danmaku/danmaku/model/n;

    .line 567
    iget-object v0, p0, Lmaster/flame/danmaku/a/a$a$a;->a:Lmaster/flame/danmaku/a/a$a;

    invoke-static {v0, p1, v2, v3}, Lmaster/flame/danmaku/a/a$a;->a(Lmaster/flame/danmaku/a/a$a;Lmaster/flame/danmaku/danmaku/model/d;IZ)Z

    return-void

    .line 570
    :cond_1
    iget-boolean v2, p1, Lmaster/flame/danmaku/danmaku/model/d;->x:Z

    if-eqz v2, :cond_2

    .line 571
    iget-object v0, p0, Lmaster/flame/danmaku/a/a$a$a;->a:Lmaster/flame/danmaku/a/a$a;

    invoke-static {v0, p1}, Lmaster/flame/danmaku/a/a$a;->a(Lmaster/flame/danmaku/a/a$a;Lmaster/flame/danmaku/danmaku/model/d;)J

    .line 572
    invoke-virtual {p0, p1}, Lmaster/flame/danmaku/a/a$a$a;->a(Lmaster/flame/danmaku/danmaku/model/d;)Z

    goto/16 :goto_5

    :cond_2
    if-eqz v0, :cond_3

    .line 574
    invoke-interface {v0}, Lmaster/flame/danmaku/danmaku/model/n;->f()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 575
    invoke-interface {v0}, Lmaster/flame/danmaku/danmaku/model/n;->b()V

    .line 577
    :cond_3
    iget-object v0, p0, Lmaster/flame/danmaku/a/a$a$a;->a:Lmaster/flame/danmaku/a/a$a;

    invoke-virtual {v0, v3, p1, v1}, Lmaster/flame/danmaku/a/a$a;->a(ZLmaster/flame/danmaku/danmaku/model/d;Lmaster/flame/danmaku/danmaku/model/d;)V

    .line 578
    invoke-direct {p0, p1}, Lmaster/flame/danmaku/a/a$a$a;->b(Lmaster/flame/danmaku/danmaku/model/d;)V

    goto/16 :goto_5

    .line 619
    :pswitch_2
    iget-object p1, p0, Lmaster/flame/danmaku/a/a$a$a;->a:Lmaster/flame/danmaku/a/a$a;

    invoke-static {p1}, Lmaster/flame/danmaku/a/a$a;->b(Lmaster/flame/danmaku/a/a$a;)V

    .line 620
    iget-object p1, p0, Lmaster/flame/danmaku/a/a$a$a;->a:Lmaster/flame/danmaku/a/a$a;

    iget-object p1, p1, Lmaster/flame/danmaku/a/a$a;->e:Lmaster/flame/danmaku/a/a;

    invoke-static {p1}, Lmaster/flame/danmaku/a/a;->c(Lmaster/flame/danmaku/a/a;)Lmaster/flame/danmaku/danmaku/model/f;

    move-result-object p1

    iget-object v0, p0, Lmaster/flame/danmaku/a/a$a$a;->a:Lmaster/flame/danmaku/a/a$a;

    iget-object v0, v0, Lmaster/flame/danmaku/a/a$a;->e:Lmaster/flame/danmaku/a/a;

    iget-object v0, v0, Lmaster/flame/danmaku/a/a;->g:Lmaster/flame/danmaku/danmaku/model/f;

    iget-wide v0, v0, Lmaster/flame/danmaku/danmaku/model/f;->a:J

    invoke-virtual {p1, v0, v1}, Lmaster/flame/danmaku/danmaku/model/f;->a(J)J

    .line 621
    iget-object p1, p0, Lmaster/flame/danmaku/a/a$a$a;->a:Lmaster/flame/danmaku/a/a$a;

    iget-object p1, p1, Lmaster/flame/danmaku/a/a$a;->e:Lmaster/flame/danmaku/a/a;

    invoke-virtual {p1}, Lmaster/flame/danmaku/a/a;->e()V

    goto/16 :goto_5

    .line 615
    :pswitch_3
    iget-object p1, p0, Lmaster/flame/danmaku/a/a$a$a;->a:Lmaster/flame/danmaku/a/a$a;

    invoke-static {p1}, Lmaster/flame/danmaku/a/a$a;->b(Lmaster/flame/danmaku/a/a$a;)V

    .line 616
    iget-object p1, p0, Lmaster/flame/danmaku/a/a$a$a;->a:Lmaster/flame/danmaku/a/a$a;

    iget-object p1, p1, Lmaster/flame/danmaku/a/a$a;->e:Lmaster/flame/danmaku/a/a;

    invoke-static {p1}, Lmaster/flame/danmaku/a/a;->c(Lmaster/flame/danmaku/a/a;)Lmaster/flame/danmaku/danmaku/model/f;

    move-result-object p1

    iget-object v0, p0, Lmaster/flame/danmaku/a/a$a$a;->a:Lmaster/flame/danmaku/a/a$a;

    iget-object v0, v0, Lmaster/flame/danmaku/a/a$a;->e:Lmaster/flame/danmaku/a/a;

    iget-object v0, v0, Lmaster/flame/danmaku/a/a;->g:Lmaster/flame/danmaku/danmaku/model/f;

    iget-wide v0, v0, Lmaster/flame/danmaku/danmaku/model/f;->a:J

    invoke-virtual {p1, v0, v1}, Lmaster/flame/danmaku/danmaku/model/f;->a(J)J

    goto/16 :goto_5

    .line 610
    :pswitch_4
    iget-object p1, p0, Lmaster/flame/danmaku/a/a$a$a;->a:Lmaster/flame/danmaku/a/a$a;

    invoke-static {p1}, Lmaster/flame/danmaku/a/a$a;->d(Lmaster/flame/danmaku/a/a$a;)V

    .line 611
    iget-object p1, p0, Lmaster/flame/danmaku/a/a$a$a;->a:Lmaster/flame/danmaku/a/a$a;

    iget-object p1, p1, Lmaster/flame/danmaku/a/a$a;->e:Lmaster/flame/danmaku/a/a;

    invoke-static {p1}, Lmaster/flame/danmaku/a/a;->c(Lmaster/flame/danmaku/a/a;)Lmaster/flame/danmaku/danmaku/model/f;

    move-result-object p1

    iget-object v0, p0, Lmaster/flame/danmaku/a/a$a$a;->a:Lmaster/flame/danmaku/a/a$a;

    iget-object v0, v0, Lmaster/flame/danmaku/a/a$a;->e:Lmaster/flame/danmaku/a/a;

    iget-object v0, v0, Lmaster/flame/danmaku/a/a;->g:Lmaster/flame/danmaku/danmaku/model/f;

    iget-wide v0, v0, Lmaster/flame/danmaku/danmaku/model/f;->a:J

    iget-object v2, p0, Lmaster/flame/danmaku/a/a$a$a;->a:Lmaster/flame/danmaku/a/a$a;

    iget-object v2, v2, Lmaster/flame/danmaku/a/a$a;->e:Lmaster/flame/danmaku/a/a;

    iget-object v2, v2, Lmaster/flame/danmaku/a/a;->a:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v2, v2, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->t:Lmaster/flame/danmaku/danmaku/model/android/d;

    iget-wide v4, v2, Lmaster/flame/danmaku/danmaku/model/android/d;->d:J

    sub-long v6, v0, v4

    invoke-virtual {p1, v6, v7}, Lmaster/flame/danmaku/danmaku/model/f;->a(J)J

    .line 612
    iput-boolean v3, p0, Lmaster/flame/danmaku/a/a$a$a;->d:Z

    goto/16 :goto_5

    .line 603
    :pswitch_5
    invoke-virtual {p0, v1}, Lmaster/flame/danmaku/a/a$a$a;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 604
    iput-boolean v3, p0, Lmaster/flame/danmaku/a/a$a$a;->b:Z

    .line 605
    iget-object p1, p0, Lmaster/flame/danmaku/a/a$a$a;->a:Lmaster/flame/danmaku/a/a$a;

    invoke-static {p1}, Lmaster/flame/danmaku/a/a$a;->d(Lmaster/flame/danmaku/a/a$a;)V

    .line 606
    iget-object p1, p0, Lmaster/flame/danmaku/a/a$a$a;->a:Lmaster/flame/danmaku/a/a$a;

    invoke-static {p1}, Lmaster/flame/danmaku/a/a$a;->e(Lmaster/flame/danmaku/a/a$a;)V

    .line 607
    invoke-virtual {p0}, Lmaster/flame/danmaku/a/a$a$a;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->quit()V

    goto/16 :goto_5

    .line 586
    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    if-eqz p1, :cond_c

    .line 588
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 589
    iget-object p1, p0, Lmaster/flame/danmaku/a/a$a$a;->a:Lmaster/flame/danmaku/a/a$a;

    iget-object p1, p1, Lmaster/flame/danmaku/a/a$a;->e:Lmaster/flame/danmaku/a/a;

    invoke-static {p1}, Lmaster/flame/danmaku/a/a;->c(Lmaster/flame/danmaku/a/a;)Lmaster/flame/danmaku/danmaku/model/f;

    move-result-object p1

    iget-wide v4, p1, Lmaster/flame/danmaku/danmaku/model/f;->a:J

    .line 590
    iget-object p1, p0, Lmaster/flame/danmaku/a/a$a$a;->a:Lmaster/flame/danmaku/a/a$a;

    iget-object p1, p1, Lmaster/flame/danmaku/a/a$a;->e:Lmaster/flame/danmaku/a/a;

    invoke-static {p1}, Lmaster/flame/danmaku/a/a;->c(Lmaster/flame/danmaku/a/a;)Lmaster/flame/danmaku/danmaku/model/f;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Lmaster/flame/danmaku/danmaku/model/f;->a(J)J

    .line 591
    iput-boolean v3, p0, Lmaster/flame/danmaku/a/a$a$a;->d:Z

    .line 592
    iget-object p1, p0, Lmaster/flame/danmaku/a/a$a$a;->a:Lmaster/flame/danmaku/a/a$a;

    invoke-virtual {p1}, Lmaster/flame/danmaku/a/a$a;->e()J

    move-result-wide v6

    cmp-long p1, v0, v4

    if-gtz p1, :cond_5

    sub-long v4, v6, v0

    .line 593
    iget-object p1, p0, Lmaster/flame/danmaku/a/a$a$a;->a:Lmaster/flame/danmaku/a/a$a;

    iget-object p1, p1, Lmaster/flame/danmaku/a/a$a;->e:Lmaster/flame/danmaku/a/a;

    iget-object p1, p1, Lmaster/flame/danmaku/a/a;->a:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object p1, p1, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->t:Lmaster/flame/danmaku/danmaku/model/android/d;

    iget-wide v0, p1, Lmaster/flame/danmaku/danmaku/model/android/d;->d:J

    cmp-long p1, v4, v0

    if-lez p1, :cond_4

    goto :goto_1

    .line 596
    :cond_4
    iget-object p1, p0, Lmaster/flame/danmaku/a/a$a$a;->a:Lmaster/flame/danmaku/a/a$a;

    invoke-static {p1}, Lmaster/flame/danmaku/a/a$a;->c(Lmaster/flame/danmaku/a/a$a;)V

    goto :goto_2

    .line 594
    :cond_5
    :goto_1
    iget-object p1, p0, Lmaster/flame/danmaku/a/a$a$a;->a:Lmaster/flame/danmaku/a/a$a;

    invoke-static {p1}, Lmaster/flame/danmaku/a/a$a;->b(Lmaster/flame/danmaku/a/a$a;)V

    .line 598
    :goto_2
    invoke-direct {p0, v3}, Lmaster/flame/danmaku/a/a$a$a;->b(Z)J

    .line 599
    invoke-virtual {p0}, Lmaster/flame/danmaku/a/a$a$a;->d()V

    goto/16 :goto_5

    .line 583
    :pswitch_7
    iget-object p1, p0, Lmaster/flame/danmaku/a/a$a$a;->a:Lmaster/flame/danmaku/a/a$a;

    invoke-static {p1}, Lmaster/flame/danmaku/a/a$a;->c(Lmaster/flame/danmaku/a/a$a;)V

    goto/16 :goto_5

    :pswitch_8
    const/4 p1, 0x3

    .line 544
    invoke-virtual {p0, p1}, Lmaster/flame/danmaku/a/a$a$a;->removeMessages(I)V

    .line 545
    iget-object p1, p0, Lmaster/flame/danmaku/a/a$a$a;->a:Lmaster/flame/danmaku/a/a$a;

    iget-object p1, p1, Lmaster/flame/danmaku/a/a$a;->e:Lmaster/flame/danmaku/a/a;

    iget-object p1, p1, Lmaster/flame/danmaku/a/a;->e:Lmaster/flame/danmaku/a/h$a;

    if-eqz p1, :cond_6

    iget-object p1, p0, Lmaster/flame/danmaku/a/a$a$a;->a:Lmaster/flame/danmaku/a/a$a;

    iget-object p1, p1, Lmaster/flame/danmaku/a/a$a;->e:Lmaster/flame/danmaku/a/a;

    iget-boolean p1, p1, Lmaster/flame/danmaku/a/a;->i:Z

    if-eqz p1, :cond_7

    :cond_6
    iget-boolean p1, p0, Lmaster/flame/danmaku/a/a$a$a;->d:Z

    if-eqz p1, :cond_8

    :cond_7
    const/4 p1, 0x1

    goto :goto_3

    :cond_8
    const/4 p1, 0x0

    .line 546
    :goto_3
    invoke-direct {p0, p1}, Lmaster/flame/danmaku/a/a$a$a;->b(Z)J

    if-eqz p1, :cond_9

    .line 548
    iput-boolean v2, p0, Lmaster/flame/danmaku/a/a$a$a;->d:Z

    .line 549
    :cond_9
    iget-object p1, p0, Lmaster/flame/danmaku/a/a$a$a;->a:Lmaster/flame/danmaku/a/a$a;

    iget-object p1, p1, Lmaster/flame/danmaku/a/a$a;->e:Lmaster/flame/danmaku/a/a;

    iget-object p1, p1, Lmaster/flame/danmaku/a/a;->e:Lmaster/flame/danmaku/a/h$a;

    if-eqz p1, :cond_c

    iget-object p1, p0, Lmaster/flame/danmaku/a/a$a$a;->a:Lmaster/flame/danmaku/a/a$a;

    iget-object p1, p1, Lmaster/flame/danmaku/a/a$a;->e:Lmaster/flame/danmaku/a/a;

    iget-boolean p1, p1, Lmaster/flame/danmaku/a/a;->i:Z

    if-nez p1, :cond_c

    .line 550
    iget-object p1, p0, Lmaster/flame/danmaku/a/a$a$a;->a:Lmaster/flame/danmaku/a/a$a;

    iget-object p1, p1, Lmaster/flame/danmaku/a/a$a;->e:Lmaster/flame/danmaku/a/a;

    iget-object p1, p1, Lmaster/flame/danmaku/a/a;->e:Lmaster/flame/danmaku/a/h$a;

    invoke-interface {p1}, Lmaster/flame/danmaku/a/h$a;->a()V

    .line 551
    iget-object p1, p0, Lmaster/flame/danmaku/a/a$a$a;->a:Lmaster/flame/danmaku/a/a$a;

    iget-object p1, p1, Lmaster/flame/danmaku/a/a$a;->e:Lmaster/flame/danmaku/a/a;

    iput-boolean v3, p1, Lmaster/flame/danmaku/a/a;->i:Z

    goto :goto_5

    .line 556
    :pswitch_9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lmaster/flame/danmaku/danmaku/model/d;

    .line 557
    invoke-direct {p0, p1}, Lmaster/flame/danmaku/a/a$a$a;->b(Lmaster/flame/danmaku/danmaku/model/d;)V

    goto :goto_5

    .line 531
    :pswitch_a
    iget-object p1, p0, Lmaster/flame/danmaku/a/a$a$a;->a:Lmaster/flame/danmaku/a/a$a;

    invoke-static {p1}, Lmaster/flame/danmaku/a/a$a;->b(Lmaster/flame/danmaku/a/a$a;)V

    :goto_4
    const/16 p1, 0x12c

    if-ge v2, p1, :cond_a

    .line 533
    iget-object p1, p0, Lmaster/flame/danmaku/a/a$a$a;->a:Lmaster/flame/danmaku/a/a$a;

    iget-object p1, p1, Lmaster/flame/danmaku/a/a$a;->d:Lmaster/flame/danmaku/danmaku/model/a/b;

    new-instance v0, Lmaster/flame/danmaku/danmaku/model/android/f;

    invoke-direct {v0}, Lmaster/flame/danmaku/danmaku/model/android/f;-><init>()V

    invoke-interface {p1, v0}, Lmaster/flame/danmaku/danmaku/model/a/b;->a(Lmaster/flame/danmaku/danmaku/model/a/c;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 537
    :cond_a
    :pswitch_b
    invoke-direct {p0}, Lmaster/flame/danmaku/a/a$a$a;->e()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-gtz p1, :cond_b

    .line 539
    iget-object p1, p0, Lmaster/flame/danmaku/a/a$a$a;->a:Lmaster/flame/danmaku/a/a$a;

    iget-object p1, p1, Lmaster/flame/danmaku/a/a$a;->e:Lmaster/flame/danmaku/a/a;

    iget-object p1, p1, Lmaster/flame/danmaku/a/a;->a:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object p1, p1, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->t:Lmaster/flame/danmaku/danmaku/model/android/d;

    iget-wide v0, p1, Lmaster/flame/danmaku/danmaku/model/android/d;->d:J

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    :cond_b
    const/16 p1, 0x10

    .line 541
    invoke-virtual {p0, p1, v0, v1}, Lmaster/flame/danmaku/a/a$a$a;->sendEmptyMessageDelayed(IJ)Z

    :cond_c
    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x10
        :pswitch_b
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
