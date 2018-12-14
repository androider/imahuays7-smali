.class public final Lme/jessyan/progressmanager/body/a$a;
.super Lokio/f;
.source "ProgressRequestBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/jessyan/progressmanager/body/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lme/jessyan/progressmanager/body/a;

.field private b:J

.field private c:J

.field private d:J


# direct methods
.method public constructor <init>(Lme/jessyan/progressmanager/body/a;Lokio/q;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lme/jessyan/progressmanager/body/a$a;->a:Lme/jessyan/progressmanager/body/a;

    .line 98
    invoke-direct {p0, p2}, Lokio/f;-><init>(Lokio/q;)V

    const-wide/16 p1, 0x0

    .line 93
    iput-wide p1, p0, Lme/jessyan/progressmanager/body/a$a;->b:J

    .line 94
    iput-wide p1, p0, Lme/jessyan/progressmanager/body/a$a;->c:J

    .line 95
    iput-wide p1, p0, Lme/jessyan/progressmanager/body/a$a;->d:J

    return-void
.end method


# virtual methods
.method public write(Lokio/c;J)V
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v10, p0

    const/4 v3, 0x0

    .line 104
    :try_start_0
    invoke-super/range {p0 .. p3}, Lokio/f;->write(Lokio/c;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    iget-object v4, v10, Lme/jessyan/progressmanager/body/a$a;->a:Lme/jessyan/progressmanager/body/a;

    iget-object v4, v4, Lme/jessyan/progressmanager/body/a;->e:Lme/jessyan/progressmanager/body/ProgressInfo;

    invoke-virtual {v4}, Lme/jessyan/progressmanager/body/ProgressInfo;->a()J

    move-result-wide v4

    const-wide/16 v11, 0x0

    cmp-long v6, v4, v11

    if-nez v6, :cond_0

    .line 113
    iget-object v4, v10, Lme/jessyan/progressmanager/body/a$a;->a:Lme/jessyan/progressmanager/body/a;

    iget-object v4, v4, Lme/jessyan/progressmanager/body/a;->e:Lme/jessyan/progressmanager/body/ProgressInfo;

    iget-object v5, v10, Lme/jessyan/progressmanager/body/a$a;->a:Lme/jessyan/progressmanager/body/a;

    invoke-virtual {v5}, Lme/jessyan/progressmanager/body/a;->contentLength()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lme/jessyan/progressmanager/body/ProgressInfo;->b(J)V

    .line 115
    :cond_0
    iget-wide v4, v10, Lme/jessyan/progressmanager/body/a$a;->b:J

    add-long v6, v4, p2

    iput-wide v6, v10, Lme/jessyan/progressmanager/body/a$a;->b:J

    .line 116
    iget-wide v4, v10, Lme/jessyan/progressmanager/body/a$a;->d:J

    add-long v6, v4, p2

    iput-wide v6, v10, Lme/jessyan/progressmanager/body/a$a;->d:J

    .line 117
    iget-object v1, v10, Lme/jessyan/progressmanager/body/a$a;->a:Lme/jessyan/progressmanager/body/a;

    iget-object v1, v1, Lme/jessyan/progressmanager/body/a;->d:[Lme/jessyan/progressmanager/a;

    if-eqz v1, :cond_3

    .line 118
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    .line 119
    iget-wide v1, v10, Lme/jessyan/progressmanager/body/a$a;->c:J

    sub-long v4, v13, v1

    iget-object v1, v10, Lme/jessyan/progressmanager/body/a$a;->a:Lme/jessyan/progressmanager/body/a;

    iget v1, v1, Lme/jessyan/progressmanager/body/a;->b:I

    int-to-long v1, v1

    cmp-long v6, v4, v1

    if-gez v6, :cond_1

    iget-wide v1, v10, Lme/jessyan/progressmanager/body/a$a;->b:J

    iget-object v4, v10, Lme/jessyan/progressmanager/body/a$a;->a:Lme/jessyan/progressmanager/body/a;

    iget-object v4, v4, Lme/jessyan/progressmanager/body/a;->e:Lme/jessyan/progressmanager/body/ProgressInfo;

    invoke-virtual {v4}, Lme/jessyan/progressmanager/body/ProgressInfo;->a()J

    move-result-wide v4

    cmp-long v6, v1, v4

    if-nez v6, :cond_3

    .line 120
    :cond_1
    iget-wide v7, v10, Lme/jessyan/progressmanager/body/a$a;->d:J

    .line 121
    iget-wide v5, v10, Lme/jessyan/progressmanager/body/a$a;->b:J

    .line 122
    iget-wide v1, v10, Lme/jessyan/progressmanager/body/a$a;->c:J

    sub-long v15, v13, v1

    const/4 v9, 0x0

    .line 123
    :goto_0
    iget-object v1, v10, Lme/jessyan/progressmanager/body/a$a;->a:Lme/jessyan/progressmanager/body/a;

    iget-object v1, v1, Lme/jessyan/progressmanager/body/a;->d:[Lme/jessyan/progressmanager/a;

    array-length v1, v1

    if-ge v9, v1, :cond_2

    .line 124
    iget-object v1, v10, Lme/jessyan/progressmanager/body/a$a;->a:Lme/jessyan/progressmanager/body/a;

    iget-object v1, v1, Lme/jessyan/progressmanager/body/a;->d:[Lme/jessyan/progressmanager/a;

    aget-object v17, v1, v9

    .line 125
    iget-object v1, v10, Lme/jessyan/progressmanager/body/a$a;->a:Lme/jessyan/progressmanager/body/a;

    iget-object v3, v1, Lme/jessyan/progressmanager/body/a;->a:Landroid/os/Handler;

    new-instance v4, Lme/jessyan/progressmanager/body/a$a$1;

    move-object v1, v4

    move-object v2, v10

    move-object v11, v3

    move-object v12, v4

    move-wide v3, v7

    move-wide/from16 v18, v5

    move-wide/from16 v20, v7

    move-wide v7, v15

    move/from16 v22, v9

    move-object/from16 v9, v17

    invoke-direct/range {v1 .. v9}, Lme/jessyan/progressmanager/body/a$a$1;-><init>(Lme/jessyan/progressmanager/body/a$a;JJJLme/jessyan/progressmanager/a;)V

    invoke-virtual {v11, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    add-int/lit8 v9, v22, 0x1

    move-wide/from16 v7, v20

    const-wide/16 v11, 0x0

    goto :goto_0

    .line 138
    :cond_2
    iput-wide v13, v10, Lme/jessyan/progressmanager/body/a$a;->c:J

    const-wide/16 v1, 0x0

    .line 139
    iput-wide v1, v10, Lme/jessyan/progressmanager/body/a$a;->d:J

    :cond_3
    return-void

    :catch_0
    move-exception v0

    .line 106
    invoke-static {v0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    .line 107
    :goto_1
    iget-object v1, v10, Lme/jessyan/progressmanager/body/a$a;->a:Lme/jessyan/progressmanager/body/a;

    iget-object v1, v1, Lme/jessyan/progressmanager/body/a;->d:[Lme/jessyan/progressmanager/a;

    array-length v1, v1

    if-ge v3, v1, :cond_4

    .line 108
    iget-object v1, v10, Lme/jessyan/progressmanager/body/a$a;->a:Lme/jessyan/progressmanager/body/a;

    iget-object v1, v1, Lme/jessyan/progressmanager/body/a;->d:[Lme/jessyan/progressmanager/a;

    aget-object v1, v1, v3

    iget-object v2, v10, Lme/jessyan/progressmanager/body/a$a;->a:Lme/jessyan/progressmanager/body/a;

    iget-object v2, v2, Lme/jessyan/progressmanager/body/a;->e:Lme/jessyan/progressmanager/body/ProgressInfo;

    invoke-virtual {v2}, Lme/jessyan/progressmanager/body/ProgressInfo;->b()J

    move-result-wide v4

    invoke-interface {v1, v4, v5, v0}, Lme/jessyan/progressmanager/a;->a(JLjava/lang/Exception;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 110
    :cond_4
    throw v0
.end method
