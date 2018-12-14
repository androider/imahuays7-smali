.class public Lcom/mh/movie/core/mvp/ui/utils/ExceptionHandle;
.super Ljava/lang/Object;
.source "ExceptionHandle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/mvp/ui/utils/ExceptionHandle$ResponseThrowable;
    }
.end annotation


# static fields
.field public static final HTTP_ERROR:I = 0x3ea

.field public static final NETWORK_ERROR:I = 0x3e8

.field public static final UNEXPECTED:I = 0x3e9


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static handleException(Ljava/lang/Throwable;)Lcom/mh/movie/core/mvp/ui/utils/ExceptionHandle$ResponseThrowable;
    .locals 2

    .line 35
    instance-of v0, p0, Lretrofit2/HttpException;

    if-nez v0, :cond_3

    instance-of v0, p0, Ljava/net/ConnectException;

    if-eqz v0, :cond_0

    goto :goto_1

    .line 41
    :cond_0
    instance-of v0, p0, Lcom/google/gson/JsonParseException;

    const/16 v1, 0x3e9

    if-nez v0, :cond_2

    instance-of v0, p0, Lorg/json/JSONException;

    if-nez v0, :cond_2

    instance-of v0, p0, Landroid/net/ParseException;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 48
    :cond_1
    new-instance v0, Lcom/mh/movie/core/mvp/ui/utils/ExceptionHandle$ResponseThrowable;

    invoke-direct {v0, p0, v1}, Lcom/mh/movie/core/mvp/ui/utils/ExceptionHandle$ResponseThrowable;-><init>(Ljava/lang/Throwable;I)V

    const-string p0, "\u672a\u77e5\u9519\u8bef"

    .line 49
    iput-object p0, v0, Lcom/mh/movie/core/mvp/ui/utils/ExceptionHandle$ResponseThrowable;->message:Ljava/lang/String;

    return-object v0

    .line 44
    :cond_2
    :goto_0
    new-instance v0, Lcom/mh/movie/core/mvp/ui/utils/ExceptionHandle$ResponseThrowable;

    invoke-direct {v0, p0, v1}, Lcom/mh/movie/core/mvp/ui/utils/ExceptionHandle$ResponseThrowable;-><init>(Ljava/lang/Throwable;I)V

    const-string p0, "\u89e3\u6790\u9519\u8bef"

    .line 45
    iput-object p0, v0, Lcom/mh/movie/core/mvp/ui/utils/ExceptionHandle$ResponseThrowable;->message:Ljava/lang/String;

    return-object v0

    .line 37
    :cond_3
    :goto_1
    check-cast p0, Ljava/lang/Exception;

    .line 38
    new-instance v0, Lcom/mh/movie/core/mvp/ui/utils/ExceptionHandle$ResponseThrowable;

    const/16 v1, 0x3e8

    invoke-direct {v0, p0, v1}, Lcom/mh/movie/core/mvp/ui/utils/ExceptionHandle$ResponseThrowable;-><init>(Ljava/lang/Throwable;I)V

    const-string p0, "\u7f51\u7edc\u5f02\u5e38,\u8bf7\u91cd\u65b0\u5c1d\u8bd5"

    .line 39
    iput-object p0, v0, Lcom/mh/movie/core/mvp/ui/utils/ExceptionHandle$ResponseThrowable;->message:Ljava/lang/String;

    return-object v0
.end method
