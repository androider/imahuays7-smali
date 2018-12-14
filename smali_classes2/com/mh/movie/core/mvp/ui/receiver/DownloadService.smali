.class public Lcom/mh/movie/core/mvp/ui/receiver/DownloadService;
.super Landroid/app/IntentService;
.source "DownloadService.java"


# static fields
.field public static a:Z = false


# instance fields
.field private b:Landroid/app/NotificationManager;

.field private c:Landroid/support/v4/app/NotificationCompat$Builder;

.field private d:Landroid/os/ResultReceiver;

.field private e:Ljava/lang/String;

.field private f:Lcom/mh/movie/core/b/c;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "DownloadService"

    .line 52
    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 53
    invoke-static {}, Lcom/mh/movie/core/b/c;->a()Lcom/mh/movie/core/b/c;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/receiver/DownloadService;->f:Lcom/mh/movie/core/b/c;

    const/4 v0, 0x1

    .line 54
    sput-boolean v0, Lcom/mh/movie/core/mvp/ui/receiver/DownloadService;->a:Z

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/ui/receiver/DownloadService;)Landroid/app/NotificationManager;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/receiver/DownloadService;->b:Landroid/app/NotificationManager;

    return-object p0
.end method

.method private a()V
    .locals 5

    const-string v0, "notification"

    .line 58
    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/receiver/DownloadService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/receiver/DownloadService;->b:Landroid/app/NotificationManager;

    .line 60
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/receiver/DownloadService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/receiver/DownloadService;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 63
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    .line 65
    new-instance v1, Landroid/app/NotificationChannel;

    const-string v2, "mahua_id"

    const-string v3, "mahua_name"

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 66
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/receiver/DownloadService;->b:Landroid/app/NotificationManager;

    invoke-virtual {v2, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 70
    :cond_0
    new-instance v1, Landroid/support/v4/app/NotificationCompat$Builder;

    const-string v2, "default"

    invoke-direct {v1, p0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v2, "mahua_id"

    .line 71
    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setChannelId(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    .line 72
    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 73
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/receiver/DownloadService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/mh/movie/core/R$mipmap;->icon:I

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    sget v1, Lcom/mh/movie/core/R$mipmap;->push_logo:I

    .line 74
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/receiver/DownloadService;->c:Landroid/support/v4/app/NotificationCompat$Builder;

    return-void
.end method

.method private a(I)V
    .locals 5

    const/4 v0, 0x1

    .line 265
    invoke-direct {p0, v0, p1}, Lcom/mh/movie/core/mvp/ui/receiver/DownloadService;->a(II)V

    .line 268
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/receiver/DownloadService;->c:Landroid/support/v4/app/NotificationCompat$Builder;

    sget v2, Lcom/mh/movie/core/R$string;->android_auto_update_download_progress:I

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v0, v4

    invoke-virtual {p0, v2, v0}, Lcom/mh/movie/core/mvp/ui/receiver/DownloadService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1, p1, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 270
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const/high16 v0, 0x8000000

    invoke-static {p0, v4, p1, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 271
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/receiver/DownloadService;->c:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 272
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/receiver/DownloadService;->b:Landroid/app/NotificationManager;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/receiver/DownloadService;->c:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method private a(II)V
    .locals 3

    const/4 v0, 0x0

    .line 277
    sput-boolean v0, Lcom/mh/movie/core/mvp/ui/receiver/DownloadService;->a:Z

    .line 278
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/16 v1, 0x11

    if-ne p1, v1, :cond_0

    const-string v1, "apk"

    .line 280
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/receiver/DownloadService;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v1, "progress"

    .line 282
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 283
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/receiver/DownloadService;->d:Landroid/os/ResultReceiver;

    invoke-virtual {p2, p1, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/ui/receiver/DownloadService;I)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/mh/movie/core/mvp/ui/receiver/DownloadService;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/ui/receiver/DownloadService;II)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/mh/movie/core/mvp/ui/receiver/DownloadService;->a(II)V

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/ui/receiver/DownloadService;[Ljava/io/Closeable;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/mh/movie/core/mvp/ui/receiver/DownloadService;->a([Ljava/io/Closeable;)V

    return-void
.end method

.method private varargs a([Ljava/io/Closeable;)V
    .locals 5

    .line 247
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x0

    if-ge v2, v0, :cond_2

    .line 250
    :try_start_0
    aget-object v4, p1, v2

    if-eqz v4, :cond_0

    .line 252
    aget-object v4, p1, v2

    invoke-interface {v4}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_2

    :catch_0
    move-exception v2

    .line 255
    :try_start_1
    invoke-static {v2}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-ge v1, v0, :cond_3

    .line 258
    aput-object v3, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :goto_2
    if-ge v1, v0, :cond_1

    aput-object v3, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 257
    :cond_1
    throw v2

    :cond_2
    :goto_3
    if-ge v1, v0, :cond_3

    .line 258
    aput-object v3, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 174
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "MahuaDownload/apk/"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 175
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 176
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    const-string v1, "/"

    .line 178
    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 179
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 180
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 181
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/receiver/DownloadService;->e:Ljava/lang/String;

    .line 183
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x0

    :goto_0
    move-wide v6, v2

    .line 185
    iget-object v4, p0, Lcom/mh/movie/core/mvp/ui/receiver/DownloadService;->f:Lcom/mh/movie/core/b/c;

    const-wide/16 v8, -0x1

    new-instance v10, Lcom/mh/movie/core/mvp/ui/receiver/DownloadService$1;

    invoke-direct {v10, p0, v6, v7, v1}, Lcom/mh/movie/core/mvp/ui/receiver/DownloadService$1;-><init>(Lcom/mh/movie/core/mvp/ui/receiver/DownloadService;JLjava/io/File;)V

    move-object v5, p1

    invoke-virtual/range {v4 .. v10}, Lcom/mh/movie/core/b/c;->a(Ljava/lang/String;JJLokhttp3/Callback;)V

    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 1

    const-string v0, "receiver"

    .line 161
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ResultReceiver;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/receiver/DownloadService;->d:Landroid/os/ResultReceiver;

    .line 162
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/receiver/DownloadService;->a()V

    const-string v0, "APK_DOWNLOAD_URL_KEY"

    .line 163
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 166
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/receiver/DownloadService;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 168
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    const/16 p1, 0x111

    const/4 v0, 0x0

    .line 169
    invoke-direct {p0, p1, v0}, Lcom/mh/movie/core/mvp/ui/receiver/DownloadService;->a(II)V

    :goto_0
    return-void
.end method
