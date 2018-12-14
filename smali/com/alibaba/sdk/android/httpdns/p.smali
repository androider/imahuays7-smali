.class Lcom/alibaba/sdk/android/httpdns/p;
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


# static fields
.field private static c:Lcom/alibaba/sdk/android/httpdns/e;

.field private static d:Landroid/content/Context;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private e:Ljava/lang/String;

.field private f:[Ljava/lang/String;

.field private g:Lcom/alibaba/sdk/android/httpdns/n;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/e;->a()Lcom/alibaba/sdk/android/httpdns/e;

    move-result-object v0

    sput-object v0, Lcom/alibaba/sdk/android/httpdns/p;->c:Lcom/alibaba/sdk/android/httpdns/e;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/n;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/sdk/android/httpdns/p;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/sdk/android/httpdns/p;->e:Ljava/lang/String;

    sget-object v0, Lcom/alibaba/sdk/android/httpdns/h;->d:[Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/sdk/android/httpdns/p;->f:[Ljava/lang/String;

    iput-object p1, p0, Lcom/alibaba/sdk/android/httpdns/p;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/alibaba/sdk/android/httpdns/p;->g:Lcom/alibaba/sdk/android/httpdns/n;

    return-void
.end method

.method static a(Landroid/content/Context;)V
    .locals 0

    sput-object p0, Lcom/alibaba/sdk/android/httpdns/p;->d:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    if-ltz p1, :cond_0

    iput p1, p0, Lcom/alibaba/sdk/android/httpdns/p;->b:I

    :cond_0
    return-void
.end method

.method public a()[Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    const v1, 0xa005

    invoke-static {v1}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    :cond_0
    sget-object v1, Lcom/alibaba/sdk/android/httpdns/p;->c:Lcom/alibaba/sdk/android/httpdns/e;

    iget-object v2, p0, Lcom/alibaba/sdk/android/httpdns/p;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alibaba/sdk/android/httpdns/e;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alibaba/sdk/android/httpdns/p;->g:Lcom/alibaba/sdk/android/httpdns/n;

    invoke-static {v1}, Lcom/alibaba/sdk/android/httpdns/u;->a(Lcom/alibaba/sdk/android/httpdns/n;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/sdk/android/httpdns/p;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/sdk/android/httpdns/p;->e:Ljava/lang/String;

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "serverIp is null, give up query for hostname:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/sdk/android/httpdns/p;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/sdk/android/httpdns/j;->a(Ljava/lang/String;)V

    move-object v2, v0

    move-object v3, v2

    goto/16 :goto_3

    :cond_1
    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/d;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/d;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/alibaba/sdk/android/httpdns/h;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alibaba/sdk/android/httpdns/p;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/alibaba/sdk/android/httpdns/h;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/alibaba/sdk/android/httpdns/h;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/sign_d?host="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alibaba/sdk/android/httpdns/p;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&sdk=android_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "1.1.3.1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&t="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&s="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alibaba/sdk/android/httpdns/p;->a:Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/alibaba/sdk/android/httpdns/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/alibaba/sdk/android/httpdns/h;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/sdk/android/httpdns/p;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/alibaba/sdk/android/httpdns/h;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/alibaba/sdk/android/httpdns/h;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/d?host="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/sdk/android/httpdns/p;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&sdk=android_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "1.1.3.1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    sget v2, Lcom/alibaba/sdk/android/httpdns/h;->g:I

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    sget v2, Lcom/alibaba/sdk/android/httpdns/h;->g:I

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    instance-of v2, v1, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v2, :cond_3

    move-object v2, v1

    check-cast v2, Ljavax/net/ssl/HttpsURLConnection;

    new-instance v3, Lcom/alibaba/sdk/android/httpdns/p$1;

    invoke-direct {v3, p0}, Lcom/alibaba/sdk/android/httpdns/p$1;-><init>(Lcom/alibaba/sdk/android/httpdns/p;)V

    invoke-virtual {v2, v3}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    :cond_3
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v3, 0xc8

    if-eq v2, v3, :cond_5

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    const-string v5, "UTF-8"

    invoke-direct {v4, v2, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "response code is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " expect 200. response body is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/sdk/android/httpdns/j;->b(Ljava/lang/String;)V

    new-instance v4, Lcom/alibaba/sdk/android/httpdns/i;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v5, v0}, Lcom/alibaba/sdk/android/httpdns/i;-><init>(ILjava/lang/String;)V

    new-instance v0, Lcom/alibaba/sdk/android/httpdns/f;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    invoke-virtual {v4}, Lcom/alibaba/sdk/android/httpdns/i;->a()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v5, v4}, Lcom/alibaba/sdk/android/httpdns/f;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto/16 :goto_8

    :catch_0
    move-exception v0

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto/16 :goto_4

    :catchall_1
    move-exception v3

    move-object v6, v3

    move-object v3, v0

    move-object v0, v1

    move-object v1, v6

    goto/16 :goto_8

    :catch_1
    move-exception v3

    move-object v6, v3

    move-object v3, v0

    move-object v0, v1

    move-object v1, v6

    goto/16 :goto_4

    :cond_5
    :try_start_4
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    const-string v5, "UTF-8"

    invoke-direct {v4, v2, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resolve host: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/alibaba/sdk/android/httpdns/p;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", return: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/sdk/android/httpdns/j;->a(Ljava/lang/String;)V

    new-instance v4, Lcom/alibaba/sdk/android/httpdns/g;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/alibaba/sdk/android/httpdns/g;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/alibaba/sdk/android/httpdns/p;->c:Lcom/alibaba/sdk/android/httpdns/e;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/httpdns/e;->c()I

    move-result v0

    const/16 v5, 0x64

    if-ge v0, v5, :cond_9

    sget-object v0, Lcom/alibaba/sdk/android/httpdns/p;->c:Lcom/alibaba/sdk/android/httpdns/e;

    iget-object v5, p0, Lcom/alibaba/sdk/android/httpdns/p;->a:Ljava/lang/String;

    invoke-virtual {v0, v5, v4}, Lcom/alibaba/sdk/android/httpdns/e;->a(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/g;)V

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/p;->a:Ljava/lang/String;

    iget-object v5, p0, Lcom/alibaba/sdk/android/httpdns/p;->e:Ljava/lang/String;

    invoke-static {v0, v5}, Lcom/alibaba/sdk/android/httpdns/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/alibaba/sdk/android/httpdns/p;->c:Lcom/alibaba/sdk/android/httpdns/e;

    iget-object v5, p0, Lcom/alibaba/sdk/android/httpdns/p;->a:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/alibaba/sdk/android/httpdns/e;->c(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/alibaba/sdk/android/httpdns/g;->b()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/sdk/android/httpdns/p;->f:[Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object v0, v1

    :goto_3
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_7
    if-eqz v2, :cond_8

    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_8
    if-eqz v3, :cond_d

    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_7

    :cond_9
    :try_start_8
    new-instance v0, Ljava/lang/Exception;

    const-string v4, "the total number of hosts is exceed 100"

    invoke-direct {v0, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :catchall_2
    move-exception v2

    move-object v3, v0

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    goto :goto_8

    :catch_2
    move-exception v2

    move-object v3, v0

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    goto :goto_4

    :catchall_3
    move-exception v1

    move-object v2, v0

    move-object v3, v2

    goto :goto_8

    :catch_3
    move-exception v1

    move-object v2, v0

    move-object v3, v2

    :goto_4
    :try_start_9
    invoke-static {v1}, Lcom/alibaba/sdk/android/httpdns/j;->a(Ljava/lang/Throwable;)V

    iget-object v4, p0, Lcom/alibaba/sdk/android/httpdns/p;->a:Ljava/lang/String;

    iget-object v5, p0, Lcom/alibaba/sdk/android/httpdns/p;->e:Ljava/lang/String;

    invoke-static {v4, v5, v1}, Lcom/alibaba/sdk/android/httpdns/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget v1, p0, Lcom/alibaba/sdk/android/httpdns/p;->b:I

    if-lez v1, :cond_a

    iget v1, p0, Lcom/alibaba/sdk/android/httpdns/p;->b:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/alibaba/sdk/android/httpdns/p;->b:I

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/httpdns/p;->a()[Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :cond_a
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_b
    if-eqz v2, :cond_c

    :try_start_a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_5

    :catch_4
    move-exception v0

    goto :goto_6

    :cond_c
    :goto_5
    if-eqz v3, :cond_d

    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    goto :goto_7

    :goto_6
    invoke-static {v0}, Lcom/alibaba/sdk/android/httpdns/j;->a(Ljava/lang/Throwable;)V

    :cond_d
    :goto_7
    sget-object v0, Lcom/alibaba/sdk/android/httpdns/p;->c:Lcom/alibaba/sdk/android/httpdns/e;

    iget-object v1, p0, Lcom/alibaba/sdk/android/httpdns/p;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/httpdns/e;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/p;->f:[Ljava/lang/String;

    return-object v0

    :catchall_4
    move-exception v1

    :goto_8
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_e
    if-eqz v2, :cond_f

    :try_start_b
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_9

    :catch_5
    move-exception v0

    goto :goto_a

    :cond_f
    :goto_9
    if-eqz v3, :cond_10

    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    goto :goto_b

    :goto_a
    invoke-static {v0}, Lcom/alibaba/sdk/android/httpdns/j;->a(Ljava/lang/Throwable;)V

    :cond_10
    :goto_b
    throw v1
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/httpdns/p;->a()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
