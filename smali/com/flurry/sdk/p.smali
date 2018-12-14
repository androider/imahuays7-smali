.class public Lcom/flurry/sdk/p;
.super Lcom/flurry/sdk/s;
.source "SourceFile"


# static fields
.field private static final i:Ljava/lang/String; = "p"

.field private static j:Ljava/lang/String;


# instance fields
.field private k:Ljavax/net/ssl/HttpsURLConnection;

.field private l:Ljava/lang/String;

.field private m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Lcom/flurry/sdk/s;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/flurry/sdk/p;->a:Ljava/lang/String;

    .line 48
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Flurry-Config/1.0 (Android "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/flurry/sdk/p;->j:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final a()Ljava/io/InputStream;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/flurry/sdk/p;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    iput-object v0, p0, Lcom/flurry/sdk/p;->k:Ljavax/net/ssl/HttpsURLConnection;

    .line 56
    iget-object v0, p0, Lcom/flurry/sdk/p;->k:Ljavax/net/ssl/HttpsURLConnection;

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    .line 57
    iget-object v0, p0, Lcom/flurry/sdk/p;->k:Ljavax/net/ssl/HttpsURLConnection;

    const/16 v1, 0x3a98

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    .line 58
    iget-object v0, p0, Lcom/flurry/sdk/p;->k:Ljavax/net/ssl/HttpsURLConnection;

    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/flurry/sdk/p;->k:Ljavax/net/ssl/HttpsURLConnection;

    const-string v1, "User-Agent"

    sget-object v2, Lcom/flurry/sdk/p;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/flurry/sdk/p;->k:Ljavax/net/ssl/HttpsURLConnection;

    const-string v1, "Content-Type"

    const-string v2, "application/json"

    invoke-virtual {v0, v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/flurry/sdk/p;->k:Ljavax/net/ssl/HttpsURLConnection;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    .line 62
    iget-object v0, p0, Lcom/flurry/sdk/p;->k:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    .line 64
    iget-object v0, p0, Lcom/flurry/sdk/p;->k:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->connect()V

    .line 65
    iget-object v0, p0, Lcom/flurry/sdk/p;->k:Ljavax/net/ssl/HttpsURLConnection;

    invoke-static {v0}, Lcom/flurry/sdk/u;->a(Ljavax/net/ssl/HttpsURLConnection;)V

    .line 67
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/p;->c:Ljava/lang/String;

    const/4 v0, 0x0

    .line 72
    :try_start_0
    iget-object v1, p0, Lcom/flurry/sdk/p;->k:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 73
    :try_start_1
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    const-string v4, "UTF-8"

    invoke-direct {v3, v1, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 75
    :try_start_2
    iget-object v0, p0, Lcom/flurry/sdk/p;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/flurry/sdk/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 78
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    if-eqz v1, :cond_0

    .line 81
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/p;->k:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v0

    const/16 v1, 0x190

    if-lt v0, v1, :cond_1

    .line 87
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Server response code is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 90
    :cond_1
    iget-object v1, p0, Lcom/flurry/sdk/p;->k:Ljavax/net/ssl/HttpsURLConnection;

    const-string v2, "Content-Signature"

    invoke-virtual {v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/flurry/sdk/p;->l:Ljava/lang/String;

    .line 91
    iget-object v1, p0, Lcom/flurry/sdk/p;->k:Ljavax/net/ssl/HttpsURLConnection;

    const-string v2, "ETag"

    invoke-virtual {v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/flurry/sdk/p;->g:Ljava/lang/String;

    .line 92
    sget-object v1, Lcom/flurry/sdk/p;->i:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Content-Signature: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/flurry/sdk/p;->l:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", ETag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/flurry/sdk/p;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/flurry/sdk/dc;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x130

    if-ne v0, v1, :cond_3

    .line 96
    iget-object v0, p0, Lcom/flurry/sdk/p;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/p;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 97
    sget-object v0, Lcom/flurry/sdk/h;->b:Lcom/flurry/sdk/h;

    iput-object v0, p0, Lcom/flurry/sdk/p;->b:Lcom/flurry/sdk/h;

    .line 98
    sget-object v0, Lcom/flurry/sdk/p;->i:Ljava/lang/String;

    const-string v1, "Empty 304 payload; No Change."

    invoke-static {v0, v1}, Lcom/flurry/sdk/dc;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 100
    :cond_2
    new-instance v0, Lcom/flurry/sdk/h;

    sget-object v1, Lcom/flurry/sdk/h$a;->e:Lcom/flurry/sdk/h$a;

    const-string v2, "GUID Signature Error."

    invoke-direct {v0, v1, v2}, Lcom/flurry/sdk/h;-><init>(Lcom/flurry/sdk/h$a;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/flurry/sdk/p;->b:Lcom/flurry/sdk/h;

    .line 101
    sget-object v0, Lcom/flurry/sdk/p;->i:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Authentication error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/flurry/sdk/p;->b:Lcom/flurry/sdk/h;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/sdk/dc;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/flurry/sdk/p;->k:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    move-object v5, v2

    move-object v2, v0

    move-object v0, v5

    goto :goto_1

    :catchall_1
    move-exception v2

    goto :goto_1

    :catchall_2
    move-exception v1

    move-object v2, v1

    move-object v1, v0

    :goto_1
    if-eqz v0, :cond_4

    .line 78
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    :cond_4
    if-eqz v1, :cond_5

    .line 81
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    :cond_5
    throw v2
.end method

.method protected final a(Ljava/lang/String;)Z
    .locals 9

    .line 122
    iget-object v0, p0, Lcom/flurry/sdk/p;->l:Ljava/lang/String;

    .line 1147
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 1148
    sget-object v0, Lcom/flurry/sdk/p;->i:Ljava/lang/String;

    const-string v1, "Content-Signature is empty."

    invoke-static {v0, v1}, Lcom/flurry/sdk/dc;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    goto/16 :goto_3

    .line 1153
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v4, ";"

    .line 1154
    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1155
    array-length v4, v0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_2

    aget-object v6, v0, v5

    const-string v7, "="

    .line 1156
    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_1

    .line 1158
    invoke-virtual {v6, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    const-string v0, "keyid"

    .line 1163
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/flurry/sdk/p;->d:Ljava/lang/String;

    .line 1164
    iget-object v0, p0, Lcom/flurry/sdk/p;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1165
    sget-object v0, Lcom/flurry/sdk/p;->i:Ljava/lang/String;

    const-string v1, "Error to get keyid from Signature."

    invoke-static {v0, v1}, Lcom/flurry/sdk/dc;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1168
    :cond_3
    sget-object v0, Lcom/flurry/sdk/v;->a:Ljava/util/Map;

    iget-object v4, p0, Lcom/flurry/sdk/p;->d:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/flurry/sdk/p;->e:Ljava/lang/String;

    .line 1169
    sget-object v0, Lcom/flurry/sdk/p;->i:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Signature keyid: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/flurry/sdk/p;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/flurry/sdk/p;->e:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/flurry/sdk/dc;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1170
    iget-object v0, p0, Lcom/flurry/sdk/p;->e:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 1171
    sget-object v0, Lcom/flurry/sdk/p;->i:Ljava/lang/String;

    const-string v1, "Unknown keyid from Signature."

    invoke-static {v0, v1}, Lcom/flurry/sdk/dc;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v0, "sha256ecdsa"

    .line 1176
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/flurry/sdk/p;->m:Z

    .line 1177
    iget-boolean v0, p0, Lcom/flurry/sdk/p;->m:Z

    if-eqz v0, :cond_5

    const-string v0, "sha256ecdsa"

    goto :goto_2

    :cond_5
    const-string v0, "sha256rsa"

    :goto_2
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/flurry/sdk/p;->f:Ljava/lang/String;

    .line 1178
    iget-object v0, p0, Lcom/flurry/sdk/p;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1179
    sget-object v0, Lcom/flurry/sdk/p;->i:Ljava/lang/String;

    const-string v1, "Error to get rsa from Signature."

    invoke-static {v0, v1}, Lcom/flurry/sdk/dc;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1182
    :cond_6
    sget-object v0, Lcom/flurry/sdk/p;->i:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Signature rsa: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/flurry/sdk/p;->f:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/sdk/dc;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_3
    if-nez v0, :cond_7

    return v3

    .line 126
    :cond_7
    iget-boolean v0, p0, Lcom/flurry/sdk/p;->m:Z

    if-eqz v0, :cond_8

    .line 127
    iget-object v0, p0, Lcom/flurry/sdk/p;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/flurry/sdk/p;->f:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/flurry/sdk/u;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    goto :goto_4

    .line 128
    :cond_8
    iget-object v0, p0, Lcom/flurry/sdk/p;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/flurry/sdk/p;->f:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/flurry/sdk/u;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    :goto_4
    if-nez p1, :cond_9

    .line 130
    sget-object p1, Lcom/flurry/sdk/p;->i:Ljava/lang/String;

    const-string v0, "Incorrect signature for response."

    invoke-static {p1, v0}, Lcom/flurry/sdk/dc;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_9
    return v2
.end method

.method protected final b()V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/flurry/sdk/p;->k:Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/flurry/sdk/p;->k:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_0
    return-void
.end method

.method public final c()Z
    .locals 2

    const-string v0, "https://cfg.flurry.com/sdk/v1/config"

    .line 117
    iget-object v1, p0, Lcom/flurry/sdk/p;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
