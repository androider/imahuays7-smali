.class public Lorg/eclipse/jetty/util/resource/ResourceCollection;
.super Lorg/eclipse/jetty/util/resource/Resource;
.source "ResourceCollection.java"


# instance fields
.field private _resources:[Lorg/eclipse/jetty/util/resource/Resource;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Lorg/eclipse/jetty/util/resource/Resource;-><init>()V

    const/4 v0, 0x0

    .line 57
    new-array v0, v0, [Lorg/eclipse/jetty/util/resource/Resource;

    iput-object v0, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->_resources:[Lorg/eclipse/jetty/util/resource/Resource;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 125
    invoke-direct {p0}, Lorg/eclipse/jetty/util/resource/Resource;-><init>()V

    .line 126
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/util/resource/ResourceCollection;->setResourcesAsCSV(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 3

    .line 97
    invoke-direct {p0}, Lorg/eclipse/jetty/util/resource/Resource;-><init>()V

    .line 98
    array-length v0, p1

    new-array v0, v0, [Lorg/eclipse/jetty/util/resource/Resource;

    iput-object v0, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->_resources:[Lorg/eclipse/jetty/util/resource/Resource;

    const/4 v0, 0x0

    .line 101
    :goto_0
    :try_start_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 103
    iget-object v1, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->_resources:[Lorg/eclipse/jetty/util/resource/Resource;

    aget-object v2, p1, v0

    invoke-static {v2}, Lorg/eclipse/jetty/util/resource/Resource;->newResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v2

    aput-object v2, v1, v0

    .line 104
    iget-object v1, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->_resources:[Lorg/eclipse/jetty/util/resource/Resource;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/eclipse/jetty/util/resource/Resource;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->_resources:[Lorg/eclipse/jetty/util/resource/Resource;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/eclipse/jetty/util/resource/Resource;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 105
    :cond_1
    :goto_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->_resources:[Lorg/eclipse/jetty/util/resource/Resource;

    aget-object v0, v2, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " is not an existing directory."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception p1

    .line 114
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 110
    throw p1
.end method

.method public varargs constructor <init>([Lorg/eclipse/jetty/util/resource/Resource;)V
    .locals 8

    .line 67
    invoke-direct {p0}, Lorg/eclipse/jetty/util/resource/Resource;-><init>()V

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 69
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, p1, v3

    if-nez v4, :cond_0

    goto :goto_2

    .line 73
    :cond_0
    instance-of v5, v4, Lorg/eclipse/jetty/util/resource/ResourceCollection;

    if-eqz v5, :cond_1

    .line 75
    check-cast v4, Lorg/eclipse/jetty/util/resource/ResourceCollection;

    invoke-virtual {v4}, Lorg/eclipse/jetty/util/resource/ResourceCollection;->getResources()[Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_2

    aget-object v7, v4, v6

    .line 76
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 79
    :cond_1
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 81
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lorg/eclipse/jetty/util/resource/Resource;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/eclipse/jetty/util/resource/Resource;

    iput-object p1, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->_resources:[Lorg/eclipse/jetty/util/resource/Resource;

    .line 82
    iget-object p1, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->_resources:[Lorg/eclipse/jetty/util/resource/Resource;

    array-length v0, p1

    :goto_3
    if-ge v2, v0, :cond_6

    aget-object v1, p1, v2

    .line 84
    invoke-virtual {v1}, Lorg/eclipse/jetty/util/resource/Resource;->exists()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v1}, Lorg/eclipse/jetty/util/resource/Resource;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_4

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 85
    :cond_5
    :goto_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " is not an existing directory."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    return-void
.end method


# virtual methods
.method public addPath(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .line 193
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->_resources:[Lorg/eclipse/jetty/util/resource/Resource;

    if-nez v0, :cond_0

    .line 194
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "*resources* not set."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    if-nez p1, :cond_1

    .line 197
    new-instance p1, Ljava/net/MalformedURLException;

    invoke-direct {p1}, Ljava/net/MalformedURLException;-><init>()V

    throw p1

    .line 199
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "/"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_3

    :cond_2
    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v1

    .line 205
    :goto_0
    iget-object v3, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->_resources:[Lorg/eclipse/jetty/util/resource/Resource;

    array-length v3, v3

    if-ge v0, v3, :cond_5

    .line 207
    iget-object v2, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->_resources:[Lorg/eclipse/jetty/util/resource/Resource;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Lorg/eclipse/jetty/util/resource/Resource;->addPath(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v2

    .line 208
    invoke-virtual {v2}, Lorg/eclipse/jetty/util/resource/Resource;->exists()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 210
    invoke-virtual {v2}, Lorg/eclipse/jetty/util/resource/Resource;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    return-object v2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    add-int/lit8 v0, v0, 0x1

    move-object v3, v1

    .line 216
    :goto_2
    iget-object v4, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->_resources:[Lorg/eclipse/jetty/util/resource/Resource;

    array-length v4, v4

    if-ge v0, v4, :cond_8

    .line 218
    iget-object v4, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->_resources:[Lorg/eclipse/jetty/util/resource/Resource;

    aget-object v4, v4, v0

    invoke-virtual {v4, p1}, Lorg/eclipse/jetty/util/resource/Resource;->addPath(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v4

    .line 219
    invoke-virtual {v4}, Lorg/eclipse/jetty/util/resource/Resource;->exists()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v4}, Lorg/eclipse/jetty/util/resource/Resource;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_7

    if-eqz v2, :cond_6

    .line 223
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 224
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v2, v1

    .line 227
    :cond_6
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_8
    if-eqz v2, :cond_9

    return-object v2

    :cond_9
    if-eqz v3, :cond_a

    .line 234
    new-instance p1, Lorg/eclipse/jetty/util/resource/ResourceCollection;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lorg/eclipse/jetty/util/resource/Resource;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/eclipse/jetty/util/resource/Resource;

    invoke-direct {p1, v0}, Lorg/eclipse/jetty/util/resource/ResourceCollection;-><init>([Lorg/eclipse/jetty/util/resource/Resource;)V

    return-object p1

    :cond_a
    return-object v1

    :cond_b
    :goto_3
    return-object p0
.end method

.method public copyTo(Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 457
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->_resources:[Lorg/eclipse/jetty/util/resource/Resource;

    array-length v0, v0

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_0

    .line 458
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->_resources:[Lorg/eclipse/jetty/util/resource/Resource;

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/resource/Resource;->copyTo(Ljava/io/File;)V

    move v0, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public delete()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 287
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public exists()Z
    .locals 2

    .line 294
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->_resources:[Lorg/eclipse/jetty/util/resource/Resource;

    if-nez v0, :cond_0

    .line 295
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "*resources* not set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected findResource(Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/MalformedURLException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v0

    .line 250
    :goto_0
    iget-object v3, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->_resources:[Lorg/eclipse/jetty/util/resource/Resource;

    array-length v3, v3

    if-ge v1, v3, :cond_2

    .line 252
    iget-object v2, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->_resources:[Lorg/eclipse/jetty/util/resource/Resource;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Lorg/eclipse/jetty/util/resource/Resource;->addPath(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v2

    .line 253
    invoke-virtual {v2}, Lorg/eclipse/jetty/util/resource/Resource;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 255
    invoke-virtual {v2}, Lorg/eclipse/jetty/util/resource/Resource;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    move-object v3, v0

    .line 262
    :goto_2
    iget-object v4, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->_resources:[Lorg/eclipse/jetty/util/resource/Resource;

    array-length v4, v4

    if-ge v1, v4, :cond_5

    .line 264
    iget-object v4, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->_resources:[Lorg/eclipse/jetty/util/resource/Resource;

    aget-object v4, v4, v1

    invoke-virtual {v4, p1}, Lorg/eclipse/jetty/util/resource/Resource;->addPath(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v4

    .line 265
    invoke-virtual {v4}, Lorg/eclipse/jetty/util/resource/Resource;->exists()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v4}, Lorg/eclipse/jetty/util/resource/Resource;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_4

    if-eqz v2, :cond_3

    .line 269
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 270
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    :cond_3
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    if-eqz v2, :cond_6

    return-object v2

    :cond_6
    if-eqz v3, :cond_7

    return-object v3

    :cond_7
    return-object v0
.end method

.method public getFile()Ljava/io/File;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 304
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->_resources:[Lorg/eclipse/jetty/util/resource/Resource;

    if-nez v0, :cond_0

    .line 305
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "*resources* not set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 307
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->_resources:[Lorg/eclipse/jetty/util/resource/Resource;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 309
    invoke-virtual {v3}, Lorg/eclipse/jetty/util/resource/Resource;->getFile()Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
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

    .line 320
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->_resources:[Lorg/eclipse/jetty/util/resource/Resource;

    if-nez v0, :cond_0

    .line 321
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "*resources* not set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 323
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->_resources:[Lorg/eclipse/jetty/util/resource/Resource;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 325
    invoke-virtual {v3}, Lorg/eclipse/jetty/util/resource/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    if-eqz v3, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 4

    .line 336
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->_resources:[Lorg/eclipse/jetty/util/resource/Resource;

    if-nez v0, :cond_0

    .line 337
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "*resources* not set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 339
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->_resources:[Lorg/eclipse/jetty/util/resource/Resource;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 341
    invoke-virtual {v3}, Lorg/eclipse/jetty/util/resource/Resource;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 352
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->_resources:[Lorg/eclipse/jetty/util/resource/Resource;

    if-nez v0, :cond_0

    .line 353
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "*resources* not set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 355
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->_resources:[Lorg/eclipse/jetty/util/resource/Resource;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 357
    invoke-virtual {v3}, Lorg/eclipse/jetty/util/resource/Resource;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    if-eqz v3, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getResources()[Lorg/eclipse/jetty/util/resource/Resource;
    .locals 1

    .line 137
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->_resources:[Lorg/eclipse/jetty/util/resource/Resource;

    return-object v0
.end method

.method public getURL()Ljava/net/URL;
    .locals 4

    .line 368
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->_resources:[Lorg/eclipse/jetty/util/resource/Resource;

    if-nez v0, :cond_0

    .line 369
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "*resources* not set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 371
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->_resources:[Lorg/eclipse/jetty/util/resource/Resource;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 373
    invoke-virtual {v3}, Lorg/eclipse/jetty/util/resource/Resource;->getURL()Ljava/net/URL;

    move-result-object v3

    if-eqz v3, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public isContainedIn(Lorg/eclipse/jetty/util/resource/Resource;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public isDirectory()Z
    .locals 2

    .line 384
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->_resources:[Lorg/eclipse/jetty/util/resource/Resource;

    if-nez v0, :cond_0

    .line 385
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "*resources* not set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public lastModified()J
    .locals 8

    .line 394
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->_resources:[Lorg/eclipse/jetty/util/resource/Resource;

    if-nez v0, :cond_0

    .line 395
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "*resources* not set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 397
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->_resources:[Lorg/eclipse/jetty/util/resource/Resource;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    const-wide/16 v3, -0x1

    if-ge v2, v1, :cond_2

    aget-object v5, v0, v2

    .line 399
    invoke-virtual {v5}, Lorg/eclipse/jetty/util/resource/Resource;->lastModified()J

    move-result-wide v5

    cmp-long v7, v5, v3

    if-eqz v7, :cond_1

    return-wide v5

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-wide v3
.end method

.method public length()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public list()[Ljava/lang/String;
    .locals 9

    .line 420
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->_resources:[Lorg/eclipse/jetty/util/resource/Resource;

    if-nez v0, :cond_0

    .line 421
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "*resources* not set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 423
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 424
    iget-object v1, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->_resources:[Lorg/eclipse/jetty/util/resource/Resource;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    .line 426
    invoke-virtual {v5}, Lorg/eclipse/jetty/util/resource/Resource;->list()[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_1

    aget-object v8, v5, v7

    .line 427
    invoke-virtual {v0, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 429
    :cond_2
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 430
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    return-object v0
.end method

.method public release()V
    .locals 4

    .line 438
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->_resources:[Lorg/eclipse/jetty/util/resource/Resource;

    if-nez v0, :cond_0

    .line 439
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "*resources* not set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 441
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->_resources:[Lorg/eclipse/jetty/util/resource/Resource;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 442
    invoke-virtual {v3}, Lorg/eclipse/jetty/util/resource/Resource;->release()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public renameTo(Lorg/eclipse/jetty/util/resource/Resource;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 449
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public setResources([Lorg/eclipse/jetty/util/resource/Resource;)V
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 148
    new-array p1, p1, [Lorg/eclipse/jetty/util/resource/Resource;

    :goto_0
    iput-object p1, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->_resources:[Lorg/eclipse/jetty/util/resource/Resource;

    return-void
.end method

.method public setResourcesAsCSV(Ljava/lang/String;)V
    .locals 3

    .line 161
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, ",;"

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->countTokens()I

    move-result p1

    if-nez p1, :cond_0

    .line 165
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "ResourceCollection@setResourcesAsCSV(String)  argument must be a string containing one or more comma-separated resource strings."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 169
    :cond_0
    new-array p1, p1, [Lorg/eclipse/jetty/util/resource/Resource;

    iput-object p1, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->_resources:[Lorg/eclipse/jetty/util/resource/Resource;

    const/4 p1, 0x0

    .line 172
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 174
    iget-object v1, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->_resources:[Lorg/eclipse/jetty/util/resource/Resource;

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/jetty/util/resource/Resource;->newResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v2

    aput-object v2, v1, p1

    .line 175
    iget-object v1, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->_resources:[Lorg/eclipse/jetty/util/resource/Resource;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lorg/eclipse/jetty/util/resource/Resource;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->_resources:[Lorg/eclipse/jetty/util/resource/Resource;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lorg/eclipse/jetty/util/resource/Resource;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 176
    :cond_2
    :goto_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->_resources:[Lorg/eclipse/jetty/util/resource/Resource;

    aget-object p1, v2, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not an existing directory."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-void

    :catch_0
    move-exception p1

    .line 181
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 468
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->_resources:[Lorg/eclipse/jetty/util/resource/Resource;

    if-nez v0, :cond_0

    const-string v0, "[]"

    return-object v0

    .line 471
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->_resources:[Lorg/eclipse/jetty/util/resource/Resource;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
