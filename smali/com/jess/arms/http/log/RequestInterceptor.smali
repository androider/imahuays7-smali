.class public Lcom/jess/arms/http/log/RequestInterceptor;
.super Ljava/lang/Object;
.source "RequestInterceptor.java"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jess/arms/http/log/RequestInterceptor$Level;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Lcom/jess/arms/http/b;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Lcom/jess/arms/http/log/b;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field c:Lcom/jess/arms/http/log/RequestInterceptor$Level;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2

    .line 263
    invoke-virtual {p0}, Ljava/nio/charset/Charset;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "["

    .line 264
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 267
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lokhttp3/Request;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 204
    :try_start_0
    invoke-virtual {p0}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 206
    :cond_0
    new-instance v0, Lokio/c;

    invoke-direct {v0}, Lokio/c;-><init>()V

    .line 207
    invoke-virtual {p0, v0}, Lokhttp3/RequestBody;->writeTo(Lokio/d;)V

    const-string v1, "UTF-8"

    .line 208
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    .line 209
    invoke-virtual {p0}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 211
    invoke-virtual {p0, v1}, Lokhttp3/MediaType;->charset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v1

    .line 213
    :cond_1
    invoke-virtual {v0, v1}, Lokio/c;->a(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1}, Lcom/jess/arms/http/log/RequestInterceptor;->a(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/jess/arms/c/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 215
    invoke-static {p0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{\"error\": \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\"}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Lokhttp3/Request;Lokhttp3/Response;Z)Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 151
    :try_start_0
    invoke-virtual {p2}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    .line 152
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->source()Lokio/e;

    move-result-object p3

    const-wide v0, 0x7fffffffffffffffL

    .line 153
    invoke-interface {p3, v0, v1}, Lokio/e;->b(J)Z

    .line 154
    invoke-interface {p3}, Lokio/e;->b()Lokio/c;

    move-result-object p3

    .line 158
    invoke-virtual {p2}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object p2

    const-string v0, "Content-Encoding"

    .line 159
    invoke-virtual {p2, v0}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 161
    invoke-virtual {p3}, Lokio/c;->v()Lokio/c;

    move-result-object p3

    .line 164
    invoke-direct {p0, p1, p2, p3}, Lcom/jess/arms/http/log/RequestInterceptor;->a(Lokhttp3/ResponseBody;Ljava/lang/String;Lokio/c;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 166
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    .line 167
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "{\"error\": \""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\"}"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Lokhttp3/ResponseBody;Ljava/lang/String;Lokio/c;)Ljava/lang/String;
    .locals 1

    const-string v0, "UTF-8"

    .line 181
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 182
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 184
    invoke-virtual {p1, v0}, Lokhttp3/MediaType;->charset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v0

    :cond_0
    if-eqz p2, :cond_1

    const-string p1, "gzip"

    .line 186
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 187
    invoke-virtual {p3}, Lokio/c;->t()[B

    move-result-object p1

    invoke-static {v0}, Lcom/jess/arms/http/log/RequestInterceptor;->a(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/jess/arms/c/j;->b([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    if-eqz p2, :cond_2

    const-string p1, "zlib"

    .line 188
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 189
    invoke-virtual {p3}, Lokio/c;->t()[B

    move-result-object p1

    invoke-static {v0}, Lcom/jess/arms/http/log/RequestInterceptor;->a(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/jess/arms/c/j;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 191
    :cond_2
    invoke-virtual {p3, v0}, Lokio/c;->a(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static a(Lokhttp3/MediaType;)Z
    .locals 1

    .line 227
    invoke-static {p0}, Lcom/jess/arms/http/log/RequestInterceptor;->b(Lokhttp3/MediaType;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/jess/arms/http/log/RequestInterceptor;->c(Lokhttp3/MediaType;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 228
    invoke-static {p0}, Lcom/jess/arms/http/log/RequestInterceptor;->d(Lokhttp3/MediaType;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/jess/arms/http/log/RequestInterceptor;->g(Lokhttp3/MediaType;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 229
    invoke-static {p0}, Lcom/jess/arms/http/log/RequestInterceptor;->f(Lokhttp3/MediaType;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/jess/arms/http/log/RequestInterceptor;->e(Lokhttp3/MediaType;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static b(Lokhttp3/MediaType;)Z
    .locals 1

    if-eqz p0, :cond_1

    .line 233
    invoke-virtual {p0}, Lokhttp3/MediaType;->type()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 234
    :cond_0
    invoke-virtual {p0}, Lokhttp3/MediaType;->type()Ljava/lang/String;

    move-result-object p0

    const-string v0, "text"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static c(Lokhttp3/MediaType;)Z
    .locals 1

    if-eqz p0, :cond_1

    .line 238
    invoke-virtual {p0}, Lokhttp3/MediaType;->subtype()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 239
    :cond_0
    invoke-virtual {p0}, Lokhttp3/MediaType;->subtype()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, "plain"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static d(Lokhttp3/MediaType;)Z
    .locals 1

    if-eqz p0, :cond_1

    .line 243
    invoke-virtual {p0}, Lokhttp3/MediaType;->subtype()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 244
    :cond_0
    invoke-virtual {p0}, Lokhttp3/MediaType;->subtype()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, "json"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static e(Lokhttp3/MediaType;)Z
    .locals 1

    if-eqz p0, :cond_1

    .line 248
    invoke-virtual {p0}, Lokhttp3/MediaType;->subtype()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 249
    :cond_0
    invoke-virtual {p0}, Lokhttp3/MediaType;->subtype()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, "xml"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static f(Lokhttp3/MediaType;)Z
    .locals 1

    if-eqz p0, :cond_1

    .line 253
    invoke-virtual {p0}, Lokhttp3/MediaType;->subtype()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 254
    :cond_0
    invoke-virtual {p0}, Lokhttp3/MediaType;->subtype()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, "html"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static g(Lokhttp3/MediaType;)Z
    .locals 1

    if-eqz p0, :cond_1

    .line 258
    invoke-virtual {p0}, Lokhttp3/MediaType;->subtype()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 259
    :cond_0
    invoke-virtual {p0}, Lokhttp3/MediaType;->subtype()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, "x-www-form-urlencoded"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 79
    invoke-interface/range {p1 .. p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v3

    .line 81
    iget-object v4, v1, Lcom/jess/arms/http/log/RequestInterceptor;->c:Lcom/jess/arms/http/log/RequestInterceptor$Level;

    sget-object v5, Lcom/jess/arms/http/log/RequestInterceptor$Level;->ALL:Lcom/jess/arms/http/log/RequestInterceptor$Level;

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eq v4, v5, :cond_1

    iget-object v4, v1, Lcom/jess/arms/http/log/RequestInterceptor;->c:Lcom/jess/arms/http/log/RequestInterceptor$Level;

    sget-object v5, Lcom/jess/arms/http/log/RequestInterceptor$Level;->NONE:Lcom/jess/arms/http/log/RequestInterceptor$Level;

    if-eq v4, v5, :cond_0

    iget-object v4, v1, Lcom/jess/arms/http/log/RequestInterceptor;->c:Lcom/jess/arms/http/log/RequestInterceptor$Level;

    sget-object v5, Lcom/jess/arms/http/log/RequestInterceptor$Level;->REQUEST:Lcom/jess/arms/http/log/RequestInterceptor$Level;

    if-ne v4, v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v4, 0x1

    :goto_1
    if-eqz v4, :cond_3

    .line 85
    invoke-virtual {v3}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    move-result-object v4

    invoke-static {v4}, Lcom/jess/arms/http/log/RequestInterceptor;->a(Lokhttp3/MediaType;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 86
    iget-object v4, v1, Lcom/jess/arms/http/log/RequestInterceptor;->b:Lcom/jess/arms/http/log/b;

    invoke-static {v3}, Lcom/jess/arms/http/log/RequestInterceptor;->a(Lokhttp3/Request;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Lcom/jess/arms/http/log/b;->a(Lokhttp3/Request;Ljava/lang/String;)V

    goto :goto_2

    .line 88
    :cond_2
    iget-object v4, v1, Lcom/jess/arms/http/log/RequestInterceptor;->b:Lcom/jess/arms/http/log/b;

    invoke-interface {v4, v3}, Lcom/jess/arms/http/log/b;->a(Lokhttp3/Request;)V

    .line 92
    :cond_3
    :goto_2
    iget-object v4, v1, Lcom/jess/arms/http/log/RequestInterceptor;->c:Lcom/jess/arms/http/log/RequestInterceptor$Level;

    sget-object v5, Lcom/jess/arms/http/log/RequestInterceptor$Level;->ALL:Lcom/jess/arms/http/log/RequestInterceptor$Level;

    if-eq v4, v5, :cond_5

    iget-object v4, v1, Lcom/jess/arms/http/log/RequestInterceptor;->c:Lcom/jess/arms/http/log/RequestInterceptor$Level;

    sget-object v5, Lcom/jess/arms/http/log/RequestInterceptor$Level;->NONE:Lcom/jess/arms/http/log/RequestInterceptor$Level;

    if-eq v4, v5, :cond_4

    iget-object v4, v1, Lcom/jess/arms/http/log/RequestInterceptor;->c:Lcom/jess/arms/http/log/RequestInterceptor$Level;

    sget-object v5, Lcom/jess/arms/http/log/RequestInterceptor$Level;->RESPONSE:Lcom/jess/arms/http/log/RequestInterceptor$Level;

    if-ne v4, v5, :cond_4

    goto :goto_3

    :cond_4
    const/4 v6, 0x0

    :cond_5
    :goto_3
    const-wide/16 v4, 0x0

    if-eqz v6, :cond_6

    .line 94
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    goto :goto_4

    :cond_6
    move-wide v8, v4

    .line 97
    :goto_4
    :try_start_0
    invoke-interface {v2, v3}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v6, :cond_7

    .line 102
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 104
    :cond_7
    invoke-virtual {v10}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v7

    const/4 v11, 0x0

    if-eqz v7, :cond_8

    .line 110
    invoke-virtual {v7}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v12

    invoke-static {v12}, Lcom/jess/arms/http/log/RequestInterceptor;->a(Lokhttp3/MediaType;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 111
    invoke-direct {v1, v3, v10, v6}, Lcom/jess/arms/http/log/RequestInterceptor;->a(Lokhttp3/Request;Lokhttp3/Response;Z)Ljava/lang/String;

    move-result-object v11

    :cond_8
    if-eqz v6, :cond_a

    .line 115
    invoke-virtual {v3}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/HttpUrl;->encodedPathSegments()Ljava/util/List;

    move-result-object v3

    .line 116
    invoke-virtual {v10}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v6

    invoke-virtual {v6}, Lokhttp3/Headers;->toString()Ljava/lang/String;

    move-result-object v17

    .line 117
    invoke-virtual {v10}, Lokhttp3/Response;->code()I

    move-result v16

    .line 118
    invoke-virtual {v10}, Lokhttp3/Response;->isSuccessful()Z

    move-result v15

    .line 119
    invoke-virtual {v10}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v6

    .line 120
    invoke-virtual {v10}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v12

    invoke-virtual {v12}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v12

    invoke-virtual {v12}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v22

    if-eqz v7, :cond_9

    .line 122
    invoke-virtual {v7}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v12

    invoke-static {v12}, Lcom/jess/arms/http/log/RequestInterceptor;->a(Lokhttp3/MediaType;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 123
    iget-object v12, v1, Lcom/jess/arms/http/log/RequestInterceptor;->b:Lcom/jess/arms/http/log/b;

    sget-object v13, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    sub-long v1, v4, v8

    invoke-virtual {v13, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v13

    .line 124
    invoke-virtual {v7}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v18

    move-object/from16 v19, v11

    move-object/from16 v20, v3

    move-object/from16 v21, v6

    .line 123
    invoke-interface/range {v12 .. v22}, Lcom/jess/arms/http/log/b;->a(JZILjava/lang/String;Lokhttp3/MediaType;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v1, p0

    goto :goto_5

    .line 126
    :cond_9
    iget-object v12, v1, Lcom/jess/arms/http/log/RequestInterceptor;->b:Lcom/jess/arms/http/log/b;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    sub-long v13, v4, v8

    invoke-virtual {v2, v13, v14}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v13

    move-object/from16 v18, v3

    move-object/from16 v19, v6

    move-object/from16 v20, v22

    invoke-interface/range {v12 .. v20}, Lcom/jess/arms/http/log/b;->a(JZILjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :cond_a
    :goto_5
    iget-object v2, v1, Lcom/jess/arms/http/log/RequestInterceptor;->a:Lcom/jess/arms/http/b;

    if-eqz v2, :cond_b

    .line 133
    iget-object v2, v1, Lcom/jess/arms/http/log/RequestInterceptor;->a:Lcom/jess/arms/http/b;

    move-object/from16 v3, p1

    invoke-interface {v2, v11, v3, v10}, Lcom/jess/arms/http/b;->a(Ljava/lang/String;Lokhttp3/Interceptor$Chain;Lokhttp3/Response;)Lokhttp3/Response;

    move-result-object v2

    return-object v2

    :cond_b
    return-object v10

    :catch_0
    move-exception v0

    .line 99
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Http Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lb/a/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    throw v0
.end method
