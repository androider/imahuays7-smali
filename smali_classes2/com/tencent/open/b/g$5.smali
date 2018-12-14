.class Lcom/tencent/open/b/g$5;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/open/b/g;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/open/b/g;


# direct methods
.method constructor <init>(Lcom/tencent/open/b/g;)V
    .locals 0

    .line 618
    iput-object p1, p0, Lcom/tencent/open/b/g$5;->a:Lcom/tencent/open/b/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 28

    move-object/from16 v1, p0

    .line 623
    :try_start_0
    iget-object v2, v1, Lcom/tencent/open/b/g$5;->a:Lcom/tencent/open/b/g;

    invoke-virtual {v2}, Lcom/tencent/open/b/g;->d()Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    const-string v3, "openSDK_LOG.ReportManager"

    .line 627
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-->doReportVia, params: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/open/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    invoke-static {}, Lcom/tencent/open/b/e;->a()I

    move-result v3

    .line 634
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_11

    const/4 v6, 0x0

    move-wide v9, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    :cond_1
    const/4 v15, 0x1

    add-int/2addr v6, v15

    const/16 v16, -0x4

    .line 642
    :try_start_1
    invoke-static {}, Lcom/tencent/open/utils/e;->a()Landroid/content/Context;

    move-result-object v7

    const-string v8, "https://appsupport.qq.com/cgi-bin/appstage/mstats_batch_report"

    const-string v15, "POST"

    invoke-static {v7, v8, v15, v2}, Lcom/tencent/open/utils/HttpUtils;->openUrl2(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/tencent/open/utils/k$a;

    move-result-object v7

    .line 644
    iget-object v8, v7, Lcom/tencent/open/utils/k$a;->a:Ljava/lang/String;

    invoke-static {v8}, Lcom/tencent/open/utils/k;->d(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8
    :try_end_1
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_1 .. :try_end_1} :catch_10
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_f
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Lcom/tencent/open/utils/HttpUtils$NetworkUnavailableException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Lcom/tencent/open/utils/HttpUtils$HttpStatusException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_9

    :try_start_2
    const-string v15, "ret"

    .line 648
    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_2 .. :try_end_2} :catch_10
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_f
    .catch Lcom/tencent/open/utils/HttpUtils$NetworkUnavailableException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Lcom/tencent/open/utils/HttpUtils$HttpStatusException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_9

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v2, v0

    move/from16 v18, v5

    goto/16 :goto_6

    :catch_1
    const/4 v8, -0x4

    :goto_0
    if-eqz v8, :cond_3

    .line 653
    :try_start_3
    iget-object v8, v7, Lcom/tencent/open/utils/k$a;->a:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8
    :try_end_3
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_3 .. :try_end_3} :catch_10
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_f
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_e
    .catch Lcom/tencent/open/utils/HttpUtils$NetworkUnavailableException; {:try_start_3 .. :try_end_3} :catch_d
    .catch Lcom/tencent/open/utils/HttpUtils$HttpStatusException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_9

    if-nez v8, :cond_2

    goto :goto_1

    :cond_2
    move/from16 v19, v4

    move/from16 v18, v5

    goto :goto_2

    :cond_3
    :goto_1
    move v6, v3

    move/from16 v18, v5

    const/16 v19, 0x1

    .line 659
    :goto_2
    :try_start_4
    iget-wide v4, v7, Lcom/tencent/open/utils/k$a;->b:J
    :try_end_4
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Lcom/tencent/open/utils/HttpUtils$NetworkUnavailableException; {:try_start_4 .. :try_end_4} :catch_d
    .catch Lcom/tencent/open/utils/HttpUtils$HttpStatusException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 660
    :try_start_5
    iget-wide v7, v7, Lcom/tencent/open/utils/k$a;->c:J
    :try_end_5
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Lcom/tencent/open/utils/HttpUtils$NetworkUnavailableException; {:try_start_5 .. :try_end_5} :catch_d
    .catch Lcom/tencent/open/utils/HttpUtils$HttpStatusException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    move-wide v11, v4

    move-wide v13, v7

    move/from16 v5, v18

    move/from16 v4, v19

    goto/16 :goto_c

    :catch_2
    move-exception v0

    move-object v2, v0

    move-wide v11, v4

    goto :goto_3

    :catch_3
    move/from16 v4, v19

    goto :goto_4

    :catch_4
    move-exception v0

    goto :goto_5

    :catch_5
    move-exception v0

    move-object v2, v0

    :goto_3
    move/from16 v4, v19

    goto :goto_6

    :catch_6
    move/from16 v4, v19

    goto :goto_7

    :catch_7
    move/from16 v4, v19

    goto :goto_9

    :catch_8
    move/from16 v4, v19

    goto :goto_a

    :catch_9
    :goto_4
    const/4 v5, -0x6

    move v6, v3

    goto :goto_8

    :catch_a
    move-exception v0

    move/from16 v19, v4

    :goto_5
    move-object v4, v0

    .line 691
    :try_start_6
    invoke-static {v4}, Lcom/tencent/open/utils/HttpUtils;->getErrorCodeFromException(Ljava/io/IOException;)I

    move-result v4
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_11

    move v5, v4

    move/from16 v4, v19

    goto :goto_8

    :catch_b
    move-exception v0

    move/from16 v18, v5

    move-object v2, v0

    .line 682
    :goto_6
    :try_start_7
    invoke-virtual {v2}, Lcom/tencent/open/utils/HttpUtils$HttpStatusException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "http status code error:"

    const-string v5, ""

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 683
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_c

    move/from16 v18, v5

    :catch_c
    move-wide/from16 v19, v9

    move-wide/from16 v21, v11

    move-wide/from16 v23, v13

    move/from16 v25, v18

    goto :goto_d

    .line 677
    :catch_d
    :try_start_8
    iget-object v2, v1, Lcom/tencent/open/b/g$5;->a:Lcom/tencent/open/b/g;

    iget-object v2, v2, Lcom/tencent/open/b/g;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    const-string v2, "openSDK_LOG.ReportManager"

    const-string v3, "doReportVia, NetworkUnavailableException."

    .line 678
    invoke-static {v2, v3}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_e
    :goto_7
    const/4 v5, -0x4

    :goto_8
    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    goto :goto_c

    .line 668
    :catch_f
    :goto_9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    const/4 v5, -0x8

    goto :goto_b

    .line 663
    :catch_10
    :goto_a
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    const/4 v5, -0x7

    :goto_b
    move-wide v9, v7

    goto :goto_8

    :goto_c
    if-lt v6, v3, :cond_1

    move/from16 v25, v5

    move-wide/from16 v19, v9

    move-wide/from16 v21, v11

    move-wide/from16 v23, v13

    .line 700
    :goto_d
    iget-object v2, v1, Lcom/tencent/open/b/g$5;->a:Lcom/tencent/open/b/g;

    const-string v18, "mapp_apptrace_sdk"

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v27}, Lcom/tencent/open/b/g;->a(Ljava/lang/String;JJJILjava/lang/String;Z)V

    if-eqz v4, :cond_4

    .line 702
    invoke-static {}, Lcom/tencent/open/b/f;->a()Lcom/tencent/open/b/f;

    move-result-object v2

    const-string v3, "report_via"

    invoke-virtual {v2, v3}, Lcom/tencent/open/b/f;->b(Ljava/lang/String;)V

    goto :goto_e

    .line 704
    :cond_4
    invoke-static {}, Lcom/tencent/open/b/f;->a()Lcom/tencent/open/b/f;

    move-result-object v2

    const-string v3, "report_via"

    iget-object v5, v1, Lcom/tencent/open/b/g$5;->a:Lcom/tencent/open/b/g;

    iget-object v5, v5, Lcom/tencent/open/b/g;->d:Ljava/util/List;

    invoke-virtual {v2, v3, v5}, Lcom/tencent/open/b/f;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 708
    :goto_e
    iget-object v2, v1, Lcom/tencent/open/b/g$5;->a:Lcom/tencent/open/b/g;

    iget-object v2, v2, Lcom/tencent/open/b/g;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    const-string v2, "openSDK_LOG.ReportManager"

    .line 709
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-->doReportVia, uploadSuccess: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_11

    goto :goto_f

    :catch_11
    move-exception v0

    move-object v2, v0

    const-string v3, "openSDK_LOG.ReportManager"

    const-string v4, "-->doReportVia, exception in serial executor."

    .line 711
    invoke-static {v3, v4, v2}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_f
    return-void
.end method
