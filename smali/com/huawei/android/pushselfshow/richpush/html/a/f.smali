.class public Lcom/huawei/android/pushselfshow/richpush/html/a/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/android/pushselfshow/richpush/html/a/f$a;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field b:Landroid/os/Handler;

.field c:Ljava/lang/Runnable;

.field d:Z

.field private e:Lcom/huawei/android/pushselfshow/richpush/html/a/f$a;

.field private f:Ljava/lang/String;

.field private g:I

.field private h:Landroid/media/MediaPlayer;

.field private i:I

.field private j:Lcom/huawei/android/pushselfshow/richpush/html/api/a;


# direct methods
.method private a(Lcom/huawei/android/pushselfshow/richpush/html/a/f$a;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/android/pushselfshow/richpush/html/a/f;->e:Lcom/huawei/android/pushselfshow/richpush/html/a/f$a;

    return-void
.end method

.method private c()Z
    .locals 4

    iget-object v0, p0, Lcom/huawei/android/pushselfshow/richpush/html/a/f;->e:Lcom/huawei/android/pushselfshow/richpush/html/a/f$a;

    invoke-virtual {v0}, Lcom/huawei/android/pushselfshow/richpush/html/a/f$a;->ordinal()I

    move-result v0

    sget-object v1, Lcom/huawei/android/pushselfshow/richpush/html/a/f$a;->a:Lcom/huawei/android/pushselfshow/richpush/html/a/f$a;

    invoke-virtual {v1}, Lcom/huawei/android/pushselfshow/richpush/html/a/f$a;->ordinal()I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/huawei/android/pushselfshow/richpush/html/a/f;->h:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/huawei/android/pushselfshow/richpush/html/a/f;->h:Landroid/media/MediaPlayer;

    iget-object v0, p0, Lcom/huawei/android/pushselfshow/richpush/html/a/f;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v0, p0, Lcom/huawei/android/pushselfshow/richpush/html/a/f;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v0, p0, Lcom/huawei/android/pushselfshow/richpush/html/a/f;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/huawei/android/pushselfshow/richpush/html/a/f;->f:Ljava/lang/String;

    invoke-static {v1}, Lcom/huawei/android/pushselfshow/richpush/html/api/b;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/huawei/android/pushselfshow/richpush/html/a/f;->h:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/huawei/android/pushselfshow/richpush/html/a/f;->f:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/huawei/android/pushselfshow/richpush/html/a/f;->h:Landroid/media/MediaPlayer;

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    sget-object v1, Lcom/huawei/android/pushselfshow/richpush/html/a/f$a;->b:Lcom/huawei/android/pushselfshow/richpush/html/a/f$a;

    invoke-direct {p0, v1}, Lcom/huawei/android/pushselfshow/richpush/html/a/f;->a(Lcom/huawei/android/pushselfshow/richpush/html/a/f$a;)V

    iget-object v1, p0, Lcom/huawei/android/pushselfshow/richpush/html/a/f;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepareAsync()V

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/huawei/android/pushselfshow/richpush/html/a/f;->f:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lcom/huawei/android/pushselfshow/richpush/html/a/f;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    sget-object v0, Lcom/huawei/android/pushselfshow/richpush/html/a/f$a;->b:Lcom/huawei/android/pushselfshow/richpush/html/a/f$a;

    invoke-direct {p0, v0}, Lcom/huawei/android/pushselfshow/richpush/html/a/f;->a(Lcom/huawei/android/pushselfshow/richpush/html/a/f$a;)V

    iget-object v0, p0, Lcom/huawei/android/pushselfshow/richpush/html/a/f;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v3

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v0, v3

    goto :goto_6

    :catch_0
    move-object v0, v3

    goto :goto_1

    :catch_1
    move-object v0, v3

    goto :goto_3

    :catch_2
    move-object v0, v3

    goto :goto_4

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    goto :goto_5

    :catchall_1
    move-exception v1

    goto :goto_6

    :catch_3
    :goto_1
    :try_start_2
    const-string v1, "PushSelfShowLog"

    const-string v3, "prepareAsync/prepare error"

    invoke-static {v1, v3}, Lcom/huawei/android/a/a/a/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/huawei/android/pushselfshow/richpush/html/a/f$a;->a:Lcom/huawei/android/pushselfshow/richpush/html/a/f$a;

    invoke-direct {p0, v1}, Lcom/huawei/android/pushselfshow/richpush/html/a/f;->a(Lcom/huawei/android/pushselfshow/richpush/html/a/f$a;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_3

    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    return v2

    :catch_4
    :goto_3
    :try_start_4
    const-string v1, "PushSelfShowLog"

    const-string v3, "prepareAsync/prepare error"

    invoke-static {v1, v3}, Lcom/huawei/android/a/a/a/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/huawei/android/pushselfshow/richpush/html/a/f$a;->a:Lcom/huawei/android/pushselfshow/richpush/html/a/f$a;

    invoke-direct {p0, v1}, Lcom/huawei/android/pushselfshow/richpush/html/a/f;->a(Lcom/huawei/android/pushselfshow/richpush/html/a/f$a;)V

    if-eqz v0, :cond_3

    goto :goto_5

    :catch_5
    :goto_4
    const-string v1, "PushSelfShowLog"

    const-string v3, "prepareAsync/prepare error"

    invoke-static {v1, v3}, Lcom/huawei/android/a/a/a/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/huawei/android/pushselfshow/richpush/html/a/f$a;->a:Lcom/huawei/android/pushselfshow/richpush/html/a/f$a;

    invoke-direct {p0, v1}, Lcom/huawei/android/pushselfshow/richpush/html/a/f;->a(Lcom/huawei/android/pushselfshow/richpush/html/a/f$a;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v0, :cond_3

    :goto_5
    goto :goto_2

    :catch_6
    const-string v0, "PushSelfShowLog"

    const-string v1, "close fileInputStream error"

    invoke-static {v0, v1}, Lcom/huawei/android/a/a/a/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return v2

    :goto_6
    if-eqz v0, :cond_4

    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7

    goto :goto_7

    :catch_7
    const-string v0, "PushSelfShowLog"

    const-string v2, "close fileInputStream error"

    invoke-static {v0, v2}, Lcom/huawei/android/a/a/a/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_7
    throw v1

    :cond_5
    sget-object v1, Lcom/huawei/android/pushselfshow/richpush/html/a/f$a;->b:Lcom/huawei/android/pushselfshow/richpush/html/a/f$a;

    invoke-virtual {v1}, Lcom/huawei/android/pushselfshow/richpush/html/a/f$a;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_6

    return v2

    :cond_6
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public a()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/huawei/android/pushselfshow/richpush/html/a/f;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    sget-object v0, Lcom/huawei/android/pushselfshow/richpush/html/a/f$a;->c:Lcom/huawei/android/pushselfshow/richpush/html/a/f$a;

    invoke-direct {p0, v0}, Lcom/huawei/android/pushselfshow/richpush/html/a/f;->a(Lcom/huawei/android/pushselfshow/richpush/html/a/f$a;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/android/pushselfshow/richpush/html/a/f;->i:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "PushSelfShowLog"

    const-string v2, "play() error "

    invoke-static {v1, v2, v0}, Lcom/huawei/android/a/a/a/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public a(I)V
    .locals 1

    :try_start_0
    invoke-direct {p0}, Lcom/huawei/android/pushselfshow/richpush/html/a/f;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/android/pushselfshow/richpush/html/a/f;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    const-string p1, "PushSelfShowLog"

    const-string v0, "Send a onStatus update for the new seek"

    invoke-static {p1, v0}, Lcom/huawei/android/a/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iput p1, p0, Lcom/huawei/android/pushselfshow/richpush/html/a/f;->i:I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p1, "PushSelfShowLog"

    const-string v0, "seekToPlaying failed"

    invoke-static {p1, v0}, Lcom/huawei/android/a/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .locals 3

    const-string v0, "PushSelfShowLog"

    const-string v1, "Audio reset/Destory"

    invoke-static {v0, v1}, Lcom/huawei/android/a/a/a/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/huawei/android/pushselfshow/richpush/html/a/f;->d:Z

    iget-object v0, p0, Lcom/huawei/android/pushselfshow/richpush/html/a/f;->h:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/huawei/android/pushselfshow/richpush/html/a/f;->e:Lcom/huawei/android/pushselfshow/richpush/html/a/f$a;

    sget-object v2, Lcom/huawei/android/pushselfshow/richpush/html/a/f$a;->c:Lcom/huawei/android/pushselfshow/richpush/html/a/f$a;

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/huawei/android/pushselfshow/richpush/html/a/f;->e:Lcom/huawei/android/pushselfshow/richpush/html/a/f$a;

    sget-object v2, Lcom/huawei/android/pushselfshow/richpush/html/a/f$a;->d:Lcom/huawei/android/pushselfshow/richpush/html/a/f$a;

    if-ne v0, v2, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/huawei/android/pushselfshow/richpush/html/a/f;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    :cond_1
    iget-object v0, p0, Lcom/huawei/android/pushselfshow/richpush/html/a/f;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    iput-object v1, p0, Lcom/huawei/android/pushselfshow/richpush/html/a/f;->h:Landroid/media/MediaPlayer;

    :cond_2
    iput-object v1, p0, Lcom/huawei/android/pushselfshow/richpush/html/a/f;->f:Ljava/lang/String;

    sget-object v0, Lcom/huawei/android/pushselfshow/richpush/html/a/f$a;->a:Lcom/huawei/android/pushselfshow/richpush/html/a/f$a;

    invoke-direct {p0, v0}, Lcom/huawei/android/pushselfshow/richpush/html/a/f;->a(Lcom/huawei/android/pushselfshow/richpush/html/a/f$a;)V

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/huawei/android/pushselfshow/richpush/html/a/f;->g:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/android/pushselfshow/richpush/html/a/f;->i:I

    iget-object v0, p0, Lcom/huawei/android/pushselfshow/richpush/html/a/f;->c:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/huawei/android/pushselfshow/richpush/html/a/f;->b:Landroid/os/Handler;

    iget-object v2, p0, Lcom/huawei/android/pushselfshow/richpush/html/a/f;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_3
    iput-object v1, p0, Lcom/huawei/android/pushselfshow/richpush/html/a/f;->c:Ljava/lang/Runnable;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string v0, "PushSelfShowLog"

    const-string v1, "reset music error"

    invoke-static {v0, v1}, Lcom/huawei/android/a/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    const-string p1, "PushSelfShowLog"

    const-string v0, "on completion is calling stopped"

    invoke-static {p1, v0}, Lcom/huawei/android/a/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/huawei/android/pushselfshow/richpush/html/a/f$a;->e:Lcom/huawei/android/pushselfshow/richpush/html/a/f$a;

    invoke-direct {p0, p1}, Lcom/huawei/android/pushselfshow/richpush/html/a/f;->a(Lcom/huawei/android/pushselfshow/richpush/html/a/f$a;)V

    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2

    const-string p1, "PushSelfShowLog"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AudioPlayer.onError("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/huawei/android/a/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string p2, "url"

    iget-object p3, p0, Lcom/huawei/android/pushselfshow/richpush/html/a/f;->f:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p2, p0, Lcom/huawei/android/pushselfshow/richpush/html/a/f;->j:Lcom/huawei/android/pushselfshow/richpush/html/api/a;

    iget-object p3, p0, Lcom/huawei/android/pushselfshow/richpush/html/a/f;->a:Ljava/lang/String;

    sget-object v0, Lcom/huawei/android/pushselfshow/richpush/html/api/d$a;->n:Lcom/huawei/android/pushselfshow/richpush/html/api/d$a;

    const-string v1, "error"

    invoke-virtual {p2, p3, v0, v1, p1}, Lcom/huawei/android/pushselfshow/richpush/html/api/a;->a(Ljava/lang/String;Lcom/huawei/android/pushselfshow/richpush/html/api/d$a;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "PushSelfShowLog"

    const-string p2, "onError error"

    invoke-static {p1, p2}, Lcom/huawei/android/a/a/a/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Lcom/huawei/android/pushselfshow/richpush/html/a/f;->b()V

    const/4 p1, 0x0

    return p1
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 0

    iget p1, p0, Lcom/huawei/android/pushselfshow/richpush/html/a/f;->i:I

    invoke-virtual {p0, p1}, Lcom/huawei/android/pushselfshow/richpush/html/a/f;->a(I)V

    invoke-virtual {p0}, Lcom/huawei/android/pushselfshow/richpush/html/a/f;->a()V

    return-void
.end method
