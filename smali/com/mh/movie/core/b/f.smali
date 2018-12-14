.class public Lcom/mh/movie/core/b/f;
.super Ljava/lang/Object;
.source "M3u8DownManager.java"

# interfaces
.implements Lcom/mh/movie/core/b/b;


# static fields
.field private static c:Lcom/mh/movie/core/b/f;


# instance fields
.field public a:I

.field public b:Lcom/mh/movie/core/b/b;

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/mh/movie/core/b/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 19
    iput v0, p0, Lcom/mh/movie/core/b/f;->a:I

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mh/movie/core/b/f;->d:Ljava/util/Map;

    return-void
.end method

.method public static a()Lcom/mh/movie/core/b/f;
    .locals 1

    .line 21
    sget-object v0, Lcom/mh/movie/core/b/f;->c:Lcom/mh/movie/core/b/f;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcom/mh/movie/core/b/f;

    invoke-direct {v0}, Lcom/mh/movie/core/b/f;-><init>()V

    sput-object v0, Lcom/mh/movie/core/b/f;->c:Lcom/mh/movie/core/b/f;

    .line 24
    :cond_0
    sget-object v0, Lcom/mh/movie/core/b/f;->c:Lcom/mh/movie/core/b/f;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/mh/movie/core/mvp/model/entity/DownloadData;)I
    .locals 2

    .line 62
    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/utils/Md5Util;->getMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 64
    iget-object v1, p0, Lcom/mh/movie/core/b/f;->d:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    iget-object p1, p0, Lcom/mh/movie/core/b/f;->d:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/b/e;

    goto :goto_0

    .line 67
    :cond_0
    new-instance v1, Lcom/mh/movie/core/b/e;

    invoke-direct {v1, p1, p2, p0}, Lcom/mh/movie/core/b/e;-><init>(Ljava/lang/String;Lcom/mh/movie/core/mvp/model/entity/DownloadData;Lcom/mh/movie/core/b/b;)V

    .line 68
    iget-object p1, p0, Lcom/mh/movie/core/b/f;->d:Ljava/util/Map;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, v1

    :goto_0
    const/4 p2, 0x0

    .line 73
    :try_start_0
    invoke-virtual {p1}, Lcom/mh/movie/core/b/e;->c()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p2

    :catch_0
    move-exception p1

    .line 75
    :try_start_1
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x2

    return p1

    :catchall_0
    return p2
.end method

.method public a(I)V
    .locals 0

    .line 40
    iput p1, p0, Lcom/mh/movie/core/b/f;->a:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 87
    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/utils/Md5Util;->getMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 89
    iget-object v1, p0, Lcom/mh/movie/core/b/f;->d:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    iget-object p1, p0, Lcom/mh/movie/core/b/f;->d:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/b/e;

    .line 91
    iget-object v1, p0, Lcom/mh/movie/core/b/f;->d:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 94
    :cond_0
    new-instance v0, Lcom/mh/movie/core/b/e;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p0}, Lcom/mh/movie/core/b/e;-><init>(Ljava/lang/String;Lcom/mh/movie/core/mvp/model/entity/DownloadData;Lcom/mh/movie/core/b/b;)V

    move-object p1, v0

    .line 97
    :goto_0
    invoke-virtual {p1}, Lcom/mh/movie/core/b/e;->e()V

    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/mh/movie/core/b/f;->b:Lcom/mh/movie/core/b/b;

    invoke-interface {v0, p1, p2}, Lcom/mh/movie/core/b/b;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public a(Ljava/lang/String;JJ)V
    .locals 6

    .line 153
    iget-object v0, p0, Lcom/mh/movie/core/b/f;->b:Lcom/mh/movie/core/b/b;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/mh/movie/core/b/b;->a(Ljava/lang/String;JJ)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/mh/movie/core/b/f;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/mh/movie/core/b/f;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/b/f;->b:Lcom/mh/movie/core/b/b;

    invoke-interface {v0, p1, p2, p3}, Lcom/mh/movie/core/b/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/mh/movie/core/b/f;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/mh/movie/core/b/f;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/b/f;->b:Lcom/mh/movie/core/b/b;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/mh/movie/core/b/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/DownloadData;",
            ">;)V"
        }
    .end annotation

    .line 34
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/model/entity/DownloadData;

    .line 35
    new-instance v1, Lcom/mh/movie/core/b/e;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0, p0}, Lcom/mh/movie/core/b/e;-><init>(Ljava/lang/String;Lcom/mh/movie/core/mvp/model/entity/DownloadData;Lcom/mh/movie/core/b/b;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b()I
    .locals 2

    .line 48
    iget v0, p0, Lcom/mh/movie/core/b/f;->a:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 50
    :cond_0
    iget v0, p0, Lcom/mh/movie/core/b/f;->a:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    const/4 v0, 0x2

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public b(Ljava/lang/String;I)V
    .locals 1

    .line 111
    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/utils/Md5Util;->getMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 112
    iget-object v0, p0, Lcom/mh/movie/core/b/f;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/mh/movie/core/b/f;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/b/e;

    .line 114
    iput p2, p1, Lcom/mh/movie/core/b/e;->a:I

    .line 115
    invoke-virtual {p1}, Lcom/mh/movie/core/b/e;->d()V

    :cond_0
    return-void
.end method

.method public c()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/DownloadData;",
            ">;"
        }
    .end annotation

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 131
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/mh/movie/core/mvp/ui/utils/RHelp;->getVideoCacheFolder()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 132
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    .line 134
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 135
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 136
    new-instance v3, Ljava/io/File;

    aget-object v4, v1, v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "info"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 137
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 138
    new-instance v4, Lcom/mh/movie/core/b/a;

    invoke-direct {v4}, Lcom/mh/movie/core/b/a;-><init>()V

    .line 139
    invoke-virtual {v4, v3}, Lcom/mh/movie/core/b/a;->a(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 140
    invoke-virtual {v4}, Lcom/mh/movie/core/b/a;->a()Lcom/mh/movie/core/mvp/model/entity/DownloadData;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method
