.class public Lcom/mh/movie/core/mvp/model/entity/request/BaseRequest;
.super Ljava/lang/Object;
.source "BaseRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private appInfo:Lcom/mh/movie/core/mvp/model/entity/request/AppInfo;

.field private cip:Ljava/lang/String;

.field private columnId:I

.field private ctime:Ljava/lang/String;

.field private data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private token:Ljava/lang/String;

.field private uid:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcom/mh/movie/core/mvp/model/entity/request/AppInfo;

    invoke-direct {v0}, Lcom/mh/movie/core/mvp/model/entity/request/AppInfo;-><init>()V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/request/BaseRequest;->appInfo:Lcom/mh/movie/core/mvp/model/entity/request/AppInfo;

    const/4 v0, 0x0

    .line 39
    iput v0, p0, Lcom/mh/movie/core/mvp/model/entity/request/BaseRequest;->columnId:I

    const-string v0, "127.0.0.1"

    .line 40
    iput-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/request/BaseRequest;->cip:Ljava/lang/String;

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/request/BaseRequest;->ctime:Ljava/lang/String;

    const-wide/16 v0, 0x513

    .line 42
    iput-wide v0, p0, Lcom/mh/movie/core/mvp/model/entity/request/BaseRequest;->uid:J

    const-string v0, "1111"

    .line 43
    iput-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/request/BaseRequest;->token:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAppInfo()Lcom/mh/movie/core/mvp/model/entity/request/AppInfo;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/request/BaseRequest;->appInfo:Lcom/mh/movie/core/mvp/model/entity/request/AppInfo;

    return-object v0
.end method

.method public getCip()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/request/BaseRequest;->cip:Ljava/lang/String;

    return-object v0
.end method

.method public getColumnId()I
    .locals 1

    .line 52
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/request/BaseRequest;->columnId:I

    return v0
.end method

.method public getCtime()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/request/BaseRequest;->ctime:Ljava/lang/String;

    return-object v0
.end method

.method public getData()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/request/BaseRequest;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public getPageMap(Z)Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 118
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 120
    new-instance v1, Lcom/mh/movie/core/mvp/model/entity/request/AppInfo;

    invoke-direct {v1}, Lcom/mh/movie/core/mvp/model/entity/request/AppInfo;-><init>()V

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/request/AppInfo;->setAppInfo()Lcom/mh/movie/core/mvp/model/entity/request/AppInfo;

    move-result-object v1

    .line 122
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/mh/movie/core/mvp/model/entity/request/BaseRequest;->objectToMap(Ljava/lang/Object;)Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "appInfo"

    .line 123
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "objectToMap"

    .line 125
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string v1, "cip"

    const-string v2, "127.0.0.1"

    .line 127
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ctime"

    .line 128
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "fetchAll"

    .line 129
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "uid"

    .line 130
    sget-wide v1, Lcom/mh/movie/core/mvp/ui/b;->D:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "token"

    .line 131
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/b;->a()Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/request/BaseRequest;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()J
    .locals 2

    .line 81
    iget-wide v0, p0, Lcom/mh/movie/core/mvp/model/entity/request/BaseRequest;->uid:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 1

    .line 137
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public objectToMap(Ljava/lang/Object;)Ljava/util/HashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 26
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 28
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 29
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    const/4 v5, 0x1

    .line 30
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 31
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "serialVersionUID"

    if-eq v5, v6, :cond_1

    .line 32
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public setAppInfo(Lcom/mh/movie/core/mvp/model/entity/request/AppInfo;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/request/BaseRequest;->appInfo:Lcom/mh/movie/core/mvp/model/entity/request/AppInfo;

    return-void
.end method

.method public setCip(Ljava/lang/String;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/request/BaseRequest;->cip:Ljava/lang/String;

    return-void
.end method

.method public setColumnId(I)V
    .locals 0

    .line 56
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/request/BaseRequest;->columnId:I

    return-void
.end method

.method public setCtime(Ljava/lang/String;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/request/BaseRequest;->ctime:Ljava/lang/String;

    return-void
.end method

.method public setData(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 101
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/request/BaseRequest;->data:Ljava/lang/Object;

    return-void
.end method

.method public setPageData(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    return-void
.end method

.method public setRequest()V
    .locals 3

    const-string v0, "127.0.0.1"

    .line 108
    iput-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/request/BaseRequest;->cip:Ljava/lang/String;

    .line 109
    sget-wide v0, Lcom/mh/movie/core/mvp/ui/b;->D:J

    iput-wide v0, p0, Lcom/mh/movie/core/mvp/model/entity/request/BaseRequest;->uid:J

    .line 110
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/b;->a()Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->getToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/request/BaseRequest;->token:Ljava/lang/String;

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/request/BaseRequest;->ctime:Ljava/lang/String;

    .line 112
    new-instance v0, Lcom/mh/movie/core/mvp/model/entity/request/AppInfo;

    invoke-direct {v0}, Lcom/mh/movie/core/mvp/model/entity/request/AppInfo;-><init>()V

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/request/AppInfo;->setAppInfo()Lcom/mh/movie/core/mvp/model/entity/request/AppInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/request/BaseRequest;->appInfo:Lcom/mh/movie/core/mvp/model/entity/request/AppInfo;

    .line 114
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/model/entity/request/BaseRequest;->hashCode()I

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/request/BaseRequest;->token:Ljava/lang/String;

    return-void
.end method

.method public setUid(J)V
    .locals 0

    .line 85
    iput-wide p1, p0, Lcom/mh/movie/core/mvp/model/entity/request/BaseRequest;->uid:J

    return-void
.end method
