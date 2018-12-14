.class public Lcom/alibaba/sdk/android/httpdns/q;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "[",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/alibaba/sdk/android/httpdns/q;->a:I

    return-void
.end method


# virtual methods
.method public a()[Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/r;->a()Lcom/alibaba/sdk/android/httpdns/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/httpdns/r;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/16 v2, 0x3a98

    :try_start_1
    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    instance-of v2, v1, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Ljavax/net/ssl/HttpsURLConnection;

    new-instance v3, Lcom/alibaba/sdk/android/httpdns/q$1;

    invoke-direct {v3, p0}, Lcom/alibaba/sdk/android/httpdns/q$1;-><init>(Lcom/alibaba/sdk/android/httpdns/q;)V

    invoke-virtual {v2, v3}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    :cond_0
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v3, 0xc8

    if-eq v2, v3, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "response code is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " expect 200"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/sdk/android/httpdns/j;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/r;->a()Lcom/alibaba/sdk/android/httpdns/r;

    move-result-object v2

    new-instance v3, Lcom/alibaba/sdk/android/httpdns/f;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    const-string v5, ""

    invoke-direct {v3, v4, v5}, Lcom/alibaba/sdk/android/httpdns/f;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/alibaba/sdk/android/httpdns/r;->a(Ljava/lang/Throwable;)V

    move-object v3, v0

    goto/16 :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    const-string v5, "UTF-8"

    invoke-direct {v4, v2, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    new-instance v4, Lcom/alibaba/sdk/android/httpdns/s;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/alibaba/sdk/android/httpdns/s;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/r;->a()Lcom/alibaba/sdk/android/httpdns/r;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/alibaba/sdk/android/httpdns/r;->a(Lcom/alibaba/sdk/android/httpdns/s;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v0, v2

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v6, v2

    move-object v2, v0

    goto/16 :goto_6

    :catch_0
    move-exception v0

    move-object v6, v2

    move-object v2, v0

    move-object v0, v1

    move-object v1, v6

    goto :goto_4

    :catchall_1
    move-exception v3

    move-object v6, v3

    move-object v3, v0

    move-object v0, v2

    move-object v2, v6

    goto/16 :goto_7

    :catch_1
    move-exception v3

    move-object v6, v3

    move-object v3, v0

    move-object v0, v1

    move-object v1, v2

    move-object v2, v6

    goto :goto_4

    :catchall_2
    move-exception v2

    move-object v3, v0

    goto/16 :goto_7

    :catch_2
    move-exception v2

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    goto :goto_4

    :cond_3
    move-object v1, v0

    move-object v3, v1

    :goto_1
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_4
    if-eqz v0, :cond_5

    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_3

    :cond_5
    :goto_2
    if-eqz v3, :cond_9

    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_5

    :goto_3
    invoke-static {v0}, Lcom/alibaba/sdk/android/httpdns/j;->a(Ljava/lang/Throwable;)V

    goto :goto_5

    :catchall_3
    move-exception v2

    move-object v1, v0

    move-object v3, v1

    goto :goto_7

    :catch_4
    move-exception v2

    move-object v1, v0

    move-object v3, v1

    :goto_4
    :try_start_5
    invoke-static {v2}, Lcom/alibaba/sdk/android/httpdns/j;->a(Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/r;->a()Lcom/alibaba/sdk/android/httpdns/r;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/alibaba/sdk/android/httpdns/r;->a(Ljava/lang/Throwable;)V

    iget v2, p0, Lcom/alibaba/sdk/android/httpdns/q;->a:I

    if-lez v2, :cond_6

    iget v2, p0, Lcom/alibaba/sdk/android/httpdns/q;->a:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/alibaba/sdk/android/httpdns/q;->a:I

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/httpdns/q;->a()[Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :cond_6
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_7
    if-eqz v1, :cond_8

    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_8
    if-eqz v3, :cond_9

    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :cond_9
    :goto_5
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0

    :catchall_4
    move-exception v2

    move-object v6, v1

    move-object v1, v0

    :goto_6
    move-object v0, v6

    :goto_7
    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_a
    if-eqz v0, :cond_b

    :try_start_7
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_8

    :catch_5
    move-exception v0

    goto :goto_9

    :cond_b
    :goto_8
    if-eqz v3, :cond_c

    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_a

    :goto_9
    invoke-static {v0}, Lcom/alibaba/sdk/android/httpdns/j;->a(Ljava/lang/Throwable;)V

    :cond_c
    :goto_a
    throw v2
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/httpdns/q;->a()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
