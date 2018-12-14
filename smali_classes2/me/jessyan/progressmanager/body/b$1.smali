.class Lme/jessyan/progressmanager/body/b$1;
.super Lokio/g;
.source "ProgressResponseBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/jessyan/progressmanager/body/b;->a(Lokio/r;)Lokio/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lme/jessyan/progressmanager/body/b;

.field private b:J

.field private c:J

.field private d:J


# direct methods
.method constructor <init>(Lme/jessyan/progressmanager/body/b;Lokio/r;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lme/jessyan/progressmanager/body/b$1;->a:Lme/jessyan/progressmanager/body/b;

    invoke-direct {p0, p2}, Lokio/g;-><init>(Lokio/r;)V

    const-wide/16 p1, 0x0

    .line 79
    iput-wide p1, p0, Lme/jessyan/progressmanager/body/b$1;->b:J

    .line 80
    iput-wide p1, p0, Lme/jessyan/progressmanager/body/b$1;->c:J

    .line 81
    iput-wide p1, p0, Lme/jessyan/progressmanager/body/b$1;->d:J

    return-void
.end method


# virtual methods
.method public read(Lokio/c;J)J
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v12, p0

    const/4 v1, 0x0

    .line 87
    :try_start_0
    invoke-super/range {p0 .. p3}, Lokio/g;->read(Lokio/c;J)J

    move-result-wide v13
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    iget-object v2, v12, Lme/jessyan/progressmanager/body/b$1;->a:Lme/jessyan/progressmanager/body/b;

    iget-object v2, v2, Lme/jessyan/progressmanager/body/b;->e:Lme/jessyan/progressmanager/body/ProgressInfo;

    invoke-virtual {v2}, Lme/jessyan/progressmanager/body/ProgressInfo;->a()J

    move-result-wide v2

    const-wide/16 v9, 0x0

    cmp-long v4, v2, v9

    if-nez v4, :cond_0

    .line 96
    iget-object v2, v12, Lme/jessyan/progressmanager/body/b$1;->a:Lme/jessyan/progressmanager/body/b;

    iget-object v2, v2, Lme/jessyan/progressmanager/body/b;->e:Lme/jessyan/progressmanager/body/ProgressInfo;

    iget-object v3, v12, Lme/jessyan/progressmanager/body/b$1;->a:Lme/jessyan/progressmanager/body/b;

    invoke-virtual {v3}, Lme/jessyan/progressmanager/body/b;->contentLength()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lme/jessyan/progressmanager/body/ProgressInfo;->b(J)V

    .line 99
    :cond_0
    iget-wide v2, v12, Lme/jessyan/progressmanager/body/b$1;->b:J

    const-wide/16 v4, -0x1

    cmp-long v6, v13, v4

    if-eqz v6, :cond_1

    move-wide v6, v13

    goto :goto_0

    :cond_1
    move-wide v6, v9

    :goto_0
    const/4 v8, 0x0

    add-long v9, v2, v6

    iput-wide v9, v12, Lme/jessyan/progressmanager/body/b$1;->b:J

    .line 100
    iget-wide v2, v12, Lme/jessyan/progressmanager/body/b$1;->d:J

    cmp-long v6, v13, v4

    if-eqz v6, :cond_2

    move-wide v6, v13

    goto :goto_1

    :cond_2
    const-wide/16 v6, 0x0

    :goto_1
    const/4 v8, 0x0

    add-long v8, v2, v6

    iput-wide v8, v12, Lme/jessyan/progressmanager/body/b$1;->d:J

    .line 101
    iget-object v2, v12, Lme/jessyan/progressmanager/body/b$1;->a:Lme/jessyan/progressmanager/body/b;

    iget-object v2, v2, Lme/jessyan/progressmanager/body/b;->d:[Lme/jessyan/progressmanager/a;

    if-eqz v2, :cond_5

    .line 102
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    .line 103
    iget-wide v2, v12, Lme/jessyan/progressmanager/body/b$1;->c:J

    sub-long v6, v9, v2

    iget-object v2, v12, Lme/jessyan/progressmanager/body/b$1;->a:Lme/jessyan/progressmanager/body/b;

    iget v2, v2, Lme/jessyan/progressmanager/body/b;->b:I

    int-to-long v2, v2

    cmp-long v8, v6, v2

    if-gez v8, :cond_3

    cmp-long v2, v13, v4

    if-eqz v2, :cond_3

    iget-wide v2, v12, Lme/jessyan/progressmanager/body/b$1;->b:J

    iget-object v4, v12, Lme/jessyan/progressmanager/body/b$1;->a:Lme/jessyan/progressmanager/body/b;

    iget-object v4, v4, Lme/jessyan/progressmanager/body/b;->e:Lme/jessyan/progressmanager/body/ProgressInfo;

    invoke-virtual {v4}, Lme/jessyan/progressmanager/body/ProgressInfo;->a()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_5

    .line 105
    :cond_3
    iget-wide v7, v12, Lme/jessyan/progressmanager/body/b$1;->d:J

    .line 106
    iget-wide v5, v12, Lme/jessyan/progressmanager/body/b$1;->b:J

    .line 107
    iget-wide v2, v12, Lme/jessyan/progressmanager/body/b$1;->c:J

    sub-long v17, v9, v2

    const/4 v11, 0x0

    .line 108
    :goto_2
    iget-object v1, v12, Lme/jessyan/progressmanager/body/b$1;->a:Lme/jessyan/progressmanager/body/b;

    iget-object v1, v1, Lme/jessyan/progressmanager/body/b;->d:[Lme/jessyan/progressmanager/a;

    array-length v1, v1

    if-ge v11, v1, :cond_4

    .line 109
    iget-object v1, v12, Lme/jessyan/progressmanager/body/b$1;->a:Lme/jessyan/progressmanager/body/b;

    iget-object v1, v1, Lme/jessyan/progressmanager/body/b;->d:[Lme/jessyan/progressmanager/a;

    aget-object v19, v1, v11

    .line 110
    iget-object v1, v12, Lme/jessyan/progressmanager/body/b$1;->a:Lme/jessyan/progressmanager/body/b;

    iget-object v3, v1, Lme/jessyan/progressmanager/body/b;->a:Landroid/os/Handler;

    new-instance v4, Lme/jessyan/progressmanager/body/b$1$1;

    move-object v1, v4

    move-object v2, v12

    move-object v15, v3

    move-object v12, v4

    move-wide v3, v13

    move-wide/from16 v20, v5

    move-wide v5, v7

    move-wide/from16 v22, v7

    move-wide/from16 v7, v20

    move-wide/from16 v24, v13

    move-wide v13, v9

    move-wide/from16 v9, v17

    move/from16 v16, v11

    move-object/from16 v11, v19

    invoke-direct/range {v1 .. v11}, Lme/jessyan/progressmanager/body/b$1$1;-><init>(Lme/jessyan/progressmanager/body/b$1;JJJJLme/jessyan/progressmanager/a;)V

    invoke-virtual {v15, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    add-int/lit8 v11, v16, 0x1

    move-wide v9, v13

    move-wide/from16 v5, v20

    move-wide/from16 v7, v22

    move-wide/from16 v13, v24

    move-object/from16 v12, p0

    goto :goto_2

    :cond_4
    move-object v2, v12

    move-wide/from16 v24, v13

    move-wide v13, v9

    .line 123
    iput-wide v13, v2, Lme/jessyan/progressmanager/body/b$1;->c:J

    const-wide/16 v3, 0x0

    .line 124
    iput-wide v3, v2, Lme/jessyan/progressmanager/body/b$1;->d:J

    goto :goto_3

    :cond_5
    move-object v2, v12

    move-wide/from16 v24, v13

    :goto_3
    return-wide v24

    :catch_0
    move-exception v0

    move-object v2, v12

    .line 89
    invoke-static {v0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    .line 90
    :goto_4
    iget-object v3, v2, Lme/jessyan/progressmanager/body/b$1;->a:Lme/jessyan/progressmanager/body/b;

    iget-object v3, v3, Lme/jessyan/progressmanager/body/b;->d:[Lme/jessyan/progressmanager/a;

    array-length v3, v3

    if-ge v1, v3, :cond_6

    .line 91
    iget-object v3, v2, Lme/jessyan/progressmanager/body/b$1;->a:Lme/jessyan/progressmanager/body/b;

    iget-object v3, v3, Lme/jessyan/progressmanager/body/b;->d:[Lme/jessyan/progressmanager/a;

    aget-object v3, v3, v1

    iget-object v4, v2, Lme/jessyan/progressmanager/body/b$1;->a:Lme/jessyan/progressmanager/body/b;

    iget-object v4, v4, Lme/jessyan/progressmanager/body/b;->e:Lme/jessyan/progressmanager/body/ProgressInfo;

    invoke-virtual {v4}, Lme/jessyan/progressmanager/body/ProgressInfo;->b()J

    move-result-wide v4

    invoke-interface {v3, v4, v5, v0}, Lme/jessyan/progressmanager/a;->a(JLjava/lang/Exception;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 93
    :cond_6
    throw v0
.end method
