.class public Lorg/eclipse/jetty/util/resource/JarResource;
.super Lorg/eclipse/jetty/util/resource/URLResource;
.source "JarResource.java"


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field protected _jarConnection:Ljava/net/JarURLConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    const-class v0, Lorg/eclipse/jetty/util/resource/JarResource;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/util/resource/JarResource;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method constructor <init>(Ljava/net/URL;)V
    .locals 1

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, v0}, Lorg/eclipse/jetty/util/resource/URLResource;-><init>(Ljava/net/URL;Ljava/net/URLConnection;)V

    return-void
.end method

.method constructor <init>(Ljava/net/URL;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, v0, p2}, Lorg/eclipse/jetty/util/resource/URLResource;-><init>(Ljava/net/URL;Ljava/net/URLConnection;Z)V

    return-void
.end method

.method public static newJarResource(Lorg/eclipse/jetty/util/resource/Resource;)Lorg/eclipse/jetty/util/resource/Resource;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 269
    instance-of v0, p0, Lorg/eclipse/jetty/util/resource/JarResource;

    if-eqz v0, :cond_0

    return-object p0

    .line 271
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "jar:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "!/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/eclipse/jetty/util/resource/Resource;->newResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected declared-synchronized checkConnection()Z
    .locals 2

    monitor-enter p0

    .line 68
    :try_start_0
    invoke-super {p0}, Lorg/eclipse/jetty/util/resource/URLResource;->checkConnection()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/JarResource;->_jarConnection:Ljava/net/JarURLConnection;

    iget-object v1, p0, Lorg/eclipse/jetty/util/resource/JarResource;->_connection:Ljava/net/URLConnection;

    if-eq v0, v1, :cond_0

    .line 72
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/resource/JarResource;->newConnection()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 76
    :try_start_2
    sget-object v1, Lorg/eclipse/jetty/util/resource/JarResource;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    .line 77
    iput-object v0, p0, Lorg/eclipse/jetty/util/resource/JarResource;->_jarConnection:Ljava/net/JarURLConnection;

    .line 80
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/JarResource;->_jarConnection:Ljava/net/JarURLConnection;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 67
    monitor-exit p0

    throw v0
.end method

.method public copyTo(Ljava/io/File;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 136
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/resource/JarResource;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 139
    :cond_0
    sget-object v0, Lorg/eclipse/jetty/util/resource/JarResource;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v0}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 140
    sget-object v0, Lorg/eclipse/jetty/util/resource/JarResource;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Extract "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 142
    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/resource/JarResource;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v2, "!/"

    .line 143
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_2

    const/4 v3, 0x4

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    if-gez v2, :cond_3

    .line 147
    new-instance p1, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a valid jar url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 149
    :cond_3
    new-instance v4, Ljava/net/URL;

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x2

    .line 150
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v5, 0x0

    if-ge v2, v3, :cond_4

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    move-object v0, v5

    :goto_1
    const/4 v2, 0x1

    if-eqz v0, :cond_5

    const-string v3, "/"

    .line 151
    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x1

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    .line 153
    :goto_2
    sget-object v6, Lorg/eclipse/jetty/util/resource/JarResource;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v6}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 154
    sget-object v6, Lorg/eclipse/jetty/util/resource/JarResource;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Extracting entry = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " from jar "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v1, [Ljava/lang/Object;

    invoke-interface {v6, v7, v8}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 156
    :cond_6
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 157
    new-instance v6, Ljava/util/jar/JarInputStream;

    invoke-direct {v6, v4}, Ljava/util/jar/JarInputStream;-><init>(Ljava/io/InputStream;)V

    .line 160
    :goto_3
    invoke-virtual {v6}, Ljava/util/jar/JarInputStream;->getNextJarEntry()Ljava/util/jar/JarEntry;

    move-result-object v4

    if-eqz v4, :cond_10

    .line 162
    invoke-virtual {v4}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v7

    if-eqz v0, :cond_8

    .line 163
    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    if-nez v3, :cond_7

    .line 166
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v2

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-ne v8, v9, :cond_7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    const/4 v3, 0x1

    :cond_7
    if-eqz v3, :cond_a

    .line 177
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    .line 178
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    goto :goto_4

    :cond_8
    if-eqz v0, :cond_a

    .line 189
    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_a

    :cond_9
    move v8, v3

    const/4 v3, 0x0

    goto :goto_5

    :cond_a
    :goto_4
    move v8, v3

    const/4 v3, 0x1

    :goto_5
    if-nez v3, :cond_b

    .line 204
    sget-object v3, Lorg/eclipse/jetty/util/resource/JarResource;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v3}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 205
    sget-object v3, Lorg/eclipse/jetty/util/resource/JarResource;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Skipping entry: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v7, v1, [Ljava/lang/Object;

    invoke-interface {v3, v4, v7}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6

    :cond_b
    const/16 v3, 0x5c

    const/16 v9, 0x2f

    .line 209
    invoke-virtual {v7, v3, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    .line 210
    invoke-static {v3}, Lorg/eclipse/jetty/util/URIUtil;->canonicalPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_c

    .line 213
    sget-object v3, Lorg/eclipse/jetty/util/resource/JarResource;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v3}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 214
    sget-object v3, Lorg/eclipse/jetty/util/resource/JarResource;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid entry: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v7, v1, [Ljava/lang/Object;

    invoke-interface {v3, v4, v7}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6

    .line 218
    :cond_c
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 220
    invoke-virtual {v4}, Ljava/util/jar/JarEntry;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 223
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_f

    .line 224
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    goto :goto_6

    .line 229
    :cond_d
    new-instance v7, Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 230
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_e

    .line 231
    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    .line 237
    :cond_e
    :try_start_0
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 238
    :try_start_1
    invoke-static {v6, v7}, Lorg/eclipse/jetty/util/IO;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 242
    invoke-static {v7}, Lorg/eclipse/jetty/util/IO;->close(Ljava/io/OutputStream;)V

    .line 246
    invoke-virtual {v4}, Ljava/util/jar/JarEntry;->getTime()J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v7, v9, v11

    if-ltz v7, :cond_f

    .line 247
    invoke-virtual {v4}, Ljava/util/jar/JarEntry;->getTime()J

    move-result-wide v9

    invoke-virtual {v3, v9, v10}, Ljava/io/File;->setLastModified(J)Z

    :cond_f
    :goto_6
    move v3, v8

    goto/16 :goto_3

    :catchall_0
    move-exception p1

    move-object v5, v7

    goto :goto_7

    :catchall_1
    move-exception p1

    .line 242
    :goto_7
    invoke-static {v5}, Lorg/eclipse/jetty/util/IO;->close(Ljava/io/OutputStream;)V

    throw p1

    :cond_10
    if-eqz v0, :cond_11

    if-eqz v0, :cond_12

    const-string v1, "META-INF/MANIFEST.MF"

    .line 251
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 253
    :cond_11
    invoke-virtual {v6}, Ljava/util/jar/JarInputStream;->getManifest()Ljava/util/jar/Manifest;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 256
    new-instance v1, Ljava/io/File;

    const-string v2, "META-INF"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 257
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 258
    new-instance p1, Ljava/io/File;

    const-string v2, "MANIFEST.MF"

    invoke-direct {p1, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 259
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 260
    invoke-virtual {v0, v1}, Ljava/util/jar/Manifest;->write(Ljava/io/OutputStream;)V

    .line 261
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 264
    :cond_12
    invoke-static {v6}, Lorg/eclipse/jetty/util/IO;->close(Ljava/io/InputStream;)V

    return-void
.end method

.method public exists()Z
    .locals 2

    .line 99
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/JarResource;->_urlString:Ljava/lang/String;

    const-string v1, "!/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/resource/JarResource;->checkConnection()Z

    move-result v0

    return v0

    .line 102
    :cond_0
    invoke-super {p0}, Lorg/eclipse/jetty/util/resource/URLResource;->exists()Z

    move-result v0

    return v0
.end method

.method public getFile()Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 118
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/resource/JarResource;->checkConnection()Z

    .line 119
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/JarResource;->_urlString:Ljava/lang/String;

    const-string v1, "!/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    new-instance v0, Lorg/eclipse/jetty/util/resource/JarResource$1;

    invoke-super {p0}, Lorg/eclipse/jetty/util/resource/URLResource;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/eclipse/jetty/util/resource/JarResource$1;-><init>(Lorg/eclipse/jetty/util/resource/JarResource;Ljava/io/InputStream;)V

    return-object v0

    .line 126
    :cond_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lorg/eclipse/jetty/util/resource/JarResource;->_urlString:Ljava/lang/String;

    const/4 v2, 0x4

    iget-object v3, p0, Lorg/eclipse/jetty/util/resource/JarResource;->_urlString:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 127
    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method protected newConnection()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/JarResource;->_connection:Ljava/net/URLConnection;

    check-cast v0, Ljava/net/JarURLConnection;

    iput-object v0, p0, Lorg/eclipse/jetty/util/resource/JarResource;->_jarConnection:Ljava/net/JarURLConnection;

    return-void
.end method

.method public declared-synchronized release()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 60
    :try_start_0
    iput-object v0, p0, Lorg/eclipse/jetty/util/resource/JarResource;->_jarConnection:Ljava/net/JarURLConnection;

    .line 61
    invoke-super {p0}, Lorg/eclipse/jetty/util/resource/URLResource;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 59
    monitor-exit p0

    throw v0
.end method
