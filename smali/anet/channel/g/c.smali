.class public Lanet/channel/g/c;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanet/channel/g/c$a;
    }
.end annotation


# direct methods
.method public static a(Lanet/channel/request/d;Lanet/channel/f;)Lanet/channel/g/c$a;
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 74
    new-instance v3, Lanet/channel/g/c$a;

    invoke-direct {v3}, Lanet/channel/g/c$a;-><init>()V

    const/4 v4, 0x0

    if-eqz v1, :cond_f

    .line 75
    invoke-virtual/range {p0 .. p0}, Lanet/channel/request/d;->d()Ljava/net/URL;

    move-result-object v5

    if-nez v5, :cond_0

    goto/16 :goto_11

    .line 85
    :cond_0
    iget-object v5, v1, Lanet/channel/request/d;->a:Lanet/channel/statist/RequestStatistic;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v8, v1, Lanet/channel/request/d;->a:Lanet/channel/statist/RequestStatistic;

    iget-wide v8, v8, Lanet/channel/statist/RequestStatistic;->start:J

    sub-long v10, v6, v8

    iput-wide v10, v5, Lanet/channel/statist/RequestStatistic;->sendBeforeTime:J

    move-object v5, v4

    .line 87
    :goto_0
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->g()Z

    move-result v6

    if-nez v6, :cond_1

    const/16 v5, -0xc8

    .line 88
    invoke-static {v1, v3, v2, v5, v4}, Lanet/channel/g/c;->a(Lanet/channel/request/d;Lanet/channel/g/c$a;Lanet/channel/f;ILjava/lang/Throwable;)V

    goto/16 :goto_e

    :cond_1
    const/16 v6, -0x192

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 91
    :try_start_0
    invoke-static {v8}, Lanet/channel/h/a;->a(I)Z

    move-result v11

    if-eqz v11, :cond_2

    const-string v11, "awcn.HttpConnector"

    const-string v12, ""

    .line 92
    invoke-virtual {v1}, Lanet/channel/request/d;->o()Ljava/lang/String;

    move-result-object v13

    new-array v14, v8, [Ljava/lang/Object;

    const-string v15, "request URL"

    aput-object v15, v14, v10

    invoke-virtual {v1}, Lanet/channel/request/d;->d()Ljava/net/URL;

    move-result-object v15

    invoke-virtual {v15}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v14, v9

    invoke-static {v11, v12, v13, v14}, Lanet/channel/h/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v11, "awcn.HttpConnector"

    const-string v12, ""

    .line 93
    invoke-virtual {v1}, Lanet/channel/request/d;->o()Ljava/lang/String;

    move-result-object v13

    new-array v14, v8, [Ljava/lang/Object;

    const-string v15, "request Method"

    aput-object v15, v14, v10

    invoke-virtual {v1}, Lanet/channel/request/d;->g()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v14, v9

    invoke-static {v11, v12, v13, v14}, Lanet/channel/h/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v11, "awcn.HttpConnector"

    const-string v12, ""

    .line 94
    invoke-virtual {v1}, Lanet/channel/request/d;->o()Ljava/lang/String;

    move-result-object v13

    new-array v14, v8, [Ljava/lang/Object;

    const-string v15, "request headers"

    aput-object v15, v14, v10

    invoke-virtual {v1}, Lanet/channel/request/d;->h()Ljava/util/Map;

    move-result-object v15

    aput-object v15, v14, v9

    invoke-static {v11, v12, v13, v14}, Lanet/channel/h/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    :cond_2
    invoke-static {v1}, Lanet/channel/g/c;->a(Lanet/channel/request/d;)Ljava/net/HttpURLConnection;

    move-result-object v11
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_11
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_10
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_f
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_e
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_a
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v11, :cond_a

    .line 99
    :try_start_1
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->connect()V

    .line 100
    invoke-static {v11, v1}, Lanet/channel/g/c;->a(Ljava/net/HttpURLConnection;Lanet/channel/request/d;)V

    .line 101
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    iput v5, v3, Lanet/channel/g/c$a;->a:I

    .line 102
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v5

    invoke-static {v5}, Lanet/channel/h/i;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    iput-object v5, v3, Lanet/channel/g/c$a;->c:Ljava/util/Map;

    const-string v5, "awcn.HttpConnector"

    const-string v12, ""

    .line 103
    invoke-virtual {v1}, Lanet/channel/request/d;->o()Ljava/lang/String;

    move-result-object v13

    new-array v14, v8, [Ljava/lang/Object;

    const-string v15, "response code"

    aput-object v15, v14, v10

    iget v15, v3, Lanet/channel/g/c$a;->a:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v14, v9

    invoke-static {v5, v12, v13, v14}, Lanet/channel/h/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v5, "awcn.HttpConnector"

    const-string v12, ""

    .line 104
    invoke-virtual {v1}, Lanet/channel/request/d;->o()Ljava/lang/String;

    move-result-object v13

    new-array v14, v8, [Ljava/lang/Object;

    const-string v15, "response headers"

    aput-object v15, v14, v10

    iget-object v15, v3, Lanet/channel/g/c$a;->c:Ljava/util/Map;

    aput-object v15, v14, v9

    invoke-static {v5, v12, v13, v14}, Lanet/channel/h/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    iget v5, v3, Lanet/channel/g/c$a;->a:I

    invoke-static {v1, v5}, Lanet/channel/h/i;->a(Lanet/channel/request/d;I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 107
    iget-object v5, v3, Lanet/channel/g/c$a;->c:Ljava/util/Map;

    const-string v12, "Location"

    invoke-static {v5, v12}, Lanet/channel/h/i;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 109
    invoke-static {v5}, Lanet/channel/h/k;->a(Ljava/lang/String;)Lanet/channel/h/k;

    move-result-object v12

    if-eqz v12, :cond_4

    .line 111
    invoke-virtual {v1}, Lanet/channel/request/d;->a()Lanet/channel/request/d$a;

    move-result-object v5

    invoke-virtual {v5, v12}, Lanet/channel/request/d$a;->a(Lanet/channel/h/k;)Lanet/channel/request/d$a;

    move-result-object v5

    invoke-virtual {v1}, Lanet/channel/request/d;->e()I

    move-result v12

    add-int/2addr v12, v9

    invoke-virtual {v5, v12}, Lanet/channel/request/d$a;->a(I)Lanet/channel/request/d$a;

    move-result-object v5

    invoke-virtual {v5}, Lanet/channel/request/d$a;->a()Lanet/channel/request/d;

    move-result-object v5
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/net/ConnectException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v11, :cond_3

    .line 196
    :try_start_2
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "awcn.HttpConnector"

    const-string v6, "http disconnect"

    .line 199
    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v1, v6, v4, v0, v7}, Lanet/channel/h/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_3
    :goto_1
    move-object v1, v5

    move-object v5, v11

    goto/16 :goto_0

    :cond_4
    :try_start_3
    const-string v12, "awcn.HttpConnector"

    const-string v13, "redirect url is invalid!"

    .line 117
    invoke-virtual {v1}, Lanet/channel/request/d;->o()Ljava/lang/String;

    move-result-object v14

    new-array v15, v8, [Ljava/lang/Object;

    const-string v16, "redirect url"

    aput-object v16, v15, v10

    aput-object v5, v15, v9

    invoke-static {v12, v13, v14, v15}, Lanet/channel/h/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    :cond_5
    invoke-virtual {v1}, Lanet/channel/request/d;->g()Ljava/lang/String;

    move-result-object v5

    const-string v12, "HEAD"

    if-eq v5, v12, :cond_8

    iget v5, v3, Lanet/channel/g/c$a;->a:I

    const/16 v12, 0x130

    if-eq v5, v12, :cond_8

    iget v5, v3, Lanet/channel/g/c$a;->a:I

    const/16 v12, 0xcc

    if-eq v5, v12, :cond_8

    iget v5, v3, Lanet/channel/g/c$a;->a:I

    const/16 v12, 0x64

    if-lt v5, v12, :cond_6

    iget v5, v3, Lanet/channel/g/c$a;->a:I

    const/16 v12, 0xc8

    if-ge v5, v12, :cond_6

    goto :goto_2

    .line 131
    :cond_6
    iget-object v5, v3, Lanet/channel/g/c$a;->c:Ljava/util/Map;

    invoke-static {v5}, Lanet/channel/h/i;->b(Ljava/util/Map;)Z

    move-result v5

    if-nez v5, :cond_7

    if-eqz v2, :cond_7

    .line 133
    iget v5, v3, Lanet/channel/g/c$a;->a:I

    iget-object v12, v3, Lanet/channel/g/c$a;->c:Ljava/util/Map;

    invoke-interface {v2, v5, v12}, Lanet/channel/f;->a(ILjava/util/Map;)V

    .line 136
    :cond_7
    invoke-static {v11, v1, v3, v2}, Lanet/channel/g/c;->a(Ljava/net/HttpURLConnection;Lanet/channel/request/d;Lanet/channel/g/c$a;Lanet/channel/f;)V

    goto :goto_3

    :cond_8
    :goto_2
    if-eqz v2, :cond_9

    .line 128
    iget v5, v3, Lanet/channel/g/c$a;->a:I

    iget-object v12, v3, Lanet/channel/g/c$a;->c:Ljava/util/Map;

    invoke-interface {v2, v5, v12}, Lanet/channel/f;->a(ILjava/util/Map;)V

    .line 139
    :cond_9
    :goto_3
    iget-object v5, v1, Lanet/channel/request/d;->a:Lanet/channel/statist/RequestStatistic;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    iget-object v14, v1, Lanet/channel/request/d;->a:Lanet/channel/statist/RequestStatistic;

    iget-wide v14, v14, Lanet/channel/statist/RequestStatistic;->start:J

    const/16 v16, 0x0

    sub-long v7, v12, v14

    iput-wide v7, v5, Lanet/channel/statist/RequestStatistic;->oneWayTime:J

    .line 140
    iget-object v5, v1, Lanet/channel/request/d;->a:Lanet/channel/statist/RequestStatistic;

    iget v7, v3, Lanet/channel/g/c$a;->a:I

    iput v7, v5, Lanet/channel/statist/RequestStatistic;->statusCode:I

    .line 141
    iget-object v5, v1, Lanet/channel/request/d;->a:Lanet/channel/statist/RequestStatistic;

    iput-boolean v9, v5, Lanet/channel/statist/RequestStatistic;->ret:Z

    if-eqz v2, :cond_b

    .line 144
    iget v5, v3, Lanet/channel/g/c$a;->a:I

    const-string v7, "SUCCESS"

    iget-object v8, v1, Lanet/channel/request/d;->a:Lanet/channel/statist/RequestStatistic;

    invoke-interface {v2, v5, v7, v8}, Lanet/channel/f;->a(ILjava/lang/String;Lanet/channel/statist/RequestStatistic;)V

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v0

    goto/16 :goto_7

    :catch_3
    move-exception v0

    goto/16 :goto_8

    :catch_4
    move-exception v0

    goto/16 :goto_9

    :catch_5
    move-exception v0

    goto/16 :goto_a

    :catch_6
    move-exception v0

    goto/16 :goto_b

    :catch_7
    move-exception v0

    goto/16 :goto_c

    :catch_8
    move-exception v0

    goto/16 :goto_d

    :cond_a
    const/16 v5, -0x197

    .line 147
    invoke-static {v1, v3, v2, v5, v4}, Lanet/channel/g/c;->a(Lanet/channel/request/d;Lanet/channel/g/c$a;Lanet/channel/f;ILjava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/net/ConnectException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljavax/net/ssl/SSLException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_b
    :goto_4
    if-eqz v11, :cond_d

    .line 196
    :try_start_4
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_9

    goto/16 :goto_e

    :catch_9
    move-exception v0

    const-string v1, "awcn.HttpConnector"

    const-string v2, "http disconnect"

    .line 199
    new-array v5, v10, [Ljava/lang/Object;

    invoke-static {v1, v2, v4, v0, v5}, Lanet/channel/h/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_e

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object v11, v5

    goto/16 :goto_f

    :catch_a
    move-exception v0

    move-object v11, v5

    :goto_5
    move-object v5, v0

    .line 184
    :try_start_5
    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_c

    const-string v7, "not verified"

    .line 185
    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 186
    sget-object v6, Lanet/channel/strategy/q$a;->a:Lanet/channel/strategy/q;

    invoke-virtual {v1}, Lanet/channel/request/d;->f()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lanet/channel/strategy/q;->b(Ljava/lang/String;)V

    const/16 v6, -0x193

    .line 187
    invoke-static {v1, v3, v2, v6, v5}, Lanet/channel/g/c;->a(Lanet/channel/request/d;Lanet/channel/g/c$a;Lanet/channel/f;ILjava/lang/Throwable;)V

    goto :goto_6

    :cond_c
    const/16 v6, -0x65

    .line 189
    invoke-static {v1, v3, v2, v6, v5}, Lanet/channel/g/c;->a(Lanet/channel/request/d;Lanet/channel/g/c$a;Lanet/channel/f;ILjava/lang/Throwable;)V

    :goto_6
    const-string v2, "awcn.HttpConnector"

    const-string v6, "HTTP Connect Exception"

    .line 191
    invoke-virtual {v1}, Lanet/channel/request/d;->o()Ljava/lang/String;

    move-result-object v1

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v2, v6, v1, v5, v7}, Lanet/channel/h/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v11, :cond_d

    .line 196
    :try_start_6
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_9

    goto/16 :goto_e

    :catch_b
    move-exception v0

    move-object v11, v5

    :goto_7
    move-object v5, v0

    const/16 v6, -0xcc

    .line 180
    :try_start_7
    invoke-static {v1, v3, v2, v6, v5}, Lanet/channel/g/c;->a(Lanet/channel/request/d;Lanet/channel/g/c$a;Lanet/channel/f;ILjava/lang/Throwable;)V

    const-string v2, "awcn.HttpConnector"

    const-string v6, "HTTP Request Cancel"

    .line 181
    invoke-virtual {v1}, Lanet/channel/request/d;->o()Ljava/lang/String;

    move-result-object v1

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v2, v6, v1, v5, v7}, Lanet/channel/h/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v11, :cond_d

    .line 196
    :try_start_8
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_9

    goto/16 :goto_e

    :catch_c
    move-exception v0

    move-object v11, v5

    :goto_8
    move-object v5, v0

    .line 175
    :try_start_9
    sget-object v7, Lanet/channel/strategy/q$a;->a:Lanet/channel/strategy/q;

    invoke-virtual {v1}, Lanet/channel/request/d;->f()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lanet/channel/strategy/q;->b(Ljava/lang/String;)V

    .line 176
    invoke-static {v1, v3, v2, v6, v5}, Lanet/channel/g/c;->a(Lanet/channel/request/d;Lanet/channel/g/c$a;Lanet/channel/f;ILjava/lang/Throwable;)V

    const-string v2, "awcn.HttpConnector"

    const-string v6, "connect SSLException"

    .line 177
    invoke-virtual {v1}, Lanet/channel/request/d;->o()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const-string v12, "host"

    aput-object v12, v8, v10

    invoke-virtual {v1}, Lanet/channel/request/d;->f()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v9

    const/4 v1, 0x2

    aput-object v5, v8, v1

    invoke-static {v2, v6, v7, v8}, Lanet/channel/h/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-eqz v11, :cond_d

    .line 196
    :try_start_a
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_9

    goto/16 :goto_e

    :catch_d
    move-exception v0

    move-object v11, v5

    :goto_9
    move-object v5, v0

    .line 170
    :try_start_b
    sget-object v7, Lanet/channel/strategy/q$a;->a:Lanet/channel/strategy/q;

    invoke-virtual {v1}, Lanet/channel/request/d;->f()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lanet/channel/strategy/q;->b(Ljava/lang/String;)V

    .line 171
    invoke-static {v1, v3, v2, v6, v5}, Lanet/channel/g/c;->a(Lanet/channel/request/d;Lanet/channel/g/c$a;Lanet/channel/f;ILjava/lang/Throwable;)V

    const-string v2, "awcn.HttpConnector"

    const-string v6, "HTTP Connect SSLHandshakeException"

    .line 172
    invoke-virtual {v1}, Lanet/channel/request/d;->o()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const-string v12, "host"

    aput-object v12, v8, v10

    invoke-virtual {v1}, Lanet/channel/request/d;->f()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v9

    const/4 v1, 0x2

    aput-object v5, v8, v1

    invoke-static {v2, v6, v7, v8}, Lanet/channel/h/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    if-eqz v11, :cond_d

    .line 196
    :try_start_c
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_9

    goto/16 :goto_e

    :catch_e
    move-exception v0

    move-object v11, v5

    :goto_a
    move-object v5, v0

    const/16 v6, -0x196

    .line 165
    :try_start_d
    invoke-static {v1, v3, v2, v6, v5}, Lanet/channel/g/c;->a(Lanet/channel/request/d;Lanet/channel/g/c$a;Lanet/channel/f;ILjava/lang/Throwable;)V

    const-string v2, "awcn.HttpConnector"

    const-string v6, "HTTP Connect Exception"

    .line 166
    invoke-virtual {v1}, Lanet/channel/request/d;->o()Ljava/lang/String;

    move-result-object v1

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v2, v6, v1, v5, v7}, Lanet/channel/h/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 167
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->k()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    if-eqz v11, :cond_d

    .line 196
    :try_start_e
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_9

    goto :goto_e

    :catch_f
    move-exception v0

    move-object v11, v5

    :goto_b
    move-object v5, v0

    const/16 v6, -0x190

    .line 160
    :try_start_f
    invoke-static {v1, v3, v2, v6, v5}, Lanet/channel/g/c;->a(Lanet/channel/request/d;Lanet/channel/g/c$a;Lanet/channel/f;ILjava/lang/Throwable;)V

    const-string v2, "awcn.HttpConnector"

    const-string v6, "HTTP Connect Timeout"

    .line 161
    invoke-virtual {v1}, Lanet/channel/request/d;->o()Ljava/lang/String;

    move-result-object v1

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v2, v6, v1, v5, v7}, Lanet/channel/h/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 162
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->k()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    if-eqz v11, :cond_d

    .line 196
    :try_start_10
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_9

    goto :goto_e

    :catch_10
    move-exception v0

    move-object v11, v5

    :goto_c
    move-object v5, v0

    const/16 v6, -0x191

    .line 155
    :try_start_11
    invoke-static {v1, v3, v2, v6, v5}, Lanet/channel/g/c;->a(Lanet/channel/request/d;Lanet/channel/g/c$a;Lanet/channel/f;ILjava/lang/Throwable;)V

    const-string v2, "awcn.HttpConnector"

    const-string v6, "HTTP Socket Timeout"

    .line 156
    invoke-virtual {v1}, Lanet/channel/request/d;->o()Ljava/lang/String;

    move-result-object v1

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v2, v6, v1, v5, v7}, Lanet/channel/h/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 157
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->k()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    if-eqz v11, :cond_d

    .line 196
    :try_start_12
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_9

    goto :goto_e

    :catch_11
    move-exception v0

    move-object v11, v5

    :goto_d
    move-object v5, v0

    const/16 v6, -0x195

    .line 150
    :try_start_13
    invoke-static {v1, v3, v2, v6, v5}, Lanet/channel/g/c;->a(Lanet/channel/request/d;Lanet/channel/g/c$a;Lanet/channel/f;ILjava/lang/Throwable;)V

    const-string v2, "awcn.HttpConnector"

    const-string v6, "Unknown Host Exception"

    .line 151
    invoke-virtual {v1}, Lanet/channel/request/d;->o()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const-string v12, "host"

    aput-object v12, v8, v10

    invoke-virtual {v1}, Lanet/channel/request/d;->f()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v9

    const/4 v1, 0x2

    aput-object v5, v8, v1

    invoke-static {v2, v6, v7, v8}, Lanet/channel/h/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 152
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->k()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    if-eqz v11, :cond_d

    .line 196
    :try_start_14
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_9

    :cond_d
    :goto_e
    return-object v3

    :catchall_1
    move-exception v0

    move-object v1, v0

    :goto_f
    if-eqz v11, :cond_e

    :try_start_15
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_12

    goto :goto_10

    :catch_12
    move-exception v0

    const-string v2, "awcn.HttpConnector"

    const-string v3, "http disconnect"

    .line 199
    new-array v5, v10, [Ljava/lang/Object;

    invoke-static {v2, v3, v4, v0, v5}, Lanet/channel/h/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 200
    :cond_e
    :goto_10
    throw v1

    :cond_f
    :goto_11
    if-eqz v2, :cond_10

    const/16 v1, -0x66

    .line 77
    invoke-static {v1}, Lanet/channel/h/e;->a(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lanet/channel/statist/RequestStatistic;

    invoke-direct {v6, v4, v4}, Lanet/channel/statist/RequestStatistic;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v1, v5, v6}, Lanet/channel/f;->a(ILjava/lang/String;Lanet/channel/statist/RequestStatistic;)V

    :cond_10
    return-object v3
.end method

.method private static a(Lanet/channel/request/d;)Ljava/net/HttpURLConnection;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 233
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->j()Landroid/util/Pair;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 236
    new-instance v2, Ljava/net/Proxy;

    sget-object v3, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v4, Ljava/net/InetSocketAddress;

    iget-object v5, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v4, v5, v0}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v2, v3, v4}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 240
    :goto_0
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->a()Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    move-result-object v0

    invoke-virtual {v0}, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->isMobile()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lanet/channel/d;->i()Lanet/channel/h/l;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 242
    iget-object v2, v0, Lanet/channel/h/l;->a:Ljava/net/Proxy;

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 247
    :cond_2
    :goto_1
    :try_start_0
    invoke-virtual {p0}, Lanet/channel/request/d;->d()Ljava/net/URL;

    move-result-object v3

    if-eqz v2, :cond_3

    .line 249
    invoke-virtual {v3, v2}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    :goto_2
    move-object v1, v2

    goto :goto_3

    .line 251
    :cond_3
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    goto :goto_2

    .line 254
    :goto_3
    invoke-virtual {p0}, Lanet/channel/request/d;->q()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 255
    invoke-virtual {p0}, Lanet/channel/request/d;->p()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 256
    invoke-virtual {p0}, Lanet/channel/request/d;->g()Ljava/lang/String;

    move-result-object v2

    .line 257
    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 258
    invoke-virtual {p0}, Lanet/channel/request/d;->n()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    .line 259
    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 262
    :cond_4
    invoke-virtual {p0}, Lanet/channel/request/d;->h()Ljava/util/Map;

    move-result-object v2

    .line 265
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 266
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v6, v5}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    const-string v4, "Host"

    .line 270
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_6

    .line 272
    invoke-virtual {p0}, Lanet/channel/request/d;->f()Ljava/lang/String;

    move-result-object v4

    :cond_6
    const-string v5, "Host"

    .line 274
    invoke-virtual {v1, v5, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->c()Ljava/lang/String;

    move-result-object v5

    const-string v6, "cmwap"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const-string v5, "x-online-host"

    .line 276
    invoke-virtual {v1, v5, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    const-string v5, "Accept-Encoding"

    .line 280
    invoke-interface {v2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "Accept-Encoding"

    const-string v5, "gzip"

    .line 281
    invoke-virtual {v1, v2, v5}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    if-eqz v0, :cond_9

    const-string v2, "Authorization"

    .line 286
    invoke-virtual {v0}, Lanet/channel/h/l;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    :cond_9
    invoke-virtual {v3}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const-string v2, "https"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 290
    invoke-static {v1, p0, v4}, Lanet/channel/g/c;->a(Ljava/net/HttpURLConnection;Lanet/channel/request/d;Ljava/lang/String;)V

    :cond_a
    const/4 p0, 0x0

    .line 293
    invoke-virtual {v1, p0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v1
.end method

.method private static a(Lanet/channel/request/d;Lanet/channel/g/c$a;Lanet/channel/f;ILjava/lang/Throwable;)V
    .locals 7

    .line 210
    invoke-static {p3}, Lanet/channel/h/e;->a(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "awcn.HttpConnector"

    const-string v2, "onException"

    .line 211
    invoke-virtual {p0}, Lanet/channel/request/d;->o()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x8

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "errorCode"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const-string v5, "errMsg"

    const/4 v6, 0x2

    aput-object v5, v4, v6

    const/4 v5, 0x3

    aput-object v0, v4, v5

    const-string v5, "url"

    const/4 v6, 0x4

    aput-object v5, v4, v6

    invoke-virtual {p0}, Lanet/channel/request/d;->c()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x5

    aput-object v5, v4, v6

    const-string v5, "host"

    const/4 v6, 0x6

    aput-object v5, v4, v6

    invoke-virtual {p0}, Lanet/channel/request/d;->f()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x7

    aput-object v5, v4, v6

    invoke-static {v1, v2, v3, v4}, Lanet/channel/h/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 216
    iput p3, p1, Lanet/channel/g/c$a;->a:I

    .line 219
    :cond_0
    iget-object p1, p0, Lanet/channel/request/d;->a:Lanet/channel/statist/RequestStatistic;

    iput p3, p1, Lanet/channel/statist/RequestStatistic;->statusCode:I

    .line 220
    iget-object p1, p0, Lanet/channel/request/d;->a:Lanet/channel/statist/RequestStatistic;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lanet/channel/request/d;->a:Lanet/channel/statist/RequestStatistic;

    iget-wide v3, v3, Lanet/channel/statist/RequestStatistic;->start:J

    sub-long v5, v1, v3

    iput-wide v5, p1, Lanet/channel/statist/RequestStatistic;->oneWayTime:J

    if-eqz p2, :cond_1

    .line 223
    iget-object p1, p0, Lanet/channel/request/d;->a:Lanet/channel/statist/RequestStatistic;

    invoke-interface {p2, p3, v0, p1}, Lanet/channel/f;->a(ILjava/lang/String;Lanet/channel/statist/RequestStatistic;)V

    :cond_1
    const/16 p1, -0xcc

    if-eq p3, p1, :cond_2

    .line 227
    new-instance p1, Lanet/channel/statist/ExceptionStatistic;

    iget-object p0, p0, Lanet/channel/request/d;->a:Lanet/channel/statist/RequestStatistic;

    invoke-direct {p1, p3, v0, p0, p4}, Lanet/channel/statist/ExceptionStatistic;-><init>(ILjava/lang/String;Lanet/channel/statist/RequestStatistic;Ljava/lang/Throwable;)V

    .line 228
    invoke-static {}, Lanet/channel/b/a;->a()Lanet/channel/b/b;

    move-result-object p0

    invoke-interface {p0, p1}, Lanet/channel/b/b;->a(Lanet/channel/statist/StatObject;)V

    :cond_2
    return-void
.end method

.method private static a(Ljava/net/HttpURLConnection;Lanet/channel/request/d;)V
    .locals 9

    .line 330
    invoke-virtual {p1}, Lanet/channel/request/d;->n()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 331
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 335
    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 336
    :try_start_1
    invoke-virtual {p1, p0}, Lanet/channel/request/d;->a(Ljava/io/OutputStream;)I

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_1

    .line 342
    :try_start_2
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    .line 343
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    const-string v4, "awcn.HttpConnector"

    const-string v5, "postData"

    .line 345
    invoke-virtual {p1}, Lanet/channel/request/d;->o()Ljava/lang/String;

    move-result-object v6

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v4, v5, v6, p0, v3}, Lanet/channel/h/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v2, p0

    goto :goto_3

    :catch_1
    move-exception v2

    move-object v8, v2

    move-object v2, p0

    move-object p0, v8

    goto :goto_0

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception p0

    :goto_0
    :try_start_3
    const-string v4, "awcn.HttpConnector"

    const-string v5, "postData error"

    .line 338
    invoke-virtual {p1}, Lanet/channel/request/d;->o()Ljava/lang/String;

    move-result-object v6

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v4, v5, v6, p0, v7}, Lanet/channel/h/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_0

    .line 342
    :try_start_4
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 343
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    :catch_3
    move-exception p0

    const-string v2, "awcn.HttpConnector"

    const-string v4, "postData"

    .line 345
    invoke-virtual {p1}, Lanet/channel/request/d;->o()Ljava/lang/String;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v2, v4, v5, p0, v6}, Lanet/channel/h/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    :goto_1
    const/4 v2, 0x0

    .line 349
    :cond_1
    :goto_2
    iget-object p0, p1, Lanet/channel/request/d;->a:Lanet/channel/statist/RequestStatistic;

    int-to-long v2, v2

    iput-wide v2, p0, Lanet/channel/statist/RequestStatistic;->sendDataSize:J

    .line 350
    iget-object p0, p1, Lanet/channel/request/d;->a:Lanet/channel/statist/RequestStatistic;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v4, v2, v0

    iput-wide v4, p0, Lanet/channel/statist/RequestStatistic;->sendDataTime:J

    goto :goto_5

    :goto_3
    if-eqz v2, :cond_2

    .line 342
    :try_start_5
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 343
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception p0

    const-string v1, "awcn.HttpConnector"

    const-string v2, "postData"

    .line 345
    invoke-virtual {p1}, Lanet/channel/request/d;->o()Ljava/lang/String;

    move-result-object p1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, p1, p0, v3}, Lanet/channel/h/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 346
    :cond_2
    :goto_4
    throw v0

    :cond_3
    :goto_5
    return-void
.end method

.method private static a(Ljava/net/HttpURLConnection;Lanet/channel/request/d;Lanet/channel/g/c$a;Lanet/channel/f;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/concurrent/CancellationException;
        }
    .end annotation

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 358
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v6, v0

    .line 361
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v7, v0

    const-string v8, "awcn.HttpConnector"

    .line 363
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "get error stream failed."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v10

    invoke-virtual {v10}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lanet/channel/request/d;->o()Ljava/lang/String;

    move-result-object v10

    new-array v11, v4, [Ljava/lang/Object;

    invoke-static {v8, v9, v10, v7, v11}, Lanet/channel/h/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    move-object v7, v5

    :goto_0
    const-string v8, "awcn.HttpConnector"

    .line 365
    invoke-virtual/range {p0 .. p0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v9

    invoke-virtual {v9}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v10, v4, [Ljava/lang/Object;

    invoke-static {v8, v9, v5, v6, v10}, Lanet/channel/h/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    move-object v6, v7

    :goto_1
    if-nez v6, :cond_0

    const/16 v4, -0x194

    .line 369
    invoke-static {v1, v2, v3, v4, v5}, Lanet/channel/g/c;->a(Lanet/channel/request/d;Lanet/channel/g/c$a;Lanet/channel/f;ILjava/lang/Throwable;)V

    return-void

    .line 373
    :cond_0
    iget-object v7, v2, Lanet/channel/g/c$a;->c:Ljava/util/Map;

    invoke-static {v7}, Lanet/channel/h/i;->c(Ljava/util/Map;)I

    move-result v7

    .line 374
    iget-object v8, v2, Lanet/channel/g/c$a;->c:Ljava/util/Map;

    invoke-static {v8}, Lanet/channel/h/i;->b(Ljava/util/Map;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 377
    iget-object v9, v2, Lanet/channel/g/c$a;->c:Ljava/util/Map;

    const-string v10, "Content-Encoding"

    invoke-interface {v9, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz v3, :cond_3

    if-eqz v8, :cond_2

    const/high16 v9, 0x100000

    if-gt v7, v9, :cond_2

    goto :goto_2

    :cond_2
    move-object v9, v5

    goto :goto_3

    .line 382
    :cond_3
    :goto_2
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    if-gtz v7, :cond_4

    const/16 v7, 0x400

    :cond_4
    invoke-direct {v9, v7}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 386
    :goto_3
    :try_start_2
    new-instance v7, Lanet/channel/strategy/utils/c;

    invoke-direct {v7, v6}, Lanet/channel/strategy/utils/c;-><init>(Ljava/io/InputStream;)V

    if-eqz v8, :cond_5

    .line 388
    new-instance v10, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v10, v7}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    move-object v6, v10

    goto :goto_4

    :cond_5
    move-object v6, v7

    :goto_4
    move-object v10, v5

    .line 396
    :goto_5
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v11, :cond_6

    .line 397
    :try_start_4
    new-instance v1, Ljava/util/concurrent/CancellationException;

    const-string v2, "task cancelled"

    invoke-direct {v1, v2}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    if-nez v10, :cond_7

    .line 400
    sget-object v10, Lanet/channel/c/b$a;->a:Lanet/channel/c/b;

    const/16 v11, 0x800

    invoke-virtual {v10, v11}, Lanet/channel/c/b;->a(I)Lanet/channel/c/a;

    move-result-object v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 402
    :cond_7
    :try_start_5
    invoke-virtual {v10, v6}, Lanet/channel/c/a;->a(Ljava/io/InputStream;)I

    move-result v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    const/4 v12, -0x1

    if-eq v11, v12, :cond_a

    .line 404
    :try_start_6
    iget-object v11, v1, Lanet/channel/request/d;->a:Lanet/channel/statist/RequestStatistic;

    iget-wide v11, v11, Lanet/channel/statist/RequestStatistic;->firstDataTime:J

    const-wide/16 v13, 0x0

    cmp-long v15, v11, v13

    if-nez v15, :cond_8

    .line 405
    iget-object v11, v1, Lanet/channel/request/d;->a:Lanet/channel/statist/RequestStatistic;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    iget-object v14, v1, Lanet/channel/request/d;->a:Lanet/channel/statist/RequestStatistic;

    iget-wide v14, v14, Lanet/channel/statist/RequestStatistic;->start:J
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const/16 v16, 0x0

    move-object/from16 v17, v6

    sub-long v5, v12, v14

    :try_start_7
    iput-wide v5, v11, Lanet/channel/statist/RequestStatistic;->firstDataTime:J

    goto :goto_6

    :cond_8
    move-object/from16 v17, v6

    :goto_6
    if-eqz v9, :cond_9

    .line 408
    invoke-virtual {v10, v9}, Lanet/channel/c/a;->a(Ljava/io/OutputStream;)V

    move-object/from16 v6, v17

    const/4 v5, 0x0

    goto :goto_5

    .line 410
    :cond_9
    invoke-interface {v3, v10, v4}, Lanet/channel/f;->a(Lanet/channel/c/a;Z)V

    move-object/from16 v6, v17

    const/4 v5, 0x0

    const/4 v10, 0x0

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object/from16 v17, v6

    :goto_7
    move-object v1, v0

    move-object/from16 v10, v17

    goto/16 :goto_a

    :cond_a
    move-object/from16 v17, v6

    const/4 v4, 0x1

    if-eqz v9, :cond_b

    .line 415
    invoke-virtual {v10}, Lanet/channel/c/a;->c()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_8

    :catchall_1
    move-exception v0

    goto :goto_7

    .line 417
    :cond_b
    :try_start_8
    invoke-interface {v3, v10, v4}, Lanet/channel/f;->a(Lanet/channel/c/a;Z)V

    .line 419
    :goto_8
    iget-object v5, v1, Lanet/channel/request/d;->a:Lanet/channel/statist/RequestStatistic;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget-object v6, v1, Lanet/channel/request/d;->a:Lanet/channel/statist/RequestStatistic;

    iget-wide v12, v6, Lanet/channel/statist/RequestStatistic;->start:J

    const/4 v6, 0x0

    sub-long v14, v10, v12

    iget-object v6, v1, Lanet/channel/request/d;->a:Lanet/channel/statist/RequestStatistic;

    iget-wide v10, v6, Lanet/channel/statist/RequestStatistic;->firstDataTime:J

    const/4 v6, 0x0

    sub-long v12, v14, v10

    iput-wide v12, v5, Lanet/channel/statist/RequestStatistic;->recDataTime:J

    .line 424
    iget-object v1, v1, Lanet/channel/request/d;->a:Lanet/channel/statist/RequestStatistic;

    invoke-virtual {v7}, Lanet/channel/strategy/utils/c;->a()J

    move-result-wide v5

    iput-wide v5, v1, Lanet/channel/statist/RequestStatistic;->recDataSize:J
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-eqz v9, :cond_d

    .line 427
    :try_start_9
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    iput-object v1, v2, Lanet/channel/g/c$a;->b:[B

    if-eqz v8, :cond_c

    .line 430
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 431
    iget-object v5, v2, Lanet/channel/g/c$a;->b:[B

    array-length v5, v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 432
    iget-object v5, v2, Lanet/channel/g/c$a;->c:Ljava/util/Map;

    const-string v6, "Content-Length"

    invoke-interface {v5, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    if-eqz v3, :cond_d

    .line 436
    iget v1, v2, Lanet/channel/g/c$a;->a:I

    iget-object v5, v2, Lanet/channel/g/c$a;->c:Ljava/util/Map;

    invoke-interface {v3, v1, v5}, Lanet/channel/f;->a(ILjava/util/Map;)V

    .line 437
    iget-object v1, v2, Lanet/channel/g/c$a;->b:[B

    invoke-static {v1}, Lanet/channel/c/a;->a([B)Lanet/channel/c/a;

    move-result-object v1

    invoke-interface {v3, v1, v4}, Lanet/channel/f;->a(Lanet/channel/c/a;Z)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :cond_d
    if-eqz v17, :cond_e

    move-object/from16 v10, v17

    .line 441
    :try_start_a
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    :catch_2
    :cond_e
    return-void

    :catchall_2
    move-exception v0

    move-object/from16 v10, v17

    goto :goto_9

    :catchall_3
    move-exception v0

    move-object v10, v6

    :goto_9
    move-object v1, v0

    goto :goto_a

    :catchall_4
    move-exception v0

    move-object v1, v0

    move-object v10, v6

    :goto_a
    if-eqz v10, :cond_f

    :try_start_b
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    :catch_3
    :cond_f
    throw v1
.end method

.method private static a(Ljava/net/HttpURLConnection;Lanet/channel/request/d;Ljava/lang/String;)V
    .locals 2

    .line 302
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    const-string p0, "awcn.HttpConnector"

    const-string p1, "supportHttps"

    const-string p2, "[supportHttps]Froyo \u4ee5\u4e0b\u7248\u672c\u4e0d\u652f\u6301https"

    const/4 v0, 0x0

    .line 303
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, p2, v0}, Lanet/channel/h/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 306
    :cond_0
    check-cast p0, Ljavax/net/ssl/HttpsURLConnection;

    .line 309
    invoke-virtual {p1}, Lanet/channel/request/d;->l()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 310
    invoke-virtual {p1}, Lanet/channel/request/d;->l()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    goto :goto_0

    .line 311
    :cond_1
    invoke-static {}, Lanet/channel/h/j;->a()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 312
    invoke-static {}, Lanet/channel/h/j;->a()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 315
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lanet/channel/request/d;->k()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 316
    invoke-virtual {p1}, Lanet/channel/request/d;->k()Ljavax/net/ssl/HostnameVerifier;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    goto :goto_1

    .line 317
    :cond_3
    invoke-static {}, Lanet/channel/h/j;->b()Ljavax/net/ssl/HostnameVerifier;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 318
    invoke-static {}, Lanet/channel/h/j;->b()Ljavax/net/ssl/HostnameVerifier;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    goto :goto_1

    .line 320
    :cond_4
    new-instance p1, Lanet/channel/g/d;

    invoke-direct {p1, p2}, Lanet/channel/g/d;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    :goto_1
    return-void
.end method
