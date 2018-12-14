.class Lorg/fourthline/cling/transport/impl/FixedSunURLStreamHandler$UpnpURLConnection;
.super Lsun/net/www/protocol/http/HttpURLConnection;
.source "FixedSunURLStreamHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fourthline/cling/transport/impl/FixedSunURLStreamHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UpnpURLConnection"
.end annotation


# static fields
.field private static final methods:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x9

    .line 65
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "GET"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "POST"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "HEAD"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "OPTIONS"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "PUT"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "DELETE"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "SUBSCRIBE"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "UNSUBSCRIBE"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "NOTIFY"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sput-object v0, Lorg/fourthline/cling/transport/impl/FixedSunURLStreamHandler$UpnpURLConnection;->methods:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    invoke-direct {p0, p1, p2, p3}, Lsun/net/www/protocol/http/HttpURLConnection;-><init>(Ljava/net/URL;Ljava/lang/String;I)V

    return-void
.end method

.method protected constructor <init>(Ljava/net/URL;Lsun/net/www/protocol/http/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    invoke-direct {p0, p1, p2}, Lsun/net/www/protocol/http/HttpURLConnection;-><init>(Ljava/net/URL;Lsun/net/www/protocol/http/Handler;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized getOutputStream()Ljava/io/OutputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 80
    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/FixedSunURLStreamHandler$UpnpURLConnection;->method:Ljava/lang/String;

    .line 82
    iget-object v1, p0, Lorg/fourthline/cling/transport/impl/FixedSunURLStreamHandler$UpnpURLConnection;->method:Ljava/lang/String;

    const-string v2, "PUT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/fourthline/cling/transport/impl/FixedSunURLStreamHandler$UpnpURLConnection;->method:Ljava/lang/String;

    const-string v2, "POST"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/fourthline/cling/transport/impl/FixedSunURLStreamHandler$UpnpURLConnection;->method:Ljava/lang/String;

    const-string v2, "NOTIFY"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "GET"

    .line 88
    iput-object v1, p0, Lorg/fourthline/cling/transport/impl/FixedSunURLStreamHandler$UpnpURLConnection;->method:Ljava/lang/String;

    goto :goto_1

    :cond_1
    :goto_0
    const-string v1, "PUT"

    .line 84
    iput-object v1, p0, Lorg/fourthline/cling/transport/impl/FixedSunURLStreamHandler$UpnpURLConnection;->method:Ljava/lang/String;

    .line 90
    :goto_1
    invoke-super {p0}, Lsun/net/www/protocol/http/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 91
    iput-object v0, p0, Lorg/fourthline/cling/transport/impl/FixedSunURLStreamHandler$UpnpURLConnection;->method:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    .line 79
    monitor-exit p0

    throw v0
.end method

.method public setRequestMethod(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .line 96
    iget-boolean v0, p0, Lorg/fourthline/cling/transport/impl/FixedSunURLStreamHandler$UpnpURLConnection;->connected:Z

    if-eqz v0, :cond_0

    .line 97
    new-instance p1, Ljava/net/ProtocolException;

    const-string v0, "Cannot reset method once connected"

    invoke-direct {p1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 99
    :cond_0
    sget-object v0, Lorg/fourthline/cling/transport/impl/FixedSunURLStreamHandler$UpnpURLConnection;->methods:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 100
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 101
    iput-object p1, p0, Lorg/fourthline/cling/transport/impl/FixedSunURLStreamHandler$UpnpURLConnection;->method:Ljava/lang/String;

    return-void

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 105
    :cond_2
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid UPnP HTTP method: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
