.class Lcom/yanzhenjie/permission/checker/RecordAudioTest;
.super Ljava/lang/Object;
.source "RecordAudioTest.java"

# interfaces
.implements Lcom/yanzhenjie/permission/checker/PermissionTest;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/yanzhenjie/permission/checker/RecordAudioTest;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public test()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 38
    new-instance v0, Landroid/media/MediaRecorder;

    invoke-direct {v0}, Landroid/media/MediaRecorder;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "permission"

    const-string v4, "test"

    .line 41
    invoke-static {v3, v4}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 43
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    const/4 v2, 0x3

    .line 44
    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 45
    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 46
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 47
    invoke-virtual {v0}, Landroid/media/MediaRecorder;->prepare()V

    .line 48
    invoke-virtual {v0}, Landroid/media/MediaRecorder;->start()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    :try_start_2
    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 59
    :catch_0
    :try_start_3
    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    if-eqz v3, :cond_0

    .line 63
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_0
    return v1

    :catchall_0
    move-exception v1

    move-object v2, v3

    goto :goto_1

    :catch_2
    move-object v2, v3

    goto :goto_0

    :catchall_1
    move-exception v1

    goto :goto_1

    .line 51
    :catch_3
    :goto_0
    :try_start_4
    iget-object v3, p0, Lcom/yanzhenjie/permission/checker/RecordAudioTest;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "android.hardware.microphone"

    .line 52
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    xor-int/2addr v1, v3

    .line 55
    :try_start_5
    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 59
    :catch_4
    :try_start_6
    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    :catch_5
    if-eqz v2, :cond_1

    .line 63
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_1
    return v1

    .line 55
    :goto_1
    :try_start_7
    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    .line 59
    :catch_6
    :try_start_8
    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    :catch_7
    if-eqz v2, :cond_2

    .line 63
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 64
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_2
    throw v1
.end method
