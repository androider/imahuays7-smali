.class public Lio/rx_cache2/internal/j$a;
.super Ljava/lang/Object;
.source "RxCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rx_cache2/internal/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Z

.field private b:Ljava/lang/Integer;

.field private c:Ljava/io/File;

.field private d:Lio/victoralbertos/jolyglot/JolyglotGenerics;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)Lio/rx_cache2/internal/j$a;
    .locals 0

    .line 62
    iput-boolean p1, p0, Lio/rx_cache2/internal/j$a;->a:Z

    return-object p0
.end method

.method public a(Ljava/io/File;Lio/victoralbertos/jolyglot/JolyglotGenerics;)Lio/rx_cache2/internal/j;
    .locals 1

    if-nez p1, :cond_0

    .line 86
    new-instance p1, Ljava/security/InvalidParameterException;

    const-string p2, "File cache directory can not be null"

    invoke-direct {p1, p2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 88
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 89
    new-instance p1, Ljava/security/InvalidParameterException;

    const-string p2, "File cache directory does not exist"

    invoke-direct {p1, p2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 91
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-nez v0, :cond_2

    .line 92
    new-instance p1, Ljava/security/InvalidParameterException;

    const-string p2, "File cache directory is not writable"

    invoke-direct {p1, p2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    if-nez p2, :cond_3

    .line 96
    new-instance p1, Ljava/security/InvalidParameterException;

    const-string p2, "JsonConverter can not be null"

    invoke-direct {p1, p2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 99
    :cond_3
    iput-object p1, p0, Lio/rx_cache2/internal/j$a;->c:Ljava/io/File;

    .line 100
    iput-object p2, p0, Lio/rx_cache2/internal/j$a;->d:Lio/victoralbertos/jolyglot/JolyglotGenerics;

    .line 102
    new-instance p1, Lio/rx_cache2/internal/j;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lio/rx_cache2/internal/j;-><init>(Lio/rx_cache2/internal/j$a;Lio/rx_cache2/internal/j$1;)V

    return-object p1
.end method

.method public a()Z
    .locals 1

    .line 106
    iget-boolean v0, p0, Lio/rx_cache2/internal/j$a;->a:Z

    return v0
.end method

.method public b()Ljava/lang/Integer;
    .locals 1

    .line 110
    iget-object v0, p0, Lio/rx_cache2/internal/j$a;->b:Ljava/lang/Integer;

    return-object v0
.end method

.method public c()Ljava/io/File;
    .locals 1

    .line 114
    iget-object v0, p0, Lio/rx_cache2/internal/j$a;->c:Ljava/io/File;

    return-object v0
.end method

.method public d()Lio/victoralbertos/jolyglot/JolyglotGenerics;
    .locals 1

    .line 118
    iget-object v0, p0, Lio/rx_cache2/internal/j$a;->d:Lio/victoralbertos/jolyglot/JolyglotGenerics;

    return-object v0
.end method
