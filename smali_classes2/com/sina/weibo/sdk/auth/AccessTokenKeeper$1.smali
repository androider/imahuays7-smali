.class final Lcom/sina/weibo/sdk/auth/AccessTokenKeeper$1;
.super Ljava/lang/Object;
.source "AccessTokenKeeper.java"

# interfaces
.implements Lcom/sina/weibo/sdk/net/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sina/weibo/sdk/auth/AccessTokenKeeper;->refreshToken(Ljava/lang/String;Landroid/content/Context;Lcom/sina/weibo/sdk/net/RequestListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$listener:Lcom/sina/weibo/sdk/net/RequestListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/sina/weibo/sdk/auth/AccessTokenKeeper$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/sina/weibo/sdk/auth/AccessTokenKeeper$1;->val$listener:Lcom/sina/weibo/sdk/net/RequestListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;)V
    .locals 2

    .line 117
    invoke-static {p1}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->parseAccessToken(Ljava/lang/String;)Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    move-result-object v0

    .line 118
    iget-object v1, p0, Lcom/sina/weibo/sdk/auth/AccessTokenKeeper$1;->val$context:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/sina/weibo/sdk/auth/AccessTokenKeeper;->writeAccessToken(Landroid/content/Context;Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;)V

    .line 119
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/AccessTokenKeeper$1;->val$listener:Lcom/sina/weibo/sdk/net/RequestListener;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/AccessTokenKeeper$1;->val$listener:Lcom/sina/weibo/sdk/net/RequestListener;

    invoke-interface {v0, p1}, Lcom/sina/weibo/sdk/net/RequestListener;->onComplete(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onWeiboException(Lcom/sina/weibo/sdk/exception/WeiboException;)V
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/AccessTokenKeeper$1;->val$listener:Lcom/sina/weibo/sdk/net/RequestListener;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/AccessTokenKeeper$1;->val$listener:Lcom/sina/weibo/sdk/net/RequestListener;

    invoke-interface {v0, p1}, Lcom/sina/weibo/sdk/net/RequestListener;->onWeiboException(Lcom/sina/weibo/sdk/exception/WeiboException;)V

    :cond_0
    return-void
.end method
