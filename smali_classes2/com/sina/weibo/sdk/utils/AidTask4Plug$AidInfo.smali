.class public final Lcom/sina/weibo/sdk/utils/AidTask4Plug$AidInfo;
.super Ljava/lang/Object;
.source "AidTask4Plug.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sina/weibo/sdk/utils/AidTask4Plug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AidInfo"
.end annotation


# instance fields
.field private mAid:Ljava/lang/String;

.field private mSubCookie:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseJson(Ljava/lang/String;)Lcom/sina/weibo/sdk/utils/AidTask4Plug$AidInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sina/weibo/sdk/exception/WeiboException;
        }
    .end annotation

    .line 126
    new-instance v0, Lcom/sina/weibo/sdk/utils/AidTask4Plug$AidInfo;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/utils/AidTask4Plug$AidInfo;-><init>()V

    .line 128
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "error"

    .line 129
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "error_code"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "aid"

    const-string v2, ""

    .line 134
    invoke-virtual {v1, p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/sina/weibo/sdk/utils/AidTask4Plug$AidInfo;->mAid:Ljava/lang/String;

    const-string p0, "sub"

    const-string v2, ""

    .line 135
    invoke-virtual {v1, p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/sina/weibo/sdk/utils/AidTask4Plug$AidInfo;->mSubCookie:Ljava/lang/String;

    return-object v0

    :cond_1
    :goto_0
    const-string p0, "AidTask"

    const-string v0, "loadAidFromNet has error !!!"

    .line 131
    invoke-static {p0, v0}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    new-instance p0, Lcom/sina/weibo/sdk/exception/WeiboException;

    const-string v0, "loadAidFromNet has error !!!"

    invoke-direct {p0, v0}, Lcom/sina/weibo/sdk/exception/WeiboException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    const-string v0, "AidTask"

    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadAidFromNet JSONException Msg : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    new-instance p0, Lcom/sina/weibo/sdk/exception/WeiboException;

    const-string v0, "loadAidFromNet has error !!!"

    invoke-direct {p0, v0}, Lcom/sina/weibo/sdk/exception/WeiboException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method cloneAidInfo()Lcom/sina/weibo/sdk/utils/AidTask4Plug$AidInfo;
    .locals 2

    .line 145
    new-instance v0, Lcom/sina/weibo/sdk/utils/AidTask4Plug$AidInfo;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/utils/AidTask4Plug$AidInfo;-><init>()V

    .line 146
    iget-object v1, p0, Lcom/sina/weibo/sdk/utils/AidTask4Plug$AidInfo;->mAid:Ljava/lang/String;

    iput-object v1, v0, Lcom/sina/weibo/sdk/utils/AidTask4Plug$AidInfo;->mAid:Ljava/lang/String;

    .line 147
    iget-object v1, p0, Lcom/sina/weibo/sdk/utils/AidTask4Plug$AidInfo;->mSubCookie:Ljava/lang/String;

    iput-object v1, v0, Lcom/sina/weibo/sdk/utils/AidTask4Plug$AidInfo;->mSubCookie:Ljava/lang/String;

    return-object v0
.end method

.method public getAid()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/sina/weibo/sdk/utils/AidTask4Plug$AidInfo;->mAid:Ljava/lang/String;

    return-object v0
.end method

.method public getSubCookie()Ljava/lang/String;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/sina/weibo/sdk/utils/AidTask4Plug$AidInfo;->mSubCookie:Ljava/lang/String;

    return-object v0
.end method
