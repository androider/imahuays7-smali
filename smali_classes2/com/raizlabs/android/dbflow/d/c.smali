.class public Lcom/raizlabs/android/dbflow/d/c;
.super Ljava/lang/Thread;
.source "DBBatchSaveQueue.java"


# instance fields
.field private a:I

.field private b:J

.field private final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:Lcom/raizlabs/android/dbflow/structure/b/a/g$b;

.field private f:Lcom/raizlabs/android/dbflow/structure/b/a/g$c;

.field private g:Ljava/lang/Runnable;

.field private h:Lcom/raizlabs/android/dbflow/config/b;

.field private final i:Lcom/raizlabs/android/dbflow/structure/b/a/e$c;

.field private final j:Lcom/raizlabs/android/dbflow/structure/b/a/g$c;

.field private final k:Lcom/raizlabs/android/dbflow/structure/b/a/g$b;


# direct methods
.method constructor <init>(Lcom/raizlabs/android/dbflow/config/b;)V
    .locals 2

    const-string v0, "DBBatchSaveQueue"

    .line 64
    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x32

    .line 37
    iput v0, p0, Lcom/raizlabs/android/dbflow/d/c;->a:I

    const-wide/16 v0, 0x7530

    .line 42
    iput-wide v0, p0, Lcom/raizlabs/android/dbflow/d/c;->b:J

    const/4 v0, 0x0

    .line 52
    iput-boolean v0, p0, Lcom/raizlabs/android/dbflow/d/c;->d:Z

    .line 236
    new-instance v0, Lcom/raizlabs/android/dbflow/d/c$1;

    invoke-direct {v0, p0}, Lcom/raizlabs/android/dbflow/d/c$1;-><init>(Lcom/raizlabs/android/dbflow/d/c;)V

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/d/c;->i:Lcom/raizlabs/android/dbflow/structure/b/a/e$c;

    .line 249
    new-instance v0, Lcom/raizlabs/android/dbflow/d/c$2;

    invoke-direct {v0, p0}, Lcom/raizlabs/android/dbflow/d/c$2;-><init>(Lcom/raizlabs/android/dbflow/d/c;)V

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/d/c;->j:Lcom/raizlabs/android/dbflow/structure/b/a/g$c;

    .line 258
    new-instance v0, Lcom/raizlabs/android/dbflow/d/c$3;

    invoke-direct {v0, p0}, Lcom/raizlabs/android/dbflow/d/c$3;-><init>(Lcom/raizlabs/android/dbflow/d/c;)V

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/d/c;->k:Lcom/raizlabs/android/dbflow/structure/b/a/g$b;

    .line 65
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/d/c;->h:Lcom/raizlabs/android/dbflow/config/b;

    .line 66
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/d/c;->c:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic a(Lcom/raizlabs/android/dbflow/d/c;)Lcom/raizlabs/android/dbflow/structure/b/a/g$c;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/raizlabs/android/dbflow/d/c;->f:Lcom/raizlabs/android/dbflow/structure/b/a/g$c;

    return-object p0
.end method

.method static synthetic b(Lcom/raizlabs/android/dbflow/d/c;)Lcom/raizlabs/android/dbflow/structure/b/a/g$b;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/raizlabs/android/dbflow/d/c;->e:Lcom/raizlabs/android/dbflow/structure/b/a/g$b;

    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 119
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 120
    invoke-static {}, Landroid/os/Looper;->prepare()V

    const/16 v0, 0xa

    .line 121
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/d/c;->c:Ljava/util/ArrayList;

    monitor-enter v0

    .line 125
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/raizlabs/android/dbflow/d/c;->c:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 126
    iget-object v2, p0, Lcom/raizlabs/android/dbflow/d/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 127
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/d/c;->h:Lcom/raizlabs/android/dbflow/config/b;

    new-instance v2, Lcom/raizlabs/android/dbflow/structure/b/a/e$a;

    iget-object v3, p0, Lcom/raizlabs/android/dbflow/d/c;->i:Lcom/raizlabs/android/dbflow/structure/b/a/e$c;

    invoke-direct {v2, v3}, Lcom/raizlabs/android/dbflow/structure/b/a/e$a;-><init>(Lcom/raizlabs/android/dbflow/structure/b/a/e$c;)V

    .line 131
    invoke-virtual {v2, v1}, Lcom/raizlabs/android/dbflow/structure/b/a/e$a;->a(Ljava/util/Collection;)Lcom/raizlabs/android/dbflow/structure/b/a/e$a;

    move-result-object v1

    .line 132
    invoke-virtual {v1}, Lcom/raizlabs/android/dbflow/structure/b/a/e$a;->a()Lcom/raizlabs/android/dbflow/structure/b/a/e;

    move-result-object v1

    .line 129
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/config/b;->a(Lcom/raizlabs/android/dbflow/structure/b/a/c;)Lcom/raizlabs/android/dbflow/structure/b/a/g$a;

    move-result-object v0

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/d/c;->j:Lcom/raizlabs/android/dbflow/structure/b/a/g$c;

    .line 133
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/structure/b/a/g$a;->a(Lcom/raizlabs/android/dbflow/structure/b/a/g$c;)Lcom/raizlabs/android/dbflow/structure/b/a/g$a;

    move-result-object v0

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/d/c;->k:Lcom/raizlabs/android/dbflow/structure/b/a/g$b;

    .line 134
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/structure/b/a/g$a;->a(Lcom/raizlabs/android/dbflow/structure/b/a/g$b;)Lcom/raizlabs/android/dbflow/structure/b/a/g$a;

    move-result-object v0

    .line 135
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/structure/b/a/g$a;->a()Lcom/raizlabs/android/dbflow/structure/b/a/g;

    move-result-object v0

    .line 136
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/structure/b/a/g;->b()V

    goto :goto_0

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/d/c;->g:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 138
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/d/c;->g:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 143
    :cond_2
    :goto_0
    :try_start_1
    iget-wide v0, p0, Lcom/raizlabs/android/dbflow/d/c;->b:J

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 145
    :catch_0
    sget-object v0, Lcom/raizlabs/android/dbflow/config/FlowLog$Level;->I:Lcom/raizlabs/android/dbflow/config/FlowLog$Level;

    const-string v1, "DBRequestQueue Batch interrupted to start saving"

    invoke-static {v0, v1}, Lcom/raizlabs/android/dbflow/config/FlowLog;->a(Lcom/raizlabs/android/dbflow/config/FlowLog$Level;Ljava/lang/String;)V

    .line 148
    :goto_1
    iget-boolean v0, p0, Lcom/raizlabs/android/dbflow/d/c;->d:Z

    if-eqz v0, :cond_0

    return-void

    :catchall_0
    move-exception v1

    .line 127
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
