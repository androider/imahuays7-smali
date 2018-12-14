.class public Lcom/mh/movie/core/app/j;
.super Ljava/lang/Object;
.source "ResponseErrorListenerImpl.java"

# interfaces
.implements Lme/jessyan/rxerrorhandler/handler/listener/ResponseErrorListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lretrofit2/HttpException;)Ljava/lang/String;
    .locals 2

    .line 77
    invoke-virtual {p1}, Lretrofit2/HttpException;->code()I

    move-result v0

    const/16 v1, 0x1f4

    if-ne v0, v1, :cond_0

    const-string p1, "\u670d\u52a1\u5668\u53d1\u751f\u9519\u8bef"

    goto :goto_0

    .line 79
    :cond_0
    invoke-virtual {p1}, Lretrofit2/HttpException;->code()I

    move-result v0

    const/16 v1, 0x194

    if-ne v0, v1, :cond_1

    const-string p1, "\u8bf7\u6c42\u5730\u5740\u4e0d\u5b58\u5728"

    goto :goto_0

    .line 81
    :cond_1
    invoke-virtual {p1}, Lretrofit2/HttpException;->code()I

    move-result v0

    const/16 v1, 0x193

    if-ne v0, v1, :cond_2

    const-string p1, "\u8bf7\u6c42\u88ab\u670d\u52a1\u5668\u62d2\u7edd"

    goto :goto_0

    .line 83
    :cond_2
    invoke-virtual {p1}, Lretrofit2/HttpException;->code()I

    move-result v0

    const/16 v1, 0x133

    if-ne v0, v1, :cond_3

    const-string p1, "\u8bf7\u6c42\u88ab\u91cd\u5b9a\u5411\u5230\u5176\u4ed6\u9875\u9762"

    goto :goto_0

    .line 86
    :cond_3
    invoke-virtual {p1}, Lretrofit2/HttpException;->message()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method


# virtual methods
.method public handleResponseError(Landroid/content/Context;Ljava/lang/Throwable;)V
    .locals 3

    const-string v0, "Catch-Error"

    .line 50
    invoke-static {v0}, Lb/a/a;->a(Ljava/lang/String;)Lb/a/a$a;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lb/a/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "\u7f51\u7edc\u5f02\u5e38"

    .line 54
    instance-of v1, p2, Ljava/net/UnknownHostException;

    if-eqz v1, :cond_0

    const-string v0, "\u7f51\u7edc\u4e0d\u53ef\u7528"

    goto :goto_0

    .line 56
    :cond_0
    instance-of v1, p2, Ljava/net/SocketTimeoutException;

    if-eqz v1, :cond_1

    const-string v0, "\u8bf7\u6c42\u7f51\u7edc\u8d85\u65f6"

    goto :goto_0

    .line 58
    :cond_1
    instance-of v1, p2, Lretrofit2/HttpException;

    if-eqz v1, :cond_2

    .line 59
    move-object v0, p2

    check-cast v0, Lretrofit2/HttpException;

    .line 60
    invoke-direct {p0, v0}, Lcom/mh/movie/core/app/j;->a(Lretrofit2/HttpException;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 61
    :cond_2
    instance-of v1, p2, Lcom/google/gson/JsonParseException;

    if-nez v1, :cond_3

    instance-of v1, p2, Landroid/net/ParseException;

    if-nez v1, :cond_3

    instance-of v1, p2, Lorg/json/JSONException;

    if-nez v1, :cond_3

    instance-of v1, p2, Lcom/google/gson/JsonIOException;

    if-eqz v1, :cond_4

    :cond_3
    const-string v0, "\u6570\u636e\u89e3\u6790\u9519\u8bef"

    .line 64
    :cond_4
    :goto_0
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string v1, "Canceled"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    const-string v0, "\u8bf7\u5173\u95ed\u4ee3\u7406\u91cd\u8bd5"

    goto :goto_1

    .line 67
    :cond_5
    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/utils/a/a;->a(Landroid/content/Context;)V

    :goto_1
    const-string p1, ""

    .line 70
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 71
    invoke-static {}, Lcom/jess/arms/integration/AppManager;->getAppManager()Lcom/jess/arms/integration/AppManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/jess/arms/integration/AppManager;->showToast(Ljava/lang/String;)V

    :cond_6
    return-void
.end method
