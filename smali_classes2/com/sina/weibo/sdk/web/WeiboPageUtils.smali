.class public Lcom/sina/weibo/sdk/web/WeiboPageUtils;
.super Ljava/lang/Object;
.source "WeiboPageUtils.java"


# static fields
.field private static final USER_INFO_H5:Ljava/lang/String; = "http://m.weibo.cn/u/"

.field private static final USER_INFO_SCHEME:Ljava/lang/String; = "sinaweibo://userinfo?"

.field private static final WEIBO_ARTICLE_H5:Ljava/lang/String; = "http://media.weibo.cn/article?"

.field private static final WEIBO_ARTICLE_SCHEME:Ljava/lang/String; = "sinaweibo://article?"

.field private static final WEIBO_COMMENT_H5:Ljava/lang/String; = "http://m.weibo.cn/comment?"

.field private static final WEIBO_COMMENT_SCHEME:Ljava/lang/String; = "sinaweibo://comment?"

.field private static final WEIBO_DETAIL_H5:Ljava/lang/String; = "http://m.weibo.cn/"

.field private static final WEIBO_DETAIL_SCHEME:Ljava/lang/String; = "sinaweibo://detail?"

.field private static final WEIBO_GOTO_HOME_H5:Ljava/lang/String; = "http://m.weibo.cn/index/router?"

.field private static final WEIBO_GOTO_HOME_SCHEME:Ljava/lang/String; = "sinaweibo://gotohome?"

.field private static final WEIBO_GOTO_MYPROFILE_H5:Ljava/lang/String; = "http://m.weibo.cn/index/router?"

.field private static final WEIBO_GOTO_MYPROFILE_SCHEME:Ljava/lang/String; = "sinaweibo://myprofile?"

.field private static final WEIBO_SEARCH_URL_CHEME:Ljava/lang/String; = "sinaweibo://searchall?"

.field private static final WEIBO_SEARCH_URL_H5:Ljava/lang/String; = "https://m.weibo.cn/p/100103type=1&"

.field private static final WEIBO_SEND_CONTENT_H5:Ljava/lang/String; = "http://m.weibo.cn/mblog?"

.field private static final WEIBO_SEND_CONTENT_SCHEME:Ljava/lang/String; = "sinaweibo://sendweibo?"

.field private static weiboSdkUtils:Lcom/sina/weibo/sdk/web/WeiboPageUtils;


# instance fields
.field private authInfo:Lcom/sina/weibo/sdk/auth/AuthInfo;

.field private context:Landroid/content/Context;

.field private mWeiboInfo:Lcom/sina/weibo/sdk/auth/WbAppInfo;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/sina/weibo/sdk/auth/AuthInfo;)V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/sina/weibo/sdk/web/WeiboPageUtils;->mWeiboInfo:Lcom/sina/weibo/sdk/auth/WbAppInfo;

    .line 62
    invoke-static {p1}, Lcom/sina/weibo/sdk/WeiboAppManager;->getInstance(Landroid/content/Context;)Lcom/sina/weibo/sdk/WeiboAppManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/WeiboAppManager;->getWbAppInfo()Lcom/sina/weibo/sdk/auth/WbAppInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/web/WeiboPageUtils;->mWeiboInfo:Lcom/sina/weibo/sdk/auth/WbAppInfo;

    .line 63
    iput-object p2, p0, Lcom/sina/weibo/sdk/web/WeiboPageUtils;->authInfo:Lcom/sina/weibo/sdk/auth/AuthInfo;

    .line 64
    iput-object p1, p0, Lcom/sina/weibo/sdk/web/WeiboPageUtils;->context:Landroid/content/Context;

    return-void
.end method

.method private createScheme(Ljava/lang/String;Ljava/util/HashMap;)Landroid/content/Intent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .line 339
    invoke-direct {p0, p1, p2}, Lcom/sina/weibo/sdk/web/WeiboPageUtils;->schemeAddProperty(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p1

    .line 340
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    return-object p2
.end method

.method public static getInstance(Landroid/content/Context;Lcom/sina/weibo/sdk/auth/AuthInfo;)Lcom/sina/weibo/sdk/web/WeiboPageUtils;
    .locals 1

    .line 68
    sget-object v0, Lcom/sina/weibo/sdk/web/WeiboPageUtils;->weiboSdkUtils:Lcom/sina/weibo/sdk/web/WeiboPageUtils;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Lcom/sina/weibo/sdk/web/WeiboPageUtils;

    invoke-direct {v0, p0, p1}, Lcom/sina/weibo/sdk/web/WeiboPageUtils;-><init>(Landroid/content/Context;Lcom/sina/weibo/sdk/auth/AuthInfo;)V

    sput-object v0, Lcom/sina/weibo/sdk/web/WeiboPageUtils;->weiboSdkUtils:Lcom/sina/weibo/sdk/web/WeiboPageUtils;

    .line 71
    :cond_0
    sget-object p0, Lcom/sina/weibo/sdk/web/WeiboPageUtils;->weiboSdkUtils:Lcom/sina/weibo/sdk/web/WeiboPageUtils;

    return-object p0
.end method

.method private gotoWebActivity(Ljava/lang/String;)V
    .locals 10

    .line 363
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 364
    iget-object v1, p0, Lcom/sina/weibo/sdk/web/WeiboPageUtils;->context:Landroid/content/Context;

    const-class v2, Lcom/sina/weibo/sdk/web/WeiboSdkWebActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 365
    new-instance v1, Lcom/sina/weibo/sdk/web/param/DefaultWebViewRequestParam;

    iget-object v4, p0, Lcom/sina/weibo/sdk/web/WeiboPageUtils;->authInfo:Lcom/sina/weibo/sdk/auth/AuthInfo;

    sget-object v5, Lcom/sina/weibo/sdk/web/WebRequestType;->DEFAULT:Lcom/sina/weibo/sdk/web/WebRequestType;

    iget-object v9, p0, Lcom/sina/weibo/sdk/web/WeiboPageUtils;->context:Landroid/content/Context;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v1

    move-object v8, p1

    invoke-direct/range {v3 .. v9}, Lcom/sina/weibo/sdk/web/param/DefaultWebViewRequestParam;-><init>(Lcom/sina/weibo/sdk/auth/AuthInfo;Lcom/sina/weibo/sdk/web/WebRequestType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 366
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 367
    invoke-virtual {v1, p1}, Lcom/sina/weibo/sdk/web/param/DefaultWebViewRequestParam;->fillBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 368
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 369
    iget-object p1, p0, Lcom/sina/weibo/sdk/web/WeiboPageUtils;->context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private schemeAddProperty(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "luicode=10000360&&lfid=OP_"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/sina/weibo/sdk/web/WeiboPageUtils;->authInfo:Lcom/sina/weibo/sdk/auth/AuthInfo;

    invoke-virtual {p1}, Lcom/sina/weibo/sdk/auth/AuthInfo;->getAppKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 353
    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 354
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 355
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 356
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    return-object p1
.end method


# virtual methods
.method public commentWeibo(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 206
    invoke-virtual {p0, p1, v0}, Lcom/sina/weibo/sdk/web/WeiboPageUtils;->commentWeibo(Ljava/lang/String;Z)V

    return-void
.end method

.method public commentWeibo(Ljava/lang/String;Z)V
    .locals 2

    if-nez p2, :cond_1

    .line 211
    iget-object p2, p0, Lcom/sina/weibo/sdk/web/WeiboPageUtils;->mWeiboInfo:Lcom/sina/weibo/sdk/auth/WbAppInfo;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/sina/weibo/sdk/web/WeiboPageUtils;->mWeiboInfo:Lcom/sina/weibo/sdk/auth/WbAppInfo;

    invoke-virtual {p2}, Lcom/sina/weibo/sdk/auth/WbAppInfo;->isLegal()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "sinaweibo://comment?"

    .line 220
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "srcid"

    .line 221
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    invoke-direct {p0, p2, v0}, Lcom/sina/weibo/sdk/web/WeiboPageUtils;->createScheme(Ljava/lang/String;Ljava/util/HashMap;)Landroid/content/Intent;

    move-result-object p1

    .line 224
    :try_start_0
    iget-object p2, p0, Lcom/sina/weibo/sdk/web/WeiboPageUtils;->context:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    :goto_0
    const-string p2, "http://m.weibo.cn/comment?"

    .line 213
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "id"

    .line 214
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    invoke-direct {p0, p2, v0}, Lcom/sina/weibo/sdk/web/WeiboPageUtils;->schemeAddProperty(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p1

    .line 216
    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/web/WeiboPageUtils;->gotoWebActivity(Ljava/lang/String;)V

    :catch_0
    :goto_1
    return-void
.end method

.method public gotoMyHomePage()V
    .locals 1

    const/4 v0, 0x0

    .line 268
    invoke-virtual {p0, v0}, Lcom/sina/weibo/sdk/web/WeiboPageUtils;->gotoMyHomePage(Z)V

    return-void
.end method

.method public gotoMyHomePage(Z)V
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 273
    iget-object p1, p0, Lcom/sina/weibo/sdk/web/WeiboPageUtils;->mWeiboInfo:Lcom/sina/weibo/sdk/auth/WbAppInfo;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sina/weibo/sdk/web/WeiboPageUtils;->mWeiboInfo:Lcom/sina/weibo/sdk/auth/WbAppInfo;

    invoke-virtual {p1}, Lcom/sina/weibo/sdk/auth/WbAppInfo;->isLegal()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "sinaweibo://gotohome?"

    .line 282
    invoke-direct {p0, p1, v0}, Lcom/sina/weibo/sdk/web/WeiboPageUtils;->createScheme(Ljava/lang/String;Ljava/util/HashMap;)Landroid/content/Intent;

    move-result-object p1

    .line 284
    :try_start_0
    iget-object v0, p0, Lcom/sina/weibo/sdk/web/WeiboPageUtils;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    :goto_0
    const-string p1, "http://m.weibo.cn/index/router?"

    .line 275
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "cookie"

    const-string v3, "0_all"

    .line 276
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    invoke-direct {p0, p1, v0}, Lcom/sina/weibo/sdk/web/WeiboPageUtils;->schemeAddProperty(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p1

    .line 278
    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/web/WeiboPageUtils;->gotoWebActivity(Ljava/lang/String;)V

    :catch_0
    :goto_1
    return-void
.end method

.method public gotoMyProfile()V
    .locals 1

    const/4 v0, 0x0

    .line 295
    invoke-virtual {p0, v0}, Lcom/sina/weibo/sdk/web/WeiboPageUtils;->gotoMyProfile(Z)V

    return-void
.end method

.method public gotoMyProfile(Z)V
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 300
    iget-object p1, p0, Lcom/sina/weibo/sdk/web/WeiboPageUtils;->mWeiboInfo:Lcom/sina/weibo/sdk/auth/WbAppInfo;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sina/weibo/sdk/web/WeiboPageUtils;->mWeiboInfo:Lcom/sina/weibo/sdk/auth/WbAppInfo;

    invoke-virtual {p1}, Lcom/sina/weibo/sdk/auth/WbAppInfo;->isLegal()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "sinaweibo://myprofile?"

    .line 308
    invoke-direct {p0, p1, v0}, Lcom/sina/weibo/sdk/web/WeiboPageUtils;->createScheme(Ljava/lang/String;Ljava/util/HashMap;)Landroid/content/Intent;

    move-result-object p1

    .line 310
    :try_start_0
    iget-object v0, p0, Lcom/sina/weibo/sdk/web/WeiboPageUtils;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    :goto_0
    const-string p1, "http://m.weibo.cn/index/router?"

    .line 302
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "cookie"

    const-string v3, "3"

    .line 303
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    invoke-direct {p0, p1, v0}, Lcom/sina/weibo/sdk/web/WeiboPageUtils;->schemeAddProperty(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p1

    .line 305
    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/web/WeiboPageUtils;->gotoWebActivity(Ljava/lang/String;)V

    :catch_0
    :goto_1
    return-void
.end method

.method public openWeiboSearchPage(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 236
    invoke-virtual {p0, p1, v0}, Lcom/sina/weibo/sdk/web/WeiboPageUtils;->openWeiboSearchPage(Ljava/lang/String;Z)V

    return-void
.end method

.method public openWeiboSearchPage(Ljava/lang/String;Z)V
    .locals 2

    if-nez p2, :cond_1

    .line 240
    iget-object p2, p0, Lcom/sina/weibo/sdk/web/WeiboPageUtils;->mWeiboInfo:Lcom/sina/weibo/sdk/auth/WbAppInfo;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/sina/weibo/sdk/web/WeiboPageUtils;->mWeiboInfo:Lcom/sina/weibo/sdk/auth/WbAppInfo;

    invoke-virtual {p2}, Lcom/sina/weibo/sdk/auth/WbAppInfo;->isLegal()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "sinaweibo://searchall?"

    .line 253
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "q"

    .line 254
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    invoke-direct {p0, p2, v0}, Lcom/sina/weibo/sdk/web/WeiboPageUtils;->createScheme(Ljava/lang/String;Ljava/util/HashMap;)Landroid/content/Intent;

    move-result-object p1

    .line 257
    :try_start_0
    iget-object p2, p0, Lcom/sina/weibo/sdk/web/WeiboPageUtils;->context:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    :goto_0
    const-string p2, "https://m.weibo.cn/p/100103type=1&"

    .line 242
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "q"

    .line 243
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    invoke-direct {p0, p2, v0}, Lcom/sina/weibo/sdk/web/WeiboPageUtils;->schemeAddProperty(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p1

    .line 249
    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/web/WeiboPageUtils;->gotoWebActivity(Ljava/lang/String;)V

    :catch_0
    :goto_1
    return-void
.end method

.method public shareToWeibo(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 176
    invoke-virtual {p0, p1, v0}, Lcom/sina/weibo/sdk/web/WeiboPageUtils;->shareToWeibo(Ljava/lang/String;Z)V

    return-void
.end method

.method public shareToWeibo(Ljava/lang/String;Z)V
    .locals 2

    if-nez p2, :cond_1

    .line 181
    iget-object p2, p0, Lcom/sina/weibo/sdk/web/WeiboPageUtils;->mWeiboInfo:Lcom/sina/weibo/sdk/auth/WbAppInfo;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/sina/weibo/sdk/web/WeiboPageUtils;->mWeiboInfo:Lcom/sina/weibo/sdk/auth/WbAppInfo;

    invoke-virtual {p2}, Lcom/sina/weibo/sdk/auth/WbAppInfo;->isLegal()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "sinaweibo://sendweibo?"

    .line 190
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "content"

    .line 191
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    invoke-direct {p0, p2, v0}, Lcom/sina/weibo/sdk/web/WeiboPageUtils;->createScheme(Ljava/lang/String;Ljava/util/HashMap;)Landroid/content/Intent;

    move-result-object p1

    .line 194
    :try_start_0
    iget-object p2, p0, Lcom/sina/weibo/sdk/web/WeiboPageUtils;->context:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    :goto_0
    const-string p2, "http://m.weibo.cn/mblog?"

    .line 183
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "content"

    .line 184
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 185
    invoke-direct {p0, p2, p1}, Lcom/sina/weibo/sdk/web/WeiboPageUtils;->schemeAddProperty(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p1

    .line 186
    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/web/WeiboPageUtils;->gotoWebActivity(Ljava/lang/String;)V

    :catch_0
    :goto_1
    return-void
.end method

.method public startOtherPage(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 322
    invoke-virtual {p0, p1, v0}, Lcom/sina/weibo/sdk/web/WeiboPageUtils;->startOtherPage(Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method public startOtherPage(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 325
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 328
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/sina/weibo/sdk/web/WeiboPageUtils;->schemeAddProperty(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p1

    .line 329
    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/web/WeiboPageUtils;->gotoWebActivity(Ljava/lang/String;)V

    return-void
.end method

.method public startUserMainPage(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 79
    invoke-virtual {p0, p1, v0}, Lcom/sina/weibo/sdk/web/WeiboPageUtils;->startUserMainPage(Ljava/lang/String;Z)V

    return-void
.end method

.method public startUserMainPage(Ljava/lang/String;Z)V
    .locals 2

    if-nez p2, :cond_1

    .line 89
    iget-object p2, p0, Lcom/sina/weibo/sdk/web/WeiboPageUtils;->mWeiboInfo:Lcom/sina/weibo/sdk/auth/WbAppInfo;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/sina/weibo/sdk/web/WeiboPageUtils;->mWeiboInfo:Lcom/sina/weibo/sdk/auth/WbAppInfo;

    invoke-virtual {p2}, Lcom/sina/weibo/sdk/auth/WbAppInfo;->isLegal()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "sinaweibo://userinfo?"

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "uid"

    .line 96
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    invoke-direct {p0, p2, v0}, Lcom/sina/weibo/sdk/web/WeiboPageUtils;->createScheme(Ljava/lang/String;Ljava/util/HashMap;)Landroid/content/Intent;

    move-result-object p1

    .line 99
    :try_start_0
    iget-object p2, p0, Lcom/sina/weibo/sdk/web/WeiboPageUtils;->context:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 90
    :cond_1
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "http://m.weibo.cn/u/"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "?"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 91
    invoke-direct {p0, p1, p2}, Lcom/sina/weibo/sdk/web/WeiboPageUtils;->schemeAddProperty(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p1

    .line 92
    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/web/WeiboPageUtils;->gotoWebActivity(Ljava/lang/String;)V

    :catch_0
    :goto_1
    return-void
.end method

.method public startWeiboDetailPage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 112
    invoke-virtual {p0, p1, p2, v0}, Lcom/sina/weibo/sdk/web/WeiboPageUtils;->startWeiboDetailPage(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public startWeiboDetailPage(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    if-nez p3, :cond_1

    .line 123
    iget-object p3, p0, Lcom/sina/weibo/sdk/web/WeiboPageUtils;->mWeiboInfo:Lcom/sina/weibo/sdk/auth/WbAppInfo;

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/sina/weibo/sdk/web/WeiboPageUtils;->mWeiboInfo:Lcom/sina/weibo/sdk/auth/WbAppInfo;

    invoke-virtual {p3}, Lcom/sina/weibo/sdk/auth/WbAppInfo;->isLegal()Z

    move-result p3

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "sinaweibo://detail?"

    .line 129
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    const-string v0, "mblogid"

    .line 130
    invoke-virtual {p3, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    invoke-direct {p0, p2, p3}, Lcom/sina/weibo/sdk/web/WeiboPageUtils;->createScheme(Ljava/lang/String;Ljava/util/HashMap;)Landroid/content/Intent;

    move-result-object p1

    .line 133
    :try_start_0
    iget-object p2, p0, Lcom/sina/weibo/sdk/web/WeiboPageUtils;->context:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 124
    :cond_1
    :goto_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "http://m.weibo.cn/"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "?"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 125
    invoke-direct {p0, p1, p2}, Lcom/sina/weibo/sdk/web/WeiboPageUtils;->schemeAddProperty(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p1

    .line 126
    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/web/WeiboPageUtils;->gotoWebActivity(Ljava/lang/String;)V

    :catch_0
    :goto_1
    return-void
.end method

.method public startWeiboTopPage(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 146
    invoke-virtual {p0, p1, v0}, Lcom/sina/weibo/sdk/web/WeiboPageUtils;->startWeiboTopPage(Ljava/lang/String;Z)V

    return-void
.end method

.method public startWeiboTopPage(Ljava/lang/String;Z)V
    .locals 4

    if-nez p2, :cond_1

    .line 151
    iget-object p2, p0, Lcom/sina/weibo/sdk/web/WeiboPageUtils;->mWeiboInfo:Lcom/sina/weibo/sdk/auth/WbAppInfo;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/sina/weibo/sdk/web/WeiboPageUtils;->mWeiboInfo:Lcom/sina/weibo/sdk/auth/WbAppInfo;

    invoke-virtual {p2}, Lcom/sina/weibo/sdk/auth/WbAppInfo;->isLegal()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "sinaweibo://article?"

    .line 160
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "object_id"

    .line 161
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "1022:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    invoke-direct {p0, p2, v0}, Lcom/sina/weibo/sdk/web/WeiboPageUtils;->createScheme(Ljava/lang/String;Ljava/util/HashMap;)Landroid/content/Intent;

    move-result-object p1

    .line 164
    :try_start_0
    iget-object p2, p0, Lcom/sina/weibo/sdk/web/WeiboPageUtils;->context:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    :goto_0
    const-string p2, "http://media.weibo.cn/article?"

    .line 153
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "id"

    .line 154
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    invoke-direct {p0, p2, v0}, Lcom/sina/weibo/sdk/web/WeiboPageUtils;->schemeAddProperty(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p1

    .line 156
    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/web/WeiboPageUtils;->gotoWebActivity(Ljava/lang/String;)V

    :catch_0
    :goto_1
    return-void
.end method
