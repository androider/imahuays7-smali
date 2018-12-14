.class public Lanet/channel/h/p;
.super Ljavax/net/ssl/SSLSocketFactory;
.source "Taobao"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Ljava/lang/reflect/Method;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljavax/net/ssl/SSLSocketFactory;-><init>()V

    const-string v0, "awcn.TlsSniSocketFactory"

    .line 25
    iput-object v0, p0, Lanet/channel/h/p;->a:Ljava/lang/String;

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lanet/channel/h/p;->b:Ljava/lang/reflect/Method;

    .line 30
    iput-object p1, p0, Lanet/channel/h/p;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public createSocket()Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public createSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lanet/channel/h/p;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 72
    iput-object p2, p0, Lanet/channel/h/p;->c:Ljava/lang/String;

    :cond_0
    const/4 p2, 0x1

    .line 75
    invoke-static {p2}, Lanet/channel/h/a;->a(I)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    const-string v0, "awcn.TlsSniSocketFactory"

    const-string v4, "customized createSocket"

    .line 76
    new-array v5, v1, [Ljava/lang/Object;

    const-string v6, "host"

    aput-object v6, v5, v3

    iget-object v6, p0, Lanet/channel/h/p;->c:Ljava/lang/String;

    aput-object v6, v5, p2

    invoke-static {v0, v4, v2, v5}, Lanet/channel/h/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    :cond_1
    invoke-virtual {p1}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    if-eqz p4, :cond_2

    .line 82
    invoke-virtual {p1}, Ljava/net/Socket;->close()V

    .line 85
    :cond_2
    invoke-static {v3}, Landroid/net/SSLCertificateSocketFactory;->getDefault(I)Ljavax/net/SocketFactory;

    move-result-object p1

    check-cast p1, Landroid/net/SSLCertificateSocketFactory;

    .line 86
    invoke-virtual {p1, v0, p3}, Landroid/net/SSLCertificateSocketFactory;->createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object p3

    check-cast p3, Ljavax/net/ssl/SSLSocket;

    .line 88
    invoke-virtual {p3}, Ljavax/net/ssl/SSLSocket;->getSupportedProtocols()[Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    .line 90
    sget p4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x11

    if-lt p4, v0, :cond_3

    .line 91
    iget-object p4, p0, Lanet/channel/h/p;->c:Ljava/lang/String;

    invoke-virtual {p1, p3, p4}, Landroid/net/SSLCertificateSocketFactory;->setHostname(Ljava/net/Socket;Ljava/lang/String;)V

    goto :goto_0

    .line 94
    :cond_3
    :try_start_0
    iget-object p1, p0, Lanet/channel/h/p;->b:Ljava/lang/reflect/Method;

    if-nez p1, :cond_4

    .line 95
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string p4, "setHostname"

    new-array v0, p2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v0, v3

    invoke-virtual {p1, p4, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lanet/channel/h/p;->b:Ljava/lang/reflect/Method;

    .line 96
    iget-object p1, p0, Lanet/channel/h/p;->b:Ljava/lang/reflect/Method;

    invoke-virtual {p1, p2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 98
    :cond_4
    iget-object p1, p0, Lanet/channel/h/p;->b:Ljava/lang/reflect/Method;

    new-array p4, p2, [Ljava/lang/Object;

    iget-object v0, p0, Lanet/channel/h/p;->c:Ljava/lang/String;

    aput-object v0, p4, v3

    invoke-virtual {p1, p3, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p4, "awcn.TlsSniSocketFactory"

    const-string v0, "SNI not useable"

    .line 100
    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {p4, v0, v2, p1, v4}, Lanet/channel/h/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 105
    :goto_0
    invoke-virtual {p3}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object p1

    .line 106
    invoke-static {p2}, Lanet/channel/h/a;->a(I)Z

    move-result p4

    if-eqz p4, :cond_5

    const-string p4, "awcn.TlsSniSocketFactory"

    .line 107
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "SSLSession PeerHost"

    aput-object v1, v0, v3

    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getPeerHost()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, p2

    invoke-static {p4, v2, v2, v0}, Lanet/channel/h/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    return-object p3
.end method

.method public getDefaultCipherSuites()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 61
    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 66
    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method
