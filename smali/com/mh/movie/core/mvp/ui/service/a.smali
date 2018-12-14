.class public Lcom/mh/movie/core/mvp/ui/service/a;
.super Ljava/lang/Object;
.source "SystemDownload.java"


# static fields
.field public static a:Lcom/mh/movie/core/mvp/ui/service/a;


# instance fields
.field public b:Landroid/app/DownloadManager;

.field public c:Lcom/mh/movie/core/mvp/ui/receiver/a;

.field public d:Landroid/content/Context;

.field public e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/service/a;->e:Ljava/util/Map;

    return-void
.end method

.method public static a()Lcom/mh/movie/core/mvp/ui/service/a;
    .locals 1

    .line 24
    sget-object v0, Lcom/mh/movie/core/mvp/ui/service/a;->a:Lcom/mh/movie/core/mvp/ui/service/a;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/mh/movie/core/mvp/ui/service/a;

    invoke-direct {v0}, Lcom/mh/movie/core/mvp/ui/service/a;-><init>()V

    sput-object v0, Lcom/mh/movie/core/mvp/ui/service/a;->a:Lcom/mh/movie/core/mvp/ui/service/a;

    .line 27
    :cond_0
    sget-object v0, Lcom/mh/movie/core/mvp/ui/service/a;->a:Lcom/mh/movie/core/mvp/ui/service/a;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)J
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/service/a;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/service/a;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public a(J)Landroid/net/Uri;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/service/a;->b:Landroid/app/DownloadManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/DownloadManager;->getUriForDownloadedFile(J)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/content/Context;)V
    .locals 2

    .line 35
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/service/a;->d:Landroid/content/Context;

    const-string v0, "download"

    .line 36
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/service/a;->b:Landroid/app/DownloadManager;

    .line 38
    new-instance v0, Lcom/mh/movie/core/mvp/ui/receiver/a;

    invoke-direct {v0}, Lcom/mh/movie/core/mvp/ui/receiver/a;-><init>()V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/service/a;->c:Lcom/mh/movie/core/mvp/ui/receiver/a;

    .line 39
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 40
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/service/a;->c:Lcom/mh/movie/core/mvp/ui/receiver/a;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 51
    new-instance v0, Landroid/app/DownloadManager$Request;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    .line 56
    invoke-virtual {v0, p2}, Landroid/app/DownloadManager$Request;->setTitle(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    .line 57
    invoke-virtual {v0, p3}, Landroid/app/DownloadManager$Request;->setDescription(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    const-string p2, "application/vnd.android.package-archive"

    .line 60
    invoke-virtual {v0, p2}, Landroid/app/DownloadManager$Request;->setMimeType(Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    const/4 p2, 0x1

    .line 63
    invoke-virtual {v0, p2}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    const-string p3, "/"

    .line 65
    invoke-virtual {p1, p3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p3

    add-int/2addr p3, p2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p1, p3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 66
    sget-object p3, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v0, p3, p2}, Landroid/app/DownloadManager$Request;->setDestinationInExternalPublicDir(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 68
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/service/a;->b:Landroid/app/DownloadManager;

    invoke-virtual {p2, v0}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    move-result-wide p2

    .line 69
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/service/a;->e:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/service/a;->d:Landroid/content/Context;

    const-string p2, "\u5df2\u52a0\u5165\u4e0b\u8f7d\u7ba1\u7406\u5217\u8868\u4e2d"

    invoke-static {p1, p2}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public b(J)I
    .locals 3

    .line 125
    new-instance v0, Landroid/app/DownloadManager$Query;

    invoke-direct {v0}, Landroid/app/DownloadManager$Query;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [J

    const/4 v2, 0x0

    aput-wide p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    move-result-object p1

    .line 126
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/service/a;->b:Landroid/app/DownloadManager;

    invoke-virtual {p2, p1}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 129
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "status"

    .line 130
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return p2

    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception p2

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    throw p2

    :cond_1
    :goto_0
    const/4 p1, -0x1

    return p1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const-string v0, "/"

    .line 77
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 78
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/service/a;->a(Ljava/lang/String;)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v0, v3, v5

    if-eqz v0, :cond_5

    .line 82
    invoke-virtual {p0, v3, v4}, Lcom/mh/movie/core/mvp/ui/service/a;->b(J)I

    move-result v0

    const/16 v5, 0x8

    if-ne v0, v5, :cond_3

    .line 84
    invoke-virtual {p0, v3, v4}, Lcom/mh/movie/core/mvp/ui/service/a;->a(J)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 86
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/service/a;->c:Lcom/mh/movie/core/mvp/ui/receiver/a;

    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/service/a;->d:Landroid/content/Context;

    invoke-virtual {p1, p2, v3, v4}, Lcom/mh/movie/core/mvp/ui/receiver/a;->a(Landroid/content/Context;J)V

    goto :goto_0

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/service/a;->b:Landroid/app/DownloadManager;

    new-array v1, v1, [J

    const/4 v2, 0x0

    aput-wide v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/app/DownloadManager;->remove([J)I

    .line 90
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/service/a;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/service/a;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/mh/movie/core/mvp/ui/service/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 96
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/mh/movie/core/mvp/ui/service/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 99
    invoke-virtual {p0, p1, p2, p3}, Lcom/mh/movie/core/mvp/ui/service/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 101
    :cond_4
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/service/a;->d:Landroid/content/Context;

    const-string p2, "\u5df2\u5728\u4e0b\u8f7d\u7ba1\u7406\u5217\u8868\u4e2d"

    invoke-static {p1, p2}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 105
    :cond_5
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 106
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 108
    :cond_6
    invoke-virtual {p0, p1, p2, p3}, Lcom/mh/movie/core/mvp/ui/service/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
