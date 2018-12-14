.class public final Lio/rx_cache2/internal/b;
.super Ljava/lang/Object;
.source "Disk.java"

# interfaces
.implements Lio/rx_cache2/internal/e;


# instance fields
.field private final a:Ljava/io/File;

.field private final b:Lio/rx_cache2/internal/a/c;

.field private final c:Lio/victoralbertos/jolyglot/JolyglotGenerics;


# direct methods
.method public constructor <init>(Ljava/io/File;Lio/rx_cache2/internal/a/c;Lio/victoralbertos/jolyglot/JolyglotGenerics;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lio/rx_cache2/internal/b;->a:Ljava/io/File;

    .line 43
    iput-object p2, p0, Lio/rx_cache2/internal/b;->b:Lio/rx_cache2/internal/a/c;

    .line 44
    iput-object p3, p0, Lio/rx_cache2/internal/b;->c:Lio/victoralbertos/jolyglot/JolyglotGenerics;

    return-void
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "/"

    const-string v1, "_"

    .line 326
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a(Ljava/lang/String;ZLjava/lang/String;)Lio/rx_cache2/internal/Record;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            ")",
            "Lio/rx_cache2/internal/Record<",
            "TT;>;"
        }
    .end annotation

    .line 208
    invoke-direct {p0, p1}, Lio/rx_cache2/internal/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 210
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lio/rx_cache2/internal/b;->a:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 214
    :try_start_0
    iget-object p1, p0, Lio/rx_cache2/internal/b;->b:Lio/rx_cache2/internal/a/c;

    invoke-virtual {p1, p3, v0}, Lio/rx_cache2/internal/a/c;->b(Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    move-object v0, p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    .line 217
    :cond_0
    :goto_0
    iget-object p1, p0, Lio/rx_cache2/internal/b;->c:Lio/victoralbertos/jolyglot/JolyglotGenerics;

    const-class p3, Lio/rx_cache2/internal/Record;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/reflect/Type;

    const-class v3, Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-interface {p1, p3, v2}, Lio/victoralbertos/jolyglot/JolyglotGenerics;->newParameterizedType(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object p1

    .line 218
    iget-object p3, p0, Lio/rx_cache2/internal/b;->c:Lio/victoralbertos/jolyglot/JolyglotGenerics;

    invoke-interface {p3, v0, p1}, Lio/victoralbertos/jolyglot/JolyglotGenerics;->fromJson(Ljava/io/File;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/rx_cache2/internal/Record;

    .line 220
    invoke-virtual {p1}, Lio/rx_cache2/internal/Record;->getDataClassName()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_1

    const-class p3, Ljava/lang/Object;

    goto :goto_1

    .line 221
    :cond_1
    invoke-virtual {p1}, Lio/rx_cache2/internal/Record;->getDataClassName()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p3

    .line 222
    :goto_1
    invoke-virtual {p1}, Lio/rx_cache2/internal/Record;->getDataCollectionClassName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    const-class v2, Ljava/lang/Object;

    goto :goto_2

    .line 223
    :cond_2
    invoke-virtual {p1}, Lio/rx_cache2/internal/Record;->getDataCollectionClassName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 225
    :goto_2
    const-class v3, Ljava/util/Collection;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    .line 226
    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v5

    .line 227
    const-class v6, Ljava/util/Map;

    invoke-virtual {v6, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v3, :cond_3

    .line 231
    iget-object p1, p0, Lio/rx_cache2/internal/b;->c:Lio/victoralbertos/jolyglot/JolyglotGenerics;

    new-array v3, v1, [Ljava/lang/reflect/Type;

    aput-object p3, v3, v4

    invoke-interface {p1, v2, v3}, Lio/victoralbertos/jolyglot/JolyglotGenerics;->newParameterizedType(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object p1

    .line 232
    iget-object p3, p0, Lio/rx_cache2/internal/b;->c:Lio/victoralbertos/jolyglot/JolyglotGenerics;

    const-class v2, Lio/rx_cache2/internal/Record;

    new-array v1, v1, [Ljava/lang/reflect/Type;

    aput-object p1, v1, v4

    invoke-interface {p3, v2, v1}, Lio/victoralbertos/jolyglot/JolyglotGenerics;->newParameterizedType(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object p1

    .line 233
    iget-object p3, p0, Lio/rx_cache2/internal/b;->c:Lio/victoralbertos/jolyglot/JolyglotGenerics;

    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v1

    invoke-interface {p3, v1, p1}, Lio/victoralbertos/jolyglot/JolyglotGenerics;->fromJson(Ljava/io/File;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/rx_cache2/internal/Record;

    goto :goto_3

    :cond_3
    if-eqz v5, :cond_4

    .line 235
    iget-object p1, p0, Lio/rx_cache2/internal/b;->c:Lio/victoralbertos/jolyglot/JolyglotGenerics;

    const-class p3, Lio/rx_cache2/internal/Record;

    new-array v1, v1, [Ljava/lang/reflect/Type;

    aput-object v2, v1, v4

    invoke-interface {p1, p3, v1}, Lio/victoralbertos/jolyglot/JolyglotGenerics;->newParameterizedType(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object p1

    .line 236
    iget-object p3, p0, Lio/rx_cache2/internal/b;->c:Lio/victoralbertos/jolyglot/JolyglotGenerics;

    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v1

    invoke-interface {p3, v1, p1}, Lio/victoralbertos/jolyglot/JolyglotGenerics;->fromJson(Ljava/io/File;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/rx_cache2/internal/Record;

    goto :goto_3

    :cond_4
    if-eqz v6, :cond_5

    .line 238
    invoke-virtual {p1}, Lio/rx_cache2/internal/Record;->getDataKeyMapClassName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 239
    iget-object v3, p0, Lio/rx_cache2/internal/b;->c:Lio/victoralbertos/jolyglot/JolyglotGenerics;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/reflect/Type;

    aput-object p1, v5, v4

    aput-object p3, v5, v1

    invoke-interface {v3, v2, v5}, Lio/victoralbertos/jolyglot/JolyglotGenerics;->newParameterizedType(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object p1

    .line 240
    iget-object p3, p0, Lio/rx_cache2/internal/b;->c:Lio/victoralbertos/jolyglot/JolyglotGenerics;

    const-class v2, Lio/rx_cache2/internal/Record;

    new-array v1, v1, [Ljava/lang/reflect/Type;

    aput-object p1, v1, v4

    invoke-interface {p3, v2, v1}, Lio/victoralbertos/jolyglot/JolyglotGenerics;->newParameterizedType(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object p1

    .line 241
    iget-object p3, p0, Lio/rx_cache2/internal/b;->c:Lio/victoralbertos/jolyglot/JolyglotGenerics;

    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v1

    invoke-interface {p3, v1, p1}, Lio/victoralbertos/jolyglot/JolyglotGenerics;->fromJson(Ljava/io/File;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/rx_cache2/internal/Record;

    goto :goto_3

    .line 243
    :cond_5
    iget-object p1, p0, Lio/rx_cache2/internal/b;->c:Lio/victoralbertos/jolyglot/JolyglotGenerics;

    const-class v2, Lio/rx_cache2/internal/Record;

    new-array v1, v1, [Ljava/lang/reflect/Type;

    aput-object p3, v1, v4

    invoke-interface {p1, v2, v1}, Lio/victoralbertos/jolyglot/JolyglotGenerics;->newParameterizedType(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object p1

    .line 244
    iget-object p3, p0, Lio/rx_cache2/internal/b;->c:Lio/victoralbertos/jolyglot/JolyglotGenerics;

    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v1

    invoke-interface {p3, v1, p1}, Lio/victoralbertos/jolyglot/JolyglotGenerics;->fromJson(Ljava/io/File;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/rx_cache2/internal/Record;

    .line 247
    :goto_3
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    long-to-float p3, v1

    const/high16 v1, 0x44800000    # 1024.0f

    div-float/2addr p3, v1

    div-float/2addr p3, v1

    invoke-virtual {p1, p3}, Lio/rx_cache2/internal/Record;->setSizeOnMb(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_6

    .line 254
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_6
    return-object p1

    :goto_4
    if-eqz p2, :cond_7

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_7
    throw p1

    :catch_0
    const/4 p1, 0x0

    if-eqz p2, :cond_8

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_8
    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/Class;ZLjava/lang/String;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;Z",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 179
    invoke-direct {p0, p1}, Lio/rx_cache2/internal/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 181
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lio/rx_cache2/internal/b;->a:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 184
    iget-object p1, p0, Lio/rx_cache2/internal/b;->b:Lio/rx_cache2/internal/a/c;

    invoke-virtual {p1, p4, v0}, Lio/rx_cache2/internal/a/c;->b(Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 188
    :cond_0
    :try_start_0
    iget-object p1, p0, Lio/rx_cache2/internal/b;->c:Lio/victoralbertos/jolyglot/JolyglotGenerics;

    invoke-interface {p1, v0, p2}, Lio/victoralbertos/jolyglot/JolyglotGenerics;->fromJson(Ljava/io/File;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p3, :cond_1

    .line 194
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_1
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz p3, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_2
    throw p1

    :catch_0
    const/4 p1, 0x0

    if-eqz p3, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_3
    return-object p1
.end method

.method public a()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 67
    iget-object v1, p0, Lio/rx_cache2/internal/b;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    .line 70
    :cond_0
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 71
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 72
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 150
    invoke-direct {p0, p1}, Lio/rx_cache2/internal/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 151
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lio/rx_cache2/internal/b;->a:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 152
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method public a(Ljava/lang/String;Lio/rx_cache2/internal/Record;ZLjava/lang/String;)V
    .locals 0

    .line 58
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/rx_cache2/internal/b;->a(Ljava/lang/String;Ljava/lang/Object;ZLjava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;ZLjava/lang/String;)V
    .locals 5

    .line 106
    invoke-direct {p0, p1}, Lio/rx_cache2/internal/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 110
    instance-of v0, p2, Lio/rx_cache2/internal/Record;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lio/rx_cache2/internal/b;->c:Lio/victoralbertos/jolyglot/JolyglotGenerics;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/reflect/Type;

    const-class v4, Ljava/lang/Object;

    aput-object v4, v3, v1

    invoke-interface {v0, v2, v3}, Lio/victoralbertos/jolyglot/JolyglotGenerics;->newParameterizedType(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object v0

    .line 112
    iget-object v2, p0, Lio/rx_cache2/internal/b;->c:Lio/victoralbertos/jolyglot/JolyglotGenerics;

    invoke-interface {v2, p2, v0}, Lio/victoralbertos/jolyglot/JolyglotGenerics;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 114
    :cond_0
    iget-object v0, p0, Lio/rx_cache2/internal/b;->c:Lio/victoralbertos/jolyglot/JolyglotGenerics;

    invoke-interface {v0, p2}, Lio/victoralbertos/jolyglot/JolyglotGenerics;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :goto_0
    const/4 v0, 0x0

    .line 120
    :try_start_0
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lio/rx_cache2/internal/b;->a:Ljava/io/File;

    invoke-direct {v2, v3, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 121
    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, v2, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 122
    :try_start_1
    invoke-virtual {v3, p2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 123
    invoke-virtual {v3}, Ljava/io/FileWriter;->flush()V

    .line 124
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p3, :cond_1

    .line 128
    :try_start_2
    iget-object p2, p0, Lio/rx_cache2/internal/b;->b:Lio/rx_cache2/internal/a/c;

    new-instance p3, Ljava/io/File;

    iget-object v1, p0, Lio/rx_cache2/internal/b;->a:Ljava/io/File;

    invoke-direct {p3, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p2, p4, p3}, Lio/rx_cache2/internal/a/c;->a(Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    move-object v0, v3

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v0, v3

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 131
    :goto_1
    :try_start_3
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_2
    if-eqz v0, :cond_2

    .line 135
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileWriter;->flush()V

    .line 136
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    move-exception p2

    .line 139
    invoke-static {p2}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    .line 140
    :cond_2
    :goto_3
    throw p1
.end method

.method public b()I
    .locals 9

    .line 85
    iget-object v0, p0, Lio/rx_cache2/internal/b;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 88
    :cond_0
    array-length v2, v0

    const-wide/16 v3, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v5, v0, v1

    .line 89
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v5

    add-long v7, v3, v5

    add-int/lit8 v1, v1, 0x1

    move-wide v3, v7

    goto :goto_0

    :cond_1
    long-to-double v0, v3

    const-wide/high16 v2, 0x4090000000000000L    # 1024.0

    div-double/2addr v0, v2

    div-double/2addr v0, v2

    .line 92
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public c()V
    .locals 4

    .line 159
    iget-object v0, p0, Lio/rx_cache2/internal/b;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 162
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    .line 164
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
