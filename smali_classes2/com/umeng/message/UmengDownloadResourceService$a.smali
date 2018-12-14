.class public Lcom/umeng/message/UmengDownloadResourceService$a;
.super Landroid/os/AsyncTask;
.source "UmengDownloadResourceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/message/UmengDownloadResourceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/umeng/message/entity/a;

.field b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field c:I

.field final synthetic d:Lcom/umeng/message/UmengDownloadResourceService;


# direct methods
.method public constructor <init>(Lcom/umeng/message/UmengDownloadResourceService;Lcom/umeng/message/entity/a;I)V
    .locals 1

    .line 179
    iput-object p1, p0, Lcom/umeng/message/UmengDownloadResourceService$a;->d:Lcom/umeng/message/UmengDownloadResourceService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 180
    iput-object p2, p0, Lcom/umeng/message/UmengDownloadResourceService$a;->a:Lcom/umeng/message/entity/a;

    .line 181
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/umeng/message/UmengDownloadResourceService$a;->b:Ljava/util/ArrayList;

    const-string p1, "notificationpullapp"

    .line 182
    iget-object v0, p2, Lcom/umeng/message/entity/a;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 183
    iget-object p1, p2, Lcom/umeng/message/entity/a;->n:Ljava/lang/String;

    .line 186
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "img"

    .line 187
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 188
    iget-object v0, p0, Lcom/umeng/message/UmengDownloadResourceService$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :catch_0
    :cond_0
    invoke-virtual {p2}, Lcom/umeng/message/entity/a;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 195
    iget-object p1, p0, Lcom/umeng/message/UmengDownloadResourceService$a;->b:Ljava/util/ArrayList;

    iget-object v0, p2, Lcom/umeng/message/entity/a;->q:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    :cond_1
    invoke-virtual {p2}, Lcom/umeng/message/entity/a;->d()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 198
    iget-object p1, p0, Lcom/umeng/message/UmengDownloadResourceService$a;->b:Ljava/util/ArrayList;

    iget-object v0, p2, Lcom/umeng/message/entity/a;->p:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    :cond_2
    iget-object p1, p2, Lcom/umeng/message/entity/a;->u:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 201
    iget-object p1, p0, Lcom/umeng/message/UmengDownloadResourceService$a;->b:Ljava/util/ArrayList;

    iget-object v0, p2, Lcom/umeng/message/entity/a;->u:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    :cond_3
    iget-object p1, p2, Lcom/umeng/message/entity/a;->v:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 204
    iget-object p1, p0, Lcom/umeng/message/UmengDownloadResourceService$a;->b:Ljava/util/ArrayList;

    iget-object p2, p2, Lcom/umeng/message/entity/a;->v:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    :cond_4
    iput p3, p0, Lcom/umeng/message/UmengDownloadResourceService$a;->c:I

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 2

    .line 212
    iget-object p1, p0, Lcom/umeng/message/UmengDownloadResourceService$a;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 213
    invoke-virtual {p0, v1}, Lcom/umeng/message/UmengDownloadResourceService$a;->a(Ljava/lang/String;)Z

    move-result v1

    and-int/2addr v0, v1

    goto :goto_0

    .line 216
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected a(Ljava/lang/Boolean;)V
    .locals 3

    .line 221
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 222
    iget-object v0, p0, Lcom/umeng/message/UmengDownloadResourceService$a;->d:Lcom/umeng/message/UmengDownloadResourceService;

    iget-object v0, v0, Lcom/umeng/message/UmengDownloadResourceService;->d:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/umeng/message/UmengDownloadResourceService$a;->a:Lcom/umeng/message/entity/a;

    iget-object v1, v1, Lcom/umeng/message/entity/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 223
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_1

    iget p1, p0, Lcom/umeng/message/UmengDownloadResourceService$a;->c:I

    if-gtz p1, :cond_0

    goto :goto_0

    .line 236
    :cond_0
    iget-object p1, p0, Lcom/umeng/message/UmengDownloadResourceService$a;->d:Lcom/umeng/message/UmengDownloadResourceService;

    iget-object p1, p1, Lcom/umeng/message/UmengDownloadResourceService;->d:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_2

    .line 237
    iget-object p1, p0, Lcom/umeng/message/UmengDownloadResourceService$a;->d:Lcom/umeng/message/UmengDownloadResourceService;

    invoke-virtual {p1}, Lcom/umeng/message/UmengDownloadResourceService;->stopSelf()V

    goto :goto_1

    .line 225
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/umeng/message/UmengDownloadResourceService$a;->d:Lcom/umeng/message/UmengDownloadResourceService;

    iget-object p1, p1, Lcom/umeng/message/UmengDownloadResourceService;->c:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/message/d;->a(Landroid/content/Context;)Lcom/umeng/message/d;

    move-result-object p1

    iget-object v0, p0, Lcom/umeng/message/UmengDownloadResourceService$a;->a:Lcom/umeng/message/entity/a;

    iget-object v0, v0, Lcom/umeng/message/entity/a;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/message/d;->b(Ljava/lang/String;)V

    .line 227
    iget-object p1, p0, Lcom/umeng/message/UmengDownloadResourceService$a;->a:Lcom/umeng/message/entity/a;

    invoke-virtual {p1}, Lcom/umeng/message/entity/a;->a()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 228
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/umeng/message/UmengDownloadResourceService$a;->d:Lcom/umeng/message/UmengDownloadResourceService;

    iget-object v1, v1, Lcom/umeng/message/UmengDownloadResourceService;->c:Landroid/content/Context;

    const-class v2, Lcom/umeng/message/UmengDownloadResourceService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "body"

    .line 229
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "id"

    .line 230
    iget-object v1, p0, Lcom/umeng/message/UmengDownloadResourceService$a;->a:Lcom/umeng/message/entity/a;

    iget-object v1, v1, Lcom/umeng/message/entity/a;->b:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "task_id"

    .line 231
    iget-object v1, p0, Lcom/umeng/message/UmengDownloadResourceService$a;->a:Lcom/umeng/message/entity/a;

    iget-object v1, v1, Lcom/umeng/message/entity/a;->c:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "OPERATIOIN"

    const/4 v1, 0x1

    .line 232
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "RETRY_TIME"

    .line 233
    iget v1, p0, Lcom/umeng/message/UmengDownloadResourceService$a;->c:I

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 234
    iget-object p1, p0, Lcom/umeng/message/UmengDownloadResourceService$a;->d:Lcom/umeng/message/UmengDownloadResourceService;

    invoke-virtual {p1, v0}, Lcom/umeng/message/UmengDownloadResourceService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_2
    :goto_1
    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 8

    .line 244
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 250
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 251
    iget-object v4, p0, Lcom/umeng/message/UmengDownloadResourceService$a;->d:Lcom/umeng/message/UmengDownloadResourceService;

    iget-object v4, v4, Lcom/umeng/message/UmengDownloadResourceService;->c:Landroid/content/Context;

    iget-object v5, p0, Lcom/umeng/message/UmengDownloadResourceService$a;->a:Lcom/umeng/message/entity/a;

    invoke-static {v4, v5}, Lcom/umeng/message/UmengDownloadResourceService;->a(Landroid/content/Context;Lcom/umeng/message/entity/a;)Ljava/lang/String;

    move-result-object v4

    .line 253
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".tmp"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v3, :cond_1

    .line 279
    iget-object p1, p0, Lcom/umeng/message/UmengDownloadResourceService$a;->d:Lcom/umeng/message/UmengDownloadResourceService;

    invoke-virtual {p1, v2}, Lcom/umeng/message/UmengDownloadResourceService;->a(Ljava/io/Closeable;)V

    .line 280
    iget-object p1, p0, Lcom/umeng/message/UmengDownloadResourceService$a;->d:Lcom/umeng/message/UmengDownloadResourceService;

    invoke-virtual {p1, v2}, Lcom/umeng/message/UmengDownloadResourceService;->a(Ljava/io/Closeable;)V

    return v1

    .line 257
    :cond_1
    :try_start_1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 258
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 260
    :cond_2
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 262
    :cond_3
    new-instance v3, Ljava/net/URI;

    invoke-direct {v3, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object p1

    .line 263
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 264
    :try_start_2
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/16 v2, 0x2800

    .line 266
    :try_start_3
    new-array v2, v2, [B

    .line 268
    :goto_0
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_4

    .line 269
    invoke-virtual {v3, v2, v0, v4}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 272
    :cond_4
    invoke-virtual {v5, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 279
    iget-object v0, p0, Lcom/umeng/message/UmengDownloadResourceService$a;->d:Lcom/umeng/message/UmengDownloadResourceService;

    invoke-virtual {v0, p1}, Lcom/umeng/message/UmengDownloadResourceService;->a(Ljava/io/Closeable;)V

    .line 280
    iget-object p1, p0, Lcom/umeng/message/UmengDownloadResourceService$a;->d:Lcom/umeng/message/UmengDownloadResourceService;

    invoke-virtual {p1, v3}, Lcom/umeng/message/UmengDownloadResourceService;->a(Ljava/io/Closeable;)V

    return v1

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v3, v2

    :goto_1
    move-object v2, p1

    move-object p1, v0

    goto :goto_4

    :catch_1
    move-exception v1

    move-object v3, v2

    :goto_2
    move-object v2, p1

    move-object p1, v1

    goto :goto_3

    :catchall_2
    move-exception p1

    move-object v3, v2

    goto :goto_4

    :catch_2
    move-exception p1

    move-object v3, v2

    .line 277
    :goto_3
    :try_start_4
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 279
    iget-object p1, p0, Lcom/umeng/message/UmengDownloadResourceService$a;->d:Lcom/umeng/message/UmengDownloadResourceService;

    invoke-virtual {p1, v2}, Lcom/umeng/message/UmengDownloadResourceService;->a(Ljava/io/Closeable;)V

    .line 280
    iget-object p1, p0, Lcom/umeng/message/UmengDownloadResourceService$a;->d:Lcom/umeng/message/UmengDownloadResourceService;

    invoke-virtual {p1, v3}, Lcom/umeng/message/UmengDownloadResourceService;->a(Ljava/io/Closeable;)V

    return v0

    :catchall_3
    move-exception p1

    .line 279
    :goto_4
    iget-object v0, p0, Lcom/umeng/message/UmengDownloadResourceService$a;->d:Lcom/umeng/message/UmengDownloadResourceService;

    invoke-virtual {v0, v2}, Lcom/umeng/message/UmengDownloadResourceService;->a(Ljava/io/Closeable;)V

    .line 280
    iget-object v0, p0, Lcom/umeng/message/UmengDownloadResourceService$a;->d:Lcom/umeng/message/UmengDownloadResourceService;

    invoke-virtual {v0, v3}, Lcom/umeng/message/UmengDownloadResourceService;->a(Ljava/io/Closeable;)V

    throw p1
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 173
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/umeng/message/UmengDownloadResourceService$a;->a([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 173
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/umeng/message/UmengDownloadResourceService$a;->a(Ljava/lang/Boolean;)V

    return-void
.end method
