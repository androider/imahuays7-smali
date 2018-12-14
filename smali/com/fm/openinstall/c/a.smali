.class public Lcom/fm/openinstall/c/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/fm/openinstall/f/c;

.field private b:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/fm/openinstall/c/a;

    invoke-static {v0}, Lcom/fm/openinstall/f/c;->a(Ljava/lang/Class;)Lcom/fm/openinstall/f/c;

    move-result-object v0

    iput-object v0, p0, Lcom/fm/openinstall/c/a;->a:Lcom/fm/openinstall/f/c;

    return-void
.end method

.method private a(Ljava/net/HttpURLConnection;)V
    .locals 1

    instance-of v0, p1, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    invoke-direct {p0, v0}, Lcom/fm/openinstall/c/a;->a(Ljavax/net/ssl/HttpsURLConnection;)V

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const-string v0, "POST"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/16 v0, 0x1388

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    return-void
.end method

.method private a(Ljavax/net/ssl/HttpsURLConnection;)V
    .locals 4

    iget-object v0, p0, Lcom/fm/openinstall/c/a;->b:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_1

    const-string v0, "release"

    const-string v1, "release"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/fm/openinstall/c/d;->a()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/fm/openinstall/c/a;->b:Ljavax/net/ssl/SSLSocketFactory;

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/fm/openinstall/c/e;

    invoke-direct {v0}, Lcom/fm/openinstall/c/e;-><init>()V

    const-string v1, "TLS"

    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljavax/net/ssl/TrustManager;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x0

    invoke-virtual {v1, v0, v2, v0}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/fm/openinstall/c/a;->b:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {p1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/fm/openinstall/c/b;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/fm/openinstall/c/a;->a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Z)Lcom/fm/openinstall/c/b;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Z)Lcom/fm/openinstall/c/b;
    .locals 11

    new-instance v0, Lcom/fm/openinstall/c/b;

    invoke-direct {v0}, Lcom/fm/openinstall/c/b;-><init>()V

    const-string v1, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    move-object v2, v0

    move-object v0, p1

    const/4 p1, 0x0

    :goto_0
    const/4 v3, 0x3

    if-ge v1, v3, :cond_12

    if-nez p1, :cond_12

    const/4 v3, -0x1

    const/4 v4, 0x0

    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/fm/openinstall/c/d;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_b
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    :try_start_1
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_b
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    :try_start_2
    invoke-direct {p0, v0}, Lcom/fm/openinstall/c/a;->a(Ljava/net/HttpURLConnection;)V

    const-string v6, "UTF-8"

    invoke-virtual {p3, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    array-length v6, v6

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    if-eqz p4, :cond_0

    const-string v7, "content-type"

    const-string v8, "text/plain;charset=utf-8"

    invoke-virtual {v0, v7, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "content-length"

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v7, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_9
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    :try_start_3
    new-instance v7, Ljava/io/BufferedOutputStream;

    invoke-direct {v7, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catch Ljava/io/EOFException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    const-string v8, "UTF-8"

    invoke-virtual {p3, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/BufferedOutputStream;->write([B)V

    invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->flush()V

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v9, v4

    goto/16 :goto_8

    :catch_0
    move-exception p1

    move-object v9, v4

    goto/16 :goto_7

    :catch_1
    move-object v9, v4

    goto/16 :goto_a

    :cond_1
    move-object v6, v4

    move-object v7, v6

    :goto_1
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8

    const/16 v9, 0xc8

    if-ne v8, v9, :cond_2

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8
    :try_end_4
    .catch Ljava/io/EOFException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    invoke-static {v8}, Lcom/fm/openinstall/c/d;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/fm/openinstall/c/b;->a(Ljava/lang/String;)Lcom/fm/openinstall/c/b;

    move-result-object v4
    :try_end_5
    .catch Ljava/io/EOFException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object v2, v4

    move-object v9, v8

    goto :goto_2

    :catchall_1
    move-exception p1

    move-object v4, v7

    move-object v9, v8

    goto/16 :goto_8

    :catch_2
    move-exception p1

    move-object v4, v7

    move-object v9, v8

    goto/16 :goto_7

    :catch_3
    move-object v4, v7

    move-object v9, v8

    goto/16 :goto_a

    :cond_2
    :try_start_6
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v9
    :try_end_6
    .catch Ljava/io/EOFException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :try_start_7
    invoke-static {v9}, Lcom/fm/openinstall/c/d;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    sget-object v10, Lcom/fm/openinstall/c/c;->b:Lcom/fm/openinstall/c/c;

    invoke-virtual {v2, v10}, Lcom/fm/openinstall/c/b;->a(Lcom/fm/openinstall/c/c;)V

    invoke-virtual {v2, v3}, Lcom/fm/openinstall/c/b;->a(I)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " : "

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/fm/openinstall/c/b;->b(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/io/EOFException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :goto_2
    if-eqz v7, :cond_3

    :try_start_8
    invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->close()V

    :cond_3
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    :cond_4
    if-eqz v9, :cond_5

    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    :catch_4
    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_6
    const/4 p1, 0x1

    goto/16 :goto_b

    :catchall_2
    move-exception p1

    goto :goto_3

    :catch_5
    move-exception p1

    goto :goto_4

    :catchall_3
    move-exception p1

    move-object v9, v4

    :goto_3
    move-object v4, v7

    goto :goto_8

    :catch_6
    move-exception p1

    move-object v9, v4

    :goto_4
    move-object v4, v7

    goto :goto_7

    :catch_7
    move-object v9, v4

    :catch_8
    move-object v4, v7

    goto :goto_a

    :catchall_4
    move-exception p1

    move-object v6, v4

    goto :goto_5

    :catch_9
    move-exception p1

    move-object v6, v4

    goto :goto_6

    :catch_a
    move-object v6, v4

    goto :goto_9

    :catchall_5
    move-exception p1

    move-object v0, v4

    move-object v6, v0

    :goto_5
    move-object v9, v6

    goto :goto_8

    :catch_b
    move-exception p1

    move-object v0, v4

    move-object v6, v0

    :goto_6
    move-object v9, v6

    :goto_7
    :try_start_9
    sget-object p2, Lcom/fm/openinstall/c/c;->b:Lcom/fm/openinstall/c/c;

    invoke-virtual {v2, p2}, Lcom/fm/openinstall/c/b;->a(Lcom/fm/openinstall/c/c;)V

    invoke-virtual {v2, v3}, Lcom/fm/openinstall/c/b;->a(I)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/fm/openinstall/c/b;->b(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    if-eqz v4, :cond_7

    :try_start_a
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V

    :cond_7
    if-eqz v6, :cond_8

    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    :cond_8
    if-eqz v9, :cond_9

    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_c

    :catch_c
    :cond_9
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v2

    :catchall_6
    move-exception p1

    :goto_8
    if-eqz v4, :cond_a

    :try_start_b
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V

    :cond_a
    if-eqz v6, :cond_b

    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    :cond_b
    if-eqz v9, :cond_c

    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_d

    :catch_d
    :cond_c
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_d
    throw p1

    :catch_e
    move-object v5, v0

    :catch_f
    move-object v0, v4

    move-object v6, v0

    :goto_9
    move-object v9, v6

    :goto_a
    add-int/lit8 v1, v1, 0x1

    if-eqz v4, :cond_e

    :try_start_c
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V

    :cond_e
    if-eqz v6, :cond_f

    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    :cond_f
    if-eqz v9, :cond_10

    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_10

    :catch_10
    :cond_10
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_11
    :goto_b
    move-object v0, v5

    goto/16 :goto_0

    :cond_12
    return-object v2
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/fm/openinstall/c/b;
    .locals 2

    new-instance v0, Lcom/fm/openinstall/c/b;

    invoke-direct {v0}, Lcom/fm/openinstall/c/b;-><init>()V

    :try_start_0
    invoke-static {p3}, Lcom/fm/openinstall/c/d;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p3

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/fm/openinstall/c/a;->a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Z)Lcom/fm/openinstall/c/b;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    sget-object p2, Lcom/fm/openinstall/c/c;->b:Lcom/fm/openinstall/c/c;

    invoke-virtual {v0, p2}, Lcom/fm/openinstall/c/b;->a(Lcom/fm/openinstall/c/c;)V

    const/4 p2, -0x1

    invoke-virtual {v0, p2}, Lcom/fm/openinstall/c/b;->a(I)V

    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/fm/openinstall/c/b;->b(Ljava/lang/String;)V

    move-object p1, v0

    return-object p1
.end method
