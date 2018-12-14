.class Lanet/channel/strategy/a/g;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field static a:Ljava/util/concurrent/atomic/AtomicInteger;

.field static b:Ljavax/net/ssl/HostnameVerifier;

.field static c:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 59
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lanet/channel/strategy/a/g;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 60
    new-instance v0, Lanet/channel/strategy/a/h;

    invoke-direct {v0}, Lanet/channel/strategy/a/h;-><init>()V

    sput-object v0, Lanet/channel/strategy/a/g;->b:Ljavax/net/ssl/HostnameVerifier;

    .line 66
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lanet/channel/strategy/a/g;->c:Ljava/util/Random;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/util/Map;I)I
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    .line 165
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AMDC"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lanet/channel/strategy/a/g;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "awcn.DispatchCore"

    const-string v6, "send amdc request"

    const/4 v7, 0x2

    .line 166
    new-array v8, v7, [Ljava/lang/Object;

    const-string v9, "url"

    const/4 v10, 0x0

    aput-object v9, v8, v10

    const/4 v9, 0x1

    aput-object v1, v8, v9

    invoke-static {v5, v6, v4, v8}, Lanet/channel/h/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v5, "Env"

    .line 167
    invoke-interface {v2, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lanet/channel/entity/ENV;

    .line 171
    :try_start_0
    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_e
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 172
    :try_start_1
    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v11

    check-cast v11, Ljava/net/HttpURLConnection;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_d
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v12, 0x4e20

    .line 173
    :try_start_2
    invoke-virtual {v11, v12}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 174
    invoke-virtual {v11, v12}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string v12, "POST"

    .line 175
    invoke-virtual {v11, v12}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 176
    invoke-virtual {v11, v9}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 177
    invoke-virtual {v11, v9}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const-string v12, "Connection"

    const-string v13, "close"

    .line 178
    invoke-virtual {v11, v12, v13}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v12, "Accept-Encoding"

    const-string v13, "gzip"

    .line 179
    invoke-virtual {v11, v12, v13}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-virtual {v11, v10}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 181
    invoke-virtual {v8}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v12

    const-string v13, "https"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_c
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v12, :cond_0

    .line 182
    :try_start_3
    move-object v12, v11

    check-cast v12, Ljavax/net/ssl/HttpsURLConnection;

    sget-object v13, Lanet/channel/strategy/a/g;->b:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {v12, v13}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v7, v8

    goto/16 :goto_e

    .line 186
    :cond_0
    :goto_0
    :try_start_4
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v12

    const-string v13, "utf-8"

    .line 187
    invoke-static {v2, v13}, Lanet/channel/strategy/utils/d;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 188
    invoke-virtual {v12, v2}, Ljava/io/OutputStream;->write([B)V

    .line 190
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v12

    .line 191
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v13

    .line 193
    invoke-static {v9}, Lanet/channel/h/a;->a(I)Z

    move-result v14
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_c
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v14, :cond_1

    :try_start_5
    const-string v14, "awcn.DispatchCore"

    .line 194
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "amdc response. code: "

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v15, v7, [Ljava/lang/Object;

    const-string v16, "\nheaders"

    aput-object v16, v15, v10

    aput-object v13, v15, v9

    invoke-static {v14, v6, v4, v15}, Lanet/channel/h/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    const/16 v6, 0xc8

    if-eq v12, v6, :cond_5

    const/16 v1, 0x12e

    if-eq v12, v1, :cond_3

    const/16 v1, 0x133

    if-ne v12, v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v7, 0x1

    .line 200
    :cond_3
    :goto_1
    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "response code not 200"

    invoke-static {v1, v2, v8, v3, v7}, Lanet/channel/strategy/a/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;II)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v11, :cond_4

    .line 274
    :try_start_6
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    const-string v1, "awcn.DispatchCore"

    const-string v2, "http disconnect failed"

    .line 277
    new-array v3, v10, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v1, v2, v4, v0, v3}, Lanet/channel/h/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_4
    :goto_2
    return v7

    :cond_5
    :try_start_7
    const-string v6, "x-am-code"

    .line 205
    invoke-static {v13, v6}, Lanet/channel/strategy/utils/d;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v12, "1000"

    .line 206
    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_c
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-nez v12, :cond_9

    :try_start_8
    const-string v1, "1007"

    .line 207
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "1008"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    const/4 v7, 0x1

    .line 208
    :cond_7
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "return code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1, v8, v3, v7}, Lanet/channel/strategy/a/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;II)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v11, :cond_8

    .line 274
    :try_start_9
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    const-string v1, "awcn.DispatchCore"

    const-string v2, "http disconnect failed"

    .line 277
    new-array v3, v10, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v1, v2, v4, v0, v3}, Lanet/channel/h/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_8
    :goto_4
    return v7

    :cond_9
    :try_start_a
    const-string v12, "x-am-sign"

    .line 213
    invoke-static {v13, v12}, Lanet/channel/strategy/utils/d;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    .line 214
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_c
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-eqz v14, :cond_b

    :try_start_b
    const-string v1, "-1001"

    const-string v2, "response sign is empty"

    .line 215
    invoke-static {v1, v2, v8, v3, v9}, Lanet/channel/strategy/a/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;II)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    if-eqz v11, :cond_a

    .line 274
    :try_start_c
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3

    goto :goto_5

    :catch_3
    move-exception v0

    const-string v1, "awcn.DispatchCore"

    const-string v2, "http disconnect failed"

    .line 277
    new-array v3, v10, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v1, v2, v4, v0, v3}, Lanet/channel/h/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_a
    :goto_5
    return v9

    .line 219
    :cond_b
    :try_start_d
    new-instance v14, Lanet/channel/strategy/utils/c;

    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v15

    invoke-direct {v14, v15}, Lanet/channel/strategy/utils/c;-><init>(Ljava/io/InputStream;)V

    const-string v15, "gzip"

    const-string v10, "Content-Encoding"

    .line 220
    invoke-static {v13, v10}, Lanet/channel/strategy/utils/d;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v15, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    invoke-static {v14, v10}, Lanet/channel/strategy/a/g;->a(Ljava/io/InputStream;Z)Ljava/lang/String;

    move-result-object v10

    .line 222
    invoke-static {v9}, Lanet/channel/h/a;->a(I)Z

    move-result v13
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_c
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    if-eqz v13, :cond_c

    :try_start_e
    const-string v13, "awcn.DispatchCore"

    const-string v15, "amdc response body"

    .line 223
    new-array v9, v7, [Ljava/lang/Object;

    const-string v16, "\nbody"

    const/16 v17, 0x0

    aput-object v16, v9, v17

    const/16 v16, 0x1

    aput-object v10, v9, v16

    invoke-static {v13, v15, v4, v9}, Lanet/channel/h/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 226
    :cond_c
    :try_start_f
    array-length v2, v2
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_c
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    move-object/from16 v18, v8

    int-to-long v7, v2

    :try_start_10
    invoke-virtual {v14}, Lanet/channel/strategy/utils/c;->a()J

    move-result-wide v13

    invoke-static {v1, v7, v8, v13, v14}, Lanet/channel/strategy/a/g;->a(Ljava/lang/String;JJ)V

    .line 228
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v1, "-1002"

    const-string v2, "read answer error"
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_b
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    move-object/from16 v7, v18

    const/4 v5, 0x1

    .line 229
    :try_start_11
    invoke-static {v1, v2, v7, v3, v5}, Lanet/channel/strategy/a/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;II)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_a
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    if-eqz v11, :cond_d

    .line 274
    :try_start_12
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_4

    goto :goto_6

    :catch_4
    move-exception v0

    const-string v1, "awcn.DispatchCore"

    const-string v2, "http disconnect failed"

    const/4 v3, 0x0

    .line 277
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v1, v2, v4, v0, v3}, Lanet/channel/h/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_d
    :goto_6
    const/4 v1, 0x1

    return v1

    :cond_e
    move-object/from16 v7, v18

    .line 235
    :try_start_13
    invoke-static {}, Lanet/channel/strategy/a/e;->b()Lanet/channel/strategy/a/d;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 237
    invoke-interface {v1, v10}, Lanet/channel/strategy/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    :cond_f
    const/4 v1, 0x0

    .line 239
    :goto_7
    invoke-virtual {v1, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_11

    const-string v2, "awcn.DispatchCore"

    const-string v5, "check ret sign failed"

    const/4 v6, 0x4

    .line 240
    new-array v6, v6, [Ljava/lang/Object;

    const-string v8, "retSign"

    const/4 v9, 0x0

    aput-object v8, v6, v9

    const/4 v8, 0x1

    aput-object v12, v6, v8

    const-string v8, "checkSign"

    const/4 v9, 0x2

    aput-object v8, v6, v9

    const/4 v8, 0x3

    aput-object v1, v6, v8

    invoke-static {v2, v5, v4, v6}, Lanet/channel/h/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "-1003"

    const-string v2, "check sign failed"

    const/4 v5, 0x1

    .line 241
    invoke-static {v1, v2, v7, v3, v5}, Lanet/channel/strategy/a/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;II)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_a
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    if-eqz v11, :cond_10

    .line 274
    :try_start_14
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_5

    goto :goto_8

    :catch_5
    move-exception v0

    const-string v1, "awcn.DispatchCore"

    const-string v2, "http disconnect failed"

    const/4 v3, 0x0

    .line 277
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v1, v2, v4, v0, v3}, Lanet/channel/h/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_10
    :goto_8
    const/4 v1, 0x1

    return v1

    .line 246
    :cond_11
    :try_start_15
    new-instance v1, Lorg/json/JSONTokener;

    invoke-direct {v1, v10}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 249
    invoke-static {}, Lanet/channel/d;->d()Lanet/channel/entity/ENV;

    move-result-object v2

    if-eq v2, v5, :cond_13

    const-string v1, "awcn.DispatchCore"

    const-string v2, "env change, do not notify result"

    const/4 v5, 0x0

    .line 250
    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v4, v6}, Lanet/channel/h/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_15
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_15} :catch_8
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_a
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    if-eqz v11, :cond_12

    .line 274
    :try_start_16
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_6

    goto :goto_9

    :catch_6
    move-exception v0

    const-string v1, "awcn.DispatchCore"

    const-string v2, "http disconnect failed"

    const/4 v3, 0x0

    .line 277
    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1, v2, v5, v0, v4}, Lanet/channel/h/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_a

    :cond_12
    :goto_9
    const/4 v3, 0x0

    :goto_a
    return v3

    .line 253
    :cond_13
    :try_start_17
    invoke-static {}, Lanet/channel/strategy/a/c;->a()Lanet/channel/strategy/a/c;

    move-result-object v2

    new-instance v5, Lanet/channel/strategy/a/b;

    const/4 v8, 0x1

    invoke-direct {v5, v8, v1}, Lanet/channel/strategy/a/b;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v2, v5}, Lanet/channel/strategy/a/c;->a(Lanet/channel/strategy/a/b;)V
    :try_end_17
    .catch Lorg/json/JSONException; {:try_start_17 .. :try_end_17} :catch_8
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_a
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    :try_start_18
    const-string v1, "request success"

    const/4 v2, 0x0

    .line 261
    invoke-static {v6, v1, v7, v3, v2}, Lanet/channel/strategy/a/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;II)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_a
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    if-eqz v11, :cond_14

    .line 274
    :try_start_19
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_7

    goto :goto_b

    :catch_7
    move-exception v0

    const-string v1, "awcn.DispatchCore"

    const-string v3, "http disconnect failed"

    .line 277
    new-array v4, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1, v3, v5, v0, v4}, Lanet/channel/h/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_14
    :goto_b
    return v2

    .line 255
    :catch_8
    :try_start_1a
    invoke-static {}, Lanet/channel/strategy/a/c;->a()Lanet/channel/strategy/a/c;

    move-result-object v1

    new-instance v2, Lanet/channel/strategy/a/b;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v2, v5, v6}, Lanet/channel/strategy/a/b;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Lanet/channel/strategy/a/c;->a(Lanet/channel/strategy/a/b;)V

    const-string v1, "awcn.DispatchCore"

    const-string v2, "resolve amdc anser failed"

    .line 256
    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v4, v6}, Lanet/channel/h/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "-1004"

    const-string v2, "resolve answer failed"

    const/4 v5, 0x1

    .line 257
    invoke-static {v1, v2, v7, v3, v5}, Lanet/channel/strategy/a/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;II)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    if-eqz v11, :cond_15

    .line 274
    :try_start_1b
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_9

    goto :goto_c

    :catch_9
    move-exception v0

    const-string v1, "awcn.DispatchCore"

    const-string v2, "http disconnect failed"

    const/4 v3, 0x0

    .line 277
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v1, v2, v4, v0, v3}, Lanet/channel/h/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_15
    :goto_c
    const/4 v1, 0x1

    return v1

    :catch_a
    move-exception v0

    goto :goto_d

    :catch_b
    move-exception v0

    move-object/from16 v7, v18

    goto :goto_d

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto :goto_11

    :catch_c
    move-exception v0

    move-object v7, v8

    :goto_d
    move-object v1, v0

    :goto_e
    move-object v6, v11

    goto :goto_f

    :catch_d
    move-exception v0

    move-object v7, v8

    move-object v1, v0

    const/4 v6, 0x0

    goto :goto_f

    :catchall_1
    move-exception v0

    move-object v1, v0

    const/4 v11, 0x0

    goto :goto_11

    :catch_e
    move-exception v0

    move-object v1, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 264
    :goto_f
    :try_start_1c
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 265
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 266
    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_16
    const-string v5, "-1000"

    const/4 v8, 0x1

    .line 268
    invoke-static {v5, v2, v7, v3, v8}, Lanet/channel/strategy/a/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;II)V

    const-string v2, "awcn.DispatchCore"

    const-string v3, "amdc request fail"

    const/4 v5, 0x0

    .line 269
    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4, v1, v7}, Lanet/channel/h/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_2

    if-eqz v6, :cond_17

    .line 274
    :try_start_1d
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_f

    goto :goto_10

    :catch_f
    move-exception v0

    const-string v1, "awcn.DispatchCore"

    const-string v2, "http disconnect failed"

    const/4 v3, 0x0

    .line 277
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v1, v2, v4, v0, v3}, Lanet/channel/h/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_17
    :goto_10
    const/4 v1, 0x1

    return v1

    :catchall_2
    move-exception v0

    move-object v1, v0

    move-object v11, v6

    :goto_11
    if-eqz v11, :cond_18

    .line 274
    :try_start_1e
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_10

    goto :goto_12

    :catch_10
    move-exception v0

    const-string v2, "awcn.DispatchCore"

    const-string v3, "http disconnect failed"

    const/4 v4, 0x0

    .line 277
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v2, v3, v5, v0, v4}, Lanet/channel/h/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 278
    :cond_18
    :goto_12
    throw v1
.end method

.method static a(Ljava/io/InputStream;Z)Ljava/lang/String;
    .locals 4

    .line 283
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 284
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x400

    invoke-direct {p0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 287
    :try_start_0
    new-instance p1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {p1, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v0, p1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p0

    goto :goto_2

    .line 289
    :cond_0
    :goto_0
    new-instance p1, Landroid/util/Base64InputStream;

    invoke-direct {p1, v0, v2}, Landroid/util/Base64InputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 290
    :try_start_1
    new-array v0, v1, [B

    .line 292
    :goto_1
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    .line 293
    invoke-virtual {p0, v0, v2, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    .line 295
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    const-string v1, "utf-8"

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p1, :cond_2

    .line 299
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :cond_2
    return-object v0

    :catchall_1
    move-exception p0

    move-object v0, p1

    goto :goto_3

    :catch_2
    move-exception p0

    move-object v0, p1

    :goto_2
    :try_start_3
    const-string p1, "awcn.DispatchCore"

    const-string v1, ""

    .line 297
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, v1, v3, p0, v2}, Lanet/channel/h/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_3

    .line 299
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    :cond_3
    return-object v3

    :goto_3
    if-eqz v0, :cond_4

    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :catch_4
    :cond_4
    throw p0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x2

    if-ne p4, v1, :cond_0

    const-string p4, "https"

    .line 136
    invoke-virtual {p4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_0

    sget-object p4, Lanet/channel/strategy/a/g;->c:Ljava/util/Random;

    invoke-virtual {p4}, Ljava/util/Random;->nextBoolean()Z

    move-result p4

    if-eqz p4, :cond_0

    const-string p0, "http"

    .line 140
    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "://"

    .line 141
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_3

    if-nez p2, :cond_2

    const-string p2, "https"

    .line 144
    invoke-virtual {p2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, 0x1bb

    const/16 p2, 0x1bb

    goto :goto_0

    :cond_1
    const/16 p0, 0x50

    const/16 p2, 0x50

    .line 146
    :cond_2
    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 148
    :cond_3
    invoke-static {}, Lanet/channel/strategy/a/a;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const-string p0, "/amdc/mobileDispatch"

    .line 150
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    new-instance p0, Ljava/util/TreeMap;

    invoke-direct {p0}, Ljava/util/TreeMap;-><init>()V

    const-string p1, "appkey"

    const-string p2, "appkey"

    .line 153
    invoke-interface {p3, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "v"

    const-string p2, "v"

    .line 154
    invoke-interface {p3, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "deviceId"

    const-string p2, "deviceId"

    .line 155
    invoke-interface {p3, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "platform"

    const-string p2, "platform"

    .line 156
    invoke-interface {p3, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p1, 0x3f

    .line 158
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, "utf-8"

    .line 159
    invoke-static {p0, p1}, Lanet/channel/strategy/utils/d;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static a(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lanet/channel/strategy/c;",
            ">;"
        }
    .end annotation

    .line 69
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 70
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->h()Z

    move-result v1

    if-nez v1, :cond_1

    .line 71
    invoke-static {}, Lanet/channel/strategy/h;->a()Lanet/channel/strategy/e;

    move-result-object v0

    invoke-static {}, Lanet/channel/strategy/a/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lanet/channel/strategy/e;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 73
    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 74
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 75
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lanet/channel/strategy/c;

    .line 76
    invoke-interface {v2}, Lanet/channel/strategy/c;->d()Lanet/channel/strategy/ConnProtocol;

    move-result-object v2

    iget-object v2, v2, Lanet/channel/strategy/ConnProtocol;->protocol:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 77
    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method static a(Ljava/lang/String;JJ)V
    .locals 2

    .line 325
    :try_start_0
    new-instance v0, Lanet/channel/d/c;

    invoke-direct {v0}, Lanet/channel/d/c;-><init>()V

    const-string v1, "amdc"

    .line 326
    iput-object v1, v0, Lanet/channel/d/c;->a:Ljava/lang/String;

    const-string v1, "http"

    .line 327
    iput-object v1, v0, Lanet/channel/d/c;->b:Ljava/lang/String;

    .line 328
    iput-object p0, v0, Lanet/channel/d/c;->c:Ljava/lang/String;

    .line 329
    iput-wide p1, v0, Lanet/channel/d/c;->d:J

    .line 330
    iput-wide p3, v0, Lanet/channel/d/c;->e:J

    .line 331
    invoke-static {}, Lanet/channel/d/d;->a()Lanet/channel/d/a;

    move-result-object p0

    invoke-interface {p0, v0}, Lanet/channel/d/a;->a(Lanet/channel/d/c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "awcn.DispatchCore"

    const-string p2, "commit flow info failed!"

    const/4 p3, 0x0

    const/4 p4, 0x0

    .line 333
    new-array p4, p4, [Ljava/lang/Object;

    invoke-static {p1, p2, p3, p0, p4}, Lanet/channel/h/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;II)V
    .locals 1

    const/4 v0, 0x1

    if-ne p4, v0, :cond_0

    const/4 p4, 0x2

    if-ne p3, p4, :cond_2

    .line 306
    :cond_0
    invoke-static {}, Lanet/channel/d;->b()Z

    move-result p4

    if-eqz p4, :cond_2

    .line 308
    :try_start_0
    new-instance p4, Lanet/channel/statist/AmdcStatistic;

    invoke-direct {p4}, Lanet/channel/statist/AmdcStatistic;-><init>()V

    .line 309
    iput-object p0, p4, Lanet/channel/statist/AmdcStatistic;->errorCode:Ljava/lang/String;

    .line 310
    iput-object p1, p4, Lanet/channel/statist/AmdcStatistic;->errorMsg:Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 312
    invoke-virtual {p2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p4, Lanet/channel/statist/AmdcStatistic;->host:Ljava/lang/String;

    .line 313
    invoke-virtual {p2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p4, Lanet/channel/statist/AmdcStatistic;->url:Ljava/lang/String;

    .line 315
    :cond_1
    iput p3, p4, Lanet/channel/statist/AmdcStatistic;->retryTimes:I

    .line 316
    invoke-static {}, Lanet/channel/b/a;->a()Lanet/channel/b/b;

    move-result-object p0

    invoke-interface {p0, p4}, Lanet/channel/b/b;->a(Lanet/channel/statist/StatObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method

.method public static a(Ljava/util/Map;)V
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    const-string p0, "awcn.DispatchCore"

    const-string v2, "amdc request\'s parameter invalid!"

    .line 87
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v2, v0, v1}, Lanet/channel/h/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 91
    :cond_0
    invoke-static {}, Lanet/channel/strategy/h;->a()Lanet/channel/strategy/e;

    move-result-object v2

    invoke-static {}, Lanet/channel/strategy/a/a;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, "http"

    invoke-interface {v2, v3, v4}, Lanet/channel/strategy/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 92
    invoke-static {v2}, Lanet/channel/strategy/a/g;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x3

    if-ge v4, v5, :cond_8

    .line 95
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    const/4 v6, 0x2

    if-eq v4, v6, :cond_3

    .line 100
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 101
    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lanet/channel/strategy/c;

    goto :goto_1

    :cond_1
    move-object v7, v0

    :goto_1
    if-eqz v7, :cond_2

    .line 105
    invoke-interface {v7}, Lanet/channel/strategy/c;->a()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7}, Lanet/channel/strategy/c;->c()I

    move-result v9

    invoke-static {v2, v8, v9, v5, v4}, Lanet/channel/strategy/a/g;->a(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;I)Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    .line 107
    :cond_2
    invoke-static {v2, v0, v1, v5, v4}, Lanet/channel/strategy/a/g;->a(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;I)Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    .line 110
    :cond_3
    invoke-static {}, Lanet/channel/strategy/a/a;->b()[Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 111
    array-length v8, v7

    if-lez v8, :cond_4

    .line 112
    sget-object v8, Lanet/channel/strategy/a/g;->c:Ljava/util/Random;

    array-length v9, v7

    invoke-virtual {v8, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v8

    aget-object v7, v7, v8

    invoke-static {v2, v7, v1, v5, v4}, Lanet/channel/strategy/a/g;->a(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;I)Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    .line 114
    :cond_4
    invoke-static {v2, v0, v1, v5, v4}, Lanet/channel/strategy/a/g;->a(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;I)Ljava/lang/String;

    move-result-object v8

    :goto_2
    move-object v7, v0

    .line 118
    :goto_3
    invoke-static {v8, v5, v4}, Lanet/channel/strategy/a/g;->a(Ljava/lang/String;Ljava/util/Map;I)I

    move-result v5

    if-eqz v7, :cond_6

    .line 121
    new-instance v8, Lanet/channel/strategy/a;

    invoke-direct {v8}, Lanet/channel/strategy/a;-><init>()V

    if-nez v5, :cond_5

    const/4 v9, 0x1

    goto :goto_4

    :cond_5
    const/4 v9, 0x0

    .line 122
    :goto_4
    iput-boolean v9, v8, Lanet/channel/strategy/a;->a:Z

    .line 123
    invoke-static {}, Lanet/channel/strategy/h;->a()Lanet/channel/strategy/e;

    move-result-object v9

    invoke-static {}, Lanet/channel/strategy/a/a;->a()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10, v7, v8}, Lanet/channel/strategy/e;->a(Ljava/lang/String;Lanet/channel/strategy/c;Lanet/channel/strategy/a;)V

    :cond_6
    if-eqz v5, :cond_8

    if-ne v5, v6, :cond_7

    goto :goto_5

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_8
    :goto_5
    return-void
.end method
