.class public Lorg/seamless/http/HttpFetch;
.super Ljava/lang/Object;
.source "HttpFetch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/seamless/http/HttpFetch$RepresentationFactory;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fetch(Ljava/net/URL;IILorg/seamless/http/HttpFetch$RepresentationFactory;)Lorg/seamless/http/Representation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/URL;",
            "II",
            "Lorg/seamless/http/HttpFetch$RepresentationFactory<",
            "TE;>;)",
            "Lorg/seamless/http/Representation<",
            "TE;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "GET"

    .line 52
    invoke-static {p0, v0, p1, p2, p3}, Lorg/seamless/http/HttpFetch;->fetch(Ljava/net/URL;Ljava/lang/String;IILorg/seamless/http/HttpFetch$RepresentationFactory;)Lorg/seamless/http/Representation;

    move-result-object p0

    return-object p0
.end method

.method public static fetch(Ljava/net/URL;Ljava/lang/String;IILorg/seamless/http/HttpFetch$RepresentationFactory;)Lorg/seamless/http/Representation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/URL;",
            "Ljava/lang/String;",
            "II",
            "Lorg/seamless/http/HttpFetch$RepresentationFactory<",
            "TE;>;)",
            "Lorg/seamless/http/Representation<",
            "TE;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 61
    :try_start_0
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 63
    :try_start_1
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0, p2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 66
    invoke-virtual {p0, p3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 68
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 70
    :try_start_2
    invoke-interface {p4, p0, p1}, Lorg/seamless/http/HttpFetch$RepresentationFactory;->createRepresentation(Ljava/net/URLConnection;Ljava/io/InputStream;)Lorg/seamless/http/Representation;

    move-result-object p2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_0

    .line 81
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_0
    return-object p2

    :catchall_0
    move-exception p0

    move-object v0, p1

    goto :goto_1

    :catch_0
    move-exception p2

    move-object v0, p1

    goto :goto_0

    :catch_1
    move-exception p2

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_1

    :catch_2
    move-exception p2

    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_1

    .line 75
    :try_start_3
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p0

    .line 76
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Fetching resource failed, returned status code: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 79
    :cond_1
    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_1
    if-eqz v0, :cond_2

    .line 81
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_2
    throw p0
.end method

.method public static fetchBinary(Ljava/net/URL;)Lorg/seamless/http/Representation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            ")",
            "Lorg/seamless/http/Representation<",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x1f4

    .line 31
    invoke-static {p0, v0, v0}, Lorg/seamless/http/HttpFetch;->fetchBinary(Ljava/net/URL;II)Lorg/seamless/http/Representation;

    move-result-object p0

    return-object p0
.end method

.method public static fetchBinary(Ljava/net/URL;II)Lorg/seamless/http/Representation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "II)",
            "Lorg/seamless/http/Representation<",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    new-instance v0, Lorg/seamless/http/HttpFetch$1;

    invoke-direct {v0}, Lorg/seamless/http/HttpFetch$1;-><init>()V

    invoke-static {p0, p1, p2, v0}, Lorg/seamless/http/HttpFetch;->fetch(Ljava/net/URL;IILorg/seamless/http/HttpFetch$RepresentationFactory;)Lorg/seamless/http/Representation;

    move-result-object p0

    return-object p0
.end method

.method public static fetchString(Ljava/net/URL;II)Lorg/seamless/http/Representation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "II)",
            "Lorg/seamless/http/Representation<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    new-instance v0, Lorg/seamless/http/HttpFetch$2;

    invoke-direct {v0}, Lorg/seamless/http/HttpFetch$2;-><init>()V

    invoke-static {p0, p1, p2, v0}, Lorg/seamless/http/HttpFetch;->fetch(Ljava/net/URL;IILorg/seamless/http/HttpFetch$RepresentationFactory;)Lorg/seamless/http/Representation;

    move-result-object p0

    return-object p0
.end method

.method public static validate(Ljava/net/URL;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "HEAD"

    .line 90
    new-instance v1, Lorg/seamless/http/HttpFetch$3;

    invoke-direct {v1}, Lorg/seamless/http/HttpFetch$3;-><init>()V

    const/16 v2, 0x1f4

    invoke-static {p0, v0, v2, v2, v1}, Lorg/seamless/http/HttpFetch;->fetch(Ljava/net/URL;Ljava/lang/String;IILorg/seamless/http/HttpFetch$RepresentationFactory;)Lorg/seamless/http/Representation;

    return-void
.end method
