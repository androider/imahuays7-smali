.class Lcom/facebook/imagepipeline/a/a/b$2;
.super Ljava/lang/Object;
.source "OkHttpNetworkFetcher.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/a/a/b;->a(Lcom/facebook/imagepipeline/a/a/b$a;Lcom/facebook/imagepipeline/k/ag$a;Lokhttp3/Request;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/imagepipeline/a/a/b$a;

.field final synthetic b:Lcom/facebook/imagepipeline/k/ag$a;

.field final synthetic c:Lcom/facebook/imagepipeline/a/a/b;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/a/a/b;Lcom/facebook/imagepipeline/a/a/b$a;Lcom/facebook/imagepipeline/k/ag$a;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/facebook/imagepipeline/a/a/b$2;->c:Lcom/facebook/imagepipeline/a/a/b;

    iput-object p2, p0, Lcom/facebook/imagepipeline/a/a/b$2;->a:Lcom/facebook/imagepipeline/a/a/b$a;

    iput-object p3, p0, Lcom/facebook/imagepipeline/a/a/b$2;->b:Lcom/facebook/imagepipeline/k/ag$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 2

    .line 203
    iget-object v0, p0, Lcom/facebook/imagepipeline/a/a/b$2;->c:Lcom/facebook/imagepipeline/a/a/b;

    iget-object v1, p0, Lcom/facebook/imagepipeline/a/a/b$2;->b:Lcom/facebook/imagepipeline/k/ag$a;

    invoke-static {v0, p1, p2, v1}, Lcom/facebook/imagepipeline/a/a/b;->a(Lcom/facebook/imagepipeline/a/a/b;Lokhttp3/Call;Ljava/lang/Exception;Lcom/facebook/imagepipeline/k/ag$a;)V

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 170
    iget-object v0, p0, Lcom/facebook/imagepipeline/a/a/b$2;->a:Lcom/facebook/imagepipeline/a/a/b$a;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/facebook/imagepipeline/a/a/b$a;->b:J

    .line 171
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    .line 173
    :try_start_0
    invoke-virtual {p2}, Lokhttp3/Response;->isSuccessful()Z

    move-result v1

    if-nez v1, :cond_0

    .line 174
    iget-object v1, p0, Lcom/facebook/imagepipeline/a/a/b$2;->c:Lcom/facebook/imagepipeline/a/a/b;

    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected HTTP code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v2, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/facebook/imagepipeline/a/a/b$2;->b:Lcom/facebook/imagepipeline/k/ag$a;

    invoke-static {v1, p1, v2, p2}, Lcom/facebook/imagepipeline/a/a/b;->a(Lcom/facebook/imagepipeline/a/a/b;Lokhttp3/Call;Ljava/lang/Exception;Lcom/facebook/imagepipeline/k/ag$a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->close()V

    return-void

    :cond_0
    :try_start_1
    const-string v1, "Content-Range"

    .line 180
    invoke-virtual {p2, v1}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/facebook/imagepipeline/common/a;->a(Ljava/lang/String;)Lcom/facebook/imagepipeline/common/a;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 181
    iget v1, p2, Lcom/facebook/imagepipeline/common/a;->a:I

    if-nez v1, :cond_1

    iget v1, p2, Lcom/facebook/imagepipeline/common/a;->b:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_2

    .line 185
    :cond_1
    iget-object v1, p0, Lcom/facebook/imagepipeline/a/a/b$2;->a:Lcom/facebook/imagepipeline/a/a/b$a;

    invoke-virtual {v1, p2}, Lcom/facebook/imagepipeline/a/a/b$a;->a(Lcom/facebook/imagepipeline/common/a;)V

    .line 186
    iget-object p2, p0, Lcom/facebook/imagepipeline/a/a/b$2;->a:Lcom/facebook/imagepipeline/a/a/b$a;

    const/16 v1, 0x8

    invoke-virtual {p2, v1}, Lcom/facebook/imagepipeline/a/a/b$a;->a(I)V

    .line 189
    :cond_2
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p2, v1, v3

    if-gez p2, :cond_3

    move-wide v1, v3

    .line 193
    :cond_3
    iget-object p2, p0, Lcom/facebook/imagepipeline/a/a/b$2;->b:Lcom/facebook/imagepipeline/k/ag$a;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v3

    long-to-int v1, v1

    invoke-interface {p2, v3, v1}, Lcom/facebook/imagepipeline/k/ag$a;->a(Ljava/io/InputStream;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p2

    .line 195
    :try_start_2
    iget-object v1, p0, Lcom/facebook/imagepipeline/a/a/b$2;->c:Lcom/facebook/imagepipeline/a/a/b;

    iget-object v2, p0, Lcom/facebook/imagepipeline/a/a/b$2;->b:Lcom/facebook/imagepipeline/k/ag$a;

    invoke-static {v1, p1, p2, v2}, Lcom/facebook/imagepipeline/a/a/b;->a(Lcom/facebook/imagepipeline/a/a/b;Lokhttp3/Call;Ljava/lang/Exception;Lcom/facebook/imagepipeline/k/ag$a;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 197
    :goto_0
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->close()V

    return-void

    :goto_1
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->close()V

    .line 198
    throw p1
.end method
