.class public Lcom/mh/movie/core/mvp/ui/activity/zxing/a/c;
.super Ljava/lang/Object;
.source "CameraManager.java"


# static fields
.field private static final a:Ljava/lang/String; = "c"


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Lcom/mh/movie/core/mvp/ui/activity/zxing/a/b;

.field private final d:Lcom/mh/movie/core/mvp/ui/activity/zxing/a/d;

.field private e:Landroid/hardware/Camera;

.field private f:Lcom/mh/movie/core/mvp/ui/activity/zxing/a/a;

.field private g:Z

.field private h:Z

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 59
    iput v0, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/a/c;->i:I

    .line 62
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/a/c;->b:Landroid/content/Context;

    .line 63
    new-instance v0, Lcom/mh/movie/core/mvp/ui/activity/zxing/a/b;

    invoke-direct {v0, p1}, Lcom/mh/movie/core/mvp/ui/activity/zxing/a/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/a/c;->c:Lcom/mh/movie/core/mvp/ui/activity/zxing/a/b;

    .line 64
    new-instance p1, Lcom/mh/movie/core/mvp/ui/activity/zxing/a/d;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/a/c;->c:Lcom/mh/movie/core/mvp/ui/activity/zxing/a/b;

    invoke-direct {p1, v0}, Lcom/mh/movie/core/mvp/ui/activity/zxing/a/d;-><init>(Lcom/mh/movie/core/mvp/ui/activity/zxing/a/b;)V

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/a/c;->d:Lcom/mh/movie/core/mvp/ui/activity/zxing/a/d;

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Landroid/os/Handler;I)V
    .locals 2

    monitor-enter p0

    .line 184
    :try_start_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/a/c;->e:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 185
    iget-boolean v1, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/a/c;->h:Z

    if-eqz v1, :cond_0

    .line 186
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/a/c;->d:Lcom/mh/movie/core/mvp/ui/activity/zxing/a/d;

    invoke-virtual {v1, p1, p2}, Lcom/mh/movie/core/mvp/ui/activity/zxing/a/d;->a(Landroid/os/Handler;I)V

    .line 187
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/a/c;->d:Lcom/mh/movie/core/mvp/ui/activity/zxing/a/d;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 183
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Landroid/view/SurfaceHolder;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/a/c;->e:Landroid/hardware/Camera;

    if-nez v0, :cond_2

    .line 78
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/a/c;->i:I

    if-ltz v0, :cond_0

    .line 79
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/a/c;->i:I

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/activity/zxing/a/a/a;->a(I)Landroid/hardware/Camera;

    move-result-object v0

    goto :goto_0

    .line 81
    :cond_0
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/activity/zxing/a/a/a;->a()Landroid/hardware/Camera;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    .line 85
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1

    .line 87
    :cond_1
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/a/c;->e:Landroid/hardware/Camera;

    .line 89
    :cond_2
    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 91
    iget-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/a/c;->g:Z

    const/4 v1, 0x1

    if-nez p1, :cond_3

    .line 92
    iput-boolean v1, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/a/c;->g:Z

    .line 93
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/a/c;->c:Lcom/mh/movie/core/mvp/ui/activity/zxing/a/b;

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/activity/zxing/a/b;->a(Landroid/hardware/Camera;)V

    .line 96
    :cond_3
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p1

    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_1

    .line 97
    :cond_4
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    :goto_1
    :try_start_1
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/a/c;->c:Lcom/mh/movie/core/mvp/ui/activity/zxing/a/b;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/mh/movie/core/mvp/ui/activity/zxing/a/b;->a(Landroid/hardware/Camera;Z)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 104
    :catch_0
    :try_start_2
    sget-object v2, Lcom/mh/movie/core/mvp/ui/activity/zxing/a/c;->a:Ljava/lang/String;

    const-string v3, "Camera rejected parameters. Setting only minimal safe-mode parameters"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    sget-object v2, Lcom/mh/movie/core/mvp/ui/activity/zxing/a/c;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resetting to saved camera params: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_5

    .line 108
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 109
    invoke-virtual {v2, p1}, Landroid/hardware/Camera$Parameters;->unflatten(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 111
    :try_start_3
    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 112
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/a/c;->c:Lcom/mh/movie/core/mvp/ui/activity/zxing/a/b;

    invoke-virtual {p1, v0, v1}, Lcom/mh/movie/core/mvp/ui/activity/zxing/a/b;->a(Landroid/hardware/Camera;Z)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 115
    :catch_1
    :try_start_4
    sget-object p1, Lcom/mh/movie/core/mvp/ui/activity/zxing/a/c;->a:Ljava/lang/String;

    const-string v0, "Camera rejected even safe-mode parameters! No configuration"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 120
    :cond_5
    :goto_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 74
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a()Z
    .locals 1

    monitor-enter p0

    .line 132
    :try_start_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/a/c;->e:Landroid/hardware/Camera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()V
    .locals 1

    monitor-enter p0

    .line 139
    :try_start_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/a/c;->e:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/a/c;->e:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    const/4 v0, 0x0

    .line 141
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/a/c;->e:Landroid/hardware/Camera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 138
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()V
    .locals 3

    monitor-enter p0

    .line 152
    :try_start_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/a/c;->e:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 153
    iget-boolean v1, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/a/c;->h:Z

    if-nez v1, :cond_0

    .line 154
    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    const/4 v0, 0x1

    .line 155
    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/a/c;->h:Z

    .line 156
    new-instance v0, Lcom/mh/movie/core/mvp/ui/activity/zxing/a/a;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/a/c;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/a/c;->e:Landroid/hardware/Camera;

    invoke-direct {v0, v1, v2}, Lcom/mh/movie/core/mvp/ui/activity/zxing/a/a;-><init>(Landroid/content/Context;Landroid/hardware/Camera;)V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/a/c;->f:Lcom/mh/movie/core/mvp/ui/activity/zxing/a/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 151
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()V
    .locals 3

    monitor-enter p0

    .line 164
    :try_start_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/a/c;->f:Lcom/mh/movie/core/mvp/ui/activity/zxing/a/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/a/c;->f:Lcom/mh/movie/core/mvp/ui/activity/zxing/a/a;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/activity/zxing/a/a;->b()V

    .line 166
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/a/c;->f:Lcom/mh/movie/core/mvp/ui/activity/zxing/a/a;

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/a/c;->e:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/a/c;->h:Z

    if-eqz v0, :cond_1

    .line 169
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/a/c;->e:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 170
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/a/c;->d:Lcom/mh/movie/core/mvp/ui/activity/zxing/a/d;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mh/movie/core/mvp/ui/activity/zxing/a/d;->a(Landroid/os/Handler;I)V

    .line 171
    iput-boolean v2, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/a/c;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 163
    monitor-exit p0

    throw v0
.end method

.method public e()Landroid/graphics/Point;
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/a/c;->c:Lcom/mh/movie/core/mvp/ui/activity/zxing/a/b;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/activity/zxing/a/b;->a()Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public f()Landroid/hardware/Camera$Size;
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/a/c;->e:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/a/c;->e:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
